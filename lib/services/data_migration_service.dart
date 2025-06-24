import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:firebase_auth/firebase_auth.dart';
import '../services/quiz_service.dart';

class DataMigrationService {
  final FirebaseFirestore _firestore = FirebaseFirestore.instance;
  final FirebaseAuth _auth = FirebaseAuth.instance;
  final QuizService _quizService = QuizService();

  Future<Map<String, dynamic>> migrateAllQuestions() async {
    try {
      int totalMigrated = 0;
      int totalErrors = 0;
      List<String> migratedCategories = [];

      // Tüm kategorilerin listesi - home_screen'den alınmış
      final categories = [
        'Anestezi',
        'Anestezi İstasyonu',
        'Ameliyathane Ortamı',
        'Kardiyovasküler Monitoring',
        'Non-Kardiyovasküler Monitoring',
        'Havayolu Yönetimi',
        'Preoperatif Değerlendirme',
        'Solunum Sistemi',
        'Solunumsal Fizyoloji',
        'Solunumsal Hastalıklar',
        'Kardiyovasküler Fizyoloji',
        'Kardiyovasküler Cerrahi',
        'Farmakolojik Prensipler',
        'İntravenöz Anestezikler',
        'İnhalasyon Anestezikleri',
        'Nöromüsküler Blokörler',
        'Nöromüsküler Blokörlerin Antagonistleri',
        'Opioidler ve Analjezikler',
        'Lokal Anestezikler',
        'Antikolinerjikler',
        'Yardımcı İlaçlar',
        'Adrenerjik Agonist ve Antagonistler',
        'Hipotansif Ajanlar',
      ];

      for (final category in categories) {
        print('Processing category: $category');

        // Her kategorideki soruları kontrol et
        final categoryQuestions = await _getCategoryQuestions(category);
        if (categoryQuestions.isNotEmpty) {
          for (final question in categoryQuestions) {
            try {
              await _migrateQuestion(question, category);
              totalMigrated++;
            } catch (e) {
              print('Error migrating question from $category: $e');
              totalErrors++;
            }
          }
          migratedCategories.add(category);
        }
      }

      return {
        'success': true,
        'totalMigrated': totalMigrated,
        'totalErrors': totalErrors,
        'categories': migratedCategories,
      };
    } catch (e) {
      print('Error in migrateAllQuestions: $e');
      return {
        'success': false,
        'error': e.toString(),
        'totalMigrated': 0,
        'totalErrors': 0,
        'categories': [],
      };
    }
  }

  Future<List<Map<String, dynamic>>> _getCategoryQuestions(
    String category,
  ) async {
    // Şimdilik test için her kategoriye birkaç dummy soru ekleyelim
    return [
      {
        'question': '$category test sorusu 1',
        'options': ['A seçeneği', 'B seçeneği', 'C seçeneği', 'D seçeneği'],
        'correctAnswer': 0,
        'explanation': 'Bu bir test sorusu açıklamasıdır.',
        'difficulty': 'medium',
      },
      {
        'question': '$category test sorusu 2',
        'options': ['A seçeneği', 'B seçeneği', 'C seçeneği', 'D seçeneği'],
        'correctAnswer': 1,
        'explanation': 'Bu ikinci test sorusu açıklamasıdır.',
        'difficulty': 'easy',
      },
    ];
  }

  Future<void> _migrateQuestion(
    Map<String, dynamic> question,
    String category,
  ) async {
    // Check if question already exists
    final existingQuery =
        await _firestore
            .collection('questions')
            .where('question', isEqualTo: question['question'])
            .where('category', isEqualTo: category)
            .get();

    if (existingQuery.docs.isNotEmpty) {
      print(
        'Question already exists, skipping: ${question['question']?.toString().substring(0, 50)}...',
      );
      return;
    }

    // Prepare question data
    final questionData = {
      'question': question['question'] ?? '',
      'options': List<String>.from(question['options'] ?? []),
      'correctAnswer':
          question['correctAnswer'] ?? question['correctAnswerIndex'] ?? 0,
      'explanation': question['explanation'] ?? '',
      'difficulty': _getDifficultyString(question['difficulty']),
      'category': category,
      'createdAt': FieldValue.serverTimestamp(),
      'createdBy': _auth.currentUser?.uid ?? 'system',
      'migrated': true,
    };

    // Add question to Firestore
    await _firestore.collection('questions').add(questionData);
  }

  String _getDifficultyString(dynamic difficulty) {
    if (difficulty == null) return 'medium';
    if (difficulty is int) {
      switch (difficulty) {
        case 1:
          return 'easy';
        case 2:
          return 'medium';
        case 3:
          return 'hard';
        default:
          return 'medium';
      }
    }
    return difficulty.toString();
  }

  Future<int> getExistingQuestionsCount() async {
    try {
      final snapshot = await _firestore.collection('questions').get();
      return snapshot.docs.length;
    } catch (e) {
      print('Error getting existing questions count: $e');
      return 0;
    }
  }

  Future<Map<String, int>> getCategoryStats() async {
    try {
      final snapshot = await _firestore.collection('questions').get();
      final Map<String, int> categoryStats = {};

      for (final doc in snapshot.docs) {
        final category = doc.data()['category'] as String? ?? 'Unknown';
        categoryStats[category] = (categoryStats[category] ?? 0) + 1;
      }

      return categoryStats;
    } catch (e) {
      print('Error getting category stats: $e');
      return {};
    }
  }

  Future<bool> clearAllQuestions() async {
    try {
      final batch = _firestore.batch();
      final snapshot = await _firestore.collection('questions').get();

      for (final doc in snapshot.docs) {
        batch.delete(doc.reference);
      }

      await batch.commit();
      return true;
    } catch (e) {
      print('Error clearing all questions: $e');
      return false;
    }
  }

  // Quiz service'deki soruları migration için dönüştür
  Future<void> migrateFromQuizService() async {
    // Bu fonksiyon QuizService'deki getQuestionsByCategory metodunu kullanarak
    // soruları Firestore'a aktarabilir
    print('Migration from QuizService not implemented yet');
  }
}
