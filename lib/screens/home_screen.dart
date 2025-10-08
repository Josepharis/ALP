import 'package:flutter/material.dart';
import 'package:page_transition/page_transition.dart';
import 'package:provider/provider.dart';
import 'dart:ui';
import 'dart:async';

import '../models/question.dart';
import '../models/user_activity.dart';
import '../models/daily_question.dart';
import '../models/quiz.dart';
import '../services/quiz_service.dart';
import '../services/auth_service.dart';
import '../services/user_service.dart';
import '../services/tutorial_service.dart';
import '../services/language_service.dart';
import '../services/multilingual_question_service.dart';

import '../utils/event_bus.dart';
import '../utils/snackbar_utils.dart';
import '../l10n/app_localizations.dart';
import '../widgets/interactive_tutorial.dart';
import '../screens/quiz_screen.dart';
import '../screens/mistakes_screen.dart';
import '../screens/leaderboard_screen.dart';
import '../screens/profile_screen.dart';
import '../screens/information_screen.dart';

import '../screens/daily_question_screen.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> with TickerProviderStateMixin {
  int _currentIndex = 0;
  late TabController _tabController;
  final List<GlobalKey<NavigatorState>> _navigatorKeys = [
    GlobalKey<NavigatorState>(),
    GlobalKey<NavigatorState>(),
    GlobalKey<NavigatorState>(),
    GlobalKey<NavigatorState>(),
    GlobalKey<NavigatorState>(),
    GlobalKey<NavigatorState>(),
  ];
  
  // Arama için FocusNode
  final FocusNode _searchFocusNode = FocusNode();

  @override
  void initState() {
    super.initState();
    _tabController = TabController(length: 6, vsync: this);
    // Başlangıçta ana sayfayı göster
    _currentIndex = 0;
    
    // iOS simülatör için ayarları burada oluştur
    _createUserSettingsIfNeeded();
  }
  
  // iOS simülatör için ayarlar oluştur
  Future<void> _createUserSettingsIfNeeded() async {
    try {
      final userService = UserService();
      final settingsCreated = await userService.createDefaultUserSettings();
      if (settingsCreated) {
        // Ayarlar oluşturuldu
      } else {
        // Ayarlar zaten mevcut
      }
    } catch (e) {
      // Hata durumunda sessizce devam et
    }
  }

  @override
  void dispose() {
    _tabController.dispose();
    _searchFocusNode.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Consumer<LanguageService>(
      builder: (context, languageService, child) {
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
              child: SafeArea(
                bottom:
                    false, // Bottom safe area'yı devre dışı bırak, navigation bar'da halledeceğiz
                child: Stack(
                  children: [
                    _buildOffstageNavigator(0),
                    _buildOffstageNavigator(1),
                    _buildOffstageNavigator(2),
                    _buildOffstageNavigator(3),
                    _buildOffstageNavigator(4),
                    _buildOffstageNavigator(5),
                  ],
                ),
              ),
            ),
            bottomNavigationBar: _buildBottomNav(),
          ),
        );
      },
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
    final screenWidth = MediaQuery.of(context).size.width;
    final bottomPadding = MediaQuery.of(context).padding.bottom;

    // Android navigation bar yüksekliğini hesapla
    final systemNavigationBarHeight =
        MediaQuery.of(context).systemGestureInsets.bottom;
    final actualBottomPadding =
        bottomPadding > 0 ? bottomPadding : systemNavigationBarHeight;

    // Responsive boyutlar
    final isSmallScreen = screenWidth < 400;
    final isVerySmallScreen = screenWidth < 350;
    final isShortScreen = screenHeight < 600;
    final hasAndroidNavigation = actualBottomPadding > 0;

    // Responsive height hesaplama
    double baseHeight = screenHeight * 0.07;
    if (isVerySmallScreen) {
      baseHeight = screenHeight * 0.06; // Çok küçük ekranlarda daha küçük
    } else if (isSmallScreen) {
      baseHeight = screenHeight * 0.065; // Küçük ekranlarda orta
    }
    
    // Android navigation bar için ek alan
    double extraHeight = hasAndroidNavigation ? actualBottomPadding * 0.2 : 0;
    if (isShortScreen) {
      extraHeight *= 0.5; // Kısa ekranlarda daha az ek alan
    }

    return SafeArea(
      child: Container(
        height: baseHeight + extraHeight,
        margin: EdgeInsets.only(
          left: isVerySmallScreen ? 12 : 16,
          right: isVerySmallScreen ? 12 : 16,
          bottom: hasAndroidNavigation ? actualBottomPadding * 0.1 : (isShortScreen ? 4 : 8),
          top: isShortScreen ? 4 : 8,
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
          boxShadow: [
            BoxShadow(
              color: Colors.black.withOpacity(0.3),
              blurRadius: 15,
              offset: const Offset(0, 5),
            ),
          ],
        ),
        child: ClipRRect(
          borderRadius: BorderRadius.circular(30),
          child: BackdropFilter(
            filter: ImageFilter.blur(sigmaX: 10, sigmaY: 10),
              child: Container(
                padding: EdgeInsets.only(
                  bottom: hasAndroidNavigation ? (isShortScreen ? 2 : 4) : 0,
                  top: isShortScreen ? 2 : 4,
                  left: isVerySmallScreen ? 4 : 8,
                  right: isVerySmallScreen ? 4 : 8,
                ),
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
                data: Theme.of(
                  context,
                ).copyWith(canvasColor: Colors.transparent),
                child: BottomNavigationBar(
                  currentIndex: _currentIndex,
                  onTap: (index) {
                    // Sayfa değişirken önceki SnackBar'ları temizle
                    SnackBarUtils.clearAllSnackBars(context);

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
                    fontSize: isVerySmallScreen ? screenHeight * 0.009 : 
                             (isSmallScreen ? screenHeight * 0.01 : screenHeight * 0.011),
                  ),
                  unselectedLabelStyle: TextStyle(
                    fontSize: isVerySmallScreen ? screenHeight * 0.009 : 
                             (isSmallScreen ? screenHeight * 0.01 : screenHeight * 0.011),
                  ),
                  elevation: 0,
                  items: [
                    _buildNavItem(Icons.home_rounded, AppLocalizations.of(context)!.homePage, 0),
                    _buildNavItem(Icons.quiz_rounded, AppLocalizations.of(context)!.quizzes, 1),
                    _buildNavItem(Icons.info_outline_rounded, AppLocalizations.of(context)!.information, 2),
                    _buildNavItem(Icons.assignment_late_rounded, AppLocalizations.of(context)!.missing, 3),
                    _buildNavItem(Icons.leaderboard_rounded, AppLocalizations.of(context)!.leaderboard, 4),
                    _buildNavItem(Icons.person_rounded, AppLocalizations.of(context)!.profile, 5),
                  ],
                ),
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
    final screenWidth = MediaQuery.of(context).size.width;
    
    // Responsive boyutlar
    final isSmallScreen = screenWidth < 400;
    final isVerySmallScreen = screenWidth < 350;

    return BottomNavigationBarItem(
      icon: AnimatedContainer(
        duration: const Duration(milliseconds: 300),
        curve: Curves.easeInOut,
        padding: EdgeInsets.all(
          isVerySmallScreen ? screenHeight * 0.004 : 
          (isSmallScreen ? screenHeight * 0.005 : screenHeight * 0.006)
        ),
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
                size: isVerySmallScreen ? screenHeight * 0.02 : 
                     (isSmallScreen ? screenHeight * 0.022 : screenHeight * 0.024),
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

enum TabItem { home, quizzes, information, mistakes, leaderboard, profile }

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
      case TabItem.information:
        child = const InformationScreen();
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
class QuizListScreen extends StatefulWidget {
  const QuizListScreen({super.key});

  @override
  State<QuizListScreen> createState() => _QuizListScreenState();
}

class _QuizListScreenState extends State<QuizListScreen> {
  final TextEditingController _searchController = TextEditingController();
  final FocusNode _searchFocusNode = FocusNode();
  final QuizService _quizService = QuizService();
  String _searchQuery = '';
  bool _isSearching = false;
  List<Quiz> _ongoingQuizzes = [];
  List<Quiz> _completedQuizzes = [];
  late StreamSubscription _mistakesSubscription;

  // Tüm quiz kategorileri
  List<Map<String, dynamic>> _allQuizCategories = [];

  // Quiz kategorilerini yükle
  void _loadQuizCategories() {
    final languageService = Provider.of<LanguageService>(context, listen: false);
    _allQuizCategories = MultilingualQuestionService.getQuizCategories(languageService.currentLocale.languageCode);
  }

  @override
  void initState() {
    super.initState();
    _loadQuizCategories();
    _loadOngoingQuizzes();
    _loadCompletedQuizzes();
    
    // EventBus dinleyicisi ekle - devam eden quizler güncellendiğinde yenile
    _mistakesSubscription = EventBus().mistakesUpdatedStream.listen((event) {
      if (mounted) {
        _loadOngoingQuizzes();
        _loadCompletedQuizzes();
      }
    });
  }

  @override
  void didChangeDependencies() {
    super.didChangeDependencies();
    // Dil değiştiğinde quiz kategorilerini yeniden yükle
    _loadQuizCategories();
  }

  @override
  void dispose() {
    _searchController.dispose();
    _searchFocusNode.dispose();
    _mistakesSubscription.cancel();
    super.dispose();
  }

  // Devam eden quizleri yükle
  Future<void> _loadOngoingQuizzes() async {
    try {
      final ongoingQuizzes = await _quizService.getOngoingQuizzes();
      if (mounted) {
        setState(() {
          _ongoingQuizzes = ongoingQuizzes;
        });
      }
    } catch (e) {
      // Devam eden quizler yüklenirken hata
    }
  }

  // Tamamlanan quizleri yükle
  Future<void> _loadCompletedQuizzes() async {
    try {
      final completedQuizzes = await _quizService.getCompletedQuizzes();
      if (mounted) {
        setState(() {
          _completedQuizzes = completedQuizzes;
        });
      }
    } catch (e) {
    }
  }

  // Quiz'in devam eden olup olmadığını kontrol et
  Quiz? _getOngoingQuiz(String categoryTitle) {
    return _ongoingQuizzes.firstWhere(
      (quiz) => quiz.name == categoryTitle,
      orElse: () => Quiz(
        id: '',
        name: '',
        totalQuestions: 0,
      ),
    );
  }

  // Quiz'in tamamlanıp tamamlanmadığını kontrol et
  bool _isQuizCompleted(String categoryTitle) {
    return _completedQuizzes.any((quiz) => quiz.name == categoryTitle);
  }

  // Quiz'in tekrar çözülmeye başlanıp başlanmadığını kontrol et
  bool _isQuizRetaking(String categoryTitle) {
    // Hem tamamlanmış hem de devam eden quizlerde varsa tekrar çözülüyor demektir
    final isCompleted = _completedQuizzes.any((quiz) => quiz.name == categoryTitle);
    final isOngoing = _ongoingQuizzes.any((quiz) => quiz.name == categoryTitle);
    return isCompleted && isOngoing;
  }

  // Filtrelenmiş quiz kategorileri
  List<Map<String, dynamic>> get _filteredQuizCategories {
    if (_searchQuery.isEmpty) {
      return _allQuizCategories;
    }
    return _allQuizCategories.where((category) {
      final title = category['title'].toString().toLowerCase();
      final query = _searchQuery.toLowerCase();
      return title.contains(query);
    }).toList();
  }

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Column(
        children: [
          // AppBar benzeri header
          Container(
            padding: const EdgeInsets.symmetric(horizontal: 16, vertical: 12),
            decoration: BoxDecoration(
              gradient: LinearGradient(
                begin: Alignment.topLeft,
                end: Alignment.bottomRight,
                colors: [Colors.blue.shade900, Colors.purple.shade900],
              ),
            ),
            child: Column(
              children: [
                // Başlık ve arama butonu
                Row(
                  children: [
                    Container(
                      padding: const EdgeInsets.all(6),
                      decoration: BoxDecoration(
                        color: Colors.white.withOpacity(0.2),
                        borderRadius: BorderRadius.circular(10),
                      ),
                      child: const Icon(Icons.quiz, color: Colors.white, size: 20),
                    ),
                    const SizedBox(width: 12),
                    Expanded(
                      child: Text(
                        AppLocalizations.of(context)!.allQuizzes,
                        style: const TextStyle(
                          color: Colors.white,
                          fontSize: 18,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                    ),
                    GestureDetector(
                      onTap: () {
                        setState(() {
                          _isSearching = !_isSearching;
                          if (!_isSearching) {
                            _searchQuery = '';
                            _searchController.clear();
                          }
                        });
                        // Arama modu açıldığında TextField'a focus ver
                        if (_isSearching) {
                          Future.delayed(const Duration(milliseconds: 100), () {
                            if (mounted) {
                              _searchFocusNode.requestFocus();
                            }
                          });
                        }
                      },
                      child: Container(
                        padding: const EdgeInsets.all(6),
                        decoration: BoxDecoration(
                          color: Colors.white.withOpacity(0.2),
                          borderRadius: BorderRadius.circular(10),
                        ),
                        child: Icon(
                          _isSearching ? Icons.close : Icons.search,
                          color: Colors.white,
                          size: 20,
                        ),
                      ),
                    ),
                  ],
                ),
                // Arama alanı
                if (_isSearching) ...[
                  const SizedBox(height: 12),
                  Container(
                    padding: const EdgeInsets.symmetric(horizontal: 12),
                    decoration: BoxDecoration(
                      color: Colors.white.withOpacity(0.2),
                      borderRadius: BorderRadius.circular(20),
                    ),
                    child: TextField(
                      controller: _searchController,
                      focusNode: _searchFocusNode,
                      onChanged: (value) {
                        setState(() {
                          _searchQuery = value;
                        });
                      },
                      style: const TextStyle(color: Colors.white),
                      decoration: InputDecoration(
                        hintText: 'Search quizzes...',
                        hintStyle: const TextStyle(color: Colors.white70),
                        border: InputBorder.none,
                        icon: const Icon(Icons.search, color: Colors.white70, size: 18),
                        contentPadding: const EdgeInsets.symmetric(vertical: 8),
                      ),
                    ),
                  ),
                ],
              ],
            ),
          ),
          // Quiz listesi
          Expanded(
            child: _buildQuizList(context),
          ),
        ],
      ),
    );
  }

  Widget _buildQuizList(BuildContext context) {
    return ListView.builder(
      shrinkWrap: true,
      physics: const AlwaysScrollableScrollPhysics(),
      padding: const EdgeInsets.symmetric(horizontal: 16.0, vertical: 8.0),
      itemCount: _filteredQuizCategories.length,
      itemBuilder: (context, index) {
        final category = _filteredQuizCategories[index];
        final questions = category['questions'] as List<dynamic>;
        final questionCount =
            questions is List<Question> ? questions.length : 0;
        
        // Bu kategoride devam eden quiz var mı kontrol et
        final ongoingQuiz = _getOngoingQuiz(category['title'] as String);
        final isOngoing = ongoingQuiz?.id.isNotEmpty == true;
        
        // Bu quiz tamamlanmış mı kontrol et
        final isCompleted = _isQuizCompleted(category['title'] as String);
        
        // Bu quiz tekrar çözülmeye başlanmış mı kontrol et
        final isRetaking = _isQuizRetaking(category['title'] as String);

        return Container(
          margin: const EdgeInsets.only(bottom: 16.0),
          constraints: BoxConstraints(
            minHeight: MediaQuery.of(context).size.width < 400 ? 80 : 90,
          ),
          child: GestureDetector(
            onTap: () {
              if (isRetaking && ongoingQuiz != null) {
                // Tekrar çözülmeye başlanan quiz varsa, mevcut ilerlemeyle devam et
                Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (context) => QuizScreen(
                      categoryName: category['title'] as String,
                      questions: category['questions'] as List<Question>,
                      initialQuestionIndex: ongoingQuiz.currentQuestionIndex ?? 0,
                      initialScore: ongoingQuiz.score ?? 0,
                      quizId: ongoingQuiz.id,
                    ),
                  ),
                );
              } else if (isCompleted) {
                // Tamamlanan quiz için tekrar çöz
                _retakeQuiz(category['title'] as String, category['questions'] as List<Question>);
              } else if (isOngoing && ongoingQuiz != null) {
                // Devam eden quiz varsa, mevcut ilerlemeyle devam et
                Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (context) => QuizScreen(
                      categoryName: category['title'] as String,
                      questions: category['questions'] as List<Question>,
                      initialQuestionIndex: ongoingQuiz.currentQuestionIndex ?? 0,
                      initialScore: ongoingQuiz.score ?? 0,
                      quizId: ongoingQuiz.id,
                    ),
                  ),
                );
              } else {
                // Yeni quiz başlat
                Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (context) {
                      return QuizScreen(
                        categoryName: category['title'] as String,
                        questions: category['questions'] as List<Question>,
                      );
                    },
                  ),
                );
              }
            },
            child: Container(
              decoration: BoxDecoration(
                gradient: LinearGradient(
                  begin: Alignment.topLeft,
                  end: Alignment.bottomRight,
                  colors: isCompleted ? [
                    Colors.green.shade600,
                    Colors.green.shade700,
                  ] : [
                    category['color'] as Color,
                    (category['color'] as Color).withOpacity(0.7),
                  ],
                ),
                borderRadius: BorderRadius.circular(20),
                boxShadow: [
                  BoxShadow(
                    color: isCompleted 
                        ? Colors.green.withOpacity(0.3)
                        : (category['color'] as Color).withOpacity(0.3),
                    blurRadius: 10,
                    spreadRadius: 2,
                  ),
                ],
              ),
              child: Padding(
                padding: EdgeInsets.all(MediaQuery.of(context).size.width < 400 ? 10.0 : 14.0),
                child: Row(
                  children: [
                    Container(
                      padding: EdgeInsets.all(MediaQuery.of(context).size.width < 400 ? 6 : 8),
                      decoration: BoxDecoration(
                        color: Colors.white.withOpacity(0.2),
                        borderRadius: BorderRadius.circular(12),
                      ),
                      child: Icon(
                        isCompleted ? Icons.check_circle : category['icon'] as IconData,
                        color: Colors.white,
                        size: MediaQuery.of(context).size.width < 400 ? 18 : 22,
                      ),
                    ),
                    SizedBox(width: MediaQuery.of(context).size.width < 400 ? 8 : 12),
                    Expanded(
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text(
                            category['title'] as String,
                            style: TextStyle(
                              fontSize: MediaQuery.of(context).size.width < 400 ? 11 : 13,
                              fontWeight: FontWeight.bold,
                              color: Colors.white,
                              height: 1.1,
                            ),
                            maxLines: 2,
                            overflow: TextOverflow.ellipsis,
                            textAlign: TextAlign.left,
                          ),
                          if (isRetaking && ongoingQuiz != null) ...[
                            // Tekrar çözülmeye başlanan quiz bilgisi
                            Text(
                              '${ongoingQuiz.currentQuestionIndex ?? 0}/${ongoingQuiz.totalQuestions} ${AppLocalizations.of(context)!.questions}',
                              style: TextStyle(
                                fontSize: MediaQuery.of(context).size.width < 400 ? 9 : 10,
                                color: Colors.white.withOpacity(0.8),
                                fontWeight: FontWeight.w500,
                              ),
                            ),
                          ] else if (isCompleted) ...[
                            // Tamamlanan quiz bilgisi
                            Row(
                              children: [
                                Icon(
                                  Icons.check_circle,
                                  size: 14,
                                  color: Colors.white,
                                ),
                                const SizedBox(width: 4),
                                Text(
                                  'Tamamlandı',
                                  style: TextStyle(
                                    fontSize: MediaQuery.of(context).size.width < 400 ? 9 : 10,
                                    color: Colors.white,
                                    fontWeight: FontWeight.w600,
                                  ),
                                ),
                              ],
                            ),
                          ] else if (isOngoing && ongoingQuiz != null) ...[
                            // Devam eden quiz bilgisi
                            Text(
                              '${ongoingQuiz.currentQuestionIndex ?? 0}/${ongoingQuiz.totalQuestions} ${AppLocalizations.of(context)!.questions}',
                              style: TextStyle(
                                fontSize: MediaQuery.of(context).size.width < 400 ? 9 : 10,
                                color: Colors.white.withOpacity(0.8),
                                fontWeight: FontWeight.w500,
                              ),
                            ),
                          ] else ...[
                            // Normal quiz bilgisi
                            Text(
                              '$questionCount ${AppLocalizations.of(context)!.questions}',
                              style: TextStyle(
                                fontSize: MediaQuery.of(context).size.width < 400 ? 9 : 10,
                                color: Colors.white.withOpacity(0.8),
                              ),
                            ),
                          ],
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
                      child: Row(
                        mainAxisSize: MainAxisSize.min,
                        children: [
                          Text(
                            isRetaking 
                                ? '${ongoingQuiz?.attemptCount ?? 1}. Defa Çözülüyor'
                                : (isCompleted 
                                    ? 'Tekrar Çöz' 
                                    : (isOngoing ? AppLocalizations.of(context)!.continueQuiz : AppLocalizations.of(context)!.startQuiz)),
                            style: const TextStyle(
                              color: Colors.white,
                              fontWeight: FontWeight.w500,
                              fontSize: 12,
                            ),
                          ),
                          const SizedBox(width: 2),
                          Icon(
                            isRetaking 
                                ? Icons.play_arrow
                                : (isCompleted 
                                    ? Icons.refresh 
                                    : (isOngoing ? Icons.play_arrow : Icons.arrow_forward_ios)),
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

  // Tamamlanan quizi tekrar çözme işlevi
  void _retakeQuiz(String categoryName, List<Question> questions) async {
    try {
      // Eski sonucu al
      final completedQuiz = _completedQuizzes.firstWhere(
        (quiz) => quiz.name == categoryName,
        orElse: () => Quiz(id: '', name: '', totalQuestions: 0),
      );
      
      final oldScore = completedQuiz.score ?? 0;
      final oldTotalQuestions = completedQuiz.totalQuestions;
      final oldSuccessRate = completedQuiz.successRate ?? 0;

      // Quiz ID'sini oluştur (kategori adından)
      final quizId = '${categoryName.toLowerCase().replaceAll(' ', '_')}_${DateTime.now().millisecondsSinceEpoch}';
      
      // Yeni quiz başlat (tekrar çözme için) - attemptCount ile birlikte
      Navigator.push(
        context,
        MaterialPageRoute(
          builder: (context) => QuizScreen(
            categoryName: categoryName,
            questions: questions,
            quizId: quizId,
          ),
        ),
      ).then((result) async {
        // Quiz tamamlandıktan sonra sonuçları karşılaştır
        if (result != null && result is Map<String, dynamic>) {
          final newScore = result['score'] ?? 0;
          final newTotalQuestions = result['totalQuestions'] ?? 0;
          final newSuccessRate = newTotalQuestions > 0 ? (newScore / newTotalQuestions) * 100 : 0;

          // Sonuçları karşılaştır ve kullanıcıya bilgi ver
          _showRetakeComparison(
            categoryName,
            oldScore,
            oldTotalQuestions,
            oldSuccessRate,
            newScore,
            newTotalQuestions,
            newSuccessRate,
          );
        }
        
        // Verileri yenile
        _loadOngoingQuizzes();
        _loadCompletedQuizzes();
      });
    } catch (e) {
      // Quiz tekrar çözme hatası
      SnackBarUtils.showErrorSnackBar(
        context,
        'Quiz tekrar çözülürken bir hata oluştu',
      );
    }
  }


  // Tekrar çözme sonuçlarını karşılaştırma dialogu
  void _showRetakeComparison(
    String categoryName,
    int oldScore,
    int oldTotalQuestions,
    double oldSuccessRate,
    int newScore,
    int newTotalQuestions,
    double newSuccessRate,
  ) {
    final isImproved = newSuccessRate > oldSuccessRate;
    final difference = (newSuccessRate - oldSuccessRate).abs();
    
    showDialog(
      context: context,
      barrierDismissible: true,
      builder: (context) => Dialog(
        backgroundColor: Colors.transparent,
        elevation: 0,
        child: Container(
          decoration: BoxDecoration(
            gradient: LinearGradient(
              begin: Alignment.topLeft,
              end: Alignment.bottomRight,
              colors: [
                Colors.indigo.shade900,
                Colors.purple.shade900,
                Colors.black,
              ],
            ),
            borderRadius: BorderRadius.circular(24),
            boxShadow: [
              BoxShadow(
                color: Colors.black.withOpacity(0.5),
                blurRadius: 20,
                spreadRadius: 5,
                offset: const Offset(0, 10),
              ),
            ],
          ),
          child: ClipRRect(
            borderRadius: BorderRadius.circular(24),
            child: BackdropFilter(
              filter: ImageFilter.blur(sigmaX: 10, sigmaY: 10),
              child: Container(
                decoration: BoxDecoration(
                  gradient: LinearGradient(
                    begin: Alignment.topCenter,
                    end: Alignment.bottomCenter,
                    colors: [
                      Colors.white.withOpacity(0.1),
                      Colors.white.withOpacity(0.05),
                    ],
                  ),
                  borderRadius: BorderRadius.circular(24),
                  border: Border.all(
                    color: Colors.white.withOpacity(0.2),
                    width: 1,
                  ),
                ),
                child: Padding(
                  padding: const EdgeInsets.all(24),
                  child: Column(
                    mainAxisSize: MainAxisSize.min,
                    children: [
                      // Header
                      Container(
                        padding: const EdgeInsets.all(16),
                        decoration: BoxDecoration(
                          gradient: LinearGradient(
                            colors: [
                              Colors.white.withOpacity(0.1),
                              Colors.white.withOpacity(0.05),
                            ],
                          ),
                          borderRadius: BorderRadius.circular(16),
                          border: Border.all(
                            color: Colors.white.withOpacity(0.2),
                            width: 1,
                          ),
                        ),
                        child: Row(
                          children: [
                            Container(
                              padding: const EdgeInsets.all(12),
                              decoration: BoxDecoration(
                                gradient: LinearGradient(
                                  colors: isImproved 
                                    ? [Colors.green.shade400, Colors.green.shade600]
                                    : [Colors.orange.shade400, Colors.orange.shade600],
                                ),
                                shape: BoxShape.circle,
                                boxShadow: [
                                  BoxShadow(
                                    color: (isImproved ? Colors.green : Colors.orange).withOpacity(0.3),
                                    blurRadius: 8,
                                    spreadRadius: 2,
                                  ),
                                ],
                              ),
                              child: Icon(
                                isImproved ? Icons.trending_up_rounded : Icons.trending_down_rounded,
                                color: Colors.white,
                                size: 24,
                              ),
                            ),
                            const SizedBox(width: 16),
                            Expanded(
                              child: Column(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  Text(
                                    'Quiz Karşılaştırması',
                                    style: TextStyle(
                                      color: Colors.white,
                                      fontSize: 18,
                                      fontWeight: FontWeight.bold,
                                    ),
                                  ),
                                  const SizedBox(height: 4),
                                  Text(
                                    categoryName,
                                    style: TextStyle(
                                      color: Colors.white.withOpacity(0.8),
                                      fontSize: 14,
                                    ),
                                  ),
                                ],
                              ),
                            ),
                          ],
                        ),
                      ),
                      
                      const SizedBox(height: 24),
                      
                      // Comparison Cards
                      Row(
                        children: [
                          // Old Score Card
                          Expanded(
                            child: Container(
                              padding: const EdgeInsets.all(20),
                              decoration: BoxDecoration(
                                gradient: LinearGradient(
                                  colors: [
                                    Colors.grey.shade800.withOpacity(0.8),
                                    Colors.grey.shade900.withOpacity(0.8),
                                  ],
                                ),
                                borderRadius: BorderRadius.circular(16),
                                border: Border.all(
                                  color: Colors.white.withOpacity(0.1),
                                  width: 1,
                                ),
                              ),
                              child: Column(
                                children: [
                                  Text(
                                    'Önceki',
                                    style: TextStyle(
                                      color: Colors.white.withOpacity(0.7),
                                      fontSize: 12,
                                      fontWeight: FontWeight.w500,
                                    ),
                                  ),
                                  const SizedBox(height: 8),
                                  Text(
                                    '$oldScore/$oldTotalQuestions',
                                    style: TextStyle(
                                      color: Colors.white,
                                      fontSize: 24,
                                      fontWeight: FontWeight.bold,
                                    ),
                                  ),
                                  const SizedBox(height: 4),
                                  Container(
                                    padding: const EdgeInsets.symmetric(horizontal: 12, vertical: 6),
                                    decoration: BoxDecoration(
                                      color: Colors.grey.withOpacity(0.3),
                                      borderRadius: BorderRadius.circular(12),
                                    ),
                                    child: Text(
                                      '%${oldSuccessRate.toStringAsFixed(0)}',
                                      style: TextStyle(
                                        color: Colors.white,
                                        fontSize: 14,
                                        fontWeight: FontWeight.w600,
                                      ),
                                    ),
                                  ),
                                ],
                              ),
                            ),
                          ),
                          
                          const SizedBox(width: 16),
                          
                          // Arrow
                          Container(
                            padding: const EdgeInsets.all(8),
                            decoration: BoxDecoration(
                              gradient: LinearGradient(
                                colors: [
                                  Colors.blue.shade400,
                                  Colors.purple.shade400,
                                ],
                              ),
                              shape: BoxShape.circle,
                            ),
                            child: Icon(
                              Icons.arrow_forward_ios_rounded,
                              color: Colors.white,
                              size: 16,
                            ),
                          ),
                          
                          const SizedBox(width: 16),
                          
                          // New Score Card
                          Expanded(
                            child: Container(
                              padding: const EdgeInsets.all(20),
                              decoration: BoxDecoration(
                                gradient: LinearGradient(
                                  colors: isImproved
                                    ? [Colors.green.shade600.withOpacity(0.8), Colors.green.shade800.withOpacity(0.8)]
                                    : [Colors.orange.shade600.withOpacity(0.8), Colors.orange.shade800.withOpacity(0.8)],
                                ),
                                borderRadius: BorderRadius.circular(16),
                                border: Border.all(
                                  color: (isImproved ? Colors.green : Colors.orange).withOpacity(0.3),
                                  width: 2,
                                ),
                                boxShadow: [
                                  BoxShadow(
                                    color: (isImproved ? Colors.green : Colors.orange).withOpacity(0.2),
                                    blurRadius: 8,
                                    spreadRadius: 2,
                                  ),
                                ],
                              ),
                              child: Column(
                                children: [
                                  Text(
                                    'Yeni',
                                    style: TextStyle(
                                      color: Colors.white.withOpacity(0.9),
                                      fontSize: 12,
                                      fontWeight: FontWeight.w500,
                                    ),
                                  ),
                                  const SizedBox(height: 8),
                                  Text(
                                    '$newScore/$newTotalQuestions',
                                    style: TextStyle(
                                      color: Colors.white,
                                      fontSize: 24,
                                      fontWeight: FontWeight.bold,
                                    ),
                                  ),
                                  const SizedBox(height: 4),
                                  Container(
                                    padding: const EdgeInsets.symmetric(horizontal: 12, vertical: 6),
                                    decoration: BoxDecoration(
                                      color: Colors.white.withOpacity(0.2),
                                      borderRadius: BorderRadius.circular(12),
                                    ),
                                    child: Text(
                                      '%${newSuccessRate.toStringAsFixed(0)}',
                                      style: TextStyle(
                                        color: Colors.white,
                                        fontSize: 14,
                                        fontWeight: FontWeight.w600,
                                      ),
                                    ),
                                  ),
                                ],
                              ),
                            ),
                          ),
                        ],
                      ),
                      
                      const SizedBox(height: 24),
                      
                      // Improvement Message
                      Container(
                        padding: const EdgeInsets.all(16),
                        decoration: BoxDecoration(
                          gradient: LinearGradient(
                            colors: isImproved
                              ? [Colors.green.withOpacity(0.2), Colors.green.withOpacity(0.1)]
                              : [Colors.orange.withOpacity(0.2), Colors.orange.withOpacity(0.1)],
                          ),
                          borderRadius: BorderRadius.circular(16),
                          border: Border.all(
                            color: (isImproved ? Colors.green : Colors.orange).withOpacity(0.3),
                            width: 1,
                          ),
                        ),
                        child: Row(
                          children: [
                            Container(
                              padding: const EdgeInsets.all(8),
                              decoration: BoxDecoration(
                                color: (isImproved ? Colors.green : Colors.orange).withOpacity(0.2),
                                shape: BoxShape.circle,
                              ),
                              child: Icon(
                                isImproved ? Icons.celebration_rounded : Icons.refresh_rounded,
                                color: isImproved ? Colors.green : Colors.orange,
                                size: 20,
                              ),
                            ),
                            const SizedBox(width: 12),
                            Expanded(
                              child: Text(
                                isImproved 
                                  ? 'Harika! %${difference.toStringAsFixed(0)} daha iyi performans! 🎉'
                                  : 'Sonuçlar benzer. Tekrar deneyebilirsiniz! 💪',
                                style: TextStyle(
                                  color: Colors.white,
                                  fontSize: 14,
                                  fontWeight: FontWeight.w500,
                                ),
                              ),
                            ),
                          ],
                        ),
                      ),
                      
                      const SizedBox(height: 24),
                      
                      // Close Button
                      SizedBox(
                        width: double.infinity,
                        child: ElevatedButton(
                          onPressed: () => Navigator.pop(context),
                          style: ElevatedButton.styleFrom(
                            backgroundColor: Colors.white.withOpacity(0.1),
                            foregroundColor: Colors.white,
                            padding: const EdgeInsets.symmetric(vertical: 16),
                            shape: RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(16),
                              side: BorderSide(
                                color: Colors.white.withOpacity(0.2),
                                width: 1,
                              ),
                            ),
                            elevation: 0,
                          ),
                          child: Text(
                            'Tamam',
                            style: TextStyle(
                              fontSize: 16,
                              fontWeight: FontWeight.w600,
                            ),
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
              ),
            ),
          ),
        ),
      ),
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

  String _userName = 'User'; // Will be replaced with localized version
  UserActivity? _userActivity;
  DailyQuestion? _dailyQuestion;
  List<Quiz> _ongoingQuizzes = [];
  List<Quiz> _completedQuizzes = [];

  bool _isLoading = true;
  late StreamSubscription _mistakesSubscription;
  late ScrollController _scrollController;
  bool _tutorialChecked = false; // Tutorial kontrol edildi mi?

  // Bottom safe area hesaplama helper method'u
  double _calculateBottomSafeArea(BuildContext context) {
    final screenHeight = MediaQuery.of(context).size.height;
    final bottomPadding = MediaQuery.of(context).padding.bottom;
    final systemNavigationBarHeight = MediaQuery.of(context).systemGestureInsets.bottom;
    final actualBottomPadding = bottomPadding > 0 ? bottomPadding : systemNavigationBarHeight;
    
    // Bottom navigation bar yüksekliği + sistem padding + ek güvenlik alanı
    final bottomNavHeight = screenHeight * 0.07 + (actualBottomPadding * 0.3);
    return bottomNavHeight + 20; // 20px ek güvenlik alanı
  }

  @override
  void initState() {
    super.initState();
    _scrollController = ScrollController();
    _loadData();

    // EventBus dinleyicisi ekle - hızlı güncelleme için
    _mistakesSubscription = EventBus().mistakesUpdatedStream.listen((event) {
      // EventBus: Ana sayfa hızlı güncelleniyor
      if (mounted) {
        // Kısa loading göster
        setState(() {
          _isLoading = true;
        });

        // 200ms sonra loading'i kapat ve verileri güncelle
        Future.delayed(const Duration(milliseconds: 200), () {
          if (mounted) {
            setState(() {
              _isLoading = false;
            });
            // Sonra arka planda verileri güncelle
            _loadData();
          }
        });
      }
    });

    // Tutorial artık _loadData'dan sonra gösterilecek
  }

  @override
  void didChangeDependencies() {
    super.didChangeDependencies();
    // didChangeDependencies çağrıldı
    // Dil değiştiğinde verileri yeniden yükle
    _loadData();
  }

  @override
  void dispose() {
    // EventBus dinleyicisini temizle
    _mistakesSubscription.cancel();
    _scrollController.dispose();
    super.dispose();
  }

  Future<void> _checkAndShowTutorial() async {
    // Tutorial zaten kontrol edildiyse atla
    if (_tutorialChecked) {
      // Tutorial zaten kontrol edildi, atlanıyor
      return;
    }
    
    _tutorialChecked = true; // Kontrol edildi olarak işaretle
    
    // Ana tanıtımı kontrol et ve sadece o çalışsın
    final shouldShowTutorial = await _tutorialService.shouldShowTutorial();
    
    if (shouldShowTutorial) {
      if (!mounted) {
        return;
      }

      await Future.delayed(const Duration(milliseconds: 1500));

      if (!mounted) {
        return;
      }

      // Ana tanıtımı göster
      await InteractiveTutorial.show(
        context,
        steps: _tutorialService.getTutorialSteps(context),
        onComplete: () {
          _tutorialService.markTutorialAsShown();
        },
      );
    }
    // Feature showcases kaldırıldı - sadece ana tutorial çalışacak
  }

  Future<void> _loadData() async {
    if (!mounted) return;

    try {
      // Loading'i başlat
      setState(() {
        _isLoading = true;
      });

      // Minimum loading süresi için zamanlayıcı başlat
      final minimumLoadingTime = Future.delayed(
        const Duration(milliseconds: 400),
      );

      // 1. Aşama: Hızlı kullanıcı bilgisi yükleme
      final currentUser = _authService.currentUser;
      if (currentUser != null) {
        final fullName = currentUser.displayName ?? AppLocalizations.of(context)!.user;
        // Sadece adı al (soyadı değil)
        _userName = _getFirstName(fullName);
      }

      // 2. Aşama: Temel verileri paralel yükle
      final basicFutures = <Future>[];

      if (currentUser != null) {
        basicFutures.add(
          _quizService.updateUserActivity().then((userActivity) {
            if (mounted) {
              _userActivity = userActivity;
            }
          }),
        );
      }

      basicFutures.add(
        _quizService.getDailyQuestion(Provider.of<LanguageService>(context, listen: false).currentLocale.languageCode).then((dailyQuestion) {
          if (mounted) {
            _dailyQuestion = dailyQuestion;
          }
        }),
      );

      // Temel verileri bekle
      await Future.wait(basicFutures);

      // Minimum loading süresini de bekle
      await minimumLoadingTime;

      // Loading'i kapat
      if (mounted) {
        setState(() {
          _isLoading = false;
        });
        
        // Tutorial'ı loading bittikten sonra göster (kısa bir gecikme ile)
        Future.delayed(const Duration(milliseconds: 1000), () {
          if (mounted) {
            // Loading bitti, tutorial kontrol et
            _checkAndShowTutorial();
          }
        });
      }

      // 3. Aşama: Quiz verilerini arka planda yükle (loading kapalıyken)
      final quizFutures = <Future>[];

      quizFutures.add(
        _quizService.getOngoingQuizzes().then((ongoingQuizzes) {
          if (mounted) {
            setState(() {
              _ongoingQuizzes = ongoingQuizzes;
            });
          }
        }),
      );

      quizFutures.add(
        _quizService.getCompletedQuizzes().then((completedQuizzes) {
          if (mounted) {
            setState(() {
              _completedQuizzes = completedQuizzes;
            });
          }
        }),
      );



      // Quiz verilerini arka planda yükle
      await Future.wait(quizFutures);
    } catch (e) {
      // Veri yükleme hatası
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
                  controller: _scrollController,
                  physics: const AlwaysScrollableScrollPhysics(),
                  child: LayoutBuilder(
                    builder: (context, constraints) {
                      // Ekran boyutuna göre responsive tasarım
                      return Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          _buildHeader(context),
                          _buildDailyStreak(),
                          _buildDailyQuestion(context),
                          _buildOngoingQuiz(),
                          _buildFinishedQuiz(),
                          SizedBox(
                            height: _calculateBottomSafeArea(context),
                          ), // Navigation bar ve Android sistem tuşları için dinamik boşluk
                        ],
                      );
                    },
                  ),
                ),
              ),
    );
  }

  Widget _buildHeader(BuildContext context) {
    return Container(
      padding: const EdgeInsets.all(16),
      child: Row(
        children: [
          // Sol taraf - Avatar ve kullanıcı bilgileri
          Expanded(
            child: Row(
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
                    radius: 20,
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
                const SizedBox(width: 8),
                Expanded(
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        AppLocalizations.of(context)!.welcome,
                        style: TextStyle(color: Colors.grey, fontSize: 12),
                      ),
                      Container(
                        width: double.infinity,
                        child: Text(
                          _userName,
                          style: TextStyle(
                            fontSize: _calculateFontSize(_userName),
                            fontWeight: FontWeight.bold,
                            height: 1.1,
                          ),
                          maxLines: 1,  // Her zaman tek satır
                          overflow: TextOverflow.visible,  // ... koyma, görünür yap
                          textAlign: TextAlign.left,
                        ),
                      ),
                    ],
                  ),
                ),
              ],
            ),
          ),
          const SizedBox(width: 8),
          // Sağ taraf - Puan butonu
          _buildPointButton(
            Icons.stars,
            Colors.amber,
            _calculateTotalPoints().toString(),
          ),
        ],
      ),
    );
  }

  // Kullanıcı adı uzunluğuna göre font boyutu hesaplama
  // İsimden sadece adı al (soyadı değil)
  String _getFirstName(String fullName) {
    if (fullName.isEmpty) return 'User';
    
    // Boşlukla ayrılmış isimlerden ilkini al
    final nameParts = fullName.trim().split(' ');
    return nameParts.first;
  }

  double _calculateFontSize(String userName) {
    final screenWidth = MediaQuery.of(context).size.width;
    final screenHeight = MediaQuery.of(context).size.height;
    
    // Ekran boyutuna göre temel font boyutu
    double baseFontSize;
    if (screenWidth < 400) {
      baseFontSize = 18.0;  // Çok küçük ekranlar
    } else if (screenWidth < 600) {
      baseFontSize = 20.0;  // Küçük ekranlar
    } else if (screenWidth < 800) {
      baseFontSize = 22.0;  // Orta ekranlar
    } else {
      baseFontSize = 24.0;  // Büyük ekranlar
    }
    
    // İsim uzunluğuna göre çok agresif küçültme - tam sığması için
    double lengthMultiplier;
    if (userName.length <= 5) {
      lengthMultiplier = 1.0;  // Kısa isimler için normal
    } else if (userName.length <= 8) {
      lengthMultiplier = 0.85;  // Normal isimler
    } else if (userName.length <= 12) {
      lengthMultiplier = 0.7;  // Uzun isimler
    } else if (userName.length <= 16) {
      lengthMultiplier = 0.55;  // Çok uzun isimler
    } else if (userName.length <= 20) {
      lengthMultiplier = 0.45;  // En uzun isimler
    } else if (userName.length <= 25) {
      lengthMultiplier = 0.35;  // Aşırı uzun isimler
    } else if (userName.length <= 30) {
      lengthMultiplier = 0.28;  // Çok aşırı uzun isimler
    } else {
      lengthMultiplier = 0.22;  // En uzun isimler
    }
    
    // Ekran yüksekliği de dikkate alınır
    double heightMultiplier = 1.0;
    if (screenHeight < 600) {
      heightMultiplier = 0.9;  // Kısa ekranlar
    } else if (screenHeight > 800) {
      heightMultiplier = 1.1;  // Uzun ekranlar
    }
    
    double finalFontSize = baseFontSize * lengthMultiplier * heightMultiplier;
    
    // Minimum ve maksimum sınırlar - çok düşük minimum
    return finalFontSize.clamp(8.0, 24.0);
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
      padding: const EdgeInsets.symmetric(horizontal: 8, vertical: 6),
      decoration: BoxDecoration(
        color: color.withOpacity(0.2),
        borderRadius: BorderRadius.circular(12),
        border: Border.all(color: color.withOpacity(0.3), width: 1),
      ),
      child: Row(
        mainAxisSize: MainAxisSize.min,
        children: [
          Icon(icon, color: color, size: 16),
          const SizedBox(width: 4),
          Text(
            points,
            style: TextStyle(
              color: color, 
              fontWeight: FontWeight.bold,
              fontSize: 12,
            ),
          ),
          const SizedBox(width: 2),
          Text(
            AppLocalizations.of(context)!.points,
            style: TextStyle(
              color: color, 
              fontWeight: FontWeight.bold,
              fontSize: 11,
            ),
          ),
        ],
      ),
    );
  }


  // Demo butonu kaldırıldı

  Widget _buildDailyStreak() {
    // Responsive boyutlar
    final screenWidth = MediaQuery.of(context).size.width;
    final screenHeight = MediaQuery.of(context).size.height;
    final isSmallScreen = screenWidth < 400;
    final isVerySmallScreen = screenWidth < 350;
    final isShortScreen = screenHeight < 600;
    
    // Responsive padding ve margin
    final horizontalMargin = isVerySmallScreen ? 8.0 : (isSmallScreen ? 10.0 : 12.0);
    final verticalMargin = isShortScreen ? 2.0 : 4.0;
    final horizontalPadding = isVerySmallScreen ? 12.0 : (isSmallScreen ? 14.0 : 16.0);
    final verticalPadding = isShortScreen ? 8.0 : 10.0;
    
    // Responsive font boyutları
    final titleFontSize = isVerySmallScreen ? 14.0 : (isSmallScreen ? 15.0 : 16.0);
    final iconSize = isVerySmallScreen ? 16.0 : (isSmallScreen ? 17.0 : 18.0);
    
    // Kullanıcı aktivitesi henüz yoksa varsayılan değerler göster
    List<bool> weeklyStatus =
        _userActivity?.getWeeklyLoginStatus() ?? List.filled(7, false);

    // Bugünün haftanın hangi günü olduğunu hesapla (1: Pazartesi, 2: Salı, ... 7: Pazar)
    final now = DateTime.now();
    final todayWeekday = now.weekday; // 1-7 arası (Pazartesi: 1, Pazar: 7)

    // Haftanın günlerini Pazartesi'den Pazar'a sırala
    final weekdayNames = AppLocalizations.of(context)!.weekdays.split(',');

    // Eğer kullanıcı aktivitesi yoksa, varsayılan olarak sadece bugünü işaretle
    if (_userActivity == null) {
      weeklyStatus = List.filled(7, false);
      final todayIndex =
          todayWeekday - 1; // 0-6 arası indeks (Pazartesi: 0, Pazar: 6)
      weeklyStatus[todayIndex] = true;
    }

    // Bu haftaki giriş yapılan gün sayısını hesapla
    final weeklyLoginDays = weeklyStatus.where((status) => status).length;

    return Container(
      margin: EdgeInsets.symmetric(
        horizontal: horizontalMargin,
        vertical: verticalMargin,
      ),
      padding: EdgeInsets.symmetric(
        horizontal: horizontalPadding,
        vertical: verticalPadding,
      ),
      decoration: BoxDecoration(
        gradient: LinearGradient(
          colors: [Colors.blue.shade800, Colors.purple.shade900],
        ),
        borderRadius: BorderRadius.circular(isVerySmallScreen ? 12 : 16),
        boxShadow: [
          BoxShadow(
            color: Colors.blue.withOpacity(0.2),
            blurRadius: isVerySmallScreen ? 6 : 8,
            spreadRadius: 0.5,
          ),
        ],
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Row(
            children: [
              Icon(
                Icons.local_fire_department,
                color: Colors.orange,
                size: iconSize,
              ),
              SizedBox(width: isVerySmallScreen ? 6 : 8),
              Flexible(
                child: Text(
                  '$weeklyLoginDays ${AppLocalizations.of(context)!.dailyParticipation}',
                  style: TextStyle(
                    fontSize: titleFontSize,
                    fontWeight: FontWeight.bold,
                    color: Colors.white,
                  ),
                ),
              ),
            ],
          ),
          SizedBox(height: isShortScreen ? 8 : 12),
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
                    width: isVerySmallScreen ? 24 : (isSmallScreen ? 26 : 28),
                    height: isVerySmallScreen ? 24 : (isSmallScreen ? 26 : 28),
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
                              ? Icon(
                                Icons.check,
                                color: Colors.white,
                                size: isVerySmallScreen ? 12 : (isSmallScreen ? 13 : 14),
                              )
                              : Text(
                                dayName,
                                style: TextStyle(
                                  fontSize: isVerySmallScreen ? 8 : (isSmallScreen ? 9 : 10),
                                  fontWeight: FontWeight.bold,
                                  color:
                                      isToday
                                          ? Colors.white
                                          : Colors.white.withOpacity(0.7),
                                ),
                              ),
                    ),
                  ),
                  SizedBox(height: isShortScreen ? 1 : 2),
                  Text(
                    dayName,
                    style: TextStyle(
                      fontSize: isVerySmallScreen ? 7 : (isSmallScreen ? 7.5 : 8),
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
    // Responsive boyutlar
    final screenWidth = MediaQuery.of(context).size.width;
    final screenHeight = MediaQuery.of(context).size.height;
    final isSmallScreen = screenWidth < 400;
    final isVerySmallScreen = screenWidth < 350;
    final isShortScreen = screenHeight < 600;
    
    // Responsive padding ve margin
    final horizontalMargin = isVerySmallScreen ? 8.0 : (isSmallScreen ? 10.0 : 12.0);
    final verticalMargin = isShortScreen ? 1.0 : 2.0;
    final padding = isVerySmallScreen ? 6.0 : (isSmallScreen ? 7.0 : 8.0);
    
    // Responsive font boyutları
    final titleFontSize = isVerySmallScreen ? 10.0 : (isSmallScreen ? 10.5 : 11.0);
    final questionFontSize = isVerySmallScreen ? 10.0 : (isSmallScreen ? 10.5 : 11.0);
    final buttonFontSize = isVerySmallScreen ? 8.0 : (isSmallScreen ? 8.5 : 9.0);
    final statusFontSize = isVerySmallScreen ? 6.0 : (isSmallScreen ? 6.5 : 7.0);
    
    // Responsive icon boyutları
    final iconSize = isVerySmallScreen ? 10.0 : (isSmallScreen ? 11.0 : 12.0);
    final statusIconSize = isVerySmallScreen ? 8.0 : (isSmallScreen ? 9.0 : 10.0);
    
    return Container(
      margin: EdgeInsets.symmetric(horizontal: horizontalMargin, vertical: verticalMargin),
      padding: EdgeInsets.all(padding),
      decoration: BoxDecoration(
        gradient: LinearGradient(
          colors: [Colors.orange.shade800, Colors.red.shade900],
        ),
        borderRadius: BorderRadius.circular(isVerySmallScreen ? 8 : 10),
        boxShadow: [
          BoxShadow(
            color: Colors.orange.withOpacity(0.15),
            blurRadius: isVerySmallScreen ? 4 : 6,
            spreadRadius: 0.5,
          ),
        ],
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Row(
            children: [
              Container(
                padding: EdgeInsets.all(isVerySmallScreen ? 2 : 3),
                decoration: BoxDecoration(
                  color: Colors.white.withOpacity(0.2),
                  borderRadius: BorderRadius.circular(isVerySmallScreen ? 4 : 6),
                ),
                child: Icon(
                  Icons.lightbulb,
                  color: Colors.yellow,
                  size: iconSize,
                ),
              ),
              SizedBox(width: isVerySmallScreen ? 3 : 4),
              Text(
                AppLocalizations.of(context)!.dailyQuestion,
                style: TextStyle(
                  fontSize: titleFontSize,
                  fontWeight: FontWeight.bold,
                  color: Colors.white,
                ),
              ),
              const Spacer(),
              if (_dailyQuestion?.isAnswered == true)
                Container(
                  padding: EdgeInsets.symmetric(
                    horizontal: isVerySmallScreen ? 3 : 4, 
                    vertical: isVerySmallScreen ? 0.5 : 1
                  ),
                  decoration: BoxDecoration(
                    color: _dailyQuestion?.isCorrect == true
                        ? Colors.green.withOpacity(0.8)
                        : Colors.red.withOpacity(0.8),
                    borderRadius: BorderRadius.circular(isVerySmallScreen ? 6 : 8),
                  ),
                  child: Row(
                    mainAxisSize: MainAxisSize.min,
                    children: [
                      Icon(
                        _dailyQuestion?.isCorrect == true
                            ? Icons.check_circle
                            : Icons.cancel,
                        color: Colors.white,
                        size: statusIconSize,
                      ),
                      SizedBox(width: isVerySmallScreen ? 1 : 2),
                      Text(
                        _dailyQuestion?.isCorrect == true ? AppLocalizations.of(context)!.correctAnswer : AppLocalizations.of(context)!.wrongAnswer,
                        style: TextStyle(
                          color: Colors.white,
                          fontWeight: FontWeight.bold,
                          fontSize: statusFontSize,
                        ),
                      ),
                    ],
                  ),
                )
              else
                Container(
                  padding: EdgeInsets.symmetric(
                    horizontal: isVerySmallScreen ? 3 : 4, 
                    vertical: isVerySmallScreen ? 0.5 : 1
                  ),
                  decoration: BoxDecoration(
                    color: Colors.white.withOpacity(0.2),
                    borderRadius: BorderRadius.circular(isVerySmallScreen ? 6 : 8),
                  ),
                  child: Text(
                    AppLocalizations.of(context)!.dailyQuestionPoints,
                    style: TextStyle(
                      color: Colors.white,
                      fontWeight: FontWeight.bold,
                      fontSize: statusFontSize,
                    ),
                  ),
                ),
            ],
          ),
          SizedBox(height: isShortScreen ? 3 : 4),
          Text(
            _dailyQuestion?.question.question ??
                'In anesthesia, through which receptor does propofol act?',
            style: TextStyle(
              fontSize: questionFontSize,
              fontWeight: FontWeight.w500,
              color: Colors.white,
              height: 1.2,
            ),
            maxLines: isShortScreen ? 1 : 2,
            overflow: TextOverflow.ellipsis,
          ),
          SizedBox(height: isShortScreen ? 4 : 6),
          SizedBox(
            height: isShortScreen ? 20 : (isVerySmallScreen ? 22 : 24),
            child: ElevatedButton(
              onPressed: () {
                if (_dailyQuestion != null) {
                  _showDailyQuestionDialog(context, _dailyQuestion!);
                }
              },
              style: ElevatedButton.styleFrom(
                backgroundColor: _dailyQuestion?.isAnswered == true
                    ? Colors.green.withOpacity(0.3)
                    : Colors.white.withOpacity(0.2),
                foregroundColor: Colors.white,
                padding: EdgeInsets.zero,
                minimumSize: Size(double.infinity, isShortScreen ? 20 : (isVerySmallScreen ? 22 : 24)),
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(isVerySmallScreen ? 4 : 6),
                ),
              ),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  if (_dailyQuestion?.isAnswered == true)
                    Icon(Icons.check, size: isVerySmallScreen ? 8 : (isSmallScreen ? 9 : 10))
                  else
                    Icon(Icons.quiz, size: isVerySmallScreen ? 8 : (isSmallScreen ? 9 : 10)),
                  SizedBox(width: isVerySmallScreen ? 2 : 3),
                  Text(
                    _dailyQuestion?.isAnswered == true ? AppLocalizations.of(context)!.checkAgain : AppLocalizations.of(context)!.answer,
                    style: TextStyle(fontSize: buttonFontSize),
                  ),
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }

  void _showDailyQuestionDialog(
    BuildContext context,
    DailyQuestion dailyQuestion,
  ) {
    // Dialog yerine tam ekran quiz ekranına git
    Navigator.of(context).push(
      MaterialPageRoute(
        builder: (context) => DailyQuestionScreen(dailyQuestion: dailyQuestion),
      ),
    );
  }

  Widget _buildOngoingQuiz() {
    // Responsive boyutlar
    final screenWidth = MediaQuery.of(context).size.width;
    final screenHeight = MediaQuery.of(context).size.height;
    final isSmallScreen = screenWidth < 400;
    final isVerySmallScreen = screenWidth < 350;
    final isShortScreen = screenHeight < 600;
    
    // Responsive padding ve margin
    final horizontalPadding = isVerySmallScreen ? 12.0 : (isSmallScreen ? 16.0 : 20.0);
    final verticalPadding = isShortScreen ? 2.0 : 4.0;
    final cardPadding = isVerySmallScreen ? 8.0 : (isSmallScreen ? 10.0 : 12.0);
    
    // Responsive font boyutları
    final titleFontSize = isVerySmallScreen ? 14.0 : (isSmallScreen ? 15.0 : 16.0);
    final viewAllFontSize = isVerySmallScreen ? 10.0 : (isSmallScreen ? 11.0 : 12.0);
    final contentFontSize = isVerySmallScreen ? 10.0 : (isSmallScreen ? 11.0 : 12.0);
    
    if (_ongoingQuizzes.isEmpty) {
      return Padding(
        padding: EdgeInsets.symmetric(
          horizontal: horizontalPadding,
          vertical: verticalPadding,
        ),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text(
                  AppLocalizations.of(context)!.ongoing,
                  style: TextStyle(
                    fontSize: titleFontSize,
                    fontWeight: FontWeight.bold,
                  ),
                ),
                Text(
                  AppLocalizations.of(context)!.viewAll,
                  style: TextStyle(color: Colors.blue, fontSize: viewAllFontSize),
                ),
              ],
            ),
            SizedBox(height: isShortScreen ? 6 : 8),
            Container(
              padding: EdgeInsets.all(cardPadding),
              decoration: BoxDecoration(
                gradient: LinearGradient(
                  colors: [Colors.purple.shade900, Colors.blue.shade900],
                ),
                borderRadius: BorderRadius.circular(isVerySmallScreen ? 12 : 16),
                boxShadow: [
                  BoxShadow(
                    color: Colors.purple.withOpacity(0.2),
                    blurRadius: isVerySmallScreen ? 6 : 8,
                    spreadRadius: 1,
                  ),
                ],
              ),
              child: Center(
                child: Text(
                  AppLocalizations.of(context)!.noOngoingQuiz,
                  style: TextStyle(
                    color: Colors.white,
                    fontSize: contentFontSize,
                  ),
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

    return Padding(
      padding: EdgeInsets.symmetric(
        horizontal: horizontalPadding,
        vertical: verticalPadding,
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Text(
                AppLocalizations.of(context)!.ongoing,
                style: TextStyle(
                  fontSize: titleFontSize,
                  fontWeight: FontWeight.bold,
                ),
              ),
              TextButton(
                onPressed: () => _showAllOngoingQuizzes(context),
                child: Row(
                  children: [
                    Text(
                      AppLocalizations.of(context)!.all,
                      style: TextStyle(fontSize: viewAllFontSize),
                    ),
                    SizedBox(width: isVerySmallScreen ? 2 : 4),
                    Icon(
                      Icons.arrow_forward,
                      size: isVerySmallScreen ? 12 : (isSmallScreen ? 13 : 14),
                    ),
                  ],
                ),
              ),
            ],
          ),
          SizedBox(height: isShortScreen ? 6 : 8),
          // Yatay kaydırmalı quiz kartları
          SizedBox(
            height: isShortScreen ? 100 : (isVerySmallScreen ? 110 : 115),
            child:
                quizzesToShow.isEmpty
                    ? Center(
                      child: Text(
                        AppLocalizations.of(context)!.noOngoingQuiz,
                        style: TextStyle(
                          color: Colors.grey[400],
                          fontSize: contentFontSize,
                        ),
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
                          width: isVerySmallScreen ? 180 : (isSmallScreen ? 200 : 220),
                          margin: EdgeInsets.only(
                            right: isVerySmallScreen ? 4 : 6,
                          ),
                          child: GestureDetector(
                            onTap: () => _continueQuiz(quiz),
                            child: Container(
                              padding: EdgeInsets.all(
                                isVerySmallScreen ? 5 : (isSmallScreen ? 6 : 7),
                              ), // Padding optimize edildi
                              decoration: BoxDecoration(
                                gradient: LinearGradient(
                                  colors: [
                                    _getQuizColor(index),
                                    _getQuizColor(index).withOpacity(0.7),
                                  ],
                                ),
                                borderRadius: BorderRadius.circular(
                                  14,
                                ), // Border radius azaltıldı
                                boxShadow: [
                                  BoxShadow(
                                    color: _getQuizColor(
                                      index,
                                    ).withOpacity(0.2),
                                    blurRadius: 6, // Blur radius azaltıldı
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
                                        padding: const EdgeInsets.all(
                                          4,
                                        ), // Padding optimize edildi
                                        decoration: BoxDecoration(
                                          color: Colors.white.withOpacity(0.2),
                                          borderRadius: BorderRadius.circular(
                                            8,
                                          ), // Border radius azaltıldı
                                        ),
                                        child: Icon(
                                          _getQuizIcon(quiz.name),
                                          color: Colors.white,
                                          size: 16, // Icon boyutu azaltıldı
                                        ),
                                      ),
                                      const SizedBox(
                                        width: 8,
                                      ), // Boşluk azaltıldı
                                      Expanded(
                                        child: Column(
                                          crossAxisAlignment:
                                              CrossAxisAlignment.start,
                                          children: [
                                            Text(
                                              quiz.name,
                                              style: const TextStyle(
                                                fontSize:
                                                    14, // Font size azaltıldı
                                                fontWeight: FontWeight.bold,
                                                color: Colors.white,
                                              ),
                                              overflow: TextOverflow.ellipsis,
                                            ),
                                            Text(
                                              '${quiz.currentQuestionIndex ?? 0} ${AppLocalizations.of(context)!.questionsOf} ${quiz.totalQuestions} ${AppLocalizations.of(context)!.questionsCompleted}',
                                              style: TextStyle(
                                                color: Colors.white.withOpacity(
                                                  0.8,
                                                ),
                                                fontSize:
                                                    10, // Font size azaltıldı
                                              ),
                                              overflow: TextOverflow.ellipsis,
                                            ),
                                          ],
                                        ),
                                      ),
                                    ],
                                  ),
                                  const SizedBox(
                                    height: 6,
                                  ), // Boşluk optimize edildi
                                  Row(
                                    mainAxisAlignment:
                                        MainAxisAlignment.spaceBetween,
                                    children: [
                                      Text(
                                        '${AppLocalizations.of(context)!.progressPercent}: %${(progressValue * 100).toInt()}',
                                        style: TextStyle(
                                          color: Colors.white.withOpacity(0.9),
                                          fontWeight: FontWeight.w500,
                                          fontSize: 10, // Font size azaltıldı
                                        ),
                                      ),
                                      Container(
                                        padding: const EdgeInsets.all(
                                          4,
                                        ), // Padding azaltıldı
                                        decoration: BoxDecoration(
                                          color: Colors.white.withOpacity(0.2),
                                          shape: BoxShape.circle,
                                        ),
                                        child: const Icon(
                                          Icons.play_arrow,
                                          color: Colors.white,
                                          size: 12, // Icon boyutu azaltıldı
                                        ),
                                      ),
                                    ],
                                  ),
                                  const SizedBox(height: 5), // Boşluk optimize edildi
                                  ClipRRect(
                                    borderRadius: BorderRadius.circular(
                                      6,
                                    ), // Border radius azaltıldı
                                    child: LinearProgressIndicator(
                                      value: progressValue,
                                      backgroundColor: Colors.white.withOpacity(
                                        0.2,
                                      ),
                                      valueColor:
                                          const AlwaysStoppedAnimation<Color>(
                                            Colors.white,
                                          ),
                                      minHeight: 3, // Height optimize edildi
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

    showModalBottomSheet(
      context: context,
      backgroundColor: Colors.transparent,
      isScrollControlled: true,
      builder:
          (context) => SafeArea(
            child: Container(
              height: MediaQuery.of(context).size.height * 0.75 - MediaQuery.of(context).padding.bottom,
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
                            Text(
                              AppLocalizations.of(context)!.ongoingQuizzes,
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
                          ? Center(
                            child: Text(
                              AppLocalizations.of(context)!.noOngoingQuiz,
                              style: TextStyle(color: Colors.white70),
                            ),
                          )
                          : Scrollbar(
                            thickness: 4,
                            radius: const Radius.circular(8),
                            thumbVisibility: true,
                            child: ListView.builder(
                              physics: const AlwaysScrollableScrollPhysics(),
                              padding: EdgeInsets.only(
                                left: 16,
                                right: 16,
                                top: 16,
                                bottom: MediaQuery.of(context).padding.bottom + 16,
                              ),
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
                                                    '${quiz.currentQuestionIndex ?? 0} ${AppLocalizations.of(context)!.questionsOf} ${quiz.totalQuestions} ${AppLocalizations.of(context)!.questionsCompleted}',
                                                    style: TextStyle(
                                                      fontSize: 12,
                                                      color: Colors.grey[400],
                                                    ),
                                                  ),
                                                ],
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
                ),
              ],
            ),
          ),
        ),
    );
  }

  // Quiz kategori adına göre ikon seç
  IconData _getQuizIcon(String quizName) {
    switch (quizName.toLowerCase()) {
      case 'anestezi uygulaması':
      case 'anestezi':
        return Icons.health_and_safety;
      case 'kardiyovasküler monitörizasyon':
      case 'kardiyovasküler':
        return Icons.favorite;
      case 'ameliyathane ortamı':
      case 'ameliyathane':
        return Icons.local_hospital;
      case 'solunum sistemleri':
      case 'solunum':
        return Icons.air;
      case 'farmakolojik prensipler':
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
      final questions = await _quizService.getCategoryQuestions(quiz.name, context: context);

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
        SnackBarUtils.showWarningSnackBar(
          context, 
          'Quiz soruları bulunamadı: ${quiz.name}'
        );
      }
    } catch (e) {
      SnackBarUtils.showErrorSnackBar(
        context,
        'Quiz devam ederken bir hata oluştu: ${e.toString()}',
      );
    }
  }

  Widget _buildFinishedQuiz() {
    // Responsive boyutlar
    final screenWidth = MediaQuery.of(context).size.width;
    final screenHeight = MediaQuery.of(context).size.height;
    final isSmallScreen = screenWidth < 400;
    final isVerySmallScreen = screenWidth < 350;
    final isShortScreen = screenHeight < 600;
    
    // Responsive padding ve margin
    final horizontalPadding = isVerySmallScreen ? 12.0 : (isSmallScreen ? 16.0 : 20.0);
    final verticalPadding = isShortScreen ? 2.0 : 4.0;
    final cardPadding = isVerySmallScreen ? 8.0 : (isSmallScreen ? 10.0 : 12.0);
    
    // Responsive font boyutları
    final titleFontSize = isVerySmallScreen ? 14.0 : (isSmallScreen ? 15.0 : 16.0);
    final viewAllFontSize = isVerySmallScreen ? 10.0 : (isSmallScreen ? 11.0 : 12.0);
    final contentFontSize = isVerySmallScreen ? 10.0 : (isSmallScreen ? 11.0 : 12.0);
    
    if (_completedQuizzes.isEmpty) {
      return Padding(
        padding: EdgeInsets.symmetric(
          horizontal: horizontalPadding,
          vertical: verticalPadding,
        ),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              AppLocalizations.of(context)!.completedQuizzes,
              style: TextStyle(
                fontSize: titleFontSize,
                fontWeight: FontWeight.bold,
              ),
            ),
            SizedBox(height: isShortScreen ? 6 : 8),
            Container(
              padding: EdgeInsets.all(cardPadding),
              decoration: BoxDecoration(
                color: Colors.white.withOpacity(0.1),
                borderRadius: BorderRadius.circular(isVerySmallScreen ? 12 : 16),
                border: Border.all(
                  color: Colors.grey.withOpacity(0.2),
                  width: 1,
                ),
              ),
              child: Center(
                child: Text(
                  AppLocalizations.of(context)!.noCompletedQuiz,
                  style: TextStyle(
                    color: Colors.white,
                    fontSize: contentFontSize,
                  ),
                ),
              ),
            ),
          ],
        ),
      );
    }

    // Tamamlanan quizler varsa
    return Padding(
      padding: EdgeInsets.symmetric(
        horizontal: horizontalPadding,
        vertical: verticalPadding,
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Text(
                AppLocalizations.of(context)!.completedQuizzes,
                style: TextStyle(fontSize: titleFontSize, fontWeight: FontWeight.bold),
              ),
              TextButton(
                onPressed: () {
                  // Tüm tamamlanan quizleri göster
                  _showAllCompletedQuizzes(context);
                },
                child: Row(
                  children: [
                    Text(AppLocalizations.of(context)!.all, style: TextStyle(fontSize: viewAllFontSize)),
                    SizedBox(width: isVerySmallScreen ? 2 : 4),
                    Icon(Icons.arrow_forward, size: isVerySmallScreen ? 12 : (isSmallScreen ? 13 : 14)),
                  ],
                ),
              ),
            ],
          ),
          SizedBox(height: isShortScreen ? 6 : 8),
          // Yatay listede göster
          SizedBox(
            height: isShortScreen ? 110 : (isVerySmallScreen ? 120 : 130),
            child: ListView.builder(
              scrollDirection: Axis.horizontal,
              itemCount: _completedQuizzes.length,
              itemBuilder: (context, index) {
                final quiz = _completedQuizzes[index];
                final successRate = quiz.successRate?.toInt() ?? 0;

                // Tamamlanma tarihini formatla
                String completedDate = AppLocalizations.of(context)!.completed;
                if (quiz.createdAt != null) {
                  final date = quiz.createdAt!;
                  completedDate = '${date.day}.${date.month}.${date.year}';
                }

                return Container(
                  width: isVerySmallScreen ? 180 : (isSmallScreen ? 200 : 220),
                  margin: EdgeInsets.only(right: isVerySmallScreen ? 8 : 12),
                  decoration: BoxDecoration(
                    gradient: LinearGradient(
                      colors: [
                        _getQuizColor(index),
                        _getQuizColor(index).withOpacity(0.7),
                      ],
                    ),
                    borderRadius: BorderRadius.circular(isVerySmallScreen ? 10 : 14),
                    boxShadow: [
                      BoxShadow(
                        color: _getQuizColor(index).withOpacity(0.2),
                        blurRadius: isVerySmallScreen ? 4 : 6,
                        spreadRadius: 0.5,
                      ),
                    ],
                  ),
                  child: Padding(
                    padding: EdgeInsets.all(isVerySmallScreen ? 6 : (isSmallScreen ? 8 : 10)),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Row(
                          children: [
                            Container(
                              padding: EdgeInsets.all(isVerySmallScreen ? 6 : (isSmallScreen ? 7 : 8)),
                              decoration: BoxDecoration(
                                color: Colors.white.withOpacity(0.2),
                                borderRadius: BorderRadius.circular(isVerySmallScreen ? 8 : 10),
                              ),
                              child: Icon(
                                _getQuizIcon(quiz.name),
                                color: Colors.white,
                                size: isVerySmallScreen ? 12 : (isSmallScreen ? 13 : 14),
                              ),
                            ),
                            SizedBox(width: isVerySmallScreen ? 6 : 8),
                            Expanded(
                              child: Column(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  Text(
                                    quiz.name,
                                    style: TextStyle(
                                      fontSize: isVerySmallScreen ? 12 : (isSmallScreen ? 13 : 14),
                                      fontWeight: FontWeight.bold,
                                      color: Colors.white,
                                    ),
                                    maxLines: 2,
                                    overflow: TextOverflow.ellipsis,
                                  ),
                                  const SizedBox(height: 4),
                                  Text(
                                    completedDate,
                                    style: TextStyle(
                                      color: Colors.white.withOpacity(0.8),
                                      fontSize: 10,
                                    ),
                                  ),
                                ],
                              ),
                            ),
                          ],
                        ),
                        const SizedBox(height: 8),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Expanded(
                              child: Text(
                                '${AppLocalizations.of(context)!.correct}: ${quiz.score}/${quiz.totalQuestions}',
                                style: TextStyle(
                                  color: Colors.white.withOpacity(0.9),
                                  fontWeight: FontWeight.w500,
                                  fontSize: 10,
                                ),
                                maxLines: 1,
                                overflow: TextOverflow.ellipsis,
                              ),
                            ),
                            Container(
                              padding: const EdgeInsets.symmetric(
                                horizontal: 8,
                                vertical: 4,
                              ),
                              decoration: BoxDecoration(
                                color: _getSuccessRateColor(
                                  successRate,
                                ).withOpacity(0.2),
                                borderRadius: BorderRadius.circular(12),
                              ),
                              child: Text(
                                '%$successRate',
                                style: TextStyle(
                                  color: _getSuccessRateColor(successRate),
                                  fontWeight: FontWeight.bold,
                                  fontSize: 12,
                                ),
                              ),
                            ),
                          ],
                        ),
                        const SizedBox(height: 6),
                        ClipRRect(
                          borderRadius: BorderRadius.circular(4),
                          child: LinearProgressIndicator(
                            value: successRate / 100,
                            backgroundColor: Colors.white.withOpacity(0.2),
                            valueColor: AlwaysStoppedAnimation<Color>(
                              _getSuccessRateColor(successRate),
                            ),
                            minHeight: 3,
                          ),
                        ),
                      ],
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

  // Başarı oranına göre renk döndürür
  Color _getSuccessRateColor(int successRate) {
    if (successRate >= 80) {
      return Colors.green;
    } else if (successRate >= 60) {
      return Colors.lime;
    } else if (successRate >= 40) {
      return Colors.amber;
    } else if (successRate >= 20) {
      return Colors.orange;
    } else {
      return Colors.red;
    }
  }

  // Tüm tamamlanan quizleri göster
  void _showAllCompletedQuizzes(BuildContext context) {
    showModalBottomSheet(
      context: context,
      backgroundColor: Colors.transparent,
      isScrollControlled: true,
      builder:
          (context) => SafeArea(
            child: Container(
              height: MediaQuery.of(context).size.height * 0.75 - MediaQuery.of(context).padding.bottom,
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
                              Icons.check_circle,
                              color: Colors.white,
                            ),
                          ),
                          const SizedBox(width: 12),
                          Text(
                            AppLocalizations.of(context)!.completedQuizzes,
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
                      _completedQuizzes.isEmpty
                          ? Center(
                            child: Text(
                              AppLocalizations.of(context)!.noCompletedQuiz,
                              style: TextStyle(color: Colors.white70),
                            ),
                          )
                          : Scrollbar(
                            thickness: 4,
                            radius: const Radius.circular(8),
                            thumbVisibility: true,
                            child: ListView.builder(
                              physics: const AlwaysScrollableScrollPhysics(),
                              padding: EdgeInsets.only(
                                left: 16,
                                right: 16,
                                top: 16,
                                bottom: MediaQuery.of(context).padding.bottom + 16,
                              ),
                              itemCount: _completedQuizzes.length,
                              itemBuilder: (context, index) {
                              final quiz = _completedQuizzes[index];
                              final successRate =
                                  quiz.successRate?.toInt() ?? 0;

                              // Tamamlanma tarihini formatla
                              String completedDate = AppLocalizations.of(context)!.completed;
                              if (quiz.createdAt != null) {
                                final date = quiz.createdAt!;
                                completedDate =
                                    '${date.day}.${date.month}.${date.year}';
                              }

                              return Container(
                                margin: const EdgeInsets.only(bottom: 16),
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
                                  crossAxisAlignment: CrossAxisAlignment.start,
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
                                                  fontWeight: FontWeight.bold,
                                                  color: Colors.white,
                                                ),
                                              ),
                                              const SizedBox(height: 4),
                                              Text(
                                                completedDate,
                                                style: TextStyle(
                                                  fontSize: 12,
                                                  color: Colors.grey[400],
                                                ),
                                              ),
                                            ],
                                          ),
                                        ),
                                      ],
                                    ),
                                    const SizedBox(height: 12),
                                    Row(
                                      children: [
                                        Expanded(
                                          child: ClipRRect(
                                            borderRadius: BorderRadius.circular(
                                              8,
                                            ),
                                            child: LinearProgressIndicator(
                                              value: successRate / 100,
                                              backgroundColor: Colors.grey[800],
                                              valueColor:
                                                  AlwaysStoppedAnimation<Color>(
                                                    _getSuccessRateColor(
                                                      successRate,
                                                    ),
                                                  ),
                                              minHeight: 6,
                                            ),
                                          ),
                                        ),
                                        const SizedBox(width: 12),
                                        Text(
                                          '${quiz.score}/${quiz.totalQuestions}',
                                          style: const TextStyle(
                                            color: Colors.white,
                                            fontSize: 14,
                                            fontWeight: FontWeight.bold,
                                          ),
                                        ),
                                      ],
                                    ),
                                  ],
                                ),
                              );
                            },
                          ),
                        ),
                ),
              ],
            ),
          ),
        ),
    );
  }


}

 
