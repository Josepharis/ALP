import 'package:flutter/material.dart';
import '../models/achievement.dart';
import '../services/achievement_service.dart';

class AchievementsScreen extends StatefulWidget {
  const AchievementsScreen({super.key});

  @override
  State<AchievementsScreen> createState() => _AchievementsScreenState();
}

class _AchievementsScreenState extends State<AchievementsScreen>
    with SingleTickerProviderStateMixin {
  final AchievementService _achievementService = AchievementService();
  List<Achievement> _allAchievements = [];
  List<Achievement> _unlockedAchievements = [];
  List<Achievement> _lockedAchievements = [];
  bool _isLoading = true;
  late TabController _tabController;

  @override
  void initState() {
    super.initState();
    _tabController = TabController(length: 2, vsync: this);
    _loadAchievements();
  }

  @override
  void dispose() {
    _tabController.dispose();
    super.dispose();
  }

  Future<void> _loadAchievements() async {
    setState(() {
      _isLoading = true;
    });

    try {
      // Tüm rozetleri yükle
      final achievements = await _achievementService.getAllAchievements();

      // Rozetleri durumlarına göre sınıflandır
      final unlocked =
          achievements
              .where(
                (a) =>
                    a.status == AchievementStatus.unlocked ||
                    a.status == AchievementStatus.newly,
              )
              .toList();

      final locked =
          achievements
              .where((a) => a.status == AchievementStatus.locked)
              .toList();

      setState(() {
        _allAchievements = achievements;
        _unlockedAchievements = unlocked;
        _lockedAchievements = locked;
        _isLoading = false;
      });
    } catch (e) {
      print('Rozetleri yükleme hatası: $e');
      setState(() {
        _isLoading = false;
      });
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Rozetlerim'),
        backgroundColor: Colors.indigo.shade900,
        bottom: TabBar(
          controller: _tabController,
          tabs: const [Tab(text: 'Kazandıklarım'), Tab(text: 'Kilitleri')],
          indicatorColor: Colors.white,
        ),
      ),
      body: Container(
        decoration: BoxDecoration(
          gradient: LinearGradient(
            begin: Alignment.topCenter,
            end: Alignment.bottomCenter,
            colors: [Colors.indigo.shade800, Colors.blue.shade900],
          ),
        ),
        child:
            _isLoading
                ? const Center(child: CircularProgressIndicator())
                : TabBarView(
                  controller: _tabController,
                  children: [
                    _buildAchievementGrid(_unlockedAchievements, true),
                    _buildAchievementGrid(_lockedAchievements, false),
                  ],
                ),
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: _loadAchievements,
        child: const Icon(Icons.refresh),
        backgroundColor: Colors.indigo,
      ),
    );
  }

  Widget _buildAchievementGrid(
    List<Achievement> achievements,
    bool isUnlocked,
  ) {
    if (achievements.isEmpty) {
      return Center(
        child: Text(
          isUnlocked
              ? 'Henüz rozet kazanmadınız!'
              : 'Tüm rozetleri kazandınız!',
          style: const TextStyle(color: Colors.white, fontSize: 18),
        ),
      );
    }

    return GridView.builder(
      padding: const EdgeInsets.all(16),
      gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
        crossAxisCount: 2,
        childAspectRatio: 0.75,
        crossAxisSpacing: 16,
        mainAxisSpacing: 16,
      ),
      itemCount: achievements.length,
      itemBuilder: (context, index) {
        final achievement = achievements[index];
        return _buildAchievementCard(achievement, isUnlocked);
      },
    );
  }

  // İkon adını Flutter ikonuna dönüştür
  IconData _getIconData(String iconName) {
    switch (iconName) {
      case 'workspace_premium':
        return Icons.workspace_premium;
      case 'speed':
        return Icons.speed;
      case 'star':
        return Icons.star;
      case 'play_arrow':
        return Icons.play_arrow;
      case 'check_circle':
        return Icons.check_circle;
      case 'school':
        return Icons.school;
      case 'calendar_today':
        return Icons.calendar_today;
      case 'local_fire_department':
        return Icons.local_fire_department;
      case 'assignment_turned_in':
        return Icons.assignment_turned_in;
      case 'psychology':
        return Icons.psychology;
      case 'biotech':
        return Icons.biotech;
      case 'auto_awesome':
        return Icons.auto_awesome;
      case 'military_tech':
        return Icons.military_tech;
      case 'calendar_month':
        return Icons.calendar_month;
      case 'event_available':
        return Icons.event_available;
      case 'flash_on':
        return Icons.flash_on;
      case 'bolt':
        return Icons.bolt;
      case 'health_and_safety':
        return Icons.health_and_safety;
      case 'air':
        return Icons.air;
      case 'favorite':
        return Icons.favorite;
      case 'local_hospital':
        return Icons.local_hospital;
      case 'emoji_events':
        return Icons.emoji_events;
      case 'lightbulb':
        return Icons.lightbulb;
      case 'verified':
        return Icons.verified;
      default:
        return Icons.star;
    }
  }

  Widget _buildAchievementCard(Achievement achievement, bool isUnlocked) {
    // İkon adını Flutter ikonuna dönüştür
    IconData iconData = _getIconData(achievement.iconName);

    // Yeni kazanılmış mı kontrolü
    final isNewlyUnlocked = achievement.status == AchievementStatus.newly;

    return Card(
      elevation: 8,
      shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(20)),
      color: Colors.transparent,
      child: Container(
        decoration: BoxDecoration(
          gradient: LinearGradient(
            colors:
                isUnlocked
                    ? [Colors.purple.shade800, Colors.deepPurple.shade900]
                    : [Colors.grey.shade800, Colors.blueGrey.shade900],
          ),
          borderRadius: BorderRadius.circular(20),
          boxShadow: [
            BoxShadow(
              color:
                  isUnlocked
                      ? Colors.purple.withOpacity(0.3)
                      : Colors.transparent,
              blurRadius: 10,
              spreadRadius: 2,
            ),
          ],
        ),
        child: Stack(
          children: [
            Padding(
              padding: const EdgeInsets.all(16),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  // İkon
                  Icon(
                    iconData,
                    size: 50,
                    color: isUnlocked ? Colors.yellow : Colors.grey,
                  ),
                  const SizedBox(height: 12),
                  // Başlık
                  Text(
                    achievement.title,
                    style: TextStyle(
                      fontSize: 18,
                      fontWeight: FontWeight.bold,
                      color:
                          isUnlocked
                              ? Colors.white
                              : Colors.white.withOpacity(0.7),
                    ),
                    textAlign: TextAlign.center,
                  ),
                  const SizedBox(height: 8),
                  // Açıklama
                  Text(
                    achievement.description,
                    style: TextStyle(
                      fontSize: 12,
                      color:
                          isUnlocked
                              ? Colors.white.withOpacity(0.8)
                              : Colors.white.withOpacity(0.5),
                    ),
                    textAlign: TextAlign.center,
                  ),
                  const SizedBox(height: 8),
                  // Puan
                  Container(
                    padding: const EdgeInsets.symmetric(
                      horizontal: 12,
                      vertical: 4,
                    ),
                    decoration: BoxDecoration(
                      color:
                          isUnlocked
                              ? Colors.amber.withOpacity(0.3)
                              : Colors.grey.withOpacity(0.2),
                      borderRadius: BorderRadius.circular(16),
                    ),
                    child: Text(
                      '${achievement.points} puan',
                      style: TextStyle(
                        fontSize: 12,
                        fontWeight: FontWeight.bold,
                        color: isUnlocked ? Colors.yellow : Colors.grey,
                      ),
                    ),
                  ),
                ],
              ),
            ),
            // Yeni kazanılan rozet için işaret
            if (isNewlyUnlocked)
              Positioned(
                top: 8,
                right: 8,
                child: Container(
                  padding: const EdgeInsets.all(4),
                  decoration: const BoxDecoration(
                    color: Colors.red,
                    shape: BoxShape.circle,
                  ),
                  child: const Text(
                    'Yeni',
                    style: TextStyle(
                      fontSize: 10,
                      color: Colors.white,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                ),
              ),
          ],
        ),
      ),
    );
  }
}
