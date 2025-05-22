import 'package:anestezi/screens/mistakes_screen.dart';
import 'package:flutter/material.dart';
import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:provider/provider.dart';
import 'package:page_transition/page_transition.dart';
import 'dart:ui';

import '../services/auth_service.dart';
import '../services/quiz_service.dart';
import '../services/tutorial_service.dart';
import '../models/user_activity.dart';
import '../models/daily_question.dart';
import '../models/quiz.dart';
import '../models/question.dart';
import '../screens/quiz_screen.dart';
import '../screens/achievements_screen.dart';
import '../theme/app_theme.dart';
import '../data/anesthesia_questions.dart';
import '../data/operating_room_questions.dart';
import '../data/respiratory_questions.dart';
import '../data/anesthesia_station_questions.dart';
import '../data/cardiovascular_questions.dart';
import '../data/cardiovascular_questions_2.dart';
import '../widgets/interactive_tutorial.dart';
import '../widgets/features_showcase.dart';

import 'leaderboard_screen.dart';
import 'profile_screen.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> with TickerProviderStateMixin {
  int _currentIndex = 0;
  late TabController _tabController;
  UserActivity? _userActivity;
  final List<GlobalKey<NavigatorState>> _navigatorKeys = [
    GlobalKey<NavigatorState>(),
    GlobalKey<NavigatorState>(),
    GlobalKey<NavigatorState>(),
    GlobalKey<NavigatorState>(),
    GlobalKey<NavigatorState>(),
  ];

  @override
  void initState() {
    super.initState();
    _tabController = TabController(length: 5, vsync: this);
    _tabController.addListener(() {
      if (!_tabController.indexIsChanging) {
        setState(() {
          _currentIndex = _tabController.index;
        });
      }
    });
    // Başlangıçta ana sayfayı göster
    _currentIndex = 0;
  }

  @override
  void dispose() {
    _tabController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return WillPopScope(
      onWillPop: () async {
        final isFirstRouteInCurrentTab =
            !await _navigatorKeys[_currentIndex].currentState!.maybePop();
        return isFirstRouteInCurrentTab;
      },
      child: Scaffold(
        extendBody: true,
        body: Container(
          decoration: BoxDecoration(
            gradient: LinearGradient(
              begin: Alignment.topLeft,
              end: Alignment.bottomRight,
              colors: [Colors.blue.shade900, Colors.black],
            ),
          ),
          child: Stack(
            children: [
              _buildOffstageNavigator(0),
              _buildOffstageNavigator(1),
              _buildOffstageNavigator(2),
              _buildOffstageNavigator(3),
              _buildOffstageNavigator(4),
            ],
          ),
        ),
        bottomNavigationBar: _buildBottomNav(),
      ),
    );
  }

  Widget _buildOffstageNavigator(int index) {
    return Offstage(
      offstage: _currentIndex != index,
      child: TabNavigator(
        navigatorKey: _navigatorKeys[index],
        tabItem: TabItem.values[index],
      ),
    );
  }

  Widget _buildBottomNav() {
    final screenHeight = MediaQuery.of(context).size.height;
    final bottomPadding = MediaQuery.of(context).padding.bottom;

    return Container(
      height: screenHeight * 0.07 + bottomPadding,
      margin: EdgeInsets.only(
        left: 16,
        right: 16,
        bottom: bottomPadding > 0 ? 0 : 8,
        top: 8,
      ),
      decoration: BoxDecoration(
        gradient: LinearGradient(
          begin: Alignment.topLeft,
          end: Alignment.bottomRight,
          colors: [
            Colors.blue.shade900.withOpacity(0.95),
            Colors.purple.shade900.withOpacity(0.95),
          ],
        ),
        borderRadius: BorderRadius.circular(30),
        border: Border.all(color: Colors.white.withOpacity(0.2), width: 1),
      ),
      child: ClipRRect(
        borderRadius: BorderRadius.circular(30),
        child: BackdropFilter(
          filter: ImageFilter.blur(sigmaX: 10, sigmaY: 10),
          child: Container(
            padding: EdgeInsets.only(bottom: bottomPadding),
            decoration: BoxDecoration(
              gradient: LinearGradient(
                begin: Alignment.topCenter,
                end: Alignment.bottomCenter,
                colors: [
                  Colors.white.withOpacity(0.1),
                  Colors.white.withOpacity(0.05),
                ],
              ),
              borderRadius: BorderRadius.circular(30),
            ),
            child: Theme(
              data: Theme.of(context).copyWith(canvasColor: Colors.transparent),
              child: BottomNavigationBar(
                currentIndex: _currentIndex,
                onTap: (index) {
                  setState(() {
                    _currentIndex = index;
                  });
                },
                backgroundColor: Colors.transparent,
                selectedItemColor: Colors.white,
                unselectedItemColor: Colors.white.withOpacity(0.5),
                type: BottomNavigationBarType.fixed,
                selectedLabelStyle: TextStyle(
                  fontWeight: FontWeight.bold,
                  fontSize: screenHeight * 0.011,
                ),
                unselectedLabelStyle: TextStyle(fontSize: screenHeight * 0.011),
                elevation: 0,
                items: [
                  _buildNavItem(Icons.home_rounded, 'Ana Sayfa', 0),
                  _buildNavItem(Icons.quiz_rounded, 'Quizler', 1),
                  _buildNavItem(Icons.assignment_late_rounded, 'Eksikler', 2),
                  _buildNavItem(Icons.leaderboard_rounded, 'Sıralama', 3),
                  _buildNavItem(Icons.person_rounded, 'Profil', 4),
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }

  BottomNavigationBarItem _buildNavItem(
    IconData icon,
    String label,
    int index,
  ) {
    final isSelected = _currentIndex == index;
    final screenHeight = MediaQuery.of(context).size.height;

    return BottomNavigationBarItem(
      icon: AnimatedContainer(
        duration: const Duration(milliseconds: 300),
        curve: Curves.easeInOut,
        padding: EdgeInsets.all(screenHeight * 0.006),
        decoration: BoxDecoration(
          gradient:
              isSelected
                  ? LinearGradient(
                    begin: Alignment.topLeft,
                    end: Alignment.bottomRight,
                    colors: [
                      Colors.white.withOpacity(0.2),
                      Colors.white.withOpacity(0.1),
                    ],
                  )
                  : null,
          borderRadius: BorderRadius.circular(20),
          border:
              isSelected
                  ? Border.all(color: Colors.white.withOpacity(0.3), width: 1)
                  : null,
        ),
        child: Stack(
          children: [
            AnimatedScale(
              duration: const Duration(milliseconds: 200),
              scale: isSelected ? 1.1 : 1.0,
              child: Icon(
                icon,
                size: screenHeight * 0.024,
                color:
                    isSelected ? Colors.white : Colors.white.withOpacity(0.5),
              ),
            ),
            if (isSelected)
              Positioned.fill(
                child: Container(
                  decoration: BoxDecoration(
                    shape: BoxShape.circle,
                    boxShadow: [
                      BoxShadow(
                        color: Colors.white.withOpacity(0.3),
                        blurRadius: 8,
                        spreadRadius: 1,
                      ),
                    ],
                  ),
                ),
              ),
          ],
        ),
      ),
      label: label,
    );
  }

  // Tab değiştirme metodu ekle
  void switchToTab(int index) {
    setState(() {
      _currentIndex = index;
    });
    _tabController.animateTo(index);
  }
}

enum TabItem { home, quizzes, mistakes, leaderboard, profile }

class TabNavigator extends StatelessWidget {
  const TabNavigator({
    super.key,
    required this.navigatorKey,
    required this.tabItem,
  });

  final GlobalKey<NavigatorState> navigatorKey;
  final TabItem tabItem;

  @override
  Widget build(BuildContext context) {
    Widget child;
    switch (tabItem) {
      case TabItem.home:
        child = const HomeContent();
        break;
      case TabItem.quizzes:
        child = const QuizListScreen();
        break;
      case TabItem.mistakes:
        child = const MistakesScreen();
        break;
      case TabItem.leaderboard:
        child = const LeaderboardScreen();
        break;
      case TabItem.profile:
        child = const ProfileScreen();
        break;
    }

    return Navigator(
      key: navigatorKey,
      onGenerateRoute: (routeSettings) {
        return PageTransition(
          type: PageTransitionType.fade,
          duration: const Duration(milliseconds: 300),
          child: child,
        );
      },
    );
  }
}

// Quizler sayfası için yeni widget
class QuizListScreen extends StatelessWidget {
  const QuizListScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: SingleChildScrollView(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Padding(
              padding: const EdgeInsets.all(20),
              child: Row(
                children: [
                  Container(
                    padding: const EdgeInsets.all(8),
                    decoration: BoxDecoration(
                      color: Colors.blue.withOpacity(0.2),
                      borderRadius: BorderRadius.circular(12),
                    ),
                    child: const Icon(Icons.quiz, color: Colors.blue),
                  ),
                  const SizedBox(width: 12),
                  const Text(
                    'Tüm Quizler',
                    style: TextStyle(
                      fontSize: 24,
                      fontWeight: FontWeight.bold,
                      color: Colors.white,
                    ),
                  ),
                ],
              ),
            ),
            const SizedBox(height: 16),
            _buildQuizList(context),
          ],
        ),
      ),
    );
  }

  Widget _buildQuizList(BuildContext context) {
    final List<Map<String, dynamic>> quizCategories = [
      {
        'title': 'Anestezi',
        'icon': Icons.health_and_safety,
        'questions': anesthesiaQuestions,
        'color': Colors.blue.shade700,
      },
      {
        'title': 'Anestezi İstasyonu',
        'icon': Icons.medical_services,
        'questions': anesthesiaStationQuestions,
        'color': Colors.purple.shade700,
      },
      {
        'title': 'Kardiyovasküler 1',
        'icon': Icons.favorite,
        'questions': cardiovascularQuestions,
        'color': Colors.red.shade700,
      },
      {
        'title': 'Kardiyovasküler 2',
        'icon': Icons.monitor_heart,
        'questions': cardiovascularQuestions2,
        'color': Colors.pink.shade700,
      },
      {
        'title': 'Solunum',
        'icon': Icons.air,
        'questions': respiratoryQuestions,
        'color': Colors.teal.shade700,
      },
      {
        'title': 'Ameliyathane',
        'icon': Icons.local_hospital,
        'questions': operatingRoomQuestions,
        'color': Colors.indigo.shade700,
      },
    ];

    return ListView.builder(
      shrinkWrap: true,
      physics: const NeverScrollableScrollPhysics(),
      padding: const EdgeInsets.symmetric(horizontal: 16.0, vertical: 8.0),
      itemCount: quizCategories.length,
      itemBuilder: (context, index) {
        final category = quizCategories[index];
        final questionCount = (category['questions'] as List<Question>).length;

        return Container(
          margin: const EdgeInsets.only(bottom: 16.0),
          child: GestureDetector(
            onTap: () {
              Navigator.push(
                context,
                MaterialPageRoute(
                  builder:
                      (context) => QuizScreen(
                        categoryName: category['title'] as String,
                        questions: category['questions'] as List<Question>,
                      ),
                ),
              );
            },
            child: Container(
              decoration: BoxDecoration(
                gradient: LinearGradient(
                  begin: Alignment.topLeft,
                  end: Alignment.bottomRight,
                  colors: [
                    category['color'] as Color,
                    (category['color'] as Color).withOpacity(0.7),
                  ],
                ),
                borderRadius: BorderRadius.circular(20),
                boxShadow: [
                  BoxShadow(
                    color: (category['color'] as Color).withOpacity(0.3),
                    blurRadius: 10,
                    spreadRadius: 2,
                  ),
                ],
              ),
              child: Padding(
                padding: const EdgeInsets.all(16.0),
                child: Row(
                  children: [
                    Container(
                      padding: const EdgeInsets.all(8),
                      decoration: BoxDecoration(
                        color: Colors.white.withOpacity(0.2),
                        borderRadius: BorderRadius.circular(12),
                      ),
                      child: Icon(
                        category['icon'] as IconData,
                        color: Colors.white,
                        size: 24,
                      ),
                    ),
                    const SizedBox(width: 12),
                    Expanded(
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text(
                            category['title'] as String,
                            style: const TextStyle(
                              fontSize: 16,
                              fontWeight: FontWeight.bold,
                              color: Colors.white,
                            ),
                            maxLines: 1,
                            overflow: TextOverflow.ellipsis,
                          ),
                          const SizedBox(height: 2),
                          Text(
                            '$questionCount Soru',
                            style: TextStyle(
                              fontSize: 12,
                              color: Colors.white.withOpacity(0.8),
                            ),
                          ),
                        ],
                      ),
                    ),
                    Container(
                      padding: const EdgeInsets.symmetric(
                        horizontal: 8,
                        vertical: 4,
                      ),
                      decoration: BoxDecoration(
                        color: Colors.white.withOpacity(0.2),
                        borderRadius: BorderRadius.circular(16),
                      ),
                      child: const Row(
                        mainAxisSize: MainAxisSize.min,
                        children: [
                          Text(
                            'Başla',
                            style: TextStyle(
                              color: Colors.white,
                              fontWeight: FontWeight.w500,
                              fontSize: 12,
                            ),
                          ),
                          SizedBox(width: 2),
                          Icon(
                            Icons.arrow_forward_ios,
                            color: Colors.white,
                            size: 12,
                          ),
                        ],
                      ),
                    ),
                  ],
                ),
              ),
            ),
          ),
        );
      },
    );
  }
}

// Ana sayfa içeriğini ayrı bir widget'a taşıyalım
class HomeContent extends StatefulWidget {
  const HomeContent({super.key});

  @override
  State<HomeContent> createState() => _HomeContentState();
}

class _HomeContentState extends State<HomeContent> {
  final QuizService _quizService = QuizService();
  final AuthService _authService = AuthService();
  final TutorialService _tutorialService = TutorialService();
  String _userName = 'Kullanıcı';
  UserActivity? _userActivity;
  DailyQuestion? _dailyQuestion;
  List<Quiz> _ongoingQuizzes = [];
  List<Quiz> _completedQuizzes = [];
  List<Quiz> _popularQuizzes = [];
  bool _isLoading = true;

  @override
  void initState() {
    super.initState();
    _loadData();

    // Tanıtımı göster
    WidgetsBinding.instance.addPostFrameCallback((_) {
      _checkAndShowTutorial();
    });
  }

  Future<void> _checkAndShowTutorial() async {
    // Ana tanıtımı kontrol et
    final shouldShowTutorial = await _tutorialService.shouldShowTutorial();
    if (shouldShowTutorial) {
      if (!mounted) return;

      await Future.delayed(const Duration(milliseconds: 1000));

      if (!mounted) return;

      // Ana tanıtımı göster
      await InteractiveTutorial.show(
        context,
        steps: _tutorialService.getTutorialSteps(),
        onComplete: () {
          _tutorialService.markTutorialAsShown();
        },
      );
    } else {
      // Özellikleri kontrol et ve göster
      await _checkAndShowFeatures();
    }
  }

  Future<void> _checkAndShowFeatures() async {
    // Günün sorusu özelliklerini kontrol et
    if (await _tutorialService.shouldShowFeature('daily_question')) {
      if (!mounted) return;

      // Bir süre bekle
      await Future.delayed(const Duration(seconds: 2));

      if (!mounted) return;

      // Günün sorusu özelliklerini göster
      _showDailyQuestionFeatures();
    }
  }

  void _showDailyQuestionFeatures() {
    showModalBottomSheet(
      context: context,
      backgroundColor: Colors.transparent,
      builder: (context) {
        return Container(
          padding: const EdgeInsets.all(16),
          decoration: BoxDecoration(
            gradient: LinearGradient(
              begin: Alignment.topLeft,
              end: Alignment.bottomRight,
              colors: [Colors.indigo.shade900, Colors.black],
            ),
            borderRadius: const BorderRadius.only(
              topLeft: Radius.circular(20),
              topRight: Radius.circular(20),
            ),
          ),
          child: FeaturesShowcase(
            title: 'Günün Sorusu Özellikleri',
            features: _tutorialService.getDailyQuestionFeatures(),
            onClose: () {
              Navigator.pop(context);
              _tutorialService.markFeatureAsShown('daily_question');

              // Biraz bekle ve quiz özelliklerini göster
              Future.delayed(const Duration(seconds: 2), () {
                if (mounted) {
                  _checkQuizFeatures();
                }
              });
            },
          ),
        );
      },
    );
  }

  Future<void> _checkQuizFeatures() async {
    if (await _tutorialService.shouldShowFeature('quizzes')) {
      if (!mounted) return;

      showModalBottomSheet(
        context: context,
        backgroundColor: Colors.transparent,
        builder: (context) {
          return Container(
            padding: const EdgeInsets.all(16),
            decoration: BoxDecoration(
              gradient: LinearGradient(
                begin: Alignment.topLeft,
                end: Alignment.bottomRight,
                colors: [Colors.indigo.shade900, Colors.black],
              ),
              borderRadius: const BorderRadius.only(
                topLeft: Radius.circular(20),
                topRight: Radius.circular(20),
              ),
            ),
            child: FeaturesShowcase(
              title: 'Quiz Özellikleri',
              features: _tutorialService.getQuizFeatures(),
              onClose: () {
                Navigator.pop(context);
                _tutorialService.markFeatureAsShown('quizzes');
              },
            ),
          );
        },
      );
    }
  }

  Future<void> _loadData() async {
    setState(() {
      _isLoading = true;
    });

    try {
      // Kullanıcı bilgisini al
      final currentUser = _authService.currentUser;
      if (currentUser != null) {
        // Kullanıcı giriş yapmış, aktiviteyi güncelleyelim
        final userActivity = await _quizService.updateUserActivity();
        setState(() {
          _userActivity = userActivity;
          _userName = currentUser.displayName ?? 'Kullanıcı';
        });
      }

      // Günün sorusunu getir
      final dailyQuestion = await _quizService.getDailyQuestion();

      // Devam eden quizleri getir
      final ongoingQuizzes = await _quizService.getOngoingQuizzes();

      // Tamamlanan quizleri getir
      final completedQuizzes = await _quizService.getCompletedQuizzes();

      // Popüler quizleri getir
      final popularQuizzes = await _quizService.getPopularQuizzes();

      if (mounted) {
        setState(() {
          _dailyQuestion = dailyQuestion;
          _ongoingQuizzes = ongoingQuizzes;
          _completedQuizzes = completedQuizzes;
          _popularQuizzes = popularQuizzes;
          _isLoading = false;
        });
      }
    } catch (e) {
      print('Veri yükleme hatası: $e');
      if (mounted) {
        setState(() {
          _isLoading = false;
        });
      }
    }
  }

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child:
          _isLoading
              ? const Center(child: CircularProgressIndicator())
              : RefreshIndicator(
                onRefresh: _loadData,
                child: SingleChildScrollView(
                  physics: const AlwaysScrollableScrollPhysics(),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      _buildHeader(context),
                      _buildDailyStreak(),
                      _buildDailyQuestion(context),
                      _buildOngoingQuiz(),
                      _buildPopularQuizzes(context),
                      _buildFinishedQuiz(),
                    ],
                  ),
                ),
              ),
    );
  }

  Widget _buildHeader(BuildContext context) {
    return Container(
      padding: const EdgeInsets.all(20),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Row(
            children: [
              Container(
                padding: const EdgeInsets.all(2),
                decoration: BoxDecoration(
                  gradient: LinearGradient(
                    colors: [Colors.blue, Colors.purple.shade500],
                  ),
                  shape: BoxShape.circle,
                ),
                child: CircleAvatar(
                  radius: 24,
                  backgroundColor: Colors.grey[900],
                  backgroundImage:
                      _authService.currentUser?.photoURL != null
                          ? NetworkImage(_authService.currentUser!.photoURL!)
                          : null,
                  child:
                      _authService.currentUser?.photoURL == null
                          ? const Icon(Icons.person, color: Colors.white)
                          : null,
                ),
              ),
              const SizedBox(width: 12),
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  const Text(
                    'Hoş Geldin 👋',
                    style: TextStyle(color: Colors.grey, fontSize: 14),
                  ),
                  Text(
                    'Dr. $_userName',
                    style: const TextStyle(
                      fontSize: 20,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                ],
              ),
            ],
          ),
          Row(
            children: [
              _buildPointButton(
                Icons.stars,
                Colors.amber,
                _calculateTotalPoints().toString(),
              ),
            ],
          ),
        ],
      ),
    );
  }

  // Toplam puan hesaplama
  int _calculateTotalPoints() {
    // Kullanıcı aktivitesi henüz yoksa 0 döndür
    if (_userActivity == null) {
      return 0;
    }

    // Kullanıcı aktivitesindeki toplam puanları al
    return _userActivity!.totalPoints;
  }

  Widget _buildPointButton(IconData icon, Color color, String points) {
    return Container(
      padding: const EdgeInsets.symmetric(horizontal: 12, vertical: 8),
      decoration: BoxDecoration(
        color: color.withOpacity(0.2),
        borderRadius: BorderRadius.circular(12),
        border: Border.all(color: color.withOpacity(0.3), width: 1),
      ),
      child: Row(
        children: [
          Icon(icon, color: color),
          const SizedBox(width: 4),
          Text(
            points,
            style: TextStyle(color: color, fontWeight: FontWeight.bold),
          ),
          const SizedBox(width: 4),
          Text(
            'Puan',
            style: TextStyle(color: color, fontWeight: FontWeight.bold),
          ),
        ],
      ),
    );
  }

  Widget _buildDailyStreak() {
    // Kullanıcı aktivitesi henüz yoksa varsayılan değerler göster
    List<bool> weeklyStatus =
        _userActivity?.getWeeklyLoginStatus() ?? List.filled(7, false);

    // Bugünün haftanın hangi günü olduğunu hesapla (1: Pazartesi, 2: Salı, ... 7: Pazar)
    final now = DateTime.now();
    final todayWeekday = now.weekday; // 1-7 arası (Pazartesi: 1, Pazar: 7)

    // Haftanın günlerini Pazartesi'den Pazar'a sırala
    final weekdayNames = ['Pzt', 'Sal', 'Çar', 'Per', 'Cum', 'Cmt', 'Paz'];

    // Eğer kullanıcı aktivitesi yoksa, varsayılan olarak sadece bugünü işaretle
    if (_userActivity == null) {
      weeklyStatus = List.filled(7, false);
      final todayIndex =
          todayWeekday - 1; // 0-6 arası indeks (Pazartesi: 0, Pazar: 6)
      weeklyStatus[todayIndex] = true;
    }

    print('Günlük katılım durumu: $weeklyStatus');
    print(
      'Bugünün haftanın günü: $todayWeekday (${weekdayNames[todayWeekday - 1]})',
    );

    return Container(
      margin: const EdgeInsets.symmetric(horizontal: 12, vertical: 8),
      padding: const EdgeInsets.all(16),
      decoration: BoxDecoration(
        gradient: LinearGradient(
          colors: [Colors.blue.shade800, Colors.purple.shade900],
        ),
        borderRadius: BorderRadius.circular(16),
        boxShadow: [
          BoxShadow(
            color: Colors.blue.withOpacity(0.2),
            blurRadius: 8,
            spreadRadius: 1,
          ),
        ],
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Row(
            children: [
              const Icon(Icons.local_fire_department, color: Colors.orange),
              const SizedBox(width: 8),
              Text(
                '${_userActivity?.dailyStreak ?? 1} Günlük Katılım!',
                style: const TextStyle(
                  fontSize: 18,
                  fontWeight: FontWeight.bold,
                  color: Colors.white,
                ),
              ),
            ],
          ),
          const SizedBox(height: 20),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceAround,
            children: List.generate(7, (index) {
              // Pazartesi'den Pazar'a doğru günleri göster
              final dayName = weekdayNames[index];
              // Bugünü hesapla
              final isToday = index == (todayWeekday - 1);
              // Kullanıcının o günde giriş yapıp yapmadığını kontrol et
              final isCompleted = weeklyStatus[index];

              return Column(
                children: [
                  Container(
                    width: 34,
                    height: 34,
                    decoration: BoxDecoration(
                      color:
                          isCompleted
                              ? Colors.green
                              : isToday
                              ? Colors.blue.shade700
                              : Colors.white.withOpacity(0.1),
                      shape: BoxShape.circle,
                    ),
                    child: Center(
                      child:
                          isCompleted
                              ? const Icon(
                                Icons.check,
                                color: Colors.white,
                                size: 18,
                              )
                              : Text(
                                dayName,
                                style: TextStyle(
                                  fontSize: 12,
                                  fontWeight: FontWeight.bold,
                                  color:
                                      isToday
                                          ? Colors.white
                                          : Colors.white.withOpacity(0.7),
                                ),
                              ),
                    ),
                  ),
                  const SizedBox(height: 4),
                  Text(
                    dayName,
                    style: TextStyle(
                      fontSize: 10,
                      color:
                          isToday
                              ? Colors.white
                              : Colors.white.withOpacity(0.7),
                    ),
                  ),
                ],
              );
            }),
          ),
        ],
      ),
    );
  }

  Widget _buildDailyQuestion(BuildContext context) {
    return Container(
      margin: const EdgeInsets.symmetric(horizontal: 12, vertical: 4),
      padding: const EdgeInsets.all(12),
      decoration: BoxDecoration(
        gradient: LinearGradient(
          colors: [Colors.orange.shade800, Colors.red.shade900],
        ),
        borderRadius: BorderRadius.circular(12),
        boxShadow: [
          BoxShadow(
            color: Colors.orange.withOpacity(0.2),
            blurRadius: 8,
            spreadRadius: 1,
          ),
        ],
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Row(
            children: [
              Container(
                padding: const EdgeInsets.all(4),
                decoration: BoxDecoration(
                  color: Colors.white.withOpacity(0.2),
                  borderRadius: BorderRadius.circular(8),
                ),
                child: const Icon(
                  Icons.lightbulb,
                  color: Colors.yellow,
                  size: 16,
                ),
              ),
              const SizedBox(width: 6),
              const Text(
                'Günün Sorusu',
                style: TextStyle(
                  fontSize: 14,
                  fontWeight: FontWeight.bold,
                  color: Colors.white,
                ),
              ),
              const Spacer(),
              Container(
                padding: const EdgeInsets.symmetric(horizontal: 6, vertical: 2),
                decoration: BoxDecoration(
                  color: Colors.white.withOpacity(0.2),
                  borderRadius: BorderRadius.circular(12),
                ),
                child: Text(
                  '${_dailyQuestion?.pointMultiplier ?? 2}X Puan',
                  style: const TextStyle(
                    color: Colors.white,
                    fontWeight: FontWeight.bold,
                    fontSize: 9,
                  ),
                ),
              ),
            ],
          ),
          const SizedBox(height: 8),
          Text(
            _dailyQuestion?.question.question ??
                'Anestezide propofol hangi reseptör üzerinden etki gösterir?',
            style: const TextStyle(
              fontSize: 14,
              fontWeight: FontWeight.w500,
              color: Colors.white,
            ),
          ),
          const SizedBox(height: 12),
          Row(
            children: [
              Expanded(
                child: ElevatedButton(
                  onPressed: () {
                    // Günün sorusunu cevaplama ekranına git
                    if (_dailyQuestion != null) {
                      _showDailyQuestionDialog(context, _dailyQuestion!);
                    }
                  },
                  style: ElevatedButton.styleFrom(
                    backgroundColor: Colors.white.withOpacity(0.2),
                    foregroundColor: Colors.white,
                    padding: const EdgeInsets.symmetric(vertical: 8),
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(8),
                    ),
                  ),
                  child: const Text('Cevapla', style: TextStyle(fontSize: 12)),
                ),
              ),
            ],
          ),
        ],
      ),
    );
  }

  void _showDailyQuestionDialog(
    BuildContext context,
    DailyQuestion dailyQuestion,
  ) {
    showDialog(
      context: context,
      builder:
          (context) => AlertDialog(
            backgroundColor: Colors.indigo.shade900,
            title: Text(
              dailyQuestion.question.question,
              style: const TextStyle(color: Colors.white, fontSize: 16),
            ),
            content: Column(
              mainAxisSize: MainAxisSize.min,
              children: List.generate(
                dailyQuestion.question.options.length,
                (index) => ListTile(
                  title: Text(
                    dailyQuestion.question.options[index],
                    style: const TextStyle(color: Colors.white, fontSize: 14),
                  ),
                  leading: Radio<int>(
                    value: index,
                    groupValue: null,
                    onChanged: (value) {
                      Navigator.of(context).pop();

                      // Doğru cevap kontrolü
                      final isCorrect =
                          index == dailyQuestion.question.correctAnswerIndex;
                      _showAnswerResultDialog(
                        context,
                        isCorrect,
                        dailyQuestion,
                      );
                    },
                    activeColor: Colors.green,
                  ),
                ),
              ),
            ),
          ),
    );
  }

  void _showAnswerResultDialog(
    BuildContext context,
    bool isCorrect,
    DailyQuestion dailyQuestion,
  ) {
    showDialog(
      context: context,
      builder:
          (context) => AlertDialog(
            backgroundColor:
                isCorrect ? Colors.green.shade900 : Colors.red.shade900,
            title: Text(
              isCorrect ? 'Doğru Cevap!' : 'Yanlış Cevap!',
              style: const TextStyle(color: Colors.white),
            ),
            content: Column(
              mainAxisSize: MainAxisSize.min,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  'Doğru Cevap: ${dailyQuestion.question.options[dailyQuestion.question.correctAnswerIndex]}',
                  style: const TextStyle(color: Colors.white),
                ),
                const SizedBox(height: 12),
                if (dailyQuestion.question.explanation != null &&
                    dailyQuestion.question.explanation!.isNotEmpty)
                  Text(
                    'Açıklama: ${dailyQuestion.question.explanation}',
                    style: const TextStyle(color: Colors.white70),
                  ),
              ],
            ),
            actions: [
              TextButton(
                onPressed: () => Navigator.of(context).pop(),
                child: const Text(
                  'Tamam',
                  style: TextStyle(color: Colors.white),
                ),
              ),
            ],
          ),
    );
  }

  Widget _buildOngoingQuiz() {
    if (_ongoingQuizzes.isEmpty) {
      return Padding(
        padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 8),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            const Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text(
                  'Devam Eden',
                  style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
                ),
                Text('Tümünü Gör', style: TextStyle(color: Colors.blue)),
              ],
            ),
            const SizedBox(height: 16),
            Container(
              padding: const EdgeInsets.all(16),
              decoration: BoxDecoration(
                gradient: LinearGradient(
                  colors: [Colors.purple.shade900, Colors.blue.shade900],
                ),
                borderRadius: BorderRadius.circular(20),
                boxShadow: [
                  BoxShadow(
                    color: Colors.purple.withOpacity(0.2),
                    blurRadius: 10,
                    spreadRadius: 2,
                  ),
                ],
              ),
              child: const Center(
                child: Text(
                  'Henüz devam eden quiz bulunmamaktadır.',
                  style: TextStyle(color: Colors.white),
                ),
              ),
            ),
          ],
        ),
      );
    }

    // Ana sayfada maksimum 3 quiz gösterelim
    final quizzesToShow =
        _ongoingQuizzes.length > 3
            ? _ongoingQuizzes.sublist(0, 3)
            : _ongoingQuizzes;

    print('Ana sayfada gösterilen quiz sayısı: ${quizzesToShow.length}');

    // Debug: quizlerin id'lerini yazdır
    for (int i = 0; i < quizzesToShow.length; i++) {
      print(
        'Quiz $i - ID: ${quizzesToShow[i].id} - Name: ${quizzesToShow[i].name}',
      );
    }

    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 8),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              const Text(
                'Devam Eden',
                style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
              ),
              TextButton(
                onPressed: () => _showAllOngoingQuizzes(context),
                child: const Row(
                  children: [
                    Text('Tümü'),
                    SizedBox(width: 4),
                    Icon(Icons.arrow_forward, size: 16),
                  ],
                ),
              ),
            ],
          ),
          const SizedBox(height: 16),
          // Yatay kaydırmalı quiz kartları
          SizedBox(
            height: 160, // Kart yüksekliği 190'dan 160'a düşürüldü
            child:
                quizzesToShow.isEmpty
                    ? Center(
                      child: Text(
                        'Henüz devam eden quiz bulunmamaktadır',
                        style: TextStyle(color: Colors.grey[400]),
                      ),
                    )
                    : ListView.builder(
                      scrollDirection: Axis.horizontal,
                      itemCount: quizzesToShow.length,
                      itemBuilder: (context, index) {
                        final quiz = quizzesToShow[index];
                        final progressValue =
                            quiz.currentQuestionIndex != null &&
                                    quiz.totalQuestions > 0
                                ? quiz.currentQuestionIndex! /
                                    quiz.totalQuestions
                                : 0.25;

                        return Container(
                          width: 260, // Genişlik de 280'den 260'a düşürüldü
                          margin: const EdgeInsets.only(right: 16),
                          child: GestureDetector(
                            onTap: () => _continueQuiz(quiz),
                            child: Container(
                              padding: const EdgeInsets.all(
                                12,
                              ), // Padding 16'dan 12'ye düşürüldü
                              decoration: BoxDecoration(
                                gradient: LinearGradient(
                                  colors: [
                                    _getQuizColor(index),
                                    _getQuizColor(index).withOpacity(0.7),
                                  ],
                                ),
                                borderRadius: BorderRadius.circular(
                                  16,
                                ), // Border radius 20'den 16'ya düşürüldü
                                boxShadow: [
                                  BoxShadow(
                                    color: _getQuizColor(
                                      index,
                                    ).withOpacity(0.2),
                                    blurRadius:
                                        8, // Blur radius 10'dan 8'e düşürüldü
                                    spreadRadius:
                                        1, // Spread radius 2'den 1'e düşürüldü
                                  ),
                                ],
                              ),
                              child: Column(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  Row(
                                    children: [
                                      Container(
                                        padding: const EdgeInsets.all(
                                          8,
                                        ), // Padding 10'dan 8'e düşürüldü
                                        decoration: BoxDecoration(
                                          color: Colors.white.withOpacity(0.2),
                                          borderRadius: BorderRadius.circular(
                                            10, // Border radius 12'den 10'a düşürüldü
                                          ),
                                        ),
                                        child: Icon(
                                          _getQuizIcon(quiz.name),
                                          color: Colors.white,
                                          size:
                                              20, // Icon size 24'ten 20'ye düşürüldü
                                        ),
                                      ),
                                      const SizedBox(
                                        width: 10,
                                      ), // Spacing 12'den 10'a düşürüldü
                                      Expanded(
                                        child: Column(
                                          crossAxisAlignment:
                                              CrossAxisAlignment.start,
                                          children: [
                                            Text(
                                              quiz.name,
                                              style: const TextStyle(
                                                fontSize:
                                                    16, // Font size 18'den 16'ya düşürüldü
                                                fontWeight: FontWeight.bold,
                                                color: Colors.white,
                                              ),
                                            ),
                                            Text(
                                              '${quiz.totalQuestions} sorudan ${quiz.currentQuestionIndex ?? 0} soru tamamlandı',
                                              style: TextStyle(
                                                color: Colors.white.withOpacity(
                                                  0.8,
                                                ),
                                                fontSize:
                                                    12, // Font size eklendi
                                              ),
                                            ),
                                          ],
                                        ),
                                      ),
                                    ],
                                  ),
                                  const SizedBox(
                                    height: 16,
                                  ), // Spacing 24'ten 16'ya düşürüldü
                                  Row(
                                    mainAxisAlignment:
                                        MainAxisAlignment.spaceBetween,
                                    children: [
                                      Text(
                                        'İlerleme: %${(progressValue * 100).toInt()}',
                                        style: TextStyle(
                                          color: Colors.white.withOpacity(0.9),
                                          fontWeight: FontWeight.w500,
                                          fontSize: 12, // Font size eklendi
                                        ),
                                      ),
                                      Container(
                                        padding: const EdgeInsets.all(
                                          6,
                                        ), // Padding 8'den 6'ya düşürüldü
                                        decoration: BoxDecoration(
                                          color: Colors.white.withOpacity(0.2),
                                          shape: BoxShape.circle,
                                        ),
                                        child: const Icon(
                                          Icons.play_arrow,
                                          color: Colors.white,
                                          size:
                                              16, // Icon size 20'den 16'ya düşürüldü
                                        ),
                                      ),
                                    ],
                                  ),
                                  const SizedBox(
                                    height: 12,
                                  ), // Spacing 16'dan 12'ye düşürüldü
                                  ClipRRect(
                                    borderRadius: BorderRadius.circular(
                                      8,
                                    ), // Border radius 10'dan 8'e düşürüldü
                                    child: LinearProgressIndicator(
                                      value: progressValue,
                                      backgroundColor: Colors.white.withOpacity(
                                        0.2,
                                      ),
                                      valueColor:
                                          const AlwaysStoppedAnimation<Color>(
                                            Colors.white,
                                          ),
                                      minHeight:
                                          6, // Height 8'den 6'ya düşürüldü
                                    ),
                                  ),
                                ],
                              ),
                            ),
                          ),
                        );
                      },
                    ),
          ),
        ],
      ),
    );
  }

  // Tüm devam eden quizleri göster
  void _showAllOngoingQuizzes(BuildContext context) {
    // Debug amaçlı log
    print('Tüm devam eden quizler sayısı: ${_ongoingQuizzes.length}');
    for (int i = 0; i < _ongoingQuizzes.length; i++) {
      print(
        'Modal Quiz $i - ID: ${_ongoingQuizzes[i].id} - Name: ${_ongoingQuizzes[i].name}',
      );
    }

    showModalBottomSheet(
      context: context,
      backgroundColor: Colors.transparent,
      isScrollControlled: true,
      builder:
          (context) => Container(
            height: MediaQuery.of(context).size.height * 0.75,
            decoration: BoxDecoration(
              gradient: LinearGradient(
                begin: Alignment.topLeft,
                end: Alignment.bottomRight,
                colors: [Colors.indigo.shade900, Colors.black],
              ),
              borderRadius: const BorderRadius.only(
                topLeft: Radius.circular(30),
                topRight: Radius.circular(30),
              ),
              boxShadow: [
                BoxShadow(color: Colors.black.withOpacity(0.5), blurRadius: 15),
              ],
            ),
            child: Column(
              children: [
                // Üst başlık bölümü
                Container(
                  padding: const EdgeInsets.all(16),
                  decoration: BoxDecoration(
                    gradient: LinearGradient(
                      colors: [
                        Colors.indigo.shade800,
                        Colors.deepPurple.shade800,
                      ],
                    ),
                    borderRadius: const BorderRadius.only(
                      topLeft: Radius.circular(30),
                      topRight: Radius.circular(30),
                    ),
                  ),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Row(
                        children: [
                          Container(
                            padding: const EdgeInsets.all(8),
                            decoration: BoxDecoration(
                              color: Colors.white.withOpacity(0.1),
                              borderRadius: BorderRadius.circular(12),
                            ),
                            child: const Icon(
                              Icons.access_time,
                              color: Colors.white,
                            ),
                          ),
                          const SizedBox(width: 12),
                          const Text(
                            'Devam Eden Quizler',
                            style: TextStyle(
                              fontSize: 18,
                              fontWeight: FontWeight.bold,
                              color: Colors.white,
                            ),
                          ),
                        ],
                      ),
                      IconButton(
                        icon: const Icon(Icons.close, color: Colors.white),
                        onPressed: () => Navigator.pop(context),
                      ),
                    ],
                  ),
                ),

                // Quiz listesi
                Expanded(
                  child:
                      _ongoingQuizzes.isEmpty
                          ? const Center(
                            child: Text(
                              'Henüz devam eden quiz bulunmamaktadır.',
                              style: TextStyle(color: Colors.white70),
                            ),
                          )
                          : ListView.builder(
                            padding: const EdgeInsets.all(16),
                            itemCount: _ongoingQuizzes.length,
                            itemBuilder: (context, index) {
                              final quiz = _ongoingQuizzes[index];
                              final progressValue =
                                  quiz.currentQuestionIndex != null &&
                                          quiz.totalQuestions > 0
                                      ? quiz.currentQuestionIndex! /
                                          quiz.totalQuestions
                                      : 0.25;

                              return Container(
                                margin: const EdgeInsets.only(bottom: 16),
                                child: GestureDetector(
                                  onTap: () {
                                    Navigator.pop(context); // Önce modalı kapat
                                    _continueQuiz(quiz); // Sonra quize devam et
                                  },
                                  child: Container(
                                    padding: const EdgeInsets.all(16),
                                    decoration: BoxDecoration(
                                      color: Colors.white.withOpacity(0.05),
                                      borderRadius: BorderRadius.circular(16),
                                      border: Border.all(
                                        color: Colors.white.withOpacity(0.1),
                                        width: 1,
                                      ),
                                    ),
                                    child: Column(
                                      crossAxisAlignment:
                                          CrossAxisAlignment.start,
                                      children: [
                                        Row(
                                          children: [
                                            Container(
                                              padding: const EdgeInsets.all(10),
                                              decoration: BoxDecoration(
                                                color: _getQuizColor(
                                                  index,
                                                ).withOpacity(0.2),
                                                shape: BoxShape.circle,
                                              ),
                                              child: Icon(
                                                _getQuizIcon(quiz.name),
                                                color: _getQuizColor(index),
                                                size: 20,
                                              ),
                                            ),
                                            const SizedBox(width: 10),
                                            Expanded(
                                              child: Column(
                                                crossAxisAlignment:
                                                    CrossAxisAlignment.start,
                                                children: [
                                                  Text(
                                                    quiz.name,
                                                    style: const TextStyle(
                                                      fontSize: 16,
                                                      fontWeight:
                                                          FontWeight.bold,
                                                      color: Colors.white,
                                                    ),
                                                  ),
                                                  const SizedBox(height: 4),
                                                  Text(
                                                    '${quiz.totalQuestions} sorudan ${quiz.currentQuestionIndex ?? 0} soru tamamlandı',
                                                    style: TextStyle(
                                                      fontSize: 12,
                                                      color: Colors.grey[400],
                                                    ),
                                                  ),
                                                ],
                                              ),
                                            ),
                                            Container(
                                              padding:
                                                  const EdgeInsets.symmetric(
                                                    horizontal: 8,
                                                    vertical: 4,
                                                  ),
                                              decoration: BoxDecoration(
                                                color: Colors.blue.withOpacity(
                                                  0.2,
                                                ),
                                                borderRadius:
                                                    BorderRadius.circular(20),
                                              ),
                                              child: Text(
                                                '%${(progressValue * 100).toInt()}',
                                                style: const TextStyle(
                                                  color: Colors.blue,
                                                  fontSize: 12,
                                                  fontWeight: FontWeight.bold,
                                                ),
                                              ),
                                            ),
                                          ],
                                        ),
                                        const SizedBox(height: 12),
                                        ClipRRect(
                                          borderRadius: BorderRadius.circular(
                                            8,
                                          ),
                                          child: LinearProgressIndicator(
                                            value: progressValue,
                                            backgroundColor: Colors.grey[800],
                                            valueColor:
                                                AlwaysStoppedAnimation<Color>(
                                                  _getQuizColor(index),
                                                ),
                                            minHeight: 6,
                                          ),
                                        ),
                                      ],
                                    ),
                                  ),
                                ),
                              );
                            },
                          ),
                ),
              ],
            ),
          ),
    );
  }

  // Quiz kategori adına göre ikon seç
  IconData _getQuizIcon(String categoryName) {
    switch (categoryName.toLowerCase()) {
      case 'anestezi':
        return Icons.health_and_safety;
      case 'kardiyovasküler':
      case 'kardiyovasküler 1':
      case 'kardiyovasküler 2':
        return Icons.favorite;
      case 'solunum':
        return Icons.air;
      case 'ameliyathane':
        return Icons.local_hospital;
      case 'anestezi istasyonu':
        return Icons.medical_services;
      default:
        return Icons.quiz;
    }
  }

  // Quiz indeksine göre renk seç
  Color _getQuizColor(int index) {
    final colors = [
      Colors.blue,
      Colors.purple,
      Colors.teal,
      Colors.orange,
      Colors.pink,
      Colors.indigo,
    ];
    return colors[index % colors.length];
  }

  // Quiz'e devam etme işlevi
  void _continueQuiz(Quiz quiz) async {
    try {
      // Gerçek soruları almak için veritabanında quiz kategorisini ara
      final questions = await _quizService.getCategoryQuestions(quiz.name);

      if (questions.isNotEmpty) {
        // Kaldığı noktadan başlat
        Navigator.push(
          context,
          MaterialPageRoute(
            builder:
                (context) => QuizScreen(
                  categoryName: quiz.name,
                  questions: questions,
                  initialQuestionIndex: quiz.currentQuestionIndex ?? 0,
                  initialScore: quiz.score ?? 0,
                  quizId: quiz.id, // Mevcut quiz ID'sini aktar
                ),
          ),
        ).then((_) {
          // Quiz'den döndüğünde verileri yenile
          _loadData();
        });
      } else {
        // Soru bulunamadı
        ScaffoldMessenger.of(context).showSnackBar(
          const SnackBar(content: Text('Quiz soruları bulunamadı')),
        );
      }
    } catch (e) {
      print('Quiz devam etme hatası: $e');
      ScaffoldMessenger.of(context).showSnackBar(
        const SnackBar(content: Text('Quiz devam ederken bir hata oluştu')),
      );
    }
  }

  Widget _buildPopularQuizzes(BuildContext context) {
    // Popüler quizler için mevcut kategorileri kullanalım
    List<Map<String, dynamic>> popularCategories = [
      {
        'name': 'Anestezi',
        'icon': Icons.health_and_safety,
        'popularity': 180,
        'color': Colors.blue.shade700,
      },
      {
        'name': 'Kardiyovasküler 1',
        'icon': Icons.favorite,
        'popularity': 145,
        'color': Colors.purple.shade700,
      },
      {
        'name': 'Ameliyathane',
        'icon': Icons.local_hospital,
        'popularity': 89,
        'color': Colors.teal.shade700,
      },
      {
        'name': 'Solunum',
        'icon': Icons.air,
        'popularity': 76,
        'color': Colors.red.shade700,
      },
    ];

    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Padding(
          padding: const EdgeInsets.symmetric(horizontal: 20),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              const Text(
                'Popüler Quizler',
                style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
              ),
              TextButton(
                onPressed: () {
                  final homeScreenState =
                      context.findAncestorStateOfType<_HomeScreenState>();
                  if (homeScreenState != null) {
                    homeScreenState.switchToTab(1); // 1: Quizler sekmesi
                  }
                },
                child: const Row(
                  children: [
                    Text('Tümü'),
                    SizedBox(width: 4),
                    Icon(Icons.arrow_forward, size: 16),
                  ],
                ),
              ),
            ],
          ),
        ),
        const SizedBox(height: 16),
        SizedBox(
          height: 140,
          child: ListView.builder(
            scrollDirection: Axis.horizontal,
            padding: const EdgeInsets.symmetric(horizontal: 20),
            itemCount: popularCategories.length,
            itemBuilder: (context, index) {
              final category = popularCategories[index];
              return _buildPopularQuizCard(
                category['name'],
                category['icon'],
                '${category['popularity']}+ kişi çözdü',
                category['color'],
                context,
                category['name'], // Quiz kategorisi adını geçir
              );
            },
          ),
        ),
      ],
    );
  }

  Widget _buildPopularQuizCard(
    String title,
    IconData icon,
    String popularity,
    Color color,
    BuildContext context,
    String categoryName, // Kategori adı parametresi eklendi
  ) {
    return GestureDetector(
      onTap: () => _startCategoryQuiz(categoryName),
      child: Container(
        width: 160,
        margin: const EdgeInsets.only(right: 16),
        decoration: BoxDecoration(
          gradient: LinearGradient(
            begin: Alignment.topLeft,
            end: Alignment.bottomRight,
            colors: [color.withOpacity(0.8), color.withOpacity(0.4)],
          ),
          borderRadius: BorderRadius.circular(20),
          border: Border.all(color: color.withOpacity(0.3), width: 1),
        ),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Container(
              padding: const EdgeInsets.all(12),
              decoration: BoxDecoration(
                color: Colors.white.withOpacity(0.2),
                shape: BoxShape.circle,
              ),
              child: Icon(icon, color: Colors.white, size: 30),
            ),
            const SizedBox(height: 12),
            Text(
              title,
              textAlign: TextAlign.center,
              style: const TextStyle(
                fontSize: 14,
                fontWeight: FontWeight.bold,
                color: Colors.white,
              ),
            ),
            const SizedBox(height: 4),
            Text(
              popularity,
              style: TextStyle(fontSize: 12, color: Colors.grey[300]),
            ),
          ],
        ),
      ),
    );
  }

  // Kategori adına göre quiz başlat
  void _startCategoryQuiz(String categoryName) async {
    print('$categoryName kategorisi seçildi');

    try {
      setState(() {
        _isLoading = true;
      });

      // Eğer bu kategoride devam eden bir quiz var mı kontrol et
      final ongoingQuizForCategory =
          _ongoingQuizzes
              .where(
                (quiz) => quiz.name.toLowerCase() == categoryName.toLowerCase(),
              )
              .toList();

      if (ongoingQuizForCategory.isNotEmpty) {
        // Devam eden bir quiz varsa, o quiz'e devam et
        final ongoingQuiz = ongoingQuizForCategory.first;
        print('Bu kategoride devam eden bir quiz bulundu: ${ongoingQuiz.id}');

        setState(() {
          _isLoading = false;
        });

        _continueQuiz(ongoingQuiz);
        return;
      }

      // Kategori adına göre soruları getir
      List<Question> questions = [];

      switch (categoryName.toLowerCase()) {
        case 'anestezi':
          questions = anesthesiaQuestions;
          break;
        case 'kardiyovasküler':
        case 'kardiyovasküler 1':
          questions = cardiovascularQuestions;
          break;
        case 'kardiyovasküler 2':
          questions = cardiovascularQuestions2;
          break;
        case 'solunum':
          questions = respiratoryQuestions;
          break;
        case 'ameliyathane':
          questions = operatingRoomQuestions;
          break;
        case 'anestezi istasyonu':
          questions = anesthesiaStationQuestions;
          break;
      }

      // Soruları karıştır
      questions.shuffle();

      setState(() {
        _isLoading = false;
      });

      if (questions.isEmpty) {
        print('$categoryName kategorisi için soru bulunamadı');
        ScaffoldMessenger.of(context).showSnackBar(
          SnackBar(
            content: Text('$categoryName kategorisi için soru bulunamadı'),
            backgroundColor: Colors.red,
          ),
        );
        return;
      }

      // Quiz ekranına git
      Navigator.push(
        context,
        MaterialPageRoute(
          builder:
              (context) =>
                  QuizScreen(categoryName: categoryName, questions: questions),
        ),
      ).then((_) {
        // Quiz tamamlandığında ana sayfanın verilerini yenile
        _loadData();
      });
    } catch (e) {
      print('Quiz başlatma hatası: $e');
      setState(() {
        _isLoading = false;
      });

      ScaffoldMessenger.of(context).showSnackBar(
        SnackBar(
          content: Text('Quiz başlatılırken bir hata oluştu: $e'),
          backgroundColor: Colors.red,
        ),
      );
    }
  }

  Widget _buildFinishedQuiz() {
    if (_completedQuizzes.isEmpty) {
      return Padding(
        padding: const EdgeInsets.all(20),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            const Text(
              'Tamamlanan Quizler',
              style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
            ),
            const SizedBox(height: 16),
            Container(
              padding: const EdgeInsets.all(16),
              decoration: BoxDecoration(
                color: Colors.white.withOpacity(0.1),
                borderRadius: BorderRadius.circular(20),
                border: Border.all(
                  color: Colors.grey.withOpacity(0.2),
                  width: 1,
                ),
              ),
              child: const Center(
                child: Text(
                  'Henüz tamamlanan quiz bulunmamaktadır.',
                  style: TextStyle(color: Colors.white),
                ),
              ),
            ),
          ],
        ),
      );
    }

    // Tamamlanan quiz varsa göster
    final quiz = _completedQuizzes.first;
    final progress = _userActivity?.quizProgress[quiz.id];
    final successRate = progress?.successRate.toStringAsFixed(0) ?? '0';

    return Padding(
      padding: const EdgeInsets.all(20),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          const Text(
            'Tamamlanan Quizler',
            style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
          ),
          const SizedBox(height: 16),
          Container(
            padding: const EdgeInsets.all(16),
            decoration: BoxDecoration(
              color: Colors.white.withOpacity(0.1),
              borderRadius: BorderRadius.circular(20),
              border: Border.all(color: Colors.grey.withOpacity(0.2), width: 1),
            ),
            child: Row(
              children: [
                Container(
                  padding: const EdgeInsets.all(12),
                  decoration: BoxDecoration(
                    color: Colors.green.withOpacity(0.2),
                    borderRadius: BorderRadius.circular(16),
                  ),
                  child: const Icon(Icons.star, color: Colors.yellow),
                ),
                const SizedBox(width: 16),
                Expanded(
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        quiz.name,
                        style: const TextStyle(
                          fontSize: 16,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                      const SizedBox(height: 4),
                      Text(
                        'Tamamlandı • ${quiz.totalQuestions}/${quiz.totalQuestions}',
                        style: const TextStyle(color: Colors.grey),
                      ),
                    ],
                  ),
                ),
                Row(
                  children: [
                    Container(
                      padding: const EdgeInsets.symmetric(
                        horizontal: 12,
                        vertical: 6,
                      ),
                      decoration: BoxDecoration(
                        color: Colors.green.withOpacity(0.2),
                        borderRadius: BorderRadius.circular(20),
                      ),
                      child: Text(
                        '$successRate%',
                        style: const TextStyle(color: Colors.green),
                      ),
                    ),
                  ],
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
