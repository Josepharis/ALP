import 'dart:io';
import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:device_info_plus/device_info_plus.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:firebase_messaging/firebase_messaging.dart';
import 'package:flutter/foundation.dart';
import '../models/device_info.dart';

class DeviceService {
  final FirebaseFirestore _firestore = FirebaseFirestore.instance;
  final FirebaseAuth _auth = FirebaseAuth.instance;
  final FirebaseMessaging _messaging = FirebaseMessaging.instance;
  final DeviceInfoPlugin _deviceInfo = DeviceInfoPlugin();

  static const int MAX_DEVICES = 2;

  // Mevcut cihazın unique ID'sini oluştur
  Future<String> _generateDeviceId() async {
    try {
      if (Platform.isAndroid) {
        final androidInfo = await _deviceInfo.androidInfo;
        return '${androidInfo.model}_${androidInfo.id}_android';
      } else if (Platform.isIOS) {
        final iosInfo = await _deviceInfo.iosInfo;
        return '${iosInfo.model}_${iosInfo.identifierForVendor}_ios';
      } else {
        // Web veya diğer platformlar için fallback
        return 'web_${DateTime.now().millisecondsSinceEpoch}';
      }
    } catch (e) {
      print('Device ID oluşturma hatası: $e');
      return 'unknown_${DateTime.now().millisecondsSinceEpoch}';
    }
  }

  // Cihaz adını al
  Future<String> _getDeviceName() async {
    try {
      if (Platform.isAndroid) {
        final androidInfo = await _deviceInfo.androidInfo;
        return '${androidInfo.brand} ${androidInfo.model}';
      } else if (Platform.isIOS) {
        final iosInfo = await _deviceInfo.iosInfo;
        return '${iosInfo.name} (${iosInfo.model})';
      } else {
        return 'Web Browser';
      }
    } catch (e) {
      print('Device name alma hatası: $e');
      return 'Bilinmeyen Cihaz';
    }
  }

  // Platform adını al
  String _getPlatformName() {
    if (Platform.isAndroid) return 'android';
    if (Platform.isIOS) return 'ios';
    if (kIsWeb) return 'web';
    return 'unknown';
  }

  // Kullanıcının kayıtlı cihaz sayısını kontrol et
  Future<int> getUserDeviceCount() async {
    final userId = _auth.currentUser?.uid;
    if (userId == null) throw Exception('Kullanıcı giriş yapmamış');

    try {
      final userDoc = await _firestore.collection('users').doc(userId).get();
      
      if (!userDoc.exists) return 0;
      
      final data = userDoc.data();
      final registeredDevices = data?['registeredDevices'] as Map<String, dynamic>?;
      
      return registeredDevices?.length ?? 0;
    } catch (e) {
      print('Cihaz sayısı alma hatası: $e');
      return 0;
    }
  }

  // Kullanıcının kayıtlı cihazlarını getir
  Future<List<DeviceInfo>> getUserDevices() async {
    final userId = _auth.currentUser?.uid;
    if (userId == null) throw Exception('Kullanıcı giriş yapmamış');

    try {
      final userDoc = await _firestore.collection('users').doc(userId).get();
      
      if (!userDoc.exists) return [];
      
      final data = userDoc.data();
      final registeredDevices = data?['registeredDevices'] as Map<String, dynamic>?;
      
      if (registeredDevices == null) return [];

      return registeredDevices.entries
          .map((entry) => DeviceInfo.fromMap(entry.value as Map<String, dynamic>))
          .toList();
    } catch (e) {
      print('Kullanıcı cihazları alma hatası: $e');
      return [];
    }
  }

  // Cihazın zaten kayıtlı olup olmadığını kontrol et
  Future<bool> isDeviceRegistered(String deviceId) async {
    final userId = _auth.currentUser?.uid;
    if (userId == null) return false;

    try {
      final userDoc = await _firestore.collection('users').doc(userId).get();
      
      if (!userDoc.exists) return false;
      
      final data = userDoc.data();
      final registeredDevices = data?['registeredDevices'] as Map<String, dynamic>?;
      
      return registeredDevices?.containsKey(deviceId) ?? false;
    } catch (e) {
      print('Cihaz kayıt kontrolü hatası: $e');
      return false;
    }
  }

  // Yeni cihaz kaydı veya mevcut cihaz güncellemesi
  Future<void> registerOrUpdateDevice() async {
    final userId = _auth.currentUser?.uid;
    if (userId == null) throw Exception('Kullanıcı giriş yapmamış');

    try {
      // FCM token al
      final fcmToken = await _messaging.getToken();
      if (fcmToken == null) {
        throw Exception('FCM token alınamadı');
      }

      // Cihaz bilgilerini topla
      final deviceId = await _generateDeviceId();
      final deviceName = await _getDeviceName();
      final platform = _getPlatformName();

      print('🔍 Cihaz kaydı kontrol ediliyor...');
      print('Device ID: $deviceId');
      print('FCM Token: ${fcmToken.substring(0, 20)}...');

      // Cihaz zaten kayıtlı mı kontrol et
      final isRegistered = await isDeviceRegistered(deviceId);

      if (isRegistered) {
        // Mevcut cihaz - sadece token ve login zamanını güncelle
        await _updateExistingDevice(deviceId, fcmToken);
        print('✅ Mevcut cihaz güncellenmiştir');
      } else {
        // Yeni cihaz - önce limit kontrolü yap
        final deviceCount = await getUserDeviceCount();
        
        if (deviceCount >= MAX_DEVICES) {
          throw DeviceLimitExceededException(
            'Bu hesaba en fazla $MAX_DEVICES cihazdan giriş yapabilirsiniz. '
            'Yeni cihaz eklemek için profil ayarlarından mevcut cihazlardan birini kaldırın.'
          );
        }

        // Yeni cihazı kaydet
        await _registerNewDevice(deviceId, fcmToken, deviceName, platform);
        print('✅ Yeni cihaz başarıyla kaydedildi');
      }

    } catch (e) {
      print('❌ Cihaz kaydı hatası: $e');
      rethrow;
    }
  }

  // Yeni cihaz kaydı
  Future<void> _registerNewDevice(
    String deviceId,
    String fcmToken,
    String deviceName,
    String platform,
  ) async {
    final userId = _auth.currentUser?.uid;
    if (userId == null) throw Exception('Kullanıcı giriş yapmamış');

    final deviceInfo = DeviceInfo(
      deviceId: deviceId,
      fcmToken: fcmToken,
      deviceName: deviceName,
      platform: platform,
      registeredAt: DateTime.now(),
      lastLoginAt: DateTime.now(),
    );

    await _firestore.collection('users').doc(userId).set({
      'registeredDevices': {
        deviceId: deviceInfo.toMap(),
      },
      'deviceCount': FieldValue.increment(1),
    }, SetOptions(merge: true));
  }

  // Mevcut cihaz güncelleme
  Future<void> _updateExistingDevice(String deviceId, String fcmToken) async {
    final userId = _auth.currentUser?.uid;
    if (userId == null) throw Exception('Kullanıcı giriş yapmamış');

    await _firestore.collection('users').doc(userId).update({
      'registeredDevices.$deviceId.fcmToken': fcmToken,
      'registeredDevices.$deviceId.lastLoginAt': FieldValue.serverTimestamp(),
    });
  }

  // Cihazı manuel olarak kaldır (kullanıcı profil ayarlarından)
  Future<bool> removeDevice(String deviceId) async {
    final userId = _auth.currentUser?.uid;
    if (userId == null) return false;

    try {
      await _firestore.collection('users').doc(userId).update({
        'registeredDevices.$deviceId': FieldValue.delete(),
        'deviceCount': FieldValue.increment(-1),
      });

      print('✅ Cihaz başarıyla kaldırıldı: $deviceId');
      return true;
    } catch (e) {
      print('❌ Cihaz kaldırma hatası: $e');
      return false;
    }
  }

  // Kullanıcının tüm cihazlarının FCM token'larını al (bildirim gönderimi için)
  Future<List<String>> getUserFCMTokens() async {
    final devices = await getUserDevices();
    return devices.map((device) => device.fcmToken).where((token) => token.isNotEmpty).toList();
  }

  // FCM token yenileme listener'ı kur
  void setupTokenRefreshListener() {
    _messaging.onTokenRefresh.listen((newToken) async {
      print('🔄 FCM Token yenilendi: ${newToken.substring(0, 20)}...');
      
      try {
        final deviceId = await _generateDeviceId();
        await _updateExistingDevice(deviceId, newToken);
        print('✅ Token başarıyla güncellendi');
      } catch (e) {
        print('❌ Token güncelleme hatası: $e');
      }
    });
  }

  // Bildirim izinlerini iste
  Future<bool> requestNotificationPermission() async {
    final settings = await _messaging.requestPermission(
      alert: true,
      announcement: false,
      badge: true,
      carPlay: false,
      criticalAlert: false,
      provisional: false,
      sound: true,
    );

    print('📱 Bildirim izni durumu: ${settings.authorizationStatus}');
    return settings.authorizationStatus == AuthorizationStatus.authorized;
  }
} 