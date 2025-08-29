import 'package:flutter/material.dart';
import 'package:shared_preferences/shared_preferences.dart';

class LanguageService extends ChangeNotifier {
  static const String _languageKey = 'selected_language';
  
  Locale _currentLocale = const Locale('tr'); // Varsayılan Türkçe
  
  Locale get currentLocale => _currentLocale;
  
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
    _loadSavedLanguage();
  }
  
  // Kaydedilmiş dili yükle
  Future<void> _loadSavedLanguage() async {
    try {
      final prefs = await SharedPreferences.getInstance();
      final languageCode = prefs.getString(_languageKey);
      
      if (languageCode != null) {
        _currentLocale = Locale(languageCode);
        notifyListeners();
      }
    } catch (e) {
      print('Dil yüklenirken hata: $e');
    }
  }
  
  // Dil değiştir ve kaydet
  Future<void> changeLanguage(Locale locale) async {
    if (_currentLocale == locale) return;
    
    try {
      _currentLocale = locale;
      
      final prefs = await SharedPreferences.getInstance();
      await prefs.setString(_languageKey, locale.languageCode);
      
      notifyListeners();
    } catch (e) {
      print('Dil kaydedilirken hata: $e');
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
