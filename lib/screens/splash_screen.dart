import 'package:flutter/material.dart';
import 'dart:async';
import 'dart:math';
import '../services/auth_service.dart';
import '../services/tutorial_service.dart';
import '../theme/app_theme.dart';

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
  late Animation<double> _logoRotateAnimation;

  // Metin animasyonları için controller
  late AnimationController _textController;
  late Animation<double> _titleFadeAnimation;
  late Animation<double> _subtitleFadeAnimation;

  // Background pulse efekti için controller
  late AnimationController _pulseController;
  late Animation<double> _pulseAnimation;

  // Yükleme noktaları için controller
  late AnimationController _dotsController;

  // Yükleme tamamlandı animasyonu için controller
  late AnimationController _completionController;
  late Animation<double> _completionAnimation;

  final AuthService _authService = AuthService();
  final TutorialService _tutorialService = TutorialService();

  @override
  void initState() {
    super.initState();

    // Logo animasyonları
    _logoController = AnimationController(
      duration: const Duration(milliseconds: 2000),
      vsync: this,
    );

    _logoScaleAnimation = TweenSequence<double>([
      TweenSequenceItem(
        tween: Tween<double>(
          begin: 0.0,
          end: 1.2,
        ).chain(CurveTween(curve: Curves.easeOutQuad)),
        weight: 60,
      ),
      TweenSequenceItem(
        tween: Tween<double>(
          begin: 1.2,
          end: 1.0,
        ).chain(CurveTween(curve: Curves.elasticOut)),
        weight: 40,
      ),
    ]).animate(_logoController);

    _logoRotateAnimation = Tween<double>(begin: -0.1, end: 0.0).animate(
      CurvedAnimation(
        parent: _logoController,
        curve: const Interval(0.0, 0.5, curve: Curves.easeOut),
      ),
    );

    // Metin animasyonları
    _textController = AnimationController(
      duration: const Duration(milliseconds: 1200),
      vsync: this,
    );

    _titleFadeAnimation = Tween<double>(begin: 0.0, end: 1.0).animate(
      CurvedAnimation(
        parent: _textController,
        curve: const Interval(0.3, 0.7, curve: Curves.easeOut),
      ),
    );

    _subtitleFadeAnimation = Tween<double>(begin: 0.0, end: 1.0).animate(
      CurvedAnimation(
        parent: _textController,
        curve: const Interval(0.5, 0.9, curve: Curves.easeOut),
      ),
    );

    // Background pulse efekti
    _pulseController = AnimationController(
      duration: const Duration(milliseconds: 1500),
      vsync: this,
    )..repeat(reverse: true);

    _pulseAnimation = Tween<double>(begin: 1.0, end: 1.1).animate(
      CurvedAnimation(parent: _pulseController, curve: Curves.easeInOut),
    );

    // Yükleme noktaları animasyonu
    _dotsController = AnimationController(
      duration: const Duration(milliseconds: 1000),
      vsync: this,
    )..repeat();

    // Yükleme tamamlandı animasyonu
    _completionController = AnimationController(
      duration: const Duration(milliseconds: 800),
      vsync: this,
    );

    _completionAnimation = CurvedAnimation(
      parent: _completionController,
      curve: Curves.easeOutBack,
    );

    // Animasyonları başlat
    _startAnimations();

    // Giriş durumunu kontrol et
    _checkLoginStatus();
  }

  Future<void> _startAnimations() async {
    // Logo animasyonunu başlat
    await _logoController.forward();

    // Metin animasyonunu başlat
    await _textController.forward();

    // Yükleme tamamlandı animasyonunu sonradan başlatacağız (login check sonrası)
  }

  Future<void> _checkLoginStatus() async {
    // 3 saniye bekleyerek splash screen'i göster
    await Future.delayed(const Duration(seconds: 3));

    if (!mounted) return;

    // Tamamlandı animasyonunu başlat
    await _completionController.forward();

    if (!mounted) return;

    // Kullanıcının giriş durumunu kontrol et
    final currentUser = _authService.currentUser;

    if (currentUser != null) {
      // Kullanıcı admin mi kontrol et
      final isAdmin = await _authService.isUserAdmin();

      if (isAdmin) {
        // Admin ise admin paneline yönlendir
        Navigator.of(context).pushReplacementNamed('/admin');
      } else {
        // Normal kullanıcı ise ana sayfaya yönlendir
        Navigator.of(context).pushReplacementNamed('/home');
      }
    } else {
      // Kullanıcı giriş yapmamışsa login sayfasına yönlendir
      Navigator.of(context).pushReplacementNamed('/login');
    }
  }

  @override
  void dispose() {
    _logoController.dispose();
    _textController.dispose();
    _pulseController.dispose();
    _dotsController.dispose();
    _completionController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        width: double.infinity,
        height: double.infinity,
        decoration: BoxDecoration(gradient: AppTheme.backgroundGradient),
        child: Stack(
          alignment: Alignment.center,
          children: [
            // Arka plan pulse efekti
            AnimatedBuilder(
              animation: _pulseAnimation,
              builder: (context, child) {
                return Transform.scale(
                  scale: _pulseAnimation.value,
                  child: Container(
                    width: 220,
                    height: 220,
                    decoration: BoxDecoration(
                      shape: BoxShape.circle,
                      gradient: RadialGradient(
                        colors: [
                          Colors.blue.withOpacity(0.2),
                          Colors.transparent,
                        ],
                        stops: const [0.4, 1.0],
                      ),
                    ),
                  ),
                );
              },
            ),

            // İkinci arka plan halkası
            Container(
              width: 180,
              height: 180,
              decoration: BoxDecoration(
                shape: BoxShape.circle,
                border: Border.all(
                  color: Colors.purple.withOpacity(0.2),
                  width: 2,
                ),
              ),
            ),

            // Ana içerik
            SafeArea(
              child: Center(
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    // Logo animasyonu
                    AnimatedBuilder(
                      animation: Listenable.merge([
                        _logoScaleAnimation,
                        _logoRotateAnimation,
                        _completionAnimation,
                      ]),
                      builder: (context, child) {
                        return Transform.scale(
                          scale: _logoScaleAnimation.value,
                          child: Transform.rotate(
                            angle: _logoRotateAnimation.value * pi * 2,
                            child: AnimatedBuilder(
                              animation: _completionAnimation,
                              builder: (context, child) {
                                // Animasyon değerinin 0 ile 1 arasında olduğundan emin oluyoruz
                                final moveOffset =
                                    _completionAnimation.value.clamp(0.0, 1.0) *
                                    40;
                                return Transform.translate(
                                  offset: Offset(0, -moveOffset),
                                  child: Container(
                                    padding: const EdgeInsets.all(3),
                                    decoration: BoxDecoration(
                                      shape: BoxShape.circle,
                                      gradient: LinearGradient(
                                        colors: [
                                          Colors.purple.shade400,
                                          Colors.blue.shade500,
                                        ],
                                        begin: Alignment.topLeft,
                                        end: Alignment.bottomRight,
                                      ),
                                      boxShadow: [
                                        BoxShadow(
                                          color: Colors.blue.withOpacity(0.4),
                                          blurRadius: 15,
                                          spreadRadius: 2,
                                        ),
                                      ],
                                    ),
                                    child: Hero(
                                      tag: 'app_logo',
                                      child: CircleAvatar(
                                        radius: 60,
                                        backgroundColor: Colors.grey[900],
                                        child: const Icon(
                                          Icons.quiz,
                                          color: Colors.white,
                                          size: 70,
                                        ),
                                      ),
                                    ),
                                  ),
                                );
                              },
                            ),
                          ),
                        );
                      },
                    ),
                    const SizedBox(height: 40),

                    // Uygulama adı
                    FadeTransition(
                      opacity: _titleFadeAnimation,
                      child: AnimatedBuilder(
                        animation: _completionAnimation,
                        builder: (context, child) {
                          // Animasyon değerinin 0 ile 1 arasında olduğundan emin oluyoruz
                          final moveOffset =
                              _completionAnimation.value.clamp(0.0, 1.0) * 20;
                          return Transform.translate(
                            offset: Offset(0, -moveOffset),
                            child: ShaderMask(
                              shaderCallback:
                                  (bounds) => LinearGradient(
                                    colors: [
                                      Colors.purple.shade400,
                                      Colors.blue.shade400,
                                    ],
                                    begin: Alignment.topLeft,
                                    end: Alignment.bottomRight,
                                  ).createShader(bounds),
                              child: const Text(
                                'Quiz Uygulaması',
                                style: TextStyle(
                                  fontSize: 32,
                                  fontWeight: FontWeight.bold,
                                  color: Colors.white,
                                  letterSpacing: 1.2,
                                ),
                                textAlign: TextAlign.center,
                              ),
                            ),
                          );
                        },
                      ),
                    ),
                    const SizedBox(height: 10),

                    // Alt başlık
                    FadeTransition(
                      opacity: _subtitleFadeAnimation,
                      child: AnimatedBuilder(
                        animation: _completionAnimation,
                        builder: (context, child) {
                          // Animasyon değerinin 0 ile 1 arasında olduğundan emin oluyoruz
                          final moveOffset =
                              _completionAnimation.value.clamp(0.0, 1.0) * 15;
                          return Transform.translate(
                            offset: Offset(0, -moveOffset),
                            child: Text(
                              'Bilgini test et, kendini geliştir',
                              style: TextStyle(
                                color: Colors.grey[400],
                                fontSize: 16,
                                letterSpacing: 0.5,
                              ),
                              textAlign: TextAlign.center,
                            ),
                          );
                        },
                      ),
                    ),

                    const SizedBox(height: 60),

                    // Yükleme indikatörü ve tamamlandı indikatörü
                    SizedBox(
                      height: 40,
                      child: Stack(
                        alignment: Alignment.center,
                        children: [
                          // Yükleme indikatörü (completion öncesi)
                          AnimatedBuilder(
                            animation: _completionAnimation,
                            builder: (context, child) {
                              // Animasyon değerinin 0 ile 1 arasında olduğundan emin oluyoruz
                              final fadeValue = (1 - _completionAnimation.value)
                                  .clamp(0.0, 1.0);
                              return Opacity(
                                opacity: fadeValue,
                                child: _buildLoadingDots(),
                              );
                            },
                          ),

                          // Tamamlandı indikatörü (completion sonrası)
                          AnimatedBuilder(
                            animation: _completionAnimation,
                            builder: (context, child) {
                              // Animasyon değerinin 0 ile 1 arasında olduğundan emin oluyoruz
                              final fadeValue = _completionAnimation.value
                                  .clamp(0.0, 1.0);
                              return Opacity(
                                opacity: fadeValue,
                                child: Transform.scale(
                                  scale: fadeValue,
                                  child: const Icon(
                                    Icons.check_circle,
                                    color: Colors.green,
                                    size: 40,
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
          ],
        ),
      ),
    );
  }

  // Yükleniyor animasyonu
  Widget _buildLoadingDots() {
    return SizedBox(
      width: 80,
      height: 30,
      child: Row(
        mainAxisAlignment: MainAxisAlignment.center,
        children: List.generate(3, (index) {
          return AnimatedBuilder(
            animation: _dotsController,
            builder: (context, child) {
              final sinValue = sin(
                (_dotsController.value * 6.28) + (index * 1.0),
              );
              return Container(
                margin: const EdgeInsets.symmetric(horizontal: 4),
                child: Transform.translate(
                  offset: Offset(0, sinValue * 6),
                  child: Container(
                    width: 12,
                    height: 12,
                    decoration: BoxDecoration(
                      color: Colors.white,
                      shape: BoxShape.circle,
                      boxShadow: [
                        BoxShadow(
                          color: Colors.blue.withOpacity(0.5),
                          blurRadius: 8,
                          spreadRadius: 1,
                        ),
                      ],
                    ),
                  ),
                ),
              );
            },
          );
        }),
      ),
    );
  }
}
