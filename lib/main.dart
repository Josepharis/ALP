import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter/foundation.dart';
import 'dart:async';
import 'package:firebase_core/firebase_core.dart';
import 'package:firebase_messaging/firebase_messaging.dart';
import 'package:flutter_localizations/flutter_localizations.dart';
import 'package:provider/provider.dart';
import 'package:shared_preferences/shared_preferences.dart';
import 'package:timezone/data/latest.dart' as tz;
import 'firebase_options.dart';
import 'services/device_service.dart';
import 'services/notification_service.dart';
import 'services/language_service.dart';
import 'services/premium_service.dart';
import 'services/auth_service.dart';
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
    // Önce SharedPreferences'tan direkt kontrol et - en garantili yöntem
    final prefs = await SharedPreferences.getInstance();
    final languageKey = 'selected_language';
    final languageCode = prefs.getString(languageKey);
    final hasLanguageSelected = languageCode != null && languageCode.isNotEmpty;
    
    // LanguageService'i de initialize et
    final languageService = Provider.of<LanguageService>(context, listen: false);
    await languageService.initializeLanguage();
    
    if (mounted) {
      setState(() {
        _isInitialized = true;
        // Dil seçimi yapılmışsa splash screen'e, yapılmamışsa dil seçimi ekranına git
        _initialRoute = hasLanguageSelected 
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
  
  // Timezone'ları initialize et (background handler ayrı isolate'de çalışır)
  tz.initializeTimeZones();
  
  // NotificationService'i kullanarak bildirimi göster
  final notificationService = NotificationService();
  await notificationService.showRemoteNotification(
    title: message.notification?.title ?? 'Yeni Bildirim',
    body: message.notification?.body ?? '',
    data: message.data,
  );
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
    
    // FCM foreground message handler'ı kur
    FirebaseMessaging.onMessage.listen((RemoteMessage message) {
      debugPrint('Foreground mesaj alındı: ${message.messageId}');
      // Bildirimi göster
      notificationService.showRemoteNotification(
        title: message.notification?.title ?? 'Yeni Bildirim',
        body: message.notification?.body ?? '',
        data: message.data,
      );
    });
    
    // PremiumService'i initialize et
    final premiumService = PremiumService();
    await premiumService.initialize();
    
    
  } catch (e) {
    debugPrint('Initialization error: $e');
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

// Global navigator key - her yerden erişilebilir
final GlobalKey<NavigatorState> navigatorKey = GlobalKey<NavigatorState>();

// Global device removal listener widget
class DeviceRemovalListener extends StatefulWidget {
  final Widget child;
  
  const DeviceRemovalListener({super.key, required this.child});

  @override
  State<DeviceRemovalListener> createState() => _DeviceRemovalListenerState();
}

class _DeviceRemovalListenerState extends State<DeviceRemovalListener> {
  final DeviceService _deviceService = DeviceService();
  final AuthService _authService = AuthService();
  StreamSubscription? _authStateSubscription;

  @override
  void initState() {
    super.initState();
    // Auth state değişikliklerini dinle
    _authStateSubscription = _authService.authStateChanges.listen((user) {
      if (user != null) {
        // Kullanıcı giriş yaptı - listener'ı başlat
        _startDeviceRemovalListener();
      } else {
        // Kullanıcı çıkış yaptı - listener'ı durdur
        _deviceService.stopDeviceRemovalListener();
      }
    });
    
    // İlk yüklemede de kontrol et
    WidgetsBinding.instance.addPostFrameCallback((_) {
      _startListenerIfLoggedIn();
    });
  }

  void _startListenerIfLoggedIn() {
    final currentUser = _authService.currentUser;
    if (currentUser != null) {
      _startDeviceRemovalListener();
    }
  }

  void _startDeviceRemovalListener() {
    // Giriş yapıldıktan sonra kısa bir süre bekle - cihaz kaydının tamamlanması için
    Future.delayed(const Duration(seconds: 2), () {
      _deviceService.startDeviceRemovalListener(() async {
        // Cihaz kaldırıldı - otomatik çıkış yap
        try {
          await _authService.signOut();
          // Global navigator ile login'e yönlendir
          if (navigatorKey.currentState != null) {
            navigatorKey.currentState!.pushNamedAndRemoveUntil('/login', (route) => false);
          }
        } catch (e) {
          // Hata olsa bile login ekranına git
          if (navigatorKey.currentState != null) {
            navigatorKey.currentState!.pushNamedAndRemoveUntil('/login', (route) => false);
          }
        }
      });
    });
  }

  @override
  void dispose() {
    _authStateSubscription?.cancel();
    _deviceService.stopDeviceRemovalListener();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return widget.child;
  }
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return Consumer<LanguageService>(
      builder: (context, languageService, child) {
        return DeviceRemovalListener(
          child: MaterialApp(
            navigatorKey: navigatorKey,
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
          ),
        );
      },
    );
  }
}
