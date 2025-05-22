import 'package:flutter/material.dart';
import 'package:shared_preferences/shared_preferences.dart';
import '../models/tutorial_step.dart';

class TutorialService {
  static const String _tutorialShownKey = 'tutorial_shown';
  static const String _featuresShownKey = 'features_shown';

  // Tanıtım adımlarını oluştur
  List<TutorialStep> getTutorialSteps() {
    return [
      TutorialStep(
        title: 'Anestezi Uygulamasına Hoş Geldiniz',
        description:
            'Anestezi alanında bilgilerinizi test edin, yeni bilgiler öğrenin ve kendinizi geliştirin.',
        icon: Icons.medical_services,
        color: Colors.blue,
      ),
      TutorialStep(
        title: 'Günün Sorusu',
        description:
            'Her gün yeni bir soru ile bilgilerinizi taze tutun ve günlük katılım puanları kazanın.',
        icon: Icons.calendar_today,
        color: Colors.orange,
      ),
      TutorialStep(
        title: 'Popüler Quizler',
        description:
            'En çok çözülen quizleri keşfedin ve meslektaşlarınızla bilgi yarışında zirveye çıkın.',
        icon: Icons.trending_up,
        color: Colors.purple,
      ),
      TutorialStep(
        title: 'Devam Eden Quizler',
        description:
            'Yarım kalan quizlerinize hızlıca erişerek kaldığınız yerden devam edin.',
        icon: Icons.play_circle_filled,
        color: Colors.green,
      ),
      TutorialStep(
        title: 'Rozet Sistemi',
        description:
            'Quizleri tamamlayarak ve özel görevleri yerine getirerek rozetler kazanın ve profilinizi zenginleştirin.',
        icon: Icons.diamond,
        color: Colors.amber,
      ),
    ];
  }

  // Özellik tanıtımlarını oluştur
  List<Feature> getDailyQuestionFeatures() {
    return [
      Feature(
        title: 'Günün Sorusu',
        description: 'Her gün yeni bir soru ile bilginizi test edin',
        icon: Icons.lightbulb,
        color: Colors.amber,
      ),
      Feature(
        title: 'Çizgi Grafiği',
        description: 'Doğru cevap oranlarınızı takip edin',
        icon: Icons.show_chart,
        color: Colors.green,
      ),
      Feature(
        title: 'Arkadaşlarınızla Paylaşın',
        description: 'Günün sorusunu sosyal medyada paylaşın',
        icon: Icons.share,
        color: Colors.blue,
      ),
    ];
  }

  List<Feature> getQuizFeatures() {
    return [
      Feature(
        title: 'Kategori Seçimi',
        description: 'Anestezi, solunum, KVC gibi farklı kategorilerde quizler',
        icon: Icons.category,
        color: Colors.indigo,
      ),
      Feature(
        title: 'Zorluk Seviyesi',
        description: 'Kolay, orta ve zor seviyelerde sorular',
        icon: Icons.fitness_center,
        color: Colors.orange,
      ),
      Feature(
        title: 'Detaylı Analiz',
        description:
            'Quiz sonuçlarınızı analiz ederek gelişim alanlarınızı keşfedin',
        icon: Icons.analytics,
        color: Colors.purple,
      ),
    ];
  }

  List<Feature> getLeaderboardFeatures() {
    return [
      Feature(
        title: 'Haftalık Liderler',
        description: 'Haftalık en yüksek puanları görüntüleyin',
        icon: Icons.leaderboard,
        color: Colors.teal,
      ),
      Feature(
        title: 'Arkadaşlarınızla Yarışın',
        description: 'Arkadaşlarınızı ekleyerek onlarla yarışabilirsiniz',
        icon: Icons.people,
        color: Colors.pink,
      ),
      Feature(
        title: 'Sıralama Ödülleri',
        description: 'Sıralamada yükselerek özel rozetler kazanın',
        icon: Icons.emoji_events,
        color: Colors.amber,
      ),
    ];
  }

  // Tanıtımın gösterilip gösterilmediğini kontrol et
  Future<bool> shouldShowTutorial() async {
    final prefs = await SharedPreferences.getInstance();
    return !(prefs.getBool(_tutorialShownKey) ?? false);
  }

  // Tanıtımın gösterildiğini kaydet
  Future<void> markTutorialAsShown() async {
    final prefs = await SharedPreferences.getInstance();
    await prefs.setBool(_tutorialShownKey, true);
  }

  // Özellik gösterimlerinin durumunu kontrol et
  Future<bool> shouldShowFeature(String featureKey) async {
    final prefs = await SharedPreferences.getInstance();
    final featuresShown = prefs.getStringList(_featuresShownKey) ?? [];
    return !featuresShown.contains(featureKey);
  }

  // Özellik gösterimini kaydet
  Future<void> markFeatureAsShown(String featureKey) async {
    final prefs = await SharedPreferences.getInstance();
    final featuresShown = prefs.getStringList(_featuresShownKey) ?? [];
    if (!featuresShown.contains(featureKey)) {
      featuresShown.add(featureKey);
      await prefs.setStringList(_featuresShownKey, featuresShown);
    }
  }

  // Tüm tanıtım durumlarını sıfırla (test için)
  Future<void> resetAllTutorials() async {
    final prefs = await SharedPreferences.getInstance();
    await prefs.remove(_tutorialShownKey);
    await prefs.remove(_featuresShownKey);
  }
}
