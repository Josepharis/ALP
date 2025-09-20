
class PremiumAccessService {
  static const int maxFreeQuestions = 2; // İlk 2 soru ücretsiz
  
  /// Kullanıcının belirli bir soruya erişimi var mı?
  static bool hasAccess(int questionIndex, bool isPremium) {
    // Premium kullanıcı: Tüm sorulara erişim
    if (isPremium) return true;
    
    // Ücretsiz kullanıcı: Sadece ilk 2 soru (index 0,1)
    if (questionIndex < maxFreeQuestions) return true;
    
    // 2. sorudan sonra: Premium gerekli
    return false;
  }
  
  /// Test modu kontrolü ile erişim kontrolü
  static bool hasAccessWithTestMode(int questionIndex, bool isPremium, bool isTestMode) {
    // Test modu aktifse her zaman erişim ver
    if (isTestMode) return true;
    
    // Normal premium kontrolü
    return hasAccess(questionIndex, isPremium);
  }
  
  /// Premium ekranı gösterilmeli mi?
  static bool shouldShowPremiumScreen(int questionIndex, bool isPremium) {
    return !isPremium && questionIndex >= maxFreeQuestions;
  }
  
  /// Test modu ile premium ekranı kontrolü
  static bool shouldShowPremiumScreenWithTestMode(int questionIndex, bool isPremium, bool isTestMode) {
    // Test modu aktifse premium ekranı gösterme
    if (isTestMode) return false;
    
    // Normal premium kontrolü
    return shouldShowPremiumScreen(questionIndex, isPremium);
  }
  
  /// Kullanıcının kalan ücretsiz soru sayısı
  static int getRemainingFreeQuestions(int currentQuestionIndex, bool isPremium) {
    if (isPremium) return 0; // Premium kullanıcının sınırı yok
    
    int used = currentQuestionIndex;
    int remaining = maxFreeQuestions - used;
    return remaining > 0 ? remaining : 0;
  }
  
  /// Quiz tamamlanabilir mi? (En az 2 soru cevaplanmış mı?)
  static bool canCompleteQuiz(int answeredQuestions, bool isPremium) {
    if (isPremium) return true; // Premium kullanıcı her zaman tamamlayabilir
    
    return answeredQuestions >= maxFreeQuestions;
  }
  
  /// Premium gerekli mesajı - Bu artık localization ile yönetilecek
  static String getPremiumRequiredMessage() {
    return "Daha fazla soru için Premium üyelik gerekli!\nİlk 2 soruyu ücretsiz deneyebilirsiniz.";
  }
  
  /// Premium teşvik mesajı - Bu artık localization ile yönetilecek
  static String getPremiumIncentiveMessage() {
    return "Premium'a geçin ve tüm sorulara sınırsız erişim kazanın!";
  }
}
