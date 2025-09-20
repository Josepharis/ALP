import 'package:flutter/material.dart';
import '../l10n/app_localizations.dart';
import '../services/leaderboard_service.dart';
import '../utils/snackbar_utils.dart';
import 'dart:ui';
import 'package:google_fonts/google_fonts.dart';
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
  List<Map<String, dynamic>> _monthlyLeaderboardData = [];
  late final AnimationController _animationController;
  final ScrollController _scrollController = ScrollController();
  StreamSubscription? _leaderboardSubscription;
  StreamSubscription? _monthlyLeaderboardSubscription;
  StreamSubscription? _rankSubscription;
  // StreamSubscription? _monthlyRankSubscription; // Şimdilik kullanılmıyor
  int _selectedTabIndex = 0; // 0: General, 1: Monthly

  @override
  void initState() {
    super.initState();
    _initializeAnimations();
    _subscribeToLeaderboard();
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
      if (_monthlyLeaderboardSubscription != null) {
        _monthlyLeaderboardSubscription!.cancel();
        _monthlyLeaderboardSubscription = null;
        print('✅ Monthly leaderboard stream iptal edildi');
      }
    } catch (e) {
      print('⚠️ Monthly leaderboard stream iptal hatası: $e');
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

    // Monthly rank subscription şimdilik kullanılmıyor
    // try {
    //   if (_monthlyRankSubscription != null) {
    //     _monthlyRankSubscription!.cancel();
    //     _monthlyRankSubscription = null;
    //     print('✅ Monthly rank stream iptal edildi');
    //   }
    // } catch (e) {
    //   print('⚠️ Monthly rank stream iptal hatası: $e');
    // }

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
  }

  void _subscribeToLeaderboard() {
    setState(() => _isLoading = true);
    
    // Eğer veri zaten varsa loading'i hemen kapat
    if (_selectedTabIndex == 0 && _leaderboardData.isNotEmpty) {
      setState(() => _isLoading = false);
    } else if (_selectedTabIndex == 1 && _monthlyLeaderboardData.isNotEmpty) {
      setState(() => _isLoading = false);
    }

    // Genel liderlik tablosu stream'ine abone ol
    _leaderboardSubscription = _leaderboardService
        .getLeaderboardStream()
        .listen(
          (data) {
            if (mounted) {
              setState(() {
                _leaderboardData = data;
                // Genel veri geldiğinde loading'i kapat
                if (_selectedTabIndex == 0) {
                  _isLoading = false;
                }
              });
              // Genel tab seçiliyse animasyonu başlat
              if (_selectedTabIndex == 0) {
                _animationController.forward();
              }
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

    // Aylık liderlik tablosu stream'ine abone ol
    _monthlyLeaderboardSubscription = _leaderboardService
        .getMonthlyLeaderboardStream()
        .listen(
          (data) {
            if (mounted) {
              setState(() {
                _monthlyLeaderboardData = data;
                // Aylık veri geldiğinde loading'i kapat
                if (_selectedTabIndex == 1) {
                  _isLoading = false;
                }
              });
              // Aylık tab seçiliyse animasyonu başlat
              if (_selectedTabIndex == 1) {
                _animationController.forward();
              }
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
      // Kullanıcı sıralaması güncellendi
    });

    // Aylık kullanıcı sıralaması stream'ine abone ol (şimdilik boş bırakıldı)
    // _monthlyRankSubscription = _leaderboardService.getMonthlyLeaderboardStream().listen((data) {
    //   // Aylık sıralama güncellendi
    // });
  }

  @override
  Widget build(BuildContext context) {

    return SafeArea(
      child: _isLoading
          ? const _LoadingView()
          : RefreshIndicator(
              onRefresh: _loadLeaderboardData,
              child: CustomScrollView(
                physics: const BouncingScrollPhysics(),
                slivers: [
                  _buildHeader(),
                  _buildTabSelector(),
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

  Widget _buildTabSelector() {
    return SliverToBoxAdapter(
      child: Container(
        margin: const EdgeInsets.symmetric(horizontal: 20, vertical: 10),
        decoration: BoxDecoration(
          color: Colors.white.withOpacity(0.1),
          borderRadius: BorderRadius.circular(12),
          border: Border.all(color: Colors.white.withOpacity(0.2)),
        ),
        child: Row(
          children: [
            Expanded(
              child: _buildTabButton(
                index: 0,
                text: AppLocalizations.of(context)!.generalRanking,
                icon: Icons.leaderboard_rounded,
              ),
            ),
            Expanded(
              child: _buildTabButton(
                index: 1,
                text: AppLocalizations.of(context)!.monthlyRanking,
                icon: Icons.calendar_month_rounded,
              ),
            ),
          ],
        ),
      ),
    );
  }

  Widget _buildTabButton({
    required int index,
    required String text,
    required IconData icon,
  }) {
    final isSelected = _selectedTabIndex == index;
    
    return GestureDetector(
      onTap: () {
        setState(() {
          _selectedTabIndex = index;
          _isLoading = true;
        });
        
        // Animation'ı sıfırla ve başlat
        _animationController.reset();
        
        // Eğer veri zaten varsa loading'i hemen kapat
        if (index == 0 && _leaderboardData.isNotEmpty) {
          setState(() {
            _isLoading = false;
          });
          _animationController.forward();
        } else if (index == 1 && _monthlyLeaderboardData.isNotEmpty) {
          setState(() {
            _isLoading = false;
          });
          _animationController.forward();
        } else {
        }
      },
      child: AnimatedContainer(
        duration: const Duration(milliseconds: 200),
        padding: const EdgeInsets.symmetric(vertical: 12, horizontal: 16),
        decoration: BoxDecoration(
          color: isSelected ? Colors.amber.shade600 : Colors.transparent,
          borderRadius: BorderRadius.circular(10),
        ),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Icon(
              icon,
              color: isSelected ? Colors.white : Colors.white70,
              size: 18,
            ),
            const SizedBox(width: 8),
            Text(
              text,
              style: GoogleFonts.poppins(
                color: isSelected ? Colors.white : Colors.white70,
                fontSize: 14,
                fontWeight: isSelected ? FontWeight.w600 : FontWeight.w400,
              ),
            ),
          ],
        ),
      ),
    );
  }

  Widget _buildTopThree() {
    final currentData = _selectedTabIndex == 0 ? _leaderboardData : _monthlyLeaderboardData;
    
    
    if (currentData.isEmpty) {
      return const SliverToBoxAdapter();
    }

    final firstPlace = currentData[0];
    final secondPlace = currentData.length > 1 ? currentData[1] : null;
    final thirdPlace = currentData.length > 2 ? currentData[2] : null;

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
                  _selectedTabIndex == 0 
                    ? AppLocalizations.of(context)!.leaders
                    : AppLocalizations.of(context)!.monthlyLeaders,
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
                          label: "1.",
                          position: 1,
                        ),
                      ),
                    ),
                  ],
                ),

                // İkinci ve Üçüncü - Altta yan yana (birincisiyle aynı boyut)
                if (secondPlace != null || thirdPlace != null)
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    children: [
                      // İkinci Kart - birincisiyle aynı boyut
                      if (secondPlace != null)
                        SizedBox(
                          width:
                              MediaQuery.of(context).size.width *
                              0.35, // 0.4'ten 0.35'e küçültüldü
                          child: _buildCard(
                            user: secondPlace,
                            color: Colors.grey.shade500,
                            label: "2.",
                            position: 2,
                          ),
                        ),

                      // Üçüncü Kart - birincisiyle aynı boyut
                      if (thirdPlace != null)
                        SizedBox(
                          width:
                              MediaQuery.of(context).size.width *
                              0.35, // 0.4'ten 0.35'e küçültüldü
                          child: _buildCard(
                            user: thirdPlace,
                            color: Colors.orange.shade700,
                            label: "3.",
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
        isTablet ? 20.0 : (isSmallScreen ? 16.0 : 18.0); // Rakam boyutu ciddi şekilde artırıldı

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
                          style: TextStyle(fontSize: isSmallScreen ? 18 : 20),
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

                      // İsim + Sen yazısı
                      Column(
                        children: [
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
                          if (user['isCurrentUser'] ?? false) ...[
                            SizedBox(height: isSmallScreen ? 2 : 3),
                            Container(
                              padding: EdgeInsets.symmetric(
                                horizontal: isSmallScreen ? 4 : 6,
                                vertical: isSmallScreen ? 1 : 2,
                              ),
                              decoration: BoxDecoration(
                                color: Colors.amber.shade600,
                                borderRadius: BorderRadius.circular(8),
                              ),
                              child: Text(
                                'Sen',
                                style: GoogleFonts.poppins(
                                  color: Colors.white,
                                  fontSize: isSmallScreen ? 7 : 8,
                                  fontWeight: FontWeight.bold,
                                ),
                              ),
                            ),
                          ],
                        ],
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
    final currentData = _selectedTabIndex == 0 ? _leaderboardData : _monthlyLeaderboardData;
    
    
    if (currentData.isEmpty) {
      return const SliverToBoxAdapter();
    }
    
    if (currentData.length <= 3) {
      // 3 veya daha az kullanıcı varsa boş liste döndür (podium yeterli)
      return const SliverToBoxAdapter();
    }

    // Kullanıcının pozisyonunu bul
    final userIndex = currentData.indexWhere(
      (user) => user['isCurrentUser'] ?? false,
    );

    if (userIndex == -1 || userIndex < 3) {
      // Kullanıcı bulunamadı veya zaten top 3'te ise sadece birkaç kişi göster (çevre mantığı)
      final maxItems = 5; // Maksimum 5 kişi göster
      final itemsToShow = (currentData.length - 3).clamp(0, maxItems);
      final hasMoreItems = currentData.length > 3 + maxItems;
      
      return SliverToBoxAdapter(
        child: Column(
          children: [
            // Gösterilecek kişiler
            ...List.generate(itemsToShow, (index) {
              final itemIndex = index + 3;
              if (itemIndex >= currentData.length) return const SizedBox.shrink();

              final user = currentData[itemIndex];
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
            }),
            
            // Eğer daha fazla kişi varsa dikey "..." göster
            if (hasMoreItems)
              Container(
                margin: const EdgeInsets.symmetric(horizontal: 20, vertical: 8),
                child: Center(
                  child: Column(
                    children: [
                      Text(
                        '•',
                        style: TextStyle(
                          color: Colors.grey.shade500,
                          fontSize: 16,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                      Text(
                        '•',
                        style: TextStyle(
                          color: Colors.grey.shade500,
                          fontSize: 16,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                      Text(
                        '•',
                        style: TextStyle(
                          color: Colors.grey.shade500,
                          fontSize: 16,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                    ],
                  ),
                ),
              ),
          ],
        ),
      );
    }

    // Kullanıcının etrafındaki 5 kişiyi göster (kendisi dahil)
    final startIndex = (userIndex - 2).clamp(3, currentData.length - 1);
    final endIndex = (userIndex + 2).clamp(
      startIndex,
      currentData.length - 1,
    );
    final usersToShow = currentData.sublist(startIndex, endIndex + 1);

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
                  _selectedTabIndex == 0 
                    ? AppLocalizations.of(context)!.yourCircle
                    : AppLocalizations.of(context)!.monthlyCircle,
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
                AppLocalizations.of(context)!.you,
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
    _monthlyLeaderboardSubscription?.cancel();
    _rankSubscription?.cancel();
    // _monthlyRankSubscription?.cancel(); // Şimdilik kullanılmıyor
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
