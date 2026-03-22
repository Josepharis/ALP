import 'dart:async';
import 'dart:io';
import 'package:flutter/foundation.dart';
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
  
  // Restore reject notification stream
  final _restoreRejectController = StreamController<String>.broadcast();
  Stream<String> get restoreRejectStream => _restoreRejectController.stream;
  
  // Satın alma başarıyla Firestore'a kaydedildiğinde tetiklenir (UI kapatmak için)
  final _purchaseSuccessController = StreamController<String>.broadcast();
  Stream<String> get purchaseSuccessStream => _purchaseSuccessController.stream;
  
  // Product IDs - Platform specific
  // iOS Product IDs - App Store Connect'te tanımlı Product ID'ler
  // NOT: Bundle ID ile eşleşmesi zorunlu değil, sadece App Store Connect'teki ile eşleşmeli
  static const String _iosMonthlySubscriptionId = 'com.yftsoftware.monthly'; // Aylık abonelik
  static const String _iosSixMonthSubscriptionId = 'com.alp.premium.6months'; // 6 aylık abonelik
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
  
  // Initialization status - prevent multiple initializations
  bool _isInitialized = false;
  bool get isInitialized => _isInitialized;

  // Purchase details
  List<PurchaseDetails> _purchases = [];
  List<PurchaseDetails> get purchases => _purchases;
  
  // Premium durumu cache'i - performans için
  bool? _cachedPremiumStatus;
  String? _cachedUserId;
  
  // İşlenen purchase'ları track et (duplicate prevention)
  final Set<String> _processedPurchases = {};
  // İşlem devam eden purchase'lar (async işlem sırasında duplicate'ları engellemek için)
  final Set<String> _processingPurchases = {};
  // Processing timestamp'leri (restored transaction'ların tekrar işlenmesine izin vermek için)
  final Map<String, DateTime> _processingTimestamps = {};
  // Manuel restore flag - sadece kullanıcı butona bastığında restore'ları işle
  bool _isManualRestore = false;
  // Satın alma butonu basıldığı zaman - bu flag aktif olduğu sürece gelen TÜM transaction'lar kabul edilir
  bool _isPurchaseButtonPressed = false;

  // Initialize the service
  Future<void> initialize() async {
    // Prevent multiple initializations
    if (_isInitialized) {
      debugPrint('⚠️ Service already initialized, skipping...');
      return;
    }
    
    debugPrint('🔧 Initializing InAppPurchaseService...');
    
    try {
      _isAvailable = await _inAppPurchase.isAvailable().timeout(
        const Duration(seconds: 10),
        onTimeout: () {
          debugPrint('⏰ isAvailable() timeout');
          return false;
        },
      );
      
      if (!_isAvailable) {
        debugPrint('❌ In-app purchase not available');
        return;
      }

      // Listen to purchase updates (only once)
      _subscription = _inAppPurchase.purchaseStream.listen(
        _onPurchaseUpdate,
        onDone: () => _subscription.cancel(),
        onError: (error) => debugPrint('Purchase stream error: $error'),
      );

      // Load products (with timeout - TestFlight için daha uzun)
      debugPrint('📦 Loading products...');
      await _loadProducts().timeout(
        const Duration(seconds: 60), // TestFlight için 60 saniye
        onTimeout: () {
          debugPrint('⏰ Product loading timeout (60s)');
          debugPrint('⚠️ This may happen in TestFlight if products are not configured in App Store Connect');
          // Continue anyway, products might load later
        },
      );

      // CRITICAL: DO NOT call restorePurchases() automatically
      // iOS will automatically send unfinished transactions through purchaseStream
      // We'll complete them without activating premium (see _handlePurchase)
      debugPrint('🧹 Purchase stream listener active - unfinished transactions will be handled automatically');
      
      // Load purchase status from Firestore if user is logged in
      final userId = _auth.currentUser?.uid;
      if (userId != null) {
        debugPrint('📥 Loading purchase status from Firestore for user: $userId');
        await _syncPurchasesWithFirestore(userId).timeout(
          const Duration(seconds: 10),
          onTimeout: () {
            debugPrint('⏰ Firestore sync timeout (continuing anyway)');
          },
        );
      }
      
      // Mark as initialized
      _isInitialized = true;
      debugPrint('✅ InAppPurchaseService initialized successfully');
      debugPrint('   Products loaded: ${_products.length}');
      debugPrint('   Product IDs: ${_products.map((p) => p.id).toList()}');
      
    } catch (e) {
      debugPrint('❌ Error initializing InAppPurchaseService: $e');
      // Mark as initialized anyway to prevent repeated failed attempts
      _isInitialized = true;
    }
  }
  
  // Note: Unfinished transactions are automatically handled by iOS
  // They come through purchaseStream and are completed in _handlePurchase
  // No manual cleanup needed - iOS StoreKit handles this automatically

  // Public method to reload products (useful for retry)
  Future<void> reloadProducts() async {
    await _loadProducts();
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

    // iOS için retry logic - TestFlight ve production için daha fazla retry
    // Production'da App Store Connect API'ye erişim daha yavaş olabilir
    int maxRetries = Platform.isIOS ? 5 : 1; // TestFlight için 5 deneme
    int retryDelay = Platform.isIOS ? 3 : 0; // Her denemede 3 saniye bekle
    
    for (int attempt = 1; attempt <= maxRetries; attempt++) {
      try {
        debugPrint('Loading products for platform: ${Platform.isIOS ? "iOS" : "Android"} (Attempt $attempt/$maxRetries)');
        debugPrint('Product IDs to load: $productIds');
        
        if (Platform.isIOS && attempt > 1) {
          debugPrint('⏳ Waiting ${retryDelay}s before retry...');
          await Future.delayed(Duration(seconds: retryDelay));
        }
        
        // Production/TestFlight için daha uzun timeout
        final ProductDetailsResponse response = await _inAppPurchase.queryProductDetails(productIds).timeout(
          const Duration(seconds: 30), // Production için 30 saniye timeout
          onTimeout: () {
            debugPrint('⏰ queryProductDetails timeout (Attempt $attempt/$maxRetries)');
            throw TimeoutException('Ürün sorgulama zaman aşımına uğradı', const Duration(seconds: 30));
          },
        );
        
        if (response.notFoundIDs.isNotEmpty) {
          debugPrint('⚠️ Products not found: ${response.notFoundIDs}');
          debugPrint('   🔍 DEBUG INFO:');
          debugPrint('      - Requested: $productIds');
          debugPrint('      - Not Found: ${response.notFoundIDs}');
          debugPrint('      - Found: ${response.productDetails.length} products');
          debugPrint('      - Error: ${response.error}');
          if (Platform.isIOS) {
            debugPrint('⚠️ iOS: Make sure these product IDs are configured in App Store Connect:');
            for (final id in response.notFoundIDs) {
              debugPrint('   - $id');
            }
            debugPrint('⚠️ SANDBOX KONTROLÜ:');
            debugPrint('   🔐 Sandbox hesabı kontrolü için:');
            debugPrint('   1. Settings → App Store → Sandbox Account');
            debugPrint('   2. Sandbox test hesabı ile giriş yapılmış mı?');
            debugPrint('   3. Normal App Store hesabından çıkış yapılmış mı?');
            debugPrint('   4. Cihazı yeniden başlattınız mı?');
            debugPrint('⚠️ TestFlight Troubleshooting:');
            debugPrint('   1. App Store Connect → Your App → In-App Purchases');
            debugPrint('   2. Check if products are in "Waiting for Review" or "Approved" status');
            debugPrint('   3. Make sure product IDs match exactly: $productIds');
            debugPrint('   4. "Waiting for Review" ürünler bazen API\'de aktif olmayabilir');
            debugPrint('   5. Use a Sandbox test account for testing');
            debugPrint('   ⚠️ ÖNEMLİ: "Waiting for Review" ürünler bazen TestFlight\'ta çalışmaz!');
            debugPrint('   💡 ÇÖZÜM 1: 24-48 saat bekleyin (API güncellemesi için)');
            debugPrint('   💡 ÇÖZÜM 2: Ürünleri "Approved" durumuna getirin');
            debugPrint('   💡 ÇÖZÜM 3: Versiyonu Remove from Review yapıp tekrar Submit edin');
            if (attempt < maxRetries) {
              debugPrint('   Retrying in ${retryDelay}s...');
              continue;
            } else {
              debugPrint('   ⚠️ All retry attempts failed.');
              debugPrint('   💡 "Waiting for Review" ürünler API\'de aktif olmayabilir.');
              debugPrint('   💡 ÇÖZÜM: 24-48 saat bekleyin veya ürünleri onaylatın.');
            }
          }
        }

        if (response.error != null) {
          debugPrint('❌ Error loading products: ${response.error}');
          debugPrint('   Error code: ${response.error!.code}');
          debugPrint('   Error message: ${response.error!.message}');
          debugPrint('   Error details: ${response.error!.details}');
          debugPrint('   ⚠️ TestFlight: This might be a network issue or App Store Connect configuration problem');
          debugPrint('   🔍 DEBUG INFO:');
          debugPrint('      - Response error: ${response.error}');
          debugPrint('      - Requested Product IDs: $productIds');
          debugPrint('      - Not Found IDs: ${response.notFoundIDs}');
          debugPrint('      - Found Products: ${response.productDetails.length}');
          if (Platform.isIOS && attempt < maxRetries) {
            debugPrint('   Retrying in ${retryDelay}s...');
            continue;
          } else {
            debugPrint('   ❌ All retry attempts failed. Check App Store Connect configuration.');
            debugPrint('   💡 "Waiting for Review" ürünler bazen API\'de aktif olmayabilir.');
            debugPrint('   💡 ÇÖZÜM: 24-48 saat bekleyin veya ürünleri "Approved" durumuna getirin.');
          }
        }

        _products = response.productDetails;
        debugPrint('✅ Loaded ${_products.length} products: ${_products.map((p) => p.id).toList()}');
        
        // Her ürün için detaylı bilgi
        for (var product in _products) {
          debugPrint('   📦 ${product.id}: ${product.title} - ${product.price}');
        }
        
        if (_products.isNotEmpty) {
          // Başarılı, retry döngüsünden çık
          debugPrint('✅ Products loaded successfully!');
          break;
        } else {
          debugPrint('⚠️ No products loaded - response.productDetails is empty');
          debugPrint('   This means App Store Connect returned no products for IDs: $productIds');
        }
        
        if (_products.isEmpty && Platform.isIOS) {
          debugPrint('⚠️ WARNING: No products loaded on iOS (Attempt $attempt/$maxRetries)');
          if (attempt < maxRetries) {
            debugPrint('   Retrying in ${retryDelay}s...');
            continue;
          } else {
            debugPrint('⚠️ TestFlight/Production Troubleshooting:');
            debugPrint('   1. App Store Connect → Your App → In-App Purchases');
            debugPrint('   2. Verify products exist and are in "Ready to Submit" or "Approved" status');
            debugPrint('   3. Product IDs must match exactly: $productIds');
            debugPrint('   4. Wait 24-48 hours after creating/updating products');
            debugPrint('   5. Use Sandbox test account (Settings → App Store → Sandbox Account)');
            debugPrint('   6. Check internet connection (WiFi or cellular)');
            debugPrint('   7. Try restarting the app');
            debugPrint('   ⚠️ ÖNEMLİ: "Ready to Submit" ürünler TestFlight\'ta çalışmayabilir!');
            debugPrint('   💡 ÇÖZÜM:');
            debugPrint('      a) App Store Connect → Versions → Yeni versiyon oluşturun');
            debugPrint('      b) In-App Purchases and Subscriptions → 3 ürünü seçin');
            debugPrint('      c) Submit for Review → HEMEN iptal edin');
            debugPrint('      d) Bu işlem ürünlerin API\'de aktif olmasını sağlar');
            debugPrint('      e) TestFlight\'ta tekrar deneyin');
          }
        }
      } catch (e) {
        debugPrint('❌ Exception loading products (Attempt $attempt/$maxRetries): $e');
        if (e is TimeoutException) {
          debugPrint('   ⏰ Timeout occurred - App Store Connect API may be slow');
          debugPrint('   💡 This is common in TestFlight. Retrying...');
        }
        if (Platform.isIOS && attempt < maxRetries) {
          debugPrint('   Retrying in ${retryDelay}s...');
          continue;
        } else if (Platform.isIOS) {
          debugPrint('   ❌ iOS-specific: Check App Store Connect configuration');
          debugPrint('   💡 Products must be created and approved in App Store Connect');
          debugPrint('   💡 Wait 24-48 hours after creating products');
        }
      }
    }
  }

  // Restore previous purchases (sadece kullanıcı butona bastığında çağrılır)
  Future<void> restorePurchases() async {
    final userId = _auth.currentUser?.uid;
    
    // Manuel restore flag'ini aktif et
    _isManualRestore = true;
    debugPrint('🔄 Manual restore initiated by user');
    
    try {
      // iOS: Always restore from App Store to get purchase history
      // Android: Only restore from Google Play if user is not logged in
      if (Platform.isIOS) {
        debugPrint('iOS: Restoring purchases from App Store...');
        await _inAppPurchase.restorePurchases();
        
        // Restore işlemi tamamlanması için kısa bir bekleme
        await Future.delayed(const Duration(milliseconds: 500));
        
        // Also load from Firestore if user is logged in
        if (userId != null) {
          debugPrint('iOS: User logged in, also loading purchases from Firestore for user: $userId');
          await _loadPurchasesFromFirestore(userId);
          await _syncPurchasesWithFirestore(userId);
        }
        return;
      }
    
      // Android: If user is logged in, ONLY load from Firestore
      // Do NOT restore from Google Play as it may show purchases from different accounts
      // Each Firebase Auth account should only see its own purchases
      if (userId != null) {
        _purchases.clear();
        debugPrint('Android: User logged in, loading purchases from Firestore only for user: $userId');
        
        // Load purchases from Firestore for this user
        await _loadPurchasesFromFirestore(userId);
        
        // Sync premium status
        await _syncPurchasesWithFirestore(userId);
        return; // Don't restore from Google Play for logged-in users
      }
      
      // Android: No user logged in, restore from Google Play (for anonymous/offline use)
      debugPrint('Android: No user logged in, restoring from Google Play...');
      await _inAppPurchase.restorePurchases();
    } finally {
      // Restore işlemi tamamlandı, flag'i kapat
      _isManualRestore = false;
      debugPrint('✅ Manual restore completed');
    }
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
        
        // Cache'i güncelle - sync işlemi sırasında
        _cachedPremiumStatus = isPremium;
        _cachedUserId = userId;
        
        debugPrint('✅ Premium status synced from Firestore for user: $userId, isPremium: $isPremium');
        debugPrint('✅ Cache updated during sync: isPremium=$isPremium, userId=$userId');
      } else {
        // User document doesn't exist, create it with premium: false
        await _firestore.collection('users').doc(userId).set({
          'isPremium': false,
          'premiumUpdatedAt': FieldValue.serverTimestamp(),
        }, SetOptions(merge: true));
        
        // Cache'i güncelle
        _cachedPremiumStatus = false;
        _cachedUserId = userId;
        debugPrint('✅ User document created with isPremium=false, cache updated');
      }
    } catch (e) {
      debugPrint('❌ Error syncing purchases with Firestore: $e');
    }
  }
  
  // Clear all purchases (called on sign out)
  Future<void> clearPurchases() async {
    _purchases.clear();
    _processedPurchases.clear();
    _processingPurchases.clear();
    _processingTimestamps.clear();
    _isManualRestore = false;
    _isPurchaseButtonPressed = false;
    debugPrint('Local purchases, processed purchases, and timestamps cache cleared');
  }

  // Handle purchase updates
  void _onPurchaseUpdate(List<PurchaseDetails> purchaseDetailsList) {
    for (final PurchaseDetails purchaseDetails in purchaseDetailsList) {
      _handlePurchase(purchaseDetails);
    }
  }

  // Handle individual purchase
  Future<void> _handlePurchase(PurchaseDetails purchaseDetails) async {
    final purchaseId = purchaseDetails.purchaseID ?? '';
    final productId = purchaseDetails.productID;
    final status = purchaseDetails.status;
    
    // Duplicate prevention: Aynı purchase'ı birden fazla kez işleme
    final uniqueKey = '${purchaseId}_${productId}_${status.toString()}';
    
    // Şu anda işleniyor mu kontrol et (async işlem sırasında duplicate'ları engelle)
    if (_processingPurchases.contains(uniqueKey)) {
      debugPrint('⚠️ Purchase already being processed, skipping duplicate: $productId, ID: "$purchaseId", Status: $status');
      return;
    }
    
    // Zaten işlenmiş mi kontrol et - AMA sadece purchased için
    // Restored transaction'lar tekrar işlenebilir (kullanıcı butona basınca)
    if (status == PurchaseStatus.purchased && _processedPurchases.contains(uniqueKey)) {
      debugPrint('⚠️ Already processed PURCHASED transaction, skipping: $productId, ID: "$purchaseId"');
      return;
    }
    
    // Restored için: Sadece SON 5 saniye içinde işlendiyse skip et (gerçek duplicate)
    if (status == PurchaseStatus.restored && _processedPurchases.contains(uniqueKey)) {
      // Check if recently processed (within 5 seconds)
      final recentlyProcessedKey = 'timestamp_$uniqueKey';
      final lastProcessedTime = _processingTimestamps[recentlyProcessedKey];
      if (lastProcessedTime != null) {
        final timeSinceProcessed = DateTime.now().difference(lastProcessedTime);
        if (timeSinceProcessed.inSeconds < 5) {
          debugPrint('⚠️ Already processed RESTORED transaction recently (${timeSinceProcessed.inSeconds}s ago), skipping: $productId');
          return;
        } else {
          debugPrint('💡 Previously processed RESTORED transaction, but allowing re-processing (${timeSinceProcessed.inSeconds}s ago)');
          // Remove from processed to allow re-processing
          _processedPurchases.remove(uniqueKey);
        }
      }
    }
    
    // İşlem başladığını işaretle
    _processingPurchases.add(uniqueKey);
    
    try {
      debugPrint('📦 Processing purchase: $productId, ID: "$purchaseId", Status: $status');
    
    // Eski product ID'leri ignore et (artık kullanılmıyor)
    const deprecatedProductIds = ['com.yftsoftware.anestezi']; // Eski ID'ler
    if (deprecatedProductIds.contains(productId)) {
      debugPrint('   ⚠️ Deprecated product ID detected, ignoring: $productId');
      debugPrint('   💡 This product ID is no longer in use. Please use the new product IDs.');
      _processingPurchases.remove(uniqueKey);
      return;
    }
    
    // Handle different statuses FIRST, then complete if needed
    if (status == PurchaseStatus.pending) {
      debugPrint('   ⏳ Purchase pending, waiting...');
      // Pending durumunda processing'den çıkar ama processed'e ekleme (hala işleniyor)
      // NOT: Pending transaction'ları complete ETME
      _processingPurchases.remove(uniqueKey);
      return;
    }

    if (status == PurchaseStatus.error) {
      debugPrint('   ❌ Purchase error: ${purchaseDetails.error}');
      // Error durumunda processing'den çıkar (tekrar deneme şansı olsun)
      // NOT: Error transaction'ları complete ETME
      _processingPurchases.remove(uniqueKey);
      return;
    }

    if (status == PurchaseStatus.canceled) {
      debugPrint('   🚫 Purchase cancelled by user');
      // Canceled durumunda processing'den çıkar (tekrar deneme şansı olsun)
      // NOT: Canceled transaction'ları complete ETME
      _processingPurchases.remove(uniqueKey);
      return;
    }

    // Handle successful NEW purchases
    if (status == PurchaseStatus.purchased) {
      debugPrint('   ✅ NEW Purchase detected (PurchaseStatus.purchased)');
      debugPrint('   💡 This is a BRAND NEW purchase, not a restore');
      
      final userId = _auth.currentUser?.uid;
      
      if (userId == null) {
        debugPrint('   ⚠️ No user logged in, cannot save purchase');
        _processingPurchases.remove(uniqueKey);
        return;
      }
      
      // For BRAND NEW purchases: Save directly without cross-account check
      // This transaction didn't exist before, so it can't belong to another account
      try {
        await _savePurchaseToFirestore(purchaseDetails);
        debugPrint('   💾 NEW purchase saved and premium activated');
        
        // Complete the transaction AFTER saving to Firestore
        if (purchaseDetails.pendingCompletePurchase) {
          debugPrint('   ✓ Completing purchased transaction: $productId');
          try {
            await _inAppPurchase.completePurchase(purchaseDetails);
            debugPrint('   ✅ Transaction completed successfully');
          } catch (e) {
            debugPrint('   ⚠️ Error completing purchase: $e');
          }
        }
        
        // Mark as processed with timestamp
        _processedPurchases.add(uniqueKey);
        _processingTimestamps['timestamp_$uniqueKey'] = DateTime.now();
        debugPrint('   ✅ Marked as processed at ${DateTime.now()}');
        
        // Clear flags after successful purchase
        _isPurchaseButtonPressed = false;
        _isManualRestore = false;
        debugPrint('   🔘 Flags cleared after new purchase');
      } catch (e) {
        debugPrint('   ❌ Error saving purchase: $e');
        // Don't mark as processed on error so we can retry
        // Also don't complete transaction if save failed
      } finally {
        _processingPurchases.remove(uniqueKey);
      }
      return;
    }
    
    // Handle restored purchases
    if (status == PurchaseStatus.restored) {
      debugPrint('   🔄 RESTORED purchase detected (PurchaseStatus.restored)');
      debugPrint('   💡 This is an EXISTING purchase from Apple, not a new one');
      
      final userId = _auth.currentUser?.uid;
      
      if (userId == null) {
        debugPrint('   ⚠️ No user logged in, skipping restore');
        _processingPurchases.remove(uniqueKey);
        return;
      }
      
      // Check if user pressed any button
      if (!_isManualRestore && !_isPurchaseButtonPressed) {
        debugPrint('   ⚠️ AUTO-RESTORE detected (user did NOT press any button)');
        debugPrint('   🧹 This is iOS automatic unfinished transaction cleanup');
        debugPrint('   💡 Premium will NOT be activated automatically');
        debugPrint('   💡 User must press "Restore Purchases" to activate');
        
        // Complete the transaction to clear iOS queue (but don't activate premium)
        if (purchaseDetails.pendingCompletePurchase) {
          debugPrint('   ✓ Completing auto-restored transaction (cleanup): $productId');
          try {
            await _inAppPurchase.completePurchase(purchaseDetails);
            debugPrint('   ✅ Transaction completed (queue cleared)');
          } catch (e) {
            debugPrint('   ⚠️ Error completing transaction: $e');
          }
        }
        
        // Don't add to processed list - user can activate later
        debugPrint('   💡 NOT adding to processed list - user can activate later');
        _processingPurchases.remove(uniqueKey);
        return;
      }
      
      // User pressed a button - check which one
      if (_isPurchaseButtonPressed) {
        debugPrint('   🔘 "Buy" button was pressed');
        debugPrint('   💡 Apple returned existing subscription (user already subscribed)');
        debugPrint('   🔍 Checking cross-account protection...');
      } else if (_isManualRestore) {
        debugPrint('   🔘 "Restore Purchases" button was pressed');
        debugPrint('   💡 User wants to restore previous purchase');
        debugPrint('   🔍 Checking cross-account protection...');
      }
      
      // CRITICAL: ALWAYS do cross-account check for RESTORED purchases
      // Even if user pressed "Buy" - the transaction already exists somewhere
      
      // Step 1: Check if purchase already exists for CURRENT user
      debugPrint('   🔍 Step 1: Checking if purchase belongs to current user...');
      final currentUserPurchase = await _firestore
          .collection('users')
          .doc(userId)
          .collection('purchases')
          .where('purchaseId', isEqualTo: purchaseId)
          .limit(1)
          .get();
      
      if (currentUserPurchase.docs.isNotEmpty) {
        debugPrint('   ✅ Purchase belongs to current user - reactivating premium');
        // Reactivate premium for this user
        await _reactivatePremiumForUser(userId);
        
        // Complete transaction after reactivating premium
        if (purchaseDetails.pendingCompletePurchase) {
          debugPrint('   ✓ Completing restored transaction: $productId');
          try {
            await _inAppPurchase.completePurchase(purchaseDetails);
            debugPrint('   ✅ Transaction completed successfully');
          } catch (e) {
            debugPrint('   ⚠️ Error completing transaction: $e');
          }
        }
        
        _processedPurchases.add(uniqueKey);
        _processingTimestamps['timestamp_$uniqueKey'] = DateTime.now();
        _processingPurchases.remove(uniqueKey);
        
        // Clear flags after successful reactivation
        _isPurchaseButtonPressed = false;
        _isManualRestore = false;
        debugPrint('   🔘 Flags cleared after reactivate');
        return;
      }
      
      // Step 2: Check if purchase belongs to ANOTHER user
      debugPrint('   🔍 Step 2: Checking if purchase belongs to another user...');
      final otherUserPurchase = await _firestore
          .collectionGroup('purchases')
          .where('purchaseId', isEqualTo: purchaseId)
          .limit(1)
          .get();
      
      if (otherUserPurchase.docs.isNotEmpty) {
        final originalUserId = otherUserPurchase.docs.first.reference.parent.parent?.id;
        debugPrint('   ⚠️ REJECTED: Purchase belongs to another Firebase account!');
        debugPrint('   📱 Original Firebase user: $originalUserId');
        debugPrint('   👤 Current Firebase user: $userId');
        debugPrint('   💡 This Apple ID subscription is already linked to another account');
        
        // Complete transaction to clear queue (but don't activate premium)
        if (purchaseDetails.pendingCompletePurchase) {
          debugPrint('   ✓ Completing rejected transaction: $productId');
          try {
            await _inAppPurchase.completePurchase(purchaseDetails);
            debugPrint('   ✅ Transaction completed (queue cleared)');
          } catch (e) {
            debugPrint('   ⚠️ Error completing transaction: $e');
          }
        }
        
        // Show error message to user
        _restoreRejectController.add(
          'Bu Apple ID aboneliği başka bir hesaba bağlı. '
          'Premium erişim için o hesapla giriş yapın.'
        );
        
        _processedPurchases.add(uniqueKey);
        _processingTimestamps['timestamp_$uniqueKey'] = DateTime.now();
        _processingPurchases.remove(uniqueKey);
        
        // Clear flags after rejection
        _isPurchaseButtonPressed = false;
        _isManualRestore = false;
        debugPrint('   🔘 Flags cleared after reject');
        return;
      }
      
      // Step 3: Purchase doesn't exist anywhere - this is first time seeing it
      debugPrint('   ✅ Purchase not found in any account - linking to current user');
      try {
        await _savePurchaseToFirestore(purchaseDetails);
        debugPrint('   💾 Purchase saved and premium activated');
        
        // Complete transaction after saving
        if (purchaseDetails.pendingCompletePurchase) {
          debugPrint('   ✓ Completing restored transaction: $productId');
          try {
            await _inAppPurchase.completePurchase(purchaseDetails);
            debugPrint('   ✅ Transaction completed successfully');
          } catch (e) {
            debugPrint('   ⚠️ Error completing transaction: $e');
          }
        }
        
        _processedPurchases.add(uniqueKey);
        _processingTimestamps['timestamp_$uniqueKey'] = DateTime.now();
        
        // İşlem başarılı - flag'leri temizle
        _isPurchaseButtonPressed = false;
        _isManualRestore = false;
        debugPrint('   🔘 Flags cleared after save');
      } catch (e) {
        debugPrint('   ❌ Error saving purchase: $e');
        // Don't complete transaction if save failed
      } finally {
        _processingPurchases.remove(uniqueKey);
      }
    }
    } catch (e) {
      debugPrint('   ❌ Error processing purchase: $e');
      _processingPurchases.remove(uniqueKey);
    }
  }
  
  // Reactivate premium for existing user (during manual restore)
  Future<void> _reactivatePremiumForUser(String userId) async {
    try {
      debugPrint('🔄 Reactivating premium for user: $userId');
      
      // Update user premium status
      await _firestore.collection('users').doc(userId).set({
        'isPremium': true,
        'premiumUpdatedAt': FieldValue.serverTimestamp(),
      }, SetOptions(merge: true));
      
      // Update cache
      _cachedPremiumStatus = true;
      _cachedUserId = userId;
      
      // Notify PremiumService
      await _notifyPremiumStatusChanged();
      
      // Notify UI
      try {
        _purchaseSuccessController.add('restore_success');
      } catch (_) {}
      
      debugPrint('✅ Premium reactivated for user: $userId');
    } catch (e) {
      debugPrint('❌ Error reactivating premium: $e');
      rethrow;
    }
  }
  
  // Save purchase to Firestore (user-specific)
  Future<void> _savePurchaseToFirestore(PurchaseDetails purchaseDetails) async {
    final userId = _auth.currentUser?.uid;
    debugPrint('💾 Saving purchase: ${purchaseDetails.productID}');
    debugPrint('   User ID: ${userId ?? "null"}');
    
    if (userId == null) {
      debugPrint('❌ Cannot save: User not logged in');
      return;
    }

    try {
      final purchaseId = purchaseDetails.purchaseID ?? '';
      final verificationData = purchaseDetails.verificationData.serverVerificationData;
      final productId = purchaseDetails.productID;
      
      // Use purchaseID as unique ID, or generate one for sandbox/test purchases
      final uniqueId = purchaseId.isNotEmpty && purchaseId != '0' 
          ? purchaseId 
          : 'sandbox_${DateTime.now().millisecondsSinceEpoch}_${productId.hashCode}';
      
      final purchaseData = {
        'productId': productId,
        'purchaseId': purchaseId,
        'uniqueId': uniqueId,
        'status': purchaseDetails.status.toString(),
        'transactionDate': purchaseDetails.transactionDate ?? DateTime.now().millisecondsSinceEpoch.toString(),
        'purchasedAt': FieldValue.serverTimestamp(),
        'verificationData': verificationData.isNotEmpty ? verificationData : '',
        'platform': Platform.isIOS ? 'ios' : 'android',
        'isRestored': purchaseDetails.status == PurchaseStatus.restored,
      };

      // Atomik işlem: Hem purchase kaydet hem user premium durumunu güncelle
      final batch = _firestore.batch();
      
      // Purchase kaydı
      final purchaseRef = _firestore
          .collection('users')
          .doc(userId)
          .collection('purchases')
          .doc(uniqueId);
      batch.set(purchaseRef, purchaseData, SetOptions(merge: true));
      
      // User premium durumu
      final userRef = _firestore.collection('users').doc(userId);
      batch.set(userRef, {
        'isPremium': true,
        'premiumUpdatedAt': FieldValue.serverTimestamp(),
      }, SetOptions(merge: true));
      
      // Tümünü birlikte commit et
      await batch.commit();
      
      debugPrint('✅ Purchase saved and premium activated for user: $userId');
      
      // Cache'i güncelle (atomik şekilde)
      _cachedPremiumStatus = true;
      _cachedUserId = userId;
      
      // PremiumService'i bilgilendir
      await _notifyPremiumStatusChanged();
      
      // UI'a satın alma tamamlandı sinyali gönder (premium ekranı kapansın)
      try {
        _purchaseSuccessController.add(productId);
      } catch (_) {}
      
      debugPrint('✅ Purchase processing completed');
    } catch (e, stackTrace) {
      debugPrint('❌ ERROR saving purchase: $e');
      debugPrint('   Stack trace: $stackTrace');
      
      // Fallback: Cache'i güncelle ve service'e bildir
      _cachedPremiumStatus = true;
      _cachedUserId = userId;
      await _notifyPremiumStatusChanged();
      try {
        _purchaseSuccessController.add(purchaseDetails.productID);
      } catch (_) {}
    }
  }
  
  // Premium durumu değiştiğinde PremiumService'i bilgilendir
  Future<void> _notifyPremiumStatusChanged() async {
    try {
      final premiumService = PremiumService();
      await premiumService.refreshPremiumStatus();
      debugPrint('✅ PremiumService notified and UI refreshed');
    } catch (e) {
      debugPrint('⚠️ Error notifying premium status change: $e');
    }
  }

  // Buy a product by ProductDetails
  Future<bool> buyProductDetails(ProductDetails productDetails) async {
    debugPrint('═══════════════════════════════════════════════════════');
    debugPrint('💳 buyProductDetails CALLED');
    debugPrint('═══════════════════════════════════════════════════════');
    
    // Mark that purchase button was pressed - accept ALL restored transactions from now on!
    _isPurchaseButtonPressed = true;
    debugPrint('🔘 Purchase button pressed - will accept ALL restored transactions!');
    
    try {
      debugPrint('💳 Initiating purchase for: ${productDetails.id}');
      debugPrint('   Product title: ${productDetails.title}');
      debugPrint('   Product price: ${productDetails.price}');
      debugPrint('   Product description: ${productDetails.description}');
      
      final userId = _auth.currentUser?.uid;
      debugPrint('   Platform: ${Platform.isIOS ? "iOS" : "Android"}');
      debugPrint('   User ID: ${userId ?? "anonymous"}');
      
      // iOS: Firebase user ID'yi Apple'a gönder (restore'da eşleştirme için)
      // Android: Google Play'de applicationUsername desteklenmiyor
      debugPrint('   Creating PurchaseParam...');
      final PurchaseParam purchaseParam = PurchaseParam(
        productDetails: productDetails,
        applicationUserName: Platform.isIOS && userId != null ? userId : null,
      );
      debugPrint('   ✅ PurchaseParam created');
      
      debugPrint('🚀 Calling buyNonConsumable...');
      debugPrint('   Waiting for native purchase dialog...');
      
      // iOS ve Android için doğru satın alma yöntemini kullan
      // buyNonConsumable: iOS subscriptions ve Android non-consumables için
      final success = await _inAppPurchase.buyNonConsumable(purchaseParam: purchaseParam);
      debugPrint('   ✅ buyNonConsumable returned: $success');
      
      if (success) {
        debugPrint('✅ Purchase initiated successfully');
        debugPrint('   Purchase dialog should appear now');
        debugPrint('   Waiting for user to complete the purchase...');
      } else {
        debugPrint('❌ Purchase could not be initiated');
        debugPrint('   Possible reasons:');
        debugPrint('   1. Products not loaded properly');
        debugPrint('   2. Sandbox/test account not configured (iOS)');
        debugPrint('   3. App Store Connect/Play Console products not active');
        debugPrint('   4. StoreKit/Billing error');
        debugPrint('   5. Previous purchase still pending completion');
      }
      
      return success;
    } catch (e, stackTrace) {
      debugPrint('❌ Purchase error: $e');
      debugPrint('❌ Stack trace: $stackTrace');
      return false;
    }
  }

  // Buy product by ID (convenience method)
  Future<bool> buyProductById(String productId) async {
    debugPrint('🛒 Starting purchase for: $productId');
    
    try {
      // Ensure service is initialized (with timeout)
      if (!_isInitialized || !_isAvailable) {
        debugPrint('⚠️ Service not ready, initializing...');
        await initialize().timeout(
          const Duration(seconds: 15),
          onTimeout: () {
            debugPrint('⏰ Initialization timeout');
            throw 'Ürün yükleme zaman aşımına uğradı. Lütfen internet bağlantınızı kontrol edin.';
          },
        );
        if (!_isAvailable) {
          debugPrint('❌ Purchase service unavailable');
          throw 'Satın alma servisi kullanılamıyor. Lütfen daha sonra tekrar deneyin.';
        }
      }

      // Get the product
      final product = getProduct(productId);
      if (product == null) {
        debugPrint('❌ Product not found: $productId');
        debugPrint('Available products: ${_products.map((p) => p.id).toList()}');
        debugPrint('Total products loaded: ${_products.length}');
        
        // Ürünler yüklenmemişse, bir kez daha yüklemeyi dene
        if (_products.isEmpty) {
          debugPrint('⚠️ No products loaded, attempting reload...');
          await _loadProducts();
          final retryProduct = getProduct(productId);
          if (retryProduct == null) {
            throw 'Ürün bulunamadı. Lütfen internet bağlantınızı kontrol edip tekrar deneyin.';
          }
          // Retry successful, continue with retryProduct
          debugPrint('✅ Product found after retry: ${retryProduct.title} - ${retryProduct.price}');
          debugPrint('🚀 Initiating purchase...');
          return await buyProductDetails(retryProduct);
        }
        
        throw 'Ürün bulunamadı: $productId';
      }
      
      debugPrint('✅ Product found: ${product.title} - ${product.price}');
      debugPrint('🚀 Initiating purchase...');
      
      return await buyProductDetails(product);
      
    } catch (e) {
      debugPrint('❌ buyProductById error: $e');
      rethrow; // Re-throw to be caught by the calling function
    }
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
      final hasLocalPremium = _purchases.any((purchase) => 
        purchase.status == PurchaseStatus.purchased || 
        purchase.status == PurchaseStatus.restored
      );
      // Cache'i güncelle
      _cachedPremiumStatus = hasLocalPremium;
      _cachedUserId = null;
      return hasLocalPremium;
    }

    try {
      // If user is logged in, ONLY check Firestore for user's premium status
      // Do NOT check local purchases as they might be from a different Google Play account
      final userDoc = await _firestore.collection('users').doc(userId).get();
      if (userDoc.exists) {
        final data = userDoc.data();
        final isPremium = data?['isPremium'] as bool? ?? false;
        
        // Cache'i güncelle
        _cachedPremiumStatus = isPremium;
        _cachedUserId = userId;
        
        return isPremium;
      }

      // User document doesn't exist, user is not premium
      _cachedPremiumStatus = false;
      _cachedUserId = userId;
      return false;
    } catch (e) {
      debugPrint('Error checking premium access: $e');
      // If there's an error checking Firestore, return cached value or false
      if (_cachedUserId == userId && _cachedPremiumStatus != null) {
        return _cachedPremiumStatus!;
      }
      return false;
    }
  }
  
  // Synchronous version for backward compatibility
  // Note: This uses cached value from last async check. Call hasPremiumAccess() first to ensure cache is fresh.
  bool hasPremiumAccessSync() {
    final userId = _auth.currentUser?.uid;
    
    // Kullanıcı değişmişse cache geçersiz
    if (_cachedUserId != userId) {
      _cachedPremiumStatus = null;
    }
    
    // Cache varsa döndür
    if (_cachedPremiumStatus != null) {
      return _cachedPremiumStatus!;
    }
    
    // Cache yoksa, local purchases'i kontrol et (fallback)
    if (userId == null) {
      return _purchases.any((purchase) => 
        purchase.status == PurchaseStatus.purchased || 
        purchase.status == PurchaseStatus.restored
      );
    }
    
    // User logged in ama cache yok - false döndür, async check yapılması gerekiyor
    return false;
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
    _restoreRejectController.close();
    _purchaseSuccessController.close();
  }
}
