import 'package:flutter/material.dart';
import 'package:shared_preferences/shared_preferences.dart';

class LanguageService extends ChangeNotifier {
  static const String _languageKey = 'selected_language';
  static const String _languageSelectedKey = 'language_selected';
  
  Locale _currentLocale = const Locale('tr'); // Varsayılan Türkçe
  bool _isLanguageSelected = false;
  
  Locale get currentLocale => _currentLocale;
  bool get isLanguageSelected => _isLanguageSelected;
  
  // Desteklenen diller
  static const List<Locale> supportedLocales = [
    Locale('tr'), // Türkçe
    Locale('en'), // İngilizce
  ];
  
  // Dil adları
  static const Map<String, String> languageNames = {
    'tr': 'Türkçe',
    'en': 'English',
  };
  
  // Dil bayrakları (emoji)
  static const Map<String, String> languageFlags = {
    'tr': '🇹🇷',
    'en': '🇺🇸',
  };
  
  LanguageService() {
    initializeLanguage();
  }
  
  Future<void> initializeLanguage() async {
    await _loadSavedLanguage();
  }
  
  // Kaydedilmiş dili yükle
  Future<void> _loadSavedLanguage() async {
    try {
      final prefs = await SharedPreferences.getInstance();
      final languageCode = prefs.getString(_languageKey);
      final isSelected = prefs.getBool(_languageSelectedKey) ?? false;
      
      _isLanguageSelected = isSelected;
      
      if (languageCode != null) {
        _currentLocale = Locale(languageCode);
      }
      
      notifyListeners();
    } catch (e) {
    }
  }
  
  // Dil değiştir ve kaydet
  Future<void> changeLanguage(Locale locale) async {
    if (_currentLocale == locale) return;
    
    try {
      _currentLocale = locale;
      _isLanguageSelected = true;
      
      final prefs = await SharedPreferences.getInstance();
      await prefs.setString(_languageKey, locale.languageCode);
      await prefs.setBool(_languageSelectedKey, true);
      
      notifyListeners();
    } catch (e) {
    }
  }
  
  // Dil seçimini sıfırla (sadece test için)
  Future<void> resetLanguageSelection() async {
    try {
      final prefs = await SharedPreferences.getInstance();
      await prefs.remove(_languageSelectedKey);
      await prefs.remove(_languageKey);
      _isLanguageSelected = false;
      _currentLocale = const Locale('tr'); // Varsayılan dil
      notifyListeners();
    } catch (e) {
    }
  }
  
  // Sistem dilini al
  Locale getSystemLocale() {
    final systemLocale = WidgetsBinding.instance.platformDispatcher.locale;
    
    // Desteklenen diller arasında sistem dili var mı kontrol et
    for (final supportedLocale in supportedLocales) {
      if (supportedLocale.languageCode == systemLocale.languageCode) {
        return supportedLocale;
      }
    }
    
    // Desteklenmiyorsa varsayılan dil döndür
    return const Locale('tr');
  }
  
  // Dil adını al
  String getLanguageName(String languageCode) {
    return languageNames[languageCode] ?? languageCode;
  }
  
  // Dil bayrağını al
  String getLanguageFlag(String languageCode) {
    return languageFlags[languageCode] ?? '🌐';
  }
  
  // Mevcut dil adını al
  String get currentLanguageName => getLanguageName(_currentLocale.languageCode);
  
  // Mevcut dil bayrağını al
  String get currentLanguageFlag => getLanguageFlag(_currentLocale.languageCode);
}
