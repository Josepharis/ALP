import 'package:flutter/material.dart';
import 'package:cloud_firestore/cloud_firestore.dart';
import '../services/auth_service.dart';
import '../services/admin_service.dart';
import '../services/data_migration_service.dart';
import '../services/real_data_migration_service.dart';
import '../services/organized_data_service.dart';
import '../theme/app_theme.dart';
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
  final DataMigrationService _migrationService = DataMigrationService();
  final RealDataMigrationService _realMigrationService =
      RealDataMigrationService();
  final OrganizedDataService _organizedDataService = OrganizedDataService();

  int _selectedNavIndex = 0;
  Map<String, dynamic> _userStats = {};
  Map<String, dynamic> _quizStats = {};
  List<String> _categories = [];
  List<Map<String, dynamic>> _organizedCategories = [];
  String _selectedCategory = '';
  String _selectedCollectionName = '';
  List<Map<String, dynamic>> _questions = [];
  bool _isLoading = true;

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
      _loadCategories(),
    ]);

    setState(() => _isLoading = false);
  }

  Future<void> _loadUserStatistics() async {
    final stats = await _adminService.getUserStatistics();
    setState(() => _userStats = stats);
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

      print('Admin Panel Quiz İstatistikleri:');
      print('- Toplam sorular: ${combinedStats['totalQuestions']}');
      print('- Toplam kategoriler: ${combinedStats['totalCategories']}');
    } catch (e) {
      print('Error loading quiz statistics: $e');
      setState(() => _quizStats = {});
    }
  }

  Future<void> _loadCategories() async {
    try {
      // Organize veri yapısından kategorileri yükle
      final organizedCategories =
          await _organizedDataService.getOrganizedCategories();

      // Eğer organize kategoriler varsa onları kullan
      if (organizedCategories.isNotEmpty) {
        setState(() {
          _organizedCategories = organizedCategories;
          _categories =
              organizedCategories
                  .map((cat) => cat['displayName'] as String)
                  .toList();
          if (_categories.isNotEmpty && _selectedCategory.isEmpty) {
            _selectedCategory = _categories.first;
            _selectedCollectionName =
                organizedCategories.first['collectionName'] as String;
            _loadQuestions();
          }
        });
      } else {
        // Fallback: eski yöntem
        final categories = await _adminService.getCategories();
        setState(() {
          _categories = categories;
          if (categories.isNotEmpty && _selectedCategory.isEmpty) {
            _selectedCategory = categories.first;
            _loadQuestions();
          }
        });
      }
    } catch (e) {
      print('Error loading categories: $e');
    }
  }

  Future<void> _loadQuestions() async {
    if (_selectedCategory.isEmpty) return;

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
      print('Error loading questions: $e');
      setState(() => _questions = []);
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
                      title: const Text('Admin Çıkışı'),
                      content: const Text(
                        'Admin panelinden çıkmak istediğinizden emin misiniz?',
                      ),
                      actions: [
                        TextButton(
                          onPressed: () => Navigator.pop(context, false),
                          child: const Text('İptal'),
                        ),
                        TextButton(
                          onPressed: () => Navigator.pop(context, true),
                          child: const Text('Çıkış Yap'),
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
                        content: Text('Çıkış yapılırken bir hata oluştu: $e'),
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
      {'icon': Icons.quiz_outlined, 'label': 'Sorular'},
      {'icon': Icons.analytics_outlined, 'label': 'Analitik'},
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
              const Text(
                'Genel Bakış',
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
                tooltip: 'İstatistikleri Yenile',
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
                          'Veri Bulunamadı',
                          style: TextStyle(
                            color: Colors.orange,
                            fontWeight: FontWeight.bold,
                            fontSize: 14,
                          ),
                        ),
                        Text(
                          'Soru verileri yüklenmemiş. Veri migrationi yapın.',
                          style: TextStyle(color: Colors.white70, fontSize: 12),
                        ),
                      ],
                    ),
                  ),
                  TextButton(
                    onPressed: _performOrganizedDataMigration,
                    style: TextButton.styleFrom(
                      backgroundColor: Colors.orange.withOpacity(0.2),
                      foregroundColor: Colors.orange,
                    ),
                    child: const Text('Migrasyon Yap'),
                  ),
                ],
              ),
            ),
          const SizedBox(height: 20),
          _buildStatsGrid(),
          const SizedBox(height: 30),
          _buildRecentActivity(),
        ],
      ),
    );
  }

  Widget _buildStatsGrid() {
    // Debug için istatistikleri yazdır
    print('📊 Admin Dashboard Stats:');
    print('_userStats: $_userStats');
    print('_quizStats: $_quizStats');

    final stats = [
      {
        'title': 'Toplam Kullanıcı',
        'value': '${_userStats['totalUsers'] ?? 0}',
        'icon': Icons.people,
        'color': Colors.blue,
        'subtitle': '${_userStats['newUsersLastWeek'] ?? 0} yeni (7 gün)',
      },
      {
        'title': 'Aktif Kullanıcı',
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
        'subtitle': '${_userStats['recentQuizzes'] ?? 0} son 7 gün',
      },
    ];

    return GridView.builder(
      shrinkWrap: true,
      physics: const NeverScrollableScrollPhysics(),
      gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
        crossAxisCount: 2,
        crossAxisSpacing: 16,
        mainAxisSpacing: 16,
        childAspectRatio: 1.2,
      ),
      itemCount: stats.length,
      itemBuilder: (context, index) {
        final stat = stats[index];
        return Container(
          padding: const EdgeInsets.all(20),
          decoration: BoxDecoration(
            color: Colors.white.withOpacity(0.1),
            borderRadius: BorderRadius.circular(20),
            border: Border.all(color: Colors.white.withOpacity(0.2)),
            boxShadow: [
              BoxShadow(
                color: Colors.black.withOpacity(0.1),
                blurRadius: 10,
                offset: const Offset(0, 5),
              ),
            ],
          ),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Container(
                    padding: const EdgeInsets.all(8),
                    decoration: BoxDecoration(
                      color: (stat['color'] as Color).withOpacity(0.2),
                      borderRadius: BorderRadius.circular(10),
                    ),
                    child: Icon(
                      stat['icon'] as IconData,
                      color: stat['color'] as Color,
                      size: 20,
                    ),
                  ),
                ],
              ),
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    stat['value'] as String,
                    style: const TextStyle(
                      fontSize: 24,
                      fontWeight: FontWeight.bold,
                      color: Colors.white,
                    ),
                  ),
                  Text(
                    stat['title'] as String,
                    style: const TextStyle(
                      fontSize: 12,
                      color: Colors.white70,
                      fontWeight: FontWeight.w500,
                    ),
                  ),
                  Text(
                    stat['subtitle'] as String,
                    style: const TextStyle(fontSize: 10, color: Colors.white60),
                    maxLines: 2,
                    overflow: TextOverflow.ellipsis,
                  ),
                ],
              ),
            ],
          ),
        );
      },
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
                onPressed: _showDataImportDialog,
                icon: const Icon(Icons.upload_file, size: 20),
                label: const Text('Veri Aktar'),
                style: ElevatedButton.styleFrom(
                  backgroundColor: Colors.green.shade600,
                  foregroundColor: Colors.white,
                  padding: const EdgeInsets.symmetric(vertical: 12),
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(15),
                  ),
                ),
              ),
            ),
            const SizedBox(width: 12),
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
                label: const Text('Yeni Soru'),
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
        _buildCategorySelector(),
        const SizedBox(height: 20),
        Expanded(child: _buildQuestionsList()),
      ],
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
                      menuMaxHeight: 300,
                      items:
                          _categories.map((category) {
                            return DropdownMenuItem<String>(
                              value: category,
                              child: Text(
                                category,
                                style: const TextStyle(
                                  color: Colors.white,
                                  fontSize: 14,
                                ),
                                overflow: TextOverflow.ellipsis,
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
                                    fontWeight: FontWeight.w500,
                                  ),
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
              'Soru listesini görmek için\nbir kategori seçin',
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
              'Bu kategoride henüz soru yok',
              style: TextStyle(
                color: Colors.white.withOpacity(0.7),
                fontSize: 16,
              ),
            ),
            const SizedBox(height: 8),
            Text(
              'Yeni soru ekleyebilir veya veri aktarımı yapabilirsiniz',
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
                    'Haftalık Büyüme',
                    '${_userStats['newUsersLastWeek'] ?? 0}',
                    'Yeni kullanıcı',
                    Icons.person_add,
                    Colors.blue,
                  ),
                  _buildAnalyticsCard(
                    'Aktif Oranı',
                    '${_calculateActivePercentage()}%',
                    'Günlük aktif',
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
                      'Performans: Mükemmel',
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
                      'Güvenlik: Güvenli',
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

  Future<void> _showDataImportDialog() async {
    final existingCount =
        await _realMigrationService.getExistingQuestionsCount();

    if (!mounted) return;

    showDialog(
      context: context,
      builder:
          (context) => AlertDialog(
            title: const Text('Gerçek Veri Aktarımı'),
            content: Column(
              mainAxisSize: MainAxisSize.min,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Container(
                  padding: const EdgeInsets.all(12),
                  decoration: BoxDecoration(
                    color: Colors.blue.withOpacity(0.1),
                    borderRadius: BorderRadius.circular(8),
                  ),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      const Row(
                        children: [
                          Icon(
                            Icons.info_outline,
                            color: Colors.blue,
                            size: 16,
                          ),
                          SizedBox(width: 8),
                          Text(
                            'Bu işlem hakkında:',
                            style: TextStyle(fontWeight: FontWeight.bold),
                          ),
                        ],
                      ),
                      const SizedBox(height: 8),
                      Text('• Mevcut soru sayısı: $existingCount'),
                      const Text(
                        '• 24 kategoriden tüm gerçek soruları aktaracak',
                      ),
                      const Text('• Her kategori kendi klasöründe organize'),
                      const Text('• Zaten var olan sorular atlanacak'),
                      const Text('• Yüzlerce gerçek soru eklenecek'),
                    ],
                  ),
                ),
                const SizedBox(height: 16),
                const Text(
                  'Data ve Questions klasörlerindeki TÜM gerçek soruları Firestore\'a aktarmak istediğinizden emin misiniz?',
                  style: TextStyle(fontWeight: FontWeight.bold),
                ),
                const SizedBox(height: 8),
                const Text(
                  '⚠️ Bu işlem 2-3 dakika sürebilir.',
                  style: TextStyle(color: Colors.orange),
                ),
              ],
            ),
            actions: [
              TextButton(
                onPressed: () => Navigator.pop(context),
                child: const Text('İptal'),
              ),
              ElevatedButton(
                onPressed: () {
                  Navigator.pop(context);
                  _performOrganizedDataMigration();
                },
                style: ElevatedButton.styleFrom(
                  backgroundColor: Colors.green,
                  foregroundColor: Colors.white,
                ),
                child: const Text('Gerçek Soruları Ekle'),
              ),
            ],
          ),
    );
  }

  Future<void> _performOrganizedDataMigration() async {
    // Show loading dialog
    showDialog(
      context: context,
      barrierDismissible: false,
      builder:
          (context) => const AlertDialog(
            content: Column(
              mainAxisSize: MainAxisSize.min,
              children: [
                CircularProgressIndicator(),
                SizedBox(height: 16),
                Text('Organize veriler aktarılıyor...'),
                SizedBox(height: 8),
                Text(
                  'Her kategori ayrı klasöre aktarılıyor',
                  style: TextStyle(fontSize: 12, color: Colors.grey),
                ),
              ],
            ),
          ),
    );

    try {
      final result = await _organizedDataService.migrateOrganizedQuestions();

      if (!mounted) return;
      Navigator.pop(context); // Close loading dialog

      // Show result dialog
      showDialog(
        context: context,
        builder:
            (context) => AlertDialog(
              title: Text(
                result['success'] ? 'Organize Veri Başarılı!' : 'Hata!',
                style: TextStyle(
                  color: result['success'] ? Colors.green : Colors.red,
                ),
              ),
              content: SingleChildScrollView(
                child: Column(
                  mainAxisSize: MainAxisSize.min,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    if (result['success']) ...[
                      Container(
                        padding: const EdgeInsets.all(12),
                        decoration: BoxDecoration(
                          color: Colors.green.withOpacity(0.1),
                          borderRadius: BorderRadius.circular(8),
                        ),
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text(
                              '🎉 ${result['totalMigrated']} soru organize şekilde aktarıldı!',
                              style: const TextStyle(
                                fontWeight: FontWeight.bold,
                              ),
                            ),
                            if (result['totalErrors'] > 0)
                              Text(
                                '⚠️ ${result['totalErrors']} hataya rastlandı',
                              ),
                            const SizedBox(height: 8),
                            const Text(
                              '📁 Her kategori ayrı subcollection\'da saklandı',
                              style: TextStyle(color: Colors.blue),
                            ),
                          ],
                        ),
                      ),
                      const SizedBox(height: 12),
                      Text(
                        '📚 Organize edilen ${result['categories'].length} kategori:',
                      ),
                      const SizedBox(height: 8),
                      ...List<String>.from(result['categories']).map(
                        (category) => Padding(
                          padding: const EdgeInsets.only(bottom: 4),
                          child: Text('• $category'),
                        ),
                      ),
                    ] else
                      Text('Hata: ${result['error']}'),
                  ],
                ),
              ),
              actions: [
                TextButton(
                  onPressed: () async {
                    Navigator.pop(context);
                    // Dashboard'u tamamen yenile
                    setState(() => _isLoading = true);
                    await _loadInitialData();
                    setState(() => _isLoading = false);
                  },
                  child: const Text('Tamam'),
                ),
              ],
            ),
      );
    } catch (e) {
      if (!mounted) return;
      Navigator.pop(context); // Close loading dialog

      ScaffoldMessenger.of(context).showSnackBar(
        SnackBar(
          content: Text('Organize veri aktarımında hata: $e'),
          backgroundColor: Colors.red,
        ),
      );
    }
  }
}
