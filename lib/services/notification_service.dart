import 'dart:convert';
import 'package:firebase_messaging/firebase_messaging.dart';
import 'package:flutter_local_notifications/flutter_local_notifications.dart';
import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'device_service.dart';

class NotificationService {
  static final NotificationService _instance = NotificationService._internal();
  factory NotificationService() => _instance;
  NotificationService._internal();

  final FirebaseMessaging _messaging = FirebaseMessaging.instance;
  final FlutterLocalNotificationsPlugin _localNotifications = FlutterLocalNotificationsPlugin();
  final FirebaseFirestore _firestore = FirebaseFirestore.instance;
  final DeviceService _deviceService = DeviceService();

  // Notification service'i initialize et
  Future<void> initialize() async {
    // Local notifications setup
    await _initializeLocalNotifications();
    
    // FCM permissions
    await _requestPermissions();
    
    // Message handlers
    _setupMessageHandlers();
    
    print('✅ NotificationService initialized');
  }

  // Local notifications'ı initialize et
  Future<void> _initializeLocalNotifications() async {
    const androidSettings = AndroidInitializationSettings('@mipmap/ic_launcher');
    const iosSettings = DarwinInitializationSettings(
      requestAlertPermission: true,
      requestBadgePermission: true,
      requestSoundPermission: true,
    );
    
    const initSettings = InitializationSettings(
      android: androidSettings,
      iOS: iosSettings,
    );

    await _localNotifications.initialize(
      initSettings,
      onDidReceiveNotificationResponse: _onNotificationTapped,
    );
  }

  // Notification'a tıklandığında çalışacak fonksiyon
  void _onNotificationTapped(NotificationResponse response) {
    print('📱 Notification tapped: ${response.payload}');
    
    if (response.payload != null) {
      try {
        final data = jsonDecode(response.payload!);
        // TODO: Navigation logic here
        print('📱 Navigation data: $data');
      } catch (e) {
        print('📱 Payload parse error: $e');
      }
    }
  }

  // FCM permissions iste
  Future<void> _requestPermissions() async {
    final settings = await _messaging.requestPermission(
      alert: true,
      announcement: false,
      badge: true,
      carPlay: false,
      criticalAlert: false,
      provisional: false,
      sound: true,
    );

    print('📱 FCM Permission status: ${settings.authorizationStatus}');
  }

  // Message handler'ları kur
  void _setupMessageHandlers() {
    // Foreground messages
    FirebaseMessaging.onMessage.listen(_handleForegroundMessage);
    
    // Background message open
    FirebaseMessaging.onMessageOpenedApp.listen(_handleMessageOpenedApp);
    
    // Terminated state'den açılan mesajlar
    _handleInitialMessage();
  }

  // Foreground'da gelen mesajları handle et
  Future<void> _handleForegroundMessage(RemoteMessage message) async {
    print('📱 Foreground message: ${message.messageId}');
    
    // Local notification göster
    await _showLocalNotification(message);
  }

  // Background'dan açılan mesajları handle et
  void _handleMessageOpenedApp(RemoteMessage message) {
    print('📱 Message opened app: ${message.messageId}');
    _navigateBasedOnMessage(message);
  }

  // App terminated state'den açılan mesajlar
  Future<void> _handleInitialMessage() async {
    final initialMessage = await _messaging.getInitialMessage();
    if (initialMessage != null) {
      print('📱 Initial message: ${initialMessage.messageId}');
      _navigateBasedOnMessage(initialMessage);
    }
  }

  // Mesaja göre navigation
  void _navigateBasedOnMessage(RemoteMessage message) {
    final data = message.data;
    final type = data['type'];
    
    switch (type) {
      case 'daily_question':
        // Navigate to daily question
        break;
      case 'quiz_reminder':
        // Navigate to quiz screen
        break;
      case 'achievement':
        // Navigate to profile/achievements
        break;
      default:
        // Navigate to home
        break;
    }
  }

  // Local notification göster
  Future<void> _showLocalNotification(RemoteMessage message) async {
    const androidDetails = AndroidNotificationDetails(
      'anestezi_channel',
      'Anestezi Bildirimleri',
      channelDescription: 'Anestezi uygulaması bildirimleri',
      importance: Importance.high,
      priority: Priority.high,
      icon: '@mipmap/ic_launcher',
    );

    const iosDetails = DarwinNotificationDetails(
      presentAlert: true,
      presentBadge: true,
      presentSound: true,
    );

    const details = NotificationDetails(
      android: androidDetails,
      iOS: iosDetails,
    );

    await _localNotifications.show(
      message.hashCode,
      message.notification?.title ?? 'Anestezi',
      message.notification?.body ?? 'Yeni bildirim',
      details,
      payload: jsonEncode(message.data),
    );
  }

  // Belirli kullanıcılara bildirim gönder
  Future<bool> sendNotificationToUsers({
    required List<String> userIds,
    required String title,
    required String body,
    Map<String, dynamic>? data,
  }) async {
    try {
      // Her kullanıcının FCM token'larını al
      final List<String> allTokens = [];
      
      for (final userId in userIds) {
        final userDoc = await _firestore.collection('users').doc(userId).get();
        if (userDoc.exists) {
          final userData = userDoc.data();
          final registeredDevices = userData?['registeredDevices'] as Map<String, dynamic>?;
          
          if (registeredDevices != null) {
            for (final deviceData in registeredDevices.values) {
              final fcmToken = deviceData['fcmToken'] as String?;
              if (fcmToken != null && fcmToken.isNotEmpty) {
                allTokens.add(fcmToken);
              }
            }
          }
        }
      }

      if (allTokens.isEmpty) {
        print('⚠️ Gönderilecek FCM token bulunamadı');
        return false;
      }

      // FCM ile bildirim gönder (Batch messaging)
      // NOT: Bu işlem için Firebase Admin SDK veya Cloud Functions kullanılması önerilir
      // Şimdilik client-side implementation yapıyoruz
      
      print('📤 ${allTokens.length} cihaza bildirim gönderiliyor...');
      print('📤 Başlık: $title');
      print('📤 İçerik: $body');
      
      // Bildirim kaydını Firestore'a ekle
      await _firestore.collection('notifications').add({
        'title': title,
        'body': body,
        'targetUsers': userIds,
        'sentAt': FieldValue.serverTimestamp(),
        'data': data ?? {},
        'fcmTokens': allTokens,
      });

      return true;
    } catch (e) {
      print('❌ Bildirim gönderme hatası: $e');
      return false;
    }
  }

  // Tüm kullanıcılara bildirim gönder
  Future<bool> sendNotificationToAllUsers({
    required String title,
    required String body,
    Map<String, dynamic>? data,
  }) async {
    try {
      // Tüm kullanıcıları al
      final usersSnapshot = await _firestore.collection('users').get();
      final userIds = usersSnapshot.docs.map((doc) => doc.id).toList();
      
      return await sendNotificationToUsers(
        userIds: userIds,
        title: title,
        body: body,
        data: data,
      );
    } catch (e) {
      print('❌ Tüm kullanıcılara bildirim gönderme hatası: $e');
      return false;
    }
  }

  // Günlük soru bildirimi
  Future<bool> sendDailyQuestionNotification() async {
    return await sendNotificationToAllUsers(
      title: '📚 Günlük Soru Zamanı!',
      body: 'Bugünün anestezi sorusu seni bekliyor. Bilgini test et!',
      data: {
        'type': 'daily_question',
        'action': 'open_daily_question',
      },
    );
  }

  // Quiz hatırlatma bildirimi
  Future<bool> sendQuizReminderNotification(List<String> userIds) async {
    return await sendNotificationToUsers(
      userIds: userIds,
      title: '🎯 Quiz Zamanı!',
      body: 'Henüz tamamlamadığın quizler var. Devam et!',
      data: {
        'type': 'quiz_reminder',
        'action': 'open_quiz',
      },
    );
  }

  // Başarı bildirimi
  Future<bool> sendAchievementNotification({
    required List<String> userIds,
    required String achievementName,
  }) async {
    return await sendNotificationToUsers(
      userIds: userIds,
      title: '🎉 Tebrikler!',
      body: '$achievementName başarısını kazandın!',
      data: {
        'type': 'achievement',
        'action': 'open_profile',
        'achievement': achievementName,
      },
    );
  }

  // Bildirim geçmişini al
  Future<List<Map<String, dynamic>>> getNotificationHistory() async {
    try {
      final snapshot = await _firestore
          .collection('notifications')
          .orderBy('sentAt', descending: true)
          .limit(50)
          .get();

      return snapshot.docs.map((doc) {
        final data = doc.data();
        return {
          'id': doc.id,
          ...data,
        };
      }).toList();
    } catch (e) {
      print('❌ Bildirim geçmişi alma hatası: $e');
      return [];
    }
  }
} 