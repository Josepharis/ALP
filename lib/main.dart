import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:firebase_core/firebase_core.dart';
import 'package:firebase_messaging/firebase_messaging.dart';
import 'firebase_options.dart';
import 'services/device_service.dart';
import 'services/notification_service.dart';

import 'screens/splash_screen.dart';
import 'screens/login_screen.dart';
import 'screens/register_screen.dart';
import 'screens/home_screen.dart';
import 'screens/admin_screen.dart';

import 'theme/app_theme.dart';

// Firebase background message handler
@pragma('vm:entry-point')
Future<void> _firebaseMessagingBackgroundHandler(RemoteMessage message) async {
  await Firebase.initializeApp(options: DefaultFirebaseOptions.currentPlatform);
  print('📱 Background message alındı: ${message.messageId}');
  print('📱 Başlık: ${message.notification?.title}');
  print('📱 İçerik: ${message.notification?.body}');
}

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  print('🔄 Flutter binding initialized');

  // Android sistem UI ayarlarını yapılandır
  await SystemChrome.setPreferredOrientations([
    DeviceOrientation.portraitUp,
    DeviceOrientation.portraitDown,
  ]);
  print('📱 Device orientation set to portrait');

  // Sistem UI overlay stilini ayarla (günün sorusu ekranı kendi rengini ayarlayacak)
  SystemChrome.setSystemUIOverlayStyle(
    const SystemUiOverlayStyle(
      statusBarColor: Colors.transparent, // Varsayılan şeffaf
      statusBarIconBrightness: Brightness.light,
      statusBarBrightness: Brightness.dark,
      systemNavigationBarColor: Colors.transparent,
      systemNavigationBarIconBrightness: Brightness.light,
      systemNavigationBarDividerColor: Colors.transparent,
    ),
  );
  print('🎨 System UI style configured');

  try {
    print('🔥 Firebase initialization starting...');
    await Firebase.initializeApp(
      options: DefaultFirebaseOptions.currentPlatform,
    );
    print('✅ Firebase successfully initialized');

    // FCM background message handler'ı kur
    print('📩 Setting up FCM background message handler...');
    FirebaseMessaging.onBackgroundMessage(_firebaseMessagingBackgroundHandler);
    print('✅ FCM background handler setup complete');
    
    // DeviceService'i initialize et
    print('📱 Initializing DeviceService...');
    final deviceService = DeviceService();
    deviceService.setupTokenRefreshListener();
    print('✅ DeviceService initialized');
    
    // NotificationService'i initialize et
    print('🔔 Initializing NotificationService...');
    final notificationService = NotificationService();
    await notificationService.initialize();
    await notificationService.requestPermissions();
    print('✅ NotificationService initialized');
    
  } catch (e, stackTrace) {
    print('❌ Firebase initialization error:');
    print('Error: $e');
    print('Stack trace: $stackTrace');
  }

  runApp(const MyApp());
  print('📱 Application started');
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'ALP',
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        brightness: Brightness.dark,
        scaffoldBackgroundColor: Colors.black,
        primaryColor: Colors.indigo,
        colorScheme: ColorScheme.dark(
          primary: Colors.indigo,
          secondary: Colors.blueAccent,
        ),
        textTheme: const TextTheme(
          bodyLarge: TextStyle(color: Colors.white),
          bodyMedium: TextStyle(color: Colors.white),
        ),
      ),
      initialRoute: '/splash',
      routes: {
        '/splash': (context) => const SplashScreen(),
        '/home': (context) => const HomeScreen(),
        '/login': (context) => const LoginScreen(),
        '/register': (context) => const RegisterScreen(),
        '/admin': (context) => const AdminScreen(),
      },
    );
  }
}
