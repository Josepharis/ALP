import 'package:flutter/material.dart';
import '../l10n/app_localizations.dart';


import '../theme/app_theme.dart';
import 'package:flutter/gestures.dart';
import '../services/auth_service.dart';
import '../services/user_service.dart';

class RegisterScreen extends StatefulWidget {
  const RegisterScreen({Key? key}) : super(key: key);

  @override
  _RegisterScreenState createState() => _RegisterScreenState();
}

class _RegisterScreenState extends State<RegisterScreen>
    with SingleTickerProviderStateMixin {
  final _formKey = GlobalKey<FormState>();
  final _nameController = TextEditingController();
  final _emailController = TextEditingController();
  final _passwordController = TextEditingController();
  final _confirmPasswordController = TextEditingController();
  final _titleController = TextEditingController();
  bool _isPasswordVisible = false;
  bool _isConfirmPasswordVisible = false;
  bool _isLoading = false;
  bool _agreeToTerms = false;
  String _errorMessage = '';

  final AuthService _authService = AuthService();
  final UserService _userService = UserService();

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
    _nameController.dispose();
    _emailController.dispose();
    _passwordController.dispose();
    _confirmPasswordController.dispose();
    _titleController.dispose();
    super.dispose();
  }

  // Kayıt işlemini gerçekleştir
  Future<void> _register() async {
    if (!_agreeToTerms) {
      setState(() {
        _errorMessage =
            AppLocalizations.of(context)!.termsRequired;
      });
      return;
    }

    if (_formKey.currentState?.validate() ?? false) {
      setState(() {
        _isLoading = true;
        _errorMessage = '';
      });

      try {
        final user = await _authService.registerWithEmailAndPassword(
          _emailController.text.trim(),
          _passwordController.text.trim(),
          displayName: _nameController.text.trim(),
          title: _titleController.text.trim(),
        );

        if (user != null && mounted) {
          try {
            // Varsayılan kullanıcı ayarlarını oluştur
            await _userService.createDefaultUserSettings();
            print('✅ Varsayılan ayarlar oluşturuldu');
          } catch (e) {
            print('⚠️ Varsayılan ayarlar oluşturulamadı: $e');
            // Ayarlar oluşturulamasa bile devam et
          }

          // Ana sayfaya yönlendir
          if (mounted) {
            Navigator.of(context).pushReplacementNamed('/home');
          }
        }
      } catch (e) {
        setState(() {
          _errorMessage = e.toString();
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

  Widget _buildGradientButton({
    required String text,
    required VoidCallback onPressed,
    bool isLoading = false,
  }) {
    return Container(
      height: 55,
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
                    const Icon(Icons.person_add, color: Colors.white),
                    const SizedBox(width: 8),
                    Text(
                      text,
                      style: const TextStyle(
                        color: Colors.white,
                        fontSize: 16,
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
    final size = MediaQuery.of(context).size;
    final isSmallScreen = size.width < 600;

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
                // Geri dönüş butonu
                Positioned(
                  top: 16,
                  left: 16,
                  child: GestureDetector(
                    onTap: () {
                      print('Geri butonu tıklandı');
                      try {
                        if (Navigator.canPop(context)) {
                          Navigator.pop(context);
                        } else {
                          Navigator.of(context).pushReplacementNamed('/login');
                        }
                      } catch (e) {
                        print('Geri butonu navigate hatası: $e');
                        Navigator.of(context).pushReplacementNamed('/login');
                      }
                    },
                    child: Container(
                      padding: const EdgeInsets.all(12),
                      decoration: BoxDecoration(
                        color: Colors.white.withOpacity(0.15),
                        shape: BoxShape.circle,
                        border: Border.all(
                          color: Colors.white.withOpacity(0.3),
                          width: 1.5,
                        ),
                        boxShadow: [
                          BoxShadow(
                            color: Colors.black.withOpacity(0.1),
                            blurRadius: 8,
                            offset: const Offset(0, 2),
                          ),
                        ],
                      ),
                      child: const Icon(
                        Icons.arrow_back_ios_new,
                        color: Colors.white,
                        size: 22,
                      ),
                    ),
                  ),
                ),

                // Ana içerik
                Center(
                  child: SingleChildScrollView(
                    child: Padding(
                      padding: EdgeInsets.symmetric(
                        horizontal: isSmallScreen ? 24 : size.width * 0.1,
                        vertical: 16,
                      ),
                      child: FadeTransition(
                        opacity: _fadeAnimation!,
                        child: SlideTransition(
                          position: _slideAnimation!,
                          child: Column(
                            mainAxisAlignment: MainAxisAlignment.center,
                            crossAxisAlignment: CrossAxisAlignment.center,
                            children: [
                              // Logo ve başlık kısmı
                              TweenAnimationBuilder<double>(
                                tween: Tween(begin: 0.8, end: 1.0),
                                duration: const Duration(seconds: 1),
                                curve: Curves.elasticOut,
                                builder: (context, value, child) {
                                  return Transform.scale(
                                    scale: value,
                                    child: Container(
                                      padding: const EdgeInsets.all(3),
                                      decoration: BoxDecoration(
                                        shape: BoxShape.circle,
                                        gradient: LinearGradient(
                                          colors: [
                                            Colors.purple.shade500,
                                            Colors.blue,
                                          ],
                                          begin: Alignment.topLeft,
                                          end: Alignment.bottomRight,
                                        ),
                                        boxShadow: [
                                          BoxShadow(
                                            color: Colors.purple.withOpacity(
                                              0.3,
                                            ),
                                            blurRadius: 15,
                                            spreadRadius: 2,
                                          ),
                                        ],
                                      ),
                                      child: CircleAvatar(
                                        radius: 42,
                                        backgroundColor: Colors.grey[900],
                                        child: const Icon(
                                          Icons.person_add,
                                          color: Colors.white,
                                          size: 46,
                                        ),
                                      ),
                                    ),
                                  );
                                },
                              ),
                              const SizedBox(height: 16),

                              // Başlık
                              ShaderMask(
                                shaderCallback:
                                    (bounds) => LinearGradient(
                                      colors: [
                                        Colors.purple.shade400,
                                        Colors.blue.shade400,
                                      ],
                                      begin: Alignment.topLeft,
                                      end: Alignment.bottomRight,
                                    ).createShader(bounds),
                                child: Text(
                                  AppLocalizations.of(context)!.createNewAccount,
                                  style: TextStyle(
                                    fontSize: 26,
                                    fontWeight: FontWeight.bold,
                                    color: Colors.white,
                                  ),
                                ),
                              ),
                              const SizedBox(height: 8),

                              Text(
                                AppLocalizations.of(context)!.joinQuizApp,
                                style: TextStyle(
                                  fontSize: 14,
                                  color: Colors.grey,
                                ),
                                textAlign: TextAlign.center,
                              ),
                              const SizedBox(height: 24),

                              // Form alanı
                              Container(
                                padding: const EdgeInsets.all(22),
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
                                    crossAxisAlignment:
                                        CrossAxisAlignment.start,
                                    children: [
                                      // Kayıt başlığı
                                      Row(
                                        children: [
                                          Container(
                                            padding: const EdgeInsets.all(8),
                                            decoration: BoxDecoration(
                                              color: Colors.blue.withOpacity(
                                                0.2,
                                              ),
                                              borderRadius:
                                                  BorderRadius.circular(10),
                                            ),
                                            child: const Icon(
                                              Icons.app_registration,
                                              color: Colors.white,
                                              size: 20,
                                            ),
                                          ),
                                          const SizedBox(width: 12),
                                          Text(
                                            AppLocalizations.of(context)!.signUp,
                                            style: TextStyle(
                                              fontSize: 22,
                                              fontWeight: FontWeight.bold,
                                              color: Colors.white,
                                            ),
                                          ),
                                        ],
                                      ),
                                      const SizedBox(height: 20),

                                      // İsim alanı
                                      TextFormField(
                                        controller: _nameController,
                                        decoration: InputDecoration(
                                          labelText: AppLocalizations.of(context)!.fullName,
                                          hintText: AppLocalizations.of(context)!.enterFullName,
                                          prefixIcon: const Icon(Icons.person),
                                          border: OutlineInputBorder(
                                            borderRadius: BorderRadius.circular(
                                              16,
                                            ),
                                          ),
                                          filled: true,
                                          fillColor: Colors.white.withOpacity(
                                            0.1,
                                          ),
                                        ),
                                        validator: (value) {
                                          if (value == null ||
                                              value.trim().isEmpty) {
                                            return AppLocalizations.of(context)!.fullNameRequired;
                                          }
                                          if (value.trim().length < 2) {
                                            return AppLocalizations.of(context)!.nameTooShort;
                                          }
                                          if (!RegExp(
                                            r'^[a-zA-ZğüşıöçĞÜŞİÖÇ\s]+$',
                                          ).hasMatch(value.trim())) {
                                            return AppLocalizations.of(context)!.invalidCharacters;
                                          }
                                          return null;
                                        },
                                      ),
                                      const SizedBox(height: 20),

                                      // Unvan alanı
                                      TextFormField(
                                        controller: _titleController,
                                        decoration: InputDecoration(
                                          labelText: AppLocalizations.of(context)!.title,
                                          hintText:
                                              AppLocalizations.of(context)!.titleExample,
                                          prefixIcon: const Icon(Icons.work),
                                          border: OutlineInputBorder(
                                            borderRadius: BorderRadius.circular(
                                              16,
                                            ),
                                          ),
                                          filled: true,
                                          fillColor: Colors.white.withOpacity(
                                            0.1,
                                          ),
                                        ),
                                        validator: (value) {
                                          // Unvan zorunlu değil, boş bırakılabilir
                                          if (value != null &&
                                              value.trim().isNotEmpty &&
                                              value.trim().length < 2) {
                                            return AppLocalizations.of(context)!.titleTooShort;
                                          }
                                          return null;
                                        },
                                      ),
                                      const SizedBox(height: 20),

                                      // Form alanları
                                      _buildAnimatedTextField(
                                        controller: _emailController,
                                                                label: AppLocalizations.of(context)!.email,
                        hint: AppLocalizations.of(context)!.enterEmail,
                                        icon: Icons.email_outlined,
                                        delay: 100,
                                        keyboardType:
                                            TextInputType.emailAddress,
                                        validator: (value) {
                                          if (value == null || value.isEmpty) {
                                            return AppLocalizations.of(context)!.emailEmptyRegister;
                                          }
                                          if (!RegExp(
                                            r'^[\w-\.]+@([\w-]+\.)+[\w-]{2,4}$',
                                          ).hasMatch(value)) {
                                            return AppLocalizations.of(context)!.emailInvalidRegister;
                                          }
                                          return null;
                                        },
                                      ),
                                      const SizedBox(height: 16),

                                      _buildAnimatedTextField(
                                        controller: _passwordController,
                                                                label: AppLocalizations.of(context)!.password,
                        hint: AppLocalizations.of(context)!.enterPassword,
                                        icon: Icons.lock_outline,
                                        delay: 200,
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
                                            return AppLocalizations.of(context)!.passwordEmptyRegister;
                                          }
                                          if (value.length < 6) {
                                            return AppLocalizations.of(context)!.passwordTooShort;
                                          }
                                          if (value.length > 128) {
                                            return AppLocalizations.of(context)!.passwordTooLong;
                                          }
                                          // Güçlü şifre kontrolleri (şimdilik kullanılmıyor)
                                          // bool hasUppercase = value.contains(RegExp(r'[A-Z]'));
                                          // bool hasLowercase = value.contains(RegExp(r'[a-z]'));
                                          // bool hasDigits = value.contains(RegExp(r'[0-9]'));
                                          // bool hasSpecialCharacters = value.contains(RegExp(r'[!@#$%^&*(),.?":{}|<>]'));

                                          if (value.length >= 6 &&
                                              value.length < 8) {
                                            return AppLocalizations.of(context)!.passwordWeak;
                                          }

                                          return null;
                                        },
                                      ),
                                      const SizedBox(height: 16),

                                      _buildAnimatedTextField(
                                        controller: _confirmPasswordController,
                                        label: AppLocalizations.of(context)!.confirmPassword,
                                        hint: AppLocalizations.of(context)!.enterConfirmPassword,
                                        icon: Icons.lock_outline,
                                        delay: 300,
                                        obscureText: !_isConfirmPasswordVisible,
                                        suffixIcon: IconButton(
                                          icon: Icon(
                                            _isConfirmPasswordVisible
                                                ? Icons.visibility_off
                                                : Icons.visibility,
                                            color: Colors.blue,
                                          ),
                                          onPressed: () {
                                            setState(() {
                                              _isConfirmPasswordVisible =
                                                  !_isConfirmPasswordVisible;
                                            });
                                          },
                                        ),
                                        validator: (value) {
                                          if (value == null || value.isEmpty) {
                                            return AppLocalizations.of(context)!.confirmPasswordEmpty;
                                          }
                                          if (value !=
                                              _passwordController.text) {
                                            return AppLocalizations.of(context)!.passwordMismatch;
                                          }
                                          return null;
                                        },
                                      ),
                                      const SizedBox(height: 16),

                                      // Kullanım koşulları
                                      TweenAnimationBuilder<double>(
                                        tween: Tween(begin: 0.0, end: 1.0),
                                        duration: const Duration(
                                          milliseconds: 600,
                                        ),
                                        curve: Curves.easeOutCubic,
                                        builder: (context, value, child) {
                                          return Opacity(
                                            opacity: value,
                                            child: Transform.translate(
                                              offset: Offset(
                                                0,
                                                (1 - value) * 20,
                                              ),
                                              child: Row(
                                                crossAxisAlignment:
                                                    CrossAxisAlignment.start,
                                                children: [
                                                  Transform.scale(
                                                    scale: 0.9,
                                                    child: SizedBox(
                                                      height: 24,
                                                      width: 24,
                                                      child: Checkbox(
                                                        value: _agreeToTerms,
                                                        activeColor:
                                                            Colors.blue,
                                                        checkColor:
                                                            Colors.white,
                                                        side: BorderSide(
                                                          color: Colors.grey
                                                              .withOpacity(0.5),
                                                        ),
                                                        shape: RoundedRectangleBorder(
                                                          borderRadius:
                                                              BorderRadius.circular(
                                                                4,
                                                              ),
                                                        ),
                                                        onChanged: (value) {
                                                          setState(() {
                                                            _agreeToTerms =
                                                                value!;
                                                          });
                                                        },
                                                      ),
                                                    ),
                                                  ),
                                                  const SizedBox(width: 8),
                                                  Expanded(
                                                    child: RichText(
                                                      text: TextSpan(
                                                        text: AppLocalizations.of(context)!.acceptAll,
                                                        style: const TextStyle(
                                                          color: Colors.grey,
                                                          fontSize: 13,
                                                        ),
                                                        children: [
                                                          TextSpan(
                                                            text:
                                                                AppLocalizations.of(context)!.termsOfUse,
                                                            style: TextStyle(
                                                              color:
                                                                  Colors
                                                                      .blue
                                                                      .shade300,
                                                              fontWeight:
                                                                  FontWeight
                                                                      .bold,
                                                              fontSize: 13,
                                                            ),
                                                            recognizer:
                                                                TapGestureRecognizer()
                                                                  ..onTap = () {
                                                                    // Kullanım koşulları sayfasına yönlendir
                                                                  },
                                                          ),
                                                          TextSpan(
                                                            text: ' ${AppLocalizations.of(context)!.and} ',
                                                          ),
                                                          TextSpan(
                                                            text:
                                                                AppLocalizations.of(context)!.privacyPolicy,
                                                            style: TextStyle(
                                                              color:
                                                                  Colors
                                                                      .blue
                                                                      .shade300,
                                                              fontWeight:
                                                                  FontWeight
                                                                      .bold,
                                                              fontSize: 13,
                                                            ),
                                                            recognizer:
                                                                TapGestureRecognizer()
                                                                  ..onTap = () {
                                                                    // Gizlilik politikası sayfasına yönlendir
                                                                  },
                                                          ),
                                                          TextSpan(
                                                            text:
                                                                ' ${AppLocalizations.of(context)!.accept}.',
                                                          ),
                                                        ],
                                                      ),
                                                    ),
                                                  ),
                                                ],
                                              ),
                                            ),
                                          );
                                        },
                                      ),
                                      const SizedBox(height: 16),

                                      // Hata mesajı
                                      if (_errorMessage.isNotEmpty)
                                        TweenAnimationBuilder<double>(
                                          tween: Tween(begin: 0.0, end: 1.0),
                                          duration: const Duration(
                                            milliseconds: 400,
                                          ),
                                          curve: Curves.easeOut,
                                          builder: (context, value, child) {
                                            return Transform.scale(
                                              scale: value,
                                              child: Opacity(
                                                opacity: value,
                                                child: Container(
                                                  width: double.infinity,
                                                  padding: const EdgeInsets.all(
                                                    16,
                                                  ),
                                                  decoration: BoxDecoration(
                                                    gradient: LinearGradient(
                                                      colors: [
                                                        Colors.red.withOpacity(
                                                          0.1,
                                                        ),
                                                        Colors.red.withOpacity(
                                                          0.05,
                                                        ),
                                                      ],
                                                    ),
                                                    borderRadius:
                                                        BorderRadius.circular(
                                                          12,
                                                        ),
                                                    border: Border.all(
                                                      color: Colors.red
                                                          .withOpacity(0.3),
                                                      width: 1,
                                                    ),
                                                    boxShadow: [
                                                      BoxShadow(
                                                        color: Colors.red
                                                            .withOpacity(0.1),
                                                        blurRadius: 8,
                                                        offset: const Offset(
                                                          0,
                                                          2,
                                                        ),
                                                      ),
                                                    ],
                                                  ),
                                                  child: Column(
                                                    crossAxisAlignment:
                                                        CrossAxisAlignment
                                                            .start,
                                                    children: [
                                                      Row(
                                                        children: [
                                                          Container(
                                                            padding:
                                                                const EdgeInsets.all(
                                                                  6,
                                                                ),
                                                            decoration:
                                                                BoxDecoration(
                                                                  color: Colors
                                                                      .red
                                                                      .withOpacity(
                                                                        0.2,
                                                                      ),
                                                                  shape:
                                                                      BoxShape
                                                                          .circle,
                                                                ),
                                                            child: const Icon(
                                                              Icons
                                                                  .warning_rounded,
                                                              color: Colors.red,
                                                              size: 18,
                                                            ),
                                                          ),
                                                          const SizedBox(
                                                            width: 12,
                                                          ),
                                                          Expanded(
                                                            child: Text(
                                                              AppLocalizations.of(context)!.registrationFailed,
                                                              style: TextStyle(
                                                                color:
                                                                    Colors.red,
                                                                fontSize: 16,
                                                                fontWeight:
                                                                    FontWeight
                                                                        .bold,
                                                              ),
                                                            ),
                                                          ),
                                                        ],
                                                      ),
                                                      const SizedBox(height: 8),
                                                      Text(
                                                        _errorMessage,
                                                        style: const TextStyle(
                                                          color: Colors.white,
                                                          fontSize: 14,
                                                          height: 1.4,
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
                                        const SizedBox(height: 16),

                                      // Kayıt ol butonu
                                      TweenAnimationBuilder<double>(
                                        tween: Tween(begin: 0.95, end: 1.0),
                                        duration: const Duration(
                                          milliseconds: 500,
                                        ),
                                        curve: Curves.elasticOut,
                                        builder: (context, value, child) {
                                          return Transform.scale(
                                            scale: value,
                                            child: _buildGradientButton(
                                              text: AppLocalizations.of(context)!.signUp,
                                              onPressed: _register,
                                              isLoading: _isLoading,
                                            ),
                                          );
                                        },
                                      ),
                                      const SizedBox(height: 20),

                                      // Giriş sayfasına yönlendirme
                                      Center(
                                        child: RichText(
                                          text: TextSpan(
                                            text:
                                                AppLocalizations.of(context)!.alreadyHaveAccount,
                                            style: const TextStyle(
                                              color: Colors.grey,
                                              fontSize: 15,
                                            ),
                                            children: [
                                              TextSpan(
                                                text: AppLocalizations.of(context)!.login,
                                                style: TextStyle(
                                                  color: Colors.blue.shade300,
                                                  fontWeight: FontWeight.bold,
                                                  fontSize: 15,
                                                ),
                                                recognizer:
                                                    TapGestureRecognizer()
                                                      ..onTap = () {
                                                        Navigator.pop(context);
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
    int delay = 0,
    TextInputType keyboardType = TextInputType.text,
    TextCapitalization textCapitalization = TextCapitalization.none,
    bool obscureText = false,
    Widget? suffixIcon,
    String? Function(String?)? validator,
  }) {
    return TweenAnimationBuilder<double>(
      tween: Tween(begin: 0.0, end: 1.0),
      duration: Duration(milliseconds: 500 + delay),
      curve: Curves.easeOutCubic,
      builder: (context, value, child) {
        return Opacity(
          opacity: value,
          child: Transform.translate(
            offset: Offset(0, (1 - value) * 20),
            child: TextFormField(
              controller: controller,
              keyboardType: keyboardType,
              textCapitalization: textCapitalization,
              obscureText: obscureText,
              style: const TextStyle(color: Colors.white),
              decoration: InputDecoration(
                labelText: label,
                hintText: hint,
                hintStyle: TextStyle(color: Colors.grey.withOpacity(0.5)),
                labelStyle: TextStyle(
                  color: Colors.blue.shade200,
                  fontWeight: FontWeight.w500,
                ),
                prefixIcon: Icon(icon, color: Colors.blue.shade300),
                suffixIcon: suffixIcon,
                enabledBorder: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(12),
                  borderSide: BorderSide(
                    color: Colors.blue.withOpacity(0.3),
                    width: 1.5,
                  ),
                ),
                focusedBorder: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(12),
                  borderSide: BorderSide(color: Colors.blue.shade400, width: 2),
                ),
                errorBorder: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(12),
                  borderSide: BorderSide(
                    color: Colors.red.shade300,
                    width: 1.5,
                  ),
                ),
                focusedErrorBorder: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(12),
                  borderSide: BorderSide(color: Colors.red.shade400, width: 2),
                ),
                filled: true,
                fillColor: Colors.white.withOpacity(0.05),
                contentPadding: const EdgeInsets.symmetric(
                  horizontal: 16,
                  vertical: 16,
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
