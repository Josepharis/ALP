import '../models/question.dart';

class QuestionTranslationService {
  static final QuestionTranslationService _instance = QuestionTranslationService._internal();
  factory QuestionTranslationService() => _instance;
  QuestionTranslationService._internal();

  // Soru çevirileri için basit bir mapping sistemi
  final Map<String, Map<String, String>> _questionTranslations = {
    'Lokal anesteziklerin temel etki mekanizması nedir?': {
      'en': 'What is the basic mechanism of action of local anesthetics?',
    },
    'Aşağıdaki lokal anesteziklerden hangisi ester yapılıdır?': {
      'en': 'Which of the following local ananesthetics has an ester structure?',
    },
    'Aşağıdakilerden hangisi amid yapılı lokal anesteziklerden biridir?': {
      'en': 'Which of the following is an amide-type local anesthetic?',
    },
  };

  final Map<String, Map<String, List<String>>> _optionTranslations = {
    'Lokal anesteziklerin temel etki mekanizması nedir?': {
      'en': [
        'Inhibiting calcium channels',
        'Increasing glutamate release',
        'Blocking sodium channels',
        'Activating GABA receptors',
        'Blocking NMDA receptors',
      ],
    },
    'Aşağıdaki lokal anesteziklerden hangisi ester yapılıdır?': {
      'en': ['Lidocaine', 'Bupivacaine', 'Prilocaine', 'Procaine', 'Mepivacaine'],
    },
    'Aşağıdakilerden hangisi amid yapılı lokal anesteziklerden biridir?': {
      'en': ['Tetracaine', 'Chloroprocaine', 'Benzocaine', 'Lidocaine', 'Cocaine'],
    },
  };

  final Map<String, Map<String, String>> _explanationTranslations = {
    'Lokal anesteziklerin temel etki mekanizması nedir?': {
      'en': 'Local anesthetics block voltage-sensitive sodium channels in nerve cells, preventing action potential and stopping transmission.',
    },
    'Aşağıdaki lokal anesteziklerden hangisi ester yapılıdır?': {
      'en': 'Procaine is an ester-type local anesthetic. Esters are metabolized by plasma cholinesterase and have short duration.',
    },
    'Aşağıdakilerden hangisi amid yapılı lokal anesteziklerden biridir?': {
      'en': 'Lidocaine is an amide-type local anesthetic. It is metabolized in the liver and has intermediate duration.',
    },
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
  String translateCategory(String category, String languageCode) {
    if (languageCode == 'tr') return category;
    return _categoryTranslations[category]?[languageCode] ?? category;
  }

  // Mevcut kategorileri çevrilmiş olarak döndür
  List<String> getTranslatedCategories(List<String> categories, String languageCode) {
    return categories.map((category) => translateCategory(category, languageCode)).toList();
  }
}
