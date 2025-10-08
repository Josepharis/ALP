import 'dart:math';
import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:firebase_auth/firebase_auth.dart';

// Data imports - Gerçek quiz dosyaları
import '../data/anesthesia_application_questions.dart';
import '../data/respiratory_system_questions.dart';
import '../data/cardiovascular_monitoring_questions.dart';
import '../data/pharmacological_principles_questions.dart';
import '../data/operating_room_environment_questions.dart';
import '../data/non_cardiovascular_monitoring_questions.dart';
import '../data/anesthesia_workstation_questions.dart';

import '../data/auxiliary_drugs_questions.dart';
import '../data/local_anesthetics_questions.dart';
import '../data/anticholinergic_drugs_questions.dart';
import '../data/adrenergic_drugs_questions.dart';
import '../data/cholinesterase_inhibitors_questions.dart';
import '../data/neuromuscular_blocking_agents_questions.dart';
import '../data/analgesic_agents_questions.dart';
import '../data/intravenous_anesthetics_questions.dart';
import '../data/inhalation_anesthetics_questions.dart';

// Questions imports
import '../data/airway_management_questions.dart';
import '../data/cardiovascular_physiology_questions.dart';
import '../data/cardiovascular_surgery_questions.dart';
import '../data/respiratory_diseases_questions.dart';
import '../data/respiratory_physiology_questions.dart';

class RealDataMigrationService {
  final FirebaseFirestore _firestore = FirebaseFirestore.instance;
  final FirebaseAuth _auth = FirebaseAuth.instance;

  Future<Map<String, dynamic>> migrateAllRealQuestions() async {
    try {
      int totalMigrated = 0;
      int totalErrors = 0;
      List<String> migratedCategories = [];

      // Data klasöründeki gerçek sorular
      final dataQuestions = [
        {'category': 'Anestezi', 'questions': anesthesiaApplicationQuestions},
        {
          'category': 'Solunum Sistemi',
          'questions': respiratorySystemQuestions,
        },
        {
          'category': 'Kardiyovasküler Monitoring',
          'questions': cardiovascularMonitoringQuestions,
        },
        {
          'category': 'Farmakolojik Prensipler',
          'questions': pharmacologicalPrinciplesQuestions,
        },
        {
          'category': 'Ameliyathane Ortamı',
          'questions': operatingRoomEnvironmentQuestions,
        },
        {
          'category': 'Non-Kardiyovasküler Monitoring',
          'questions': nonCardiovascularMonitoringQuestions,
        },
        {
          'category': 'Anestezi İstasyonu',
          'questions': anesthesiaWorkstationQuestions,
        },

        {'category': 'Yardımcı İlaçlar', 'questions': auxiliaryDrugsQuestions},
        {
          'category': 'Lokal Anestezikler',
          'questions': localAnestheticsQuestions,
        },
        {
          'category': 'Antikolinerjikler',
          'questions': anticholinergicDrugsQuestions,
        },
        {
          'category': 'Adrenerjik Agonist ve Antagonistler',
          'questions': adrenergicDrugsQuestions,
        },
        {
          'category': 'Kolinesteraz İnhibitörleri',
          'questions': cholinesteraseInhibitorsQuestions,
        },
        {
          'category': 'Nöromüsküler Blokörler',
          'questions': neuromuscularBlockingAgentsQuestions,
        },
        {
          'category': 'Opioidler ve Analjezikler',
          'questions': analgesicAgentsQuestions,
        },
        {
          'category': 'İntravenöz Anestezikler',
          'questions': intravenousAnestheticsQuestions,
        },
        {
          'category': 'İnhalasyon Anestezikleri',
          'questions': inhalationAnestheticsQuestions,
        },
      ];

      // Questions klasöründeki sorular
      final questionsData = [
        {
          'category': 'Havayolu Yönetimi',
          'questions': airwayManagementQuestions,
        },
        {
          'category': 'Kardiyovasküler Fizyoloji',
          'questions': cardiovascularPhysiologyQuestions,
        },
        {
          'category': 'Kardiyovasküler Cerrahi',
          'questions': cardiovascularSurgeryQuestions,
        },
        {
          'category': 'Solunumsal Hastalıklar',
          'questions': respiratoryDiseasesQuestions,
        },
        {
          'category': 'Solunumsal Fizyoloji',
          'questions': respiratoryPhysiologyQuestions,
        },
      ];

      // Tüm soruları birleştir
      final allQuestionSets = [...dataQuestions, ...questionsData];

      for (final questionSet in allQuestionSets) {
        final category = questionSet['category'] as String;
        final questions = questionSet['questions'] as dynamic;


        if (questions is List) {

          for (final question in questions) {
            try {
              final questionMap = _convertQuestionToMap(question);
              await _migrateQuestion(questionMap, category);
              totalMigrated++;
            } catch (e) {
              totalErrors++;
            }
          }
          migratedCategories.add(category);
        } else {
        }
      }

      return {
        'success': true,
        'totalMigrated': totalMigrated,
        'totalErrors': totalErrors,
        'categories': migratedCategories,
      };
    } catch (e) {
      return {
        'success': false,
        'error': e.toString(),
        'totalMigrated': 0,
        'totalErrors': 0,
        'categories': [],
      };
    }
  }

  Map<String, dynamic> _convertQuestionToMap(dynamic question) {
    if (question is Map<String, dynamic>) {
      return question;
    }

    // Question object'i map'e dönüştür
    if (question.runtimeType.toString().contains('Question')) {
      return {
        'question': question.question ?? '',
        'options': question.options ?? [],
        'correctAnswer': question.correctAnswerIndex ?? 0,
        'explanation': question.explanation ?? '',
        'difficulty': _getDifficultyString(question.difficulty),
      };
    }

    // Map olarak gelen veriyi doğrudan kullan
    return {
      'question': question['question'] ?? '',
      'options': List<String>.from(question['options'] ?? []),
      'correctAnswer':
          question['correctAnswerIndex'] ?? question['correctAnswer'] ?? 0,
      'explanation': question['explanation'] ?? '',
      'difficulty': _getDifficultyString(question['difficulty']),
    };
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
      // Question already exists, skipping
      return;
    }

    // Prepare question data
    final questionData = {
      'question': question['question'] ?? '',
      'options': List<String>.from(question['options'] ?? []),
      'correctAnswer': question['correctAnswer'] ?? 0,
      'explanation': question['explanation'] ?? '',
      'difficulty': question['difficulty'] ?? 'medium',
      'category': category,
      'createdAt': FieldValue.serverTimestamp(),
      'createdBy': _auth.currentUser?.uid ?? 'system',
      'migrated': true,
      'source': 'real_data',
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
    if (difficulty is String) return difficulty;
    return 'medium';
  }

  Future<int> getExistingQuestionsCount() async {
    try {
      final snapshot = await _firestore.collection('questions').get();
      return snapshot.docs.length;
    } catch (e) {
      return 0;
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
      return false;
    }
  }
}
