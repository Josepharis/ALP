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
import '../services/tutorial_service.dart';
import '../services/language_service.dart';
import '../services/question_translation_service.dart';

import '../utils/event_bus.dart';
import '../utils/snackbar_utils.dart';
import '../l10n/app_localizations.dart';
import '../widgets/interactive_tutorial.dart';
import '../screens/quiz_screen.dart';
import '../screens/mistakes_screen.dart';
import '../screens/leaderboard_screen.dart';
import '../screens/profile_screen.dart';
import '../data/anesthesia_application_questions.dart';
import '../data/respiratory_system_questions.dart';
import '../data/cardiovascular_monitoring_questions.dart';
import '../data/operating_room_environment_questions.dart';
import '../data/anesthesia_workstation_questions.dart';

import '../data/non_cardiovascular_monitoring_questions.dart';
import '../data/pharmacological_principles_questions.dart';
import '../data/inhalation_anesthetics_questions.dart';
import '../data/intravenous_anesthetics_questions.dart';
import '../data/analgesic_agents_questions.dart';
import '../data/neuromuscular_blocking_agents_questions.dart';
import '../data/cholinesterase_inhibitors_questions.dart';
import '../data/anticholinergic_drugs_questions.dart';
import '../data/adrenergic_drugs_questions.dart';
import '../data/hypotensive_agents_questions.dart';
import '../data/local_anesthetics_questions.dart';
import '../data/auxiliary_drugs_questions.dart';
import '../data/airway_management_questions.dart';
import '../data/cardiovascular_physiology_questions.dart';
import '../data/cardiovascular_surgery_questions.dart';
import '../data/respiratory_diseases_questions.dart';
import '../data/respiratory_physiology_questions.dart';
import '../data/pain_management_questions.dart';
import '../data/neurological_psychiatric_anesthesia_questions.dart';
import '../data/otolaryngology_head_neck_surgery_questions.dart';
import '../data/endocrine_diseases_anesthesia_questions.dart';
import '../data/neuromuscular_diseases_anesthesia_questions.dart';
import '../data/geriatric_anesthesia_questions.dart';
import '../data/trauma_emergency_anesthesia_questions.dart';
import '../data/orthopedic_anesthesia_questions.dart';
import '../data/enhanced_recovery_protocols_questions.dart'; // Added
import '../data/anesthesia_complications_questions.dart'; // Added
import '../data/genitourinary_anesthesia_questions.dart'; // Added
import '../data/ophthalmic_anesthesia_questions.dart'; // Added
import '../data/renal_physiology_anesthesia_questions.dart'; // Added
import '../data/spinal_epidural_caudal_blocks_questions.dart'; // Added
import '../data/safety_quality_performance_improvement_questions.dart'; // Added
import '../data/fluid_management_blood_products_questions.dart';
import '../data/thoracic_surgery_anesthesia_questions.dart';
import '../data/thermoregulation_hypothermia_malignant_hyperthermia_questions.dart';
import '../data/outpatient_anesthesia_questions.dart';
import '../data/cardiopulmonary_resuscitation_questions.dart';
import '../data/intensive_care_problems_questions.dart';
import '../data/postanesthetic_care_questions.dart';
import '../data/pediatric_anesthesia_questions.dart';
import '../data/chronic_pain_treatment_questions.dart';
import '../data/postoperative_care_mechanical_ventilation_questions.dart';
import '../data/neurosurgery_anesthesia_questions.dart';
import '../data/maternal_fetal_physiology_anesthesia_questions.dart';
import '../data/peripheral_nerve_blocks_questions.dart';
import '../data/sepsis_ards_questions.dart';
import '../data/coagulation_anticoagulant_questions.dart';

import '../data/fluid_electrolyte_imbalance_management_questions.dart';
import '../data/neurophysiology_anesthesia_questions.dart';
import '../data/perioperative_intensive_care_nutrition_questions.dart';
import '../data/hepatic_physiology_anesthesia_questions.dart';
import '../data/obstetric_anesthesia_questions.dart';
import '../data/acid_base_management_questions.dart';
import '../data/liver_disease_anesthesia_questions.dart';
import '../data/cardiovascular_disease_anesthesia_questions.dart'; // Added
import '../data/renal_disease_anesthesia_questions.dart'; // Added
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
  ];

  @override
  void initState() {
    super.initState();
    _tabController = TabController(length: 5, vsync: this);
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
              ],
            ),
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

    // Android navigation bar yüksekliğini hesapla
    final systemNavigationBarHeight =
        MediaQuery.of(context).systemGestureInsets.bottom;
    final actualBottomPadding =
        bottomPadding > 0 ? bottomPadding : systemNavigationBarHeight;

    return SafeArea(
      child: Container(
        height:
            screenHeight * 0.07 +
            (actualBottomPadding * 0.3), // Sistem navigation bar'ı için ek alan
        margin: EdgeInsets.only(
          left: 16,
          right: 16,
          bottom: actualBottomPadding > 0 ? actualBottomPadding * 0.2 : 8,
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
                bottom: actualBottomPadding > 0 ? 4 : 0,
                top: 4,
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
                    fontSize: screenHeight * 0.011,
                  ),
                  unselectedLabelStyle: TextStyle(
                    fontSize: screenHeight * 0.011,
                  ),
                  elevation: 0,
                  items: [
                    _buildNavItem(Icons.home_rounded, AppLocalizations.of(context)!.homePage, 0),
                    _buildNavItem(Icons.quiz_rounded, AppLocalizations.of(context)!.quizzes, 1),
                    _buildNavItem(Icons.assignment_late_rounded, AppLocalizations.of(context)!.missing, 2),
                    _buildNavItem(Icons.leaderboard_rounded, AppLocalizations.of(context)!.leaderboard, 3),
                    _buildNavItem(Icons.person_rounded, AppLocalizations.of(context)!.profile, 4),
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
class QuizListScreen extends StatefulWidget {
  const QuizListScreen({super.key});

  @override
  State<QuizListScreen> createState() => _QuizListScreenState();
}

class _QuizListScreenState extends State<QuizListScreen> {
  final TextEditingController _searchController = TextEditingController();
  final QuizService _quizService = QuizService();
  String _searchQuery = '';
  bool _isSearching = false;
  List<Quiz> _ongoingQuizzes = [];
  late StreamSubscription _mistakesSubscription;

  // Tüm quiz kategorileri
  late final List<Map<String, dynamic>> _allQuizCategories;

  @override
  void initState() {
    super.initState();
    _allQuizCategories = _getQuizCategories();
    _loadOngoingQuizzes();
    
    // EventBus dinleyicisi ekle - devam eden quizler güncellendiğinde yenile
    _mistakesSubscription = EventBus().mistakesUpdatedStream.listen((event) {
      if (mounted) {
        _loadOngoingQuizzes();
      }
    });
  }

  @override
  void dispose() {
    _searchController.dispose();
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
      print('Devam eden quizler yüklenirken hata: $e');
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
            padding: const EdgeInsets.all(20),
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
                      padding: const EdgeInsets.all(8),
                      decoration: BoxDecoration(
                        color: Colors.white.withOpacity(0.2),
                        borderRadius: BorderRadius.circular(12),
                      ),
                      child: const Icon(Icons.quiz, color: Colors.white),
                    ),
                    const SizedBox(width: 12),
                    Expanded(
                      child: Text(
                        AppLocalizations.of(context)!.allQuizzes,
                        style: TextStyle(
                          color: Colors.white,
                          fontSize: 20,
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
                      },
                      child: Container(
                        padding: const EdgeInsets.all(8),
                        decoration: BoxDecoration(
                          color: Colors.white.withOpacity(0.2),
                          borderRadius: BorderRadius.circular(12),
                        ),
                        child: Icon(
                          _isSearching ? Icons.close : Icons.search,
                          color: Colors.white,
                        ),
                      ),
                    ),
                  ],
                ),
                // Arama alanı
                if (_isSearching) ...[
                  const SizedBox(height: 16),
                  Container(
                    padding: const EdgeInsets.symmetric(horizontal: 16),
                    decoration: BoxDecoration(
                      color: Colors.white.withOpacity(0.2),
                      borderRadius: BorderRadius.circular(25),
                    ),
                    child: TextField(
                      controller: _searchController,
                      onChanged: (value) {
                        setState(() {
                          _searchQuery = value;
                        });
                      },
                      style: const TextStyle(color: Colors.white),
                      decoration: const InputDecoration(
                        hintText: 'Quiz ara...',
                        hintStyle: TextStyle(color: Colors.white70),
                        border: InputBorder.none,
                        icon: Icon(Icons.search, color: Colors.white70),
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

        return Container(
          margin: const EdgeInsets.only(bottom: 16.0),
          child: GestureDetector(
            onTap: () {
              if (isOngoing && ongoingQuiz != null) {
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
                      final languageService = Provider.of<LanguageService>(context, listen: false);
                      final translationService = QuestionTranslationService();
                      final translatedQuestions = translationService.translateQuestions(
                        category['questions'] as List<Question>,
                        languageService.currentLocale.languageCode,
                      );
                      final translatedCategoryName = translationService.translateCategoryName(
                        category['title'] as String,
                        languageService.currentLocale.languageCode,
                      );
                      return QuizScreen(
                        categoryName: translatedCategoryName,
                        questions: translatedQuestions,
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
                          Consumer<LanguageService>(
                            builder: (context, languageService, child) {
                              final translationService = QuestionTranslationService();
                              final translatedTitle = translationService.translateCategoryName(
                                category['title'] as String,
                                languageService.currentLocale.languageCode,
                              );
                              return Text(
                                translatedTitle,
                            style: const TextStyle(
                              fontSize: 16,
                              fontWeight: FontWeight.bold,
                              color: Colors.white,
                            ),
                            maxLines: 1,
                            overflow: TextOverflow.ellipsis,
                              );
                            },
                          ),
                          if (isOngoing && ongoingQuiz != null) ...[
                            // Devam eden quiz bilgisi
                            Text(
                              '${ongoingQuiz.currentQuestionIndex ?? 0}/${ongoingQuiz.totalQuestions} ${AppLocalizations.of(context)!.questions}',
                              style: TextStyle(
                                fontSize: 12,
                                color: Colors.white.withOpacity(0.8),
                                fontWeight: FontWeight.w500,
                              ),
                            ),
                          ] else ...[
                            // Normal quiz bilgisi
                            Text(
                              '$questionCount ${AppLocalizations.of(context)!.questions}',
                              style: TextStyle(
                                fontSize: 12,
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
                            isOngoing ? AppLocalizations.of(context)!.continueQuiz : AppLocalizations.of(context)!.startQuiz,
                            style: const TextStyle(
                              color: Colors.white,
                              fontWeight: FontWeight.w500,
                              fontSize: 12,
                            ),
                          ),
                          const SizedBox(width: 2),
                          Icon(
                            isOngoing ? Icons.play_arrow : Icons.arrow_forward_ios,
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

  String _userName = 'User'; // Will be replaced with localized version
  UserActivity? _userActivity;
  DailyQuestion? _dailyQuestion;
  List<Quiz> _ongoingQuizzes = [];
  List<Quiz> _completedQuizzes = [];

  bool _isLoading = true;
  late StreamSubscription _mistakesSubscription;
  late ScrollController _scrollController;

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
      print("EventBus: Ana sayfa hızlı güncelleniyor...");
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

    // Tanıtımı göster
    WidgetsBinding.instance.addPostFrameCallback((_) {
      _checkAndShowTutorial();
    });
  }

  @override
  void dispose() {
    // EventBus dinleyicisini temizle
    _mistakesSubscription.cancel();
    _scrollController.dispose();
    super.dispose();
  }

  Future<void> _checkAndShowTutorial() async {
    // Ana tanıtımı kontrol et ve sadece o çalışsın
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
        _userName = currentUser.displayName ?? AppLocalizations.of(context)!.user;
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
        _quizService.getDailyQuestion().then((dailyQuestion) {
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
            flex: 2,
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
                      Text(
                        'Dr. $_userName',
                        style: TextStyle(
                          fontSize: _calculateFontSize(_userName),
                          fontWeight: FontWeight.bold,
                        ),
                        maxLines: 1,
                        overflow: TextOverflow.ellipsis,
                      ),
                    ],
                  ),
                ),
              ],
            ),
          ),
          // Sağ taraf - Puan butonu
          Flexible(
            child: _buildPointButton(
              Icons.stars,
              Colors.amber,
              _calculateTotalPoints().toString(),
            ),
          ),
        ],
      ),
    );
  }

  // Kullanıcı adı uzunluğuna göre font boyutu hesaplama
  double _calculateFontSize(String userName) {
    if (userName.length <= 8) {
      return 20.0;
    } else if (userName.length <= 12) {
      return 18.0;
    } else if (userName.length <= 16) {
      return 16.0;
    } else {
      return 14.0;
    }
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
      padding: const EdgeInsets.symmetric(horizontal: 6, vertical: 4),
      decoration: BoxDecoration(
        color: color.withOpacity(0.2),
        borderRadius: BorderRadius.circular(8),
        border: Border.all(color: color.withOpacity(0.3), width: 1),
      ),
      child: Row(
        mainAxisSize: MainAxisSize.min,
        children: [
          Icon(icon, color: color, size: 14),
          const SizedBox(width: 2),
          Flexible(
            child: Text(
              points,
              style: TextStyle(
                color: color, 
                fontWeight: FontWeight.bold,
                fontSize: 11,
              ),
              maxLines: 1,
              overflow: TextOverflow.ellipsis,
            ),
          ),
          const SizedBox(width: 1),
          Flexible(
            child: Text(
              AppLocalizations.of(context)!.points,
              style: TextStyle(
                color: color, 
                fontWeight: FontWeight.bold,
                fontSize: 10,
              ),
              maxLines: 1,
              overflow: TextOverflow.ellipsis,
            ),
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
      margin: const EdgeInsets.symmetric(
        horizontal: 12,
        vertical: 4,
      ), // Margin azaltıldı
      padding: const EdgeInsets.symmetric(
        horizontal: 16,
        vertical: 10,
      ), // Padding azaltıldı
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
              const Icon(
                Icons.local_fire_department,
                color: Colors.orange,
                size: 18,
              ), // Icon küçültüldü
              const SizedBox(width: 8),
              Text(
                '$weeklyLoginDays ${AppLocalizations.of(context)!.dailyParticipation}',
                style: const TextStyle(
                  fontSize: 16, // Font size küçültüldü
                  fontWeight: FontWeight.bold,
                  color: Colors.white,
                ),
              ),
            ],
          ),
          const SizedBox(height: 12), // Boşluk azaltıldı
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
                    width: 28, // Boyutlar küçültüldü
                    height: 28,
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
                                size: 14, // Icon boyutu küçültüldü
                              )
                              : Text(
                                dayName,
                                style: TextStyle(
                                  fontSize: 10, // Font size küçültüldü
                                  fontWeight: FontWeight.bold,
                                  color:
                                      isToday
                                          ? Colors.white
                                          : Colors.white.withOpacity(0.7),
                                ),
                              ),
                    ),
                  ),
                  const SizedBox(height: 2), // Boşluk azaltıldı
                  Text(
                    dayName,
                    style: TextStyle(
                      fontSize: 8, // Font size küçültüldü
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
      margin: const EdgeInsets.symmetric(horizontal: 12, vertical: 2),
      padding: const EdgeInsets.all(8),
      decoration: BoxDecoration(
        gradient: LinearGradient(
          colors: [Colors.orange.shade800, Colors.red.shade900],
        ),
        borderRadius: BorderRadius.circular(10),
        boxShadow: [
          BoxShadow(
            color: Colors.orange.withOpacity(0.15),
            blurRadius: 6,
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
                padding: const EdgeInsets.all(3),
                decoration: BoxDecoration(
                  color: Colors.white.withOpacity(0.2),
                  borderRadius: BorderRadius.circular(6),
                ),
                child: const Icon(
                  Icons.lightbulb,
                  color: Colors.yellow,
                  size: 12,
                ),
              ),
              const SizedBox(width: 4),
              Text(
                AppLocalizations.of(context)!.dailyQuestion,
                style: TextStyle(
                  fontSize: 11,
                  fontWeight: FontWeight.bold,
                  color: Colors.white,
                ),
              ),
              const Spacer(),
              if (_dailyQuestion?.isAnswered == true)
                Container(
                  padding: const EdgeInsets.symmetric(horizontal: 4, vertical: 1),
                  decoration: BoxDecoration(
                    color: _dailyQuestion?.isCorrect == true
                        ? Colors.green.withOpacity(0.8)
                        : Colors.red.withOpacity(0.8),
                    borderRadius: BorderRadius.circular(8),
                  ),
                  child: Row(
                    mainAxisSize: MainAxisSize.min,
                    children: [
                      Icon(
                        _dailyQuestion?.isCorrect == true
                            ? Icons.check_circle
                            : Icons.cancel,
                        color: Colors.white,
                        size: 10,
                      ),
                      const SizedBox(width: 2),
                      Text(
                        _dailyQuestion?.isCorrect == true ? AppLocalizations.of(context)!.correctAnswer : AppLocalizations.of(context)!.wrongAnswer,
                        style: const TextStyle(
                          color: Colors.white,
                          fontWeight: FontWeight.bold,
                          fontSize: 7,
                        ),
                      ),
                    ],
                  ),
                )
              else
                Container(
                  padding: const EdgeInsets.symmetric(horizontal: 4, vertical: 1),
                  decoration: BoxDecoration(
                    color: Colors.white.withOpacity(0.2),
                    borderRadius: BorderRadius.circular(8),
                  ),
                  child: const Text(
                    '20 Puan',
                    style: TextStyle(
                      color: Colors.white,
                      fontWeight: FontWeight.bold,
                      fontSize: 7,
                    ),
                  ),
                ),
            ],
          ),
          const SizedBox(height: 4),
          Text(
            _dailyQuestion?.question.question ??
                'In anesthesia, through which receptor does propofol act?',
            style: const TextStyle(
              fontSize: 11,
              fontWeight: FontWeight.w500,
              color: Colors.white,
              height: 1.2,
            ),
            maxLines: 2,
            overflow: TextOverflow.ellipsis,
          ),
          const SizedBox(height: 6),
          SizedBox(
            height: 24,
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
                minimumSize: const Size(double.infinity, 24),
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(6),
                ),
              ),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  if (_dailyQuestion?.isAnswered == true)
                    const Icon(Icons.check, size: 10)
                  else
                    const Icon(Icons.quiz, size: 10),
                  const SizedBox(width: 3),
                  Text(
                    _dailyQuestion?.isAnswered == true ? AppLocalizations.of(context)!.checkAgain : AppLocalizations.of(context)!.answer,
                    style: const TextStyle(fontSize: 9),
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
    if (_ongoingQuizzes.isEmpty) {
      return Padding(
        padding: const EdgeInsets.symmetric(
          horizontal: 20,
          vertical: 4,
        ), // Padding azaltıldı
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text(
                  AppLocalizations.of(context)!.ongoing,
                  style: TextStyle(
                    fontSize: 16,
                    fontWeight: FontWeight.bold,
                  ), // Font size küçültüldü
                ),
                Text(
                  AppLocalizations.of(context)!.viewAll,
                  style: TextStyle(color: Colors.blue, fontSize: 12),
                ), // Font size küçültüldü
              ],
            ),
            const SizedBox(height: 8), // Boşluk azaltıldı
            Container(
              padding: const EdgeInsets.all(12), // Padding azaltıldı
              decoration: BoxDecoration(
                gradient: LinearGradient(
                  colors: [Colors.purple.shade900, Colors.blue.shade900],
                ),
                borderRadius: BorderRadius.circular(16),
                boxShadow: [
                  BoxShadow(
                    color: Colors.purple.withOpacity(0.2),
                    blurRadius: 8,
                    spreadRadius: 2,
                  ),
                ],
              ),
              child: Center(
                child: Text(
                  AppLocalizations.of(context)!.noOngoingQuiz,
                  style: TextStyle(
                    color: Colors.white,
                    fontSize: 12,
                  ), // Font size küçültüldü
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
      padding: const EdgeInsets.symmetric(
        horizontal: 20,
        vertical: 4,
      ), // Padding azaltıldı
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Text(
                AppLocalizations.of(context)!.ongoing,
                style: TextStyle(
                  fontSize: 16,
                  fontWeight: FontWeight.bold,
                ), // Font size küçültüldü
              ),
              TextButton(
                onPressed: () => _showAllOngoingQuizzes(context),
                child: Row(
                  children: [
                    Text(
                      AppLocalizations.of(context)!.all,
                      style: TextStyle(fontSize: 12),
                    ), // Font size küçültüldü
                    SizedBox(width: 4),
                    Icon(
                      Icons.arrow_forward,
                      size: 14,
                    ), // Icon boyutu küçültüldü
                  ],
                ),
              ),
            ],
          ),
          const SizedBox(height: 8), // Boşluk azaltıldı
          // Yatay kaydırmalı quiz kartları
          SizedBox(
            height: 130, // Kart yüksekliği daha da azaltıldı
            child:
                quizzesToShow.isEmpty
                    ? Center(
                      child: Text(
                        AppLocalizations.of(context)!.noOngoingQuiz,
                        style: TextStyle(
                          color: Colors.grey[400],
                          fontSize: 12,
                        ), // Font size küçültüldü
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
                          width: 220, // Genişlik daha da azaltıldı
                          margin: const EdgeInsets.only(
                            right: 12,
                          ), // Margin azaltıldı
                          child: GestureDetector(
                            onTap: () => _continueQuiz(quiz),
                            child: Container(
                              padding: const EdgeInsets.all(
                                8,
                              ), // Padding daha da azaltıldı
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
                                          6,
                                        ), // Padding azaltıldı
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
                                    height: 10,
                                  ), // Boşluk azaltıldı
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
                                  const SizedBox(height: 8), // Boşluk azaltıldı
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
                                      minHeight: 4, // Height azaltıldı
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
        SnackBarUtils.showWarningSnackBar(context, 'Quiz soruları bulunamadı');
      }
    } catch (e) {
      print('Quiz devam etme hatası: $e');
      SnackBarUtils.showErrorSnackBar(
        context,
        'Quiz devam ederken bir hata oluştu',
      );
    }
  }

  Widget _buildFinishedQuiz() {
    if (_completedQuizzes.isEmpty) {
      return Padding(
        padding: const EdgeInsets.symmetric(
          horizontal: 20,
          vertical: 4,
        ), // Padding azaltıldı
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              AppLocalizations.of(context)!.completedQuizzes,
              style: TextStyle(
                fontSize: 16,
                fontWeight: FontWeight.bold,
              ), // Font size küçültüldü
            ),
            const SizedBox(height: 8), // Boşluk azaltıldı
            Container(
              padding: const EdgeInsets.all(12), // Padding azaltıldı
              decoration: BoxDecoration(
                color: Colors.white.withOpacity(0.1),
                borderRadius: BorderRadius.circular(16),
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
                    fontSize: 12,
                  ), // Font size küçültüldü
                ),
              ),
            ),
          ],
        ),
      );
    }

    // Tamamlanan quizler varsa
    return Padding(
      padding: const EdgeInsets.symmetric(
        horizontal: 20,
        vertical: 4,
      ), // Padding azaltıldı
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Text(
                AppLocalizations.of(context)!.completedQuizzes,
                style: TextStyle(fontSize: 16, fontWeight: FontWeight.bold),
              ),
              TextButton(
                onPressed: () {
                  // Tüm tamamlanan quizleri göster
                  _showAllCompletedQuizzes(context);
                },
                child: Row(
                  children: [
                    Text(AppLocalizations.of(context)!.all, style: TextStyle(fontSize: 12)),
                    SizedBox(width: 4),
                    Icon(Icons.arrow_forward, size: 14),
                  ],
                ),
              ),
            ],
          ),
          const SizedBox(height: 8),
          // Yatay listede göster
          SizedBox(
            height: 130, // Kart yüksekliği
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
                  width: 200,
                  margin: const EdgeInsets.only(right: 12),
                  decoration: BoxDecoration(
                    gradient: LinearGradient(
                      colors: [
                        _getQuizColor(index),
                        _getQuizColor(index).withOpacity(0.7),
                      ],
                    ),
                    borderRadius: BorderRadius.circular(14),
                    boxShadow: [
                      BoxShadow(
                        color: _getQuizColor(index).withOpacity(0.2),
                        blurRadius: 6,
                        spreadRadius: 1,
                      ),
                    ],
                  ),
                  child: Padding(
                    padding: const EdgeInsets.all(12),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Row(
                          children: [
                            Container(
                              padding: const EdgeInsets.all(10),
                              decoration: BoxDecoration(
                                color: Colors.white.withOpacity(0.2),
                                borderRadius: BorderRadius.circular(12),
                              ),
                              child: Icon(
                                _getQuizIcon(quiz.name),
                                color: Colors.white,
                                size: 16,
                              ),
                            ),
                            const SizedBox(width: 10),
                            Expanded(
                              child: Column(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  Text(
                                    quiz.name,
                                    style: const TextStyle(
                                      fontSize: 14,
                                      fontWeight: FontWeight.bold,
                                      color: Colors.white,
                                    ),
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
                        const SizedBox(height: 10),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Text(
                              '${AppLocalizations.of(context)!.correct}: ${quiz.score}/${quiz.totalQuestions}',
                              style: TextStyle(
                                color: Colors.white.withOpacity(0.9),
                                fontWeight: FontWeight.w500,
                                fontSize: 10,
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
                        const SizedBox(height: 8),
                        ClipRRect(
                          borderRadius: BorderRadius.circular(6),
                          child: LinearProgressIndicator(
                            value: successRate / 100,
                            backgroundColor: Colors.white.withOpacity(0.2),
                            valueColor: AlwaysStoppedAnimation<Color>(
                              _getSuccessRateColor(successRate),
                            ),
                            minHeight: 4,
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

// Quiz kategorilerini döndüren metod
List<Map<String, dynamic>> _getQuizCategories() {
  return [
    {
      'title': 'Anestezi Uygulaması',
      'icon': Icons.medical_information,
      'questions': anesthesiaApplicationQuestions,
      'color': Colors.orange.shade700,
    },
    {
      'title': 'Ameliyathane Ortamı',
      'icon': Icons.local_hospital,
      'questions': operatingRoomEnvironmentQuestions,
      'color': Colors.deepPurple.shade700,
    },
    {
      'title': 'Solunum Sistemleri',
      'icon': Icons.air,
      'questions': respiratorySystemQuestions,
      'color': Colors.teal.shade700,
    },
    {
      'title': 'Anestezi İş İstasyonu',
      'icon': Icons.settings,
      'questions': anesthesiaWorkstationQuestions,
      'color': Colors.indigo.shade700,
    },
    {
      'title': 'Kardiyovasküler Monitörizasyon',
      'icon': Icons.monitor_heart,
      'questions': cardiovascularMonitoringQuestions,
      'color': Colors.red.shade700,
    },
      {
      'title': 'Kardiyovasküler Dışı Monitörizasyon',
      'icon': Icons.sensors,
      'questions': nonCardiovascularMonitoringQuestions,
      'color': Colors.orange.shade700,
    },
     {
      'title': 'Farmakolojik Prensipler',
      'icon': Icons.science,
      'questions': pharmacologicalPrinciplesQuestions,
      'color': Colors.lightGreen.shade700,
    },

    {
      'title': 'İnhalasyon Anestezikleri',
      'icon': Icons.air_rounded,
      'questions': inhalationAnestheticsQuestions,
      'color': Colors.teal.shade700,
    },
      {
      'title': 'İntravenöz Anestezikler',
      'icon': Icons.local_hospital_outlined,
      'questions': intravenousAnestheticsQuestions,
      'color': Colors.indigo.shade700,
    },
      {
      'title': 'Analjezik Ajanlar',
      'icon': Icons.healing,
      'questions': analgesicAgentsQuestions,
      'color': Colors.brown.shade700,
    },
    {
      'title': 'Nöromüsküler Blokaj Ajanları',
      'icon': Icons.accessibility_new,
      'questions': neuromuscularBlockingAgentsQuestions,
      'color': Colors.blueGrey.shade700,
    },

    {
      'title': 'Kolinesteraz İnhibitörleri',
      'icon': Icons.science_outlined,
      'questions': cholinesteraseInhibitorsQuestions,
      'color': Colors.deepPurple.shade700,
    },
    {
      'title': 'Antikolinerjik İlaçlar',
      'icon': Icons.medication_liquid,
      'questions': anticholinergicDrugsQuestions,
      'color': Colors.lime.shade700,
    },
        {
      'title': 'Adrenerjik Agonistler ve Antagonistler',
      'icon': Icons.medication_outlined,
      'questions': adrenergicDrugsQuestions,
      'color': Colors.amber.shade700,
    },
    {
      'title': 'Hipotansif Ajanlar',
      'icon': Icons.trending_down,
      'questions': hypotensiveAgentsQuestions,
      'color': Colors.red.shade700,
    },
      {
      'title': 'Lokal Anestezikler',
      'icon': Icons.pin_drop,
      'questions': localAnestheticsQuestions,
      'color': Colors.green.shade700,
    },
    {
      'title': 'Anestezide Yardımcı İlaçlar',
      'icon': Icons.medication_liquid_outlined,
      'questions': auxiliaryDrugsQuestions,
      'color': Colors.orange.shade700,
    },

    {
      'title': 'Havayolu Yönetimi',
      'icon': Icons.masks,
      'questions': airwayManagementQuestions,
      'color': Colors.amber.shade700,
    },
    {
      'title': 'Kardiyovasküler Fizyoloji ve Anestezi',
      'icon': Icons.favorite,
      'questions': cardiovascularPhysiologyQuestions,
      'color': Colors.red.shade700,
    },
     {
      'title': 'Kardiyovasküler Hastalığı Olan Hastalarda Anestezi',
      'icon': Icons.favorite,
      'questions': cardiovascularDiseaseAnesthesiaQuestions,
      'color': Colors.red.shade700,
    },
     {
      'title': 'Kardiyovasküler Cerrahide Anestezi',
      'icon': Icons.medical_services,
      'questions': cardiovascularSurgeryQuestions,
      'color': Colors.purple.shade700,
    },
     {
      'title': 'Solunum Fizyolojisi ve Anestezi',
      'icon': Icons.air_rounded,
      'questions': respiratoryPhysiologyQuestions,
      'color': Colors.teal.shade700,
    },
    {
      'title': 'Solunum Sistemi Hastalığı Olanlarda Anestezi',
      'icon': Icons.air_sharp,
      'questions': respiratoryDiseasesQuestions,
      'color': Colors.cyan.shade700,
    },
     {
      'title': 'Toraks Cerrahisinde Anestezi',
      'icon': Icons.medical_services,
      'questions': thoracicSurgeryAnesthesiaQuestions,
      'color': Colors.purple.shade700,
    },
     {
      'title': 'Nörofizyoloji ve Anestezi',
      'icon': Icons.psychology,
      'questions': neurophysiologyAnesthesiaQuestions,
      'color': Colors.purple.shade700,
    },
     {
      'title': 'Nörocerrahide Anestezi',
      'icon': Icons.psychology,
      'questions': neurosurgeryAnesthesiaQuestions,
      'color': Colors.deepPurple.shade700,
    },
      {
      'title': 'Nörolojik ve Psikiyatrik Hastalığı Olanlarda Anestezi',
      'icon': Icons.psychology_outlined,
      'questions': neurologicalPsychiatricAnesthesiaQuestions,
      'color': Colors.deepOrange.shade700,
    },
     {
      'title': 'Nöromüsküler Hastalığı Olanlarda Anestezi',
      'icon': Icons.accessibility_new,
      'questions': neuromuscularDiseasesAnesthesiaQuestions,
      'color': Colors.indigo.shade700,
    },
     {
      'title': 'Böbrek Fizyolojisi ve Anestezi',
      'icon': Icons.water_drop,
      'questions': renalPhysiologyAnesthesiaQuestions,
      'color': Colors.blue.shade700,
    },
     {
      'title': 'Böbrek Hastalığı Olan Hastalarda Anestezi',
      'icon': Icons.water_drop,
      'questions': renalDiseaseAnesthesiaQuestions,
      'color': Colors.blue.shade700,
    },
      {
      'title': 'Genitoüriner Cerrahide Anestezi',
      'icon': Icons.medical_services,
      'questions': genitourinaryAnesthesiaQuestions,
      'color': Colors.blue.shade700,
    },
      {
      'title': 'Hepatik Fizyoloji ve Anestezi',
      'icon': Icons.medical_services,
      'questions': hepaticPhysiologyAnesthesiaQuestions,
      'color': Colors.orange.shade700,
    },
      {
      'title': 'Karaciğer Hastalığı Olan Hastalarda Anestezi',
      'icon': Icons.medical_information,
      'questions': liverDiseaseAnesthesiaQuestions,
      'color': Colors.brown.shade700,
    },
   
     {
      'title': 'Endokrin Hastalıklarda Anestezi',
      'icon': Icons.medical_services,
      'questions': endocrineDiseaseAnesthesiaQuestions,
      'color': Colors.purple.shade700,
    },
     {
      'title': 'Oftalmik Cerrahide Anestezi',
      'icon': Icons.visibility,
      'questions': ophthalmicAnesthesiaQuestions,
      'color': Colors.indigo.shade700,
    },

    {
      'title': 'Otolaringoloji-Baş ve Boyun Cerrahisinde Anestezi',
      'icon': Icons.hearing,
      'questions': otolaryngologyHeadNeckSurgeryQuestions,
      'color': Colors.teal.shade700,
    },
    {
      'title': 'Ortopedik Cerrahide Anestezi',
      'icon': Icons.medical_services,
      'questions': orthopedicAnesthesiaQuestions,
      'color': Colors.orange.shade700,
    },
    {
      'title': 'Travma ve Acil Cerrahide Anestezi',
      'icon': Icons.emergency,
      'questions': traumaEmergencyAnesthesiaQuestions,
      'color': Colors.red.shade700,
    },
      {
      'title': 'Maternal ve Fetal Fizyoloji ve Anestezi',
      'icon': Icons.pregnant_woman,
      'questions': maternalFetalPhysiologyAnesthesiaQuestions,
      'color': Colors.purple.shade700,
    },
    {
      'title': 'Obstetrik Anestezi',
      'icon': Icons.pregnant_woman,
      'questions': obstetricAnesthesiaQuestions,
      'color': Colors.pink.shade700,
    },
  
    {
      'title': 'Pediatrik Anestezi',
      'icon': Icons.child_care,
      'questions': pediatricAnesthesiaQuestions,
      'color': Colors.pink.shade700,
    },
     {
      'title': 'Geriatrik Anestezi',
      'icon': Icons.elderly,
      'questions': geriatricAnesthesiaQuestions,
      'color': Colors.blueGrey.shade700,
    },
    {
      'title': 'Günübirlik ve Ameliyathane Dışı Anestezi',
      'icon': Icons.local_hospital,
      'questions': outpatientAnesthesiaQuestions,
      'color': Colors.green.shade700,
    },
     {
      'title': 'Spinal, Epidural ve Kaudal Bloklar',
      'icon': Icons.medical_information,
      'questions': spinalEpiduralCaudalBlocksQuestions,
      'color': Colors.deepOrange.shade700,
    },
    {
      'title': 'Periferik Sinir Blokları',
      'icon': Icons.medical_information,
      'questions': peripheralNerveBlocksQuestions,
      'color': Colors.indigo.shade700,
    },
       {
      'title': 'Kronik Ağrı Tedavisi',
      'icon': Icons.healing,
      'questions': chronicPainTreatmentQuestions,
      'color': Colors.red.shade700,
    },
    {
      'title': 'Geliştirilmiş İyileştirme Protokolleri ve Perioperatif Sonuçların Optimizasyonu',
      'icon': Icons.trending_up,
      'questions': enhancedRecoveryProtocolsQuestions,
      'color': Colors.green.shade700,
    },
     {
      'title': 'Sıvı ve Elektrolit Dengesizlikleri',
      'icon': Icons.water_drop,
      'questions': fluidElectrolyteImbalanceManagementQuestions,
      'color': Colors.blue.shade700,
    },
      {
      'title': 'Asit-Baz Yönetimi',
      'icon': Icons.science,
      'questions': acidBaseManagementQuestions,
      'color': Colors.teal.shade700,
    },
     {
      'title': 'Sıvı Yönetimi ve Kan Ürünleri Tedavisi',
      'icon': Icons.water_drop,
      'questions': fluidManagementBloodProductsQuestions,
      'color': Colors.blue.shade700,
    },
   
    {
      'title': 'Termoregülasyon, Hipotermi ve Malign Hipertermi',
      'icon': Icons.thermostat,
      'questions': thermoregulationHypothermiaMalignantHyperthermiaQuestions,
      'color': Colors.orange.shade700,
    },
     {
      'title': 'Perioperatif ve Yoğun Bakımda Beslenme',
      'icon': Icons.restaurant,
      'questions': perioperativeIntensiveCareNutritionQuestions,
      'color': Colors.green.shade700,
    },
     {
      'title': 'Anestezi Komplikasyonları',
      'icon': Icons.warning,
      'questions': anesthesiaComplicationsQuestions,
      'color': Colors.red.shade700,
    },
    {
      'title': 'Kardiyopulmoner Resüsitasyon',
      'icon': Icons.healing,
      'questions': cardiopulmonaryResuscitationQuestions,
      'color': Colors.red.shade700,
    },
     {
      'title': 'Postanestezik Bakım',
      'icon': Icons.medical_information,
      'questions': postanestheticCareQuestions,
      'color': Colors.teal.shade700,
    },
     {
      'title': 'Yoğun Bakım Uygulamalarında Karşılaşılan Sorunlar',
      'icon': Icons.local_hospital,
      'questions': intensiveCareProblemsQuestions,
      'color': Colors.indigo.shade700,
    },
     {
      'title': 'Postoperatif Bakım Ünitesi ve Yoğun Bakımda İnhalasyon',
      'icon': Icons.air,
      'questions': postoperativeCareMechanicalVentilationQuestions,
      'color': Colors.cyan.shade700,
    },
      {
      'title': 'Güvenlik, Kalite ve Performans İyileştirme',
      'icon': Icons.security,
      'questions': safetyQualityPerformanceImprovementQuestions,
      'color': Colors.green.shade700,
    },
     {
      'title': 'Algoloji',
      'icon': Icons.psychology,
      'questions': painManagementQuestions,
      'color': Colors.pink.shade700,
    },
           {
        'title': 'Sepsis ve ARDS',
        'icon': Icons.medical_information,
        'questions': sepsisArdsQuestions,
        'color': Colors.red.shade700,
      },
      {
        'title': 'Koagülasyon ve Antikoagülan Tedavi',
        'icon': Icons.bloodtype,
        'questions': coagulationAnticoagulantQuestions,
        'color': Colors.deepPurple.shade700,
      },
    
    
   
    
    
   
  
   
  
  
  
    

    
  
    

   
    
   
  
   
   
   
    
    
    
   
  
   
   
   
  
    // Eksik kategoriler
   
    
    
   
   
   
   
    
    // Kalan eksik kategoriler
 
   
   
   
  
    
  
  
   
  ];
}
