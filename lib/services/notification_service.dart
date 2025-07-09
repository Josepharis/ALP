import 'package:flutter_local_notifications/flutter_local_notifications.dart';
import 'package:timezone/timezone.dart' as tz;
import 'package:timezone/data/latest.dart' as tz;
import 'package:flutter/material.dart';
import 'package:shared_preferences/shared_preferences.dart';

class NotificationService {
  static final NotificationService _instance = NotificationService._();
  factory NotificationService() => _instance;
  NotificationService._();

  final FlutterLocalNotificationsPlugin _notifications = FlutterLocalNotificationsPlugin();
  static const String NOTIFICATION_SCHEDULED_KEY = 'notification_scheduled';

  // Bildirim saati için getter
  tz.TZDateTime get _notificationTime {
    final now = tz.TZDateTime.now(tz.local);
    print('Şu anki zaman: $now');
    
    var scheduledDate = tz.TZDateTime(
      tz.local,
      now.year,
      now.month,
      now.day,
      14, // Saat 14
      42, // 42 dakika
    );

    // Eğer belirlenen saat geçtiyse, bir sonraki güne planla
    if (scheduledDate.isBefore(now)) {
      scheduledDate = scheduledDate.add(const Duration(days: 1));
      print('Saat geçmiş, yarına planlanıyor: $scheduledDate');
    } else {
      print('Bugün için planlanıyor: $scheduledDate');
    }

    return scheduledDate;
  }

  Future<void> initialize() async {
    print('Notification service başlatılıyor...');
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
        print('Notification tapped: ${response.payload}');
      },
    );
    
    // İzinleri iste
    await requestPermissions();
    
    // Bildirimlerin planlanıp planlanmadığını kontrol et
    final prefs = await SharedPreferences.getInstance();
    final isScheduled = prefs.getBool(NOTIFICATION_SCHEDULED_KEY) ?? false;
    
    if (!isScheduled) {
      // İlk kez planlanıyor
      await scheduleDailyNotification();
      await prefs.setBool(NOTIFICATION_SCHEDULED_KEY, true);
      print('Bildirimler ilk kez planlandı');
    } else {
      // Planlanan bildirimleri kontrol et
      final pendingNotifications = await _notifications.pendingNotificationRequests();
      if (pendingNotifications.isEmpty) {
        // Bildirimler silinmiş veya kaybolmuş, yeniden planla
        await scheduleDailyNotification();
        print('Bildirimler yeniden planlandı');
      } else {
        print('Bildirimler zaten planlanmış. Aktif bildirim sayısı: ${pendingNotifications.length}');
      }
    }
    
    print('Notification service başlatıldı');
  }

  Future<bool> requestPermissions() async {
    print('Bildirim izinleri isteniyor...');
    
    // iOS için izinleri iste
    if (await _notifications.resolvePlatformSpecificImplementation<IOSFlutterLocalNotificationsPlugin>() != null) {
      final bool? result = await _notifications.resolvePlatformSpecificImplementation<IOSFlutterLocalNotificationsPlugin>()
          ?.requestPermissions(
        alert: true,
        badge: true,
        sound: true,
      );
      print('iOS bildirim izinleri sonucu: $result');
    }

    // Android 13 ve üzeri için izinleri iste
    final AndroidFlutterLocalNotificationsPlugin? androidImplementation =
        _notifications.resolvePlatformSpecificImplementation<AndroidFlutterLocalNotificationsPlugin>();
    
    if (androidImplementation != null) {
      final bool? granted = await androidImplementation.requestNotificationsPermission();
      print('Android bildirim izinleri sonucu: $granted');
    }

    return true;
  }

  Future<void> scheduleDailyNotification() async {
    print('Günlük bildirim planlanıyor...');
    // Önce tüm bildirimleri temizle
    await cancelAllNotifications();

    const androidDetails = AndroidNotificationDetails(
      'daily_reminder',
      'Günlük Hatırlatıcı',
      channelDescription: 'Günlük quiz hatırlatıcısı',
      importance: Importance.max,
      priority: Priority.high,
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

    final scheduledTime = _notificationTime;
    await _notifications.zonedSchedule(
      0,
      'Günlük Quiz Zamanı! 📚',
      'Bugünkü anestezi sorularını çözmeyi unutmayın!',
      scheduledTime,
      details,
      androidScheduleMode: AndroidScheduleMode.exactAllowWhileIdle,
      uiLocalNotificationDateInterpretation: UILocalNotificationDateInterpretation.absoluteTime,
      matchDateTimeComponents: DateTimeComponents.time,
    );

    print('Günlük bildirim planlandı: ${scheduledTime.toString()}');
    
    // Planlanan bildirimleri kontrol et
    final pendingNotifications = await _notifications.pendingNotificationRequests();
    print('Planlanan bildirim sayısı: ${pendingNotifications.length}');
    for (var notification in pendingNotifications) {
      print('Planlanan bildirim ID: ${notification.id}');
    }
  }

  Future<void> cancelAllNotifications() async {
    print('Tüm bildirimler iptal ediliyor...');
    await _notifications.cancelAll();
    // Bildirimlerin iptal edildiğini kaydet
    final prefs = await SharedPreferences.getInstance();
    await prefs.setBool(NOTIFICATION_SCHEDULED_KEY, false);
    print('Tüm bildirimler iptal edildi');
  }
} 