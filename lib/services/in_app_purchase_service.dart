import 'dart:async';
import 'dart:io';
import 'package:flutter/material.dart';
import 'package:in_app_purchase/in_app_purchase.dart';
import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'premium_service.dart';

class InAppPurchaseService {
  static final InAppPurchaseService _instance = InAppPurchaseService._internal();
  factory InAppPurchaseService() => _instance;
  InAppPurchaseService._internal();

  final InAppPurchase _inAppPurchase = InAppPurchase.instance;
  final FirebaseFirestore _firestore = FirebaseFirestore.instance;
  final FirebaseAuth _auth = FirebaseAuth.instance;
  late StreamSubscription<List<PurchaseDetails>> _subscription;
  
  // Product IDs - Platform specific
  // iOS Product IDs
  static const String _iosMonthlySubscriptionId = 'com.alp.premium.monthly';
  static const String _iosSixMonthSubscriptionId = 'com.alp.premium.6months';
  static const String _iosYearlySubscriptionId = 'com.alp.premium.yearly';
  
  // Android Product IDs (unchanged)
  static const String _androidMonthlySubscriptionId = 'monthly';
  static const String _androidSixMonthSubscriptionId = 'sixmonth';
  static const String _androidYearlySubscriptionId = 'yearly';
  static const String _androidLifetimePurchaseId = 'lifetime_premium';
  
  // Platform-aware getters
  static String get monthlySubscriptionId {
    return Platform.isIOS ? _iosMonthlySubscriptionId : _androidMonthlySubscriptionId;
  }
  
  static String get sixMonthSubscriptionId {
    return Platform.isIOS ? _iosSixMonthSubscriptionId : _androidSixMonthSubscriptionId;
  }
  
  static String get yearlySubscriptionId {
    return Platform.isIOS ? _iosYearlySubscriptionId : _androidYearlySubscriptionId;
  }
  
  static String get lifetimePurchaseId {
    // Lifetime is Android only for now
    return _androidLifetimePurchaseId;
  }
  
  // Legacy aliases for compatibility
  static String get premiumMonthlyId => monthlySubscriptionId;
  static String get premiumSixMonthId => sixMonthSubscriptionId;
  static String get premiumYearlyId => yearlySubscriptionId;
  static String get premiumLifetimeId => lifetimePurchaseId;

  // Available products
  List<ProductDetails> _products = [];
  List<ProductDetails> get products => _products;

  // Purchase status
  bool _isAvailable = false;
  bool get isAvailable => _isAvailable;

  // Purchase details
  List<PurchaseDetails> _purchases = [];
  List<PurchaseDetails> get purchases => _purchases;

  // Initialize the service
  Future<void> initialize() async {
    _isAvailable = await _inAppPurchase.isAvailable();
    
    if (!_isAvailable) {
      debugPrint('In-app purchase not available');
      return;
    }

    // Listen to purchase updates
    _subscription = _inAppPurchase.purchaseStream.listen(
      _onPurchaseUpdate,
      onDone: () => _subscription.cancel(),
      onError: (error) => debugPrint('Purchase stream error: $error'),
    );

    // Load products
    await _loadProducts();

    // Restore previous purchases
    await restorePurchases();
  }

  // Load available products
  Future<void> _loadProducts() async {
    final Set<String> productIds = {
      monthlySubscriptionId,
      sixMonthSubscriptionId,
      yearlySubscriptionId,
      // Only include lifetime on Android
      if (!Platform.isIOS) lifetimePurchaseId,
    };

    try {
      final ProductDetailsResponse response = await _inAppPurchase.queryProductDetails(productIds);
      
      if (response.notFoundIDs.isNotEmpty) {
        debugPrint('Products not found: ${response.notFoundIDs}');
      }

      if (response.error != null) {
        debugPrint('Error loading products: ${response.error}');
      }

      _products = response.productDetails;
      debugPrint('Loaded ${_products.length} products: ${_products.map((p) => p.id).toList()}');
    } catch (e) {
      debugPrint('Exception loading products: $e');
    }
  }

  // Restore previous purchases
  Future<void> restorePurchases() async {
    final userId = _auth.currentUser?.uid;
    
    // If user is logged in, ONLY load from Firestore
    // Do NOT restore from Google Play as it may show purchases from different accounts
    // Each Firebase Auth account should only see its own purchases
    if (userId != null) {
      _purchases.clear();
      debugPrint('User logged in, loading purchases from Firestore only for user: $userId');
      
      // Load purchases from Firestore for this user
      await _loadPurchasesFromFirestore(userId);
      
      // Sync premium status
      await _syncPurchasesWithFirestore(userId);
      return; // Don't restore from Google Play for logged-in users
    }
    
    // No user logged in, restore from Google Play (for anonymous/offline use)
    await _inAppPurchase.restorePurchases();
  }
  
  // Load purchases from Firestore for a specific user
  Future<void> _loadPurchasesFromFirestore(String userId) async {
    try {
      final purchasesSnapshot = await _firestore
          .collection('users')
          .doc(userId)
          .collection('purchases')
          .get();
      
      debugPrint('Loaded ${purchasesSnapshot.docs.length} purchase(s) from Firestore for user: $userId');
      
      // Note: We can't recreate PurchaseDetails from Firestore data
      // So we rely on Firestore premium status check in hasPremiumAccess()
      // Local _purchases list remains empty for logged-in users
    } catch (e) {
      debugPrint('Error loading purchases from Firestore: $e');
    }
  }
  
  // Sync local purchases with Firestore
  Future<void> _syncPurchasesWithFirestore(String userId) async {
    try {
      // Load user's premium status from Firestore
      final userDoc = await _firestore.collection('users').doc(userId).get();
      
      if (userDoc.exists) {
        final data = userDoc.data();
        final isPremium = data?['isPremium'] as bool? ?? false;
        
        // If user has premium in Firestore but no local purchases, 
        // we need to ensure local state reflects this
        // Note: We can't create fake PurchaseDetails, so we rely on Firestore check
        // in hasPremiumAccess() method
        
        debugPrint('Premium status synced from Firestore for user: $userId, isPremium: $isPremium');
      } else {
        // User document doesn't exist, create it with premium: false
        await _firestore.collection('users').doc(userId).set({
          'isPremium': false,
          'premiumUpdatedAt': FieldValue.serverTimestamp(),
        }, SetOptions(merge: true));
      }
    } catch (e) {
      debugPrint('Error syncing purchases with Firestore: $e');
    }
  }
  
  // Clear all purchases (called on sign out)
  Future<void> clearPurchases() async {
    _purchases.clear();
    debugPrint('Local purchases cleared');
  }

  // Handle purchase updates
  void _onPurchaseUpdate(List<PurchaseDetails> purchaseDetailsList) {
    for (final PurchaseDetails purchaseDetails in purchaseDetailsList) {
      _handlePurchase(purchaseDetails);
    }
  }

  // Handle individual purchase
  Future<void> _handlePurchase(PurchaseDetails purchaseDetails) async {
    if (purchaseDetails.status == PurchaseStatus.pending) {
      debugPrint('Purchase pending: ${purchaseDetails.productID}');
      return;
    }

    if (purchaseDetails.status == PurchaseStatus.error) {
      debugPrint('Purchase error: ${purchaseDetails.error}');
      return;
    }

    if (purchaseDetails.status == PurchaseStatus.purchased ||
        purchaseDetails.status == PurchaseStatus.restored) {
      debugPrint('Purchase successful: ${purchaseDetails.productID}');
      
      // Verify purchase
      final bool valid = await _verifyPurchase(purchaseDetails);
      
      if (valid) {
        // Complete the purchase
        if (purchaseDetails.pendingCompletePurchase) {
          await _inAppPurchase.completePurchase(purchaseDetails);
        }
        
        final userId = _auth.currentUser?.uid;
        
        // If user is logged in, check if this purchase belongs to current user
        // For restored purchases, verify it's in Firestore for current user
        if (userId != null) {
          // If this is a restored purchase, check if it belongs to current user
          if (purchaseDetails.status == PurchaseStatus.restored) {
            final purchaseId = purchaseDetails.purchaseID ?? '';
            if (purchaseId.isNotEmpty) {
              // Check if this purchase exists in Firestore for current user
              final purchaseDoc = await _firestore
                  .collection('users')
                  .doc(userId)
                  .collection('purchases')
                  .where('purchaseId', isEqualTo: purchaseId)
                  .limit(1)
                  .get();
              
              if (purchaseDoc.docs.isEmpty) {
                // This purchase doesn't belong to current user, ignore it
                debugPrint('Restored purchase $purchaseId does not belong to user $userId, ignoring');
                return;
              }
            }
          }
        
        // Save to Firestore for current user
        await _savePurchaseToFirestore(purchaseDetails);
          // Don't add to local purchases for logged-in users
          // This prevents false positives from purchases made with different Google Play accounts
          debugPrint('Purchase saved to Firestore for user: $userId (not added to local list)');
        } else {
          // No user logged in, add to local purchases
          _purchases.add(purchaseDetails);
        }
      }
    }
  }
  
  // Save purchase to Firestore (user-specific)
  Future<void> _savePurchaseToFirestore(PurchaseDetails purchaseDetails) async {
    final userId = _auth.currentUser?.uid;
    if (userId == null) {
      debugPrint('Cannot save purchase: User not logged in');
      return;
    }

    try {
      final purchaseId = purchaseDetails.purchaseID ?? '';
      final verificationData = purchaseDetails.verificationData.serverVerificationData;
      
      // For promotion codes, purchaseID might be empty, so use a unique identifier
      // Combine productID with timestamp to ensure uniqueness
      final uniqueId = purchaseId.isNotEmpty 
          ? purchaseId 
          : '${purchaseDetails.productID}_${DateTime.now().millisecondsSinceEpoch}';
      
      final purchaseData = {
        'productId': purchaseDetails.productID,
        'purchaseId': purchaseId,
        'uniqueId': uniqueId, // For promotion codes and other purchases without purchaseID
        'status': purchaseDetails.status.toString(),
        'transactionDate': purchaseDetails.transactionDate ?? DateTime.now().millisecondsSinceEpoch.toString(),
        'purchasedAt': FieldValue.serverTimestamp(),
        'verificationData': verificationData.isNotEmpty ? verificationData : '',
        'isPromotionCode': purchaseId.isEmpty, // Mark promotion code purchases
      };

      // Save to user's purchases collection
      // Use uniqueId as document ID to handle promotion codes properly
      await _firestore
          .collection('users')
          .doc(userId)
          .collection('purchases')
          .doc(uniqueId)
          .set(purchaseData, SetOptions(merge: true));

      debugPrint('Purchase saved to Firestore for user: $userId, uniqueId: $uniqueId, isPromotionCode: ${purchaseId.isEmpty}');

      // Update user's premium status
      // This is critical for promotion codes to work
      await _updateUserPremiumStatus(userId);
      
      // Premium durumu güncellendi, PremiumService'i bilgilendir
      _notifyPremiumStatusChanged();
      
      debugPrint('Purchase saved to Firestore for user: $userId');
    } catch (e) {
      debugPrint('Error saving purchase to Firestore: $e');
      // Even if saving fails, try to update premium status
      // This ensures promotion codes work even if there's a temporary error
      try {
        await _updateUserPremiumStatus(userId);
      } catch (e2) {
        debugPrint('Error updating premium status after save failure: $e2');
      }
    }
  }
  
  // Update user's premium status in Firestore
  Future<void> _updateUserPremiumStatus(String userId) async {
    try {
      // Check if user has any active purchases in Firestore
      // This is important for promotion codes and restored purchases
      final purchasesSnapshot = await _firestore
          .collection('users')
          .doc(userId)
          .collection('purchases')
          .get();
      
      // Check if user has any valid purchases
      bool hasPremium = false;
      if (purchasesSnapshot.docs.isNotEmpty) {
        // User has at least one purchase, so they have premium access
        hasPremium = true;
        debugPrint('User $userId has ${purchasesSnapshot.docs.length} purchase(s) in Firestore');
      } else {
        // Also check local purchases as fallback (for users not logged in)
        // But for logged-in users, we rely on Firestore
        final currentUserId = _auth.currentUser?.uid;
        if (currentUserId == null) {
          hasPremium = _purchases.any((purchase) => 
            purchase.status == PurchaseStatus.purchased || 
            purchase.status == PurchaseStatus.restored
          );
        }
      }
      
      await _firestore.collection('users').doc(userId).update({
        'isPremium': hasPremium,
        'premiumUpdatedAt': FieldValue.serverTimestamp(),
      });
      
      debugPrint('Premium status updated for user: $userId, isPremium: $hasPremium');
      
      // Premium durumu güncellendi, PremiumService'i bilgilendir
      _notifyPremiumStatusChanged();
    } catch (e) {
      debugPrint('Error updating premium status: $e');
      // On error, try to set premium to true if we just saved a purchase
      // This ensures promotion codes work even if there's a temporary error
      try {
        await _firestore.collection('users').doc(userId).update({
          'isPremium': true,
          'premiumUpdatedAt': FieldValue.serverTimestamp(),
        });
        debugPrint('Premium status set to true as fallback for user: $userId');
        
        // Premium durumu güncellendi, PremiumService'i bilgilendir
        _notifyPremiumStatusChanged();
      } catch (e2) {
        debugPrint('Error setting premium status as fallback: $e2');
      }
    }
  }
  
  // Premium durumu değiştiğinde PremiumService'i bilgilendir
  void _notifyPremiumStatusChanged() {
    // PremiumService singleton instance'ını al ve refresh et
    try {
      Future.microtask(() {
        final premiumService = PremiumService();
        premiumService.refreshPremiumStatus();
      });
    } catch (e) {
      debugPrint('Error notifying premium status change: $e');
    }
  }

  // Verify purchase (implement your verification logic here)
  Future<bool> _verifyPurchase(PurchaseDetails purchaseDetails) async {
    // TODO: Implement server-side verification
    // For now, return true for testing
    return true;
  }

  // Check if product is a subscription
  bool _isSubscription(String productId) {
    // Check both iOS and Android IDs
    return productId == monthlySubscriptionId ||
           productId == sixMonthSubscriptionId ||
           productId == yearlySubscriptionId ||
           productId == _iosMonthlySubscriptionId ||
           productId == _iosSixMonthSubscriptionId ||
           productId == _iosYearlySubscriptionId ||
           productId == _androidMonthlySubscriptionId ||
           productId == _androidSixMonthSubscriptionId ||
           productId == _androidYearlySubscriptionId;
  }

  // Buy a product by ProductDetails
  Future<bool> buyProductDetails(ProductDetails productDetails) async {
    if (!_isAvailable) {
      debugPrint('In-app purchase not available');
      return false;
    }

    // Check if product is loaded
    if (!_products.any((p) => p.id == productDetails.id)) {
      debugPrint('Product not loaded: ${productDetails.id}');
      // Try to reload products
      await _loadProducts();
      // Check again
      if (!_products.any((p) => p.id == productDetails.id)) {
        debugPrint('Product still not found after reload: ${productDetails.id}');
        return false;
      }
      // Get the updated product
      final updatedProduct = getProduct(productDetails.id);
      if (updatedProduct == null) {
        debugPrint('Could not get updated product: ${productDetails.id}');
        return false;
      }
      productDetails = updatedProduct;
    }

    final PurchaseParam purchaseParam = PurchaseParam(productDetails: productDetails);
    
    try {
      bool success;
      
      // Use buySubscription for subscription products, buyNonConsumable for lifetime
      if (_isSubscription(productDetails.id)) {
        debugPrint('Buying subscription: ${productDetails.id}');
        success = await _inAppPurchase.buyNonConsumable(purchaseParam: purchaseParam);
      } else {
        debugPrint('Buying non-consumable: ${productDetails.id}');
        success = await _inAppPurchase.buyNonConsumable(purchaseParam: purchaseParam);
      }
      
      if (!success) {
        debugPrint('Purchase failed: buyNonConsumable returned false for ${productDetails.id}');
      }
      
      return success;
    } catch (e) {
      debugPrint('Purchase failed: $e');
      return false;
    }
  }

  // Buy product by ID (convenience method)
  Future<bool> buyProductById(String productId) async {
    // Check if service is initialized
    if (!_isAvailable) {
      debugPrint('In-app purchase not available. Initializing...');
      await initialize();
      if (!_isAvailable) {
        debugPrint('In-app purchase still not available after initialization');
        return false;
      }
    }

    // Check if products are loaded
    if (_products.isEmpty) {
      debugPrint('Products not loaded. Loading products...');
      await _loadProducts();
      if (_products.isEmpty) {
        debugPrint('No products found after loading');
        return false;
      }
    }

    final product = getProduct(productId);
    if (product == null) {
      debugPrint('Product not found: $productId');
      debugPrint('Available products: ${_products.map((p) => p.id).toList()}');
      // Try to reload products one more time
      await _loadProducts();
      final retryProduct = getProduct(productId);
      if (retryProduct == null) {
        debugPrint('Product still not found after reload: $productId');
        return false;
      }
      return await buyProductDetails(retryProduct);
    }
    return await buyProductDetails(product);
  }

  // Alias for buyProductById for compatibility
  Future<bool> buyProduct(String productId) async {
    return await buyProductById(productId);
  }

  // Buy subscription
  Future<bool> buySubscription(ProductDetails productDetails) async {
    return await buyProductDetails(productDetails);
  }

  // Check if user has premium access (from Firestore)
  Future<bool> hasPremiumAccess() async {
    final userId = _auth.currentUser?.uid;
    if (userId == null) {
      // No user logged in, check local purchases
      return _purchases.any((purchase) => 
        purchase.status == PurchaseStatus.purchased || 
        purchase.status == PurchaseStatus.restored
      );
    }

    try {
      // If user is logged in, ONLY check Firestore for user's premium status
      // Do NOT check local purchases as they might be from a different Google Play account
      final userDoc = await _firestore.collection('users').doc(userId).get();
      if (userDoc.exists) {
        final data = userDoc.data();
        final isPremium = data?['isPremium'] as bool? ?? false;
        return isPremium;
      }

      // User document doesn't exist, user is not premium
      return false;
    } catch (e) {
      debugPrint('Error checking premium access: $e');
      // If there's an error checking Firestore, return false for logged-in users
      // to prevent false positives from local purchases
      return false;
    }
  }
  
  // Synchronous version for backward compatibility
  // Note: This checks local purchases only. For accurate user-specific check, use hasPremiumAccess() async version
  // IMPORTANT: For logged-in users, this should NOT be used as it may return false positives
  // from purchases made with a different Google Play account
  bool hasPremiumAccessSync() {
    final userId = _auth.currentUser?.uid;
    if (userId != null) {
      // User is logged in - we should NOT check local purchases
      // as they might be from a different Google Play account
      // Return false to force async check via hasPremiumAccess()
      // This prevents false positives
      return false;
    }
    
    // No user logged in, check local purchases
    return _purchases.any((purchase) => 
      purchase.status == PurchaseStatus.purchased || 
      purchase.status == PurchaseStatus.restored
    );
  }

  // Check if user has specific subscription
  bool hasSubscription(String productId) {
    return _purchases.any((purchase) => 
      purchase.productID == productId &&
      (purchase.status == PurchaseStatus.purchased || 
       purchase.status == PurchaseStatus.restored)
    );
  }

  // Get product by ID
  ProductDetails? getProduct(String productId) {
    try {
      return _products.firstWhere((product) => product.id == productId);
    } catch (e) {
      return null;
    }
  }

  // Dispose
  void dispose() {
    _subscription.cancel();
  }
}
