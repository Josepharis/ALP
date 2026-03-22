
class PremiumAccessService {
  /// Varsayılan ücretsiz soru limiti (admin ayarı yoksa kullanılır)
  static const int maxFreeQuestions = 2;
  
  /// Kullanıcının belirli bir soruya erişimi var mı?
  static bool hasAccess(
    int questionIndex,
    bool isPremium, {
    int? maxFreeQuestionsOverride,
  }) {
    final int limit = maxFreeQuestionsOverride ?? maxFreeQuestions;
    
    // Premium kullanıcı: Tüm sorulara erişim
    if (isPremium) return true;
    
    // Ücretsiz kullanıcı: Sadece limit dahilindeki sorular
    if (questionIndex < limit) return true;
    
    // Limitten sonra: Premium gerekli
    return false;
  }
  
  /// Test modu kontrolü ile erişim kontrolü
  static bool hasAccessWithTestMode(
    int questionIndex,
    bool isPremium,
    bool isTestMode, {
    int? maxFreeQuestionsOverride,
  }) {
    // Test modu aktifse her zaman erişim ver
    if (isTestMode) return true;
    
    // Normal premium kontrolü
    return hasAccess(
      questionIndex,
      isPremium,
      maxFreeQuestionsOverride: maxFreeQuestionsOverride,
    );
  }
  
  /// Premium ekranı gösterilmeli mi?
  static bool shouldShowPremiumScreen(
    int questionIndex,
    bool isPremium, {
    int? maxFreeQuestionsOverride,
  }) {
    final int limit = maxFreeQuestionsOverride ?? maxFreeQuestions;
    return !isPremium && questionIndex >= limit;
  }
  
  /// Test modu ile premium ekranı kontrolü
  static bool shouldShowPremiumScreenWithTestMode(
    int questionIndex,
    bool isPremium,
    bool isTestMode, {
    int? maxFreeQuestionsOverride,
  }) {
    // Test modu aktifse premium ekranı gösterme
    if (isTestMode) return false;
    
    // Normal premium kontrolü
    return shouldShowPremiumScreen(
      questionIndex,
      isPremium,
      maxFreeQuestionsOverride: maxFreeQuestionsOverride,
    );
  }
  
  /// Kullanıcının kalan ücretsiz soru sayısı
  static int getRemainingFreeQuestions(
    int currentQuestionIndex,
    bool isPremium, {
    int? maxFreeQuestionsOverride,
  }) {
    if (isPremium) return 0; // Premium kullanıcının sınırı yok
    
    final int limit = maxFreeQuestionsOverride ?? maxFreeQuestions;
    int used = currentQuestionIndex;
    int remaining = limit - used;
    return remaining > 0 ? remaining : 0;
  }
  
  /// Quiz tamamlanabilir mi? (En az 2 soru cevaplanmış mı?)
  static bool canCompleteQuiz(
    int answeredQuestions,
    bool isPremium, {
    int? minRequiredQuestionsOverride,
  }) {
    if (isPremium) return true; // Premium kullanıcı her zaman tamamlayabilir
    
    final int minRequired = minRequiredQuestionsOverride ?? maxFreeQuestions;
    return answeredQuestions >= minRequired;
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
