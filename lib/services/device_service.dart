import 'dart:io';
import 'dart:async';
import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:device_info_plus/device_info_plus.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:firebase_messaging/firebase_messaging.dart';
import 'package:flutter/foundation.dart';
import '../models/device_info.dart';

// Custom exception for device limit exceeded
class DeviceLimitExceededException implements Exception {
  final String message;
  DeviceLimitExceededException(this.message);
  
  @override
  String toString() => message;
}

class DeviceService {
  final FirebaseFirestore _firestore = FirebaseFirestore.instance;
  final FirebaseAuth _auth = FirebaseAuth.instance;
  final FirebaseMessaging _messaging = FirebaseMessaging.instance;
  final DeviceInfoPlugin _deviceInfo = DeviceInfoPlugin();
  
  StreamSubscription? _deviceRemovalListener;
  String? _currentDeviceId;

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

  // Mevcut cihazın ID'sini al (public metod)
  Future<String> getCurrentDeviceId() async {
    if (_currentDeviceId == null) {
      _currentDeviceId = await _generateDeviceId();
    }
    return _currentDeviceId!;
  }

  // Cihaz kaldırma listener'ını başlat
  // Kullanıcının cihaz listesini dinler, eğer mevcut cihaz listeden kaldırılırsa otomatik çıkış yapar
  void startDeviceRemovalListener(Function() onDeviceRemoved) {
    final userId = _auth.currentUser?.uid;
    if (userId == null) return;

    // Önce mevcut listener'ı iptal et
    _deviceRemovalListener?.cancel();

    // İlk kontrol için flag - giriş yapıldıktan sonra ilk kontrolü atla
    bool isFirstCheck = true;

    // Kullanıcı dokümanını dinle
    _deviceRemovalListener = _firestore
        .collection('users')
        .doc(userId)
        .snapshots()
        .listen((snapshot) async {
      if (!snapshot.exists) return;

      // İlk kontrolü atla - giriş yapıldığında cihaz kaydı yapılıyor olabilir
      if (isFirstCheck) {
        isFirstCheck = false;
        // İlk kontrol için kısa bir bekleme - cihaz kaydının tamamlanması için
        await Future.delayed(const Duration(seconds: 1));
        return;
      }

      final data = snapshot.data();
      final registeredDevices = data?['registeredDevices'] as Map<String, dynamic>?;

      // KAYIT SONRASI: Eğer cihaz listesi yoksa henüz cihaz kaydı yapılmamış olabilir
      // Bu durumda çıkış yapma! Sadece boş map ise çıkış yap
      if (registeredDevices == null || registeredDevices.isEmpty) {
        // İlk kayıt sonrası cihaz kaydı yapılana kadar bekle
        // Çıkış yapma - bu yeni kayıt olmuş kullanıcı olabilir
        debugPrint('⚠️ registeredDevices bulunamadı veya boş - henüz kayıt yapılmamış olabilir');
        return;
      }

      // Mevcut cihazın listede olup olmadığını kontrol et
      final currentDeviceId = await getCurrentDeviceId();
      if (!registeredDevices.containsKey(currentDeviceId)) {
        // Mevcut cihaz listeden kaldırılmış - çıkış yap
        debugPrint('❌ Cihaz listeden kaldırılmış: $currentDeviceId');
        onDeviceRemoved();
      }
    });
  }

  // Cihaz kaldırma listener'ını durdur
  void stopDeviceRemovalListener() {
    _deviceRemovalListener?.cancel();
    _deviceRemovalListener = null;
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
      
      if (registeredDevices == null || registeredDevices.isEmpty) return [];

      // Tüm cihazları listeye çevir ve son giriş zamanına göre sırala
      final devices = registeredDevices.entries
          .map((entry) {
            try {
              return DeviceInfo.fromMap(entry.value as Map<String, dynamic>);
            } catch (e) {
              // Geçersiz cihaz kaydını atla
              return null;
            }
          })
          .whereType<DeviceInfo>()
          .toList();

      // Son giriş zamanına göre sırala (en yeni en üstte)
      devices.sort((a, b) => b.lastLoginAt.compareTo(a.lastLoginAt));

      return devices;
    } catch (e) {
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
      return false;
    }
  }

  // Yeni cihaz kaydı veya mevcut cihaz güncellemesi
  Future<void> registerOrUpdateDevice() async {
    final userId = _auth.currentUser?.uid;
    if (userId == null) throw Exception('Kullanıcı giriş yapmamış');

    try {
      // FCM token al - token alınamazsa cihaz kaydı yapılamaz
      String? fcmToken;
      try {
        fcmToken = await _messaging.getToken();
        if (fcmToken == null || fcmToken.isEmpty) {
          debugPrint('FCM token null veya boş, cihaz kaydı yapılamıyor');
          return;
        }
      } catch (e) {
        debugPrint('FCM token alınamadı, cihaz kaydı yapılamıyor: $e');
        return; // FCM token olmadan cihaz kaydı yapma
      }

      // Cihaz bilgilerini topla
      final deviceId = await _generateDeviceId();
      final deviceName = await _getDeviceName();
      final platform = _getPlatformName();

      debugPrint('Cihaz kaydı başlatılıyor - DeviceId: $deviceId, DeviceName: $deviceName, Platform: $platform');

      // Cihaz zaten kayıtlı mı kontrol et
      final isRegistered = await isDeviceRegistered(deviceId);

      if (isRegistered) {
        debugPrint('Cihaz zaten kayıtlı, güncelleniyor...');
        // Mevcut cihaz - token ve login zamanını güncelle
        try {
          await _updateExistingDevice(deviceId, fcmToken);
          debugPrint('Cihaz başarıyla güncellendi');
        } catch (e) {
          // Güncelleme başarısız olursa, yeni cihaz olarak kaydet
          debugPrint('Cihaz güncelleme başarısız, yeni kayıt olarak denenecek: $e');
          await _registerNewDevice(deviceId, fcmToken, deviceName, platform);
          debugPrint('Cihaz yeni kayıt olarak kaydedildi');
        }
      } else {
        debugPrint('Yeni cihaz kaydediliyor...');
        // Yeni cihaz - önce limit kontrolü yap
        final deviceCount = await getUserDeviceCount();
        debugPrint('Mevcut cihaz sayısı: $deviceCount');
        
        if (deviceCount >= MAX_DEVICES) {
          throw DeviceLimitExceededException(
            'Bu hesaba en fazla $MAX_DEVICES cihazdan giriş yapabilirsiniz. '
            'Yeni cihaz eklemek için profil ayarlarından mevcut cihazlardan birini kaldırın.'
          );
        }

        // Yeni cihazı kaydet
        await _registerNewDevice(deviceId, fcmToken, deviceName, platform);
        debugPrint('Yeni cihaz başarıyla kaydedildi');
      }

    } catch (e) {
      // DeviceLimitExceededException'ı fırlat
      if (e is DeviceLimitExceededException) {
        rethrow;
      }
      debugPrint('Cihaz kaydı hatası: $e');
      // Diğer hatalar için exception fırlatma, sadece logla
      // Çünkü cihaz kaydı kritik değil, kullanıcı giriş yapabilmeli
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

    debugPrint('Yeni cihaz bilgileri: $deviceInfo');

    // Mevcut cihazları al ve yeni cihazı ekle
    final userDoc = await _firestore.collection('users').doc(userId).get();
    Map<String, dynamic> existingDevices = {};
    
    if (userDoc.exists && userDoc.data() != null) {
      final data = userDoc.data()!;
      final devices = data['registeredDevices'];
      if (devices != null && devices is Map) {
        existingDevices = Map<String, dynamic>.from(devices);
      }
    }
    
    debugPrint('Mevcut cihaz sayısı (kayıt öncesi): ${existingDevices.length}');
    
    // Yeni cihazı ekle
    existingDevices[deviceId] = deviceInfo.toMap();
    
    debugPrint('Yeni cihaz sayısı (kayıt sonrası): ${existingDevices.length}');
    
    // Firestore'a kaydet
    await _firestore.collection('users').doc(userId).set({
      'registeredDevices': existingDevices,
      'deviceCount': existingDevices.length,
    }, SetOptions(merge: true));
    
    debugPrint('Cihaz Firestore\'a kaydedildi - UserId: $userId, DeviceId: $deviceId');
  }

  // Mevcut cihaz güncelleme
  Future<void> _updateExistingDevice(String deviceId, String fcmToken) async {
    final userId = _auth.currentUser?.uid;
    if (userId == null) throw Exception('Kullanıcı giriş yapmamış');

    // Mevcut cihaz bilgilerini al
    final userDoc = await _firestore.collection('users').doc(userId).get();
    if (!userDoc.exists || userDoc.data() == null) {
      throw Exception('Kullanıcı dokümanı bulunamadı');
    }

    final data = userDoc.data()!;
    final registeredDevices = data['registeredDevices'] as Map<String, dynamic>?;
    
    if (registeredDevices == null || !registeredDevices.containsKey(deviceId)) {
      throw Exception('Cihaz kaydı bulunamadı');
    }

    // Cihaz bilgilerini güncelle
    final deviceData = Map<String, dynamic>.from(registeredDevices[deviceId] as Map<String, dynamic>);
    deviceData['fcmToken'] = fcmToken;
    deviceData['lastLoginAt'] = FieldValue.serverTimestamp();

    // Güncellenmiş cihaz bilgilerini kaydet
    await _firestore.collection('users').doc(userId).update({
      'registeredDevices.$deviceId': deviceData,
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

      return true;
    } catch (e) {
      return false;
    }
  }

  // Mevcut cihazın kaydını sil
  Future<void> unregisterCurrentDevice() async {
    final userId = _auth.currentUser?.uid;
    if (userId == null) return; // Kullanıcı zaten çıkış yapmışsa bir şey yapma

    try {
      // Mevcut cihazın ID'sini al
      final deviceId = await _generateDeviceId();
      
      // Cihaz kaydını sil
      await _firestore.collection('users').doc(userId).update({
        'registeredDevices.$deviceId': FieldValue.delete(),
        'deviceCount': FieldValue.increment(-1),
      });
      
    } catch (e) {
      // Hata olsa bile devam et
    }
  }

  // Belirli bir cihazın kaydını sil
  Future<void> unregisterDevice(String deviceId) async {
    final userId = _auth.currentUser?.uid;
    if (userId == null) throw Exception('Kullanıcı giriş yapmamış');

    try {
      await _firestore.collection('users').doc(userId).update({
        'registeredDevices.$deviceId': FieldValue.delete(),
        'deviceCount': FieldValue.increment(-1),
      });
      
    } catch (e) {
      rethrow;
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
      
      try {
        final deviceId = await _generateDeviceId();
        await _updateExistingDevice(deviceId, newToken);
      } catch (e) {
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

    return settings.authorizationStatus == AuthorizationStatus.authorized;
  }
} 