import 'package:flutter/material.dart';
import 'in_app_purchase_service.dart';

class PremiumService extends ChangeNotifier {
  static final PremiumService _instance = PremiumService._internal();
  factory PremiumService() => _instance;
  PremiumService._internal();

  final InAppPurchaseService _purchaseService = InAppPurchaseService();
  
  // Test modu için değişken
  bool _isTestMode = false;

  // Initialize the service
  Future<void> initialize() async {
    await _purchaseService.initialize();
  }

  // Check if user has premium access (async - checks Firestore)
  Future<bool> hasPremiumAccess() async {
    // Test modu aktifse her zaman true döndür
    if (_isTestMode) return true;
    return await _purchaseService.hasPremiumAccess();
  }
  
  // Synchronous version for backward compatibility
  bool hasPremiumAccessSync() {
    // Test modu aktifse her zaman true döndür
    if (_isTestMode) return true;
    return _purchaseService.hasPremiumAccessSync();
  }

  // Alias for hasPremiumAccess for easier access (sync - uses cached value)
  bool get isPremium => hasPremiumAccessSync();

  // Check if user has monthly subscription
  bool hasMonthlySubscription() {
    if (_isTestMode) return true;
    return _purchaseService.hasSubscription(InAppPurchaseService.monthlySubscriptionId);
  }

  // Check if user has yearly subscription
  bool hasYearlySubscription() {
    if (_isTestMode) return true;
    return _purchaseService.hasSubscription(InAppPurchaseService.yearlySubscriptionId);
  }

  // Check if user has lifetime purchase
  bool hasLifetimePurchase() {
    if (_isTestMode) return true;
    return _purchaseService.hasSubscription(InAppPurchaseService.lifetimePurchaseId);
  }

  // Get available products
  List<dynamic> getProducts() {
    return _purchaseService.products;
  }

  // Get monthly subscription product
  dynamic getMonthlyProduct() {
    return _purchaseService.getProduct(InAppPurchaseService.monthlySubscriptionId);
  }

  // Get yearly subscription product
  dynamic getYearlyProduct() {
    return _purchaseService.getProduct(InAppPurchaseService.yearlySubscriptionId);
  }

  // Get lifetime product
  dynamic getLifetimeProduct() {
    return _purchaseService.getProduct(InAppPurchaseService.lifetimePurchaseId);
  }

  // Buy monthly subscription
  Future<bool> buyMonthlySubscription() async {
    return await _purchaseService.buyProductById(InAppPurchaseService.monthlySubscriptionId);
  }

  // Buy yearly subscription
  Future<bool> buyYearlySubscription() async {
    return await _purchaseService.buyProductById(InAppPurchaseService.yearlySubscriptionId);
  }

  // Buy lifetime purchase
  Future<bool> buyLifetimePurchase() async {
    return await _purchaseService.buyProductById(InAppPurchaseService.lifetimePurchaseId);
  }

  // Restore purchases
  Future<void> restorePurchases() async {
    await _purchaseService.restorePurchases();
  }

  // Check if in-app purchase is available
  bool isAvailable() {
    return _purchaseService.isAvailable;
  }

  // Test modu metodları
  void enableTestMode() {
    _isTestMode = true;
    notifyListeners();
  }

  void disableTestMode() {
    _isTestMode = false;
    notifyListeners();
  }

  bool get isTestMode => _isTestMode;

  // Test modu durumunu toggle et
  void toggleTestMode() {
    _isTestMode = !_isTestMode;
    notifyListeners();
  }

  // Dispose
  @override
  void dispose() {
    _purchaseService.dispose();
    super.dispose();
  }
}
