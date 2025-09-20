import 'package:flutter/material.dart';
import 'package:shared_preferences/shared_preferences.dart';
import '../l10n/app_localizations.dart';
import '../models/tutorial_step.dart';

class TutorialService {
  static const String _tutorialShownKey = 'tutorial_shown';
  static const String _featuresShownKey = 'features_shown';

  // Tanıtım adımlarını oluştur
  List<TutorialStep> getTutorialSteps(BuildContext context) {
    final l10n = AppLocalizations.of(context)!;
    return [
      TutorialStep(
        title: l10n.tutorialWelcomeTitle,
        description: l10n.tutorialWelcomeDescription,
        icon: Icons.medical_services,
        color: Colors.blue,
      ),
      TutorialStep(
        title: l10n.tutorialDailyQuestionTitle,
        description: l10n.tutorialDailyQuestionDescription,
        icon: Icons.calendar_today,
        color: Colors.orange,
      ),
      TutorialStep(
        title: l10n.tutorialPopularQuizzesTitle,
        description: l10n.tutorialPopularQuizzesDescription,
        icon: Icons.trending_up,
        color: Colors.purple,
      ),
      TutorialStep(
        title: l10n.tutorialOngoingQuizzesTitle,
        description: l10n.tutorialOngoingQuizzesDescription,
        icon: Icons.play_circle_filled,
        color: Colors.green,
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
    try {
      final prefs = await SharedPreferences.getInstance();
      final hasShown = prefs.getBool(_tutorialShownKey) ?? false;
      print('shouldShowTutorial: $hasShown');
      return !hasShown;
    } catch (e) {
      print('shouldShowTutorial error: $e');
      return true; // Hata durumunda tanıtımı göster
    }
  }

  // Tanıtımın gösterildiğini kaydet
  Future<void> markTutorialAsShown() async {
    try {
      final prefs = await SharedPreferences.getInstance();
      await prefs.setBool(_tutorialShownKey, true);
      print('Tutorial marked as shown');
    } catch (e) {
      print('markTutorialAsShown error: $e');
    }
  }

  // Özellik gösterimlerinin durumunu kontrol et
  Future<bool> shouldShowFeature(String featureKey) async {
    try {
      final prefs = await SharedPreferences.getInstance();
      final featuresShown = prefs.getStringList(_featuresShownKey) ?? [];
      return !featuresShown.contains(featureKey);
    } catch (e) {
      print('shouldShowFeature error: $e');
      return true; // Hata durumunda özelliği göster
    }
  }

  // Özellik gösterimini kaydet
  Future<void> markFeatureAsShown(String featureKey) async {
    try {
      final prefs = await SharedPreferences.getInstance();
      final featuresShown = prefs.getStringList(_featuresShownKey) ?? [];
      if (!featuresShown.contains(featureKey)) {
        featuresShown.add(featureKey);
        await prefs.setStringList(_featuresShownKey, featuresShown);
      }
    } catch (e) {
      print('markFeatureAsShown error: $e');
    }
  }

  // Tüm tanıtım durumlarını sıfırla (test için)
  Future<void> resetAllTutorials() async {
    final prefs = await SharedPreferences.getInstance();
    await prefs.remove(_tutorialShownKey);
    await prefs.remove(_featuresShownKey);
  }
}
