import 'package:flutter/material.dart';
import 'package:firebase_auth/firebase_auth.dart';
import '../l10n/app_localizations.dart';


import '../theme/app_theme.dart';
import 'package:flutter/gestures.dart';
import '../services/auth_service.dart';
import '../screens/privacy_terms_screen.dart';

class RegisterScreen extends StatefulWidget {
  final bool isGuestUpgrade;
  
  const RegisterScreen({Key? key, this.isGuestUpgrade = false}) : super(key: key);

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

  // Hata mesajlarını çevir - auth_service'den gelen detaylı mesajları kullan
  String _getErrorMessage(dynamic error) {
    // Eğer error zaten bir string ise (auth_service'den gelen detaylı mesaj), direkt kullan
    if (error is String) {
      return error;
    }
    
    // Eğer error bir exception ise, string'e çevir ve kontrol et
    final errorString = error.toString().toLowerCase();
    
    if (errorString.contains('email-already-in-use')) {
      return '❌ Bu e-posta adresi zaten başka bir hesap tarafından kullanılıyor.\n\n💡 Farklı bir e-posta adresi deneyin veya mevcut hesabınızla giriş yapın.';
    } else if (errorString.contains('weak-password')) {
      return '❌ Şifreniz çok zayıf.\n\n💡 Şifreniz en az 6 karakter olmalı ve güçlü olmalıdır. Büyük-küçük harf, rakam ve özel karakter kullanın.';
    } else if (errorString.contains('network')) {
      return '❌ İnternet Bağlantısı Sorunu\n\n💡 İnternet bağlantınızı kontrol edin ve tekrar deneyin.\n\nWi-Fi veya mobil verilerinizin açık olduğundan emin olun.';
    } else if (errorString.contains('server')) {
      return '❌ Sunucu Hatası\n\n💡 Sunucuya bağlanılamıyor. Lütfen daha sonra tekrar deneyin.';
    } else if (errorString.contains('operation-not-allowed')) {
      return '❌ Bu giriş yöntemi şu anda kullanılamıyor.\n\n💡 Destek ekibi ile iletişime geçin.';
    } else if (errorString.contains('invalid-email')) {
      return '❌ Geçersiz e-posta adresi formatı.\n\n💡 Lütfen geçerli bir e-posta adresi girin (örnek: kullanici@email.com)';
    } else if (errorString.contains('user-not-found')) {
      return '❌ Bu e-posta adresi ile kayıtlı bir hesap bulunamadı.\n\n💡 Lütfen e-posta adresinizi kontrol edin veya yeni bir hesap oluşturun.';
    } else {
      return '❌ Kayıt İşlemi Başarısız\n\n💡 Beklenmeyen bir hata oluştu. Lütfen:\n• Bilgilerinizi kontrol edin\n• İnternet bağlantınızı kontrol edin\n• Birkaç dakika sonra tekrar deneyin\n\nSorun devam ederse destek ekibi ile iletişime geçin.';
    }
  }

  // Kayıt işlemini gerçekleştir
  Future<void> _register() async {
    // Widget dispose edilmişse işlemi durdur
    if (!mounted) return;
    
    if (!_agreeToTerms) {
      if (!mounted) return;
      setState(() {
        _errorMessage = AppLocalizations.of(context)!.termsRequired;
      });
      return;
    }

    if (_formKey.currentState?.validate() ?? false) {
      if (!mounted) return;
      
      setState(() {
        _isLoading = true;
        _errorMessage = '';
      });

      try {
        // Input validation
        final email = _emailController.text.trim();
        final password = _passwordController.text.trim();
        final displayName = _nameController.text.trim();
        final title = _titleController.text.trim();
        
        if (email.isEmpty || password.isEmpty) {
          if (!mounted) return;
          setState(() {
            _errorMessage = '❌ E-posta ve şifre boş olamaz.';
            _isLoading = false;
          });
          return;
        }
        
        debugPrint('🔐 Kayıt başlatılıyor...');
        
        // Kayıt işlemi - misafir yükseltme veya normal kayıt
        User? user;
        try {
          if (widget.isGuestUpgrade) {
            // Misafir hesabını email/password ile bağla
            debugPrint('👤 Misafir hesabı yükseltiliyor...');
            user = await _authService.linkGuestAccountWithEmailPassword(
              email,
              password,
              displayName: displayName.isNotEmpty ? displayName : null,
              title: title.isNotEmpty ? title : null,
            ).timeout(
              const Duration(seconds: 60),
              onTimeout: () {
                throw '❌ İşlem zaman aşımına uğradı.\n\n💡 İnternet bağlantınızı kontrol edin ve tekrar deneyin.';
              },
            );
            debugPrint('✅ Misafir hesabı başarıyla yükseltildi');
          } else {
            // Normal kayıt işlemi
            user = await _authService.registerWithEmailAndPassword(
              email,
              password,
              displayName: displayName.isNotEmpty ? displayName : null,
              title: title.isNotEmpty ? title : null,
            ).timeout(
              const Duration(seconds: 60), // Timeout'u 60 saniyeye çıkar
              onTimeout: () {
                throw '❌ İşlem zaman aşımına uğradı.\n\n💡 İnternet bağlantınızı kontrol edin ve tekrar deneyin.';
              },
            );
          }
        } catch (e) {
          // Hata durumunda loading'i kapat ve hatayı göster
          if (!mounted) return;
          setState(() {
            _errorMessage = _getErrorMessage(e);
            _isLoading = false;
          });
          return;
        }

        if (!mounted) return;

        // Kullanıcı oluşturulduysa navigasyon yap
        if (user != null) {
          debugPrint('✅ Kayıt başarılı, navigasyon yapılıyor...');
          
          // Loading'i kapat
          if (mounted) {
            setState(() {
              _isLoading = false;
            });
          }
          
          // Kısa bekleme - navigasyon için
          await Future.delayed(const Duration(milliseconds: 300));
          
          if (!mounted) return;
          
          // Navigator'ı güvenli şekilde kullan
          try {
            if (widget.isGuestUpgrade) {
              // Misafir yükseltme: Quiz'e geri dön (pop)
              Navigator.of(context).pop(true); // true = başarılı
            } else {
              // Normal kayıt: Ana sayfaya git
              Navigator.of(context, rootNavigator: true).pushNamedAndRemoveUntil('/home', (route) => false);
            }
          } catch (navError) {
            debugPrint('⚠️ Navigasyon hatası: $navError');
            // Navigasyon hatası olsa bile kullanıcı oluşturuldu
            if (mounted) {
              // Alternatif navigasyon yöntemi
              try {
                if (widget.isGuestUpgrade) {
                  Navigator.of(context).pop(true);
                } else {
                  Navigator.of(context).pushReplacementNamed('/home');
                }
              } catch (e) {
                // Son çare: context'i yeniden al
                if (mounted) {
                  if (widget.isGuestUpgrade) {
                    Navigator.of(context).pop(true);
                  } else {
                    Navigator.of(context, rootNavigator: true).pushNamedAndRemoveUntil('/home', (route) => false);
                  }
                }
              }
            }
          }
        } else {
          if (!mounted) return;
          setState(() {
            _errorMessage = '❌ Kullanıcı oluşturulamadı.\n\n💡 Lütfen tekrar deneyin.';
            _isLoading = false;
          });
        }
      } catch (e) {
        debugPrint('❌ Kayıt hatası: $e');
        
        if (!mounted) return;
        
        // Hata mesajını göster
        setState(() {
          _errorMessage = _getErrorMessage(e);
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
      height: isVeryShortScreen ? 36 :
              hasAndroidNavigation ? (isVerySmallScreen ? 36 : 40) :
              isVerySmallScreen ? 42 : isSmallScreen ? 46 : 50,
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
                      style: TextStyle(
                        color: Colors.white,
                        fontSize: isVeryShortScreen ? 14 : 
                                 hasAndroidNavigation ? (isVerySmallScreen ? 14 : 15) :
                                 isVerySmallScreen ? 15 : 16,
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
    final screenWidth = size.width;
    final screenHeight = size.height;
    
    // Android navigasyon tuşları için ekran yüksekliği kontrolü
    final hasAndroidNavigation = screenHeight < 700;
    final isVeryShortScreen = screenHeight < 600;
    
    // Responsive breakpoints
    final isSmallScreen = screenWidth < 600;
    final isVerySmallScreen = screenWidth < 400;
    final isTablet = screenWidth >= 768;
    
    // Responsive dimensions - Daha kompakt
    final logoSize = isVeryShortScreen ? 50.0 :
                     hasAndroidNavigation ? (isVerySmallScreen ? 50.0 : 55.0) :
                     isVerySmallScreen ? 60.0 : 
                     isSmallScreen ? 65.0 : 
                     isTablet ? 70.0 : 75.0;
    
    final horizontalPadding = isVeryShortScreen ? 8.0 :
                             hasAndroidNavigation ? (isVerySmallScreen ? 8.0 : 12.0) :
                             isVerySmallScreen ? 12.0 :
                             isSmallScreen ? 16.0 :
                             isTablet ? screenWidth * 0.1 :
                             screenWidth * 0.15;
    
    final formPadding = isVeryShortScreen ? 8.0 :
                       hasAndroidNavigation ? (isVerySmallScreen ? 8.0 : 12.0) :
                       isVerySmallScreen ? 12.0 :
                       isSmallScreen ? 16.0 :
                       isTablet ? 20.0 : 24.0;

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
                        vertical: isVeryShortScreen ? 4 :
                                 hasAndroidNavigation ? 6 : 8,
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
                                        radius: logoSize / 2,
                                        backgroundColor: Colors.grey[900],
                                        child: Icon(
                                          Icons.person_add,
                                          color: Colors.white,
                                          size: logoSize * 0.6,
                                        ),
                                      ),
                                    ),
                                  );
                                },
                              ),
                              SizedBox(height: isVeryShortScreen ? 4 :
                                           hasAndroidNavigation ? 6 : 8),

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
                                  widget.isGuestUpgrade 
                                      ? AppLocalizations.of(context)!.upgradeGuestAccount
                                      : AppLocalizations.of(context)!.createNewAccount,
                                  style: TextStyle(
                                    fontSize: isVeryShortScreen ? 20 :
                                             hasAndroidNavigation ? 22 :
                                             isVerySmallScreen ? 22 :
                                             isSmallScreen ? 24 : 26,
                                    fontWeight: FontWeight.bold,
                                    color: Colors.white,
                                  ),
                                ),
                              ),
                              SizedBox(height: isVeryShortScreen ? 2 :
                                           hasAndroidNavigation ? 4 : 6),

                              Text(
                                widget.isGuestUpgrade
                                    ? AppLocalizations.of(context)!.upgradeGuestAccountMessage
                                    : AppLocalizations.of(context)!.joinQuizApp,
                                style: TextStyle(
                                  fontSize: isVeryShortScreen ? 12 :
                                           hasAndroidNavigation ? 13 :
                                           isVerySmallScreen ? 13 : 14,
                                  color: Colors.grey,
                                ),
                                textAlign: TextAlign.center,
                              ),
                              SizedBox(height: isVeryShortScreen ? 6 :
                                           hasAndroidNavigation ? 8 :
                                           isVerySmallScreen ? 8 : 12),

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
                                              fontSize: isVeryShortScreen ? 18 :
                                                       hasAndroidNavigation ? 20 :
                                                       isVerySmallScreen ? 20 : 22,
                                              fontWeight: FontWeight.bold,
                                              color: Colors.white,
                                            ),
                                          ),
                                        ],
                                      ),
                                      SizedBox(height: isVeryShortScreen ? 6 :
                                                   hasAndroidNavigation ? 8 :
                                                   isVerySmallScreen ? 8 : 12),

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
                                      SizedBox(height: isVeryShortScreen ? 6 :
                                                   hasAndroidNavigation ? 8 :
                                                   isVerySmallScreen ? 8 : 12),

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
                                      SizedBox(height: isVeryShortScreen ? 6 :
                                                   hasAndroidNavigation ? 8 :
                                                   isVerySmallScreen ? 8 : 12),

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
                                      SizedBox(height: isVeryShortScreen ? 4 :
                                                   hasAndroidNavigation ? 6 :
                                                   isVerySmallScreen ? 6 : 8),

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
                                      SizedBox(height: isVeryShortScreen ? 4 :
                                                   hasAndroidNavigation ? 6 :
                                                   isVerySmallScreen ? 6 : 8),

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
                                      SizedBox(height: isVeryShortScreen ? 4 :
                                                   hasAndroidNavigation ? 6 :
                                                   isVerySmallScreen ? 6 : 8),

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
                                                      text: Localizations.localeOf(context).languageCode == 'tr' 
                                                        ? TextSpan(
                                                            text: AppLocalizations.of(context)!.acceptAll,
                                                            style: const TextStyle(
                                                              color: Colors.grey,
                                                              fontSize: 13,
                                                            ),
                                                            children: [
                                                              TextSpan(
                                                                text: AppLocalizations.of(context)!.termsOfService,
                                                                style: TextStyle(
                                                                  color: Colors.blue.shade300,
                                                                  fontWeight: FontWeight.bold,
                                                                  decoration: TextDecoration.underline,
                                                                ),
                                                                recognizer: TapGestureRecognizer()
                                                                  ..onTap = () {
                                                                    Navigator.push(
                                                                      context,
                                                                      MaterialPageRoute(
                                                                        builder: (context) => const PrivacyTermsScreen(),
                                                                      ),
                                                                    );
                                                                  },
                                                              ),
                                                              const TextSpan(text: ' ve '),
                                                              TextSpan(
                                                                text: AppLocalizations.of(context)!.privacyPolicy,
                                                                style: TextStyle(
                                                                  color: Colors.blue.shade300,
                                                                  fontWeight: FontWeight.bold,
                                                                  decoration: TextDecoration.underline,
                                                                ),
                                                                recognizer: TapGestureRecognizer()
                                                                  ..onTap = () {
                                                                    Navigator.push(
                                                                      context,
                                                                      MaterialPageRoute(
                                                                        builder: (context) => const PrivacyTermsScreen(),
                                                                      ),
                                                                    );
                                                                  },
                                                              ),
                                                              TextSpan(
                                                                text: ' ${AppLocalizations.of(context)!.iAgree}',
                                                                style: const TextStyle(
                                                                  color: Colors.grey,
                                                                  fontSize: 13,
                                                                ),
                                                              ),
                                                            ],
                                                          )
                                                        : TextSpan(
                                                            text: AppLocalizations.of(context)!.iAgree,
                                                            style: const TextStyle(
                                                              color: Colors.grey,
                                                              fontSize: 13,
                                                            ),
                                                            children: [
                                                              const TextSpan(text: ' to '),
                                                              TextSpan(
                                                                text: AppLocalizations.of(context)!.termsOfService,
                                                                style: TextStyle(
                                                                  color: Colors.blue.shade300,
                                                                  fontWeight: FontWeight.bold,
                                                                  decoration: TextDecoration.underline,
                                                                ),
                                                                recognizer: TapGestureRecognizer()
                                                                  ..onTap = () {
                                                                    Navigator.push(
                                                                      context,
                                                                      MaterialPageRoute(
                                                                        builder: (context) => const PrivacyTermsScreen(),
                                                                      ),
                                                                    );
                                                                  },
                                                              ),
                                                              const TextSpan(text: ' and '),
                                                              TextSpan(
                                                                text: AppLocalizations.of(context)!.privacyPolicy,
                                                                style: TextStyle(
                                                                  color: Colors.blue.shade300,
                                                                  fontWeight: FontWeight.bold,
                                                                  decoration: TextDecoration.underline,
                                                                ),
                                                                recognizer: TapGestureRecognizer()
                                                                  ..onTap = () {
                                                                    Navigator.push(
                                                                      context,
                                                                      MaterialPageRoute(
                                                                        builder: (context) => const PrivacyTermsScreen(),
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
                                          );
                                        },
                                      ),
                                      SizedBox(height: isVeryShortScreen ? 4 :
                                                   hasAndroidNavigation ? 6 :
                                                   isVerySmallScreen ? 6 : 8),

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
                                      SizedBox(height: isVeryShortScreen ? 6 :
                                                   hasAndroidNavigation ? 8 :
                                                   isVerySmallScreen ? 8 : 12),

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

                // Geri dönüş butonu - en üstte olmalı
                Positioned(
                  top: 8,
                  left: 8,
                  child: GestureDetector(
                    onTap: () {
                      if (Navigator.canPop(context)) {
                        Navigator.pop(context);
                      } else {
                        Navigator.of(context).pushReplacementNamed('/login');
                      }
                    },
                    child: Container(
                      padding: EdgeInsets.all(isVeryShortScreen ? 8 : 10),
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
                      child: Icon(
                        Icons.arrow_back_ios_new,
                        color: Colors.white,
                        size: isVeryShortScreen ? 16 : 18,
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
    final size = MediaQuery.of(context).size;
    final isVerySmallScreen = size.width < 400;
    final isSmallScreen = size.width < 600;
    final hasAndroidNavigation = size.height < 700;
    final isVeryShortScreen = size.height < 600;
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
                  borderRadius: BorderRadius.circular(isVeryShortScreen ? 8 : 12),
                  borderSide: BorderSide(
                    color: Colors.blue.withOpacity(0.3),
                    width: 1.5,
                  ),
                ),
                focusedBorder: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(isVeryShortScreen ? 8 : 12),
                  borderSide: BorderSide(color: Colors.blue.shade400, width: 2),
                ),
                errorBorder: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(isVeryShortScreen ? 8 : 12),
                  borderSide: BorderSide(
                    color: Colors.red.shade300,
                    width: 1.5,
                  ),
                ),
                focusedErrorBorder: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(isVeryShortScreen ? 8 : 12),
                  borderSide: BorderSide(color: Colors.red.shade400, width: 2),
                ),
                filled: true,
                fillColor: Colors.white.withOpacity(0.05),
                contentPadding: EdgeInsets.symmetric(
                  horizontal: isVeryShortScreen ? 8 :
                             hasAndroidNavigation ? (isVerySmallScreen ? 8 : 10) :
                             isVerySmallScreen ? 10 : 12,
                  vertical: isVeryShortScreen ? 8 :
                           hasAndroidNavigation ? (isVerySmallScreen ? 8 : 10) :
                           isVerySmallScreen ? 10 : 12,
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
