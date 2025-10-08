import 'dart:convert';
import 'dart:io';
import 'package:http/http.dart' as http;
import 'package:in_app_purchase/in_app_purchase.dart';
import 'package:shared_preferences/shared_preferences.dart';

/// Satın alma doğrulama servisi
/// Apple App Store ve Google Play Store'dan gelen satın almaları doğrular
class PurchaseVerificationService {
  static final PurchaseVerificationService _instance = PurchaseVerificationService._internal();
  factory PurchaseVerificationService() => _instance;
  PurchaseVerificationService._internal();

  // Apple App Store doğrulama URL'leri
  static const String _appleSandboxUrl = 'https://sandbox.itunes.apple.com/verifyReceipt';
  static const String _appleProductionUrl = 'https://buy.itunes.apple.com/verifyReceipt';
  
  // Google Play Store doğrulama URL'leri
  static const String _googlePlayUrl = 'https://androidpublisher.googleapis.com/androidpublisher/v3';
  
  // Firebase Functions URL (kendi sunucunuzda doğrulama için)
  static const String _firebaseFunctionsUrl = 'https://your-project.cloudfunctions.net/verifyPurchase';
  
  /// Satın alma doğrulaması yap
  Future<bool> verifyPurchase(PurchaseDetails purchaseDetails) async {
    try {
      
      if (Platform.isIOS) {
        return await _verifyApplePurchase(purchaseDetails);
      } else if (Platform.isAndroid) {
        return await _verifyGooglePurchase(purchaseDetails);
      }
      
      return false;
      
    } catch (e, stackTrace) {
      return false;
    }
  }
  
  /// Apple App Store satın alma doğrulaması
  Future<bool> _verifyApplePurchase(PurchaseDetails purchaseDetails) async {
    try {
      
      // Receipt data'yı al
      final String? receiptData = purchaseDetails.verificationData.serverVerificationData;
      if (receiptData == null || receiptData.isEmpty) {
        return false;
      }
      
      // Apple'a doğrulama isteği gönder
      final response = await http.post(
        Uri.parse(_appleProductionUrl),
        headers: {
          'Content-Type': 'application/json',
        },
        body: jsonEncode({
          'receipt-data': receiptData,
          'password': 'your-app-specific-shared-secret', // App Store Connect'ten alın
          'exclude-old-transactions': true,
        }),
      );
      
      if (response.statusCode == 200) {
        final data = jsonDecode(response.body);
        final status = data['status'];
        
        if (status == 0) {
          // Başarılı doğrulama
          await _saveVerifiedPurchase(purchaseDetails);
          return true;
        } else if (status == 21007) {
          // Sandbox receipt, sandbox URL'ini dene
          return await _verifyApplePurchaseSandbox(purchaseDetails);
        } else {
          return false;
        }
      } else {
        return false;
      }
      
    } catch (e, stackTrace) {
      return false;
    }
  }
  
  /// Apple App Store sandbox doğrulaması
  Future<bool> _verifyApplePurchaseSandbox(PurchaseDetails purchaseDetails) async {
    try {
      
      final String? receiptData = purchaseDetails.verificationData.serverVerificationData;
      if (receiptData == null || receiptData.isEmpty) {
        return false;
      }
      
      final response = await http.post(
        Uri.parse(_appleSandboxUrl),
        headers: {
          'Content-Type': 'application/json',
        },
        body: jsonEncode({
          'receipt-data': receiptData,
          'password': 'your-app-specific-shared-secret',
          'exclude-old-transactions': true,
        }),
      );
      
      if (response.statusCode == 200) {
        final data = jsonDecode(response.body);
        final status = data['status'];
        
        if (status == 0) {
          await _saveVerifiedPurchase(purchaseDetails);
          return true;
        } else {
          return false;
        }
      } else {
        return false;
      }
      
    } catch (e, stackTrace) {
      return false;
    }
  }
  
  /// Google Play Store satın alma doğrulaması
  Future<bool> _verifyGooglePurchase(PurchaseDetails purchaseDetails) async {
    try {
      
      // Google Play Billing API v2 için doğrulama
      final String? purchaseToken = purchaseDetails.verificationData.serverVerificationData;
      if (purchaseToken == null || purchaseToken.isEmpty) {
        return false;
      }
      
      // Google Play Console'da oluşturulan service account key'i kullan
      // Bu kısım Firebase Functions veya kendi sunucunuzda yapılmalı
      return await _verifyGooglePurchaseWithServer(purchaseDetails);
      
    } catch (e, stackTrace) {
      return false;
    }
  }
  
  /// Google Play Store doğrulaması (sunucu ile)
  Future<bool> _verifyGooglePurchaseWithServer(PurchaseDetails purchaseDetails) async {
    try {
      
      final response = await http.post(
        Uri.parse('$_firebaseFunctionsUrl/verifyGooglePurchase'),
        headers: {
          'Content-Type': 'application/json',
        },
        body: jsonEncode({
          'packageName': 'com.yourcompany.anestezi', // Android package name
          'productId': purchaseDetails.productID,
          'purchaseToken': purchaseDetails.verificationData.serverVerificationData,
        }),
      );
      
      if (response.statusCode == 200) {
        final data = jsonDecode(response.body);
        final isValid = data['valid'] ?? false;
        
        if (isValid) {
          await _saveVerifiedPurchase(purchaseDetails);
          return true;
        } else {
          return false;
        }
      } else {
        return false;
      }
      
    } catch (e, stackTrace) {
      return false;
    }
  }
  
  /// Doğrulanmış satın almayı kaydet
  Future<void> _saveVerifiedPurchase(PurchaseDetails purchaseDetails) async {
    try {
      final prefs = await SharedPreferences.getInstance();
      
      // Doğrulanmış satın alma bilgilerini kaydet
      await prefs.setString('verified_purchase_${purchaseDetails.productID}', purchaseDetails.purchaseID ?? '');
      await prefs.setString('verified_purchase_${purchaseDetails.productID}_date', DateTime.now().toIso8601String());
      await prefs.setBool('verified_purchase_${purchaseDetails.productID}_verified', true);
      
      
    } catch (e, stackTrace) {
    }
  }
  
  /// Satın almanın daha önce doğrulanıp doğrulanmadığını kontrol et
  Future<bool> isPurchaseVerified(String productId) async {
    try {
      final prefs = await SharedPreferences.getInstance();
      return prefs.getBool('verified_purchase_${productId}_verified') ?? false;
      
    } catch (e, stackTrace) {
      return false;
    }
  }
  
  /// Tüm doğrulanmış satın almaları temizle
  Future<void> clearVerifiedPurchases() async {
    try {
      final prefs = await SharedPreferences.getInstance();
      final keys = prefs.getKeys();
      
      for (final key in keys) {
        if (key.startsWith('verified_purchase_')) {
          await prefs.remove(key);
        }
      }
      
      
    } catch (e, stackTrace) {
    }
  }
  
  /// Satın alma güvenlik kontrolü
  Future<bool> performSecurityCheck(PurchaseDetails purchaseDetails) async {
    try {
      
      // 1. Satın alma ID'si kontrolü
      if (purchaseDetails.purchaseID == null || purchaseDetails.purchaseID!.isEmpty) {
        return false;
      }
      
      // 2. Ürün ID'si kontrolü
      if (purchaseDetails.productID.isEmpty) {
        return false;
      }
      
      // 3. Satın alma tarihi kontrolü
      if (purchaseDetails.transactionDate == null) {
        return false;
      }
      
      // 4. Çok eski satın alma kontrolü (30 günden eski)
      final now = DateTime.now();
      final purchaseDate = DateTime.fromMillisecondsSinceEpoch(
        int.parse(purchaseDetails.transactionDate!),
      );
      final daysDifference = now.difference(purchaseDate).inDays;
      
      if (daysDifference > 30) {
        return false;
      }
      
      // 5. Daha önce doğrulanmış mı kontrol et
      final alreadyVerified = await isPurchaseVerified(purchaseDetails.productID);
      if (alreadyVerified) {
        return true;
      }
      
      // 6. Sunucu doğrulaması yap
      final isVerified = await verifyPurchase(purchaseDetails);
      
      return isVerified;
      
    } catch (e, stackTrace) {
      return false;
    }
  }
  
  /// Sahte satın alma tespiti
  Future<bool> detectFraudulentPurchase(PurchaseDetails purchaseDetails) async {
    try {
      
      // 1. Çok hızlı ardışık satın almalar
      final prefs = await SharedPreferences.getInstance();
      final lastPurchaseTime = prefs.getInt('last_purchase_time');
      final now = DateTime.now().millisecondsSinceEpoch;
      
      if (lastPurchaseTime != null) {
        final timeDifference = now - lastPurchaseTime;
        if (timeDifference < 5000) { // 5 saniyeden az
          return true;
        }
      }
      
      // 2. Aynı ürün için çok fazla satın alma
      final purchaseCount = prefs.getInt('purchase_count_${purchaseDetails.productID}') ?? 0;
      if (purchaseCount > 10) { // 10'dan fazla
        return true;
      }
      
      // 3. Geçersiz satın alma durumu
      if (purchaseDetails.status != PurchaseStatus.purchased) {
        return true;
      }
      
      // Satın alma sayacını güncelle
      await prefs.setInt('purchase_count_${purchaseDetails.productID}', purchaseCount + 1);
      await prefs.setInt('last_purchase_time', now);
      
      return false;
      
    } catch (e, stackTrace) {
      return true; // Hata durumunda güvenli tarafta kal
    }
  }
}
