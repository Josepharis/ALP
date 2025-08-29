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

  // Bildirim saatleri için getter'lar
  List<tz.TZDateTime> get _notificationTimes {
    // Türkiye saati için özel timezone
    final turkeyTime = tz.getLocation('Europe/Istanbul');
    final now = tz.TZDateTime.now(turkeyTime);
    print('Şu anki Türkiye saati: $now');
    
    // Türkiye saati: 15:00, 15:10, 15:20
    final times = [
      tz.TZDateTime(turkeyTime, now.year, now.month, now.day, 15, 0),
      tz.TZDateTime(turkeyTime, now.year, now.month, now.day, 15, 10),
      tz.TZDateTime(turkeyTime, now.year, now.month, now.day, 15, 20),
    ];

    // Eğer belirlenen saatler geçtiyse, bir sonraki güne planla
    final scheduledTimes = times.map((time) {
      if (time.isBefore(now)) {
        final nextDay = time.add(const Duration(days: 1));
        print('Saat geçmiş, yarına planlanıyor: $nextDay');
        return nextDay;
      } else {
        print('Bugün için planlanıyor: $time');
        return time;
      }
    }).toList();

    return scheduledTimes;
  }

  Future<void> initialize() async {
    print('Notification service başlatılıyor...');
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
    print('Günlük bildirimler planlanıyor...');
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
    
    // 3 farklı bildirim planla
    for (int i = 0; i < scheduledTimes.length; i++) {
      final scheduledTime = scheduledTimes[i];
      final notificationId = i; // 0, 1, 2
      
      await _notifications.zonedSchedule(
        notificationId,
        'Günlük Quiz Zamanı! 📚',
        'Bugünkü anestezi sorularını çözmeyi unutmayın!',
        scheduledTime,
        details,
        androidScheduleMode: AndroidScheduleMode.exactAllowWhileIdle,
        uiLocalNotificationDateInterpretation: UILocalNotificationDateInterpretation.absoluteTime,
        matchDateTimeComponents: DateTimeComponents.time,
      );

      print('Bildirim ${i + 1} planlandı: ${scheduledTime.toString()}');
    }
    
    // Planlanan bildirimleri kontrol et
    final pendingNotifications = await _notifications.pendingNotificationRequests();
    print('Toplam planlanan bildirim sayısı: ${pendingNotifications.length}');
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

  // Test bildirimi gönder (hem iOS hem Android)
  Future<void> sendTestNotification() async {
    print('Test bildirimi gönderiliyor...');
    
    const androidDetails = AndroidNotificationDetails(
      'test_channel',
      'Test Kanalı',
      channelDescription: 'Test bildirimleri için',
      importance: Importance.max,
      priority: Priority.high,
      enableVibration: true,
      playSound: true,
      icon: '@mipmap/launcher_icon',
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

    await _notifications.show(
      999,
      'Test Bildirimi 🔔',
      'Bildirimler çalışıyor!',
      details,
    );
    
    print('Test bildirimi gönderildi');
  }

  // Hemen test bildirimi gönder (1 dakika sonra)
  Future<void> sendImmediateTestNotification() async {
    print('Hemen test bildirimi planlanıyor...');
    
    const androidDetails = AndroidNotificationDetails(
      'test_channel',
      'Test Kanalı',
      channelDescription: 'Test bildirimleri için',
      importance: Importance.max,
      priority: Priority.high,
      enableVibration: true,
      playSound: true,
      icon: '@mipmap/launcher_icon',
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

    // 1 dakika sonra test bildirimi
    final turkeyTime = tz.getLocation('Europe/Istanbul');
    final now = tz.TZDateTime.now(turkeyTime);
    final testTime = now.add(const Duration(minutes: 1));

    await _notifications.zonedSchedule(
      998,
      'Test Bildirimi 🔔',
      '1 dakika sonra geldi!',
      testTime,
      details,
      androidScheduleMode: AndroidScheduleMode.exactAllowWhileIdle,
      uiLocalNotificationDateInterpretation: UILocalNotificationDateInterpretation.absoluteTime,
    );

    print('Test bildirimi 1 dakika sonra planlandı: $testTime');
  }

  // Android bildirim durumunu kontrol et
  Future<void> checkAndroidNotificationStatus() async {
    print('Android bildirim durumu kontrol ediliyor...');
    
    final androidImplementation = _notifications.resolvePlatformSpecificImplementation<AndroidFlutterLocalNotificationsPlugin>();
    if (androidImplementation != null) {
      final areNotificationsEnabled = await androidImplementation.areNotificationsEnabled();
      print('Android bildirimler aktif mi: $areNotificationsEnabled');
      
      if (areNotificationsEnabled == false) {
        print('⚠️ Android bildirimler devre dışı! Kullanıcıdan izin istenmeli.');
      }
    }
  }
} 