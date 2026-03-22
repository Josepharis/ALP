import 'package:firebase_messaging/firebase_messaging.dart';
import 'package:flutter_local_notifications/flutter_local_notifications.dart';
import 'package:timezone/timezone.dart' as tz;
import 'package:timezone/data/latest.dart' as tz;
import 'package:flutter/material.dart';
import 'package:flutter/foundation.dart';
import 'package:shared_preferences/shared_preferences.dart';

class NotificationService {
  static final NotificationService _instance = NotificationService._();
  factory NotificationService() => _instance;
  NotificationService._();

  final FlutterLocalNotificationsPlugin _notifications = FlutterLocalNotificationsPlugin();
  final FirebaseMessaging _fcm = FirebaseMessaging.instance;
  
  static const String NOTIFICATION_SCHEDULED_KEY = 'notification_scheduled';

  // Bildirim saatleri için getter'lar
  List<tz.TZDateTime> get _notificationTimes {
    final turkeyTime = tz.getLocation('Europe/Istanbul');
    final now = tz.TZDateTime.now(turkeyTime);
    
    // Normal bildirim: 19:00
    final normalTime = tz.TZDateTime(turkeyTime, now.year, now.month, now.day, 19, 0);
    
    final scheduledTimes = [normalTime].map((time) {
      if (time.isBefore(now)) {
        final nextDay = time.add(const Duration(days: 1));
        return nextDay;
      } else {
        return time;
      }
    }).toList();

    return scheduledTimes;
  }

  Future<void> initialize() async {
    tz.initializeTimeZones();

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
    
    // İzinleri iste
    await requestPermissions();
    
    // FCM Kurulumu
    await _setupFCM();
    
    // Bildirimlerin planlanıp planlanmadığını kontrol et
    final prefs = await SharedPreferences.getInstance();
    final isScheduled = prefs.getBool(NOTIFICATION_SCHEDULED_KEY) ?? false;
    
    if (!isScheduled) {
      await scheduleDailyNotification();
      await prefs.setBool(NOTIFICATION_SCHEDULED_KEY, true);
    } else {
      final pendingNotifications = await _notifications.pendingNotificationRequests();
      if (pendingNotifications.isEmpty) {
        await scheduleDailyNotification();
      }
    }
  }

  Future<void> _setupFCM() async {
    try {
      // Genel duyurular için konuya abone ol
      await _fcm.subscribeToTopic('all_users');
      await _fcm.subscribeToTopic('announcements');

      // Ön planda bildirim ayarları (iOS)
      await _fcm.setForegroundNotificationPresentationOptions(
        alert: true,
        badge: true,
        sound: true,
      );

      // Ön planda mesaj geldiğinde
      FirebaseMessaging.onMessage.listen((RemoteMessage message) {
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
    } catch (e) {
      debugPrint('Error setting up FCM: $e');
    }
  }

  Future<bool> requestPermissions() async {
    // Firebase Messaging izni iste
    NotificationSettings settings = await _fcm.requestPermission(
      alert: true,
      badge: true,
      sound: true,
    );
    
    // iOS yerel bildirim izni
    if (await _notifications.resolvePlatformSpecificImplementation<IOSFlutterLocalNotificationsPlugin>() != null) {
      await _notifications.resolvePlatformSpecificImplementation<IOSFlutterLocalNotificationsPlugin>()
          ?.requestPermissions(
        alert: true,
        badge: true,
        sound: true,
      );
    }

    // Android 13 ve üzeri için izinleri iste
    final AndroidFlutterLocalNotificationsPlugin? androidImplementation =
        _notifications.resolvePlatformSpecificImplementation<AndroidFlutterLocalNotificationsPlugin>();
    
    if (androidImplementation != null) {
      await androidImplementation.requestNotificationsPermission();
    }

    return settings.authorizationStatus == AuthorizationStatus.authorized;
  }

  Future<void> scheduleDailyNotification() async {
    try {
      const androidDetails = AndroidNotificationDetails(
        'daily_reminder',
        'Günlük Hatırlatıcı',
        channelDescription: 'Günlük quiz hatırlatıcısı',
        importance: Importance.max,
        priority: Priority.high,
        enableVibration: true,
        playSound: true,
        showWhen: true,
        autoCancel: false,
        ongoing: false,
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

      final scheduledTimes = _notificationTimes;
      
      for (int i = 0; i < scheduledTimes.length; i++) {
        final scheduledTime = scheduledTimes[i];
        final notificationId = 1000 + i;
        
        await _notifications.zonedSchedule(
          notificationId,
          'Günlük Quiz Zamanı! 📚',
          'Bugünkü anestezi sorularını çözmeyi unutmayın!',
          scheduledTime,
          details,
          androidScheduleMode: AndroidScheduleMode.inexactAllowWhileIdle,
          uiLocalNotificationDateInterpretation: UILocalNotificationDateInterpretation.absoluteTime,
          matchDateTimeComponents: DateTimeComponents.time,
        );
      }
    } catch (e) {
      debugPrint('Bildirim planlama hatası: $e');
    }
  }

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