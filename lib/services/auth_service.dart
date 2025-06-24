import 'package:firebase_auth/firebase_auth.dart';
import 'package:cloud_firestore/cloud_firestore.dart';
import '../utils/event_bus.dart';

class AuthService {
  final FirebaseAuth _auth = FirebaseAuth.instance;
  final FirebaseFirestore _firestore = FirebaseFirestore.instance;

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

  // Güvenli çıkış yapma - tüm stream'leri temizle
  Future<void> signOut() async {
    try {
      // EventBus'ı temizle
      EventBus().dispose();

      // Firebase Auth'dan çıkış yap
      await _auth.signOut();

      print('Kullanıcı başarıyla çıkış yaptı');
    } catch (e) {
      print('Çıkış hatası: $e');
      throw 'Çıkış işlemi sırasında bir hata oluştu.';
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
      case 'user-not-found':
        return 'Bu email adresi ile kayıtlı kullanıcı bulunamadı.';
      case 'wrong-password':
        return 'Hatalı şifre girdiniz.';
      case 'invalid-email':
        return 'Geçersiz email adresi.';
      case 'email-already-in-use':
        return 'Bu email adresi zaten kullanılıyor.';
      case 'weak-password':
        return 'Şifre çok zayıf. Daha güçlü bir şifre belirleyin.';
      case 'operation-not-allowed':
        return 'Bu işlem şu anda kullanılamıyor.';
      case 'too-many-requests':
        return 'Çok fazla istek gönderildi. Lütfen daha sonra tekrar deneyin.';
      case 'network-request-failed':
        return 'Ağ bağlantısı hatası. İnternet bağlantınızı kontrol edin.';
      case 'permission-denied':
        return 'Bu işlem için yetkiniz bulunmamaktadır.';
      default:
        return 'Bir hata oluştu: ${e.message}';
    }
  }
}
