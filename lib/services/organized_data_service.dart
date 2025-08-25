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
import '../data/preoperative_assessment_questions.dart';
import '../data/auxiliary_drugs_questions.dart';
import '../data/local_anesthetics_questions.dart';
import '../data/anticholinergic_drugs_questions.dart';
import '../data/adrenergic_drugs_questions.dart';
import '../data/cholinesterase_inhibitors_questions.dart';
import '../data/neuromuscular_blocking_agents_questions.dart';
import '../data/analgesic_agents_questions.dart';
import '../data/intravenous_anesthetics_questions.dart';
import '../data/inhalation_anesthetics_questions.dart';

// Additional data imports - Tüm 24 kategori
import '../data/airway_management_questions.dart';
import '../data/cardiovascular_physiology_questions.dart';
import '../data/cardiovascular_surgery_questions.dart';
import '../data/respiratory_diseases_questions.dart';
import '../data/respiratory_physiology_questions.dart';
import '../data/chronic_pain_treatment_questions.dart';
import '../data/postoperative_care_mechanical_ventilation_questions.dart';
import '../data/hepatic_physiology_anesthesia_questions.dart';
import '../data/obstetric_anesthesia_questions.dart';
import '../data/acid_base_management_questions.dart';
import '../data/liver_disease_anesthesia_questions.dart';
import '../data/neurophysiology_anesthesia_questions.dart'; // Added
import '../data/perioperative_intensive_care_nutrition_questions.dart'; // Added
import '../data/fluid_electrolyte_imbalance_management_questions.dart'; // Added

// Eksik 24 kategori import'ları
import '../data/cardiopulmonary_resuscitation_questions.dart';
import '../data/intensive_care_problems_questions.dart';
import '../data/outpatient_anesthesia_questions.dart';
import '../data/pediatric_anesthesia_questions.dart';
import '../data/postanesthetic_care_questions.dart';
import '../data/thermoregulation_hypothermia_malignant_hyperthermia_questions.dart';
import '../data/thoracic_surgery_anesthesia_questions.dart';
import '../data/fluid_management_blood_products_questions.dart';
import '../data/spinal_epidural_caudal_blocks_questions.dart';
import '../data/safety_quality_performance_improvement_questions.dart';
import '../data/renal_physiology_anesthesia_questions.dart';
import '../data/ophthalmic_anesthesia_questions.dart';
import '../data/genitourinary_anesthesia_questions.dart';
import '../data/anesthesia_complications_questions.dart';
import '../data/enhanced_recovery_protocols_questions.dart';
import '../data/orthopedic_anesthesia_questions.dart';
import '../data/trauma_emergency_anesthesia_questions.dart';
import '../data/geriatric_anesthesia_questions.dart';
import '../data/endocrine_diseases_anesthesia_questions.dart';
import '../data/neuromuscular_diseases_anesthesia_questions.dart';
import '../data/neurological_psychiatric_anesthesia_questions.dart';
import '../data/otolaryngology_head_neck_surgery_questions.dart';
import '../data/pain_management_questions.dart';
import '../data/hypotensive_agents_questions.dart';

class OrganizedDataService {
  final FirebaseFirestore _firestore = FirebaseFirestore.instance;
  final FirebaseAuth _auth = FirebaseAuth.instance;

  // Quiz kategorilerini organize şekilde aktarma
  Future<Map<String, dynamic>> migrateOrganizedQuestions() async {
    try {
      int totalMigrated = 0;
      int totalErrors = 0;
      List<String> migratedCategories = [];

      // Quiz kategorileri ve dosya adları
      final quizCategories = [
        {
          'displayName': 'Anestezi Uygulamaları',
          'collectionName': 'anestezi-uygulamalari',
          'questions': anesthesiaApplicationQuestions,
        },
        {
          'displayName': 'Solunum Sistemi',
          'collectionName': 'solunum-sistemi',
          'questions': respiratorySystemQuestions,
        },
        {
          'displayName': 'Kardiyovasküler Monitoring',
          'collectionName': 'kardiyovaskuler-monitoring',
          'questions': cardiovascularMonitoringQuestions,
        },
        {
          'displayName': 'Farmakolojik Prensipler',
          'collectionName': 'farmakolojik-prensipler',
          'questions': pharmacologicalPrinciplesQuestions,
        },
        {
          'displayName': 'Ameliyathane Ortamı',
          'collectionName': 'ameliyathane-ortami',
          'questions': operatingRoomEnvironmentQuestions,
        },
        {
          'displayName': 'Non-Kardiyovasküler Monitoring',
          'collectionName': 'non-kardiyovaskuler-monitoring',
          'questions': nonCardiovascularMonitoringQuestions,
        },
        {
          'displayName': 'Anestezi İstasyonu',
          'collectionName': 'anestezi-istasyonu',
          'questions': anesthesiaWorkstationQuestions,
        },
        {
          'displayName': 'Preoperatif Değerlendirme',
          'collectionName': 'preoperatif-degerlendirme',
          'questions': preoperativeAssessmentQuestions,
        },
        {
          'displayName': 'Yardımcı İlaçlar',
          'collectionName': 'yardimci-ilaclar',
          'questions': auxiliaryDrugsQuestions,
        },
        {
          'displayName': 'Lokal Anestezikler',
          'collectionName': 'lokal-anestezikler',
          'questions': localAnestheticsQuestions,
        },
        {
          'displayName': 'Antikolinerjikler',
          'collectionName': 'antikolinerjikler',
          'questions': anticholinergicDrugsQuestions,
        },
        {
          'displayName': 'Adrenerjik Agonist ve Antagonistler',
          'collectionName': 'adrenerjik-agonist-antagonistler',
          'questions': adrenergicDrugsQuestions,
        },
        {
          'displayName': 'Kolinesteraz İnhibitörleri',
          'collectionName': 'kolinesteraz-inhibitorleri',
          'questions': cholinesteraseInhibitorsQuestions,
        },
        {
          'displayName': 'Nöromüsküler Blokörler',
          'collectionName': 'neuromuskuler-blokorler',
          'questions': neuromuscularBlockingAgentsQuestions,
        },
        {
          'displayName': 'Opioidler ve Analjezikler',
          'collectionName': 'opioidler-analjezikler',
          'questions': analgesicAgentsQuestions,
        },
        {
          'displayName': 'İntravenöz Anestezikler',
          'collectionName': 'intravenoz-anestezikler',
          'questions': intravenousAnestheticsQuestions,
        },
        {
          'displayName': 'İnhalasyon Anestezikleri',
          'collectionName': 'inhalasyon-anestezikleri',
          'questions': inhalationAnestheticsQuestions,
        },
        {
          'displayName': 'Havayolu Yönetimi',
          'collectionName': 'havayolu-yonetimi',
          'questions': airwayManagementQuestions,
        },
        {
          'displayName': 'Kardiyovasküler Fizyoloji',
          'collectionName': 'kardiyovaskuler-fizyoloji',
          'questions': cardiovascularPhysiologyQuestions,
        },
        {
          'displayName': 'Kardiyovasküler Cerrahi',
          'collectionName': 'kardiyovaskuler-cerrahi',
          'questions': cardiovascularSurgeryQuestions,
        },
        {
          'displayName': 'Solunumsal Hastalıklar',
          'collectionName': 'solunumsal-hastaliklar',
          'questions': respiratoryDiseasesQuestions,
        },
        {
          'displayName': 'Solunumsal Fizyoloji',
          'collectionName': 'solunumsal-fizyoloji',
          'questions': respiratoryPhysiologyQuestions,
        },
        {
          'displayName': 'Postoperatif Bakım ve Mekanik Ventilasyon',
          'collectionName': 'postoperatif-bakim-mekanik-ventilasyon',
          'questions': postoperativeCareMechanicalVentilationQuestions,
        },
        {
          'displayName': 'Hepatik Fizyoloji ve Anestezi',
          'collectionName': 'hepatik-fizyoloji-anestezi',
          'questions': hepaticPhysiologyAnesthesiaQuestions,
        },
        {
          'displayName': 'Obstetrik Anestezi',
          'collectionName': 'obstetrik-anestezi',
          'questions': obstetricAnesthesiaQuestions,
        },
        {
          'displayName': 'Asit-Baz Yönetimi',
          'collectionName': 'acid-base-management',
          'questions': acidBaseManagementQuestions,
        },
        {
          'displayName': 'Karaciğer Hastalığı Olan Hastalarda Anestezi',
          'collectionName': 'liver-disease-anesthesia',
          'questions': liverDiseaseAnesthesiaQuestions,
        },
        {
          'displayName': 'Nörofizyoloji ve Anestezi',
          'collectionName': 'neurophysiology-anesthesia',
          'questions': neurophysiologyAnesthesiaQuestions,
        },
        {
          'displayName': 'Perioperatif ve Yoğun Bakımda Beslenme',
          'collectionName': 'perioperative-intensive-care-nutrition',
          'questions': perioperativeIntensiveCareNutritionQuestions,
        },
        {
          'displayName': 'Sıvı ve Elektrolit Dengesizlikleri Olan Hastaların Yönetimi',
          'collectionName': 'fluid-electrolyte-imbalance-management',
          'questions': fluidElectrolyteImbalanceManagementQuestions,
        },
        // Eksik 24 kategori
        {
          'displayName': 'Kardiyopulmoner Resüsitasyon',
          'collectionName': 'cardiopulmonary-resuscitation',
          'questions': cardiopulmonaryResuscitationQuestions,
        },
        {
          'displayName': 'Yoğun Bakım Sorunları',
          'collectionName': 'intensive-care-problems',
          'questions': intensiveCareProblemsQuestions,
        },
        {
          'displayName': 'Günübirlik Anestezi',
          'collectionName': 'outpatient-anesthesia',
          'questions': outpatientAnesthesiaQuestions,
        },
        {
          'displayName': 'Pediatrik Anestezi',
          'collectionName': 'pediatric-anesthesia',
          'questions': pediatricAnesthesiaQuestions,
        },
        {
          'displayName': 'Postanestezik Bakım',
          'collectionName': 'postanesthetic-care',
          'questions': postanestheticCareQuestions,
        },
        {
          'displayName': 'Termoregülasyon ve Malign Hipertermi',
          'collectionName': 'thermoregulation-hypothermia-malignant-hyperthermia',
          'questions': thermoregulationHypothermiaMalignantHyperthermiaQuestions,
        },
        {
          'displayName': 'Torasik Cerrahi Anestezi',
          'collectionName': 'thoracic-surgery-anesthesia',
          'questions': thoracicSurgeryAnesthesiaQuestions,
        },
        {
          'displayName': 'Sıvı Yönetimi ve Kan Ürünleri',
          'collectionName': 'fluid-management-blood-products',
          'questions': fluidManagementBloodProductsQuestions,
        },
        {
          'displayName': 'Spinal, Epidural ve Kaudal Bloklar',
          'collectionName': 'spinal-epidural-caudal-blocks',
          'questions': spinalEpiduralCaudalBlocksQuestions,
        },
        {
          'displayName': 'Güvenlik ve Kalite İyileştirme',
          'collectionName': 'safety-quality-performance-improvement',
          'questions': safetyQualityPerformanceImprovementQuestions,
        },
        {
          'displayName': 'Renal Fizyoloji ve Anestezi',
          'collectionName': 'renal-physiology-anesthesia',
          'questions': renalPhysiologyAnesthesiaQuestions,
        },
        {
          'displayName': 'Oftalmik Anestezi',
          'collectionName': 'ophthalmic-anesthesia',
          'questions': ophthalmicAnesthesiaQuestions,
        },
        {
          'displayName': 'Genitoüriner Anestezi',
          'collectionName': 'genitourinary-anesthesia',
          'questions': genitourinaryAnesthesiaQuestions,
        },
        {
          'displayName': 'Anestezi Komplikasyonları',
          'collectionName': 'anesthesia-complications',
          'questions': anesthesiaComplicationsQuestions,
        },
        {
          'displayName': 'Geliştirilmiş İyileşme Protokolleri',
          'collectionName': 'enhanced-recovery-protocols',
          'questions': enhancedRecoveryProtocolsQuestions,
        },
        {
          'displayName': 'Ortopedik Anestezi',
          'collectionName': 'orthopedic-anesthesia',
          'questions': orthopedicAnesthesiaQuestions,
        },
        {
          'displayName': 'Travma ve Acil Anestezi',
          'collectionName': 'trauma-emergency-anesthesia',
          'questions': traumaEmergencyAnesthesiaQuestions,
        },
        {
          'displayName': 'Geriatrik Anestezi',
          'collectionName': 'geriatric-anesthesia',
          'questions': geriatricAnesthesiaQuestions,
        },
        {
          'displayName': 'Endokrin Hastalıklar ve Anestezi',
          'collectionName': 'endocrine-diseases-anesthesia',
          'questions': endocrineDiseaseAnesthesiaQuestions,
        },
        {
          'displayName': 'Nöromüsküler Hastalıklar ve Anestezi',
          'collectionName': 'neuromuscular-diseases-anesthesia',
          'questions': neuromuscularDiseasesAnesthesiaQuestions,
        },
        {
          'displayName': 'Nörolojik ve Psikiyatrik Anestezi',
          'collectionName': 'neurological-psychiatric-anesthesia',
          'questions': neurologicalPsychiatricAnesthesiaQuestions,
        },
        {
          'displayName': 'Otolaringoloji ve Baş-Boyun Cerrahisi',
          'collectionName': 'otolaryngology-head-neck-surgery',
          'questions': otolaryngologyHeadNeckSurgeryQuestions,
        },
        {
          'displayName': 'Ağrı Yönetimi',
          'collectionName': 'pain-management',
          'questions': painManagementQuestions,
        },
        {
          'displayName': 'Hipotansif Ajanlar',
          'collectionName': 'hypotensive-agents',
          'questions': hypotensiveAgentsQuestions,
        },
      ];

      for (final category in quizCategories) {
        final displayName = category['displayName'] as String;
        final collectionName = category['collectionName'] as String;
        final questions = category['questions'] as dynamic;

        print('Migrating category: $displayName -> $collectionName');

        if (questions is List && questions.isNotEmpty) {
          // Önce category meta bilgisini kaydet
          await _createCategoryMeta(
            collectionName,
            displayName,
            questions.length,
          );

          print('Found ${questions.length} questions in $displayName');

          for (int i = 0; i < questions.length; i++) {
            try {
              final question = questions[i];
              final questionMap = _convertQuestionToMap(question);
              await _migrateOrganizedQuestion(
                questionMap,
                collectionName,
                displayName,
                i + 1,
              );
              totalMigrated++;
            } catch (e) {
              print('Error migrating question ${i + 1} from $displayName: $e');
              totalErrors++;
            }
          }
          migratedCategories.add(displayName);
        } else {
          print('Warning: $displayName does not contain questions');
        }
      }

      return {
        'success': true,
        'totalMigrated': totalMigrated,
        'totalErrors': totalErrors,
        'categories': migratedCategories,
      };
    } catch (e) {
      print('Error in migrateOrganizedQuestions: $e');
      return {
        'success': false,
        'error': e.toString(),
        'totalMigrated': 0,
        'totalErrors': 0,
        'categories': [],
      };
    }
  }

  // Category meta bilgisini kaydet
  Future<void> _createCategoryMeta(
    String collectionName,
    String displayName,
    int questionCount,
  ) async {
    try {
      await _firestore.collection('quizCategories').doc(collectionName).set({
        'displayName': displayName,
        'collectionName': collectionName,
        'questionCount': questionCount,
        'createdAt': FieldValue.serverTimestamp(),
        'updatedAt': FieldValue.serverTimestamp(),
        'isActive': true,
      }, SetOptions(merge: true));
    } catch (e) {
      print('Error creating category meta: $e');
    }
  }

  // Organize edilmiş soruyu kaydet
  Future<void> _migrateOrganizedQuestion(
    Map<String, dynamic> question,
    String collectionName,
    String displayName,
    int questionNumber,
  ) async {
    try {
      // Check if question already exists
      final existingQuery =
          await _firestore
              .collection('questions')
              .doc(collectionName)
              .collection('items')
              .where('question', isEqualTo: question['question'])
              .get();

      if (existingQuery.docs.isNotEmpty) {
        print(
          'Question already exists, skipping: ${question['question']?.toString().substring(0, min(50, question['question']?.toString().length ?? 0))}...',
        );
        return;
      }

      // Prepare question data
      final questionData = {
        'questionNumber': questionNumber,
        'question': question['question'] ?? '',
        'options': List<String>.from(question['options'] ?? []),
        'correctAnswer': question['correctAnswer'] ?? 0,
        'explanation': question['explanation'] ?? '',
        'difficulty': question['difficulty'] ?? 'medium',
        'category': displayName,
        'collectionName': collectionName,
        'createdAt': FieldValue.serverTimestamp(),
        'createdBy': _auth.currentUser?.uid ?? 'system',
        'migrated': true,
        'source': 'organized_data',
      };

      // Add question to organized subcollection
      await _firestore
          .collection('questions')
          .doc(collectionName)
          .collection('items')
          .add(questionData);
    } catch (e) {
      print('Error migrating organized question: $e');
      rethrow;
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

  // Organize edilmiş kategorileri getir
  Future<List<Map<String, dynamic>>> getOrganizedCategories() async {
    try {
      final snapshot =
          await _firestore
              .collection('quizCategories')
              .where('isActive', isEqualTo: true)
              .orderBy('displayName')
              .get();

      return snapshot.docs.map((doc) {
        final data = doc.data();
        return {
          'id': doc.id,
          'displayName': data['displayName'] ?? '',
          'collectionName': data['collectionName'] ?? '',
          'questionCount': data['questionCount'] ?? 0,
          'createdAt': data['createdAt'],
        };
      }).toList();
    } catch (e) {
      print('Error getting organized categories: $e');
      return [];
    }
  }

  // Belirli kategorinin sorularını getir
  Future<List<Map<String, dynamic>>> getQuestionsByCategory(
    String collectionName,
  ) async {
    try {
      final snapshot =
          await _firestore
              .collection('questions')
              .doc(collectionName)
              .collection('items')
              .orderBy('questionNumber')
              .get();

      return snapshot.docs.map((doc) {
        final data = doc.data();
        return {
          'id': doc.id,
          'questionNumber': data['questionNumber'] ?? 0,
          'question': data['question'] ?? '',
          'options': List<String>.from(data['options'] ?? []),
          'correctAnswer': data['correctAnswer'] ?? 0,
          'explanation': data['explanation'] ?? '',
          'difficulty': data['difficulty'] ?? 'medium',
          'category': data['category'] ?? '',
          'collectionName': data['collectionName'] ?? collectionName,
          'createdAt': data['createdAt'],
        };
      }).toList();
    } catch (e) {
      print('Error getting questions by category: $e');
      return [];
    }
  }

  // Organize edilmiş soru silme
  Future<bool> deleteOrganizedQuestion(
    String collectionName,
    String questionId,
  ) async {
    try {
      await _firestore
          .collection('questions')
          .doc(collectionName)
          .collection('items')
          .doc(questionId)
          .delete();
      return true;
    } catch (e) {
      print('Error deleting organized question: $e');
      return false;
    }
  }

  // Organize edilmiş soru güncelleme
  Future<bool> updateOrganizedQuestion(
    String collectionName,
    String questionId,
    Map<String, dynamic> questionData,
  ) async {
    try {
      await _firestore
          .collection('questions')
          .doc(collectionName)
          .collection('items')
          .doc(questionId)
          .update({
            ...questionData,
            'updatedAt': FieldValue.serverTimestamp(),
            'updatedBy': _auth.currentUser?.uid,
          });
      return true;
    } catch (e) {
      print('Error updating organized question: $e');
      return false;
    }
  }

  // İstatistikler
  Future<Map<String, dynamic>> getOrganizedStatistics() async {
    try {
      final categoriesSnapshot =
          await _firestore.collection('quizCategories').get();
      int totalQuestions = 0;
      int totalCategories = categoriesSnapshot.docs.length;

      Map<String, int> questionsByCategory = {};

      for (final categoryDoc in categoriesSnapshot.docs) {
        final data = categoryDoc.data();
        final displayName = data['displayName'] as String;
        final questionCount = data['questionCount'] as int? ?? 0;

        questionsByCategory[displayName] = questionCount;
        totalQuestions += questionCount;
      }

      return {
        'totalQuestions': totalQuestions,
        'totalCategories': totalCategories,
        'questionsByCategory': questionsByCategory,
      };
    } catch (e) {
      print('Error getting organized statistics: $e');
      return {
        'totalQuestions': 0,
        'totalCategories': 0,
        'questionsByCategory': <String, int>{},
      };
    }
  }
}
