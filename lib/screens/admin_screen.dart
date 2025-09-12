import 'package:flutter/material.dart';
import 'dart:math' as math;
import 'package:cloud_firestore/cloud_firestore.dart';
import '../l10n/app_localizations.dart';
import '../services/auth_service.dart';
import '../services/admin_service.dart';
import '../services/organized_data_service.dart';
import '../services/multilingual_question_service.dart';
import 'add_question_screen.dart';
import 'edit_question_screen.dart';

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

  @override
  void initState() {
    super.initState();
    _tabController = TabController(length: 3, vsync: this);
    _loadInitialData();
  }

  @override
  void dispose() {
    _tabController.dispose();
    super.dispose();
  }

  Future<void> _loadInitialData() async {
    setState(() => _isLoading = true);

    await Future.wait([
      _loadUserStatistics(),
      _loadQuizStatistics(),
      _loadLanguageStatistics(),
      _loadCategories(),
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
      // Seçilen dile göre kategorileri yükle
      // Language parameter mapping: 'turkish' -> 'turkish', 'english' -> 'english'
      final languageParam = _selectedLanguage == 'turkish' ? 'turkish' : 'english';
      final organizedCategories =
          await _organizedDataService.getOrganizedCategoriesByLanguage(languageParam);

      // Eğer organize kategoriler varsa onları kullan
      if (organizedCategories.isNotEmpty) {
        setState(() {
          _organizedCategories = organizedCategories;
          _categories =
              organizedCategories
                  .map((cat) => cat['displayName'] as String)
                  .toList();
          // Her zaman ilk kategoriyi seç ve soruları yükle
          if (_categories.isNotEmpty) {
            _selectedCategory = _categories.first;
            _selectedCollectionName =
                organizedCategories.first['collectionName'] as String;
          }
        });
        // Kategoriler yüklendikten sonra soruları yükle
        if (_categories.isNotEmpty) {
            _loadQuestions();
        }
      } else {
        // Try alternative method to get all categories from Firestore
        final allCategories = await _getAllCategoriesFromFirestore();
        
        if (allCategories.isNotEmpty) {
          // Filter by language
          final filteredCategories = allCategories.where((cat) {
            final language = cat['language'] as String? ?? 'turkish';
            return language == languageParam;
          }).toList();
          
          setState(() {
            _organizedCategories = filteredCategories;
            _categories = filteredCategories.map((cat) => cat['displayName'] as String).toList();
            // Her zaman ilk kategoriyi seç
            if (_categories.isNotEmpty) {
              _selectedCategory = _categories.first;
              _selectedCollectionName = filteredCategories.first['collectionName'] as String;
            }
          });
          
          // Kategoriler yüklendikten sonra soruları yükle
          if (_categories.isNotEmpty) {
            _loadQuestions();
          }
      } else {
          // Final fallback: eski yöntem
        final categories = await _adminService.getCategories();
          
        setState(() {
          _categories = categories;
            // Her zaman ilk kategoriyi seç
            if (categories.isNotEmpty) {
            _selectedCategory = categories.first;
          }
        });
          // Kategoriler yüklendikten sonra soruları yükle
          if (categories.isNotEmpty) {
            _loadQuestions();
          }
        }
      }
    } catch (e) {
      // Error handling
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
      final snapshot = await FirebaseFirestore.instance
          .collection('quizCategories')
          .orderBy('displayName')
          .get();

      final categories = snapshot.docs.map((doc) {
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
    return Container(
      padding: const EdgeInsets.all(20),
      child: Row(
        children: [
          Container(
            padding: const EdgeInsets.all(12),
            decoration: BoxDecoration(
              color: Colors.white.withOpacity(0.15),
              borderRadius: BorderRadius.circular(15),
            ),
            child: const Icon(
              Icons.admin_panel_settings,
              color: Colors.white,
              size: 24,
            ),
          ),
          const SizedBox(width: 16),
          const Expanded(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  'Admin Panel',
                  style: TextStyle(
                    fontSize: 24,
                    fontWeight: FontWeight.bold,
                    color: Colors.white,
                  ),
                ),
                Text(
                  'Sistem Yönetimi',
                  style: TextStyle(fontSize: 14, color: Colors.white70),
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
                      title: Text(AppLocalizations.of(context)!.adminLogout),
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
                        content: Text('${AppLocalizations.of(context)!.logoutError}: $e'),
                        backgroundColor: Colors.red,
                      ),
                    );
                  }
                }
              }
            },
            icon: const Icon(Icons.logout, color: Colors.white),
          ),
        ],
      ),
    );
  }

  Widget _buildNavigation() {
    final navItems = [
      {'icon': Icons.dashboard_outlined, 'label': 'Dashboard'},
      {'icon': Icons.quiz_outlined, 'label': 'Questions'},
      {'icon': Icons.analytics_outlined, 'label': AppLocalizations.of(context)!.analytics},
    ];

    return Container(
      margin: const EdgeInsets.symmetric(horizontal: 20),
      padding: const EdgeInsets.all(8),
      decoration: BoxDecoration(
        color: Colors.white.withOpacity(0.1),
        borderRadius: BorderRadius.circular(20),
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
                  onTap: () => setState(() => _selectedNavIndex = index),
                  child: Container(
                    padding: const EdgeInsets.symmetric(vertical: 12),
                    decoration: BoxDecoration(
                      color:
                          isSelected
                              ? Colors.white.withOpacity(0.2)
                              : Colors.transparent,
                      borderRadius: BorderRadius.circular(15),
                    ),
                    child: Column(
                      mainAxisSize: MainAxisSize.min,
                      children: [
                        Icon(
                          item['icon'] as IconData,
                          color: isSelected ? Colors.white : Colors.white60,
                          size: 20,
                        ),
                        const SizedBox(height: 4),
                        Text(
                          item['label'] as String,
                          style: TextStyle(
                            color: isSelected ? Colors.white : Colors.white60,
                            fontSize: 10,
                            fontWeight:
                                isSelected
                                    ? FontWeight.w600
                                    : FontWeight.normal,
                          ),
                        ),
                      ],
                    ),
                  ),
                ),
              );
            }).toList(),
      ),
    );
  }

  Widget _buildContent() {
    return Padding(
      padding: const EdgeInsets.all(20),
      child:
          (() {
            switch (_selectedNavIndex) {
              case 0:
                return _buildDashboard();
              case 1:
                return _buildQuestionsManagement();
              case 2:
                return _buildAnalytics();
              default:
                return _buildDashboard();
            }
          })(),
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
          _buildLanguageStatsGrid(),
          const SizedBox(height: 30),
          _buildQuizCategoriesGrid(),
          const SizedBox(height: 30),
          _buildRecentActivity(),
        ],
      ),
    );
  }

  Widget _buildStatsGrid() {
    final stats = [
      {
        'title': AppLocalizations.of(context)!.totalUsers,
        'value': '${_userStats['totalUsers'] ?? 0}',
        'icon': Icons.people,
        'color': Colors.blue,
        'subtitle': '${_userStats['newUsersLastWeek'] ?? 0} ${AppLocalizations.of(context)!.newUsers7Days}',
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
        'subtitle': '${_userStats['recentQuizzes'] ?? 0} ${AppLocalizations.of(context)!.last7DaysQuizzes}',
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
          childAspectRatio = screenWidth > 600 ? 2.2 : 2.0; // Çok daha küçük kartlar
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

  Widget _buildResponsiveStatCard(Map<String, dynamic> stat, double screenWidth) {
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
                  padding: const EdgeInsets.symmetric(horizontal: 6, vertical: 2),
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
                final questionCount = isTurkish 
                    ? _languageStats['turkishQuestions'] ?? 0
                    : _languageStats['englishQuestions'] ?? 0;
                final categoryCount = isTurkish
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
                  screenWidth
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
    double screenWidth
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
                        fontSize: isSmallScreen ? 16 : (isLargeScreen ? 20 : 18),
                      ),
                    ),
                    SizedBox(width: isSmallScreen ? 4 : 6),
                    Text(
                      language,
                      style: TextStyle(
                        color: color,
                        fontSize: isSmallScreen ? 12 : (isLargeScreen ? 14 : 13),
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
                '$questionCount',
                style: TextStyle(
                  fontSize: isSmallScreen ? 18 : (isLargeScreen ? 24 : 20),
                  fontWeight: FontWeight.bold,
                  color: Colors.white,
                ),
              ),
              SizedBox(height: isSmallScreen ? 1 : 2),
              Text(
                language,
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
    final turkishCategories = _languageStats['turkishQuestionsByCategory'] as Map<String, int>? ?? {};
    final englishCategories = _languageStats['englishQuestionsByCategory'] as Map<String, int>? ?? {};
    
    // Multilingual sırasına göre kategorileri sırala
    final turkishOrderedCategories = _getOrderedTurkishCategories(turkishCategories);
    final englishOrderedCategories = _getOrderedEnglishCategories(englishCategories);
    
    final maxLength = math.max(turkishOrderedCategories.length, englishOrderedCategories.length);

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
            final turkishCategory = index < turkishOrderedCategories.length 
                ? turkishOrderedCategories[index] 
                : null;
            final englishCategory = index < englishOrderedCategories.length 
                ? englishOrderedCategories[index] 
                : null;
            
            return Padding(
              padding: const EdgeInsets.only(bottom: 12),
              child: Row(
                children: [
                  // Sol taraf - Türkçe
                  Expanded(
                    child: turkishCategory != null
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
                    child: englishCategory != null
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
  List<Map<String, dynamic>> _getOrderedTurkishCategories(Map<String, int> categories) {
    // MultilingualQuestionService'ten Türkçe kategorileri al
    final turkishCategories = MultilingualQuestionService.getQuizCategories('turkish');
    
    final orderedCategories = <Map<String, dynamic>>[];
    for (final category in turkishCategories) {
      final name = category['title'] as String;
      if (categories.containsKey(name)) {
        orderedCategories.add({
          'name': name,
          'count': categories[name]!,
        });
      }
    }
    return orderedCategories;
  }

  // İngilizce kategorileri multilingual sırasına göre sırala
  List<Map<String, dynamic>> _getOrderedEnglishCategories(Map<String, int> categories) {
    // MultilingualQuestionService'ten İngilizce kategorileri al (63 kategori)
    final englishCategories = MultilingualQuestionService.getQuizCategories('en');
    
    final orderedCategories = <Map<String, dynamic>>[];
    
    // Sadece MultilingualQuestionService'teki kategorileri kullan (63 kategori)
    for (final category in englishCategories) {
      final name = category['title'] as String;
      String? firebaseKey;
      
      // Firebase'deki tüm olası formatları kontrol et - daha kapsamlı eşleştirme
      final possibleKeys = [
        '$name (English)',  // En yaygın format
        '${name.replaceAll(' & ', ' and ')} (English)',
        '${name.replaceAll(' and ', ' & ')} (English)',
        '${name.replaceAll(' - ', ' & ')} (English)',
        '${name.replaceAll(' & ', ' - ')} (English)',
        '${name.replaceAll(', ', ' & ')} (English)',
        '${name.replaceAll(' & ', ', ')} (English)',
        name,  // Direkt isim
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
      final nameWords = name.toLowerCase().split(' ').where((w) => w.length > 2).toList();
      
      for (final key in categories.keys) {
        final keyLower = key.toLowerCase();
        final keyWords = keyLower.split(' ').where((w) => w.length > 2).toList();
        
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
        firebaseKey = partialMatches.reduce((a, b) => a.length > b.length ? a : b);
      }
      
      if (firebaseKey != null) {
        orderedCategories.add({
          'name': name, // Temiz isim
          'count': categories[firebaseKey]!,
        });
      } else {
        // Eğer Firebase'de eşleşme yoksa, 0 soru ile göster
        orderedCategories.add({
          'name': name,
          'count': 0,
        });
      }
    }
    
    return orderedCategories;
  }

  // Kategori kartı oluştur
  Widget _buildCategoryCard(String name, int count, String language, Color color, {int? number}) {
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
                    padding: const EdgeInsets.symmetric(horizontal: 6, vertical: 2),
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
                    style: const TextStyle(
                      color: Colors.white70,
                      fontSize: 10,
                    ),
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
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        const Text(
          'Soru Yönetimi',
          style: TextStyle(
            fontSize: 22,
            fontWeight: FontWeight.bold,
            color: Colors.white,
          ),
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
                      builder: (context) => const AddQuestionScreen(),
                    ),
                  ).then((_) => _loadQuestions());
                },
                icon: const Icon(Icons.add, size: 20),
                label: const Text('Yeni Soru Ekle'),
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
          ],
        ),
        const SizedBox(height: 20),
        _buildLanguageSelector(),
        const SizedBox(height: 16),
        _buildCategorySelector(),
        const SizedBox(height: 20),
        Expanded(child: _buildQuestionsList()),
      ],
    );
  }

  Widget _buildLanguageSelector() {
    return Container(
      padding: const EdgeInsets.all(16),
      decoration: BoxDecoration(
        color: Colors.white.withOpacity(0.1),
        borderRadius: BorderRadius.circular(15),
        border: Border.all(color: Colors.white.withOpacity(0.2)),
      ),
      child: Row(
        children: [
          const Icon(Icons.language, color: Colors.white, size: 20),
          const SizedBox(width: 12),
          const Text(
            'Dil Seçimi:',
            style: TextStyle(
              color: Colors.white,
              fontSize: 16,
              fontWeight: FontWeight.w500,
            ),
          ),
          const SizedBox(width: 16),
          Expanded(
            child: Row(
              children: [
                Expanded(
                  child: GestureDetector(
                    onTap: () {
                      setState(() {
                        _selectedLanguage = 'turkish';
                        _selectedCategory = '';
                        _selectedCollectionName = '';
                        _questions.clear();
                      });
                      _loadCategories();
                    },
                    child: Container(
                      padding: const EdgeInsets.symmetric(vertical: 8, horizontal: 12),
                      decoration: BoxDecoration(
                        color: _selectedLanguage == 'turkish' 
                            ? Colors.red.withOpacity(0.3)
                            : Colors.transparent,
                        borderRadius: BorderRadius.circular(20),
                        border: Border.all(
                          color: _selectedLanguage == 'turkish' 
                              ? Colors.red
                              : Colors.white.withOpacity(0.3),
                        ),
                      ),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Text(
                            '🇹🇷',
                            style: TextStyle(
                              fontSize: 14,
                            ),
                          ),
                          const SizedBox(width: 6),
                          Flexible(
                            child: Text(
                              'Türkçe',
                              style: TextStyle(
                                color: _selectedLanguage == 'turkish' 
                                    ? Colors.red
                                    : Colors.white.withOpacity(0.7),
                                fontWeight: _selectedLanguage == 'turkish' 
                                    ? FontWeight.bold
                                    : FontWeight.normal,
                                fontSize: 12,
                              ),
                              overflow: TextOverflow.ellipsis,
                            ),
                          ),
                        ],
                      ),
                    ),
                  ),
                ),
                const SizedBox(width: 8),
                Expanded(
                  child: GestureDetector(
                    onTap: () {
                      setState(() {
                        _selectedLanguage = 'english';
                        _selectedCategory = '';
                        _selectedCollectionName = '';
                        _questions.clear();
                      });
                      _loadCategories();
                    },
                    child: Container(
                      padding: const EdgeInsets.symmetric(vertical: 8, horizontal: 12),
                      decoration: BoxDecoration(
                        color: _selectedLanguage == 'english' 
                            ? Colors.blue.withOpacity(0.3)
                            : Colors.transparent,
                        borderRadius: BorderRadius.circular(20),
                        border: Border.all(
                          color: _selectedLanguage == 'english' 
                              ? Colors.blue
                              : Colors.white.withOpacity(0.3),
                        ),
                      ),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Text(
                            '🇺🇸',
                            style: TextStyle(
                              fontSize: 14,
                            ),
                          ),
                          const SizedBox(width: 6),
                          Flexible(
                            child: Text(
                              'İngilizce',
                              style: TextStyle(
                                color: _selectedLanguage == 'english' 
                                    ? Colors.blue
                                    : Colors.white.withOpacity(0.7),
                                fontWeight: _selectedLanguage == 'english' 
                                    ? FontWeight.bold
                                    : FontWeight.normal,
                                fontSize: 12,
                              ),
                              overflow: TextOverflow.ellipsis,
                            ),
                          ),
                        ],
                      ),
                    ),
                  ),
                ),
              ],
            ),
          ),
        ],
      ),
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
                                padding: const EdgeInsets.symmetric(vertical: 8, horizontal: 4),
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
                                  orElse: () => {},
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








}
