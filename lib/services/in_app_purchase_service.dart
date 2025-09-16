import 'dart:async';
import 'package:flutter/material.dart';
import 'package:in_app_purchase/in_app_purchase.dart';

class InAppPurchaseService {
  static final InAppPurchaseService _instance = InAppPurchaseService._internal();
  factory InAppPurchaseService() => _instance;
  InAppPurchaseService._internal();

  final InAppPurchase _inAppPurchase = InAppPurchase.instance;
  late StreamSubscription<List<PurchaseDetails>> _subscription;
  
  // Product IDs
  static const String monthlySubscriptionId = 'monthly_premium';
  static const String sixMonthSubscriptionId = 'six_month_premium';
  static const String yearlySubscriptionId = 'yearly_premium';
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

    final ProductDetailsResponse response = await _inAppPurchase.queryProductDetails(productIds);
    
    if (response.notFoundIDs.isNotEmpty) {
      debugPrint('Products not found: ${response.notFoundIDs}');
    }

    _products = response.productDetails;
    debugPrint('Loaded ${_products.length} products');
  }

  // Restore previous purchases
  Future<void> restorePurchases() async {
    await _inAppPurchase.restorePurchases();
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
      }
    }
  }

  // Verify purchase (implement your verification logic here)
  Future<bool> _verifyPurchase(PurchaseDetails purchaseDetails) async {
    // TODO: Implement server-side verification
    // For now, return true for testing
    return true;
  }

  // Buy a product by ProductDetails
  Future<bool> buyProductDetails(ProductDetails productDetails) async {
    if (!_isAvailable) {
      debugPrint('In-app purchase not available');
      return false;
    }

    final PurchaseParam purchaseParam = PurchaseParam(productDetails: productDetails);
    
    try {
      final bool success = await _inAppPurchase.buyNonConsumable(purchaseParam: purchaseParam);
      return success;
    } catch (e) {
      debugPrint('Purchase failed: $e');
      return false;
    }
  }

  // Buy product by ID (convenience method)
  Future<bool> buyProductById(String productId) async {
    final product = getProduct(productId);
    if (product == null) {
      debugPrint('Product not found: $productId');
      return false;
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

  // Check if user has premium access
  bool hasPremiumAccess() {
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
