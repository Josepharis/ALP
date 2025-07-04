import 'package:firebase_auth/firebase_auth.dart';
import 'package:cloud_firestore/cloud_firestore.dart';
import '../utils/event_bus.dart';
import 'device_service.dart';
import '../models/device_info.dart';

class AuthService {
  final FirebaseAuth _auth = FirebaseAuth.instance;
  final FirebaseFirestore _firestore = FirebaseFirestore.instance;
  final DeviceService _deviceService = DeviceService();

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
      final userCredential = await _auth.createUserWithEmailAndPassword(
        email: email,
        password: password,
      );

      // Kullanıcı verilerini Firestore'a ekle
      if (userCredential.user != null) {
        // Eğer displayName verildiyse kullanıcı adını güncelle
        if (displayName != null && displayName.isNotEmpty) {
          await userCredential.user!.updateDisplayName(displayName);
        }

        // Firestore'a kullanıcı verilerini kaydet
        await _createUserDocument(
          userCredential.user!,
          displayName,
          title,
          email,
        );

        // Cihaz kaydını yap (ilk kayıt olduğu için limit kontrolü gerekli değil ama yine de yap)
        try {
          await _deviceService.registerOrUpdateDevice();
          print('✅ Kayıt sonrası cihaz kaydı başarılı');
        } catch (e) {
          print('⚠️ Kayıt sonrası cihaz kaydı hatası (devam ediliyor): $e');
        }
      }

      return userCredential.user;
    } on FirebaseAuthException catch (e) {
      throw _handleAuthException(e);
    } catch (e) {
      print('Kayıt hatası: $e');
      throw 'Kayıt işlemi sırasında bir hata oluştu.';
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

      // Giriş başarılıysa kullanıcı dokümanını kontrol et ve oluştur
      if (userCredential.user != null) {
        await _ensureUserDocument(userCredential.user!);
        
        // Cihaz kaydını yap (maksimum 2 cihaz kontrolü ile)
        try {
          await _deviceService.registerOrUpdateDevice();
          print('✅ Cihaz kaydı başarılı');
        } catch (e) {
          if (e is DeviceLimitExceededException) {
            // Cihaz limiti aşıldı, kullanıcıyı çıkış yap
            await _auth.signOut();
            throw e; // Exception'ı yukarı fırlat
          }
          print('⚠️ Cihaz kaydı hatası (devam ediliyor): $e');
        }
      }

      return userCredential.user;
    } on FirebaseAuthException catch (e) {
      throw _handleAuthException(e);
    } catch (e) {
      print('Giriş hatası: $e');
      throw 'Giriş işlemi sırasında bir hata oluştu.';
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
      await _firestore.collection('users').doc(user.uid).set({
        'email': email,
        'displayName': displayName ?? 'Kullanıcı',
        'title': title ?? 'Anestezi Uzmanı',
        'isAdmin': false,
        'createdAt': FieldValue.serverTimestamp(),
        'isProfileComplete': false,
        'lastLoginAt': FieldValue.serverTimestamp(),
      }, SetOptions(merge: true));

      // Kullanıcı aktivitesi oluştur
      await _firestore.collection('userActivities').doc(user.uid).set({
        'userId': user.uid,
        'totalPoints': 0,
        'totalCorrectAnswers': 0,
        'totalWrongAnswers': 0,
        'dailyStreak': 0,
        'loginDays': [FieldValue.serverTimestamp()],
        'lastUpdated': FieldValue.serverTimestamp(),
        'quizProgress': {},
      }, SetOptions(merge: true));
    } catch (e) {
      print('Kullanıcı dokümanı oluşturma hatası: $e');
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
      print('Kullanıcı dokümanı kontrol hatası: $e');
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
      print('Admin kontrol hatası: $e');
      return false;
    }
  }

  // Güvenli çıkış yapma - direkt Firebase çıkış
  Future<void> signOut() async {
    try {
      print('🚪 Çıkış işlemi başlatılıyor...');

      // Sadece Firebase Auth'dan çıkış yap - hiç karmaşık işlem yapma
      await _auth.signOut();
      print('✅ Firebase Auth çıkış tamamlandı');

      // EventBus'ı sonra temizle (isteğe bağlı)
      try {
        EventBus.safeDispose();
        print('✅ EventBus temizlendi');
      } catch (e) {
        print('⚠️ EventBus temizleme hatası (önemli değil): $e');
      }

      print('🎉 Çıkış işlemi başarıyla tamamlandı');
    } catch (e) {
      print('❌ Firebase çıkış hatası: $e');
      // Hata olsa bile kullanıcı çıkmış sayılır, exception fırlatma
    }
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
