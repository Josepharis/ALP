import 'dart:async';
import 'package:flutter/material.dart';
import 'package:in_app_purchase/in_app_purchase.dart';
import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:firebase_auth/firebase_auth.dart';

class InAppPurchaseService {
  static final InAppPurchaseService _instance = InAppPurchaseService._internal();
  factory InAppPurchaseService() => _instance;
  InAppPurchaseService._internal();

  final InAppPurchase _inAppPurchase = InAppPurchase.instance;
  final FirebaseFirestore _firestore = FirebaseFirestore.instance;
  final FirebaseAuth _auth = FirebaseAuth.instance;
  late StreamSubscription<List<PurchaseDetails>> _subscription;
  
  // Product IDs
  static const String monthlySubscriptionId = 'monthly';
  static const String sixMonthSubscriptionId = 'sixmonth';
  static const String yearlySubscriptionId = 'yearly';
  static const String lifetimePurchaseId = 'lifetime_premium';
  
  // Legacy aliases for compatibility
  static const String premiumMonthlyId = monthlySubscriptionId;
  static const String premiumSixMonthId = sixMonthSubscriptionId;
  static const String premiumYearlyId = yearlySubscriptionId;
  static const String premiumLifetimeId = lifetimePurchaseId;

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
    const Set<String> productIds = {
      monthlySubscriptionId,
      sixMonthSubscriptionId,
      yearlySubscriptionId,
      lifetimePurchaseId,
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
    await _inAppPurchase.restorePurchases();
    
    // After restoring, sync with Firestore
    final userId = _auth.currentUser?.uid;
    if (userId != null) {
      await _syncPurchasesWithFirestore(userId);
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
        
        // Add to purchases list
        _purchases.add(purchaseDetails);
        
        // Save to Firestore for current user
        await _savePurchaseToFirestore(purchaseDetails);
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
      final purchaseData = {
        'productId': purchaseDetails.productID,
        'purchaseId': purchaseId,
        'status': purchaseDetails.status.toString(),
        'transactionDate': purchaseDetails.transactionDate ?? DateTime.now().millisecondsSinceEpoch.toString(),
        'purchasedAt': FieldValue.serverTimestamp(),
        'verificationData': verificationData.isNotEmpty ? verificationData : '',
      };

      // Save to user's purchases collection
      final docId = purchaseId.isNotEmpty ? purchaseId : purchaseDetails.productID;
      await _firestore
          .collection('users')
          .doc(userId)
          .collection('purchases')
          .doc(docId)
          .set(purchaseData, SetOptions(merge: true));

      // Update user's premium status
      await _updateUserPremiumStatus(userId);
      
      debugPrint('Purchase saved to Firestore for user: $userId');
    } catch (e) {
      debugPrint('Error saving purchase to Firestore: $e');
    }
  }
  
  // Update user's premium status in Firestore
  Future<void> _updateUserPremiumStatus(String userId) async {
    try {
      // Check if user has any active purchases (use sync version for local check)
      final hasPremium = hasPremiumAccessSync();
      
      await _firestore.collection('users').doc(userId).update({
        'isPremium': hasPremium,
        'premiumUpdatedAt': FieldValue.serverTimestamp(),
      });
      
      debugPrint('Premium status updated for user: $userId, isPremium: $hasPremium');
    } catch (e) {
      debugPrint('Error updating premium status: $e');
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
    return productId == monthlySubscriptionId ||
           productId == sixMonthSubscriptionId ||
           productId == yearlySubscriptionId;
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
      // First check Firestore for user's premium status
      final userDoc = await _firestore.collection('users').doc(userId).get();
      if (userDoc.exists) {
        final data = userDoc.data();
        final isPremium = data?['isPremium'] as bool? ?? false;
        if (isPremium) {
          return true;
        }
      }

      // Fallback to local purchases check
      return _purchases.any((purchase) => 
        purchase.status == PurchaseStatus.purchased || 
        purchase.status == PurchaseStatus.restored
      );
    } catch (e) {
      debugPrint('Error checking premium access: $e');
      // Fallback to local purchases
      return _purchases.any((purchase) => 
        purchase.status == PurchaseStatus.purchased || 
        purchase.status == PurchaseStatus.restored
      );
    }
  }
  
  // Synchronous version for backward compatibility
  // Note: This checks local purchases only. For accurate user-specific check, use hasPremiumAccess() async version
  bool hasPremiumAccessSync() {
    // First check if there's a logged in user and try to get cached premium status
    final userId = _auth.currentUser?.uid;
    if (userId != null) {
      // We can't do async operations here, so we rely on local purchases
      // The async version will check Firestore
    }
    
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
