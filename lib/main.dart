import 'package:flutter/material.dart';
import 'package:firebase_core/firebase_core.dart';
import 'services/achievement_service.dart';

import 'screens/splash_screen.dart';
import 'screens/login_screen.dart';
import 'screens/register_screen.dart';
import 'screens/home_screen.dart';
import 'screens/achievements_screen.dart';

import 'theme/app_theme.dart';
import 'data/respiratory_questions.dart';
import 'data/anesthesia_station_questions.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await Firebase.initializeApp();

  // Örnek rozetleri oluştur (sadece geliştirme aşamasında)
  final achievementService = AchievementService();
  await achievementService.createSampleAchievements();
  print('Örnek rozetler oluşturuldu');

  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Anestezi',
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
        '/achievements': (context) => const AchievementsScreen(),
      },
    );
  }
}
