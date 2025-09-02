import 'package:flutter/material.dart';
import '../l10n/app_localizations.dart';
import '../services/leaderboard_service.dart';
import '../utils/snackbar_utils.dart';
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
    print('Leaderboard screen dispose ediliyor...');
    try {
      if (_leaderboardSubscription != null) {
        _leaderboardSubscription!.cancel();
        _leaderboardSubscription = null;
        print('✅ Leaderboard stream iptal edildi');
      }
    } catch (e) {
      print('⚠️ Leaderboard stream iptal hatası: $e');
    }

    try {
      if (_rankSubscription != null) {
        _rankSubscription!.cancel();
        _rankSubscription = null;
        print('✅ Rank stream iptal edildi');
      }
    } catch (e) {
      print('⚠️ Rank stream iptal hatası: $e');
    }

    _animationController.dispose();
    _scrollController.dispose();
    WidgetsBinding.instance.removeObserver(this);
    print('✅ Leaderboard screen dispose tamamlandı');
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
              SnackBarUtils.showErrorSnackBar(
                context,
                '${AppLocalizations.of(context)!.dataLoadingError}: $error',
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

    return SafeArea(
      child: _isLoading
          ? const _LoadingView()
          : RefreshIndicator(
              onRefresh: _loadLeaderboardData,
              child: CustomScrollView(
                physics: const BouncingScrollPhysics(),
                slivers: [
                  _buildHeader(),
                  _buildTopThree(),
                  _buildLeaderboardList(),
                ],
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
              AppLocalizations.of(context)!.ranking,
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
                  AppLocalizations.of(context)!.leaders,
                  style: GoogleFonts.poppins(
                    color: Colors.white,
                    fontSize: 14,
                    fontWeight: FontWeight.w600,
                  ),
                ),
              ],
            ),
          ),

          // Kartlar düzeni - Hepsi aynı boyutta ve daha küçük
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 16), // 20'den 16'ya
            child: Column(
              children: [
                // Birinci - Ortada (diğerleriyle aynı boyut)
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    // Birinci kart - diğerleriyle aynı boyut
                    SizedBox(
                      width:
                          MediaQuery.of(context).size.width *
                          0.35, // 0.4'ten 0.35'e küçültüldü
                      child: Container(
                        margin: const EdgeInsets.only(
                          bottom: 8,
                        ), // Daha az margin
                        child: _buildCard(
                          user: firstPlace,
                          color: Colors.amber.shade600,
                          label: AppLocalizations.of(context)!.first,
                          position: 1,
                        ),
                      ),
                    ),
                  ],
                ),

                // İkinci ve Üçüncü - Altta yan yana (birincisiyle aynı boyut)
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: [
                    // İkinci Kart - birincisiyle aynı boyut
                    SizedBox(
                      width:
                          MediaQuery.of(context).size.width *
                          0.35, // 0.4'ten 0.35'e küçültüldü
                      child: _buildCard(
                        user: secondPlace,
                        color: Colors.grey.shade500,
                        label: AppLocalizations.of(context)!.second,
                        position: 2,
                      ),
                    ),

                    // Üçüncü Kart - birincisiyle aynı boyut
                    SizedBox(
                      width:
                          MediaQuery.of(context).size.width *
                          0.35, // 0.4'ten 0.35'e küçültüldü
                      child: _buildCard(
                        user: thirdPlace,
                        color: Colors.orange.shade700,
                        label: AppLocalizations.of(context)!.third,
                        position: 3,
                      ),
                    ),
                  ],
                ),
              ],
            ),
          ),

          const SizedBox(height: 8), // Daha az boşluk
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

    // Responsive sizing
    final size = MediaQuery.of(context).size;
    final isSmallScreen = size.width < 380;
    final isTablet = size.shortestSide >= 600;

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

    // Responsive boyutlar - Tüm kartlar aynı boyutta ve daha küçük
    final avatarSize =
        isTablet ? 50.0 : (isSmallScreen ? 35.0 : 42.0); // Daha da küçültüldü
    final innerAvatarSize =
        isTablet ? 42.0 : (isSmallScreen ? 29.0 : 36.0); // Daha da küçültüldü
    final fontSize =
        isTablet ? 14.0 : (isSmallScreen ? 12.0 : 16.0); // Daha da küçültüldü
    final nameSize =
        isTablet ? 12.0 : (isSmallScreen ? 9.0 : 11.0); // Daha da küçültüldü
    final pointsSize =
        isTablet ? 11.0 : (isSmallScreen ? 8.0 : 10.0); // Daha da küçültüldü
    final iconSize =
        isTablet ? 10.0 : (isSmallScreen ? 6.0 : 8.0); // Daha da küçültüldü
    final labelSize =
        isTablet ? 11.0 : (isSmallScreen ? 8.0 : 10.0); // Daha da küçültüldü

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
                  padding: EdgeInsets.symmetric(
                    vertical: isSmallScreen ? 4 : 6,
                  ),
                  decoration: BoxDecoration(color: mainColor),
                  child: Center(
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Text(
                          rankEmoji,
                          style: TextStyle(fontSize: isSmallScreen ? 12 : 14),
                        ),
                        const SizedBox(width: 6),
                        Text(
                          label,
                          style: GoogleFonts.poppins(
                            color: Colors.white,
                            fontSize: labelSize,
                            fontWeight: FontWeight.bold,
                            letterSpacing: 0.5,
                          ),
                        ),
                      ],
                    ),
                  ),
                ),

                // İçerik
                Padding(
                  padding: EdgeInsets.symmetric(
                    vertical: isSmallScreen ? 6 : 8,
                    horizontal: isSmallScreen ? 8 : 12,
                  ),
                  child: Column(
                    children: [
                      // Avatar
                      Stack(
                        alignment: Alignment.center,
                        children: [
                          // Dış çember
                          Container(
                            width: avatarSize,
                            height: avatarSize,
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
                            width: innerAvatarSize,
                            height: innerAvatarSize,
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
                                  fontSize: fontSize,
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
                              padding: const EdgeInsets.all(2),
                              decoration: BoxDecoration(
                                color: mainColor,
                                shape: BoxShape.circle,
                                border: Border.all(
                                  color: Colors.white,
                                  width: 1.0,
                                ),
                              ),
                              child: Icon(
                                trophyIcon,
                                color: Colors.white,
                                size: iconSize,
                              ),
                            ),
                          ),
                        ],
                      ),

                      SizedBox(height: isSmallScreen ? 6 : 8),

                      // İsim
                      Text(
                        displayName,
                        style: GoogleFonts.poppins(
                          color: Colors.white,
                          fontSize: nameSize,
                          fontWeight: FontWeight.w600,
                        ),
                        maxLines: 1,
                        overflow: TextOverflow.ellipsis,
                        textAlign: TextAlign.center,
                      ),

                      SizedBox(height: isSmallScreen ? 3 : 4),

                      // Puan - Daha kompakt container
                      Container(
                        padding: EdgeInsets.symmetric(
                          horizontal: isSmallScreen ? 6 : 8,
                          vertical: isSmallScreen ? 2 : 3,
                        ),
                        decoration: BoxDecoration(
                          gradient: LinearGradient(
                            begin: Alignment.topLeft,
                            end: Alignment.bottomRight,
                            colors: [shimmerColor, mainColor],
                          ),
                          borderRadius: BorderRadius.circular(10),
                        ),
                        child: Row(
                          mainAxisSize: MainAxisSize.min,
                          children: [
                            Icon(
                              Icons.star,
                              color: Colors.white,
                              size: isSmallScreen ? 10 : 12,
                            ),
                            SizedBox(width: isSmallScreen ? 2 : 3),
                            Text(
                              '$points',
                              style: GoogleFonts.poppins(
                                color: Colors.white,
                                fontSize: pointsSize,
                                fontWeight: FontWeight.bold,
                              ),
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

    // Kullanıcının pozisyonunu bul
    final userIndex = _leaderboardData.indexWhere(
      (user) => user['isCurrentUser'] ?? false,
    );

    if (userIndex == -1 || userIndex < 3) {
      // Kullanıcı bulunamadı veya zaten top 3'te ise normal listeyi göster
      return SliverList(
        delegate: SliverChildBuilderDelegate((context, index) {
          final itemIndex = index + 3;
          if (itemIndex >= _leaderboardData.length) return null;

          final user = _leaderboardData[itemIndex];
          final rank = itemIndex + 1;
          final displayName = user['displayName'] ?? 'İsimsiz';
          final points = user['totalPoints'] ?? 0;
          final isCurrentUser = user['isCurrentUser'] ?? false;

          return _buildLeaderboardItem(
            user,
            rank,
            displayName,
            points,
            isCurrentUser,
          );
        }, childCount: _leaderboardData.length - 3),
      );
    }

    // Kullanıcının etrafındaki 5 kişiyi göster (kendisi dahil)
    final startIndex = (userIndex - 2).clamp(3, _leaderboardData.length - 1);
    final endIndex = (userIndex + 2).clamp(
      startIndex,
      _leaderboardData.length - 1,
    );
    final usersToShow = _leaderboardData.sublist(startIndex, endIndex + 1);

    return SliverToBoxAdapter(
      child: Column(
        children: [
          // "Senin Çevren" başlığı
          Container(
            margin: const EdgeInsets.symmetric(horizontal: 20, vertical: 12),
            padding: const EdgeInsets.symmetric(horizontal: 16, vertical: 8),
            decoration: BoxDecoration(
              color: Colors.blue.shade900,
              borderRadius: BorderRadius.circular(20),
            ),
            child: Row(
              mainAxisSize: MainAxisSize.min,
              children: [
                const Icon(Icons.people_outline, color: Colors.white, size: 18),
                const SizedBox(width: 8),
                Text(
                  AppLocalizations.of(context)!.yourCircle,
                  style: GoogleFonts.poppins(
                    color: Colors.white,
                    fontSize: 14,
                    fontWeight: FontWeight.w600,
                  ),
                ),
              ],
            ),
          ),
          // Kullanıcı çevresindeki listesi
          ...usersToShow.asMap().entries.map((entry) {
            final user = entry.value;
            final rank = startIndex + entry.key + 1;
            final displayName = user['displayName'] ?? 'İsimsiz';
            final points = user['totalPoints'] ?? 0;
            final isCurrentUser = user['isCurrentUser'] ?? false;

            return _buildLeaderboardItem(
              user,
              rank,
              displayName,
              points,
              isCurrentUser,
            );
          }).toList(),
        ],
      ),
    );
  }

  Widget _buildLeaderboardItem(
    Map<String, dynamic> user,
    int rank,
    String displayName,
    int points,
    bool isCurrentUser,
  ) {
    return Container(
      margin: const EdgeInsets.fromLTRB(20, 0, 20, 12),
      padding: const EdgeInsets.all(12),
      decoration: BoxDecoration(
        color:
            isCurrentUser
                ? Colors.blue.shade900.withOpacity(0.3)
                : Colors.white.withOpacity(0.05),
        borderRadius: BorderRadius.circular(12),
        border: isCurrentUser ? Border.all(color: Colors.blue.shade300) : null,
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
                  '$points ${AppLocalizations.of(context)!.points.toLowerCase()}',
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
              padding: const EdgeInsets.symmetric(horizontal: 8, vertical: 4),
              decoration: BoxDecoration(
                color: Colors.blue.shade700,
                borderRadius: BorderRadius.circular(8),
              ),
              child: Text(
                'YOU',
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
            AppLocalizations.of(context)!.rankingLoading,
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
