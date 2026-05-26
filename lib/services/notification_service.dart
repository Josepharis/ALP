import 'package:firebase_messaging/firebase_messaging.dart';
import 'package:flutter_local_notifications/flutter_local_notifications.dart';
import 'package:flutter/material.dart';
import 'package:flutter/foundation.dart';
import 'package:shared_preferences/shared_preferences.dart';

class NotificationService {
  static final NotificationService _instance = NotificationService._();
  factory NotificationService() => _instance;
  NotificationService._();

  final FlutterLocalNotificationsPlugin _notifications = FlutterLocalNotificationsPlugin();
  final FirebaseMessaging _fcm = FirebaseMessaging.instance;
  
  // Artik sunucu tarafi yonetimi oldugu icin schedule key'e ihtiyac yok ama uyumluluk icin kalsin
  static const String NOTIFICATION_SCHEDULED_KEY = 'notification_scheduled';

  Future<void> initialize() async {
    const androidSettings = AndroidInitializationSettings('@mipmap/launcher_icon');
    
    const iosSettings = DarwinInitializationSettings(
      requestAlertPermission: true,
      requestBadgePermission: true,
      requestSoundPermission: true,
    );

    const settings = InitializationSettings(
      android: androidSettings,
      iOS: iosSettings,
    );

    await _notifications.initialize(
      settings,
      onDidReceiveNotificationResponse: (NotificationResponse response) {
        if (response.payload != null) {
          debugPrint('Notification payload: ${response.payload}');
        }
      },
    );

    // Android bildirim kanalını sisteme kaydet (Arka plan bildirimleri için kritik)
    final AndroidFlutterLocalNotificationsPlugin? androidImplementation =
        _notifications.resolvePlatformSpecificImplementation<AndroidFlutterLocalNotificationsPlugin>();
    
    if (androidImplementation != null) {
      const AndroidNotificationChannel channel = AndroidNotificationChannel(
        'remote_notifications',
        'Duyurular',
        description: 'Uygulama yöneticisinden gelen bildirimler',
        importance: Importance.max,
        playSound: true,
        enableVibration: true,
        showBadge: true,
      );
      await androidImplementation.createNotificationChannel(channel);
    }
    
    // İzinleri iste
    await requestPermissions();
    
    // FCM Kurulumu
    await _setupFCM();
    
    // Yerel planlamalari temizle (Sunucu tarafına geçildi)
    await cancelAllNotifications();
  }

  Future<void> _setupFCM() async {
    try {
      // Genel duyurular için konuya abone ol (Sadece all_users yeterli, diğerleri dile göre)
      await _fcm.subscribeToTopic('all_users');

      // Ön planda bildirim ayarları (iOS)
      // Burada sadece alert ve sound bırakıyoruz, badge'i sistem yönetsin
      await _fcm.setForegroundNotificationPresentationOptions(
        alert: true,
        badge: true,
        sound: true,
      );

      // Ön planda mesaj geldiğinde
      FirebaseMessaging.onMessage.listen((RemoteMessage message) {
        // iOS'ta setForegroundNotificationPresentationOptions zaten gösterdiği için 
        // burada tekrar manuel gösterirsek ÇİFT BİLDİRİM olur.
        if (defaultTargetPlatform == TargetPlatform.iOS) {
          debugPrint('iOS foreground notification handled by system presentation options');
          return;
        }

        if (message.notification != null) {
          showRemoteNotification(
            title: message.notification?.title ?? '',
            body: message.notification?.body ?? '',
            data: message.data,
          );
        }
      });

      // Uygulama arka plandayken bildirime tıklandığında
      FirebaseMessaging.onMessageOpenedApp.listen((RemoteMessage message) {
        debugPrint('Notification opened from background: ${message.notification?.title}');
      });

      // Uygulama kapalıyken bildirime tıklandığında
      RemoteMessage? initialMessage = await _fcm.getInitialMessage();
      if (initialMessage != null) {
        debugPrint('Notification opened from terminated state: ${initialMessage.notification?.title}');
      }

      // Mevcut dile göre abonelikleri ayarla
      await updateSubscriptionsByLanguage();
    } catch (e) {
      debugPrint('Error setting up FCM: $e');
    }
  }

  Future<void> updateSubscriptionsByLanguage() async {
    try {
      final prefs = await SharedPreferences.getInstance();
      final language = prefs.getString('selected_language') ?? 'tr';
      
      // Temizlik: Eskiden kalmış olabilecek genel abonelikleri temizle
      await _fcm.unsubscribeFromTopic('announcements');
      
      if (language == 'tr') {
        await _fcm.subscribeToTopic('all_users_tr');
        await _fcm.unsubscribeFromTopic('all_users_en');
        debugPrint('Subscribed to all_users_tr');
      } else {
        await _fcm.subscribeToTopic('all_users_en');
        await _fcm.unsubscribeFromTopic('all_users_tr');
        debugPrint('Subscribed to all_users_en');
      }
    } catch (e) {
      debugPrint('Error updating language subscriptions: $e');
    }
  }

  Future<bool> requestPermissions() async {
    NotificationSettings settings = await _fcm.requestPermission(
      alert: true,
      badge: true,
      sound: true,
    );
    
    if (await _notifications.resolvePlatformSpecificImplementation<IOSFlutterLocalNotificationsPlugin>() != null) {
      await _notifications.resolvePlatformSpecificImplementation<IOSFlutterLocalNotificationsPlugin>()
          ?.requestPermissions(
        alert: true,
        badge: true,
        sound: true,
      );
    }

    final AndroidFlutterLocalNotificationsPlugin? androidImplementation =
        _notifications.resolvePlatformSpecificImplementation<AndroidFlutterLocalNotificationsPlugin>();
    
    if (androidImplementation != null) {
      await androidImplementation.requestNotificationsPermission();
    }

    return settings.authorizationStatus == AuthorizationStatus.authorized;
  }

  // Yerel planlama metodu sunucu tarafına geçildiği için devre dışı
  Future<void> cancelAllNotifications() async {
    await _notifications.cancelAll();
    final prefs = await SharedPreferences.getInstance();
    await prefs.setBool(NOTIFICATION_SCHEDULED_KEY, false);
  }

  Future<void> showRemoteNotification({
    required String title,
    required String body,
    Map<String, dynamic>? data,
  }) async {
    const androidDetails = AndroidNotificationDetails(
      'remote_notifications',
      'Duyurular',
      channelDescription: 'Uygulama yöneticisinden gelen bildirimler',
      importance: Importance.max,
      priority: Priority.high,
      enableVibration: true,
      playSound: true,
      showWhen: true,
      autoCancel: true,
      channelShowBadge: true,
      icon: '@mipmap/launcher_icon',
      enableLights: true,
      ledColor: Colors.blue,
      ledOnMs: 1000,
      ledOffMs: 500,
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

    final notificationId = DateTime.now().millisecondsSinceEpoch.remainder(100000);

    await _notifications.show(
      notificationId,
      title,
      body,
      details,
      payload: data?.toString(),
    );
  }
}