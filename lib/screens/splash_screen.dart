import 'package:flutter/material.dart';
import 'dart:async';
import 'dart:math';
import '../services/auth_service.dart';
import '../services/tutorial_service.dart';
import '../l10n/app_localizations.dart';

class SplashScreen extends StatefulWidget {
  const SplashScreen({Key? key}) : super(key: key);

  @override
  _SplashScreenState createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen>
    with TickerProviderStateMixin {
  // Logo animasyonları için controller
  late AnimationController _logoController;
  late Animation<double> _logoScaleAnimation;
  late Animation<double> _logoOpacityAnimation;

  // Metin animasyonları için controller
  late AnimationController _textController;
  late Animation<double> _titleSlideAnimation;
  late Animation<double> _subtitleSlideAnimation;
  late Animation<double> _titleOpacityAnimation;
  late Animation<double> _subtitleOpacityAnimation;

  // Background gradient animasyonu için controller
  late AnimationController _backgroundController;
  late Animation<Color?> _backgroundColorAnimation;

  // Pulse efekti için controller
  late AnimationController _pulseController;
  late Animation<double> _pulseAnimation;

  // Yükleme noktaları için controller
  late AnimationController _dotsController;

  // Yükleme tamamlandı animasyonu için controller
  late AnimationController _completionController;
  late Animation<double> _completionScaleAnimation;
  late Animation<double> _completionFadeAnimation;

  // Heartbeat efekti için controller
  late AnimationController _heartbeatController;
  late Animation<double> _heartbeatAnimation;

  final AuthService _authService = AuthService();
  final TutorialService _tutorialService = TutorialService();

  @override
  void initState() {
    super.initState();

    // Logo animasyonları (ALP logo için gelişmiş animasyon)
    _logoController = AnimationController(
      duration: const Duration(milliseconds: 2500),
      vsync: this,
    );

    _logoScaleAnimation = TweenSequence<double>([
      TweenSequenceItem(
        tween: Tween<double>(
          begin: 0.0,
          end: 1.3,
        ).chain(CurveTween(curve: Curves.easeOutBack)),
        weight: 60,
      ),
      TweenSequenceItem(
        tween: Tween<double>(
          begin: 1.3,
          end: 1.0,
        ).chain(CurveTween(curve: Curves.elasticOut)),
        weight: 40,
      ),
    ]).animate(_logoController);

    _logoOpacityAnimation = TweenSequence<double>([
      TweenSequenceItem(
        tween: Tween<double>(
          begin: 0.0,
          end: 1.0,
        ).chain(CurveTween(curve: Curves.easeIn)),
        weight: 30,
      ),
      TweenSequenceItem(tween: Tween<double>(begin: 1.0, end: 1.0), weight: 70),
    ]).animate(_logoController);

    // Metin animasyonları (ALP teması için)
    _textController = AnimationController(
      duration: const Duration(milliseconds: 1800),
      vsync: this,
    );

    _titleSlideAnimation = Tween<double>(begin: 50.0, end: 0.0).animate(
      CurvedAnimation(
        parent: _textController,
        curve: const Interval(0.2, 0.6, curve: Curves.easeOutCubic),
      ),
    );

    _subtitleSlideAnimation = Tween<double>(begin: 30.0, end: 0.0).animate(
      CurvedAnimation(
        parent: _textController,
        curve: const Interval(0.4, 0.8, curve: Curves.easeOutCubic),
      ),
    );

    _titleOpacityAnimation = Tween<double>(begin: 0.0, end: 1.0).animate(
      CurvedAnimation(
        parent: _textController,
        curve: const Interval(0.2, 0.6, curve: Curves.easeOut),
      ),
    );

    _subtitleOpacityAnimation = Tween<double>(begin: 0.0, end: 1.0).animate(
      CurvedAnimation(
        parent: _textController,
        curve: const Interval(0.4, 0.8, curve: Curves.easeOut),
      ),
    );

    // Background gradient animasyonu (tıbbi tema renkleri)
    _backgroundController = AnimationController(
      duration: const Duration(seconds: 8),
      vsync: this,
    )..repeat(reverse: true);

    _backgroundColorAnimation = ColorTween(
      begin: const Color(0xFF1E88E5), // Tıbbi mavi
      end: const Color(0xFF26C6DA), // Turkuaz
    ).animate(
      CurvedAnimation(parent: _backgroundController, curve: Curves.easeInOut),
    );

    // Pulse efekti (kalp atışı benzeri)
    _pulseController = AnimationController(
      duration: const Duration(milliseconds: 1200),
      vsync: this,
    )..repeat(reverse: true);

    _pulseAnimation = Tween<double>(begin: 1.0, end: 1.08).animate(
      CurvedAnimation(parent: _pulseController, curve: Curves.easeInOut),
    );

    // Heartbeat efekti (kalp monitörü simülasyonu) - Yavaşlatıldı
    _heartbeatController = AnimationController(
      duration: const Duration(
        milliseconds: 2000,
      ), // 800'den 2000'e yavaşlatıldı
      vsync: this,
    )..repeat();

    _heartbeatAnimation = TweenSequence<double>([
      TweenSequenceItem(
        tween: Tween<double>(begin: 1.0, end: 1.03),
        weight: 15,
      ), // Çok daha subtle
      TweenSequenceItem(
        tween: Tween<double>(begin: 1.03, end: 0.98),
        weight: 15,
      ), // Göz yormayacak şekilde
      TweenSequenceItem(
        tween: Tween<double>(begin: 0.98, end: 1.0),
        weight: 70,
      ), // Uzun dinlenme süresi
    ]).animate(_heartbeatController);

    // Yükleme noktaları animasyonu
    _dotsController = AnimationController(
      duration: const Duration(milliseconds: 1200),
      vsync: this,
    )..repeat();

    // Yükleme tamamlandı animasyonu
    _completionController = AnimationController(
      duration: const Duration(milliseconds: 1000),
      vsync: this,
    );

    _completionScaleAnimation = Tween<double>(begin: 0.0, end: 1.0).animate(
      CurvedAnimation(parent: _completionController, curve: Curves.elasticOut),
    );

    _completionFadeAnimation = Tween<double>(begin: 0.0, end: 1.0).animate(
      CurvedAnimation(
        parent: _completionController,
        curve: const Interval(0.0, 0.5, curve: Curves.easeOut),
      ),
    );

    // Animasyonları başlat
    _startAnimations();

    // Giriş durumunu kontrol et
    _checkLoginStatus();
  }

  Future<void> _startAnimations() async {
    // Logo animasyonunu başlat
    _logoController.forward();

    // Kısa bir bekleme sonrası metin animasyonunu başlat
    await Future.delayed(const Duration(milliseconds: 500));
    _textController.forward();
  }

  Future<void> _checkLoginStatus() async {
    try {
      // 4 saniye bekleyerek splash screen'i göster (logo için daha uzun süre)
      await Future.delayed(const Duration(seconds: 4));

      if (!mounted) return;

      // Tamamlandı animasyonunu başlat
      await _completionController.forward();

      if (!mounted) return;

      // Firebase Auth bağlantısını kontrol et
      await _waitForAuth();

      if (!mounted) return;

      // Kullanıcının giriş durumunu kontrol et
      final currentUser = _authService.currentUser;

      if (currentUser != null) {
        try {
          // Kullanıcı admin mi kontrol et
          final isAdmin = await _authService.isUserAdmin();

          if (!mounted) return;

          if (isAdmin) {
            // Admin ise admin paneline yönlendir
            Navigator.of(context).pushReplacementNamed('/admin');
          } else {
            // Normal kullanıcı ise ana sayfaya yönlendir
            Navigator.of(context).pushReplacementNamed('/home');
          }
        } catch (e) {
          // Hata durumunda ana sayfaya yönlendir
          if (mounted) {
            Navigator.of(context).pushReplacementNamed('/home');
          }
        }
      } else {
        // Kullanıcı giriş yapmamışsa login sayfasına yönlendir
        if (mounted) {
          Navigator.of(context).pushReplacementNamed('/login');
        }
      }
    } catch (e) {
      // Hata durumunda login sayfasına yönlendir
      if (mounted) {
        Navigator.of(context).pushReplacementNamed('/login');
      }
    }
  }

  // Firebase Auth'un hazır olmasını bekle
  Future<void> _waitForAuth() async {
    int maxAttempts = 10;
    int attempts = 0;

    while (attempts < maxAttempts) {
      try {
        // Basit bir auth kontrolü yap
        final user = _authService.currentUser;
        // Eğer currentUser null değilse veya Firebase Auth hazırsa devam et
        break;
      } catch (e) {
        attempts++;
        await Future.delayed(const Duration(milliseconds: 300));
      }
    }
  }

  @override
  void dispose() {
    _logoController.dispose();
    _textController.dispose();
    _backgroundController.dispose();
    _pulseController.dispose();
    _dotsController.dispose();
    _completionController.dispose();
    _heartbeatController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: AnimatedBuilder(
        animation: _backgroundColorAnimation,
        builder: (context, child) {
          return Container(
            width: double.infinity,
            height: double.infinity,
            decoration: BoxDecoration(
              gradient: LinearGradient(
                begin: Alignment.topLeft,
                end: Alignment.bottomRight,
                colors: [
                  _backgroundColorAnimation.value ?? const Color(0xFF1E88E5),
                  const Color(0xFF0D47A1), // Koyu tıbbi mavi
                  const Color(0xFF1A237E), // Derin lacivert
                ],
                stops: const [0.0, 0.6, 1.0],
              ),
            ),
            child: Stack(
              alignment: Alignment.center,
              children: [
                // Arka plan pulse efektleri
                AnimatedBuilder(
                  animation: _pulseAnimation,
                  builder: (context, child) {
                    return Transform.scale(
                      scale: _pulseAnimation.value,
                      child: Container(
                        width: 300,
                        height: 300,
                        decoration: BoxDecoration(
                          shape: BoxShape.circle,
                          gradient: RadialGradient(
                            colors: [
                              Colors.cyan.withOpacity(0.1),
                              Colors.transparent,
                            ],
                            stops: const [0.3, 1.0],
                          ),
                        ),
                      ),
                    );
                  },
                ),

                // İkinci arka plan halkası
                Container(
                  width: 220,
                  height: 220,
                  decoration: BoxDecoration(
                    shape: BoxShape.circle,
                    border: Border.all(
                      color: Colors.white.withOpacity(0.1),
                      width: 1,
                    ),
                  ),
                ),

                // Ana içerik
                SafeArea(
                  child: Center(
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        // Ana Logo - Ön Plan
                        AnimatedBuilder(
                          animation: Listenable.merge([
                            _logoScaleAnimation,
                            _logoOpacityAnimation,
                            _heartbeatAnimation,
                          ]),
                          builder: (context, child) {
                            return Transform.scale(
                              scale:
                                  _logoScaleAnimation.value *
                                  _heartbeatAnimation.value,
                              child: Opacity(
                                opacity: _logoOpacityAnimation.value,
                                child: Container(
                                  padding: const EdgeInsets.all(30),
                                  decoration: BoxDecoration(
                                    shape: BoxShape.circle,
                                    gradient: RadialGradient(
                                      colors: [
                                        Colors.white.withOpacity(0.1),
                                        Colors.transparent,
                                      ],
                                      stops: const [0.7, 1.0],
                                    ),
                                    boxShadow: [
                                      BoxShadow(
                                        color: Colors.cyan.withOpacity(0.3),
                                        blurRadius: 30,
                                        spreadRadius: 10,
                                      ),
                                      BoxShadow(
                                        color: Colors.blue.withOpacity(0.2),
                                        blurRadius: 50,
                                        spreadRadius: 20,
                                      ),
                                    ],
                                  ),
                                  child: Hero(
                                    tag: 'app_logo',
                                    child: Container(
                                      width: 280, // 200'den 280'e büyütüldü
                                      height: 280, // 200'den 280'e büyütüldü
                                      decoration: BoxDecoration(
                                        shape: BoxShape.circle,
                                        color: Colors.white,
                                        boxShadow: [
                                          BoxShadow(
                                            color: Colors.black.withOpacity(
                                              0.1,
                                            ),
                                            blurRadius:
                                                15, // 10'dan 15'e artırıldı
                                            spreadRadius:
                                                3, // 2'den 3'e artırıldı
                                          ),
                                        ],
                                      ),
                                      child: ClipRRect(
                                        borderRadius: BorderRadius.circular(
                                          140, // 100'den 140'a büyütüldü
                                        ),
                                        child: _buildMainLogo(),
                                      ),
                                    ),
                                  ),
                                ),
                              ),
                            );
                          },
                        ),

                        const SizedBox(height: 60),

                        // Yükleme ve tamamlandı göstergeleri
                        SizedBox(
                          height: 50,
                          child: Stack(
                            alignment: Alignment.center,
                            children: [
                              // Yükleme indikatörü
                              AnimatedBuilder(
                                animation: _completionFadeAnimation,
                                builder: (context, child) {
                                  return Opacity(
                                    opacity: 1 - _completionFadeAnimation.value,
                                    child: _buildMedicalLoadingIndicator(),
                                  );
                                },
                              ),

                              // Tamamlandı indikatörü
                              AnimatedBuilder(
                                animation: Listenable.merge([
                                  _completionScaleAnimation,
                                  _completionFadeAnimation,
                                ]),
                                builder: (context, child) {
                                  return Transform.scale(
                                    scale: _completionScaleAnimation.value,
                                    child: Opacity(
                                      opacity: _completionFadeAnimation.value,
                                      child: Container(
                                        padding: const EdgeInsets.all(12),
                                        decoration: BoxDecoration(
                                          shape: BoxShape.circle,
                                          color: Colors.green.shade400,
                                          boxShadow: [
                                            BoxShadow(
                                              color: Colors.green.withOpacity(
                                                0.4,
                                              ),
                                              blurRadius: 15,
                                              spreadRadius: 3,
                                            ),
                                          ],
                                        ),
                                        child: const Icon(
                                          Icons.medical_services,
                                          color: Colors.white,
                                          size: 28,
                                        ),
                                      ),
                                    ),
                                  );
                                },
                              ),
                            ],
                          ),
                        ),
                      ],
                    ),
                  ),
                ),

                // Heartbeat line effect (üst kısımda)
                Positioned(
                  top: 100,
                  left: 0,
                  right: 0,
                  child: AnimatedBuilder(
                    animation: _heartbeatController,
                    builder: (context, child) {
                      return CustomPaint(
                        size: Size(MediaQuery.of(context).size.width, 60),
                        painter: HeartbeatPainter(_heartbeatController.value),
                      );
                    },
                  ),
                ),
              ],
            ),
          );
        },
      ),
    );
  }

  // Ana logo widget'ı - Daha büyük ve temiz
  Widget _buildMainLogo() {
    return Image.asset(
      'assets/images/logo.png',
      width: 280, // 200'den 280'e büyütüldü
      height: 280, // 200'den 280'e büyütüldü
      fit: BoxFit.cover,
      errorBuilder: (context, error, stackTrace) {
        // Logo dosyası yoksa fallback tasarım - büyük ALP logosu
        return Container(
          width: 280, // 200'den 280'e büyütüldü
          height: 280, // 200'den 280'e büyütüldü
          decoration: BoxDecoration(
            gradient: LinearGradient(
              begin: Alignment.topLeft,
              end: Alignment.bottomRight,
              colors: [
                const Color(0xFF1E88E5),
                const Color(0xFF26C6DA),
                const Color(0xFF0D47A1),
              ],
              stops: const [0.0, 0.5, 1.0],
            ),
            borderRadius: BorderRadius.circular(140), // 100'den 140'a büyütüldü
          ),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              // Medical heart icon - büyütüldü
              Icon(
                Icons.favorite,
                color: Colors.red.shade400,
                size: 50,
              ), // 40'tan 50'ye
              const SizedBox(height: 16), // 12'den 16'ya
              // ALP text - büyütüldü
              const Text(
                'ALP',
                style: TextStyle(
                  fontSize: 42, // 32'den 42'ye büyütüldü
                  fontWeight: FontWeight.bold,
                  color: Colors.white,
                  letterSpacing: 4, // 3'ten 4'e
                  shadows: [
                    Shadow(
                      offset: Offset(0, 3), // 2'den 3'e
                      blurRadius: 6, // 4'ten 6'ya
                      color: Colors.black26,
                    ),
                  ],
                ),
              ),
              const SizedBox(height: 6), // 4'ten 6'ya
              // Medical cross - büyütüldü
              Icon(
                Icons.medical_services,
                color: Colors.green.shade400,
                size: 32, // 24'ten 32'ye büyütüldü
              ),
              const SizedBox(height: 12), // 8'den 12'ye
              // Subtitle - büyütüldü
              Text(
                AppLocalizations.of(context)!.appSubtitle,
                style: TextStyle(
                  fontSize: 14, // 12'den 14'e büyütüldü
                  fontWeight: FontWeight.w500,
                  color: Colors.white.withOpacity(0.9),
                  letterSpacing: 1.0, // 0.8'den 1.0'a
                ),
              ),
            ],
          ),
        );
      },
    );
  }

  // Tıbbi yükleme indikatörü
  Widget _buildMedicalLoadingIndicator() {
    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        // EKG benzeri loading animasyonu
        SizedBox(
          width: 100,
          height: 30,
          child: AnimatedBuilder(
            animation: _dotsController,
            builder: (context, child) {
              return CustomPaint(painter: EKGPainter(_dotsController.value));
            },
          ),
        ),
        const SizedBox(width: 20),
        // Yükleniyor yazısı
        Text(
          AppLocalizations.of(context)!.loadingAnesthesiaData,
          style: TextStyle(
            color: Colors.white.withOpacity(0.8),
            fontSize: 14,
            letterSpacing: 0.5,
          ),
        ),
      ],
    );
  }
}

// Heartbeat line painter
class HeartbeatPainter extends CustomPainter {
  final double progress;

  HeartbeatPainter(this.progress);

  @override
  void paint(Canvas canvas, Size size) {
    final paint =
        Paint()
          ..color = Colors.white.withOpacity(0.3)
          ..strokeWidth = 2
          ..style = PaintingStyle.stroke;

    final path = Path();
    final width = size.width;
    final height = size.height;
    final centerY = height / 2;

    // Heartbeat pattern
    path.moveTo(0, centerY);

    final segmentWidth = width / 8;
    final animatedX = progress * width;

    for (int i = 0; i < 8; i++) {
      final x = i * segmentWidth;
      if (x < animatedX) {
        if (i == 3) {
          // Heartbeat spike
          path.lineTo(x, centerY);
          path.lineTo(x + segmentWidth * 0.2, centerY - 20);
          path.lineTo(x + segmentWidth * 0.4, centerY + 30);
          path.lineTo(x + segmentWidth * 0.6, centerY - 15);
          path.lineTo(x + segmentWidth * 0.8, centerY);
          path.lineTo(x + segmentWidth, centerY);
        } else {
          path.lineTo(x + segmentWidth, centerY);
        }
      }
    }

    canvas.drawPath(path, paint);
  }

  @override
  bool shouldRepaint(CustomPainter oldDelegate) => true;
}

// EKG loading painter
class EKGPainter extends CustomPainter {
  final double progress;

  EKGPainter(this.progress);

  @override
  void paint(Canvas canvas, Size size) {
    final paint =
        Paint()
          ..color = Colors.cyan.shade300
          ..strokeWidth = 2
          ..style = PaintingStyle.stroke;

    final path = Path();
    final width = size.width;
    final height = size.height;
    final centerY = height / 2;

    path.moveTo(0, centerY);

    // Create EKG-like wave pattern
    for (double x = 0; x < width; x += 1) {
      final normalizedX = (x + progress * width * 2) % width;
      double y = centerY;

      // Create heartbeat pattern
      if (normalizedX > width * 0.3 && normalizedX < width * 0.7) {
        final localProgress = (normalizedX - width * 0.3) / (width * 0.4);
        if (localProgress < 0.2) {
          y = centerY + sin(localProgress * pi * 5) * 10;
        } else if (localProgress < 0.4) {
          y = centerY - 15;
        } else if (localProgress < 0.6) {
          y = centerY + 20;
        } else if (localProgress < 0.8) {
          y = centerY - 8;
        } else {
          y = centerY;
        }
      }

      path.lineTo(x, y);
    }

    canvas.drawPath(path, paint);
  }

  @override
  bool shouldRepaint(CustomPainter oldDelegate) => true;
}
