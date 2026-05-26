import 'package:flutter/material.dart';
import 'dart:math' as math;
import 'dart:convert';
import 'dart:io';
import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:file_picker/file_picker.dart';
import '../l10n/app_localizations.dart';
import '../services/auth_service.dart';
import '../services/admin_service.dart';
import '../services/organized_data_service.dart';
import '../services/multilingual_question_service.dart';
import 'add_question_screen.dart';
import 'edit_question_screen.dart';
import 'add_spot_info_screen.dart';
import '../services/spot_migration_service.dart';
import '../services/spot_service.dart';
import '../models/spot_info.dart';

class AdminScreen extends StatefulWidget {
  const AdminScreen({super.key});

  @override
  _AdminScreenState createState() => _AdminScreenState();
}

class _AdminScreenState extends State<AdminScreen>
    with TickerProviderStateMixin {
  late TabController _tabController;
  final AuthService _authService = AuthService();
  final AdminService _adminService = AdminService();
  final OrganizedDataService _organizedDataService = OrganizedDataService();
  final SpotMigrationService _spotMigrationService = SpotMigrationService();
  final SpotService _spotService = SpotService();
  bool _isMigrating = false;
  bool _isImportingJson = false;

  int _selectedNavIndex = 0;
  Map<String, dynamic> _userStats = {};
  Map<String, dynamic> _quizStats = {};
  Map<String, dynamic> _languageStats = {};
  List<String> _categories = [];
  List<Map<String, dynamic>> _organizedCategories = [];
  String _selectedCategory = '';
  String _selectedCollectionName = '';
  List<Map<String, dynamic>> _questions = [];
  bool _isLoading = true;
  String _selectedLanguage = 'turkish'; // Questions yönetimi için dil seçimi
  List<Map<String, dynamic>> _purchases = [];

  final TextEditingController _firstTopicsCountController =
      TextEditingController();
  final TextEditingController _firstTopicsFreeQuestionsController =
      TextEditingController();
  final TextEditingController _otherTopicsFreeQuestionsController =
      TextEditingController();
  final TextEditingController _notificationTitleController =
      TextEditingController();
  final TextEditingController _notificationBodyController =
      TextEditingController();
  bool _isSendingNotification = false;
  String _purchaseDateFilter = 'all'; // all, today, week, month, custom
  String _notificationLanguage = 'all'; // all, tr, en
  DateTime? _customStartDate;
  DateTime? _customEndDate;
  String _selectedSpotLanguage = 'tr';
  String _selectedSpotCategory = 'Hepsi';
  List<String> _spotCategories = ['Hepsi'];
  final TextEditingController _spotSearchController = TextEditingController();
  String _spotSearchQuery = '';

  String _generateSlug(String text) {
    var slug = text.toLowerCase();
    slug = slug.replaceAll('ı', 'i');
    slug = slug.replaceAll('ğ', 'g');
    slug = slug.replaceAll('ü', 'u');
    slug = slug.replaceAll('ş', 's');
    slug = slug.replaceAll('ö', 'o');
    slug = slug.replaceAll('ç', 'c');
    slug = slug.replaceAll(RegExp(r'[^a-z0-9\s-]'), '');
    slug = slug.replaceAll(RegExp(r'\s+'), '-');
    slug = slug.replaceAll(RegExp(r'-+'), '-');
    return slug.trim();
  }

  @override
  void initState() {
    super.initState();
    _tabController = TabController(length: 3, vsync: this);
    _loadInitialData();
    // NOT: Cihaz kaldırma listener'ı artık main.dart'ta global olarak çalışıyor
  }

  @override
  void dispose() {
    // NOT: Cihaz kaldırma listener'ı main.dart'ta global olarak yönetiliyor
    _tabController.dispose();
    _firstTopicsCountController.dispose();
    _firstTopicsFreeQuestionsController.dispose();
    _otherTopicsFreeQuestionsController.dispose();
    _notificationTitleController.dispose();
    _notificationBodyController.dispose();
    _spotSearchController.dispose();
    super.dispose();
  }

  Future<void> _loadInitialData() async {
    setState(() => _isLoading = true);

    await Future.wait([
      _loadUserStatistics(),
      _loadQuizStatistics(),
      _loadLanguageStatistics(),
      _loadCategories(),
      _loadFreeQuestionConfig(),
      _loadPurchases(),
      _loadSpotCategories(),
    ]);

    setState(() => _isLoading = false);
  }

  Future<void> _loadUserStatistics() async {
    final stats = await _adminService.getUserStatistics();
    setState(() => _userStats = stats);
  }

  Future<void> _loadLanguageStatistics() async {
    final stats = await _adminService.getLanguageBasedQuizStatistics();
    setState(() => _languageStats = stats);
  }

  Future<void> _loadFreeQuestionConfig() async {
    final config = await _adminService.getFreeQuestionConfig();
    setState(() {
      _firstTopicsCountController.text =
          (config['firstTopicsCount'] ?? 10).toString();
      _firstTopicsFreeQuestionsController.text =
          (config['firstTopicsFreeQuestions'] ?? 20).toString();
      _otherTopicsFreeQuestionsController.text =
          (config['otherTopicsFreeQuestions'] ?? 2).toString();
    });
  }

  Future<void> _loadPurchases() async {
    final purchases = await _adminService.getAllPurchases();
    setState(() {
      _purchases = purchases;
    });
  }

  Future<void> _loadQuizStatistics() async {
    try {
      // Hem admin service hem de organized service'den istatistikleri al
      final [adminStats, organizedStats] = await Future.wait([
        _adminService.getQuizStatistics(),
        _organizedDataService.getOrganizedStatistics(),
      ]);

      // İstatistikleri birleştir
      final combinedStats = {...adminStats, 'organizedStats': organizedStats};

      setState(() => _quizStats = combinedStats);
    } catch (e) {
      setState(() => _quizStats = {});
    }
  }

  Future<void> _loadCategories() async {
    try {
      final languageParam =
          _selectedLanguage == 'turkish' ? 'turkish' : 'english';
      
      // 1. Önce yerel kategorileri yükle
      final localCategories = MultilingualQuestionService.getQuizCategories(
        languageParam == 'turkish' ? 'turkish' : 'en',
      );
      
      final List<Map<String, dynamic>> combined = localCategories.map((c) {
        final title = c['title'] as String;
        return <String, dynamic>{
          'id': '',
          'displayName': title,
          'collectionName': c['collectionName'] as String? ?? _generateSlug(title),
          'questionCount': (c['questions'] as List?)?.length ?? 0,
          'language': languageParam,
        };
      }).toList();

      // 2. Firestore'daki organize kategorileri yükle
      try {
        final organizedCategories = await _organizedDataService
            .getOrganizedCategoriesByLanguage(languageParam);

        if (organizedCategories.isNotEmpty) {
          for (var fireCat in organizedCategories) {
            final displayName = fireCat['displayName'] as String;
            final collectionName = fireCat['collectionName'] as String;
            final index = combined.indexWhere((c) => c['displayName'] == displayName);
            
            if (index != -1) {
              combined[index] = <String, dynamic>{
                ...combined[index],
                'id': fireCat['id'],
                'collectionName': collectionName,
                'questionCount': fireCat['questionCount'],
              };
            } else {
              combined.add(<String, dynamic>{
                'id': fireCat['id'],
                'displayName': displayName,
                'collectionName': collectionName,
                'questionCount': fireCat['questionCount'],
                'language': languageParam,
              });
            }
          }
        }
      } catch (_) {}

      setState(() {
        _organizedCategories = combined;
        _categories = combined.map((cat) => cat['displayName'] as String).toList();
        if (_categories.isNotEmpty) {
          if (_selectedCategory == null || !_categories.contains(_selectedCategory)) {
            _selectedCategory = _categories.first;
            _selectedCollectionName = combined.first['collectionName'] as String;
          } else {
            final selectedCat = combined.firstWhere((c) => c['displayName'] == _selectedCategory);
            _selectedCollectionName = selectedCat['collectionName'] as String;
          }
        }
      });

      if (_categories.isNotEmpty) {
        _loadQuestions();
      }
    } catch (e) {
      debugPrint('Error loading categories: $e');
    }
  }

  Future<void> _loadQuestions() async {
    if (_selectedCategory.isEmpty) {
      return;
    }

    try {
      List<Map<String, dynamic>> questions;

      // Organize veri yapısı kullanılıyorsa
      if (_selectedCollectionName.isNotEmpty) {
        questions = await _organizedDataService.getQuestionsByCategory(
          _selectedCollectionName,
        );
      } else {
        // Fallback: eski yöntem
        questions = await _adminService.getQuestionsByCategory(
          _selectedCategory,
        );
      }

      setState(() => _questions = questions);
    } catch (e) {
      setState(() => _questions = []);
    }
  }

  // Alternative method to get categories without isActive filter
  Future<List<Map<String, dynamic>>> _getAllCategoriesFromFirestore() async {
    try {
      // Use the existing method but modify the service to not require isActive
      // For now, let's try to get categories using a different approach
      final snapshot =
          await FirebaseFirestore.instance
              .collection('quizCategories')
              .orderBy('displayName')
              .get();

      final categories =
          snapshot.docs.map((doc) {
            final data = doc.data();
            return {
              'id': doc.id,
              'displayName': data['displayName'] ?? '',
              'collectionName': data['collectionName'] ?? '',
              'questionCount': data['questionCount'] ?? 0,
              'language': data['language'] ?? 'turkish',
              'createdAt': data['createdAt'],
            };
          }).toList();

      return categories;
    } catch (e) {
      return [];
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body:
          _isLoading
              ? const Center(child: CircularProgressIndicator())
              : Container(
                decoration: BoxDecoration(
                  gradient: LinearGradient(
                    begin: Alignment.topLeft,
                    end: Alignment.bottomRight,
                    colors: [
                      Colors.blue.shade900,
                      Colors.indigo.shade900,
                      Colors.purple.shade900,
                    ],
                  ),
                ),
                child: SafeArea(
                  child: Column(
                    children: [
                      _buildAppBar(),
                      _buildNavigation(),
                      Expanded(child: _buildContent()),
                    ],
                  ),
                ),
              ),
    );
  }

  Widget _buildAppBar() {
    return LayoutBuilder(
      builder: (context, constraints) {
        final screenWidth = constraints.maxWidth;
        final isSmallScreen = screenWidth < 600;
        final isVerySmallScreen = screenWidth < 400;

        return Container(
          padding: EdgeInsets.all(
            isVerySmallScreen ? 12 : (isSmallScreen ? 16 : 20),
          ),
          child: Row(
            children: [
              Container(
                padding: EdgeInsets.all(
                  isVerySmallScreen ? 8 : (isSmallScreen ? 10 : 12),
                ),
                decoration: BoxDecoration(
                  color: Colors.white.withOpacity(0.15),
                  borderRadius: BorderRadius.circular(
                    isVerySmallScreen ? 10 : 15,
                  ),
                ),
                child: Icon(
                  Icons.admin_panel_settings,
                  color: Colors.white,
                  size: isVerySmallScreen ? 18 : (isSmallScreen ? 20 : 24),
                ),
              ),
              SizedBox(
                width: isVerySmallScreen ? 8 : (isSmallScreen ? 12 : 16),
              ),
              Expanded(
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      'Admin Panel',
                      style: TextStyle(
                        fontSize:
                            isVerySmallScreen ? 18 : (isSmallScreen ? 20 : 24),
                        fontWeight: FontWeight.bold,
                        color: Colors.white,
                      ),
                    ),
                    Text(
                      'Sistem Yönetimi',
                      style: TextStyle(
                        fontSize:
                            isVerySmallScreen ? 11 : (isSmallScreen ? 12 : 14),
                        color: Colors.white70,
                      ),
                    ),
                  ],
                ),
              ),
              IconButton(
                onPressed: () async {
                  // Çıkış onay dialogu göster
                  final shouldSignOut = await showDialog<bool>(
                    context: context,
                    builder:
                        (context) => AlertDialog(
                          title: Text(
                            AppLocalizations.of(context)!.adminLogout,
                          ),
                          content: Text(
                            AppLocalizations.of(context)!.adminLogoutConfirm,
                          ),
                          actions: [
                            TextButton(
                              onPressed: () => Navigator.pop(context, false),
                              child: Text(AppLocalizations.of(context)!.cancel),
                            ),
                            TextButton(
                              onPressed: () => Navigator.pop(context, true),
                              child: Text(AppLocalizations.of(context)!.logout),
                            ),
                          ],
                        ),
                  );

                  if (shouldSignOut == true) {
                    try {
                      await _authService.signOut();
                      if (mounted) {
                        Navigator.of(context).pushReplacementNamed('/login');
                      }
                    } catch (e) {
                      if (mounted) {
                        ScaffoldMessenger.of(context).showSnackBar(
                          SnackBar(
                            content: Text(
                              '${AppLocalizations.of(context)!.logoutError}: $e',
                            ),
                            backgroundColor: Colors.red,
                          ),
                        );
                      }
                    }
                  }
                },
                icon: Icon(
                  Icons.logout,
                  color: Colors.white,
                  size: isVerySmallScreen ? 18 : (isSmallScreen ? 20 : 24),
                ),
              ),
            ],
          ),
        );
      },
    );
  }

  Widget _buildNavigation() {
    return LayoutBuilder(
      builder: (context, constraints) {
        final screenWidth = constraints.maxWidth;
        final isSmallScreen = screenWidth < 600;
        final isVerySmallScreen = screenWidth < 400;

        final navItems = [
          {'icon': Icons.dashboard_outlined, 'label': 'Dashboard'},
          {'icon': Icons.quiz_outlined, 'label': 'Questions'},
          {'icon': Icons.shopping_cart_outlined, 'label': 'Satın Alma'},
          {
            'icon': Icons.analytics_outlined,
            'label': AppLocalizations.of(context)!.analytics,
          },
          {'icon': Icons.notifications_active_outlined, 'label': 'Bildirimler'},
          {'icon': Icons.lightbulb_outline_rounded, 'label': 'Spot Bilgi'},
        ];

        return Container(
          margin: EdgeInsets.symmetric(
            horizontal: isVerySmallScreen ? 12 : (isSmallScreen ? 16 : 20),
          ),
          padding: EdgeInsets.all(
            isVerySmallScreen ? 6 : (isSmallScreen ? 7 : 8),
          ),
          decoration: BoxDecoration(
            color: Colors.white.withOpacity(0.1),
            borderRadius: BorderRadius.circular(isVerySmallScreen ? 15 : 20),
            border: Border.all(color: Colors.white.withOpacity(0.2)),
          ),
          child: Row(
            children:
                navItems.asMap().entries.map((entry) {
                  final index = entry.key;
                  final item = entry.value;
                  final isSelected = _selectedNavIndex == index;

                  return Expanded(
                    child: GestureDetector(
                      onTap: () {
                        setState(() => _selectedNavIndex = index);
                        if (index == 5) {
                          _loadSpotCategories();
                        }
                      },
                      child: Container(
                        padding: EdgeInsets.symmetric(
                          vertical:
                              isVerySmallScreen ? 8 : (isSmallScreen ? 10 : 12),
                        ),
                        decoration: BoxDecoration(
                          color:
                              isSelected
                                  ? Colors.white.withOpacity(0.2)
                                  : Colors.transparent,
                          borderRadius: BorderRadius.circular(
                            isVerySmallScreen ? 10 : 15,
                          ),
                        ),
                        child: Column(
                          mainAxisSize: MainAxisSize.min,
                          children: [
                            Icon(
                              item['icon'] as IconData,
                              color: isSelected ? Colors.white : Colors.white60,
                              size:
                                  isVerySmallScreen
                                      ? 16
                                      : (isSmallScreen ? 18 : 20),
                            ),
                            SizedBox(height: isVerySmallScreen ? 2 : 4),
                            Text(
                              item['label'] as String,
                              style: TextStyle(
                                color:
                                    isSelected ? Colors.white : Colors.white60,
                                fontSize:
                                    isVerySmallScreen
                                        ? 8
                                        : (isSmallScreen ? 9 : 10),
                                fontWeight:
                                    isSelected
                                        ? FontWeight.w600
                                        : FontWeight.normal,
                              ),
                              textAlign: TextAlign.center,
                              maxLines: 1,
                              overflow: TextOverflow.ellipsis,
                            ),
                          ],
                        ),
                      ),
                    ),
                  );
                }).toList(),
          ),
        );
      },
    );
  }

  Widget _buildContent() {
    return LayoutBuilder(
      builder: (context, constraints) {
        final screenWidth = constraints.maxWidth;
        final isSmallScreen = screenWidth < 600;
        final isVerySmallScreen = screenWidth < 400;

        return Padding(
          padding: EdgeInsets.all(
            isVerySmallScreen ? 12 : (isSmallScreen ? 16 : 20),
          ),
          child:
              (() {
                switch (_selectedNavIndex) {
                  case 0:
                    return _buildDashboard();
                  case 1:
                    return _buildQuestionsManagement();
                  case 2:
                    return _buildPurchasesView();
                  case 3:
                    return _buildAnalytics();
                  case 4:
                    return _buildNotificationSender();
                  case 5:
                    return _buildSpotInfoManagement();
                  default:
                    return _buildDashboard();
                }
              })(),
        );
      },
    );
  }

  Widget _buildDashboard() {
    return SingleChildScrollView(
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Text(
                AppLocalizations.of(context)!.generalOverview,
                style: TextStyle(
                  fontSize: 22,
                  fontWeight: FontWeight.bold,
                  color: Colors.white,
                ),
              ),
              IconButton(
                onPressed: () async {
                  setState(() => _isLoading = true);
                  await _loadInitialData();
                  setState(() => _isLoading = false);

                  if (mounted) {
                    ScaffoldMessenger.of(context).showSnackBar(
                      const SnackBar(
                        content: Text('✅ İstatistikler güncellendi'),
                        backgroundColor: Colors.green,
                        duration: Duration(seconds: 2),
                      ),
                    );
                  }
                },
                icon: const Icon(Icons.refresh, color: Colors.white, size: 24),
                tooltip: AppLocalizations.of(context)!.refreshStats,
              ),
            ],
          ),

          // Organize veri uyarısı
          if ((_quizStats['organizedQuestions'] ?? 0) == 0 &&
              (_quizStats['totalQuestions'] ?? 0) == 0)
            Container(
              margin: const EdgeInsets.only(top: 16, bottom: 16),
              padding: const EdgeInsets.all(16),
              decoration: BoxDecoration(
                color: Colors.orange.withOpacity(0.1),
                borderRadius: BorderRadius.circular(12),
                border: Border.all(color: Colors.orange.withOpacity(0.3)),
              ),
              child: Row(
                children: [
                  Icon(
                    Icons.warning_amber_rounded,
                    color: Colors.orange,
                    size: 24,
                  ),
                  const SizedBox(width: 12),
                  Expanded(
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          AppLocalizations.of(context)!.dataNotFound,
                          style: TextStyle(
                            color: Colors.orange,
                            fontWeight: FontWeight.bold,
                            fontSize: 14,
                          ),
                        ),
                        Text(
                          AppLocalizations.of(context)!.dataMigrationNeeded,
                          style: TextStyle(color: Colors.white70, fontSize: 12),
                        ),
                      ],
                    ),
                  ),
                ],
              ),
            ),
          const SizedBox(height: 20),
          _buildStatsGrid(),
          const SizedBox(height: 30),
          _buildFreeQuestionConfigCard(),
          const SizedBox(height: 30),
          _buildLanguageStatsGrid(),
          const SizedBox(height: 30),
          _buildQuizCategoriesGrid(),
          const SizedBox(height: 30),
          _buildRecentActivity(),
        ],
      ),
    );
  }

  Widget _buildFreeQuestionConfigCard() {
    return Container(
      width: double.infinity,
      padding: const EdgeInsets.all(16),
      decoration: BoxDecoration(
        color: Colors.white.withOpacity(0.1),
        borderRadius: BorderRadius.circular(16),
        border: Border.all(color: Colors.white.withOpacity(0.2)),
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          const Text(
            'Ücretsiz Soru Ayarları',
            style: TextStyle(
              fontSize: 18,
              fontWeight: FontWeight.bold,
              color: Colors.white,
            ),
          ),
          const SizedBox(height: 8),
          Text(
            'İlk N konu için ücretsiz soru sayısını ve diğer konular için limiti buradan yönetebilirsiniz.',
            style: TextStyle(
              color: Colors.white.withOpacity(0.7),
              fontSize: 13,
            ),
          ),
          const SizedBox(height: 16),
          Row(
            children: [
              Expanded(
                child: _buildNumberField(
                  label: 'İlk kaç konu?',
                  controller: _firstTopicsCountController,
                ),
              ),
              const SizedBox(width: 12),
              Expanded(
                child: _buildNumberField(
                  label: 'İlk konularda ücretsiz soru',
                  controller: _firstTopicsFreeQuestionsController,
                ),
              ),
            ],
          ),
          const SizedBox(height: 12),
          Row(
            children: [
              Expanded(
                child: _buildNumberField(
                  label: 'Diğer konularda ücretsiz soru',
                  controller: _otherTopicsFreeQuestionsController,
                ),
              ),
              const SizedBox(width: 12),
              ElevatedButton.icon(
                onPressed: _saveFreeQuestionConfig,
                icon: const Icon(Icons.save, size: 18),
                label: const Text('Kaydet', style: TextStyle(fontSize: 13)),
                style: ElevatedButton.styleFrom(
                  backgroundColor: Colors.green.shade600,
                  foregroundColor: Colors.white,
                  padding: const EdgeInsets.symmetric(
                    horizontal: 16,
                    vertical: 10,
                  ),
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(12),
                  ),
                ),
              ),
            ],
          ),
        ],
      ),
    );
  }

  Widget _buildNumberField({
    required String label,
    required TextEditingController controller,
  }) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(
          label,
          style: const TextStyle(
            color: Colors.white70,
            fontSize: 12,
            fontWeight: FontWeight.w500,
          ),
        ),
        const SizedBox(height: 6),
        TextField(
          controller: controller,
          keyboardType: TextInputType.number,
          style: const TextStyle(color: Colors.white, fontSize: 13),
          decoration: InputDecoration(
            isDense: true,
            filled: true,
            fillColor: Colors.black.withOpacity(0.2),
            border: OutlineInputBorder(
              borderRadius: BorderRadius.circular(10),
              borderSide: BorderSide(color: Colors.white.withOpacity(0.3)),
            ),
            enabledBorder: OutlineInputBorder(
              borderRadius: BorderRadius.circular(10),
              borderSide: BorderSide(color: Colors.white.withOpacity(0.3)),
            ),
            focusedBorder: OutlineInputBorder(
              borderRadius: BorderRadius.circular(10),
              borderSide: const BorderSide(
                color: Colors.greenAccent,
                width: 1.5,
              ),
            ),
            contentPadding: const EdgeInsets.symmetric(
              horizontal: 12,
              vertical: 8,
            ),
          ),
        ),
      ],
    );
  }

  Future<void> _saveFreeQuestionConfig() async {
    final firstTopicsCount =
        int.tryParse(_firstTopicsCountController.text.trim()) ?? 10;
    final firstTopicsFreeQuestions =
        int.tryParse(_firstTopicsFreeQuestionsController.text.trim()) ?? 20;
    final otherTopicsFreeQuestions =
        int.tryParse(_otherTopicsFreeQuestionsController.text.trim()) ?? 2;

    final success = await _adminService.updateFreeQuestionConfig(
      firstTopicsCount: firstTopicsCount,
      firstTopicsFreeQuestions: firstTopicsFreeQuestions,
      otherTopicsFreeQuestions: otherTopicsFreeQuestions,
    );

    if (!mounted) return;

    if (success) {
      ScaffoldMessenger.of(context).showSnackBar(
        const SnackBar(
          content: Text('Ücretsiz soru ayarları güncellendi'),
          backgroundColor: Colors.green,
        ),
      );
      await _loadFreeQuestionConfig();
    } else {
      ScaffoldMessenger.of(context).showSnackBar(
        const SnackBar(
          content: Text('Ayarlar güncellenirken bir hata oluştu'),
          backgroundColor: Colors.red,
        ),
      );
    }
  }

  Widget _buildStatsGrid() {
    final stats = [
      {
        'title': AppLocalizations.of(context)!.totalUsers,
        'value': '${_userStats['totalUsers'] ?? 0}',
        'icon': Icons.people,
        'color': Colors.blue,
        'subtitle':
            '${_userStats['newUsersLastWeek'] ?? 0} ${AppLocalizations.of(context)!.newUsers7Days}',
      },
      {
        'title': AppLocalizations.of(context)!.activeUsers,
        'value': '${_userStats['activeUsersToday'] ?? 0}',
        'icon': Icons.trending_up,
        'color': Colors.green,
        'subtitle': 'Son 24 saat',
      },
      {
        'title': 'Toplam Soru',
        'value': '${_quizStats['totalQuestions'] ?? 0}',
        'icon': Icons.quiz,
        'color': Colors.orange,
        'subtitle':
            '${_quizStats['totalCategories'] ?? 0} kategori${_quizStats['organizedQuestions'] != null ? ' (${_quizStats['organizedQuestions']} organize)' : ''}',
      },
      {
        'title': 'Quiz Denemesi',
        'value': '${_userStats['totalQuizzes'] ?? 0}',
        'icon': Icons.assessment,
        'color': Colors.purple,
        'subtitle':
            '${_userStats['recentQuizzes'] ?? 0} ${AppLocalizations.of(context)!.last7DaysQuizzes}',
      },
    ];

    return LayoutBuilder(
      builder: (context, constraints) {
        // Ekran boyutuna göre responsive grid
        final screenWidth = constraints.maxWidth;
        int crossAxisCount;
        double childAspectRatio;
        double spacing;

        if (screenWidth > 1200) {
          // Desktop - 4 sütun
          crossAxisCount = 4;
          childAspectRatio = 2.8;
          spacing = 6;
        } else if (screenWidth > 800) {
          // Tablet - 3 sütun
          crossAxisCount = 3;
          childAspectRatio = 2.5;
          spacing = 4;
        } else {
          // Telefon - 2 sütun (küçük ve büyük telefon)
          crossAxisCount = 2;
          childAspectRatio =
              screenWidth > 600 ? 2.2 : 2.0; // Çok daha küçük kartlar
          spacing = screenWidth > 600 ? 4 : 3; // Çok daha az boşluk
        }

        return GridView.builder(
          shrinkWrap: true,
          physics: const NeverScrollableScrollPhysics(),
          gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
            crossAxisCount: crossAxisCount,
            crossAxisSpacing: spacing,
            mainAxisSpacing: spacing,
            childAspectRatio: childAspectRatio,
          ),
          itemCount: stats.length,
          itemBuilder: (context, index) {
            final stat = stats[index];
            return _buildResponsiveStatCard(stat, screenWidth);
          },
        );
      },
    );
  }

  Widget _buildResponsiveStatCard(
    Map<String, dynamic> stat,
    double screenWidth,
  ) {
    // Ekran boyutuna göre padding ve font boyutları
    final isSmallScreen = screenWidth < 600;
    final isLargeScreen = screenWidth >= 1200;

    return Container(
      padding: EdgeInsets.all(isSmallScreen ? 6 : (isLargeScreen ? 10 : 8)),
      decoration: BoxDecoration(
        color: Colors.white.withOpacity(0.1),
        borderRadius: BorderRadius.circular(isSmallScreen ? 6 : 8),
        border: Border.all(color: Colors.white.withOpacity(0.2)),
        boxShadow: [
          BoxShadow(
            color: Colors.black.withOpacity(0.1),
            blurRadius: isSmallScreen ? 2 : 4,
            offset: const Offset(0, 1),
          ),
        ],
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          // Icon ve başlık satırı
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Container(
                padding: EdgeInsets.all(isSmallScreen ? 2 : 4),
                decoration: BoxDecoration(
                  color: (stat['color'] as Color).withOpacity(0.2),
                  borderRadius: BorderRadius.circular(isSmallScreen ? 3 : 4),
                ),
                child: Icon(
                  stat['icon'] as IconData,
                  color: stat['color'] as Color,
                  size: isSmallScreen ? 16 : (isLargeScreen ? 20 : 18),
                ),
              ),
              if (isLargeScreen) ...[
                // Büyük ekranlarda ek bilgi
                Container(
                  padding: const EdgeInsets.symmetric(
                    horizontal: 6,
                    vertical: 2,
                  ),
                  decoration: BoxDecoration(
                    color: (stat['color'] as Color).withOpacity(0.1),
                    borderRadius: BorderRadius.circular(8),
                  ),
                  child: Text(
                    'Detay',
                    style: TextStyle(
                      color: (stat['color'] as Color),
                      fontSize: 8,
                      fontWeight: FontWeight.w600,
                    ),
                  ),
                ),
              ],
            ],
          ),

          // Değer ve açıklama
          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                stat['value'] as String,
                style: TextStyle(
                  fontSize: isSmallScreen ? 18 : (isLargeScreen ? 24 : 20),
                  fontWeight: FontWeight.bold,
                  color: Colors.white,
                ),
              ),
              SizedBox(height: isSmallScreen ? 1 : 2),
              Text(
                stat['title'] as String,
                style: TextStyle(
                  fontSize: isSmallScreen ? 11 : (isLargeScreen ? 13 : 12),
                  color: Colors.white70,
                  fontWeight: FontWeight.w500,
                ),
                maxLines: 1,
                overflow: TextOverflow.ellipsis,
              ),
              SizedBox(height: isSmallScreen ? 0.5 : 1),
              Text(
                stat['subtitle'] as String,
                style: TextStyle(
                  fontSize: isSmallScreen ? 9 : (isLargeScreen ? 11 : 10),
                  color: Colors.white60,
                ),
                maxLines: 1,
                overflow: TextOverflow.ellipsis,
              ),
            ],
          ),
        ],
      ),
    );
  }

  Widget _buildLanguageStatsGrid() {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        const Text(
          'Dil Bazlı Quiz İstatistikleri',
          style: TextStyle(
            fontSize: 20,
            fontWeight: FontWeight.bold,
            color: Colors.white,
          ),
        ),
        const SizedBox(height: 16),
        LayoutBuilder(
          builder: (context, constraints) {
            final screenWidth = constraints.maxWidth;
            double childAspectRatio;
            double spacing;

            if (screenWidth > 1200) {
              // Desktop
              childAspectRatio = 2.8;
              spacing = 6;
            } else if (screenWidth > 800) {
              // Tablet
              childAspectRatio = 2.5;
              spacing = 4;
            } else {
              // Telefon
              childAspectRatio = screenWidth > 600 ? 2.2 : 2.0;
              spacing = screenWidth > 600 ? 4 : 3;
            }

            return GridView.builder(
              shrinkWrap: true,
              physics: const NeverScrollableScrollPhysics(),
              gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                crossAxisCount: 2,
                crossAxisSpacing: spacing,
                mainAxisSpacing: spacing,
                childAspectRatio: childAspectRatio,
              ),
              itemCount: 2,
              itemBuilder: (context, index) {
                final isTurkish = index == 0;
                final language = isTurkish ? 'Türkçe' : 'İngilizce';
                final questionCount =
                    isTurkish
                        ? _languageStats['turkishQuestions'] ?? 0
                        : _languageStats['englishQuestions'] ?? 0;
                final categoryCount =
                    isTurkish
                        ? _languageStats['turkishCategories'] ?? 0
                        : _languageStats['englishCategories'] ?? 0;
                final color = isTurkish ? Colors.red : Colors.blue;
                final flag = isTurkish ? '🇹🇷' : '🇺🇸';

                return _buildLanguageStatCard(
                  language,
                  questionCount,
                  categoryCount,
                  color,
                  flag,
                  screenWidth,
                );
              },
            );
          },
        ),
      ],
    );
  }

  Widget _buildLanguageStatCard(
    String language,
    int questionCount,
    int categoryCount,
    Color color,
    String flag,
    double screenWidth,
  ) {
    final isSmallScreen = screenWidth < 600;
    final isLargeScreen = screenWidth >= 1200;

    return Container(
      padding: EdgeInsets.all(isSmallScreen ? 6 : (isLargeScreen ? 10 : 8)),
      decoration: BoxDecoration(
        color: Colors.white.withOpacity(0.1),
        borderRadius: BorderRadius.circular(isSmallScreen ? 6 : 8),
        border: Border.all(color: Colors.white.withOpacity(0.2)),
        boxShadow: [
          BoxShadow(
            color: Colors.black.withOpacity(0.1),
            blurRadius: isSmallScreen ? 2 : 4,
            offset: const Offset(0, 1),
          ),
        ],
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          // Flag ve başlık satırı
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Container(
                padding: EdgeInsets.all(isSmallScreen ? 4 : 6),
                decoration: BoxDecoration(
                  color: color.withOpacity(0.2),
                  borderRadius: BorderRadius.circular(isSmallScreen ? 6 : 8),
                ),
                child: Row(
                  mainAxisSize: MainAxisSize.min,
                  children: [
                    Text(
                      flag,
                      style: TextStyle(
                        fontSize:
                            isSmallScreen ? 16 : (isLargeScreen ? 20 : 18),
                      ),
                    ),
                    SizedBox(width: isSmallScreen ? 4 : 6),
                    Text(
                      language,
                      style: TextStyle(
                        color: color,
                        fontSize:
                            isSmallScreen ? 12 : (isLargeScreen ? 14 : 13),
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                  ],
                ),
              ),
            ],
          ),

          // Değer ve açıklama
          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                '$questionCount soru',
                style: TextStyle(
                  fontSize: isSmallScreen ? 18 : (isLargeScreen ? 24 : 20),
                  fontWeight: FontWeight.bold,
                  color: Colors.white,
                ),
              ),
              SizedBox(height: isSmallScreen ? 2 : 3),
              Text(
                '$categoryCount kategori',
                style: TextStyle(
                  fontSize: isSmallScreen ? 9 : (isLargeScreen ? 11 : 10),
                  color: Colors.white60,
                ),
                maxLines: 1,
                overflow: TextOverflow.ellipsis,
              ),
            ],
          ),
        ],
      ),
    );
  }

  Widget _buildQuizCategoriesGrid() {
    final turkishCategories =
        _languageStats['turkishQuestionsByCategory'] as Map<String, int>? ?? {};
    final englishCategories =
        _languageStats['englishQuestionsByCategory'] as Map<String, int>? ?? {};

    // Multilingual sırasına göre kategorileri sırala
    final turkishOrderedCategories = _getOrderedTurkishCategories(
      turkishCategories,
    );
    final englishOrderedCategories = _getOrderedEnglishCategories(
      englishCategories,
    );

    final maxLength = math.max(
      turkishOrderedCategories.length,
      englishOrderedCategories.length,
    );

    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        const Text(
          'Quiz Kategorileri Detayı',
          style: TextStyle(
            fontSize: 20,
            fontWeight: FontWeight.bold,
            color: Colors.white,
          ),
        ),
        const SizedBox(height: 16),
        ListView.builder(
          shrinkWrap: true,
          physics: const NeverScrollableScrollPhysics(),
          itemCount: maxLength,
          itemBuilder: (context, index) {
            final turkishCategory =
                index < turkishOrderedCategories.length
                    ? turkishOrderedCategories[index]
                    : null;
            final englishCategory =
                index < englishOrderedCategories.length
                    ? englishOrderedCategories[index]
                    : null;

            return Padding(
              padding: const EdgeInsets.only(bottom: 12),
              child: Row(
                children: [
                  // Sol taraf - Türkçe
                  Expanded(
                    child:
                        turkishCategory != null
                            ? _buildCategoryCard(
                              turkishCategory['name']!,
                              turkishCategory['count']!,
                              'TR',
                              Colors.blue,
                              number: index + 1,
                            )
                            : const SizedBox(height: 80),
                  ),
                  const SizedBox(width: 12),
                  // Sağ taraf - İngilizce
                  Expanded(
                    child:
                        englishCategory != null
                            ? _buildCategoryCard(
                              englishCategory['name']!,
                              englishCategory['count']!,
                              'EN',
                              Colors.green,
                              number: index + 1,
                            )
                            : const SizedBox(height: 80),
                  ),
                ],
              ),
            );
          },
        ),
      ],
    );
  }

  // Türkçe kategorileri multilingual sırasına göre sırala
  List<Map<String, dynamic>> _getOrderedTurkishCategories(
    Map<String, int> categories,
  ) {
    // MultilingualQuestionService'ten Türkçe kategorileri al
    final turkishCategories = MultilingualQuestionService.getQuizCategories(
      'turkish',
    );

    final orderedCategories = <Map<String, dynamic>>[];
    for (final category in turkishCategories) {
      final name = category['title'] as String;
      if (categories.containsKey(name)) {
        orderedCategories.add({'name': name, 'count': categories[name]!});
      }
    }
    return orderedCategories;
  }

  // İngilizce kategorileri multilingual sırasına göre sırala
  List<Map<String, dynamic>> _getOrderedEnglishCategories(
    Map<String, int> categories,
  ) {
    // MultilingualQuestionService'ten İngilizce kategorileri al (63 kategori)
    final englishCategories = MultilingualQuestionService.getQuizCategories(
      'en',
    );

    final orderedCategories = <Map<String, dynamic>>[];

    // Sadece MultilingualQuestionService'teki kategorileri kullan (63 kategori)
    for (final category in englishCategories) {
      final name = category['title'] as String;
      String? firebaseKey;

      // Firebase'deki tüm olası formatları kontrol et - daha kapsamlı eşleştirme
      final possibleKeys = [
        '$name (English)', // En yaygın format
        '${name.replaceAll(' & ', ' and ')} (English)',
        '${name.replaceAll(' and ', ' & ')} (English)',
        '${name.replaceAll(' - ', ' & ')} (English)',
        '${name.replaceAll(' & ', ' - ')} (English)',
        '${name.replaceAll(', ', ' & ')} (English)',
        '${name.replaceAll(' & ', ', ')} (English)',
        name, // Direkt isim
        name.replaceAll(' & ', ' and '),
        name.replaceAll(' and ', ' & '),
        name.replaceAll(' - ', ' & '),
        name.replaceAll(' & ', ' - '),
        name.replaceAll(', ', ' & '),
        name.replaceAll(' & ', ', '),
        // Ek varyasyonlar
        '${name.replaceAll(' & ', ' and ')}',
        '${name.replaceAll(' and ', ' & ')}',
        '${name.replaceAll(' - ', ' & ')}',
        '${name.replaceAll(' & ', ' - ')}',
        '${name.replaceAll(', ', ' & ')}',
        '${name.replaceAll(' & ', ', ')}',
      ];

      // Ayrıca kısmi eşleştirme de dene - daha akıllı eşleştirme
      final partialMatches = <String>[];
      final nameWords =
          name.toLowerCase().split(' ').where((w) => w.length > 2).toList();

      for (final key in categories.keys) {
        final keyLower = key.toLowerCase();
        final keyWords =
            keyLower.split(' ').where((w) => w.length > 2).toList();

        // En az 2 kelime eşleşiyorsa kısmi eşleştirme olarak kabul et
        int matchCount = 0;
        for (final nameWord in nameWords) {
          for (final keyWord in keyWords) {
            if (nameWord == keyWord ||
                nameWord.contains(keyWord) ||
                keyWord.contains(nameWord)) {
              matchCount++;
              break;
            }
          }
        }

        if (matchCount >= 2) {
          partialMatches.add(key);
        }
      }

      // Önce tam eşleştirme dene
      for (final key in possibleKeys) {
        if (categories.containsKey(key)) {
          firebaseKey = key;
          break;
        }
      }

      // Tam eşleştirme yoksa kısmi eşleştirme dene
      if (firebaseKey == null && partialMatches.isNotEmpty) {
        // En uzun eşleşmeyi seç
        firebaseKey = partialMatches.reduce(
          (a, b) => a.length > b.length ? a : b,
        );
      }

      if (firebaseKey != null) {
        orderedCategories.add({
          'name': name, // Temiz isim
          'count': categories[firebaseKey]!,
        });
      } else {
        // Eğer Firebase'de eşleşme yoksa, 0 soru ile göster
        orderedCategories.add({'name': name, 'count': 0});
      }
    }

    return orderedCategories;
  }

  // Kategori kartı oluştur
  Widget _buildCategoryCard(
    String name,
    int count,
    String language,
    Color color, {
    int? number,
  }) {
    return Container(
      height: 120, // Yüksekliği daha da artırdık
      decoration: BoxDecoration(
        color: Colors.white.withOpacity(0.1),
        borderRadius: BorderRadius.circular(12),
        border: Border.all(color: color.withOpacity(0.3)),
      ),
      child: Padding(
        padding: const EdgeInsets.all(8),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Row(
              children: [
                // Numara
                if (number != null) ...[
                  Container(
                    width: 24,
                    height: 24,
                    decoration: BoxDecoration(
                      color: color.withOpacity(0.8),
                      borderRadius: BorderRadius.circular(12),
                    ),
                    child: Center(
                      child: Text(
                        '$number',
                        style: const TextStyle(
                          color: Colors.white,
                          fontSize: 10,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                    ),
                  ),
                  const SizedBox(width: 6),
                ],
                // Dil etiketi
                Container(
                  padding: const EdgeInsets.symmetric(
                    horizontal: 6,
                    vertical: 2,
                  ),
                  decoration: BoxDecoration(
                    color: color,
                    borderRadius: BorderRadius.circular(8),
                  ),
                  child: Text(
                    language,
                    style: const TextStyle(
                      color: Colors.white,
                      fontSize: 10,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                ),
                const Spacer(),
                Text(
                  '$count soru',
                  style: const TextStyle(color: Colors.white70, fontSize: 10),
                ),
              ],
            ),
            const SizedBox(height: 4),
            Expanded(
              child: Text(
                name,
                style: const TextStyle(
                  color: Colors.white,
                  fontSize: 11,
                  fontWeight: FontWeight.w500,
                  height: 1.2,
                ),
                maxLines: 4,
                overflow: TextOverflow.ellipsis,
              ),
            ),
          ],
        ),
      ),
    );
  }

  Widget _buildRecentActivity() {
    return Container(
      width: double.infinity,
      padding: const EdgeInsets.all(20),
      decoration: BoxDecoration(
        color: Colors.white.withOpacity(0.1),
        borderRadius: BorderRadius.circular(20),
        border: Border.all(color: Colors.white.withOpacity(0.2)),
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          const Text(
            'Sistem Özeti',
            style: TextStyle(
              fontSize: 18,
              fontWeight: FontWeight.bold,
              color: Colors.white,
            ),
          ),
          const SizedBox(height: 16),
          const Text(
            'Quiz sistemi aktif ve çalışır durumda.',
            style: TextStyle(color: Colors.white70, fontSize: 14),
          ),
          const SizedBox(height: 12),
          Row(
            children: [
              Icon(Icons.check_circle, color: Colors.green, size: 20),
              const SizedBox(width: 8),
              Text(
                'Sistem durumu: Normal',
                style: TextStyle(
                  color: Colors.green,
                  fontSize: 14,
                  fontWeight: FontWeight.w500,
                ),
              ),
            ],
          ),
        ],
      ),
    );
  }

  Widget _buildQuestionsManagement() {
    return LayoutBuilder(
      builder: (context, constraints) {
        final screenWidth = constraints.maxWidth;
        final isSmallScreen = screenWidth < 600;
        final isVerySmallScreen = screenWidth < 400;

        return Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              'Soru Yönetimi',
              style: TextStyle(
                fontSize: isVerySmallScreen ? 16 : (isSmallScreen ? 18 : 22),
                fontWeight: FontWeight.bold,
                color: Colors.white,
              ),
            ),
            SizedBox(
              height: isVerySmallScreen ? 12 : (isSmallScreen ? 14 : 16),
            ),

            // Dil seçici
            _buildLanguageSelector(),
            SizedBox(
              height: isVerySmallScreen ? 12 : (isSmallScreen ? 14 : 16),
            ),

            Row(
              children: [
                Expanded(
                  child: ElevatedButton.icon(
                    onPressed: () {
                      Navigator.push(
                        context,
                        MaterialPageRoute(
                          builder: (context) => const AddQuestionScreen(),
                        ),
                      ).then((_) => _loadQuestions());
                    },
                    icon: Icon(
                      Icons.add,
                      size: isVerySmallScreen ? 16 : (isSmallScreen ? 18 : 20),
                    ),
                    label: Text(
                      'Yeni Soru Ekle',
                      style: TextStyle(
                        fontSize:
                            isVerySmallScreen ? 12 : (isSmallScreen ? 13 : 14),
                      ),
                    ),
                    style: ElevatedButton.styleFrom(
                      backgroundColor: Colors.blue.shade600,
                      foregroundColor: Colors.white,
                      padding: EdgeInsets.symmetric(
                        vertical:
                            isVerySmallScreen ? 8 : (isSmallScreen ? 10 : 12),
                      ),
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(
                          isVerySmallScreen ? 10 : 15,
                        ),
                      ),
                    ),
                  ),
                ),
                const SizedBox(width: 8),
                Expanded(
                  child: ElevatedButton.icon(
                    onPressed: _isImportingJson ? null : _showJsonImportDialog,
                    icon: _isImportingJson
                        ? SizedBox(
                            width: isVerySmallScreen ? 14 : 16,
                            height: isVerySmallScreen ? 14 : 16,
                            child: const CircularProgressIndicator(
                              strokeWidth: 2,
                              color: Colors.white,
                            ),
                          )
                        : Icon(
                            Icons.upload_file_rounded,
                            size: isVerySmallScreen ? 16 : (isSmallScreen ? 18 : 20),
                          ),
                    label: Text(
                      'JSON İçe Aktar',
                      style: TextStyle(
                        fontSize:
                            isVerySmallScreen ? 12 : (isSmallScreen ? 13 : 14),
                      ),
                    ),
                    style: ElevatedButton.styleFrom(
                      backgroundColor: Colors.green.shade700,
                      foregroundColor: Colors.white,
                      padding: EdgeInsets.symmetric(
                        vertical:
                            isVerySmallScreen ? 8 : (isSmallScreen ? 10 : 12),
                      ),
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(
                          isVerySmallScreen ? 10 : 15,
                        ),
                      ),
                    ),
                  ),
                ),
              ],
            ),
            SizedBox(
              height: isVerySmallScreen ? 12 : (isSmallScreen ? 14 : 16),
            ),
            _buildCategorySelector(),
            SizedBox(
              height: isVerySmallScreen ? 12 : (isSmallScreen ? 14 : 16),
            ),
            Expanded(child: _buildQuestionsList()),
          ],
        );
      },
    );
  }

  // ─────────────────────── JSON İÇE AKTARMA ───────────────────────

  Future<void> _showJsonImportDialog() async {
    // Dialog içi state
    List<Map<String, dynamic>>? parsedQuestions;
    String? fileName;
    String? selectedCollectionName;
    String? selectedDisplayName;
    String? parseError;

    if (_organizedCategories.isEmpty) {
      if (mounted) {
        ScaffoldMessenger.of(context).showSnackBar(
          const SnackBar(
            content: Text('Önce kategori listesi yüklenmelidir.'),
            backgroundColor: Colors.orange,
          ),
        );
      }
      return;
    }

    await showDialog(
      context: context,
      barrierDismissible: !_isImportingJson,
      builder: (ctx) => StatefulBuilder(
        builder: (ctx, setDialogState) {
          Future<void> pickFile() async {
            try {
              final result = await FilePicker.platform.pickFiles(
                type: FileType.custom,
                allowedExtensions: ['json'],
                allowMultiple: false,
              );
              if (result == null || result.files.isEmpty) return;

              final file = result.files.first;

              // bytes → web'de dolu, masaüstünde null olabilir
              // path → mobil/masaüstünde dolu, web'de null olabilir
              String jsonString;
              if (file.bytes != null) {
                jsonString = utf8.decode(file.bytes!);
              } else if (file.path != null) {
                jsonString = await File(file.path!).readAsString();
              } else {
                setDialogState(() => parseError = 'Dosya okunamadı.');
                return;
              }
              final decoded = jsonDecode(jsonString) as Map<String, dynamic>;
              final questions = (decoded['questions'] as List?)
                  ?.map((e) => Map<String, dynamic>.from(e as Map))
                  .toList();

              if (questions == null || questions.isEmpty) {
                setDialogState(() {
                  parseError = 'Dosyada "questions" alanı bulunamadı veya boş.';
                  parsedQuestions = null;
                  fileName = null;
                });
                return;
              }

              setDialogState(() {
                parsedQuestions = questions;
                fileName = file.name;
                parseError = null;
              });
            } catch (e) {
              setDialogState(() {
                parseError = 'JSON parse hatası: $e';
                parsedQuestions = null;
                fileName = null;
              });
            }
          }

          return AlertDialog(
            backgroundColor: Colors.indigo.shade900,
            shape:
                RoundedRectangleBorder(borderRadius: BorderRadius.circular(20)),
            title: const Row(
              children: [
                Icon(Icons.upload_file_rounded,
                    color: Colors.greenAccent, size: 24),
                SizedBox(width: 10),
                Text('JSON\'dan Soru İçe Aktar',
                    style: TextStyle(color: Colors.white, fontSize: 17)),
              ],
            ),
            content: SingleChildScrollView(
              child: Column(
                mainAxisSize: MainAxisSize.min,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  // Adım 1: Dosya Seç
                  Container(
                    padding: const EdgeInsets.all(14),
                    decoration: BoxDecoration(
                      color: Colors.white.withOpacity(0.07),
                      borderRadius: BorderRadius.circular(12),
                      border:
                          Border.all(color: Colors.white.withOpacity(0.15)),
                    ),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        const Text('1. JSON Dosyası Seç',
                            style: TextStyle(
                                color: Colors.white70,
                                fontWeight: FontWeight.w600,
                                fontSize: 13)),
                        const SizedBox(height: 10),
                        SizedBox(
                          width: double.infinity,
                          child: ElevatedButton.icon(
                            onPressed: pickFile,
                            icon: const Icon(Icons.folder_open_rounded,
                                size: 18),
                            label: Text(
                              fileName ?? 'Dosya Seç (.json)',
                              overflow: TextOverflow.ellipsis,
                            ),
                            style: ElevatedButton.styleFrom(
                              backgroundColor: Colors.blueGrey.shade700,
                              foregroundColor: Colors.white,
                              shape: RoundedRectangleBorder(
                                  borderRadius: BorderRadius.circular(10)),
                            ),
                          ),
                        ),
                        if (parseError != null)
                          Padding(
                            padding: const EdgeInsets.only(top: 8),
                            child: Text(parseError!,
                                style: const TextStyle(
                                    color: Colors.redAccent, fontSize: 12)),
                          ),
                        if (parsedQuestions != null)
                          Padding(
                            padding: const EdgeInsets.only(top: 8),
                            child: Row(
                              children: [
                                const Icon(Icons.check_circle,
                                    color: Colors.greenAccent, size: 16),
                                const SizedBox(width: 6),
                                Text(
                                  '${parsedQuestions!.length} soru okundu',
                                  style: const TextStyle(
                                      color: Colors.greenAccent,
                                      fontSize: 13),
                                ),
                              ],
                            ),
                          ),
                      ],
                    ),
                  ),

                  const SizedBox(height: 14),

                  // Adım 2: Kategori Seç
                  Container(
                    padding: const EdgeInsets.all(14),
                    decoration: BoxDecoration(
                      color: Colors.white.withOpacity(0.07),
                      borderRadius: BorderRadius.circular(12),
                      border:
                          Border.all(color: Colors.white.withOpacity(0.15)),
                    ),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        const Text('2. Hedef Kategori Seç',
                            style: TextStyle(
                                color: Colors.white70,
                                fontWeight: FontWeight.w600,
                                fontSize: 13)),
                        const SizedBox(height: 10),
                        DropdownButtonFormField<String>(
                          value: selectedCollectionName,
                          isExpanded: true,
                          dropdownColor: Colors.indigo.shade900,
                          style: const TextStyle(
                              color: Colors.white, fontSize: 13),
                          decoration: InputDecoration(
                            isDense: true,
                            filled: true,
                            fillColor: Colors.black.withOpacity(0.3),
                            border: OutlineInputBorder(
                              borderRadius: BorderRadius.circular(10),
                              borderSide: BorderSide(
                                  color: Colors.white.withOpacity(0.3)),
                            ),
                            enabledBorder: OutlineInputBorder(
                              borderRadius: BorderRadius.circular(10),
                              borderSide: BorderSide(
                                  color: Colors.white.withOpacity(0.3)),
                            ),
                            contentPadding: const EdgeInsets.symmetric(
                                horizontal: 12, vertical: 10),
                            hintText: 'Kategori seçin...',
                            hintStyle:
                                const TextStyle(color: Colors.white38),
                          ),
                          items: _organizedCategories
                              .where((c) =>
                                  (c['language'] as String? ?? 'turkish') ==
                                  'turkish')
                              .map((cat) {
                            return DropdownMenuItem<String>(
                              value: cat['collectionName'] as String,
                              child: Text(
                                cat['displayName'] as String,
                                overflow: TextOverflow.ellipsis,
                                style: const TextStyle(fontSize: 13),
                              ),
                            );
                          }).toList(),
                          onChanged: (val) {
                            setDialogState(() {
                              selectedCollectionName = val;
                              selectedDisplayName = _organizedCategories
                                  .firstWhere(
                                    (c) => c['collectionName'] == val,
                                    orElse: () => <String, dynamic>{'displayName': val ?? ''},
                                  )['displayName'] as String?;
                            });
                          },
                        ),
                        if (selectedCollectionName != null)
                          Padding(
                            padding: const EdgeInsets.only(top: 8),
                            child: Text(
                              'Firestore ID: $selectedCollectionName',
                              style: const TextStyle(
                                  color: Colors.white38, fontSize: 11),
                            ),
                          ),
                      ],
                    ),
                  ),

                  // Uyarı notu
                  const SizedBox(height: 12),
                  Container(
                    padding: const EdgeInsets.all(10),
                    decoration: BoxDecoration(
                      color: Colors.amber.withOpacity(0.1),
                      borderRadius: BorderRadius.circular(10),
                      border: Border.all(
                          color: Colors.amber.withOpacity(0.3)),
                    ),
                    child: const Row(
                      children: [
                        Icon(Icons.info_outline,
                            color: Colors.amber, size: 16),
                        SizedBox(width: 8),
                        Expanded(
                          child: Text(
                            'Zaten var olan sorular (metin eşleşmesine göre) otomatik atlanır. JSON\'daki id alanları yok sayılır.',
                            style: TextStyle(
                                color: Colors.amber, fontSize: 11),
                          ),
                        ),
                      ],
                    ),
                  ),
                ],
              ),
            ),
            actions: [
              TextButton(
                onPressed: () => Navigator.of(ctx).pop(),
                child: const Text('İptal',
                    style: TextStyle(color: Colors.white54)),
              ),
              ElevatedButton.icon(
                onPressed: (parsedQuestions == null ||
                        selectedCollectionName == null)
                    ? null
                    : () async {
                        Navigator.of(ctx).pop();
                        await _importJsonQuestions(
                          collectionName: selectedCollectionName!,
                          displayName: selectedDisplayName ??
                              selectedCollectionName!,
                          questions: parsedQuestions!,
                        );
                      },
                icon: const Icon(Icons.cloud_upload_rounded, size: 18),
                label: const Text('Firestore\'a Yükle'),
                style: ElevatedButton.styleFrom(
                  backgroundColor: Colors.green.shade700,
                  foregroundColor: Colors.white,
                  shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(10)),
                ),
              ),
            ],
          );
        },
      ),
    );
  }

  Future<void> _importJsonQuestions({
    required String collectionName,
    required String displayName,
    required List<Map<String, dynamic>> questions,
  }) async {
    setState(() => _isImportingJson = true);

    try {
      final result = await _organizedDataService.importQuestionsFromJson(
        collectionName,
        displayName,
        questions,
      );

      if (!mounted) return;

      final imported = result['imported'] as int? ?? 0;
      final skipped = result['skipped'] as int? ?? 0;
      final errors = result['errors'] as int? ?? 0;
      final success = result['success'] as bool? ?? false;

      if (success) {
        ScaffoldMessenger.of(context).showSnackBar(
          SnackBar(
            content: Text(
              '✅ $imported soru yüklendi'
              '${skipped > 0 ? ', $skipped zaten vardı' : ''}'
              '${errors > 0 ? ', $errors hata' : ''}',
            ),
            backgroundColor: Colors.green.shade700,
            duration: const Duration(seconds: 4),
          ),
        );
        // Soru listesini yenile
        _loadQuestions();
        _loadQuizStatistics();
      } else {
        ScaffoldMessenger.of(context).showSnackBar(
          SnackBar(
            content: Text('❌ Hata: ${result['error'] ?? 'Bilinmeyen hata'}'),
            backgroundColor: Colors.red.shade700,
            duration: const Duration(seconds: 5),
          ),
        );
      }
    } catch (e) {
      if (!mounted) return;
      ScaffoldMessenger.of(context).showSnackBar(
        SnackBar(
          content: Text('❌ Yükleme başarısız: $e'),
          backgroundColor: Colors.red.shade700,
        ),
      );
    } finally {
      if (mounted) setState(() => _isImportingJson = false);
    }
  }

  // ─────────────────────────────────────────────────────────────────

  Widget _buildPurchasesView() {
    // 1. Filtreleme Mantığı
    final filteredPurchases =
        _purchases.where((p) {
          // Tarih filtresi
          final purchasedAt = p['purchasedAt'];
          DateTime? date;
          if (purchasedAt is Timestamp) {
            date = purchasedAt.toDate();
          } else if (p['transactionDate'] != null) {
            try {
              date = DateTime.fromMillisecondsSinceEpoch(
                int.parse(p['transactionDate'].toString()),
              );
            } catch (_) {}
          }

          if (date == null) return _purchaseDateFilter == 'all';

          final now = DateTime.now();
          if (_purchaseDateFilter == 'today') {
            return date.year == now.year &&
                date.month == now.month &&
                date.day == now.day;
          } else if (_purchaseDateFilter == 'week') {
            final lastWeek = now.subtract(const Duration(days: 7));
            return date.isAfter(lastWeek);
          } else if (_purchaseDateFilter == 'month') {
            final lastMonth = now.subtract(const Duration(days: 30));
            return date.isAfter(lastMonth);
          } else if (_purchaseDateFilter == 'custom') {
            if (_customStartDate == null || _customEndDate == null) return true;
            return date.isAfter(_customStartDate!) &&
                date.isBefore(_customEndDate!.add(const Duration(days: 1)));
          }
          return true;
        }).toList();

    return SingleChildScrollView(
      physics: const BouncingScrollPhysics(),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          _buildPurchaseSummaryCard(filteredPurchases),
          const SizedBox(height: 24),
          _buildPurchaseFilters(),
          const SizedBox(height: 24),
          Row(
            children: [
              const Icon(
                Icons.monetization_on_rounded,
                color: Colors.blueAccent,
                size: 20,
              ),
              const SizedBox(width: 8),
              const Text(
                'İşlem Geçmişi',
                style: TextStyle(
                  fontSize: 18,
                  fontWeight: FontWeight.bold,
                  color: Colors.white,
                ),
              ),
            ],
          ),
          const SizedBox(height: 12),
          if (filteredPurchases.isEmpty)
            Container(
              width: double.infinity,
              padding: const EdgeInsets.symmetric(vertical: 40, horizontal: 20),
              decoration: BoxDecoration(
                color: Colors.white.withOpacity(0.05),
                borderRadius: BorderRadius.circular(24),
                border: Border.all(color: Colors.white.withOpacity(0.1)),
              ),
              child: Column(
                children: [
                  Icon(
                    Icons.history_rounded,
                    color: Colors.white.withOpacity(0.2),
                    size: 48,
                  ),
                  const SizedBox(height: 16),
                  Text(
                    'Seçili filtreye göre işlem bulunamadı.',
                    style: TextStyle(
                      color: Colors.white.withOpacity(0.5),
                      fontSize: 14,
                    ),
                    textAlign: TextAlign.center,
                  ),
                ],
              ),
            )
          else
            ListView.builder(
              shrinkWrap: true,
              physics: const NeverScrollableScrollPhysics(),
              itemCount: filteredPurchases.length,
              itemBuilder: (context, index) {
                final purchase = filteredPurchases[index];
                final displayName =
                    purchase['displayName'] as String? ?? 'İsimsiz Kullanıcı';
                final productId = purchase['productId'] as String? ?? '';
                final status = purchase['status'] as String? ?? '';
                final platform = purchase['platform'] as String? ?? '';
                final isRestored = purchase['isRestored'] as bool? ?? false;
                final purchasedAt = purchase['purchasedAt'];

                String packageLabel = productId;
                if (productId.contains('monthly'))
                  packageLabel = 'Aylık Abonelik';
                else if (productId.contains('sixmonth') ||
                    productId.contains('6months'))
                  packageLabel = '6 Aylık Abonelik';
                else if (productId.contains('yearly'))
                  packageLabel = 'Yıllık Abonelik';
                else if (productId.contains('lifetime'))
                  packageLabel = 'Ömür Boyu Premium';

                String statusLabel = status;
                if (status.contains('purchased'))
                  statusLabel = 'Onaylandı';
                else if (status.contains('restored'))
                  statusLabel = 'Geri Yüklendi';
                else if (status.contains('pending'))
                  statusLabel = 'Bekliyor';
                else if (status.contains('error'))
                  statusLabel = 'Hata';

                String purchasedAtText = '';
                if (purchasedAt is Timestamp) {
                  final date = purchasedAt.toDate();
                  purchasedAtText =
                      '${date.day.toString().padLeft(2, '0')}.${date.month.toString().padLeft(2, '0')}.${date.year} '
                      '${date.hour.toString().padLeft(2, '0')}:${date.minute.toString().padLeft(2, '0')}';
                } else if (purchase['transactionDate'] != null) {
                  try {
                    final date = DateTime.fromMillisecondsSinceEpoch(
                      int.parse(purchase['transactionDate'].toString()),
                    );
                    purchasedAtText =
                        '${date.day.toString().padLeft(2, '0')}.${date.month.toString().padLeft(2, '0')}.${date.year} '
                        '${date.hour.toString().padLeft(2, '0')}:${date.minute.toString().padLeft(2, '0')}';
                  } catch (e) {
                    purchasedAtText = purchase['transactionDate'].toString();
                  }
                }

                return Container(
                  margin: const EdgeInsets.only(bottom: 12),
                  padding: const EdgeInsets.all(16),
                  decoration: BoxDecoration(
                    color: Colors.white.withOpacity(0.08),
                    borderRadius: BorderRadius.circular(20),
                    border: Border.all(color: Colors.white.withOpacity(0.1)),
                  ),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Row(
                        children: [
                          Container(
                            padding: const EdgeInsets.symmetric(
                              horizontal: 10,
                              vertical: 4,
                            ),
                            decoration: BoxDecoration(
                              color: (isRestored ? Colors.orange : Colors.green)
                                  .withOpacity(0.2),
                              borderRadius: BorderRadius.circular(10),
                            ),
                            child: Text(
                              isRestored ? 'Restore' : 'Yeni Satın Alma',
                              style: TextStyle(
                                color:
                                    isRestored
                                        ? Colors.orangeAccent
                                        : Colors.greenAccent,
                                fontSize: 11,
                                fontWeight: FontWeight.bold,
                              ),
                            ),
                          ),
                          const Spacer(),
                          Text(
                            platform.toUpperCase(),
                            style: const TextStyle(
                              color: Colors.white38,
                              fontSize: 11,
                            ),
                          ),
                        ],
                      ),
                      const SizedBox(height: 12),
                      Text(
                        packageLabel,
                        style: const TextStyle(
                          color: Colors.white,
                          fontSize: 15,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                      const SizedBox(height: 4),
                      Text(
                        'Kullanıcı: $displayName',
                        style: TextStyle(
                          color: Colors.white.withOpacity(0.6),
                          fontSize: 13,
                        ),
                      ),
                      const SizedBox(height: 12),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Row(
                            children: [
                              Icon(
                                Icons.verified_user_rounded,
                                color:
                                    status.contains('purchased') ||
                                            status.contains('restored')
                                        ? Colors.blueAccent
                                        : Colors.white24,
                                size: 14,
                              ),
                              const SizedBox(width: 4),
                              Text(
                                statusLabel,
                                style: const TextStyle(
                                  color: Colors.white38,
                                  fontSize: 12,
                                ),
                              ),
                            ],
                          ),
                          Text(
                            purchasedAtText,
                            style: const TextStyle(
                              color: Colors.white24,
                              fontSize: 11,
                            ),
                          ),
                        ],
                      ),
                    ],
                  ),
                );
              },
            ),
        ],
      ),
    );
  }

  Widget _buildPurchaseSummaryCard(List<Map<String, dynamic>> filteredList) {
    int monthlyCount = 0;
    int sixMonthCount = 0;
    int yearlyCount = 0;
    int lifetimeCount = 0;
    int totalCount = filteredList.length;

    for (var p in filteredList) {
      final pid = p['productId'] as String;
      if (pid.contains('monthly'))
        monthlyCount++;
      else if (pid.contains('sixmonth') || pid.contains('6months'))
        sixMonthCount++;
      else if (pid.contains('yearly'))
        yearlyCount++;
      else if (pid.contains('lifetime'))
        lifetimeCount++;
    }

    return Container(
      width: double.infinity,
      padding: const EdgeInsets.all(24),
      decoration: BoxDecoration(
        gradient: LinearGradient(
          colors: [Colors.indigo.shade900, Colors.blue.shade900],
          begin: Alignment.topLeft,
          end: Alignment.bottomRight,
        ),
        borderRadius: BorderRadius.circular(28),
        boxShadow: [
          BoxShadow(
            color: Colors.black.withOpacity(0.3),
            blurRadius: 15,
            offset: const Offset(0, 8),
          ),
        ],
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              const Row(
                children: [
                  Icon(Icons.analytics_rounded, color: Colors.white, size: 20),
                  SizedBox(width: 8),
                  Text(
                    'Satış Özeti',
                    style: TextStyle(
                      color: Colors.white,
                      fontSize: 18,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                ],
              ),
              Container(
                padding: const EdgeInsets.symmetric(
                  horizontal: 10,
                  vertical: 4,
                ),
                decoration: BoxDecoration(
                  color: Colors.white.withOpacity(0.2),
                  borderRadius: BorderRadius.circular(8),
                ),
                child: Text(
                  _purchaseDateFilter == 'today'
                      ? 'Bugün'
                      : _purchaseDateFilter == 'week'
                      ? 'Haftalık'
                      : _purchaseDateFilter == 'month'
                      ? 'Aylık'
                      : _purchaseDateFilter == 'custom'
                      ? 'Özel'
                      : 'Tüm Zamanlar',
                  style: const TextStyle(color: Colors.white, fontSize: 11),
                ),
              ),
            ],
          ),
          const SizedBox(height: 24),
          Row(
            children: [
              _buildSummaryItem(
                'Toplam',
                totalCount.toString(),
                Icons.shopping_bag_rounded,
              ),
              const Spacer(),
              _buildSummaryItem(
                'Aylık',
                monthlyCount.toString(),
                Icons.calendar_today_rounded,
              ),
              const Spacer(),
              _buildSummaryItem(
                '6 Aylık',
                sixMonthCount.toString(),
                Icons.date_range_rounded,
              ),
              const Spacer(),
              _buildSummaryItem(
                'Yıllık',
                yearlyCount.toString(),
                Icons.event_available_rounded,
              ),
            ],
          ),
          if (lifetimeCount > 0) ...[
            const SizedBox(height: 16),
            Container(
              padding: const EdgeInsets.symmetric(horizontal: 16, vertical: 8),
              decoration: BoxDecoration(
                color: Colors.white.withOpacity(0.1),
                borderRadius: BorderRadius.circular(12),
              ),
              child: Row(
                children: [
                  const Icon(
                    Icons.star_rounded,
                    color: Colors.amberAccent,
                    size: 16,
                  ),
                  const SizedBox(width: 8),
                  const Text(
                    'Ömür Boyu:',
                    style: TextStyle(color: Colors.white70, fontSize: 13),
                  ),
                  const Spacer(),
                  Text(
                    '$lifetimeCount Adet',
                    style: const TextStyle(
                      color: Colors.white,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                ],
              ),
            ),
          ],
        ],
      ),
    );
  }

  Widget _buildSummaryItem(String label, String count, IconData icon) {
    return Column(
      children: [
        Icon(icon, color: Colors.white70, size: 16),
        const SizedBox(height: 4),
        Text(
          count,
          style: const TextStyle(
            color: Colors.white,
            fontSize: 20,
            fontWeight: FontWeight.bold,
          ),
        ),
        const SizedBox(height: 2),
        Text(
          label,
          style: TextStyle(color: Colors.white.withOpacity(0.6), fontSize: 11),
        ),
      ],
    );
  }

  Widget _buildPurchaseFilters() {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        const Text(
          'Tarih Filtresi',
          style: TextStyle(
            color: Colors.white,
            fontSize: 15,
            fontWeight: FontWeight.w600,
          ),
        ),
        const SizedBox(height: 12),
        SingleChildScrollView(
          scrollDirection: Axis.horizontal,
          child: Row(
            children: [
              _buildFilterChip('all', 'Hepsi'),
              _buildFilterChip('today', 'Bugün'),
              _buildFilterChip('week', 'Haftalık'),
              _buildFilterChip('month', 'Aylık'),
              _buildFilterChip('custom', 'Özel Tarih'),
            ],
          ),
        ),
        if (_purchaseDateFilter == 'custom') ...[
          const SizedBox(height: 16),
          Row(
            children: [
              Expanded(
                child: _buildDateButton(
                  _customStartDate == null
                      ? 'Başlangıç'
                      : '${_customStartDate!.day}.${_customStartDate!.month}.${_customStartDate!.year}',
                  true,
                ),
              ),
              const SizedBox(width: 12),
              Expanded(
                child: _buildDateButton(
                  _customEndDate == null
                      ? 'Bitiş'
                      : '${_customEndDate!.day}.${_customEndDate!.month}.${_customEndDate!.year}',
                  false,
                ),
              ),
            ],
          ),
        ],
      ],
    );
  }

  Widget _buildFilterChip(String filter, String label) {
    bool isSelected = _purchaseDateFilter == filter;
    return GestureDetector(
      onTap: () => setState(() => _purchaseDateFilter = filter),
      child: Container(
        margin: const EdgeInsets.only(right: 8),
        padding: const EdgeInsets.symmetric(horizontal: 16, vertical: 10),
        decoration: BoxDecoration(
          color: isSelected ? Colors.blueAccent : Colors.white.withOpacity(0.1),
          borderRadius: BorderRadius.circular(12),
          border: Border.all(
            color:
                isSelected ? Colors.blueAccent : Colors.white.withOpacity(0.15),
          ),
        ),
        child: Text(
          label,
          style: TextStyle(
            color: isSelected ? Colors.white : Colors.white70,
            fontSize: 13,
            fontWeight: isSelected ? FontWeight.bold : FontWeight.normal,
          ),
        ),
      ),
    );
  }

  Widget _buildDateButton(String label, bool isStart) {
    return InkWell(
      onTap: () async {
        final date = await showDatePicker(
          context: context,
          initialDate: DateTime.now(),
          firstDate: DateTime(2023),
          lastDate: DateTime.now(),
          builder: (context, child) {
            return Theme(
              data: ThemeData.dark().copyWith(
                colorScheme: const ColorScheme.dark(
                  primary: Colors.blueAccent,
                  onPrimary: Colors.white,
                  surface: Color(0xFF1A1A1A),
                  onSurface: Colors.white,
                ),
              ),
              child: child!,
            );
          },
        );
        if (date != null) {
          setState(() {
            if (isStart)
              _customStartDate = date;
            else
              _customEndDate = date;
          });
        }
      },
      child: Container(
        padding: const EdgeInsets.all(16),
        decoration: BoxDecoration(
          color: Colors.white.withOpacity(0.05),
          borderRadius: BorderRadius.circular(15),
          border: Border.all(color: Colors.white.withOpacity(0.1)),
        ),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Text(
              label,
              style: const TextStyle(color: Colors.white70, fontSize: 13),
            ),
            const Icon(Icons.calendar_month, color: Colors.white38, size: 18),
          ],
        ),
      ),
    );
  }

  Widget _buildLanguageSelector() {
    return LayoutBuilder(
      builder: (context, constraints) {
        final screenWidth = constraints.maxWidth;
        final isSmallScreen = screenWidth < 600;
        final isVerySmallScreen = screenWidth < 400;

        return Container(
          padding: EdgeInsets.all(
            isVerySmallScreen ? 12 : (isSmallScreen ? 14 : 16),
          ),
          decoration: BoxDecoration(
            color: Colors.white.withOpacity(0.1),
            borderRadius: BorderRadius.circular(isVerySmallScreen ? 10 : 15),
            border: Border.all(color: Colors.white.withOpacity(0.2)),
          ),
          child: Row(
            children: [
              Icon(
                Icons.language,
                color: Colors.white,
                size: isVerySmallScreen ? 16 : (isSmallScreen ? 18 : 20),
              ),
              SizedBox(
                width: isVerySmallScreen ? 8 : (isSmallScreen ? 10 : 12),
              ),
              Expanded(
                child: DropdownButton<String>(
                  value: _selectedLanguage,
                  hint: Text(
                    'Dil Seçin',
                    style: TextStyle(
                      color: Colors.white60,
                      fontSize:
                          isVerySmallScreen ? 12 : (isSmallScreen ? 13 : 14),
                    ),
                  ),
                  isExpanded: true,
                  dropdownColor: Colors.indigo.shade800,
                  style: TextStyle(
                    color: Colors.white,
                    fontSize:
                        isVerySmallScreen ? 12 : (isSmallScreen ? 13 : 14),
                  ),
                  underline: Container(),
                  icon: Icon(
                    Icons.keyboard_arrow_down,
                    color: Colors.white70,
                    size: isVerySmallScreen ? 16 : (isSmallScreen ? 18 : 20),
                  ),
                  items: [
                    DropdownMenuItem<String>(
                      value: 'turkish',
                      child: Row(
                        children: [
                          Text(
                            '🇹🇷',
                            style: TextStyle(
                              fontSize: isVerySmallScreen ? 14 : 16,
                            ),
                          ),
                          SizedBox(width: isVerySmallScreen ? 6 : 8),
                          Text(
                            'Türkçe',
                            style: TextStyle(
                              fontSize:
                                  isVerySmallScreen
                                      ? 12
                                      : (isSmallScreen ? 13 : 14),
                            ),
                          ),
                        ],
                      ),
                    ),
                    DropdownMenuItem<String>(
                      value: 'english',
                      child: Row(
                        children: [
                          Text(
                            '🇺🇸',
                            style: TextStyle(
                              fontSize: isVerySmallScreen ? 14 : 16,
                            ),
                          ),
                          SizedBox(width: isVerySmallScreen ? 6 : 8),
                          Text(
                            'English',
                            style: TextStyle(
                              fontSize:
                                  isVerySmallScreen
                                      ? 12
                                      : (isSmallScreen ? 13 : 14),
                            ),
                          ),
                        ],
                      ),
                    ),
                  ],
                  onChanged: (value) {
                    if (value != null && value != _selectedLanguage) {
                      setState(() {
                        _selectedLanguage = value;
                        _selectedCategory = '';
                        _selectedCollectionName = '';
                        _questions.clear();
                      });
                      _loadCategories();
                    }
                  },
                ),
              ),
            ],
          ),
        );
      },
    );
  }

  Widget _buildCategorySelector() {
    return Container(
      padding: const EdgeInsets.all(16),
      decoration: BoxDecoration(
        color: Colors.white.withOpacity(0.1),
        borderRadius: BorderRadius.circular(15),
        border: Border.all(color: Colors.white.withOpacity(0.2)),
      ),
      child: Row(
        children: [
          const Icon(Icons.category, color: Colors.white, size: 20),
          const SizedBox(width: 12),
          Expanded(
            child:
                _categories.isEmpty
                    ? const Text(
                      'Henüz kategori yok - Veri aktarımı yapın',
                      style: TextStyle(
                        color: Colors.orange,
                        fontSize: 14,
                        fontWeight: FontWeight.w500,
                      ),
                    )
                    : DropdownButton<String>(
                      value:
                          _selectedCategory.isEmpty ? null : _selectedCategory,
                      hint: const Text(
                        'Kategori Seçin',
                        style: TextStyle(color: Colors.white60),
                      ),
                      isExpanded: true,
                      dropdownColor: Colors.indigo.shade800,
                      style: const TextStyle(color: Colors.white),
                      underline: Container(),
                      icon: const Icon(
                        Icons.keyboard_arrow_down,
                        color: Colors.white70,
                      ),
                      menuMaxHeight: 400, // Daha yüksek dropdown
                      items:
                          _categories.map((category) {
                            return DropdownMenuItem<String>(
                              value: category,
                              child: Container(
                                width: double.infinity, // Tam genişlik
                                padding: const EdgeInsets.symmetric(
                                  vertical: 8,
                                  horizontal: 4,
                                ),
                                child: Text(
                                  category,
                                  style: const TextStyle(
                                    color: Colors.white,
                                    fontSize: 13, // Biraz daha küçük font
                                    fontWeight: FontWeight.w500,
                                  ),
                                  maxLines: 2, // İki satıra kadar göster
                                  overflow: TextOverflow.ellipsis,
                                ),
                              ),
                            );
                          }).toList(),
                      onChanged: (value) {
                        if (value != null) {
                          setState(() {
                            _selectedCategory = value;
                            // Organize kategoride collection name'i bul
                            final selectedOrganizedCategory =
                                _organizedCategories.firstWhere(
                                  (cat) => cat['displayName'] == value,
                                  orElse: () => <String, dynamic>{},
                                );
                            _selectedCollectionName =
                                selectedOrganizedCategory['collectionName'] ??
                                '';
                          });
                          _loadQuestions();
                        }
                      },
                      selectedItemBuilder: (context) {
                        return _categories.map((category) {
                          return Row(
                            children: [
                              Expanded(
                                child: Text(
                                  category,
                                  style: const TextStyle(
                                    color: Colors.white,
                                    fontSize: 14,
                                    fontWeight: FontWeight.w600,
                                  ),
                                  maxLines: 1, // Seçili gösterimde tek satır
                                  overflow: TextOverflow.ellipsis,
                                ),
                              ),
                            ],
                          );
                        }).toList();
                      },
                    ),
          ),
          if (_selectedCategory.isNotEmpty) ...[
            Container(
              margin: const EdgeInsets.only(left: 8),
              padding: const EdgeInsets.symmetric(horizontal: 8, vertical: 4),
              decoration: BoxDecoration(
                color: Colors.green.withOpacity(0.2),
                borderRadius: BorderRadius.circular(12),
                border: Border.all(color: Colors.green.withOpacity(0.3)),
              ),
              child: Text(
                '${_questions.length} soru',
                style: const TextStyle(
                  color: Colors.green,
                  fontSize: 12,
                  fontWeight: FontWeight.bold,
                ),
              ),
            ),
            IconButton(
              onPressed: () {
                setState(() {
                  _selectedCategory = '';
                  _selectedCollectionName = '';
                  _questions.clear();
                });
              },
              icon: const Icon(Icons.clear, color: Colors.white70, size: 18),
              padding: EdgeInsets.zero,
              constraints: const BoxConstraints(),
            ),
          ],
        ],
      ),
    );
  }

  Widget _buildQuestionsList() {
    if (_selectedCategory.isEmpty) {
      return Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Icon(
              Icons.category_outlined,
              size: 64,
              color: Colors.white.withOpacity(0.5),
            ),
            const SizedBox(height: 16),
            Text(
              AppLocalizations.of(context)!.selectCategoryToView,
              textAlign: TextAlign.center,
              style: TextStyle(
                color: Colors.white.withOpacity(0.7),
                fontSize: 16,
              ),
            ),
          ],
        ),
      );
    }

    if (_questions.isEmpty) {
      return Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Icon(
              Icons.quiz_outlined,
              size: 64,
              color: Colors.white.withOpacity(0.5),
            ),
            const SizedBox(height: 16),
            Text(
              AppLocalizations.of(context)!.noCategoryQuestions,
              style: TextStyle(
                color: Colors.white.withOpacity(0.7),
                fontSize: 16,
              ),
            ),
            const SizedBox(height: 8),
            Text(
              AppLocalizations.of(context)!.addNewQuestions,
              textAlign: TextAlign.center,
              style: TextStyle(
                color: Colors.white.withOpacity(0.5),
                fontSize: 12,
              ),
            ),
          ],
        ),
      );
    }

    return Column(
      children: [
        // Soru listesi - başlık kaldırıldı çünkü kategori yukarıda gösteriliyor
        Expanded(
          child: ListView.builder(
            itemCount: _questions.length,
            itemBuilder: (context, index) {
              final question = _questions[index];
              return Container(
                margin: const EdgeInsets.only(bottom: 12),
                padding: const EdgeInsets.all(16),
                decoration: BoxDecoration(
                  color: Colors.white.withOpacity(0.1),
                  borderRadius: BorderRadius.circular(15),
                  border: Border.all(color: Colors.white.withOpacity(0.2)),
                ),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Row(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Container(
                          padding: const EdgeInsets.symmetric(
                            horizontal: 8,
                            vertical: 4,
                          ),
                          decoration: BoxDecoration(
                            color: Colors.blue.withOpacity(0.2),
                            borderRadius: BorderRadius.circular(8),
                          ),
                          child: Text(
                            'Soru ${index + 1}',
                            style: const TextStyle(
                              color: Colors.blue,
                              fontSize: 11,
                              fontWeight: FontWeight.bold,
                            ),
                          ),
                        ),
                        const Spacer(),
                        PopupMenuButton<String>(
                          icon: const Icon(
                            Icons.more_vert,
                            color: Colors.white70,
                          ),
                          onSelected: (value) async {
                            if (value == 'edit') {
                              final result = await Navigator.push(
                                context,
                                MaterialPageRoute(
                                  builder:
                                      (context) => EditQuestionScreen(
                                        question: question,
                                      ),
                                ),
                              );
                              if (result == true) {
                                _loadQuestions();
                              }
                            } else if (value == 'delete') {
                              final confirm = await _showDeleteConfirmation();
                              if (confirm) {
                                final success = await _adminService
                                    .deleteQuestion(question['id']);
                                if (success) {
                                  _loadQuestions();
                                  ScaffoldMessenger.of(context).showSnackBar(
                                    const SnackBar(
                                      content: Text('Soru başarıyla silindi'),
                                    ),
                                  );
                                }
                              }
                            }
                          },
                          itemBuilder:
                              (context) => [
                                const PopupMenuItem(
                                  value: 'edit',
                                  child: Row(
                                    children: [
                                      Icon(Icons.edit, size: 20),
                                      SizedBox(width: 8),
                                      Text('Düzenle'),
                                    ],
                                  ),
                                ),
                                const PopupMenuItem(
                                  value: 'delete',
                                  child: Row(
                                    children: [
                                      Icon(
                                        Icons.delete,
                                        size: 20,
                                        color: Colors.red,
                                      ),
                                      SizedBox(width: 8),
                                      Text(
                                        'Sil',
                                        style: TextStyle(color: Colors.red),
                                      ),
                                    ],
                                  ),
                                ),
                              ],
                        ),
                      ],
                    ),
                    const SizedBox(height: 12),
                    Text(
                      question['question'] ?? '',
                      style: const TextStyle(
                        color: Colors.white,
                        fontWeight: FontWeight.w600,
                        fontSize: 14,
                      ),
                    ),
                    const SizedBox(height: 12),
                    ...List.generate(
                      (question['options'] as List<String>).length,
                      (optionIndex) {
                        final option =
                            (question['options'] as List<String>)[optionIndex];
                        final isCorrect =
                            optionIndex == question['correctAnswer'];
                        return Padding(
                          padding: const EdgeInsets.only(bottom: 4),
                          child: Row(
                            children: [
                              Container(
                                width: 20,
                                height: 20,
                                decoration: BoxDecoration(
                                  color:
                                      isCorrect
                                          ? Colors.green
                                          : Colors.transparent,
                                  border: Border.all(
                                    color:
                                        isCorrect
                                            ? Colors.green
                                            : Colors.white30,
                                    width: 2,
                                  ),
                                  borderRadius: BorderRadius.circular(4),
                                ),
                                child:
                                    isCorrect
                                        ? const Icon(
                                          Icons.check,
                                          color: Colors.white,
                                          size: 12,
                                        )
                                        : null,
                              ),
                              const SizedBox(width: 8),
                              Expanded(
                                child: Text(
                                  option,
                                  style: TextStyle(
                                    color:
                                        isCorrect
                                            ? Colors.green
                                            : Colors.white70,
                                    fontSize: 13,
                                    fontWeight:
                                        isCorrect
                                            ? FontWeight.bold
                                            : FontWeight.normal,
                                  ),
                                ),
                              ),
                            ],
                          ),
                        );
                      },
                    ),
                  ],
                ),
              );
            },
          ),
        ),
      ],
    );
  }

  Widget _buildAnalyticsCard(
    String title,
    String value,
    String subtitle,
    IconData icon,
    Color color,
  ) {
    return Container(
      padding: const EdgeInsets.all(16),
      decoration: BoxDecoration(
        color: color.withOpacity(0.1),
        borderRadius: BorderRadius.circular(15),
        border: Border.all(color: color.withOpacity(0.3)),
      ),
      child: LayoutBuilder(
        builder: (context, constraints) {
          final isSmall = constraints.maxWidth < 150;

          return Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Icon(icon, color: color, size: isSmall ? 16 : 20),
                  Flexible(
                    child: Text(
                      value,
                      style: TextStyle(
                        fontSize: isSmall ? 14 : 18,
                        fontWeight: FontWeight.bold,
                        color: color,
                      ),
                      overflow: TextOverflow.ellipsis,
                    ),
                  ),
                ],
              ),
              const SizedBox(height: 8),
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    title,
                    style: TextStyle(
                      fontSize: isSmall ? 9 : 11,
                      fontWeight: FontWeight.w600,
                      color: Colors.white,
                    ),
                    overflow: TextOverflow.ellipsis,
                  ),
                  Text(
                    subtitle,
                    style: TextStyle(
                      fontSize: isSmall ? 7 : 9,
                      color: Colors.white.withOpacity(0.7),
                    ),
                    overflow: TextOverflow.ellipsis,
                  ),
                ],
              ),
            ],
          );
        },
      ),
    );
  }

  int _calculateActivePercentage() {
    final total = _userStats['totalUsers'] ?? 0;
    final active = _userStats['activeUsersToday'] ?? 0;
    if (total == 0) return 0;
    return ((active / total) * 100).round();
  }

  Widget _buildAnalytics() {
    return SingleChildScrollView(
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          const Text(
            'Analitik & Raporlar',
            style: TextStyle(
              fontSize: 22,
              fontWeight: FontWeight.bold,
              color: Colors.white,
            ),
          ),
          const SizedBox(height: 20),

          // Özet kartları - Responsive Grid
          LayoutBuilder(
            builder: (context, constraints) {
              final isTablet = constraints.maxWidth > 600;
              final crossAxisCount = isTablet ? 4 : 2;

              return GridView.count(
                shrinkWrap: true,
                physics: const NeverScrollableScrollPhysics(),
                crossAxisCount: crossAxisCount,
                crossAxisSpacing: 12,
                mainAxisSpacing: 12,
                childAspectRatio: isTablet ? 1.8 : 1.5,
                children: [
                  _buildAnalyticsCard(
                    'Toplam Aktivite',
                    '${_userStats['totalQuizzes'] ?? 0}',
                    'Quiz çözümü',
                    Icons.trending_up,
                    Colors.green,
                  ),
                  _buildAnalyticsCard(
                    AppLocalizations.of(context)!.weeklyGrowth,
                    '${_userStats['newUsersLastWeek'] ?? 0}',
                    AppLocalizations.of(context)!.newUser,
                    Icons.person_add,
                    Colors.blue,
                  ),
                  _buildAnalyticsCard(
                    'Aktif Oranı',
                    '${_calculateActivePercentage()}%',
                    AppLocalizations.of(context)!.dailyActive,
                    Icons.analytics,
                    Colors.orange,
                  ),
                  _buildAnalyticsCard(
                    'Soru Havuzu',
                    '${_quizStats['totalQuestions'] ?? 0}',
                    'Toplam soru',
                    Icons.quiz,
                    Colors.purple,
                  ),
                ],
              );
            },
          ),

          const SizedBox(height: 20),

          // Sistem performansı
          Container(
            width: double.infinity,
            padding: const EdgeInsets.all(20),
            decoration: BoxDecoration(
              color: Colors.white.withOpacity(0.1),
              borderRadius: BorderRadius.circular(20),
              border: Border.all(color: Colors.white.withOpacity(0.2)),
            ),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Row(
                  children: [
                    const Icon(Icons.analytics, color: Colors.white, size: 20),
                    const SizedBox(width: 8),
                    const Text(
                      'Sistem Performansı',
                      style: TextStyle(
                        fontSize: 18,
                        fontWeight: FontWeight.bold,
                        color: Colors.white,
                      ),
                    ),
                  ],
                ),
                const SizedBox(height: 16),
                const Text(
                  'Quiz sistemi stabil çalışıyor ve kullanıcı deneyimi optimum seviyede.',
                  style: TextStyle(color: Colors.white70, fontSize: 14),
                ),
                const SizedBox(height: 12),
                Row(
                  children: [
                    Icon(Icons.speed, color: Colors.green, size: 18),
                    const SizedBox(width: 8),
                    Text(
                      AppLocalizations.of(context)!.performanceExcellent,
                      style: TextStyle(
                        color: Colors.green,
                        fontSize: 13,
                        fontWeight: FontWeight.w500,
                      ),
                    ),
                  ],
                ),
                const SizedBox(height: 8),
                Row(
                  children: [
                    Icon(Icons.security, color: Colors.blue, size: 18),
                    const SizedBox(width: 8),
                    Text(
                      AppLocalizations.of(context)!.securitySecure,
                      style: TextStyle(
                        color: Colors.blue,
                        fontSize: 13,
                        fontWeight: FontWeight.w500,
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

  Future<bool> _showDeleteConfirmation() async {
    return await showDialog<bool>(
          context: context,
          builder:
              (context) => AlertDialog(
                title: const Text('Soruyu Sil'),
                content: const Text(
                  'Bu soruyu silmek istediğinizden emin misiniz?',
                ),
                actions: [
                  TextButton(
                    onPressed: () => Navigator.pop(context, false),
                    child: const Text('İptal'),
                  ),
                  TextButton(
                    onPressed: () => Navigator.pop(context, true),
                    style: TextButton.styleFrom(foregroundColor: Colors.red),
                    child: const Text('Sil'),
                  ),
                ],
              ),
        ) ??
        false;
  }

  Widget _buildNotificationSender() {
    return SingleChildScrollView(
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          const Text(
            'Manuel Bildirim Gönder',
            style: TextStyle(
              fontSize: 24,
              fontWeight: FontWeight.bold,
              color: Colors.white,
            ),
          ),
          const SizedBox(height: 8),
          Text(
            'Bütün kullanıcılara anlık push bildirimi gönderin.',
            style: TextStyle(
              color: Colors.white.withOpacity(0.7),
              fontSize: 14,
            ),
          ),
          const SizedBox(height: 30),
          _buildReadyMadeNotifications(),
          const SizedBox(height: 30),
          Container(
            padding: const EdgeInsets.all(24),
            decoration: BoxDecoration(
              gradient: LinearGradient(
                begin: Alignment.topLeft,
                end: Alignment.bottomRight,
                colors: [
                  Colors.white.withOpacity(0.12),
                  Colors.white.withOpacity(0.05),
                ],
              ),
              borderRadius: BorderRadius.circular(28),
              border: Border.all(
                color: Colors.white.withOpacity(0.2),
                width: 1.5,
              ),
              boxShadow: [
                BoxShadow(
                  color: Colors.black.withOpacity(0.2),
                  blurRadius: 20,
                  offset: const Offset(0, 10),
                ),
              ],
            ),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                _buildNotificationField(
                  label: 'Bildirim Başlığı',
                  hint: 'Örn: Yeni Sorular Eklendi! 📚',
                  controller: _notificationTitleController,
                ),
                const SizedBox(height: 20),
                _buildNotificationField(
                  label: 'Bildirim Mesajı',
                  hint: 'Örn: Bugünkü quizleri çözmeyi unutmayın...',
                  controller: _notificationBodyController,
                  maxLines: 4,
                ),
                const SizedBox(height: 20),
                _buildNotificationLanguageSelector(),
                const SizedBox(height: 30),
                SizedBox(
                  width: double.infinity,
                  height: 55,
                  child: ElevatedButton(
                    onPressed:
                        _isSendingNotification ? null : _sendManualNotification,
                    style: ElevatedButton.styleFrom(
                      backgroundColor: Colors.blue.shade600,
                      foregroundColor: Colors.white,
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(16),
                      ),
                      elevation: 8,
                      shadowColor: Colors.blue.withOpacity(0.5),
                    ),
                    child:
                        _isSendingNotification
                            ? const SizedBox(
                              height: 24,
                              width: 24,
                              child: CircularProgressIndicator(
                                color: Colors.white,
                                strokeWidth: 2,
                              ),
                            )
                            : const Row(
                              mainAxisAlignment: MainAxisAlignment.center,
                              children: [
                                Icon(Icons.send_rounded),
                                SizedBox(width: 12),
                                Text(
                                  'BİLDİRİMİ GÖNDER',
                                  style: TextStyle(
                                    fontSize: 16,
                                    fontWeight: FontWeight.bold,
                                    letterSpacing: 1.2,
                                  ),
                                ),
                              ],
                            ),
                  ),
                ),
              ],
            ),
          ),
          const SizedBox(height: 40),
          _buildNotificationHistory(),
        ],
      ),
    );
  }

  Widget _buildNotificationField({
    required String label,
    required String hint,
    required TextEditingController controller,
    int maxLines = 1,
  }) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(
          label,
          style: const TextStyle(
            color: Colors.white,
            fontSize: 16,
            fontWeight: FontWeight.w600,
          ),
        ),
        const SizedBox(height: 8),
        TextField(
          controller: controller,
          maxLines: maxLines,
          style: const TextStyle(color: Colors.white),
          decoration: InputDecoration(
            hintText: hint,
            hintStyle: TextStyle(color: Colors.white.withOpacity(0.3)),
            filled: true,
            fillColor: Colors.black.withOpacity(0.3),
            border: OutlineInputBorder(
              borderRadius: BorderRadius.circular(16),
              borderSide: BorderSide(color: Colors.white.withOpacity(0.1)),
            ),
            enabledBorder: OutlineInputBorder(
              borderRadius: BorderRadius.circular(16),
              borderSide: BorderSide(color: Colors.white.withOpacity(0.1)),
            ),
            focusedBorder: OutlineInputBorder(
              borderRadius: BorderRadius.circular(16),
              borderSide: const BorderSide(color: Colors.blueAccent, width: 2),
            ),
            contentPadding: const EdgeInsets.symmetric(
              horizontal: 20,
              vertical: 16,
            ),
          ),
        ),
      ],
    );
  }

  Widget _buildNotificationLanguageSelector() {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        const Text(
          'Hedef Dil',
          style: TextStyle(
            color: Colors.white,
            fontSize: 16,
            fontWeight: FontWeight.w600,
          ),
        ),
        const SizedBox(height: 12),
        SingleChildScrollView(
          scrollDirection: Axis.horizontal,
          child: Row(
            children: [
              _buildLanguageChip('all', 'Hepsi (Global)', Icons.public),
              const SizedBox(width: 8),
              _buildLanguageChip('tr', 'Türkçe', Icons.language),
              const SizedBox(width: 8),
              _buildLanguageChip('en', 'English', Icons.language),
            ],
          ),
        ),
      ],
    );
  }

  Widget _buildLanguageChip(String lang, String label, IconData icon) {
    bool isSelected = _notificationLanguage == lang;
    return GestureDetector(
      onTap: () => setState(() => _notificationLanguage = lang),
      child: Container(
        padding: const EdgeInsets.symmetric(horizontal: 16, vertical: 10),
        decoration: BoxDecoration(
          color: isSelected ? Colors.blueAccent : Colors.white.withOpacity(0.1),
          borderRadius: BorderRadius.circular(12),
          border: Border.all(
            color:
                isSelected ? Colors.blueAccent : Colors.white.withOpacity(0.15),
            width: 1.5,
          ),
        ),
        child: Row(
          children: [
            Icon(
              icon,
              size: 16,
              color: isSelected ? Colors.white : Colors.white60,
            ),
            const SizedBox(width: 8),
            Text(
              label,
              style: TextStyle(
                color: isSelected ? Colors.white : Colors.white60,
                fontSize: 13,
                fontWeight: isSelected ? FontWeight.bold : FontWeight.normal,
              ),
            ),
          ],
        ),
      ),
    );
  }

  Widget _buildNotificationHistory() {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        const Text(
          'Son Gönderilenler',
          style: TextStyle(
            fontSize: 18,
            fontWeight: FontWeight.bold,
            color: Colors.white,
          ),
        ),
        const SizedBox(height: 16),
        StreamBuilder<QuerySnapshot>(
          stream:
              FirebaseFirestore.instance
                  .collection('notifications')
                  .orderBy('createdAt', descending: true)
                  .limit(5)
                  .snapshots(),
          builder: (context, snapshot) {
            if (!snapshot.hasData) return const SizedBox();

            final docs = snapshot.data!.docs;
            if (docs.isEmpty) {
              return Text(
                'Henüz bildirim gönderilmemiş.',
                style: TextStyle(color: Colors.white.withOpacity(0.5)),
              );
            }

            return ListView.separated(
              shrinkWrap: true,
              physics: const NeverScrollableScrollPhysics(),
              itemCount: docs.length,
              separatorBuilder: (context, index) => const SizedBox(height: 12),
              itemBuilder: (context, index) {
                final data = docs[index].data() as Map<String, dynamic>;
                final status = data['status'] ?? 'pending';

                return Container(
                  padding: const EdgeInsets.all(16),
                  decoration: BoxDecoration(
                    color: Colors.white.withOpacity(0.05),
                    borderRadius: BorderRadius.circular(16),
                  ),
                  child: Row(
                    children: [
                      Container(
                        padding: const EdgeInsets.all(10),
                        decoration: BoxDecoration(
                          color: _getStatusColor(status).withOpacity(0.2),
                          shape: BoxShape.circle,
                        ),
                        child: Icon(
                          _getStatusIcon(status),
                          color: _getStatusColor(status),
                          size: 20,
                        ),
                      ),
                      const SizedBox(width: 16),
                      Expanded(
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Row(
                              children: [
                                Text(
                                  data['title'] ?? '',
                                  style: const TextStyle(
                                    color: Colors.white,
                                    fontWeight: FontWeight.bold,
                                  ),
                                ),
                                const SizedBox(width: 8),
                                Container(
                                  padding: const EdgeInsets.symmetric(
                                    horizontal: 6,
                                    vertical: 2,
                                  ),
                                  decoration: BoxDecoration(
                                    color: Colors.white.withOpacity(0.1),
                                    borderRadius: BorderRadius.circular(4),
                                  ),
                                  child: Text(
                                    (data['language'] ?? 'all')
                                        .toString()
                                        .toUpperCase(),
                                    style: const TextStyle(
                                      color: Colors.white54,
                                      fontSize: 8,
                                    ),
                                  ),
                                ),
                              ],
                            ),
                            Text(
                              data['body'] ?? '',
                              style: TextStyle(
                                color: Colors.white.withOpacity(0.6),
                                fontSize: 12,
                              ),
                              maxLines: 1,
                              overflow: TextOverflow.ellipsis,
                            ),
                          ],
                        ),
                      ),
                      Text(
                        status.toUpperCase(),
                        style: TextStyle(
                          color: _getStatusColor(status),
                          fontSize: 10,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                    ],
                  ),
                );
              },
            );
          },
        ),
      ],
    );
  }

  Color _getStatusColor(String status) {
    switch (status) {
      case 'sent':
        return Colors.greenAccent;
      case 'failed':
        return Colors.redAccent;
      default:
        return Colors.orangeAccent;
    }
  }

  IconData _getStatusIcon(String status) {
    switch (status) {
      case 'sent':
        return Icons.check_circle_outline;
      case 'failed':
        return Icons.error_outline;
      default:
        return Icons.schedule;
    }
  }

  Future<void> _sendManualNotification() async {
    final title = _notificationTitleController.text.trim();
    final body = _notificationBodyController.text.trim();

    if (title.isEmpty || body.isEmpty) {
      ScaffoldMessenger.of(context).showSnackBar(
        const SnackBar(
          content: Text('Lütfen başlık ve mesaj alanlarını doldurun.'),
          backgroundColor: Colors.orange,
        ),
      );
      return;
    }

    setState(() => _isSendingNotification = true);

    try {
      await FirebaseFirestore.instance.collection('notifications').add({
        'title': title,
        'body': body,
        'language': _notificationLanguage,
        'createdAt': FieldValue.serverTimestamp(),
        'status': 'pending',
      });

      if (mounted) {
        _notificationTitleController.clear();
        _notificationBodyController.clear();
        ScaffoldMessenger.of(context).showSnackBar(
          const SnackBar(
            content: Text('Bildirim sıraya alındı! Gönderiliyor...'),
            backgroundColor: Colors.green,
          ),
        );
      }
    } catch (e) {
      if (mounted) {
        ScaffoldMessenger.of(context).showSnackBar(
          SnackBar(content: Text('Hata: $e'), backgroundColor: Colors.red),
        );
      }
    } finally {
      if (mounted) {
        setState(() => _isSendingNotification = false);
      }
    }
  }

  Widget _buildReadyMadeNotifications() {
    final Map<String, List<Map<String, dynamic>>> templates = {
      'tr': [
        {
          'title': 'Yeni Sorular Eklendi! 📚',
          'body':
              'Uygulamaya yeni anestezi soruları yüklendi. Hemen çözmeye başla!',
          'icon': Icons.library_add_rounded,
          'color': Colors.blueAccent,
        },
        {
          'title': 'Spot Bilgileri Keşfet! 💡',
          'body':
              'Önemli klinik notlar ve kısa hatırlatıcılar Spot Bilgi bölümünde seni bekliyor.',
          'icon': Icons.lightbulb_rounded,
          'color': Colors.orangeAccent,
        },
        {
          'title': 'Hatalarını Gözden Geçir! ❌',
          'body':
              'Yanlış yaptığın soruları tekrar çözerek eksiklerini tamamlamaya ne dersin?',
          'icon': Icons.assignment_late_rounded,
          'color': Colors.redAccent,
        },
        {
          'title': 'Günün Hedefi: 1 Quiz! 🎯',
          'body':
              'Bugün kendine bir konu seç ve sadece bir quiz çözerek bilgilerini kontrol et.',
          'icon': Icons.track_changes_rounded,
          'color': Colors.greenAccent,
        },
        {
          'title': 'Premium ile Tam Erişim! 💎',
          'body':
              'Bütün soru setlerine ve özel spot notlara sınırsız erişim için Premium\'u incele.',
          'icon': Icons.workspace_premium_rounded,
          'color': Colors.amber,
        },
        {
          'title': 'Sıralamada Yüksel! 🏆',
          'body':
              'Daha fazla soru çözerek liderlik tablosu sıralamasında üstlere yerleş!',
          'icon': Icons.emoji_events_rounded,
          'color': Colors.yellowAccent,
        },
        {
          'title': 'Bilginle Fark Yarat! 🧠',
          'body':
              'Farklı kategorilerdeki yüzlerce özel anestezi sorusuyla kendini geliştir.',
          'icon': Icons.psychology_rounded,
          'color': Colors.tealAccent,
        },
        {
          'title': 'Yeni Bir Konu Öğren! 📁',
          'body':
              'Daha önce bakmadığın bir kategori seç ve anestezi bilginin sınırlarını genişlet!',
          'icon': Icons.folder_special_rounded,
          'color': Colors.pinkAccent,
        },
        {
          'title': 'Kısa Bir Mola, Bir Quiz! ⏱️',
          'body':
              'Yoğun çalışma programında kısa bir mola verip bilgilerini test etmeye ne dersin?',
          'icon': Icons.timer_rounded,
          'color': Colors.cyanAccent,
        },
        {
          'title': 'Liderlik Tablosu Güncellendi! 🔥',
          'body':
              'Sıralamadaki yerini kontrol et ve zirveye giden yolda bir adım daha at!',
          'icon': Icons.local_fire_department_rounded,
          'color': Colors.deepOrangeAccent,
        },
        {
          'title': 'Günün Sorusu Geldi! 🧐',
          'body':
              'Bakalım bugün hazırlanan özel soruyu doğru cevaplayabilecek misin?',
          'icon': Icons.psychology_alt_rounded,
          'color': Colors.purpleAccent,
        },
        {
          'title': 'Gelişimine Katkıda Bulun! 💬',
          'body':
              'Uygulamayı senin için iyileştirmemize yardımcı olmak üzere bize önerilerini yaz!',
          'icon': Icons.forum_rounded,
          'color': Colors.white,
        },
      ],
      'en': [
        {
          'title': 'New Questions are Live! 📚',
          'body':
              'New anesthesia questions have been uploaded. Start solving now!',
          'icon': Icons.library_add_rounded,
          'color': Colors.blueAccent,
        },
        {
          'title': 'Discover Spot Info! 💡',
          'body':
              'Critical clinical notes and reminders await you in the Spot Info section.',
          'icon': Icons.lightbulb_rounded,
          'color': Colors.orangeAccent,
        },
        {
          'title': 'Review Your Mistakes! ❌',
          'body':
              'Re-solve the questions you got wrong to brush up on your knowledge.',
          'icon': Icons.assignment_late_rounded,
          'color': Colors.redAccent,
        },
        {
          'title': 'Daily Goal: 1 Quiz! 🎯',
          'body':
              'Pick a topic today and check your knowledge by solving just one quiz.',
          'icon': Icons.track_changes_rounded,
          'color': Colors.greenAccent,
        },
        {
          'title': 'Full Access with Premium! 💎',
          'body':
              'Check out Premium for unlimited access to all question sets and spot notes.',
          'icon': Icons.workspace_premium_rounded,
          'color': Colors.amber,
        },
        {
          'title': 'Rise in the Rankings! 🏆',
          'body':
              'Solve more questions to secure your place on the leaderboard!',
          'icon': Icons.emoji_events_rounded,
          'color': Colors.yellowAccent,
        },
        {
          'title': 'Difference With Knowledge! 🧠',
          'body':
              'Improve yourself with hundreds of specialized anesthesia questions!',
          'icon': Icons.psychology_rounded,
          'color': Colors.tealAccent,
        },
        {
          'title': 'Learn a New Topic! 📁',
          'body':
              'Select a category you haven\'t checked before and expand your knowledge!',
          'icon': Icons.folder_special_rounded,
          'color': Colors.pinkAccent,
        },
        {
          'title': 'Short Break, One Quiz! ⏱️',
          'body': 'How about a quick quiz break during your busy schedule?',
          'icon': Icons.timer_rounded,
          'color': Colors.cyanAccent,
        },
        {
          'title': 'Leaderboard Updated! 🔥',
          'body':
              'Check your spot in the rankings and take another step toward the top!',
          'icon': Icons.local_fire_department_rounded,
          'color': Colors.deepOrangeAccent,
        },
        {
          'title': 'Question of the Day! 🧐',
          'body': 'Today\'s question is here! Can you find the correct answer?',
          'icon': Icons.psychology_alt_rounded,
          'color': Colors.purpleAccent,
        },
        {
          'title': 'Contribute to Growth! 💬',
          'body': 'Help us improve the app by sending us your suggestions!',
          'icon': Icons.forum_rounded,
          'color': Colors.white,
        },
      ],
    };

    // Seçili bildirim diline göre şablon listesini belirle (all durumunda Türkçe göster)
    final displayLanguage = _notificationLanguage == 'en' ? 'en' : 'tr';
    final currentTemplates = templates[displayLanguage]!;

    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Text(
              'Hazır Bildirim Şablonları (${displayLanguage.toUpperCase()})',
              style: TextStyle(
                color: Colors.white.withOpacity(0.9),
                fontSize: 16,
                fontWeight: FontWeight.bold,
              ),
            ),
            Text(
              '${currentTemplates.length} Hazır Mesaj',
              style: TextStyle(
                color: Colors.white.withOpacity(0.5),
                fontSize: 12,
              ),
            ),
          ],
        ),
        const SizedBox(height: 16),
        SizedBox(
          height: 120,
          child: ListView.builder(
            scrollDirection: Axis.horizontal,
            itemCount: currentTemplates.length,
            itemBuilder: (context, index) {
              final template = currentTemplates[index];
              final Color color = template['color'] as Color;

              return InkWell(
                onTap: () {
                  setState(() {
                    _notificationTitleController.text =
                        template['title'] as String;
                    _notificationBodyController.text =
                        template['body'] as String;
                  });
                },
                borderRadius: BorderRadius.circular(24),
                child: Container(
                  width: 170,
                  margin: const EdgeInsets.only(right: 16),
                  padding: const EdgeInsets.all(16),
                  decoration: BoxDecoration(
                    gradient: LinearGradient(
                      begin: Alignment.topLeft,
                      end: Alignment.bottomRight,
                      colors: [
                        color.withOpacity(0.15),
                        color.withOpacity(0.05),
                      ],
                    ),
                    borderRadius: BorderRadius.circular(24),
                    border: Border.all(
                      color: color.withOpacity(0.3),
                      width: 1.5,
                    ),
                    boxShadow: [
                      BoxShadow(
                        color: color.withOpacity(0.1),
                        blurRadius: 8,
                        offset: const Offset(0, 4),
                      ),
                    ],
                  ),
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Container(
                        padding: const EdgeInsets.all(8),
                        decoration: BoxDecoration(
                          color: color.withOpacity(0.2),
                          shape: BoxShape.circle,
                        ),
                        child: Icon(
                          template['icon'] as IconData,
                          color: color,
                          size: 26,
                        ),
                      ),
                      const SizedBox(height: 12),
                      Text(
                        template['title'] as String,
                        style: TextStyle(
                          color: Colors.white.withOpacity(0.9),
                          fontSize: 12,
                          fontWeight: FontWeight.w600,
                        ),
                        textAlign: TextAlign.center,
                        maxLines: 2,
                        overflow: TextOverflow.ellipsis,
                      ),
                    ],
                  ),
                ),
              );
            },
          ),
        ),
      ],
    );
  }

  Widget _buildSpotInfoManagement() {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            const Text(
              'Spot Bilgi Yönetimi',
              style: TextStyle(
                fontSize: 22,
                fontWeight: FontWeight.bold,
                color: Colors.white,
              ),
            ),
            IconButton(
              icon: const Icon(Icons.refresh, color: Colors.white),
              onPressed: () {
                _loadSpotCategories();
              },
            ),
          ],
        ),
        const SizedBox(height: 16),
        Row(
          children: [
            Expanded(
              child: ElevatedButton.icon(
                onPressed: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(
                      builder: (context) => const AddSpotInfoScreen(),
                    ),
                  ).then((val) {
                    if (val == true) _loadSpotCategories();
                  });
                },
                icon: const Icon(Icons.add),
                label: const Text('Yeni Ekle', style: TextStyle(fontSize: 12)),
                style: ElevatedButton.styleFrom(
                  backgroundColor: Colors.blue.shade600,
                  foregroundColor: Colors.white,
                  padding: const EdgeInsets.symmetric(vertical: 12),
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(15),
                  ),
                ),
              ),
            ),
            const SizedBox(width: 8),
            Expanded(
              child: ElevatedButton.icon(
                onPressed: _isMigrating ? null : _runSpotMigration,
                icon: _isMigrating
                    ? const SizedBox(
                      width: 16,
                      height: 16,
                      child: CircularProgressIndicator(
                        strokeWidth: 2,
                        color: Colors.black,
                      ),
                    )
                    : const Icon(Icons.cloud_upload_outlined),
                label: Text(
                  _isMigrating ? 'AKTARIYOR...' : 'VERİLERİ AKTAR',
                  style: const TextStyle(fontSize: 12),
                ),
                style: ElevatedButton.styleFrom(
                  backgroundColor: Colors.amber,
                  foregroundColor: Colors.black,
                  padding: const EdgeInsets.symmetric(vertical: 12),
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(15),
                  ),
                ),
              ),
            ),
          ],
        ),
        const SizedBox(height: 20),
        _buildSpotSearchField(),
        const SizedBox(height: 16),
        _buildSpotFilters(),
        const SizedBox(height: 16),
        Expanded(child: _buildSpotInfoList()),
      ],
    );
  }

  Widget _buildSpotSearchField() {
    return Container(
      padding: const EdgeInsets.symmetric(horizontal: 16),
      decoration: BoxDecoration(
        color: Colors.white.withOpacity(0.1),
        borderRadius: BorderRadius.circular(15),
        border: Border.all(color: Colors.white.withOpacity(0.2)),
      ),
      child: TextField(
        controller: _spotSearchController,
        style: const TextStyle(color: Colors.white),
        onChanged: (val) {
          setState(() => _spotSearchQuery = val);
        },
        decoration: InputDecoration(
          hintText: 'Spot bilgilerde ara...',
          hintStyle: TextStyle(color: Colors.white.withOpacity(0.5)),
          border: InputBorder.none,
          icon: const Icon(Icons.search, color: Colors.white70),
          suffixIcon: _spotSearchQuery.isNotEmpty
              ? IconButton(
                  icon: const Icon(Icons.clear, color: Colors.white70),
                  onPressed: () {
                    _spotSearchController.clear();
                    setState(() => _spotSearchQuery = '');
                  },
                )
              : null,
        ),
      ),
    );
  }

  Widget _buildSpotFilters() {
    return Row(
      children: [
        // Dil Seçimi
        Expanded(
          flex: 1,
          child: Container(
            padding: const EdgeInsets.symmetric(horizontal: 12),
            decoration: BoxDecoration(
              color: Colors.white.withOpacity(0.1),
              borderRadius: BorderRadius.circular(12),
            ),
            child: DropdownButton<String>(
              value: _selectedSpotLanguage,
              dropdownColor: Colors.grey.shade900,
              isExpanded: true,
              underline: const SizedBox(),
              items: const [
                DropdownMenuItem(
                  value: 'tr',
                  child: Text('TR', style: TextStyle(color: Colors.white)),
                ),
                DropdownMenuItem(
                  value: 'en',
                  child: Text('EN', style: TextStyle(color: Colors.white)),
                ),
              ],
              onChanged: (val) {
                setState(() {
                  _selectedSpotLanguage = val!;
                  _loadSpotCategories();
                });
              },
            ),
          ),
        ),
        const SizedBox(width: 12),
        // Kategori Seçimi
        Expanded(
          flex: 2,
          child: Container(
            padding: const EdgeInsets.symmetric(horizontal: 12),
            decoration: BoxDecoration(
              color: Colors.white.withOpacity(0.1),
              borderRadius: BorderRadius.circular(12),
            ),
            child: DropdownButton<String>(
              value: _selectedSpotCategory,
              dropdownColor: Colors.grey.shade900,
              isExpanded: true,
              underline: const SizedBox(),
              items: _spotCategories.map((cat) {
                return DropdownMenuItem(
                  value: cat,
                  child: Text(
                    cat,
                    style: const TextStyle(
                      color: Colors.white,
                      fontSize: 13,
                    ),
                    overflow: TextOverflow.ellipsis,
                  ),
                );
              }).toList(),
              onChanged: (val) {
                setState(() => _selectedSpotCategory = val!);
              },
            ),
          ),
        ),
      ],
    );
  }

  Future<void> _loadSpotCategories() async {
    final cats = await _spotService.getAllCategoryNames(_selectedSpotLanguage);
    if (mounted) {
      setState(() {
        _spotCategories = ['Hepsi', ...cats];
        if (!_spotCategories.contains(_selectedSpotCategory)) {
          _selectedSpotCategory = 'Hepsi';
        }
      });
    }
  }

  Stream<List<SpotItem>> _getSpotStream() {
    if (_selectedSpotCategory == 'Hepsi') {
      return _spotService.getSpotItemsByLanguage(_selectedSpotLanguage);
    } else {
      return _spotService.getSpotItemsByCategory(
        _selectedSpotCategory,
        _selectedSpotLanguage,
      );
    }
  }

  Widget _buildSpotInfoList() {
    return Column(
      children: [
        Expanded(
          child: StreamBuilder<List<SpotItem>>(
            stream: _getSpotStream(),
            builder: (context, snapshot) {
              if (snapshot.hasError) {
                return Center(
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      const Icon(Icons.error_outline, color: Colors.red, size: 48),
                      const SizedBox(height: 16),
                      Text(
                        'Veri yüklenirken hata oluştu:\n${snapshot.error}',
                        textAlign: TextAlign.center,
                        style: const TextStyle(color: Colors.white70),
                      ),
                    ],
                  ),
                );
              }

              if (snapshot.connectionState == ConnectionState.waiting) {
                return const Center(child: CircularProgressIndicator());
              }

              var items = snapshot.data ?? [];
              
              if (_spotSearchQuery.isNotEmpty) {
                final query = _spotSearchQuery.toLowerCase();
                items = items.where((item) {
                  return item.title.toLowerCase().contains(query) ||
                      item.description.toLowerCase().contains(query) ||
                      (item.unitName?.toLowerCase().contains(query) ?? false) ||
                      (item.subtitle?.toLowerCase().contains(query) ?? false) ||
                      (item.additionalInfo?.toLowerCase().contains(query) ?? false);
                }).toList();
              }

              if (items.isEmpty) {
                return Center(
                  child: Text(
                    _spotSearchQuery.isEmpty
                        ? 'Henüz bu dilde/kategoride spot bilgi yok.'
                        : 'Arama sonucu bulunamadı.',
                    style: TextStyle(color: Colors.white.withOpacity(0.5)),
                  ),
                );
              }

              return ListView.separated(
                itemCount: items.length,
                separatorBuilder: (context, index) => const SizedBox(height: 10),
                itemBuilder: (context, index) {
                  final item = items[index];
                  return Container(
                    padding: const EdgeInsets.all(12),
                    decoration: BoxDecoration(
                      color: Colors.white.withOpacity(0.05),
                      borderRadius: BorderRadius.circular(12),
                    ),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Row(
                          children: [
                            Container(
                              padding: const EdgeInsets.symmetric(
                                horizontal: 8,
                                vertical: 2,
                              ),
                              decoration: BoxDecoration(
                                color: Colors.blueAccent.withOpacity(0.2),
                                borderRadius: BorderRadius.circular(4),
                              ),
                              child: Text(
                                item.categoryName,
                                style: const TextStyle(
                                  color: Colors.blueAccent,
                                  fontSize: 10,
                                ),
                              ),
                            ),
                            if (item.unitName != null) ...[
                              const SizedBox(width: 8),
                              Container(
                                padding: const EdgeInsets.symmetric(
                                  horizontal: 8,
                                  vertical: 2,
                                ),
                                decoration: BoxDecoration(
                                  color: Colors.purpleAccent.withOpacity(0.15),
                                  borderRadius: BorderRadius.circular(4),
                                ),
                                child: Text(
                                  item.unitName!,
                                  style: const TextStyle(
                                    color: Colors.purpleAccent,
                                    fontSize: 10,
                                    fontWeight: FontWeight.bold,
                                  ),
                                ),
                              ),
                            ],
                            const Spacer(),
                            IconButton(
                              icon: const Icon(
                                Icons.edit,
                                size: 18,
                                color: Colors.white60,
                              ),
                              onPressed: () {
                                Navigator.push(
                                  context,
                                  MaterialPageRoute(
                                    builder: (context) => AddSpotInfoScreen(editingItem: item),
                                  ),
                                ).then((val) {
                                  if (val == true) _loadSpotCategories();
                                });
                              },
                            ),
                            IconButton(
                              icon: const Icon(
                                Icons.delete,
                                size: 18,
                                color: Colors.redAccent,
                              ),
                              onPressed: () => _confirmDeleteSpot(item.id),
                            ),
                          ],
                        ),
                        Text(
                          item.title,
                          style: const TextStyle(
                            color: Colors.white,
                            fontWeight: FontWeight.bold,
                            fontSize: 14,
                          ),
                        ),
                        const SizedBox(height: 4),
                        if (item.subtitle != null) ...[
                          Text(
                            item.subtitle!,
                            style: const TextStyle(
                              color: Colors.blueAccent,
                              fontSize: 11,
                              fontStyle: FontStyle.italic,
                            ),
                          ),
                          const SizedBox(height: 4),
                        ],
                        Text(
                          item.description,
                          style: TextStyle(
                            color: Colors.white.withOpacity(0.7),
                            fontSize: 12,
                          ),
                          maxLines: 3,
                          overflow: TextOverflow.ellipsis,
                        ),
                        if (item.additionalInfo != null) ...[
                          const SizedBox(height: 8),
                          Container(
                            padding: const EdgeInsets.all(8),
                            decoration: BoxDecoration(
                              color: Colors.white.withOpacity(0.03),
                              borderRadius: BorderRadius.circular(8),
                            ),
                            child: Text(
                              '💡 ${item.additionalInfo!}',
                              style: TextStyle(
                                color: Colors.orangeAccent.withOpacity(0.7),
                                fontSize: 11,
                              ),
                            ),
                          ),
                        ],
                      ],
                    ),
                  );
                },
              );
            },
          ),
        ),
      ],
    );
  }


  Future<void> _runSpotMigration() async {
    setState(() => _isMigrating = true);
    try {
      final result = await _spotMigrationService.migrateAllSpotInfo(context);
      if (result['success'] == true) {
        if (mounted) {
          ScaffoldMessenger.of(context).showSnackBar(
            SnackBar(
              content: Text(
                '✅ ${result['totalMigrated']} adet spot bilgi başarıyla aktarıldı!',
              ),
              backgroundColor: Colors.green,
            ),
          );
          _loadInitialData(); // Refresh everything
        }
      } else {
        throw result['error'] ?? 'Bilinmeyen hata';
      }
    } catch (e) {
      if (mounted) {
        ScaffoldMessenger.of(context).showSnackBar(
          SnackBar(
            content: Text('❌ Aktarım sırasında hata oluştu: $e'),
            backgroundColor: Colors.red,
          ),
        );
      }
    } finally {
      if (mounted) setState(() => _isMigrating = false);
    }
  }

  Future<void> _confirmDeleteSpot(String id) async {
    final confirmed = await showDialog<bool>(
      context: context,
      builder: (context) => AlertDialog(
        backgroundColor: Colors.grey.shade900,
        title: const Text(
          'Spot Bilgiyi Sil',
          style: TextStyle(color: Colors.white),
        ),
        content: const Text(
          'Bu bilgiyi kalıcı olarak silmek istediğinize emin misiniz?',
          style: TextStyle(color: Colors.white70),
        ),
        actions: [
          TextButton(
            onPressed: () => Navigator.pop(context, false),
            child: const Text('İptal'),
          ),
          TextButton(
            onPressed: () => Navigator.pop(context, true),
            child: const Text('SİL', style: TextStyle(color: Colors.red)),
          ),
        ],
      ),
    );

    if (confirmed == true) {
      await _spotService.deleteSpotItem(id);
      if (mounted) {
        ScaffoldMessenger.of(
          context,
        ).showSnackBar(const SnackBar(content: Text('✅ Bilgi silindi')));
        _loadSpotCategories();
      }
    }
  }
}

