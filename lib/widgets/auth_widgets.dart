import 'package:flutter/material.dart';
import '../theme/app_theme.dart';

class AuthHeader extends StatelessWidget {
  final String title;
  final String? subtitle;
  final bool isLogin;

  const AuthHeader({
    Key? key,
    required this.title,
    this.subtitle,
    this.isLogin = true,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size;
    final bool isSmallScreen = size.width < 600;

    return Column(
      children: [
        // Logo
        Container(
          height: isSmallScreen ? 120 : 150,
          width: isSmallScreen ? 120 : 150,
          decoration: BoxDecoration(
            color: Colors.white,
            shape: BoxShape.circle,
            boxShadow: AppTheme.getShadow(opacity: 0.1),
          ),
          child: Center(
            child: Icon(
              Icons.quiz_rounded,
              size: isSmallScreen ? 70 : 90,
              color: AppTheme.primaryColor,
            ),
          ),
        ),
        SizedBox(height: isSmallScreen ? 24 : 32),

        // Başlık
        Text(
          title,
          style: AppTheme.headingStyle,
          textAlign: TextAlign.center,
        ),

        if (subtitle != null) ...[
          const SizedBox(height: 8),
          Text(
            subtitle!,
            style: AppTheme.subheadingStyle.copyWith(
              fontWeight: FontWeight.normal,
              color: AppTheme.darkColor.withOpacity(0.7),
            ),
            textAlign: TextAlign.center,
          ),
        ],
      ],
    );
  }
}

class AuthButton extends StatelessWidget {
  final String text;
  final VoidCallback onPressed;
  final bool isLoading;
  final Color? color;

  const AuthButton({
    Key? key,
    required this.text,
    required this.onPressed,
    this.isLoading = false,
    this.color,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      height: 55,
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(12),
        boxShadow: isLoading
            ? null
            : AppTheme.getShadow(
                color: color ?? AppTheme.primaryColor,
                opacity: 0.3,
                blurRadius: 10,
              ),
      ),
      child: ElevatedButton(
        onPressed: isLoading ? null : onPressed,
        style: ElevatedButton.styleFrom(
          backgroundColor: color ?? AppTheme.primaryColor,
          disabledBackgroundColor: AppTheme.disabledColor,
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(12),
          ),
        ),
        child: isLoading
            ? const SizedBox(
                height: 24,
                width: 24,
                child: CircularProgressIndicator(
                  color: Colors.white,
                  strokeWidth: 3,
                ),
              )
            : Text(
                text,
                style: const TextStyle(
                  color: Colors.white,
                  fontSize: 16,
                  fontWeight: FontWeight.bold,
                ),
              ),
      ),
    );
  }
}

class AnimatedBackground extends StatelessWidget {
  const AnimatedBackground({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size;

    return Positioned(
      top: 0,
      left: 0,
      right: 0,
      child: Container(
        height: size.height * 0.4,
        decoration: BoxDecoration(
          gradient: LinearGradient(
            begin: Alignment.topLeft,
            end: Alignment.bottomRight,
            colors: [
              AppTheme.primaryColor.withOpacity(0.8),
              AppTheme.secondaryColor.withOpacity(0.6),
            ],
          ),
        ),
        child: Stack(
          children: [
            Positioned(
              top: -50,
              right: -50,
              child: Container(
                width: 150,
                height: 150,
                decoration: BoxDecoration(
                  shape: BoxShape.circle,
                  color: Colors.white.withOpacity(0.1),
                ),
              ),
            ),
            Positioned(
              bottom: -80,
              left: -80,
              child: Container(
                width: 200,
                height: 200,
                decoration: BoxDecoration(
                  shape: BoxShape.circle,
                  color: Colors.white.withOpacity(0.15),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}

// Sosyal medya giriş butonları
class SocialLoginButton extends StatelessWidget {
  final String text;
  final String icon;
  final VoidCallback onPressed;
  final Color color;

  const SocialLoginButton({
    Key? key,
    required this.text,
    required this.icon,
    required this.onPressed,
    required this.color,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.symmetric(vertical: 5),
      width: double.infinity,
      height: 50,
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(12),
        border: Border.all(color: Colors.grey.withOpacity(0.2)),
        color: Colors.white,
        boxShadow: AppTheme.getShadow(opacity: 0.08, blurRadius: 8),
      ),
      child: Material(
        color: Colors.transparent,
        child: InkWell(
          borderRadius: BorderRadius.circular(12),
          onTap: onPressed,
          child: Padding(
            padding: const EdgeInsets.symmetric(horizontal: 16),
            child: Row(
              children: [
                Image.asset(
                  icon,
                  height: 24,
                  width: 24,
                ),
                const SizedBox(width: 12),
                Text(
                  text,
                  style: AppTheme.bodyStyle.copyWith(
                    fontWeight: FontWeight.w500,
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}

// Responsive konteynır
class ResponsiveAuthContainer extends StatelessWidget {
  final Widget child;

  const ResponsiveAuthContainer({
    Key? key,
    required this.child,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size;
    final paddingHorizontal = size.width < 600 ? 24.0 : size.width * 0.1;
    final paddingVertical = size.width < 600 ? 32.0 : 48.0;

    return Container(
      margin: EdgeInsets.fromLTRB(paddingHorizontal, size.height * 0.15,
          paddingHorizontal, paddingVertical),
      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.circular(20),
        boxShadow: AppTheme.getShadow(opacity: 0.1),
      ),
      child: Padding(
        padding: const EdgeInsets.all(24.0),
        child: child,
      ),
    );
  }
}
