import 'package:firebase_auth/firebase_auth.dart';
import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/foundation.dart';
import '../utils/event_bus.dart';
import 'device_service.dart' as device_service;
import 'notification_service.dart';
import 'tutorial_service.dart';
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
    try {
      
      // Firebase Auth ile kullanıcı oluştur
      final userCredential = await _auth.createUserWithEmailAndPassword(
        email: email,
        password: password,
      );

      // Display name güncelle
      if (userCredential.user != null && displayName != null && displayName.isNotEmpty) {
        try {
          await userCredential.user!.updateDisplayName(displayName);
        } catch (e) {
        }
      }

      // Firestore'a kullanıcı bilgilerini kaydet
      if (userCredential.user != null) {
        try {
          await _createUserDocument(
            userCredential.user!,
            displayName,
            title,
            email,
          );
        } catch (e) {
          // Firestore hatası olsa bile kayıt işlemini tamamla
        }
        
        // Yeni kullanıcı için cihaz kaydını yap
        try {
          await _deviceService.registerOrUpdateDevice();
        } catch (e) {
          // Cihaz kaydı hatası olsa bile kayıt işlemini tamamla
        }
      }
            
      // Yeni kullanıcı için tutorial'ı sıfırla
      try {
        final tutorialService = TutorialService();
        await tutorialService.resetAllTutorials();
      } catch (e) {
      }
      
      return userCredential.user;
    } on FirebaseAuthException catch (e) {
      throw _handleAuthException(e);
    } catch (e) {
      
      // Ağ bağlantısı kontrolü
      if (e.toString().toLowerCase().contains('network') || 
          e.toString().toLowerCase().contains('connection') ||
          e.toString().toLowerCase().contains('timeout')) {
        throw '❌ İnternet Bağlantısı Sorunu\n\n💡 İnternet bağlantınızı kontrol edin ve tekrar deneyin.\n\nWi-Fi veya mobil verilerinizin açık olduğundan emin olun.';
      }
      
      throw '❌ Kayıt İşlemi Başarısız\n\n💡 Beklenmeyen bir hata oluştu. Lütfen:\n• Bilgilerinizi kontrol edin\n• İnternet bağlantınızı kontrol edin\n• Birkaç dakika sonra tekrar deneyin\n\nSorun devam ederse destek ekibi ile iletişime geçin.';
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
      
      // Schedule daily notifications after successful login
      // Bildirim hatası giriş işlemini engellememeli
      try {
        final notificationService = NotificationService();
        await notificationService.scheduleDailyNotification();
      } catch (e) {
        // Bildirim planlama hatası olsa bile giriş işlemine devam et
        // Özellikle exact_alarms_not_permitted hatası için
        debugPrint('Bildirim planlama hatası (giriş devam ediyor): $e');
      }
      
      // Giriş başarılıysa kullanıcı dokümanını kontrol et ve oluştur
      if (userCredential.user != null) {
        await _ensureUserDocument(userCredential.user!);
        
        // Cihaz kaydını yap (maksimum 2 cihaz kontrolü ile)
        try {
          await _deviceService.registerOrUpdateDevice();
        } catch (e) {
          if (e is device_service.DeviceLimitExceededException) {
            // Cihaz limiti aşıldı, kullanıcıyı çıkış yap
            await _auth.signOut();
            throw '❌ Cihaz Limiti Aşıldı\n\n💡 Bu hesaba en fazla 2 cihazdan giriş yapabilirsiniz.\n\nYeni cihaz eklemek için profil ayarlarından mevcut cihazlardan birini kaldırın veya destek ekibi ile iletişime geçin.';
          }
          // Cihaz kaydı hatası olsa bile giriş işlemine devam et
        }
        
        // Premium satın alımlarını Firestore'dan yükle
        try {
          final inAppPurchaseService = await _getInAppPurchaseService();
          await inAppPurchaseService.restorePurchases();
        } catch (e) {
          // Premium yükleme hatası olsa bile giriş işlemine devam et
        }
        
        // NOT: Cihaz kaldırma listener'ı home_screen.dart'ta başlatılacak
        // Çünkü navigasyon için context gerekiyor
      }

      return userCredential.user;
    } on FirebaseAuthException catch (e) {
      throw _handleAuthException(e);
    } catch (e) {
      // Hata detaylarını logla - debug için
      debugPrint('Giriş hatası (detay): $e');
      debugPrint('Hata tipi: ${e.runtimeType}');
      
      // Ağ bağlantısı kontrolü
      final errorString = e.toString().toLowerCase();
      if (errorString.contains('network') || 
          errorString.contains('connection') ||
          errorString.contains('timeout') ||
          errorString.contains('socket')) {
        throw '❌ İnternet Bağlantısı Sorunu\n\n💡 İnternet bağlantınızı kontrol edin ve tekrar deneyin.\n\nWi-Fi veya mobil verilerinizin açık olduğundan emin olun.';
      }
      
      // Cihaz limiti hatası zaten yukarıda yakalandı, diğer hatalar için genel mesaj
      if (e.toString().contains('Cihaz Limiti Aşıldı')) {
        rethrow; // Cihaz limiti hatasını olduğu gibi fırlat
      }
      
      // Auth state ile ilgili hatalar
      if (errorString.contains('auth') && errorString.contains('state') ||
          errorString.contains('user') && errorString.contains('null') ||
          errorString.contains('already') && errorString.contains('use')) {
        throw '❌ Oturum Sorunu\n\n💡 Lütfen uygulamayı kapatıp tekrar açın ve giriş yapmayı deneyin.\n\nSorun devam ederse birkaç saniye bekleyip tekrar deneyin.';
      }
      
      // Daha detaylı hata mesajı
      throw '❌ Giriş İşlemi Başarısız\n\n💡 Beklenmeyen bir hata oluştu.\n\nLütfen:\n• E-posta ve şifrenizi kontrol edin\n• İnternet bağlantınızı kontrol edin\n• Birkaç saniye bekleyip tekrar deneyin\n• Uygulamayı kapatıp açmayı deneyin\n\nSorun devam ederse destek ekibi ile iletişime geçin.\n\nHata: ${e.toString().substring(0, e.toString().length > 100 ? 100 : e.toString().length)}';
    }
  }

  // Kullanıcı dokümanı oluştur
  Future<void> _createUserDocument(
    User user,
    String? displayName,
    String? title,
    String email,
  ) async {
    try {
      
      // iOS simülatör için ekstra güvenlik
      await Future.delayed(const Duration(milliseconds: 100));
      
      // Kullanıcı dokümanını oluştur - iOS için daha uzun timeout
      await _firestore.collection('users').doc(user.uid).set({
        'email': email,
        'displayName': displayName ?? 'Kullanıcı',
        'title': title ?? 'Anestezi Uzmanı', // Kullanıcının girdiği unvanı kullan
        'isAdmin': false,
        'createdAt': FieldValue.serverTimestamp(),
        'isProfileComplete': false,
        'lastLoginAt': FieldValue.serverTimestamp(),
      }, SetOptions(merge: true)).timeout(
        const Duration(seconds: 20), // iOS için daha uzun timeout
        onTimeout: () {
          throw Exception('iOS simülatör: Firestore timeout - kullanıcı dokümanı oluşturulamadı');
        },
      );


      // iOS simülatör için aktivite dokümanını geciktir
      await Future.delayed(const Duration(milliseconds: 200));

      // Kullanıcı aktivitesi oluştur - iOS için daha uzun timeout
      await _firestore.collection('userActivities').doc(user.uid).set({
        'userId': user.uid,
        'totalPoints': 0,
        'totalCorrectAnswers': 0,
        'totalWrongAnswers': 0,
        'dailyStreak': 0,
        'loginDays': [FieldValue.serverTimestamp()],
        'lastUpdated': FieldValue.serverTimestamp(),
        'quizProgress': {},
      }, SetOptions(merge: true)).timeout(
        const Duration(seconds: 20), // iOS için daha uzun timeout
        onTimeout: () {
          throw Exception('iOS simülatör: Firestore timeout - kullanıcı aktivitesi oluşturulamadı');
        },
      );
      
    } catch (e) {
      // iOS simülatörde hata olsa bile devam et
      // Hata fırlatma, sadece logla
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
    } catch (e) {
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
