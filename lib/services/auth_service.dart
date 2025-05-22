import 'package:firebase_auth/firebase_auth.dart';
import 'package:cloud_firestore/cloud_firestore.dart';

class AuthService {
  final FirebaseAuth _auth = FirebaseAuth.instance;
  final FirebaseFirestore _firestore = FirebaseFirestore.instance;

  // Mevcut kullanıcı
  User? get currentUser => _auth.currentUser;

  // Auth durumu değişikliklerini izleme
  Stream<User?> get authStateChanges => _auth.authStateChanges();

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

        await _firestore.collection('users').doc(userCredential.user!.uid).set({
          'email': email,
          'displayName': displayName,
          'title': title ?? 'Anestezi Uzmanı',
          'isAdmin': false,
          'createdAt': FieldValue.serverTimestamp(),
          'isProfileComplete': false,
        });
      }

      return userCredential.user;
    } on FirebaseAuthException catch (e) {
      throw _handleAuthException(e);
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
      return userCredential.user;
    } on FirebaseAuthException catch (e) {
      throw _handleAuthException(e);
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

  // Çıkış yapma
  Future<void> signOut() async {
    await _auth.signOut();
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
      default:
        return 'Bir hata oluştu: ${e.message}';
    }
  }
}
