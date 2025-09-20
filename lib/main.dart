import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter/foundation.dart';
import 'package:firebase_core/firebase_core.dart';
import 'package:firebase_messaging/firebase_messaging.dart';
import 'package:flutter_localizations/flutter_localizations.dart';
import 'package:provider/provider.dart';
import 'firebase_options.dart';
import 'services/device_service.dart';
import 'services/notification_service.dart';
import 'services/language_service.dart';
import 'services/premium_service.dart';
import 'l10n/app_localizations.dart';

import 'screens/splash_screen.dart';
import 'screens/language_selection_screen.dart';
import 'screens/login_screen.dart';
import 'screens/register_screen.dart';
import 'screens/home_screen.dart';
import 'screens/admin_screen.dart';
import 'screens/premium_screen.dart';
import 'screens/test_premium_screen.dart';
import 'screens/subscription_screen.dart';

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
    
    // Android bildirim durumunu kontrol et
    await notificationService.checkAndroidNotificationStatus();
    
    // PremiumService'i initialize et
    print('💎 Initializing PremiumService...');
    final premiumService = PremiumService();
    await premiumService.initialize();
    print('✅ PremiumService initialized');
    
    print('✅ NotificationService initialized');
    
  } catch (e, stackTrace) {
    print('❌ Firebase initialization error:');
    print('Error: $e');
    print('Stack trace: $stackTrace');
  }

  runApp(
    MultiProvider(
      providers: [
        ChangeNotifierProvider(create: (context) => LanguageService()),
        ChangeNotifierProvider(create: (context) => PremiumService()),
      ],
      child: const MyApp(),
    ),
  );
  print('📱 Application started');
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return Consumer<LanguageService>(
      builder: (context, languageService, child) {
        return MaterialApp(
          title: 'ALP',
          debugShowCheckedModeBanner: false,
          
          // Localization delegates
          localizationsDelegates: const [
            AppLocalizations.delegate,
            GlobalMaterialLocalizations.delegate,
            GlobalWidgetsLocalizations.delegate,
            GlobalCupertinoLocalizations.delegate,
          ],
          
          // Supported locales
          supportedLocales: LanguageService.supportedLocales,
          
          // Current locale
          locale: languageService.currentLocale,
          
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
          initialRoute: '/language-selection',
          routes: {
            '/language-selection': (context) => const LanguageSelectionScreen(),
            '/splash': (context) => const SplashScreen(),
            '/home': (context) => const HomeScreen(),
            '/login': (context) => const LoginScreen(),
            '/register': (context) => const RegisterScreen(),
            '/admin': (context) => const AdminScreen(),
            '/premium': (context) => const PremiumScreen(),
            '/subscription': (context) => const SubscriptionScreen(),
            '/test-premium': (context) => const TestPremiumScreen(),
          },
        );
      },
    );
  }
}
