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
  static const String NOTIFICATION_SCHEDULED_KEY = 'notification_scheduled';

  // Bildirim saatleri için getter'lar
  List<tz.TZDateTime> get _notificationTimes {
    // Türkiye saati için özel timezone
    final turkeyTime = tz.getLocation('Europe/Istanbul');
    final now = tz.TZDateTime.now(turkeyTime);
    
    // Normal bildirim: 19:00
    final normalTime = tz.TZDateTime(turkeyTime, now.year, now.month, now.day, 19, 0);
    
    // Eğer belirlenen saat geçtiyse, bir sonraki güne planla
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

    // Android için daha detaylı ayarlar
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
    } else {
      // Planlanan bildirimleri kontrol et
      final pendingNotifications = await _notifications.pendingNotificationRequests();
      if (pendingNotifications.isEmpty) {
        // Bildirimler silinmiş veya kaybolmuş, yeniden planla
        await scheduleDailyNotification();
      } else {
      }
    }
    
  }

  Future<bool> requestPermissions() async {
    
    // iOS için izinleri iste
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

    return true;
  }

  Future<void> scheduleDailyNotification() async {
    try {
      // Önce tüm bildirimleri temizle
      await cancelAllNotifications();

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
        // Android release mod için ek ayarlar
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
      
      // Günlük bildirim planla
      for (int i = 0; i < scheduledTimes.length; i++) {
        final scheduledTime = scheduledTimes[i];
        final notificationId = i;
        
        const title = 'Günlük Quiz Zamanı! 📚';
        const body = 'Bugünkü anestezi sorularını çözmeyi unutmayın!';
        
        try {
          // Önce exact mode ile dene
          await _notifications.zonedSchedule(
            notificationId,
            title,
            body,
            scheduledTime,
            details,
            androidScheduleMode: AndroidScheduleMode.exact,
            uiLocalNotificationDateInterpretation: UILocalNotificationDateInterpretation.absoluteTime,
            matchDateTimeComponents: DateTimeComponents.time,
          );
        } catch (e) {
          // Exact alarm izni yoksa inexact mode kullan
          if (e.toString().contains('exact_alarms_not_permitted') ||
              e.toString().contains('exact_alarm')) {
            // Inexact mode ile tekrar dene
            await _notifications.zonedSchedule(
              notificationId,
              title,
              body,
              scheduledTime,
              details,
              androidScheduleMode: AndroidScheduleMode.inexactAllowWhileIdle,
              uiLocalNotificationDateInterpretation: UILocalNotificationDateInterpretation.absoluteTime,
              matchDateTimeComponents: DateTimeComponents.time,
            );
          } else {
            // Diğer hatalar için yeniden fırlat
            rethrow;
          }
        }
      }
      
      // Planlanan bildirimleri kontrol et
      final pendingNotifications = await _notifications.pendingNotificationRequests();
      // Bildirimler başarıyla planlandı
      debugPrint('${pendingNotifications.length} bildirim planlandı');
    } catch (e) {
      // Bildirim planlama hatası - logla ama uygulamayı durdurma
      debugPrint('Bildirim planlama hatası: $e');
      // Hata fırlatma - giriş işlemini engellememeli
    }
  }

  Future<void> cancelAllNotifications() async {
    await _notifications.cancelAll();
    // Bildirimlerin iptal edildiğini kaydet
    final prefs = await SharedPreferences.getInstance();
    await prefs.setBool(NOTIFICATION_SCHEDULED_KEY, false);
  }



  // Android bildirim durumunu kontrol et
  Future<void> checkAndroidNotificationStatus() async {
    
    final androidImplementation = _notifications.resolvePlatformSpecificImplementation<AndroidFlutterLocalNotificationsPlugin>();
    if (androidImplementation != null) {
      final areNotificationsEnabled = await androidImplementation.areNotificationsEnabled();
      
      if (areNotificationsEnabled == false) {
      }
    }
  }

  // Firebase Messaging remote notification'ı göster
  Future<void> showRemoteNotification({
    required String title,
    required String body,
    Map<String, dynamic>? data,
  }) async {
    const androidDetails = AndroidNotificationDetails(
      'remote_notifications',
      'Push Bildirimleri',
      channelDescription: 'Uzak sunucudan gelen bildirimler',
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

    // Benzersiz ID oluştur (timestamp kullan)
    final notificationId = DateTime.now().millisecondsSinceEpoch.remainder(100000);

    await _notifications.show(
      notificationId,
      title,
      body,
      details,
      payload: data != null ? data.toString() : null,
    );
  }
  
} 