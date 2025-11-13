import 'package:flutter/material.dart';
import 'package:shared_preferences/shared_preferences.dart';

class LanguageService extends ChangeNotifier {
  static const String _languageKey = 'selected_language';
  
  Locale _currentLocale = const Locale('tr'); // Varsayılan Türkçe
  
  Locale get currentLocale => _currentLocale;
  
  // Dil seçimi yapılmış mı? - initializeLanguage çağrıldıktan sonra kullanılmalı
  // Bu getter sadece mevcut locale'e bakıyor, SharedPreferences kontrolü için
  // AppInitializer'da direkt SharedPreferences kontrolü yapılıyor
  bool get isLanguageSelected {
    // Eğer varsayılan dil değilse seçim yapılmış sayılır
    // Ama daha güvenilir kontrol için AppInitializer'da SharedPreferences kontrolü yapılıyor
    return _currentLocale.languageCode != 'tr';
  }
  
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
    // Constructor'da async işlem yapma - AppInitializer'da await edilecek
  }
  
  Future<void> initializeLanguage() async {
    await _loadSavedLanguage();
  }
  
  // Kaydedilmiş dili yükle
  Future<void> _loadSavedLanguage() async {
    try {
      final prefs = await SharedPreferences.getInstance();
      final languageCode = prefs.getString(_languageKey);
      
      // Dil kodu varsa dil seçimi yapılmış sayılır
      if (languageCode != null && languageCode.isNotEmpty) {
        _currentLocale = Locale(languageCode);
      } else {
        // Hiçbir şey yok, varsayılan dil - dil seçimi yapılmamış
        _currentLocale = const Locale('tr');
      }
      
      notifyListeners();
    } catch (e) {
      // Hata durumunda varsayılan değerleri kullan
      _currentLocale = const Locale('tr');
      notifyListeners();
    }
  }
  
  // Dil değiştir ve kaydet
  Future<void> changeLanguage(Locale locale) async {
    if (_currentLocale == locale) return;
    
    try {
      final prefs = await SharedPreferences.getInstance();
      
      // Önce SharedPreferences'a kaydet - bu çok önemli!
      await prefs.setString(_languageKey, locale.languageCode);
      
      // Kayıt işleminin tamamlandığından emin ol - birkaç kez dene
      for (int i = 0; i < 3; i++) {
        final saved = prefs.getString(_languageKey);
        if (saved == locale.languageCode) {
          break; // Kayıt başarılı
        }
        // Kayıt yoksa tekrar dene
        await Future.delayed(const Duration(milliseconds: 50));
        await prefs.setString(_languageKey, locale.languageCode);
      }
      
      // Son olarak tekrar kontrol et ve kaydet
      await prefs.setString(_languageKey, locale.languageCode);
      
      // Sonra state'i güncelle
      _currentLocale = locale;
      
      notifyListeners();
    } catch (e) {
      // Hata durumunda bile state'i güncelle
      _currentLocale = locale;
      notifyListeners();
    }
  }
  
  // Dil seçimini sıfırla (sadece test için)
  Future<void> resetLanguageSelection() async {
    try {
      final prefs = await SharedPreferences.getInstance();
      await prefs.remove(_languageKey);
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
