import 'dart:async';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/foundation.dart';
import '../utils/event_bus.dart';
import 'device_service.dart' as device_service;
import 'notification_service.dart';
import 'in_app_purchase_service.dart';

class AuthService {
  final FirebaseAuth _auth = FirebaseAuth.instance;
  final FirebaseFirestore _firestore = FirebaseFirestore.instance;
  final device_service.DeviceService _deviceService = device_service.DeviceService();

  // Mevcut kullanıcı
  User? get currentUser => _auth.currentUser;

  // Auth durumu değişikliklerini izleme
  Stream<User?> get authStateChanges => _auth.authStateChanges();

  // Kullanıcının giriş yapmış olup olmadığını kontrol et
  bool get isUserLoggedIn => _auth.currentUser != null;

  // Email/Şifre ile kayıt
  Future<User?> registerWithEmailAndPassword(
    String email,
    String password, {
    String? displayName,
    String? title,
  }) async {
    User? createdUser;
    bool isFirestoreSuccess = false;
    
    try {
      // Input validation
      if (email.isEmpty || password.isEmpty) {
        throw '❌ E-posta ve şifre boş olamaz.';
      }
      
      debugPrint('🔐 Kayıt işlemi başlıyor: $email');
      
      // Firebase Auth ile kullanıcı oluştur
      final userCredential = await _auth.createUserWithEmailAndPassword(
        email: email.trim(),
        password: password,
      ).timeout(
        const Duration(seconds: 20), // Daha kısa timeout
        onTimeout: () {
          throw '❌ İşlem zaman aşımına uğradı.\n\n💡 İnternet bağlantınızı kontrol edin ve tekrar deneyin.';
        },
      );

      createdUser = userCredential.user;
      
      if (createdUser == null) {
        throw '❌ Kullanıcı oluşturulamadı.\n\n💡 Lütfen tekrar deneyin.';
      }

      debugPrint('✅ Firebase Auth kullanıcısı oluşturuldu: ${createdUser.uid}');

      // Display name güncelle - kritik değil
      if (displayName != null && displayName.trim().isNotEmpty) {
        try {
          await createdUser.updateDisplayName(displayName.trim()).timeout(
            const Duration(seconds: 5),
            onTimeout: () {
              debugPrint('⏰ Display name güncelleme timeout');
            },
          );
          debugPrint('✅ Display name güncellendi');
        } catch (e) {
          debugPrint('⚠️ Display name güncelleme hatası: $e');
        }
      }

      // Firestore'a kullanıcı bilgilerini kaydet - KRİTİK
      try {
        await _createUserDocument(
          createdUser,
          displayName,
          title,
          email,
        );
        isFirestoreSuccess = true;
        debugPrint('✅ Firestore dokümanı oluşturuldu');
      } catch (e) {
        debugPrint('❌ Firestore dokümanı oluşturulamadı: $e');
        // Firestore başarısız olduysa kullanıcıyı geri al
        throw '❌ Hesap oluşturma tamamlanamadı.\n\n💡 Lütfen tekrar deneyin.';
      }
      
      // Cihaz kaydı ve Tutorial'ı ARKA PLANA taşıdım
      // Bu işlemler kritik değil ve kayıt sonrası yapılabilir
      // NOT: Bunları da arka planda yapma, ilk home screen açıldığında yapılacak
      
      debugPrint('✅ Kayıt işlemi başarıyla tamamlandı');
      
      // KAYIT SONRASI: Cihaz kaydını YAP - bu önemli!
      // Cihaz kaydı yapılmazsa DeviceRemovalListener sorun çıkarır
      try {
        await _deviceService.registerOrUpdateDevice().timeout(
          const Duration(seconds: 10),
          onTimeout: () => debugPrint('⏰ Cihaz kaydı timeout (devam ediliyor)'),
        );
        debugPrint('✅ Cihaz kaydı tamamlandı (kayıt sonrası)');
      } catch (e) {
        debugPrint('⚠️ Cihaz kaydı hatası (devam ediliyor): $e');
        // Hata olsa bile kayıt tamamlandı, giriş yapabilir
      }
      
      return createdUser;
      
    } on FirebaseAuthException catch (e) {
      debugPrint('❌ FirebaseAuth hatası: ${e.code} - ${e.message}');
      
      // Kullanıcı oluşturulduysa geri al
      if (createdUser != null) {
        try {
          await createdUser.delete().timeout(const Duration(seconds: 5));
          debugPrint('🔄 Kullanıcı silindi (rollback)');
        } catch (deleteError) {
          debugPrint('⚠️ Kullanıcı silme hatası: $deleteError');
        }
      }
      
      throw _handleAuthException(e);
      
    } catch (e) {
      debugPrint('❌ Genel kayıt hatası: $e');
      
      // Kullanıcı oluşturulduysa ama Firestore başarısız olduysa geri al
      if (createdUser != null && !isFirestoreSuccess) {
        try {
          await createdUser.delete().timeout(const Duration(seconds: 5));
          debugPrint('🔄 Kullanıcı silindi (Firestore hatası)');
        } catch (deleteError) {
          debugPrint('⚠️ Kullanıcı silme hatası: $deleteError');
        }
      }
      
      // Hata mesajını kontrol et
      final errorString = e.toString().toLowerCase();
      
      // Ağ bağlantısı kontrolü
      if (errorString.contains('network') || 
          errorString.contains('connection') ||
          errorString.contains('timeout') ||
          errorString.contains('socket')) {
        throw '❌ İnternet Bağlantısı Sorunu\n\n💡 İnternet bağlantınızı kontrol edin ve tekrar deneyin.';
      }
      
      // String hatası ise direkt fırlat
      if (e is String) {
        throw e;
      }
      
      // Genel hata mesajı
      throw '❌ Kayıt İşlemi Başarısız\n\n💡 Beklenmeyen bir hata oluştu. Lütfen:\n• Bilgilerinizi kontrol edin\n• İnternet bağlantınızı kontrol edin\n• Birkaç saniye bekleyip tekrar deneyin\n\nSorun devam ederse destek ekibi ile iletişime geçin.';
    }
  }

  // Email/Şifre ile giriş
  Future<User?> signInWithEmailAndPassword(
    String email,
    String password,
  ) async {
    try {
      final userCredential = await _auth.signInWithEmailAndPassword(
        email: email,
        password: password,
      );
      
      // Giriş başarılı - basit kontrol
      if (userCredential.user != null) {
        // Sadece users dokümanını kontrol et
        await _ensureUserDocument(userCredential.user!);
        
        // Cihaz kaydı - kritik değil
        try {
          await _deviceService.registerOrUpdateDevice();
        } catch (e) {
          if (e is device_service.DeviceLimitExceededException) {
            await _auth.signOut();
            throw '❌ Cihaz Limiti Aşıldı\n\n💡 Bu hesaba en fazla 2 cihazdan giriş yapabilirsiniz.';
          }
          debugPrint('⚠️ Cihaz kaydı hatası (devam ediliyor): $e');
        }
        
        // Premium yükle - iOS'ta ÖNEMLİ (subscription restore için)
        try {
          debugPrint('📦 Restoring purchases for iOS...');
          final inAppPurchaseService = await _getInAppPurchaseService();
          await inAppPurchaseService.restorePurchases();
          
          // Premium durumunu kontrol et ve cache'i güncelle
          final hasPremium = await inAppPurchaseService.hasPremiumAccess();
          debugPrint('✅ Premium status after restore: $hasPremium');
        } catch (e) {
          debugPrint('⚠️ Premium yükleme hatası (devam ediliyor): $e');
        }
        
        // Bildirim aboneliklerini ayarla - kritik değil
        try {
          final notificationService = NotificationService();
          await notificationService.updateSubscriptionsByLanguage();
        } catch (e) {
          debugPrint('⚠️ Bildirim abonelik hatası (devam ediliyor): $e');
        }
      }

      return userCredential.user;
    } on FirebaseAuthException catch (e) {
      throw _handleAuthException(e);
    } catch (e) {
      debugPrint('Giriş hatası: $e');
      
      final errorString = e.toString().toLowerCase();
      if (errorString.contains('network') || 
          errorString.contains('connection') ||
          errorString.contains('timeout')) {
        throw '❌ İnternet Bağlantısı Sorunu\n\n💡 İnternet bağlantınızı kontrol edin.';
      }
      
      if (errorString.contains('cihaz limiti')) {
        rethrow;
      }
      
      throw '❌ Giriş İşlemi Başarısız\n\n💡 Lütfen tekrar deneyin.';
    }
  }

  // Misafir girişi (Anonymous Authentication)
  Future<User?> signInAnonymously() async {
    try {
      debugPrint('👤 Misafir girişi başlıyor...');
      
      final userCredential = await _auth.signInAnonymously().timeout(
        const Duration(seconds: 20),
        onTimeout: () {
          throw '❌ İşlem zaman aşımına uğradı.\n\n💡 İnternet bağlantınızı kontrol edin ve tekrar deneyin.';
        },
      );

      if (userCredential.user == null) {
        throw '❌ Misafir girişi başarısız.\n\n💡 Lütfen tekrar deneyin.';
      }

      final user = userCredential.user!;
      debugPrint('✅ Misafir kullanıcı oluşturuldu: ${user.uid}');

      // Misafir kullanıcı için Firestore dokümanı oluştur
      try {
        await _createGuestUserDocument(user);
        debugPrint('✅ Misafir kullanıcı dokümanı oluşturuldu');
      } catch (e) {
        debugPrint('❌ Misafir kullanıcı dokümanı oluşturulamadı: $e');
        // Doküman oluşturulamazsa bile giriş yapabilir, sadece logla
      }

      // Cihaz kaydı - kritik değil
      try {
        await _deviceService.registerOrUpdateDevice();
      } catch (e) {
        debugPrint('⚠️ Cihaz kaydı hatası (devam ediliyor): $e');
      }

      // Premium yükle - iOS'ta ÖNEMLİ (subscription restore için)
      try {
        debugPrint('📦 Restoring purchases for guest user...');
        final inAppPurchaseService = await _getInAppPurchaseService();
        await inAppPurchaseService.restorePurchases();
        
        // Premium durumunu kontrol et ve cache'i güncelle
        final hasPremium = await inAppPurchaseService.hasPremiumAccess();
        debugPrint('✅ Premium status after restore: $hasPremium');
      } catch (e) {
        debugPrint('⚠️ Premium yükleme hatası (devam ediliyor): $e');
      }

      // Bildirim aboneliklerini ayarla - kritik değil
      try {
        final notificationService = NotificationService();
        await notificationService.updateSubscriptionsByLanguage();
      } catch (e) {
        debugPrint('⚠️ Bildirim abonelik hatası (devam ediliyor): $e');
      }

      return user;
    } on FirebaseAuthException catch (e) {
      debugPrint('❌ FirebaseAuth hatası: ${e.code} - ${e.message}');
      throw _handleAuthException(e);
    } catch (e) {
      debugPrint('❌ Misafir girişi hatası: $e');
      
      final errorString = e.toString().toLowerCase();
      if (errorString.contains('network') || 
          errorString.contains('connection') ||
          errorString.contains('timeout')) {
        throw '❌ İnternet Bağlantısı Sorunu\n\n💡 İnternet bağlantınızı kontrol edin ve tekrar deneyin.';
      }
      
      if (e is String) {
        throw e;
      }
      
      throw '❌ Misafir Girişi Başarısız\n\n💡 Lütfen tekrar deneyin.';
    }
  }

  // Kullanıcı dokümanı oluştur
  Future<void> _createUserDocument(
    User user,
    String? displayName,
    String? title,
    String email,
  ) async {
    // Null check
    if (user.uid.isEmpty) {
      throw 'Kullanıcı UID boş';
    }
    
    debugPrint('📝 Firestore dokümanı oluşturuluyor...');
    
    // Kullanıcı dokümanını oluştur - timeout'u artır ve retry mekanizması ekle
    try {
      await _firestore.collection('users').doc(user.uid).set({
        'email': email.trim(),
        'displayName': (displayName?.trim() ?? 'Kullanıcı').isEmpty 
            ? 'Kullanıcı' 
            : displayName!.trim(),
        'title': (title?.trim() ?? 'Anestezi Uzmanı').isEmpty 
            ? 'Anestezi Uzmanı' 
            : title!.trim(),
        'isAdmin': false,
        'createdAt': FieldValue.serverTimestamp(),
        'isProfileComplete': false,
        'lastLoginAt': FieldValue.serverTimestamp(),
        'isPremium': false,
        'premiumUpdatedAt': FieldValue.serverTimestamp(),
      }, SetOptions(merge: true)).timeout(
        const Duration(seconds: 30), // Timeout'u 30 saniyeye çıkar
        onTimeout: () {
          debugPrint('⚠️ Firestore users timeout, retrying...');
          throw 'Firestore timeout';
        },
      );
      debugPrint('✅ Users dokümanı oluşturuldu');
    } catch (e) {
      debugPrint('❌ Users dokümanı oluşturma hatası: $e');
      // Retry mekanizması - bir kez daha dene
      try {
        await Future.delayed(const Duration(milliseconds: 500));
        await _firestore.collection('users').doc(user.uid).set({
          'email': email.trim(),
          'displayName': (displayName?.trim() ?? 'Kullanıcı').isEmpty 
              ? 'Kullanıcı' 
              : displayName!.trim(),
          'title': (title?.trim() ?? 'Anestezi Uzmanı').isEmpty 
              ? 'Anestezi Uzmanı' 
              : title!.trim(),
          'isAdmin': false,
          'createdAt': FieldValue.serverTimestamp(),
          'isProfileComplete': false,
          'lastLoginAt': FieldValue.serverTimestamp(),
          'isPremium': false,
          'premiumUpdatedAt': FieldValue.serverTimestamp(),
        }, SetOptions(merge: true)).timeout(
          const Duration(seconds: 30),
        );
        debugPrint('✅ Users dokümanı retry ile oluşturuldu');
      } catch (e2) {
        debugPrint('❌ Users dokümanı retry hatası: $e2');
        throw '❌ Hesap oluşturma tamamlanamadı.\n\n💡 İnternet bağlantınızı kontrol edin ve tekrar deneyin.';
      }
    }

    debugPrint('✅ Users dokümanı oluşturuldu - kayıt tamamlandı!');
    
    // userActivities'i KAYIT SIRASINDA OLUŞTURMA!
    // İlk giriş yapıldığında _ensureUserActivityDocument() ile oluşturulacak
  }

  // Misafir kullanıcı dokümanı oluştur
  Future<void> _createGuestUserDocument(User user) async {
    if (user.uid.isEmpty) {
      throw 'Kullanıcı UID boş';
    }
    
    debugPrint('📝 Misafir kullanıcı dokümanı oluşturuluyor...');
    
    try {
      // Önce dokümanın var olup olmadığını kontrol et
      final userDoc = await _firestore.collection('users').doc(user.uid).get();
      
      if (!userDoc.exists) {
        // Yeni misafir kullanıcı - doküman oluştur
        await _firestore.collection('users').doc(user.uid).set({
          'email': null, // Misafir kullanıcının email'i yok
          'displayName': 'Misafir Kullanıcı',
          'title': 'Misafir',
          'isAdmin': false,
          'isGuest': true, // Misafir kullanıcı işareti
          'createdAt': FieldValue.serverTimestamp(),
          'isProfileComplete': false,
          'lastLoginAt': FieldValue.serverTimestamp(),
          'isPremium': false,
          'premiumUpdatedAt': FieldValue.serverTimestamp(),
        }, SetOptions(merge: true)).timeout(
          const Duration(seconds: 30),
          onTimeout: () {
            debugPrint('⚠️ Firestore misafir kullanıcı timeout, retrying...');
            throw 'Firestore timeout';
          },
        );
        debugPrint('✅ Misafir kullanıcı dokümanı oluşturuldu');
      } else {
        // Mevcut misafir kullanıcı - sadece lastLoginAt güncelle
        await _firestore.collection('users').doc(user.uid).update({
          'lastLoginAt': FieldValue.serverTimestamp(),
        });
        debugPrint('✅ Misafir kullanıcı dokümanı güncellendi');
      }
    } catch (e) {
      debugPrint('❌ Misafir kullanıcı dokümanı oluşturma hatası: $e');
      // Retry mekanizması
      try {
        await Future.delayed(const Duration(milliseconds: 500));
        final userDoc = await _firestore.collection('users').doc(user.uid).get();
        if (!userDoc.exists) {
          await _firestore.collection('users').doc(user.uid).set({
            'email': null,
            'displayName': 'Misafir Kullanıcı',
            'title': 'Misafir',
            'isAdmin': false,
            'isGuest': true,
            'createdAt': FieldValue.serverTimestamp(),
            'isProfileComplete': false,
            'lastLoginAt': FieldValue.serverTimestamp(),
            'isPremium': false,
            'premiumUpdatedAt': FieldValue.serverTimestamp(),
          }, SetOptions(merge: true)).timeout(
            const Duration(seconds: 30),
          );
          debugPrint('✅ Misafir kullanıcı dokümanı retry ile oluşturuldu');
        }
      } catch (e2) {
        debugPrint('❌ Misafir kullanıcı dokümanı retry hatası: $e2');
        // Hata olsa bile devam et, kritik değil
      }
    }
  }

  // Kullanıcı dokümanının varlığını kontrol et ve gerekirse oluştur
  Future<void> _ensureUserDocument(User user) async {
    try {
      final userDoc = await _firestore.collection('users').doc(user.uid).get();

      if (!userDoc.exists) {
        await _createUserDocument(
          user,
          user.displayName,
          null,
          user.email ?? '',
        );
      } else {
        // Son giriş zamanını güncelle
        await _firestore.collection('users').doc(user.uid).update({
          'lastLoginAt': FieldValue.serverTimestamp(),
        });
      }
      
      // userActivities'i BURADA OLUŞTURMA!
      // İlk quiz çözülürken veya profile gidildiğinde oluşturulacak
    } catch (e) {
      debugPrint('⚠️ _ensureUserDocument hatası: $e');
    }
  }

  // Kullanıcının admin olup olmadığını kontrol eder
  Future<bool> isUserAdmin() async {
    if (currentUser == null) return false;

    try {
      final doc =
          await _firestore.collection('users').doc(currentUser!.uid).get();
      if (doc.exists && doc.data()!.containsKey('isAdmin')) {
        return doc.data()!['isAdmin'] as bool;
      }
      return false;
    } catch (e) {
      return false;
    }
  }

  // Güvenli çıkış yapma
  Future<void> signOut() async {
    try {
      // 1. Önce EventBus'ı temizle (tüm stream'leri iptal eder)
      EventBus.safeDispose();

      // 2. Bildirimleri iptal et
      try {
        final notificationService = NotificationService();
        await notificationService.cancelAllNotifications();
      } catch (e) {
      }

      // 3. Cihaz kaldırma listener'ını durdur
      try {
        _deviceService.stopDeviceRemovalListener();
      } catch (e) {
        // Listener durdurma hatası olsa bile devam et
      }

      // 3.5. Cihaz kaydını SİLME - Aynı cihaz farklı hesaplarda tutulabilmeli
      // Çıkış yapıldığında cihaz kaydı silinmemeli, sadece auth state temizlenmeli
      // Böylece aynı FCM token farklı hesaplarda kullanılabilir

      // 3.5. Premium bilgilerini temizle (cihaz bazlı)
      try {
        final inAppPurchaseService = await _getInAppPurchaseService();
        await inAppPurchaseService.clearPurchases();
      } catch (e) {
        // Premium temizleme hatası olsa bile devam et
      }

      // 4. Firebase Auth'dan çıkış yap (en önemli işlem)
      await _auth.signOut();

      // 5. Auth state'in tamamen temizlendiğinden emin ol
      // Gerçek cihazlarda daha uzun süre bekle
      int attempts = 0;
      const maxAttempts = 30; // Gerçek cihazlar için daha fazla deneme
      while (attempts < maxAttempts && _auth.currentUser != null) {
        await Future.delayed(const Duration(milliseconds: 100));
        attempts++;
      }

      // 6. Firestore persistence'ı temizle - çıkış sonrası otomatik girişi engellemek için
      // clearPersistence aktif listener'lar varken başarısız olabilir
      // Bu yüzden sadece belirli durumlarda deniyoruz
      try {
        // Tüm listener'ların kapanması için daha uzun bekle
        await Future.delayed(const Duration(milliseconds: 500));
        
        // clearPersistence sadece debug modda ve aktif listener yoksa çağır
        // Release modda veya listener'lar varsa atla
        if (kDebugMode) {
          try {
            // Önce listener'ların kapanmasını bekle
            await Future.delayed(const Duration(milliseconds: 200));
            await _firestore.clearPersistence();
          } on FirebaseException catch (e) {
            // Firebase hatalarını sessizce handle et
            // failed-precondition hatası normal - aktif listener'lar varken oluşur
            if (e.code != 'failed-precondition') {
              debugPrint('Firestore persistence temizleme hatası: ${e.code}');
            }
          } catch (e) {
            // Diğer hataları logla ama devam et
            debugPrint('Firestore persistence temizleme hatası: $e');
          }
        }
        // Release modda clearPersistence'ı atla - gerçek cihazlarda sorun yaratabilir
      } catch (e) {
        // Firestore temizleme hatası olsa bile devam et
        // clearPersistence bazen hata verebilir (örneğin aktif listener'lar varsa)
        // Bu normal bir durum, hata mesajını gösterme
      }

      // 7. Ek bir bekleme - auth state'in tamamen temizlendiğinden emin ol
      // Gerçek cihazlarda daha uzun süre bekle
      await Future.delayed(const Duration(milliseconds: 500));

    } catch (e) {
      
      // Ağ bağlantısı kontrolü
      if (e.toString().toLowerCase().contains('network') || 
          e.toString().toLowerCase().contains('connection') ||
          e.toString().toLowerCase().contains('timeout')) {
        // Ağ hatası olsa bile çıkış işlemini tamamla
        try {
          await _auth.signOut();
        } catch (e2) {
        }
        return; // Hata fırlatma, sadece logla
      }
      
      // Diğer hatalar için de çıkış işlemini tamamlamaya çalış
      try {
        await _auth.signOut();
      } catch (e2) {
      }
      
      // Hata fırlatma, sadece logla
    }
  }

  // InAppPurchaseService'i lazy load et
  Future<InAppPurchaseService> _getInAppPurchaseService() async {
    return InAppPurchaseService();
  }

  // Şifre sıfırlama
  Future<void> resetPassword(String email) async {
    try {
      await _auth.sendPasswordResetEmail(email: email);
    } on FirebaseAuthException catch (e) {
      throw _handleAuthException(e);
    }
  }

  // Misafir kullanıcının hesabını email/password ile bağla (link account)
  Future<User?> linkGuestAccountWithEmailPassword(
    String email,
    String password, {
    String? displayName,
    String? title,
  }) async {
    final currentUser = _auth.currentUser;
    
    if (currentUser == null) {
      throw '❌ Kullanıcı giriş yapmamış.\n\n💡 Lütfen önce misafir girişi yapın.';
    }

    // Misafir kullanıcı kontrolü
    if (!currentUser.isAnonymous) {
      throw '❌ Bu hesap zaten kayıtlı.\n\n💡 Bu işlem sadece misafir hesapları için geçerlidir.';
    }

    try {
      debugPrint('🔗 Misafir hesabı bağlanıyor: $email');
      
      // Email/password credential oluştur
      final credential = EmailAuthProvider.credential(
        email: email.trim(),
        password: password,
      );

      // Misafir hesabını email/password ile bağla
      final userCredential = await currentUser.linkWithCredential(credential).timeout(
        const Duration(seconds: 20),
        onTimeout: () {
          throw '❌ İşlem zaman aşımına uğradı.\n\n💡 İnternet bağlantınızı kontrol edin ve tekrar deneyin.';
        },
      );

      final linkedUser = userCredential.user;
      if (linkedUser == null) {
        throw '❌ Hesap bağlama başarısız.\n\n💡 Lütfen tekrar deneyin.';
      }

      debugPrint('✅ Misafir hesabı başarıyla bağlandı: ${linkedUser.uid}');

      // Display name güncelle
      if (displayName != null && displayName.trim().isNotEmpty) {
        try {
          await linkedUser.updateDisplayName(displayName.trim()).timeout(
            const Duration(seconds: 5),
            onTimeout: () {
              debugPrint('⏰ Display name güncelleme timeout');
            },
          );
          debugPrint('✅ Display name güncellendi');
        } catch (e) {
          debugPrint('⚠️ Display name güncelleme hatası: $e');
        }
      }

      // Firestore'da misafir işaretini kaldır ve email ekle
      try {
        await _firestore.collection('users').doc(linkedUser.uid).update({
          'email': email.trim(),
          'displayName': (displayName?.trim() ?? 'Kullanıcı').isEmpty 
              ? 'Kullanıcı' 
              : displayName!.trim(),
          'title': (title?.trim() ?? 'Anestezi Uzmanı').isEmpty 
              ? 'Anestezi Uzmanı' 
              : title!.trim(),
          'isGuest': false, // Misafir işaretini kaldır
          'lastLoginAt': FieldValue.serverTimestamp(),
        });
        debugPrint('✅ Firestore dokümanı güncellendi (misafir → normal)');
      } catch (e) {
        debugPrint('⚠️ Firestore güncelleme hatası: $e');
        // Hata olsa bile devam et, kritik değil
      }

      // Cihaz kaydı
      try {
        await _deviceService.registerOrUpdateDevice();
      } catch (e) {
        debugPrint('⚠️ Cihaz kaydı hatası (devam ediliyor): $e');
      }

      return linkedUser;
    } on FirebaseAuthException catch (e) {
      debugPrint('❌ FirebaseAuth hatası: ${e.code} - ${e.message}');
      
      // Email zaten kullanılıyorsa özel mesaj
      if (e.code == 'email-already-in-use') {
        throw '❌ Bu e-posta adresi zaten başka bir hesap tarafından kullanılıyor.\n\n💡 Farklı bir e-posta adresi deneyin veya mevcut hesabınızla giriş yapın.';
      }
      
      throw _handleAuthException(e);
    } catch (e) {
      debugPrint('❌ Hesap bağlama hatası: $e');
      
      final errorString = e.toString().toLowerCase();
      if (errorString.contains('network') || 
          errorString.contains('connection') ||
          errorString.contains('timeout')) {
        throw '❌ İnternet Bağlantısı Sorunu\n\n💡 İnternet bağlantınızı kontrol edin ve tekrar deneyin.';
      }
      
      if (e is String) {
        throw e;
      }
      
      throw '❌ Hesap Bağlama Başarısız\n\n💡 Lütfen tekrar deneyin.';
    }
  }

  // Kullanıcının misafir olup olmadığını kontrol et
  bool get isGuestUser {
    final user = currentUser;
    if (user == null) return false;
    return user.isAnonymous;
  }

  // Firebase Auth hatalarını Türkçe'ye çevirme
  String _handleAuthException(FirebaseAuthException e) {
    switch (e.code) {
      // Email ile ilgili hatalar
      case 'user-not-found':
        return '❌ Bu e-posta adresi ile kayıtlı bir hesap bulunamadı.\n\n💡 Lütfen e-posta adresinizi kontrol edin veya yeni bir hesap oluşturun.';
      case 'invalid-email':
        return '❌ Geçersiz e-posta adresi formatı.\n\n💡 Lütfen geçerli bir e-posta adresi girin (örnek: kullanici@email.com)';
      case 'email-already-in-use':
        return '❌ Bu e-posta adresi zaten başka bir hesap tarafından kullanılıyor.\n\n💡 Farklı bir e-posta adresi deneyin veya mevcut hesabınızla giriş yapın.';

      // Şifre ile ilgili hatalar
      case 'wrong-password':
        return '❌ Girdiğiniz şifre hatalı.\n\n💡 Şifrenizi kontrol edin. Eğer şifrenizi unuttuysanız "Şifremi Unuttum" seçeneğini kullanabilirsiniz.';
      case 'weak-password':
        return '❌ Şifreniz çok zayıf.\n\n💡 Şifreniz en az 6 karakter olmalı ve güçlü olmalıdır. Büyük-küçük harf, rakam ve özel karakter kullanın.';
      case 'requires-recent-login':
        return '❌ Bu işlem için yakın zamanda giriş yapmanız gerekiyor.\n\n💡 Lütfen çıkış yapıp tekrar giriş yapın.';

      // Hesap durumu ile ilgili hatalar
      case 'user-disabled':
        return '❌ Bu hesap devre dışı bırakılmış.\n\n💡 Destek ekibi ile iletişime geçin.';
      case 'account-exists-with-different-credential':
        return '❌ Bu e-posta adresi farklı bir giriş yöntemi ile kayıtlı.\n\n💡 Farklı bir giriş yöntemi deneyin.';

      // Ağ ve sistem hataları
      case 'network-request-failed':
        return '❌ İnternet bağlantısı sorunu.\n\n💡 İnternet bağlantınızı kontrol edin ve tekrar deneyin.';
      case 'too-many-requests':
        return '❌ Çok fazla deneme yapıldı.\n\n💡 Bir süre bekleyin ve tekrar deneyin.';
      case 'operation-not-allowed':
        return '❌ Bu giriş yöntemi şu anda kullanılamıyor.\n\n💡 Destek ekibi ile iletişime geçin.';

      // Genel güvenlik hataları
      case 'permission-denied':
        return '❌ Bu işlem için yetkiniz bulunmuyor.\n\n💡 Lütfen yetkinizi kontrol edin veya destek ekibi ile iletişime geçin.';
      case 'invalid-credential':
        return '❌ Geçersiz giriş bilgileri.\n\n💡 E-posta ve şifrenizi kontrol edip tekrar deneyin.';
      case 'credential-already-in-use':
        return '❌ Bu giriş bilgileri zaten başka bir hesap tarafından kullanılıyor.\n\n💡 Farklı giriş bilgileri deneyin.';

      // Telefon doğrulama hataları
      case 'invalid-phone-number':
        return '❌ Geçersiz telefon numarası.\n\n💡 Telefon numaranızı ülke kodu ile birlikte girin (örnek: +90 555 123 4567)';
      case 'missing-phone-number':
        return '❌ Telefon numarası eksik.\n\n💡 Lütfen telefon numaranızı girin.';

      // Kod doğrulama hataları
      case 'invalid-verification-code':
        return '❌ Doğrulama kodu geçersiz.\n\n💡 Doğrulama kodunu kontrol edin veya yeni kod isteyin.';
      case 'invalid-verification-id':
        return '❌ Doğrulama kimliği geçersiz.\n\n💡 Doğrulama işlemini yeniden başlatın.';

      // Zaman aşımı hataları
      case 'timeout':
        return '❌ İşlem zaman aşımına uğradı.\n\n💡 İnternet bağlantınızı kontrol edin ve tekrar deneyin.';

      // Firebase yapılandırma hataları
      case 'app-not-authorized':
        return '❌ Uygulama yetkilendirilmemiş.\n\n💡 Uygulama güncellemesi gerekebilir.';
      case 'keychain-error':
        return '❌ Anahtar zinciri hatası.\n\n💡 Cihazınızı yeniden başlatın ve tekrar deneyin.';

      // Özel durumlar
      case 'missing-email':
        return '❌ E-posta adresi eksik.\n\n💡 Lütfen e-posta adresinizi girin.';
      case 'internal-error':
        return '❌ Sistem hatası oluştu.\n\n💡 Lütfen daha sonra tekrar deneyin.';
      case 'web-storage-unsupported':
        return '❌ Web depolama desteklenmiyor.\n\n💡 Farklı bir tarayıcı deneyin.';

      // Bilinmeyen hatalar
      default:
        // Firebase hata mesajını Türkçe'ye çevirmeye çalış
        String message = e.message ?? 'Bilinmeyen hata';

        // Yaygın İngilizce hata mesajlarını Türkçe'ye çevir
        if (message.toLowerCase().contains('email') &&
            message.toLowerCase().contains('invalid')) {
          return '❌ E-posta adresi geçersiz.\n\n💡 Lütfen geçerli bir e-posta adresi girin.';
        } else if (message.toLowerCase().contains('password') &&
            message.toLowerCase().contains('wrong')) {
          return '❌ Şifre hatalı.\n\n💡 Şifrenizi kontrol edin veya şifre sıfırlama seçeneğini kullanın.';
        } else if (message.toLowerCase().contains('network')) {
          return '❌ Ağ bağlantısı sorunu.\n\n💡 İnternet bağlantınızı kontrol edin.';
        } else if (message.toLowerCase().contains('user') &&
            message.toLowerCase().contains('not found')) {
          return '❌ Kullanıcı bulunamadı.\n\n💡 E-posta adresinizi kontrol edin veya kayıt olun.';
        }

        return '❌ Beklenmeyen bir hata oluştu.\n\n💡 Lütfen daha sonra tekrar deneyin.\n\nHata kodu: ${e.code}';
    }
  }
}
