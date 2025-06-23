import 'package:flutter/material.dart';

class SnackBarUtils {
  static bool _isSnackBarVisible = false;
  static ScaffoldMessengerState? _currentMessenger;

  // Başarı bildirimi - kısa süre
  static void showSuccessSnackBar(BuildContext context, String message) {
    _showSnackBar(
      context,
      message,
      Colors.green,
      Icons.check_circle,
      duration: const Duration(seconds: 2), // Kısa süre
    );
  }

  // Hata bildirimi - orta süre
  static void showErrorSnackBar(BuildContext context, String message) {
    _showSnackBar(
      context,
      message,
      Colors.red,
      Icons.error,
      duration: const Duration(seconds: 3), // Orta süre
    );
  }

  // Bilgi bildirimi - çok kısa süre
  static void showInfoSnackBar(BuildContext context, String message) {
    _showSnackBar(
      context,
      message,
      Colors.blue,
      Icons.info,
      duration: const Duration(seconds: 1), // Çok kısa süre
    );
  }

  // Uyarı bildirimi - kısa süre
  static void showWarningSnackBar(BuildContext context, String message) {
    _showSnackBar(
      context,
      message,
      Colors.orange,
      Icons.warning,
      duration: const Duration(seconds: 2), // Kısa süre
    );
  }

  // Ana SnackBar gösterme metodu
  static void _showSnackBar(
    BuildContext context,
    String message,
    Color backgroundColor,
    IconData icon, {
    Duration duration = const Duration(seconds: 2),
  }) {
    // Eğer context mount değilse çık
    if (!context.mounted) return;

    // Önceki SnackBar'ı temizle
    _clearCurrentSnackBar();

    final messenger = ScaffoldMessenger.of(context);
    _currentMessenger = messenger;
    _isSnackBarVisible = true;

    messenger
        .showSnackBar(
          SnackBar(
            content: Row(
              children: [
                Icon(icon, color: Colors.white, size: 20),
                const SizedBox(width: 12),
                Expanded(
                  child: Text(
                    message,
                    style: const TextStyle(
                      color: Colors.white,
                      fontSize: 14,
                      fontWeight: FontWeight.w500,
                    ),
                  ),
                ),
              ],
            ),
            backgroundColor: backgroundColor,
            duration: duration,
            behavior: SnackBarBehavior.floating,
            shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(10),
            ),
            margin: const EdgeInsets.all(16),
            elevation: 6,
            action: SnackBarAction(
              label: 'Kapat',
              textColor: Colors.white70,
              onPressed: () {
                _clearCurrentSnackBar();
              },
            ),
          ),
        )
        .closed
        .then((_) {
          // SnackBar kapandığında durumu sıfırla
          _isSnackBarVisible = false;
          _currentMessenger = null;
        });
  }

  // Mevcut SnackBar'ı temizle
  static void _clearCurrentSnackBar() {
    if (_isSnackBarVisible && _currentMessenger != null) {
      _currentMessenger!.clearSnackBars();
      _isSnackBarVisible = false;
      _currentMessenger = null;
    }
  }

  // Tüm SnackBar'ları temizle (sayfa değişimlerinde kullanılabilir)
  static void clearAllSnackBars(BuildContext context) {
    if (context.mounted) {
      ScaffoldMessenger.of(context).clearSnackBars();
      _isSnackBarVisible = false;
      _currentMessenger = null;
    }
  }

  // SnackBar görünür mü kontrolü
  static bool get isSnackBarVisible => _isSnackBarVisible;
}
