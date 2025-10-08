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

// AppInitializer widget'ı - dil seçimini kontrol eder
class AppInitializer extends StatefulWidget {
  const AppInitializer({super.key});

  @override
  State<AppInitializer> createState() => _AppInitializerState();
}

class _AppInitializerState extends State<AppInitializer> {
  bool _isInitialized = false;
  Widget? _initialRoute;

  @override
  void initState() {
    super.initState();
    _initializeApp();
  }

  Future<void> _initializeApp() async {
    final languageService = Provider.of<LanguageService>(context, listen: false);
    
    // LanguageService'in yüklenmesini bekle
    await languageService.initializeLanguage();
    
    if (mounted) {
      setState(() {
        _isInitialized = true;
        // Dil seçimi yapılmışsa splash screen'e, yapılmamışsa dil seçimi ekranına git
        _initialRoute = languageService.isLanguageSelected 
            ? const SplashScreen() 
            : const LanguageSelectionScreen();
      });
    }
  }

  @override
  Widget build(BuildContext context) {
    if (!_isInitialized) {
      // Yüklenirken loading göster
      return const Scaffold(
        body: Center(
          child: CircularProgressIndicator(),
        ),
      );
    }
    
    return _initialRoute!;
  }
}

// Firebase background message handler
@pragma('vm:entry-point')
Future<void> _firebaseMessagingBackgroundHandler(RemoteMessage message) async {
  await Firebase.initializeApp(options: DefaultFirebaseOptions.currentPlatform);
}

void main() async {
  WidgetsFlutterBinding.ensureInitialized();

  // Android sistem UI ayarlarını yapılandır
  await SystemChrome.setPreferredOrientations([
    DeviceOrientation.portraitUp,
    DeviceOrientation.portraitDown,
  ]);

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

  try {
    await Firebase.initializeApp(
      options: DefaultFirebaseOptions.currentPlatform,
    );

    // FCM background message handler'ı kur
    FirebaseMessaging.onBackgroundMessage(_firebaseMessagingBackgroundHandler);
    
    // DeviceService'i initialize et
    final deviceService = DeviceService();
    deviceService.setupTokenRefreshListener();
    
    // NotificationService'i initialize et
    final notificationService = NotificationService();
    await notificationService.initialize();
    await notificationService.requestPermissions();
    
    // Android bildirim durumunu kontrol et
    await notificationService.checkAndroidNotificationStatus();
    
    // PremiumService'i initialize et
    final premiumService = PremiumService();
    await premiumService.initialize();
    
    
  } catch (e, stackTrace) {
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
          home: const AppInitializer(),
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
