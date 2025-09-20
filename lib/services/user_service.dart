import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:firebase_storage/firebase_storage.dart';
import 'dart:io';
import 'auth_service.dart';

class UserService {
  final FirebaseFirestore _firestore = FirebaseFirestore.instance;
  final AuthService _authService = AuthService();

  // Kullanıcı profil bilgilerini getir
  Future<Map<String, dynamic>?> getUserProfile() async {
    try {
      final userId = _authService.currentUser?.uid;
      if (userId == null) {
        throw Exception('Kullanıcı giriş yapmamış');
      }

      final userDoc = await _firestore.collection('users').doc(userId).get();

      if (!userDoc.exists) {
        return {
          'displayName': _authService.currentUser?.displayName ?? 'Kullanıcı',
          'title': 'Anestezi Uzmanı',
          'photoURL': _authService.currentUser?.photoURL,
          'email': _authService.currentUser?.email ?? '',
          'phone': _authService.currentUser?.phoneNumber ?? '',
          'isProfileComplete': false,
        };
      }

      return userDoc.data();
    } catch (e) {
      print('getUserProfile hatası: $e');
      return null;
    }
  }

  // Kullanıcı profil bilgilerini güncelle
  Future<bool> updateUserProfile({
    String? displayName,
    String? title,
    String? photoURL,
    String? phone,
  }) async {
    try {
      final userId = _authService.currentUser?.uid;
      if (userId == null) {
        throw Exception('Kullanıcı giriş yapmamış');
      }

      // Firebase Auth'da kullanıcı bilgilerini güncelle
      if (displayName != null || photoURL != null) {
        await _authService.currentUser!.updateDisplayName(displayName);
        if (photoURL != null) {
          await _authService.currentUser!.updatePhotoURL(photoURL);
        }
      }

      // Firestore'da kullanıcı bilgilerini güncelle
      final userData = {
        'displayName': displayName ?? _authService.currentUser?.displayName,
        'title': title,
        'photoURL': photoURL ?? _authService.currentUser?.photoURL,
        'phone': phone,
        'isProfileComplete': true,
        'updatedAt': FieldValue.serverTimestamp(),
      };

      // Null değerleri kaldır
      userData.removeWhere((key, value) => value == null);

      await _firestore
          .collection('users')
          .doc(userId)
          .set(userData, SetOptions(merge: true));

      return true;
    } catch (e) {
      print('updateUserProfile hatası: $e');
      return false;
    }
  }

  // Bildirim ayarlarını güncelle
  Future<bool> updateNotificationSettings({
    required bool enablePushNotifications,
    required bool enableEmailNotifications,
    required bool enableDailyReminders,
  }) async {
    try {
      final userId = _authService.currentUser?.uid;
      if (userId == null) {
        throw Exception('Kullanıcı giriş yapmamış');
      }

      await _firestore.collection('users').doc(userId).set({
        'notificationSettings': {
          'enablePushNotifications': enablePushNotifications,
          'enableEmailNotifications': enableEmailNotifications,
          'enableDailyReminders': enableDailyReminders,
          'updatedAt': FieldValue.serverTimestamp(),
        },
      }, SetOptions(merge: true));

      return true;
    } catch (e) {
      print('updateNotificationSettings hatası: $e');
      return false;
    }
  }

  // Gizlilik ayarlarını güncelle
  Future<bool> updatePrivacySettings({
    required bool showProfileToOthers,
    required bool showActivityInLeaderboard,
    required bool shareUsageData,
  }) async {
    try {
      final userId = _authService.currentUser?.uid;
      if (userId == null) {
        throw Exception('Kullanıcı giriş yapmamış');
      }

      await _firestore.collection('users').doc(userId).set({
        'privacySettings': {
          'showProfileToOthers': showProfileToOthers,
          'showActivityInLeaderboard': showActivityInLeaderboard,
          'shareUsageData': shareUsageData,
          'updatedAt': FieldValue.serverTimestamp(),
        },
      }, SetOptions(merge: true));

      return true;
    } catch (e) {
      print('updatePrivacySettings hatası: $e');
      return false;
    }
  }

  // Varsayılan kullanıcı ayarlarını oluştur
  Future<bool> createDefaultUserSettings() async {
    try {
      final userId = _authService.currentUser?.uid;
      if (userId == null) {
        print('❌ Kullanıcı giriş yapmamış');
        return false;
      }

      print('🔍 Kullanıcı dokümanı kontrol ediliyor: $userId');
      
      // Timeout ile Firestore işlemi
      final userDoc = await _firestore.collection('users').doc(userId).get().timeout(
        const Duration(seconds: 10),
        onTimeout: () {
          throw Exception('Firestore timeout - kullanıcı dokümanı kontrol edilemedi');
        },
      );

      if (!userDoc.exists) {
        print('📝 Yeni kullanıcı ayarları oluşturuluyor...');
        
        // Temel kullanıcı verilerini oluştur - timeout ile
        await _firestore.collection('users').doc(userId).set({
          'displayName': _authService.currentUser?.displayName ?? 'Kullanıcı',
          'email': _authService.currentUser?.email ?? '',
          'photoURL': _authService.currentUser?.photoURL,
          'isProfileComplete': false,
          'createdAt': FieldValue.serverTimestamp(),
          'notificationSettings': {
            'enablePushNotifications': true,
            'enableEmailNotifications': true,
            'enableDailyReminders': true,
          },
          'privacySettings': {
            'showProfileToOthers': true,
            'showActivityInLeaderboard': true,
            'shareUsageData': true,
          },
        }, SetOptions(merge: true)).timeout(
          const Duration(seconds: 10),
          onTimeout: () {
            throw Exception('Firestore timeout - kullanıcı ayarları oluşturulamadı');
          },
        );

        print('✅ Varsayılan kullanıcı ayarları oluşturuldu');
        return true;
      } else {
        print('ℹ️ Kullanıcı ayarları zaten mevcut');
        return false; // Ayarlar zaten var
      }
    } catch (e) {
      print('❌ createDefaultUserSettings hatası: $e');
      return false;
    }
  }

  // Profil resmi yükleme
  Future<String?> uploadProfileImage(File imageFile) async {
    try {
      print('UserService.uploadProfileImage başlatıldı');

      final userId = _authService.currentUser?.uid;
      if (userId == null) {
        print('Hata: Kullanıcı giriş yapmamış');
        throw Exception('Kullanıcı giriş yapmamış');
      }

      print('Kullanıcı ID: $userId');
      print('Resim dosyası yolu: ${imageFile.path}');

      // Dosya uzantısını al
      final fileExtension = imageFile.path.split('.').last.toLowerCase();
      print('Dosya uzantısı: $fileExtension');

      if (!['jpg', 'jpeg', 'png', 'webp'].contains(fileExtension)) {
        print(
          'Hata: Desteklenmeyen dosya formatı. Sadece jpg, jpeg, png ve webp formatları destekleniyor.',
        );
        throw Exception(
          'Desteklenmeyen dosya formatı. Sadece jpg, jpeg, png ve webp formatları destekleniyor.',
        );
      }

      // Dosyanın varlığını doğrula
      if (!await imageFile.exists()) {
        print('Hata: Dosya bulunamadı veya erişilemiyor');
        throw Exception('Dosya bulunamadı veya erişilemiyor');
      }

      // Dosya boyutunu kontrol et
      final fileSize = await imageFile.length();
      final fileSizeInMB = fileSize / (1024 * 1024);
      print('Dosya boyutu: ${fileSizeInMB.toStringAsFixed(2)} MB');

      if (fileSizeInMB > 5) {
        print('Hata: Dosya boyutu çok büyük. Maksimum 5MB olmalı.');
        throw Exception('Dosya boyutu çok büyük. Maksimum 5MB olmalı.');
      }

      // Firebase Storage referansı
      print('Firebase Storage referansı oluşturuluyor...');
      final storageRef = FirebaseStorage.instance
          .ref()
          .child('profile_images')
          .child('$userId.$fileExtension');

      print('Storage referansı: ${storageRef.fullPath}');

      // Resmi yükle
      print('Resim yükleme işlemi başlatılıyor...');
      try {
        final uploadTask = await storageRef.putFile(imageFile);
        print('Resim yükleme tamamlandı. Durum: ${uploadTask.state}');

        // İndirme URL'sini al
        print('İndirme URL\'si alınıyor...');
        final downloadUrl = await uploadTask.ref.getDownloadURL();

        // Kullanıcı profilini güncelle
        print('Kullanıcı profili güncelleniyor...');
        await updateUserProfile(photoURL: downloadUrl);

        // Firebase Auth'daki kullanıcı profilini güncelle
        print('Firebase Auth profili güncelleniyor...');
        await _authService.currentUser!.updatePhotoURL(downloadUrl);

        return downloadUrl;
      } catch (storageError) {
        print('Firebase Storage hatası: $storageError');
        throw Exception('Firebase Storage hatası: $storageError');
      }
    } catch (e) {
      print('Profil resmi yükleme hatası: $e');
      return null;
    }
  }
}
