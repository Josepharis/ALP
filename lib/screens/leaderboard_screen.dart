import 'package:flutter/material.dart';
import '../services/leaderboard_service.dart';
import 'dart:math' as math;
import 'dart:ui';
import 'package:google_fonts/google_fonts.dart';
import 'package:flutter/foundation.dart';
import 'dart:async';

class LeaderboardScreen extends StatefulWidget {
  const LeaderboardScreen({super.key});

  @override
  State<LeaderboardScreen> createState() => _LeaderboardScreenState();
}

class _LeaderboardScreenState extends State<LeaderboardScreen>
    with SingleTickerProviderStateMixin, WidgetsBindingObserver {
  final LeaderboardService _leaderboardService = LeaderboardService();
  bool _isLoading = true;
  List<Map<String, dynamic>> _leaderboardData = [];
  int _currentUserRank = 0;
  late final AnimationController _animationController;
  late final Animation<double> _fadeAnimation;
  late final Animation<Offset> _slideAnimation;
  final ScrollController _scrollController = ScrollController();
  bool _isInitialized = false;
  StreamSubscription? _leaderboardSubscription;
  StreamSubscription? _rankSubscription;

  @override
  void initState() {
    super.initState();
    _initializeAnimations();
    _subscribeToLeaderboard();
    WidgetsBinding.instance.addPostFrameCallback((_) {
      if (mounted) {
        setState(() {
          _isInitialized = true;
        });
      }
    });
    WidgetsBinding.instance.addObserver(this);
  }

  @override
  void didChangeAppLifecycleState(AppLifecycleState state) {
    if (state == AppLifecycleState.resumed) {
      _subscribeToLeaderboard();
    }
  }

  @override
  void dispose() {
    _leaderboardSubscription?.cancel();
    _rankSubscription?.cancel();
    _animationController.dispose();
    _scrollController.dispose();
    WidgetsBinding.instance.removeObserver(this);
    super.dispose();
  }

  void _initializeAnimations() {
    _animationController = AnimationController(
      vsync: this,
      duration: const Duration(milliseconds: 1200),
    );

    _fadeAnimation = Tween<double>(begin: 0.0, end: 1.0).animate(
      CurvedAnimation(
        parent: _animationController,
        curve: const Interval(0.0, 0.5, curve: Curves.easeOut),
      ),
    );

    _slideAnimation = Tween<Offset>(
      begin: const Offset(0, 0.3),
      end: Offset.zero,
    ).animate(
      CurvedAnimation(
        parent: _animationController,
        curve: const Interval(0.3, 1.0, curve: Curves.easeOutCubic),
      ),
    );
  }

  void _subscribeToLeaderboard() {
    setState(() => _isLoading = true);

    // Liderlik tablosu stream'ine abone ol
    _leaderboardSubscription = _leaderboardService
        .getLeaderboardStream()
        .listen(
          (data) {
            if (mounted) {
              setState(() {
                _leaderboardData = data;
                _isLoading = false;
              });
              _animationController.forward();
            }
          },
          onError: (error) {
            if (mounted) {
              setState(() => _isLoading = false);
              ScaffoldMessenger.of(context).showSnackBar(
                SnackBar(
                  content: Text('Veriler yüklenirken bir hata oluştu: $error'),
                  backgroundColor: Colors.red,
                ),
              );
            }
          },
        );

    // Kullanıcı sıralaması stream'ine abone ol
    _rankSubscription = _leaderboardService.getUserRankStream().listen((rank) {
      if (mounted) {
        setState(() {
          _currentUserRank = rank;
        });
      }
    });
  }

  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size;
    final bottomPadding = MediaQuery.of(context).viewPadding.bottom;

    return Scaffold(
      body: Container(
        decoration: BoxDecoration(
          gradient: LinearGradient(
            begin: Alignment.topLeft,
            end: Alignment.bottomRight,
            colors: [Colors.blue.shade900, Colors.black],
          ),
        ),
        child: SafeArea(
          child:
              _isLoading
                  ? const _LoadingView()
                  : RefreshIndicator(
                    onRefresh: _loadLeaderboardData,
                    child: CustomScrollView(
                      physics: const BouncingScrollPhysics(),
                      slivers: [
                        _buildHeader(),
                        _buildUserCard(),
                        _buildTopThree(),
                        _buildLeaderboardList(),
                      ],
                    ),
                  ),
        ),
      ),
    );
  }

  Widget _buildHeader() {
    return SliverToBoxAdapter(
      child: Padding(
        padding: const EdgeInsets.fromLTRB(20, 16, 20, 16),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Container(
              padding: const EdgeInsets.all(10),
              decoration: BoxDecoration(
                color: Colors.amber.shade600,
                borderRadius: BorderRadius.circular(12),
              ),
              child: const Icon(
                Icons.emoji_events_rounded,
                color: Colors.white,
                size: 28,
              ),
            ),
            const SizedBox(width: 12),
            Text(
              'Sıralama',
              style: GoogleFonts.poppins(
                fontSize: 28,
                fontWeight: FontWeight.bold,
                color: Colors.white,
              ),
            ),
          ],
        ),
      ),
    );
  }

  Widget _buildUserCard() {
    final userIndex = _leaderboardData.indexWhere(
      (user) => user['isCurrentUser'] ?? false,
    );
    final actualRank = userIndex != -1 ? userIndex + 1 : _currentUserRank;

    return SliverToBoxAdapter(
      child: LayoutBuilder(
        builder: (context, constraints) {
          final maxWidth = constraints.maxWidth;
          final cardHeight =
              maxWidth *
              0.15; // Kartın yüksekliği ekran genişliğine göre ayarlanır
          final avatarSize =
              cardHeight *
              0.6; // Avatar boyutu kart yüksekliğine göre ayarlanır

          return Container(
            margin: EdgeInsets.symmetric(
              horizontal: maxWidth * 0.05,
              vertical: maxWidth * 0.02,
            ),
            padding: EdgeInsets.all(maxWidth * 0.03),
            decoration: BoxDecoration(
              color: Colors.white.withOpacity(0.1),
              borderRadius: BorderRadius.circular(16),
              border: Border.all(color: Colors.white.withOpacity(0.1)),
            ),
            child: Row(
              children: [
                // Avatar
                Container(
                  width: avatarSize,
                  height: avatarSize,
                  decoration: BoxDecoration(
                    color: Colors.white.withOpacity(0.1),
                    shape: BoxShape.circle,
                  ),
                  child: const Icon(Icons.person_outline, color: Colors.white),
                ),
                SizedBox(width: maxWidth * 0.03),
                // Sıralama Bilgisi
                Expanded(
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    mainAxisSize: MainAxisSize.min,
                    children: [
                      Text(
                        'Mevcut Sıralaman',
                        style: GoogleFonts.poppins(
                          color: Colors.white70,
                          fontSize: maxWidth * 0.03,
                        ),
                      ),
                      Text(
                        '$actualRank. Sırada',
                        style: GoogleFonts.poppins(
                          color: Colors.white,
                          fontSize: maxWidth * 0.04,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                    ],
                  ),
                ),
                // İlerle Butonu
                Container(
                  padding: EdgeInsets.symmetric(
                    horizontal: maxWidth * 0.03,
                    vertical: maxWidth * 0.015,
                  ),
                  decoration: BoxDecoration(
                    color: Colors.blue.shade700,
                    borderRadius: BorderRadius.circular(maxWidth * 0.02),
                  ),
                  child: Row(
                    mainAxisSize: MainAxisSize.min,
                    children: [
                      Icon(
                        Icons.trending_up,
                        color: Colors.white,
                        size: maxWidth * 0.035,
                      ),
                      SizedBox(width: maxWidth * 0.01),
                      Text(
                        'İlerle',
                        style: GoogleFonts.poppins(
                          color: Colors.white,
                          fontSize: maxWidth * 0.03,
                          fontWeight: FontWeight.w500,
                        ),
                      ),
                    ],
                  ),
                ),
              ],
            ),
          );
        },
      ),
    );
  }

  Widget _buildTopThree() {
    if (_leaderboardData.length < 3) return const SliverToBoxAdapter();

    final firstPlace = _leaderboardData[0];
    final secondPlace = _leaderboardData[1];
    final thirdPlace = _leaderboardData[2];

    return SliverToBoxAdapter(
      child: Column(
        children: [
          // Liderler Buton
          Container(
            margin: const EdgeInsets.only(bottom: 15),
            padding: const EdgeInsets.symmetric(horizontal: 16, vertical: 8),
            decoration: BoxDecoration(
              color: Colors.blue.shade900,
              borderRadius: BorderRadius.circular(20),
            ),
            child: Row(
              mainAxisSize: MainAxisSize.min,
              children: [
                const Icon(
                  Icons.emoji_events_rounded,
                  color: Colors.amber,
                  size: 18,
                ),
                const SizedBox(width: 8),
                Text(
                  'Liderler',
                  style: GoogleFonts.poppins(
                    color: Colors.white,
                    fontSize: 14,
                    fontWeight: FontWeight.w600,
                  ),
                ),
              ],
            ),
          ),

          // Kartlar düzeni
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 20),
            child: Column(
              children: [
                // Birinci - Ortada
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    // Boş alan - sol kenar
                    const Spacer(),

                    // Birinci kart - ortada
                    Expanded(
                      flex: 2,
                      child: Container(
                        margin: const EdgeInsets.only(bottom: 15),
                        child: _buildCard(
                          user: firstPlace,
                          color: Colors.amber.shade600,
                          label: 'BİRİNCİ',
                          position: 1,
                        ),
                      ),
                    ),

                    // Boş alan - sağ kenar
                    const Spacer(),
                  ],
                ),

                // İkinci ve Üçüncü - Altta yan yana
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    // İkinci Kart
                    Expanded(
                      child: Container(
                        margin: const EdgeInsets.only(right: 8),
                        child: _buildCard(
                          user: secondPlace,
                          color: Colors.grey.shade500,
                          label: 'İKİNCİ',
                          position: 2,
                        ),
                      ),
                    ),

                    // Üçüncü Kart
                    Expanded(
                      child: Container(
                        margin: const EdgeInsets.only(left: 8),
                        child: _buildCard(
                          user: thirdPlace,
                          color: Colors.orange.shade700,
                          label: 'ÜÇÜNCÜ',
                          position: 3,
                        ),
                      ),
                    ),
                  ],
                ),
              ],
            ),
          ),

          const SizedBox(height: 15),
        ],
      ),
    );
  }

  Widget _buildCard({
    required Map<String, dynamic> user,
    required Color color,
    required String label,
    required int position,
  }) {
    final displayName = user['displayName'] ?? 'İsimsiz';
    final initial = displayName.isNotEmpty ? displayName[0].toUpperCase() : 'A';
    final points = user['totalPoints'] ?? 0;

    // Konuma göre stil ve içerik belirleme
    Color mainColor;
    Color shimmerColor;
    IconData trophyIcon;
    String rankEmoji;

    switch (position) {
      case 1:
        mainColor = Colors.amber.shade600;
        shimmerColor = Colors.yellow.shade200;
        trophyIcon = Icons.emoji_events;
        rankEmoji = "🏆";
        break;
      case 2:
        mainColor = Colors.blueGrey.shade400;
        shimmerColor = Colors.grey.shade300;
        trophyIcon = Icons.workspace_premium;
        rankEmoji = "🥈";
        break;
      case 3:
        mainColor = Colors.brown.shade400;
        shimmerColor = Colors.orange.shade200;
        trophyIcon = Icons.military_tech;
        rankEmoji = "🥉";
        break;
      default:
        mainColor = Colors.amber.shade600;
        shimmerColor = Colors.yellow.shade300;
        trophyIcon = Icons.emoji_events;
        rankEmoji = "🏆";
    }

    return Container(
      decoration: BoxDecoration(
        color: Colors.black.withOpacity(0.2),
        borderRadius: BorderRadius.circular(16),
        border: Border.all(color: mainColor.withOpacity(0.5), width: 1.5),
      ),
      child: ClipRRect(
        borderRadius: BorderRadius.circular(16),
        child: BackdropFilter(
          filter: ImageFilter.blur(sigmaX: 10.0, sigmaY: 10.0),
          child: Container(
            decoration: BoxDecoration(
              gradient: LinearGradient(
                begin: Alignment.topLeft,
                end: Alignment.bottomRight,
                colors: [
                  mainColor.withOpacity(0.2),
                  Colors.black.withOpacity(0.05),
                ],
              ),
            ),
            child: Column(
              mainAxisSize: MainAxisSize.min,
              children: [
                // Üst başlık
                Container(
                  width: double.infinity,
                  padding: const EdgeInsets.symmetric(vertical: 8),
                  decoration: BoxDecoration(color: mainColor),
                  child: Center(
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Text(rankEmoji, style: const TextStyle(fontSize: 16)),
                        const SizedBox(width: 8),
                        Text(
                          label,
                          style: GoogleFonts.poppins(
                            color: Colors.white,
                            fontSize: 14,
                            fontWeight: FontWeight.bold,
                            letterSpacing: 1,
                          ),
                        ),
                      ],
                    ),
                  ),
                ),

                // İçerik
                Padding(
                  padding: const EdgeInsets.symmetric(
                    vertical: 12,
                    horizontal: 16,
                  ),
                  child: Row(
                    children: [
                      // Avatar
                      Stack(
                        alignment: Alignment.center,
                        children: [
                          // Dış çember
                          Container(
                            width: 60,
                            height: 60,
                            decoration: BoxDecoration(
                              shape: BoxShape.circle,
                              gradient: LinearGradient(
                                begin: Alignment.topLeft,
                                end: Alignment.bottomRight,
                                colors: [shimmerColor, mainColor],
                              ),
                            ),
                          ),
                          // İç avatar
                          Container(
                            width: 50,
                            height: 50,
                            decoration: BoxDecoration(
                              shape: BoxShape.circle,
                              gradient: LinearGradient(
                                begin: Alignment.topLeft,
                                end: Alignment.bottomRight,
                                colors: [Colors.white, shimmerColor],
                              ),
                            ),
                            child: Center(
                              child: Text(
                                initial,
                                style: GoogleFonts.poppins(
                                  color: Colors.black87,
                                  fontSize: 24,
                                  fontWeight: FontWeight.bold,
                                ),
                              ),
                            ),
                          ),
                          // Köşede ikon
                          Positioned(
                            bottom: 0,
                            right: 0,
                            child: Container(
                              padding: const EdgeInsets.all(3),
                              decoration: BoxDecoration(
                                color: mainColor,
                                shape: BoxShape.circle,
                                border: Border.all(
                                  color: Colors.white,
                                  width: 1.5,
                                ),
                              ),
                              child: Icon(
                                trophyIcon,
                                color: Colors.white,
                                size: 12,
                              ),
                            ),
                          ),
                        ],
                      ),

                      const SizedBox(width: 15),

                      // İsim ve puan
                      Expanded(
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text(
                              displayName,
                              style: GoogleFonts.poppins(
                                color: Colors.white,
                                fontSize: 16,
                                fontWeight: FontWeight.w600,
                              ),
                              maxLines: 1,
                              overflow: TextOverflow.ellipsis,
                            ),
                            const SizedBox(height: 5),
                            Row(
                              children: [
                                Container(
                                  padding: const EdgeInsets.symmetric(
                                    horizontal: 10,
                                    vertical: 4,
                                  ),
                                  decoration: BoxDecoration(
                                    gradient: LinearGradient(
                                      begin: Alignment.topLeft,
                                      end: Alignment.bottomRight,
                                      colors: [shimmerColor, mainColor],
                                    ),
                                    borderRadius: BorderRadius.circular(12),
                                  ),
                                  child: Row(
                                    mainAxisSize: MainAxisSize.min,
                                    children: [
                                      Icon(
                                        Icons.star,
                                        color: Colors.white,
                                        size: 14,
                                      ),
                                      const SizedBox(width: 4),
                                      Text(
                                        '$points',
                                        style: GoogleFonts.poppins(
                                          color: Colors.white,
                                          fontSize: 14,
                                          fontWeight: FontWeight.bold,
                                        ),
                                      ),
                                    ],
                                  ),
                                ),
                              ],
                            ),
                          ],
                        ),
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
  }

  Widget _buildLeaderboardList() {
    if (_leaderboardData.length <= 3) {
      return const SliverToBoxAdapter();
    }

    return SliverList(
      delegate: SliverChildBuilderDelegate((context, index) {
        final itemIndex = index + 3;
        if (itemIndex >= _leaderboardData.length) return null;

        final user = _leaderboardData[itemIndex];
        final rank = itemIndex + 1;
        final displayName = user['displayName'] ?? 'İsimsiz';
        final points = user['totalPoints'] ?? 0;
        final isCurrentUser = user['isCurrentUser'] ?? false;

        return Container(
          margin: const EdgeInsets.fromLTRB(20, 0, 20, 12),
          padding: const EdgeInsets.all(12),
          decoration: BoxDecoration(
            color:
                isCurrentUser
                    ? Colors.blue.shade900.withOpacity(0.3)
                    : Colors.white.withOpacity(0.05),
            borderRadius: BorderRadius.circular(12),
            border:
                isCurrentUser ? Border.all(color: Colors.blue.shade300) : null,
          ),
          child: Row(
            children: [
              Container(
                width: 32,
                height: 32,
                decoration: BoxDecoration(
                  color:
                      isCurrentUser
                          ? Colors.blue.shade700
                          : Colors.white.withOpacity(0.1),
                  shape: BoxShape.circle,
                ),
                child: Center(
                  child: Text(
                    '$rank',
                    style: GoogleFonts.poppins(
                      color: Colors.white,
                      fontSize: 14,
                      fontWeight: FontWeight.w500,
                    ),
                  ),
                ),
              ),
              const SizedBox(width: 12),
              Expanded(
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      displayName,
                      style: GoogleFonts.poppins(
                        color: Colors.white,
                        fontSize: 14,
                        fontWeight: FontWeight.w500,
                      ),
                      maxLines: 1,
                      overflow: TextOverflow.ellipsis,
                    ),
                    Text(
                      '$points puan',
                      style: GoogleFonts.poppins(
                        color: Colors.white70,
                        fontSize: 12,
                      ),
                    ),
                  ],
                ),
              ),
              if (isCurrentUser)
                Container(
                  padding: const EdgeInsets.symmetric(
                    horizontal: 8,
                    vertical: 4,
                  ),
                  decoration: BoxDecoration(
                    color: Colors.blue.shade700,
                    borderRadius: BorderRadius.circular(8),
                  ),
                  child: Text(
                    'SEN',
                    style: GoogleFonts.poppins(
                      color: Colors.white,
                      fontSize: 10,
                      fontWeight: FontWeight.w500,
                    ),
                  ),
                ),
            ],
          ),
        );
      }, childCount: _leaderboardData.length - 3),
    );
  }

  Future<void> _loadLeaderboardData() async {
    // Yenileme için stream'leri yeniden başlat
    _leaderboardSubscription?.cancel();
    _rankSubscription?.cancel();
    _subscribeToLeaderboard();
  }
}

class _LoadingView extends StatelessWidget {
  const _LoadingView();

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Container(
            width: 120,
            height: 120,
            decoration: BoxDecoration(
              color: Colors.white.withOpacity(0.1),
              borderRadius: BorderRadius.circular(24),
            ),
            child: Stack(
              alignment: Alignment.center,
              children: [
                SizedBox(
                  width: 80,
                  height: 80,
                  child: CircularProgressIndicator(
                    valueColor: AlwaysStoppedAnimation<Color>(
                      Colors.purple[400]!,
                    ),
                    strokeWidth: 6,
                  ),
                ),
                Icon(
                  Icons.emoji_events_rounded,
                  size: 40,
                  color: Colors.purple[300],
                ),
              ],
            ),
          ),
          const SizedBox(height: 24),
          Text(
            'Sıralama Yükleniyor...',
            style: GoogleFonts.poppins(
              color: Colors.white,
              fontSize: 18,
              fontWeight: FontWeight.w500,
            ),
          ),
        ],
      ),
    );
  }
}
