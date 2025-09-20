import 'package:flutter/material.dart';
import '../theme/app_theme.dart';
import 'package:flutter/gestures.dart';
import './register_screen.dart';
import '../services/auth_service.dart';
import '../l10n/app_localizations.dart';

class LoginScreen extends StatefulWidget {
  const LoginScreen({Key? key}) : super(key: key);

  @override
  _LoginScreenState createState() => _LoginScreenState();
}

class _LoginScreenState extends State<LoginScreen>
    with SingleTickerProviderStateMixin {
  final _formKey = GlobalKey<FormState>();
  final _emailController = TextEditingController();
  final _passwordController = TextEditingController();
  bool _isPasswordVisible = false;
  bool _isLoading = false;
  String _errorMessage = '';

  final AuthService _authService = AuthService();

  AnimationController? _animationController;
  Animation<double>? _fadeAnimation;
  Animation<Offset>? _slideAnimation;

  @override
  void initState() {
    super.initState();
    _initializeAnimations();
  }

  void _initializeAnimations() {
    _animationController = AnimationController(
      vsync: this,
      duration: const Duration(milliseconds: 800),
    );

    _fadeAnimation = Tween<double>(begin: 0.0, end: 1.0).animate(
      CurvedAnimation(parent: _animationController!, curve: Curves.easeInOut),
    );

    _slideAnimation = Tween<Offset>(
      begin: const Offset(0, 0.1),
      end: Offset.zero,
    ).animate(
      CurvedAnimation(parent: _animationController!, curve: Curves.easeInOut),
    );

    _animationController!.forward();
  }

  @override
  void dispose() {
    _animationController?.dispose();
    _emailController.dispose();
    _passwordController.dispose();
    super.dispose();
  }

  // Hata mesajlarını çevir
  String _getErrorMessage(dynamic error) {
    final errorString = error.toString().toLowerCase();
    
    if (errorString.contains('user-not-found')) {
      return AppLocalizations.of(context)!.userNotFoundShort;
    } else if (errorString.contains('wrong-password')) {
      return AppLocalizations.of(context)!.wrongPasswordShort;
    } else if (errorString.contains('invalid-credential')) {
      return AppLocalizations.of(context)!.invalidCredential;
    } else if (errorString.contains('too-many-requests')) {
      return AppLocalizations.of(context)!.tooManyRequests;
    } else if (errorString.contains('account-disabled')) {
      return AppLocalizations.of(context)!.accountDisabled;
    } else if (errorString.contains('network')) {
      return AppLocalizations.of(context)!.networkError;
    } else if (errorString.contains('server')) {
      return AppLocalizations.of(context)!.serverError;
    } else {
      return AppLocalizations.of(context)!.loginFailed;
    }
  }

  // Şifre sıfırlama hata mesajlarını çevir
  String _getPasswordResetErrorMessage(dynamic error) {
    final errorString = error.toString().toLowerCase();
    
    if (errorString.contains('user-not-found')) {
      return AppLocalizations.of(context)!.userNotFoundShort;
    } else if (errorString.contains('network')) {
      return AppLocalizations.of(context)!.networkError;
    } else if (errorString.contains('server')) {
      return AppLocalizations.of(context)!.serverError;
    } else if (errorString.contains('too-many-requests')) {
      return AppLocalizations.of(context)!.tooManyRequests;
    } else {
      return AppLocalizations.of(context)!.passwordResetFailed;
    }
  }

  // Giriş işlemini gerçekleştir
  Future<void> _signIn() async {
    if (_formKey.currentState?.validate() ?? false) {
      setState(() {
        _isLoading = true;
        _errorMessage = '';
      });

      try {
        final user = await _authService.signInWithEmailAndPassword(
          _emailController.text.trim(),
          _passwordController.text.trim(),
        );

        if (user != null && mounted) {
          // Admin kontrolü
          final isAdmin = await _authService.isUserAdmin();

          // Kullanıcı tipine göre yönlendirme
          if (isAdmin) {
            Navigator.of(context).pushReplacementNamed('/admin');
          } else {
            Navigator.of(context).pushReplacementNamed('/home');
          }
        }
      } catch (e) {
        setState(() {
          _errorMessage = _getErrorMessage(e);
        });
      } finally {
        if (mounted) {
          setState(() {
            _isLoading = false;
          });
        }
      }
    }
  }

  Future<void> _resetPassword() async {
    final email = _emailController.text.trim();
    if (email.isEmpty) {
      setState(() {
        _errorMessage = AppLocalizations.of(context)!.emailRequiredForResetShort;
      });
      return;
    }

    // E-posta formatı kontrolü
    if (!RegExp(r'^[\w-\.]+@([\w-]+\.)+[\w-]{2,4}$').hasMatch(email)) {
      setState(() {
        _errorMessage = AppLocalizations.of(context)!.invalidEmailFormatShort;
      });
      return;
    }

    try {
      setState(() {
        _isLoading = true;
        _errorMessage = '';
      });

      await _authService.resetPassword(email);

      if (mounted) {
        // Başarı mesajını daha detaylı göster
        showDialog(
          context: context,
          builder: (context) => AlertDialog(
            backgroundColor: Colors.grey.shade900,
            shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(16),
              side: BorderSide(color: Colors.green, width: 2),
            ),
            title: Row(
              children: [
                Icon(Icons.mark_email_read, color: Colors.green, size: 28),
                SizedBox(width: 12),
                Text(
                  AppLocalizations.of(context)!.emailSentSuccessfully,
                  style: TextStyle(
                    color: Colors.green,
                    fontWeight: FontWeight.bold,
                  ),
                ),
              ],
            ),
            content: Column(
              mainAxisSize: MainAxisSize.min,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  AppLocalizations.of(context)!.passwordResetEmailSent,
                  style: TextStyle(color: Colors.white, fontWeight: FontWeight.w500),
                ),
                SizedBox(height: 8),
                Container(
                  padding: EdgeInsets.all(12),
                  decoration: BoxDecoration(
                    color: Colors.grey.shade800,
                    borderRadius: BorderRadius.circular(8),
                  ),
                  child: Text(
                    email,
                    style: TextStyle(
                      color: Colors.blue.shade300,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                ),
                SizedBox(height: 16),
                Container(
                  padding: EdgeInsets.all(12),
                  decoration: BoxDecoration(
                    color: Colors.blue.shade900,
                    borderRadius: BorderRadius.circular(8),
                  ),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        '📧 ${AppLocalizations.of(context)!.checkEmailInbox}',
                        style: TextStyle(
                          color: Colors.white,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                      SizedBox(height: 8),
                      Text(
                        '• E-posta kutunuzu kontrol edin\n• Spam/önemsiz klasörünü kontrol edin\n• E-postadaki linke tıklayın\n• Yeni şifrenizi belirleyin\n• Uygulamaya geri dönün',
                        style: TextStyle(color: Colors.white70),
                      ),
                    ],
                  ),
                ),
              ],
            ),
            actions: [
              TextButton(
                onPressed: () => Navigator.of(context).pop(),
                style: TextButton.styleFrom(
                  backgroundColor: Colors.green,
                  foregroundColor: Colors.white,
                  padding: EdgeInsets.symmetric(horizontal: 24, vertical: 12),
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(8),
                  ),
                ),
                child: Text('Anladım', style: TextStyle(fontWeight: FontWeight.bold)),
              ),
            ],
          ),
        );
      }
      } catch (e) {
        setState(() {
          _errorMessage = _getPasswordResetErrorMessage(e);
        });
      } finally {
        if (mounted) {
          setState(() {
            _isLoading = false;
          });
        }
      }
  }

  Widget _buildGradientButton({
    required String text,
    required VoidCallback onPressed,
    bool isLoading = false,
  }) {
    final size = MediaQuery.of(context).size;
    final isVerySmallScreen = size.width < 400;
    final isSmallScreen = size.width < 600;
    final hasAndroidNavigation = size.height < 700;
    final isVeryShortScreen = size.height < 600;
    
    return Container(
      height: isVeryShortScreen ? 42 :
              hasAndroidNavigation ? (isVerySmallScreen ? 42 : 46) :
              isVerySmallScreen ? 48 : isSmallScreen ? 52 : 55,
      width: double.infinity,
      decoration: BoxDecoration(
        gradient: AppTheme.buttonGradient,
        borderRadius: BorderRadius.circular(16),
        boxShadow: AppTheme.getShadow(
          color: Colors.blue,
          opacity: 0.3,
          blurRadius: 10,
        ),
      ),
      child: ElevatedButton(
        onPressed: isLoading ? null : onPressed,
        style: ElevatedButton.styleFrom(
          backgroundColor: Colors.transparent,
          disabledBackgroundColor: Colors.transparent,
          shadowColor: Colors.transparent,
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(16),
          ),
        ),
        child:
            isLoading
                ? const SizedBox(
                  height: 24,
                  width: 24,
                  child: CircularProgressIndicator(
                    color: Colors.white,
                    strokeWidth: 3,
                  ),
                )
                : Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    const Icon(Icons.login, color: Colors.white),
                    const SizedBox(width: 8),
                    Text(
                      text,
                      style: TextStyle(
                        color: Colors.white,
                        fontSize: isVerySmallScreen ? 14 : 
                                 isSmallScreen ? 15 : 16,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                  ],
                ),
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    final localizations = AppLocalizations.of(context)!;
    final size = MediaQuery.of(context).size;
    final screenWidth = size.width;
    final screenHeight = size.height;
    
    // Android navigasyon tuşları için ekran yüksekliği kontrolü
    final hasAndroidNavigation = screenHeight < 700; // Android navigasyon tuşları açık
    final isVeryShortScreen = screenHeight < 600; // Çok kısa ekranlar
    
    // Responsive breakpoints
    final isSmallScreen = screenWidth < 600;
    final isVerySmallScreen = screenWidth < 400;
    final isTablet = screenWidth >= 768;
    
    // Responsive dimensions - Android navigasyon tuşları durumunda daha küçük
    final logoSize = isVeryShortScreen ? 100.0 :
                     hasAndroidNavigation ? (isVerySmallScreen ? 100.0 : 120.0) :
                     isVerySmallScreen ? 120.0 : 
                     isSmallScreen ? 160.0 : 
                     isTablet ? 200.0 : 220.0;
    
    final containerSize = isVeryShortScreen ? 120.0 :
                         hasAndroidNavigation ? (isVerySmallScreen ? 120.0 : 150.0) :
                         isVerySmallScreen ? 150.0 : 
                         isSmallScreen ? 200.0 : 
                         isTablet ? 250.0 : 300.0;
    
    final horizontalPadding = isVeryShortScreen ? 12.0 :
                             hasAndroidNavigation ? (isVerySmallScreen ? 12.0 : 16.0) :
                             isVerySmallScreen ? 16.0 :
                             isSmallScreen ? 24.0 :
                             isTablet ? screenWidth * 0.15 :
                             screenWidth * 0.2;
    
    final formPadding = isVeryShortScreen ? 12.0 :
                       hasAndroidNavigation ? (isVerySmallScreen ? 12.0 : 16.0) :
                       isVerySmallScreen ? 16.0 :
                       isSmallScreen ? 20.0 :
                       isTablet ? 24.0 : 28.0;

    if (_animationController == null ||
        _fadeAnimation == null ||
        _slideAnimation == null) {
      return const Scaffold(body: Center(child: CircularProgressIndicator()));
    }

    return Scaffold(
      body: Container(
        width: double.infinity,
        height: double.infinity,
        decoration: BoxDecoration(gradient: AppTheme.backgroundGradient),
        child: SafeArea(
          child: Stack(
            children: [
              // Ana içerik
              Center(
                child: SingleChildScrollView(
                  child: Padding(
                    padding: EdgeInsets.symmetric(
                      horizontal: horizontalPadding,
                      vertical: isVeryShortScreen ? 8 :
                               hasAndroidNavigation ? 12 :
                               isVerySmallScreen ? 16 : 24,
                    ),
                    child: FadeTransition(
                      opacity: _fadeAnimation!,
                      child: SlideTransition(
                        position: _slideAnimation!,
                        child: Column(
                          mainAxisAlignment: MainAxisAlignment.center,
                          crossAxisAlignment: CrossAxisAlignment.center,
                          children: [
                            // Arka plan dekoratif öğeleri
                            Stack(
                          alignment: Alignment.center,
                          children: [
                            // Arka plan ışıltıları
                            Container(
                              width: containerSize,
                              height: containerSize,
                              decoration: BoxDecoration(
                                shape: BoxShape.circle,
                                gradient: RadialGradient(
                                  colors: [
                                    Colors.cyan.withOpacity(0.15),
                                    Colors.transparent,
                                  ],
                                ),
                              ),
                            ),

                            // Logo - ALP Logosu
                            TweenAnimationBuilder<double>(
                              tween: Tween(begin: 0.8, end: 1.0),
                              duration: const Duration(seconds: 2),
                              curve: Curves.elasticOut,
                              builder: (context, value, child) {
                                return Transform.scale(
                                  scale: value,
                                  child: Container(
                                    width: logoSize,
                                    height: logoSize,
                                    decoration: BoxDecoration(
                                      shape: BoxShape.circle,
                                      color: Colors.white,
                                      boxShadow: [
                                        BoxShadow(
                                          color: Colors.cyan.withOpacity(0.3),
                                          blurRadius: 20,
                                          spreadRadius: 5,
                                        ),
                                        BoxShadow(
                                          color: Colors.blue.withOpacity(0.2),
                                          blurRadius: 30,
                                          spreadRadius: 10,
                                        ),
                                      ],
                                    ),
                                    child: ClipRRect(
                                      borderRadius: BorderRadius.circular(logoSize / 2),
                                      child: Image.asset(
                                        'assets/images/logo.png',
                                        width: logoSize,
                                        height: logoSize,
                                        fit: BoxFit.cover,
                                        errorBuilder: (
                                          context,
                                          error,
                                          stackTrace,
                                        ) {
                                          return Container(
                                            width: logoSize,
                                            height: logoSize,
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
                                              borderRadius:
                                                  BorderRadius.circular(logoSize / 2),
                                            ),
                                            child: Column(
                                              mainAxisAlignment:
                                                  MainAxisAlignment.center,
                                              children: [
                                                Icon(
                                                  Icons.favorite,
                                                  color: Colors.red.shade400,
                                                  size: isVerySmallScreen ? 20 : 
                                                         isSmallScreen ? 28 : 
                                                         isTablet ? 32 : 36,
                                                ),
                                                SizedBox(height: isVerySmallScreen ? 4 : 8),
                                                Text(
                                                  'ALP',
                                                  style: TextStyle(
                                                    fontSize: isVerySmallScreen ? 20 : 
                                                             isSmallScreen ? 24 : 
                                                             isTablet ? 28 : 32,
                                                    fontWeight: FontWeight.bold,
                                                    color: Colors.white,
                                                    letterSpacing: isVerySmallScreen ? 2 : 3,
                                                  ),
                                                ),
                                                SizedBox(height: isVerySmallScreen ? 2 : 4),
                                                Icon(
                                                  Icons.medical_services,
                                                  color: Colors.green.shade400,
                                                  size: isVerySmallScreen ? 16 : 
                                                         isSmallScreen ? 20 : 
                                                         isTablet ? 22 : 24,
                                                ),
                                              ],
                                            ),
                                          );
                                        },
                                      ),
                                    ),
                                  ),
                                );
                              },
                            ),
                          ],
                        ),

                        SizedBox(height: isVeryShortScreen ? 8 :
                                     hasAndroidNavigation ? 12 :
                                     isVerySmallScreen ? 16 : 24),

                        SizedBox(height: isVeryShortScreen ? 16 :
                                     hasAndroidNavigation ? 20 :
                                     isVerySmallScreen ? 24 : 
                                     isSmallScreen ? 32 : 40),

                        // Form alanı
                        Container(
                          padding: EdgeInsets.all(formPadding),
                          decoration: BoxDecoration(
                            color: Colors.white.withOpacity(0.07),
                            borderRadius: BorderRadius.circular(20),
                            border: Border.all(
                              color: Colors.blue.withOpacity(0.15),
                              width: 1.5,
                            ),
                            boxShadow: [
                              BoxShadow(
                                color: Colors.black.withOpacity(0.1),
                                blurRadius: 15,
                                offset: const Offset(0, 5),
                              ),
                            ],
                          ),
                          child: Form(
                            key: _formKey,
                            child: Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                // Giriş başlığı
                                Row(
                                  children: [
                                    Container(
                                      padding: const EdgeInsets.all(8),
                                      decoration: BoxDecoration(
                                        color: Colors.blue.withOpacity(0.2),
                                        borderRadius: BorderRadius.circular(10),
                                      ),
                                      child: const Icon(
                                        Icons.person_outline,
                                        color: Colors.white,
                                        size: 20,
                                      ),
                                    ),
                                    SizedBox(width: isVerySmallScreen ? 8 : 12),
                                    Text(
                                      localizations.login,
                                      style: TextStyle(
                                        fontSize: isVerySmallScreen ? 18 : 
                                                 isSmallScreen ? 20 : 22,
                                        fontWeight: FontWeight.bold,
                                        color: Colors.white,
                                      ),
                                    ),
                                  ],
                                ),
                                SizedBox(height: isVeryShortScreen ? 8 :
                                             hasAndroidNavigation ? 12 :
                                             isVerySmallScreen ? 16 : 20),

                                // E-posta giriş alanı
                                                                  _buildAnimatedTextField(
                                    controller: _emailController,
                                    label: localizations.email,
                                    hint: localizations.enterEmail,
                                  icon: Icons.email_outlined,
                                  keyboardType: TextInputType.emailAddress,
                                  validator: (value) {
                                    if (value == null || value.isEmpty) {
                                      return localizations.emailRequired;
                                    }
                                    if (!RegExp(
                                      r'^[\w-\.]+@([\w-]+\.)+[\w-]{2,4}$',
                                    ).hasMatch(value)) {
                                      return localizations.invalidEmail;
                                    }
                                    return null;
                                  },
                                ),
                                SizedBox(height: isVeryShortScreen ? 8 :
                                             hasAndroidNavigation ? 10 :
                                             isVerySmallScreen ? 12 : 16),

                                // Şifre giriş alanı
                                                                  _buildAnimatedTextField(
                                    controller: _passwordController,
                                    label: localizations.password,
                                    hint: localizations.enterPassword,
                                  icon: Icons.lock_outline,
                                  obscureText: !_isPasswordVisible,
                                  suffixIcon: IconButton(
                                    icon: Icon(
                                      _isPasswordVisible
                                          ? Icons.visibility_off
                                          : Icons.visibility,
                                      color: Colors.blue,
                                    ),
                                    onPressed: () {
                                      setState(() {
                                        _isPasswordVisible =
                                            !_isPasswordVisible;
                                      });
                                    },
                                  ),
                                  validator: (value) {
                                    if (value == null || value.isEmpty) {
                                      return localizations.passwordRequired;
                                    }
                                    return null;
                                  },
                                ),
                                SizedBox(height: isVeryShortScreen ? 4 :
                                             hasAndroidNavigation ? 6 :
                                             isVerySmallScreen ? 8 : 10),

                                // Şifremi Unuttum linki
                                Align(
                                  alignment: Alignment.centerRight,
                                  child: TextButton(
                                    onPressed: _resetPassword,
                                    style: TextButton.styleFrom(
                                      foregroundColor: Colors.blue.shade300,
                                      textStyle: const TextStyle(
                                        fontSize: 14,
                                        fontWeight: FontWeight.bold,
                                      ),
                                    ),
                                    child: Text(localizations.forgotPassword),
                                  ),
                                ),
                                SizedBox(height: isVeryShortScreen ? 4 :
                                             hasAndroidNavigation ? 6 :
                                             isVerySmallScreen ? 8 : 10),

                                // Hata mesajı
                                if (_errorMessage.isNotEmpty)
                                  TweenAnimationBuilder<double>(
                                    tween: Tween(begin: 0.0, end: 1.0),
                                    duration: const Duration(milliseconds: 400),
                                    curve: Curves.easeOut,
                                    builder: (context, value, child) {
                                      return Transform.scale(
                                        scale: value,
                                        child: Opacity(
                                          opacity: value,
                                          child: Container(
                                            width: double.infinity,
                                            padding: EdgeInsets.all(
                                              isVeryShortScreen ? 8 :
                                              hasAndroidNavigation ? 10 :
                                              isVerySmallScreen ? 10 : 12,
                                            ),
                                            decoration: BoxDecoration(
                                              color: Colors.red.withOpacity(0.1),
                                              borderRadius: BorderRadius.circular(
                                                isVeryShortScreen ? 6 : 8,
                                              ),
                                              border: Border.all(
                                                color: Colors.red.withOpacity(0.3),
                                                width: 1,
                                              ),
                                            ),
                                            child: Row(
                                              children: [
                                                Icon(
                                                  Icons.warning_rounded,
                                                  color: Colors.red,
                                                  size: isVeryShortScreen ? 14 :
                                                         hasAndroidNavigation ? 16 :
                                                         isVerySmallScreen ? 16 : 18,
                                                ),
                                                SizedBox(width: isVeryShortScreen ? 6 :
                                                             hasAndroidNavigation ? 8 :
                                                             isVerySmallScreen ? 8 : 10),
                                                Expanded(
                                                  child: Text(
                                                    _errorMessage,
                                                    style: TextStyle(
                                                      color: Colors.red,
                                                      fontSize: isVeryShortScreen ? 11 :
                                                               hasAndroidNavigation ? 12 :
                                                               isVerySmallScreen ? 12 : 13,
                                                      fontWeight: FontWeight.w500,
                                                      height: 1.2,
                                                    ),
                                                  ),
                                                ),
                                              ],
                                            ),
                                          ),
                                        ),
                                      );
                                    },
                                  ),
                                if (_errorMessage.isNotEmpty)
                                  SizedBox(height: isVeryShortScreen ? 4 :
                                               hasAndroidNavigation ? 6 :
                                               isVerySmallScreen ? 6 : 8),

                                // Giriş yap butonu
                                TweenAnimationBuilder<double>(
                                  tween: Tween(begin: 0.95, end: 1.0),
                                  duration: const Duration(milliseconds: 500),
                                  curve: Curves.elasticOut,
                                  builder: (context, value, child) {
                                    return Transform.scale(
                                      scale: value,
                                      child: _buildGradientButton(
                                        text: localizations.login,
                                        onPressed: _signIn,
                                        isLoading: _isLoading,
                                      ),
                                    );
                                  },
                                ),
                                SizedBox(height: isVeryShortScreen ? 8 :
                                             hasAndroidNavigation ? 12 :
                                             isVerySmallScreen ? 16 : 
                                             isSmallScreen ? 20 : 24),

                                // Kayıt sayfasına yönlendirme
                                Center(
                                  child: RichText(
                                    text: TextSpan(
                                      text: '${localizations.dontHaveAccount} ',
                                      style: TextStyle(
                                        color: Colors.grey,
                                        fontSize: isVerySmallScreen ? 13 : 
                                                 isSmallScreen ? 14 : 15,
                                      ),
                                      children: [
                                        TextSpan(
                                          text: localizations.signUp,
                                          style: TextStyle(
                                            color: Colors.blue.shade300,
                                            fontWeight: FontWeight.bold,
                                            fontSize: isVerySmallScreen ? 13 : 
                                                     isSmallScreen ? 14 : 15,
                                          ),
                                          recognizer:
                                              TapGestureRecognizer()
                                                ..onTap = () {
                                                  Navigator.push(
                                                    context,
                                                    MaterialPageRoute(
                                                      builder:
                                                          (context) =>
                                                              const RegisterScreen(),
                                                    ),
                                                  );
                                                },
                                        ),
                                      ],
                                    ),
                                  ),
                                ),
                              ],
                            ),
                          ),
                        ),
                          ],
                        ),
                      ),
                    ),
                  ),
                ),
              ),
              
              // Dil seçici - sağ üst köşe
              // Dil seçici kaldırıldı - artık uygulama başlangıcında seçiliyor
            ],
          ),
        ),
      ),
    );
  }

  // Animasyonlu metin alanı
  Widget _buildAnimatedTextField({
    required TextEditingController controller,
    required String label,
    required String hint,
    required IconData icon,
    TextInputType keyboardType = TextInputType.text,
    bool obscureText = false,
    Widget? suffixIcon,
    String? Function(String?)? validator,
  }) {
    final size = MediaQuery.of(context).size;
    final isVerySmallScreen = size.width < 400;
    final isSmallScreen = size.width < 600;
    final hasAndroidNavigation = size.height < 700;
    final isVeryShortScreen = size.height < 600;
    return TweenAnimationBuilder<double>(
      tween: Tween(begin: 0.0, end: 1.0),
      duration: const Duration(milliseconds: 500),
      curve: Curves.easeOutCubic,
      builder: (context, value, child) {
        return Opacity(
          opacity: value,
          child: Transform.translate(
            offset: Offset(0, (1 - value) * 20),
            child: TextFormField(
              controller: controller,
              keyboardType: keyboardType,
              obscureText: obscureText,
              style: TextStyle(
                color: Colors.white,
                fontSize: isVeryShortScreen ? 13 :
                         hasAndroidNavigation ? (isVerySmallScreen ? 13 : 14) :
                         isVerySmallScreen ? 14 : 
                         isSmallScreen ? 15 : 16,
              ),
              decoration: InputDecoration(
                labelText: label,
                hintText: hint,
                hintStyle: TextStyle(
                  color: Colors.grey.withOpacity(0.5),
                  fontSize: isVeryShortScreen ? 12 :
                           hasAndroidNavigation ? (isVerySmallScreen ? 12 : 13) :
                           isVerySmallScreen ? 13 : 
                           isSmallScreen ? 14 : 15,
                ),
                labelStyle: TextStyle(
                  color: Colors.blue.shade200,
                  fontWeight: FontWeight.w500,
                  fontSize: isVeryShortScreen ? 12 :
                           hasAndroidNavigation ? (isVerySmallScreen ? 12 : 13) :
                           isVerySmallScreen ? 13 : 
                           isSmallScreen ? 14 : 15,
                ),
                prefixIcon: Icon(icon, color: Colors.blue.shade300),
                suffixIcon: suffixIcon,
                enabledBorder: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(isVerySmallScreen ? 8 : 12),
                  borderSide: BorderSide(
                    color: Colors.blue.withOpacity(0.3),
                    width: 1.5,
                  ),
                ),
                focusedBorder: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(isVerySmallScreen ? 8 : 12),
                  borderSide: BorderSide(color: Colors.blue.shade400, width: 2),
                ),
                errorBorder: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(isVerySmallScreen ? 8 : 12),
                  borderSide: BorderSide(
                    color: Colors.red.shade300,
                    width: 1.5,
                  ),
                ),
                focusedErrorBorder: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(isVerySmallScreen ? 8 : 12),
                  borderSide: BorderSide(color: Colors.red.shade400, width: 2),
                ),
                filled: true,
                fillColor: Colors.white.withOpacity(0.05),
                contentPadding: EdgeInsets.symmetric(
                  horizontal: isVeryShortScreen ? 10 :
                             hasAndroidNavigation ? (isVerySmallScreen ? 10 : 12) :
                             isVerySmallScreen ? 12 : 16,
                  vertical: isVeryShortScreen ? 10 :
                           hasAndroidNavigation ? (isVerySmallScreen ? 10 : 12) :
                           isVerySmallScreen ? 12 : 16,
                ),
              ),
              validator: validator,
            ),
          ),
        );
      },
    );
  }
}
