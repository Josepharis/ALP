import '../models/question.dart';

class QuestionTranslationService {
  static final QuestionTranslationService _instance = QuestionTranslationService._internal();
  factory QuestionTranslationService() => _instance;
  QuestionTranslationService._internal();

  // Soru çevirileri için basit bir mapping sistemi
  final Map<String, Map<String, String>> _questionTranslations = {
    // Çeviriler buraya eklenecek
  };

  final Map<String, Map<String, List<String>>> _optionTranslations = {
    // Seçenek çevirileri buraya eklenecek
  };

  final Map<String, Map<String, String>> _explanationTranslations = {
    // Açıklama çevirileri buraya eklenecek
  };

  final Map<String, Map<String, String>> _categoryTranslations = {
    'Lokal Anestezikler': {
      'en': 'Local Anesthetics',
    },
    'Kardiyovasküler Fizyoloji': {
      'en': 'Cardiovascular Physiology',
    },
    'Solunum Fizyolojisi': {
      'en': 'Respiratory Physiology',
    },
    'Anestezi Uygulaması': {
      'en': 'Anesthesia Application',
    },
    'Solunum Sistemi': {
      'en': 'Respiratory System',
    },
    'Kardiyovasküler Monitörizasyon': {
      'en': 'Cardiovascular Monitoring',
    },
    'Farmakolojik Prensipler': {
      'en': 'Pharmacological Principles',
    },
    'Ameliyathane Ortamı': {
      'en': 'Operating Room Environment',
    },
    'analjezik ajanlar': {
      'en': 'Analgesic Agents',
    },
  };

  // Soruyu belirtilen dile çevir
  Question translateQuestion(Question question, String languageCode) {
    if (languageCode == 'tr') {
      return question; // Türkçe orijinal
    }

    return Question(
      id: question.id,
      question: _questionTranslations[question.question]?[languageCode] ?? question.question,
      options: _optionTranslations[question.question]?[languageCode] ?? question.options,
      correctAnswerIndex: question.correctAnswerIndex,
      explanation: _explanationTranslations[question.question]?[languageCode] ?? question.explanation,
      premises: question.premises,
      references: question.references,
      imageUrl: question.imageUrl,
      category: _categoryTranslations[question.category ?? '']?[languageCode] ?? question.category,
      difficulty: question.difficulty,
    );
  }

  // Soru listesini çevir
  List<Question> translateQuestions(List<Question> questions, String languageCode) {
    return questions.map((q) => translateQuestion(q, languageCode)).toList();
  }

  // Kategori ismini çevir
  String translateCategoryName(String categoryName, String languageCode) {
    if (languageCode == 'tr') {
      return categoryName;
    }
    return _categoryTranslations[categoryName]?[languageCode] ?? categoryName;
  }

  // Kategori listesini çevir
  List<String> getTranslatedCategories(List<String> categories, String languageCode) {
    return categories.map((category) => translateCategoryName(category, languageCode)).toList();
  }
}
