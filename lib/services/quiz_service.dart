import 'dart:async';
import 'dart:math';
 
import 'package:anestezi/models/daily_question.dart';
import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:provider/provider.dart';
import 'package:flutter/material.dart';
import '../models/quiz.dart';
import '../models/question.dart';
import '../models/user_activity.dart';
import 'auth_service.dart';
import '../data/anesthesia_application_questions.dart';
import '../data/respiratory_system_questions.dart';
import '../data/cardiovascular_monitoring_questions.dart';
import '../data/pharmacological_principles_questions.dart';
import '../data/operating_room_environment_questions.dart';
import '../data/non_cardiovascular_monitoring_questions.dart';
import '../data/anesthesia_workstation_questions.dart';
import '../data/inhalation_anesthetics_questions.dart';
import '../data/intravenous_anesthetics_questions.dart';
import '../data/analgesic_agents_questions.dart';
import '../data/neuromuscular_blocking_agents_questions.dart';
import '../data/cholinesterase_inhibitors_questions.dart';
import '../data/anticholinergic_drugs_questions.dart';
import '../data/adrenergic_drugs_questions.dart';
import '../data/hypotensive_agents_questions.dart';
import '../data/local_anesthetics_questions.dart';
import '../data/auxiliary_drugs_questions.dart';

// İngilizce soru dosyaları
import '../data/english/postanesthesia_care_questions.dart' as en;

import '../data/airway_management_questions.dart';
import '../data/cardiovascular_physiology_questions.dart';
import '../data/cardiovascular_surgery_questions.dart';
import '../data/respiratory_diseases_questions.dart';
import '../data/respiratory_physiology_questions.dart';
import '../data/pain_management_questions.dart';
import '../data/neurological_psychiatric_anesthesia_questions.dart';
import '../data/otolaryngology_head_neck_surgery_questions.dart';
import '../data/endocrine_diseases_anesthesia_questions.dart';
import '../data/neuromuscular_diseases_anesthesia_questions.dart';
import '../data/geriatric_anesthesia_questions.dart';
import '../data/trauma_emergency_anesthesia_questions.dart';
import '../data/orthopedic_anesthesia_questions.dart';
import '../data/enhanced_recovery_protocols_questions.dart'; // Added
import '../data/anesthesia_complications_questions.dart'; // Added
import '../data/genitourinary_anesthesia_questions.dart'; // Added
import '../data/ophthalmic_anesthesia_questions.dart'; // Added
import '../data/renal_physiology_anesthesia_questions.dart'; // Added
import '../data/spinal_epidural_caudal_blocks_questions.dart'; // Added
import '../data/safety_quality_performance_improvement_questions.dart'; // Added
import '../data/fluid_management_blood_products_questions.dart'; // Added
import '../data/thoracic_surgery_anesthesia_questions.dart'; // Added
import '../data/thermoregulation_hypothermia_malignant_hyperthermia_questions.dart'; // Added
import '../data/outpatient_anesthesia_questions.dart'; // Added
import '../data/cardiopulmonary_resuscitation_questions.dart'; // Added
import '../data/intensive_care_problems_questions.dart'; // Added
import '../data/sepsis_ards_questions.dart'; // Added
import '../data/coagulation_anticoagulant_questions.dart'; // Added
import '../data/postanesthetic_care_questions.dart'; // Added
import '../data/pediatric_anesthesia_questions.dart'; // Added
import '../data/postoperative_care_mechanical_ventilation_questions.dart'; // Added
import '../data/neurosurgery_anesthesia_questions.dart'; // Added
import '../data/erc_2021_guidelines_questions.dart'; // Added
import 'question_translation_service.dart';
import 'multilingual_question_service.dart';
import 'language_service.dart';


class QuizService {
  final FirebaseFirestore _firestore = FirebaseFirestore.instance;
  final AuthService _authService = AuthService();
  final QuestionTranslationService _translationService = QuestionTranslationService();


  // Quiz'in attemptCount'unu artır
  Future<bool> incrementQuizAttemptCount(String quizId) async {
    try {
      final userId = _authService.currentUser?.uid;
      if (userId == null) {
        throw Exception('Kullanıcı giriş yapmamış');
      }

      final ongoingQuizRef = _firestore
          .collection('user_ongoing_quizzes')
          .doc('${userId}_${quizId}');

      final existingQuiz = await ongoingQuizRef.get();
      
      if (existingQuiz.exists) {
        final data = existingQuiz.data() as Map<String, dynamic>;
        final currentAttemptCount = data['attemptCount'] ?? 1;
        
        await ongoingQuizRef.update({
          'attemptCount': currentAttemptCount + 1,
          'updatedAt': Timestamp.now(),
        });
        
        return true;
      }
      
      return false;
    } catch (e) {
      return false;
    }
  }

  // Kullanıcının quiz ilerlemesini kaydet
  Future<bool> saveQuizProgress(Quiz quiz) async {
    try {
      final userId = _authService.currentUser?.uid;
      if (userId == null) {
        throw Exception('Kullanıcı giriş yapmamış');
      }

      // Kullanıcı aktivitesini al veya oluştur
      final userActivityRef = _firestore
          .collection('userActivities')
          .doc(userId);
      final userActivityDoc = await userActivityRef.get();

      if (!userActivityDoc.exists) {
        // Kullanıcı aktivitesi yoksa yeni oluştur
        await userActivityRef.set({
          'userId': userId,
          'lastLoginAt': Timestamp.now(),
          'dailyStreak': 1,
          'quizProgress': {},
          'loginDates': [],
        });
      }

      // Önce aynı quiz için devam eden kayıt var mı kontrol et
      final ongoingQuizRef = _firestore
          .collection('user_ongoing_quizzes')
          .doc('${userId}_${quiz.id}');

      final existingQuiz = await ongoingQuizRef.get();

      // Eğer aynı quiz zaten devam ediyorsa, sadece güncelle
      if (existingQuiz.exists) {
        await ongoingQuizRef.update({
          'currentQuestionIndex': quiz.currentQuestionIndex ?? 0,
          'score': quiz.score ?? 0,
          'updatedAt': Timestamp.now(),
        });
      } else {
        // Yeni quiz kaydı oluştur - attemptCount'u hesapla
        // Eğer bu kategori için tamamlanmış quiz varsa, attemptCount'u artır
        int attemptCount = 1;
        
        // Aynı kategori için tamamlanmış quiz var mı kontrol et
        final completedQuizQuery = await _firestore
            .collection('user_completed_quizzes')
            .where('userId', isEqualTo: userId)
            .where('categoryName', isEqualTo: quiz.name)
            .get();
            
        if (completedQuizQuery.docs.isNotEmpty) {
          // Bu kullanıcı için bu kategoriyi daha önce tamamlamış
          // user_quiz_history'den totalCompletions sayısını al
          try {
            final historyDoc = await _firestore
                .collection('user_quiz_history')
                .doc('${userId}_${quiz.name.toLowerCase()}')
                .get();
                
            if (historyDoc.exists) {
              final data = historyDoc.data() as Map<String, dynamic>;
              final totalCompletions = data['totalCompletions'] ?? 0;
              attemptCount = totalCompletions + 1;
            } else {
              attemptCount = 2; // İlk tekrar çözme
            }
          } catch (e) {
            attemptCount = 2; // Hata durumunda varsayılan değer
          }
          
          // Aynı kategori için devam eden quiz var mı kontrol et (başka bir quiz)
          final ongoingQuizQuery = await _firestore
              .collection('user_ongoing_quizzes')
              .where('userId', isEqualTo: userId)
              .where('quizName', isEqualTo: quiz.name)
              .get();
              
          if (ongoingQuizQuery.docs.isNotEmpty) {
            // Devam eden quiz varsa, onun attemptCount'unu al ve artır
            final maxAttemptCount = ongoingQuizQuery.docs
                .map((doc) => (doc.data()['attemptCount'] as int?) ?? 1)
                .reduce((a, b) => a > b ? a : b);
            attemptCount = maxAttemptCount + 1;
          }
        }
        
        await ongoingQuizRef.set({
          'userId': userId,
          'quizId': quiz.id,
          'quizName': quiz.name,
          'currentQuestionIndex': quiz.currentQuestionIndex ?? 0,
          'totalQuestions': quiz.totalQuestions,
          'score': quiz.score ?? 0,
          'attemptCount': attemptCount,
          'updatedAt': Timestamp.now(),
          'createdAt': Timestamp.now(),
        });
      }

      // Sorunun ilerlemesini kaydet
      final progressPercentage =
          quiz.currentQuestionIndex != null && quiz.totalQuestions > 0
              ? quiz.currentQuestionIndex! / quiz.totalQuestions
              : 0.0;

      // Kullanıcı aktivitesini güncelle
      await userActivityRef.set({
        'quizProgress': {
          quiz.id: {
            'totalQuestions': quiz.totalQuestions,
            'completedQuestions': quiz.currentQuestionIndex ?? 0,
            'correctAnswers': 0, // Burayı ileride detaylı takip edebiliriz
            'wrongAnswers': 0,
            'score': quiz.score ?? 0,
            'isCompleted': false,
            'progressPercentage': progressPercentage,
            'lastUpdatedAt': Timestamp.now(),
          },
        },
      }, SetOptions(merge: true));

      return true;
    } catch (e) {
      return false;
    }
  }

  // Tüm quizleri getir
  Future<List<Quiz>> getAllQuizzes() async {
    try {
      final querySnapshot = await _firestore.collection('quizzes').get();

      List<Quiz> quizzes = [];
      for (var doc in querySnapshot.docs) {
        // Her quiz için soru sayısını getir
        final questionsSnapshot =
            await _firestore
                .collection('quizzes')
                .doc(doc.id)
                .collection('questions')
                .get();

        final quiz = Quiz.fromFirestore(
          doc,
          totalQuestions: questionsSnapshot.docs.length,
        );

        quizzes.add(quiz);
      }

      return quizzes;
    } catch (e) {
      return [];
    }
  }

  // ID'ye göre quiz getir
  Future<Quiz?> getQuizById(String quizId) async {
    try {
      final docSnapshot =
          await _firestore.collection('quizzes').doc(quizId).get();

      if (!docSnapshot.exists) {
        throw Exception('Quiz bulunamadı: $quizId');
      }

      // Quiz sorularını getir
      final questionsSnapshot =
          await _firestore
              .collection('quizzes')
              .doc(quizId)
              .collection('questions')
              .get();

      List<Question> questions = [];
      for (var doc in questionsSnapshot.docs) {
        final data = doc.data();
        questions.add(Question.fromJson(data));
      }

      return Quiz.fromFirestore(docSnapshot, questionsList: questions);
    } catch (e) {
      return null;
    }
  }

  // Popüler quizleri getir
  Future<List<Quiz>> getPopularQuizzes({int limit = 5}) async {
    try {

      // İlk kez çalışıyorsa temel popülarite değerlerini ayarla
      await _initializePopularityCounts();

      final querySnapshot =
          await _firestore
              .collection('quizzes')
              .orderBy('popularityCount', descending: true)
              .limit(limit)
              .get();


      List<Quiz> quizzes = [];
      for (var doc in querySnapshot.docs) {

        // Her quiz için soru sayısını getir
        final questionsSnapshot =
            await _firestore
                .collection('quizzes')
                .doc(doc.id)
                .collection('questions')
                .get();

        final quiz = Quiz.fromFirestore(
          doc,
          totalQuestions: questionsSnapshot.docs.length,
        );

        quizzes.add(quiz);
      }

      return quizzes;
    } catch (e) {
      return [];
    }
  }

  // Başlangıç popülarite değerlerini ayarla
  Future<void> _initializePopularityCounts() async {
    try {
      final quizzesSnapshot = await _firestore.collection('quizzes').get();

      for (var doc in quizzesSnapshot.docs) {
        final data = doc.data();
        if (data['popularityCount'] == null) {
          // Popülarite sayısı yoksa rastgele bir başlangıç değeri ata
          final randomCount =
              [5, 8, 12, 15, 20, 25, 30][DateTime.now().millisecond % 7];
          await doc.reference.update({'popularityCount': randomCount});
          // Başlangıç popülarite değeri atandı
        }
      }
    } catch (e) {
    }
  }

  // Kullanıcının devam ettiği quizleri getir
  Future<List<Quiz>> getOngoingQuizzes() async {
    try {
      final userId = _authService.currentUser?.uid;
      if (userId == null) {
        throw Exception('Kullanıcı giriş yapmamış');
      }

      // Doğrudan user_ongoing_quizzes koleksiyonundan sorgulama yap
      final querySnapshot =
          await _firestore
              .collection('user_ongoing_quizzes')
              .where('userId', isEqualTo: userId)
              .get();

      if (querySnapshot.docs.isEmpty) {
        return [];
      }

      // Tekrarlanan quizleri filtrele (aynı quizId'ye sahip olanları gruplayıp en son güncellenen versiyonunu al)
      final Map<String, DocumentSnapshot> uniqueQuizDocs = {};

      for (var doc in querySnapshot.docs) {
        final data = doc.data();
        final quizId = data['quizId'] as String? ?? '';

        // Bu quizId zaten var mı kontrol et
        final bool shouldReplace = !uniqueQuizDocs.containsKey(quizId);

        // Eğer quizId varsa, zaman kontrolü yap ve daha yeni olanı seç
        if (!shouldReplace) {
          final Timestamp? currentUpdatedAt = data['updatedAt'] as Timestamp?;
          final Timestamp? existingUpdatedAt =
              (uniqueQuizDocs[quizId]!.data()
                      as Map<String, dynamic>)['updatedAt']
                  as Timestamp?;

          // Yeni tarih eskisinden sonraysa güncelle
          if (currentUpdatedAt != null &&
              (existingUpdatedAt == null ||
                  currentUpdatedAt.toDate().isAfter(
                    existingUpdatedAt.toDate(),
                  ))) {
            uniqueQuizDocs[quizId] = doc;
          }
        } else {
          // İlk kez gördüğümüz quiz, ekle
          uniqueQuizDocs[quizId] = doc;
        }
      }

      // Filtrelenmiş benzersiz quizleri Quiz nesnelerine dönüştür
      List<Quiz> ongoingQuizzes = [];
      uniqueQuizDocs.forEach((_, doc) {
        final data = doc.data() as Map<String, dynamic>;

        // Quiz nesnesini oluştur
        final quiz = Quiz(
          id: data['quizId'] as String? ?? '',
          name: data['quizName'] as String? ?? 'Quiz',
          totalQuestions: data['totalQuestions'] as int? ?? 0,
          currentQuestionIndex: data['currentQuestionIndex'] as int? ?? 0,
          score: data['score'] as int? ?? 0,
          attemptCount: data['attemptCount'] as int? ?? 1,
          createdAt: (data['createdAt'] as Timestamp?)?.toDate(),
        );

        ongoingQuizzes.add(quiz);
      });

      // Quizleri güncellenme tarihine göre sırala (en yeni en üstte)
      ongoingQuizzes.sort(
        (a, b) => (b.createdAt ?? DateTime.now()).compareTo(
          a.createdAt ?? DateTime.now(),
        ),
      );

      return ongoingQuizzes;
    } catch (e) {
      return [];
    }
  }

  // Kullanıcının tamamladığı quizleri getir
  Future<List<Quiz>> getCompletedQuizzes() async {
    try {
      final userId = _authService.currentUser?.uid;
      if (userId == null) {
        return [];
      }


      // Öncelikle doğrudan user_completed_quizzes koleksiyonundan verileri çekelim
      final querySnapshot =
          await _firestore
              .collection('user_completed_quizzes')
              .where('userId', isEqualTo: userId)
              .orderBy(
                'completedAt',
                descending: true,
              ) // En son tamamlananlar önce
              .get();


      List<Quiz> completedQuizzes = [];

      if (querySnapshot.docs.isNotEmpty) {

        for (var doc in querySnapshot.docs) {
          final data = doc.data();

          final quizId = data['quizId'] as String? ?? '';
          final categoryName = data['categoryName'] as String? ?? 'Quiz';
          final completedAt =
              (data['completedAt'] as Timestamp?)?.toDate() ?? DateTime.now();
          final score = data['score'] as int? ?? 0;
          final totalQuestions = data['totalQuestions'] as int? ?? 0;
          final successRate = data['successRate'] as num? ?? 0;

          // Quiz nesnesini oluştur
          final quiz = Quiz(
            id: quizId,
            name: categoryName,
            totalQuestions: totalQuestions,
            score: score,
            successRate: successRate.toDouble(),
            currentQuestionIndex:
                totalQuestions, // Tamamlandığı için tüm sorular tamamlanmış
            createdAt: completedAt,
          );

          completedQuizzes.add(quiz);
        }

        return completedQuizzes;
      }

      // Eğer user_completed_quizzes koleksiyonunda veri bulunamazsa, eski yöntemle devam et

      final userActivityDoc =
          await _firestore.collection('userActivities').doc(userId).get();

      if (!userActivityDoc.exists) {
        return [];
      }

      final userActivity = UserActivity.fromFirestore(userActivityDoc);

      for (var entry in userActivity.quizProgress.entries) {
        final quizId = entry.key;
        final progress = entry.value;

        // Sadece tamamlanmış quizleri getir
        if (progress.isCompleted) {

          // Quiz nesnesini oluşturma - quizId'den kategori adını çıkar
          String categoryName = 'Quiz';
          if (quizId.contains('_')) {
            // quizId formatı: kategori_timestamp şeklinde olabilir
            final parts = quizId.split('_');
            if (parts.isNotEmpty) {
              categoryName = parts[0].replaceAll('_', ' ');
              // İlk harfi büyük yap
              categoryName =
                  categoryName[0].toUpperCase() + categoryName.substring(1);
            }
          }

          final quiz = Quiz(
            id: quizId,
            name: categoryName,
            totalQuestions: progress.totalQuestions,
            score: progress.correctAnswersCount,
            successRate: progress.successRate,
            currentQuestionIndex:
                progress.totalQuestions, // Tamamlandığı için tüm sorular
            createdAt: progress.lastUpdated,
          );

          completedQuizzes.add(quiz);
        }
      }

      // Tamamlanma tarihine göre sırala (en son tamamlanan en üstte)
      completedQuizzes.sort(
        (a, b) => (b.createdAt ?? DateTime.now()).compareTo(
          a.createdAt ?? DateTime.now(),
        ),
      );

      return completedQuizzes;
    } catch (e) {
      return [];
    }
  }

  // Günün sorusunu getir - Yeni sistem: Tüm kategorilerden rastgele
  Future<DailyQuestion?> getDailyQuestion([String? languageCode]) async {
    try {

      // Bugünün tarihini al
      final now = DateTime.now();
      final today = DateTime(now.year, now.month, now.day);
      final todayString =
          '${today.year}-${today.month.toString().padLeft(2, '0')}-${today.day.toString().padLeft(2, '0')}';


      // Kullanıcının bugün günün sorusunu çözüp çözmediğini kontrol et (dil seçimine göre)
      final userId = _authService.currentUser?.uid;
      if (userId != null) {
        final answerCollectionName = languageCode == 'en' ? 'daily_question_answers_en' : 'daily_question_answers';
        final userAnswerDoc =
            await _firestore
                .collection(answerCollectionName)
                .doc('${userId}_$todayString')
                .get();

        if (userAnswerDoc.exists) {
          // Kullanıcı bugün çözmüş, çözülmüş soruyu döndür
          final answerData = userAnswerDoc.data()!;
          final questionData = answerData['question'] as Map<String, dynamic>;

          return DailyQuestion(
            id: answerData['questionId'] ?? 'daily_${todayString}',
            question: Question.fromJson(questionData),
            date: today,
            pointMultiplier: 10, // 20 puan (normal 2 puan * 10)
            isAnswered: true,
            userAnswer: answerData['userAnswer'],
            isCorrect: answerData['isCorrect'],
          );
        }
      }

      // Bugün için günün sorusunu kontrol et (dil seçimine göre farklı koleksiyon)
      final collectionName = languageCode == 'en' ? 'daily_questions_en' : 'daily_questions';
      final dailyQuestionDoc = await _firestore
          .collection(collectionName)
          .doc(todayString)
          .get();

      if (dailyQuestionDoc.exists) {
        // Bugün için soru zaten seçilmiş
        final data = dailyQuestionDoc.data()!;
        final questionData = data['question'] as Map<String, dynamic>;

        return DailyQuestion(
          id: data['questionId'] ?? 'daily_${todayString}',
          question: Question.fromJson(questionData),
          date: today,
          pointMultiplier: 10, // 20 puan
          isAnswered: false,
        );
      }


      // Dil seçimine göre doğru soru setlerini al
      List<Question> allQuestions = [];
      
      if (languageCode == 'en') {
        // İngilizce sorular için MultilingualQuestionService kullan
        final englishCategories = MultilingualQuestionService.getQuizCategories('en');
        for (var category in englishCategories) {
          allQuestions.addAll(category['questions'] as List<Question>);
        }
      } else {
        // Türkçe sorular (varsayılan)
        final allQuestionSets = [
          anesthesiaApplicationQuestions,
          respiratorySystemQuestions,
          cardiovascularMonitoringQuestions,
          pharmacologicalPrinciplesQuestions,
          operatingRoomEnvironmentQuestions,
          nonCardiovascularMonitoringQuestions,
          anesthesiaWorkstationQuestions,
          inhalationAnestheticsQuestions,
          intravenousAnestheticsQuestions,
          analgesicAgentsQuestions,
          neuromuscularBlockingAgentsQuestions,
          cholinesteraseInhibitorsQuestions,
          anticholinergicDrugsQuestions,
          adrenergicDrugsQuestions,
          hypotensiveAgentsQuestions,
          localAnestheticsQuestions,
          auxiliaryDrugsQuestions,
          
          airwayManagementQuestions,
          cardiovascularPhysiologyQuestions,
          cardiovascularSurgeryQuestions,
          respiratoryDiseasesQuestions,
          respiratoryPhysiologyQuestions,
          painManagementQuestions,
          neurologicalPsychiatricAnesthesiaQuestions,
          otolaryngologyHeadNeckSurgeryQuestions,
          endocrineDiseaseAnesthesiaQuestions,
          neuromuscularDiseasesAnesthesiaQuestions,
          geriatricAnesthesiaQuestions,
          traumaEmergencyAnesthesiaQuestions,
          orthopedicAnesthesiaQuestions,
          enhancedRecoveryProtocolsQuestions,
          anesthesiaComplicationsQuestions,
          genitourinaryAnesthesiaQuestions,
          ophthalmicAnesthesiaQuestions,
          renalPhysiologyAnesthesiaQuestions,
          spinalEpiduralCaudalBlocksQuestions,
          fluidManagementBloodProductsQuestions,
          thoracicSurgeryAnesthesiaQuestions,
          thermoregulationHypothermiaMalignantHyperthermiaQuestions,
          outpatientAnesthesiaQuestions,
          cardiopulmonaryResuscitationQuestions,
          intensiveCareProblemsQuestions,
          postanestheticCareQuestions,
          pediatricAnesthesiaQuestions,
          postoperativeCareMechanicalVentilationQuestions,
          neurosurgeryAnesthesiaQuestions,
          safetyQualityPerformanceImprovementQuestions,
          erc2021GuidelinesQuestions,
        ];
        
        for (var questionSet in allQuestionSets) {
          allQuestions.addAll(questionSet);
        }
      }



      if (allQuestions.isEmpty) {
        return null;
      }

      // Rastgele bir soru seç
      final random = Random();
      final selectedQuestion =
          allQuestions[random.nextInt(allQuestions.length)];


      // Günün sorusunu Firestore'a kaydet
      final dailyQuestion = DailyQuestion(
        id: 'daily_${todayString}',
        question: selectedQuestion,
        date: today,
        pointMultiplier: 10, // 20 puan (normal 2 puan * 10)
        isAnswered: false,
      );

      await _firestore.collection(collectionName).doc(todayString).set({
        'questionId': dailyQuestion.id,
        'question': selectedQuestion.toJson(),
        'date': Timestamp.fromDate(today),
        'pointMultiplier': 10,
        'createdAt': FieldValue.serverTimestamp(),
      });

      return dailyQuestion;
    } catch (e) {
      return null;
    }
  }

  // Günün sorusunu yanıtla - Yeni sistem
  Future<bool> answerDailyQuestion({
    required String questionId,
    required int userAnswer,
    required bool isCorrect,
    required Question question,
    String? languageCode,
  }) async {
    try {
      final userId = _authService.currentUser?.uid;
      if (userId == null) {
        return false;
      }

      final now = DateTime.now();
      final today = DateTime(now.year, now.month, now.day);
      final todayString =
          '${today.year}-${today.month.toString().padLeft(2, '0')}-${today.day.toString().padLeft(2, '0')}';


      // Kullanıcının cevabını kaydet (dil seçimine göre)
      final answerCollectionName = languageCode == 'en' ? 'daily_question_answers_en' : 'daily_question_answers';
      await _firestore
          .collection(answerCollectionName)
          .doc('${userId}_$todayString')
          .set({
            'userId': userId,
            'questionId': questionId,
            'question': question.toJson(),
            'userAnswer': userAnswer,
            'isCorrect': isCorrect,
            'points': isCorrect ? 20 : 0, // Doğruysa 20 puan
            'answeredAt': FieldValue.serverTimestamp(),
            'date': todayString,
          });

      // Doğruysa kullanıcıya puan ekle
      if (isCorrect) {
        // Genel puanları güncelle
        await _firestore.collection('userActivities').doc(userId).update({
          'totalPoints': FieldValue.increment(20),
          'dailyQuestionsCorrect': FieldValue.increment(1),
        });
        
        // Aylık puanları güncelle
        final year = now.year;
        final month = now.month;
        final monthlyDocId = '${userId}_${year}_${month}';
        await _firestore.collection('user_monthly_points').doc(monthlyDocId).set({
          'userId': userId,
          'year': year,
          'month': month,
          'points': FieldValue.increment(20),
          'lastUpdated': FieldValue.serverTimestamp(),
        }, SetOptions(merge: true));
        
      } else {
        await _firestore.collection('userActivities').doc(userId).update({
          'dailyQuestionsWrong': FieldValue.increment(1),
        });
      }

      return true;
    } catch (e) {
      return false;
    }
  }

  // Kullanıcı aktivitesini güncelle/oluştur
  Future<UserActivity?> updateUserActivity() async {
    try {
      final userId = _authService.currentUser?.uid;
      if (userId == null) {
        throw Exception('Kullanıcı giriş yapmamış');
      }

      final userActivityDoc =
          await _firestore.collection('userActivities').doc(userId).get();

      UserActivity userActivity;

      if (!userActivityDoc.exists) {
        // Yeni kullanıcı aktivitesi oluştur
        userActivity = UserActivity.empty(userId);
      } else {
        // Mevcut aktiviteyi getir ve bugünü işaretle
        userActivity =
            UserActivity.fromFirestore(userActivityDoc).markTodayLogin();
      }

      // Firestore'a kaydet
      await _firestore
          .collection('userActivities')
          .doc(userId)
          .set(userActivity.toFirestore());

      return userActivity;
    } catch (e) {
      return null;
    }
  }

  // Kullanıcı aktivitesini getir
  Future<UserActivity?> getUserActivity() async {
    try {
      final userId = _authService.currentUser?.uid;
      if (userId == null) {
        throw Exception('Kullanıcı giriş yapmamış');
      }

      final userActivityDoc =
          await _firestore.collection('userActivities').doc(userId).get();

      if (!userActivityDoc.exists) {
        // Henüz aktivite yoksa, yeni oluştur ve kaydet
        return await updateUserActivity();
      }

      return UserActivity.fromFirestore(userActivityDoc);
    } catch (e) {
      return null;
    }
  }

  // Kategori adını normalize et (büyük/küçük harf, virgül, noktalama işaretleri)
  String _normalizeCategoryName(String categoryName) {
    return categoryName
        .toLowerCase()
        .replaceAll(',', '') // Virgülleri kaldır
        .replaceAll(' ve ', ' ') // "ve" kelimesini kaldır
        .replaceAll(RegExp(r'\s+'), ' ') // Çoklu boşlukları tek boşluğa çevir
        .trim();
  }

  // Kategori adına göre soruları getir
  Future<List<Question>> getCategoryQuestions(String categoryName, {BuildContext? context}) async {
    
    final normalizedCategoryName = _normalizeCategoryName(categoryName);

    // Önce MultilingualQuestionService'den kategorileri kontrol et
    try {
      if (context != null) {
        final languageService = Provider.of<LanguageService>(context, listen: false);
        final categories = MultilingualQuestionService.getQuizCategories(languageService.currentLocale.languageCode);
      
        for (var category in categories) {
          final title = category['title'] as String;
          if (title == categoryName || title.toLowerCase() == categoryName.toLowerCase()) {
            final questions = category['questions'] as List<Question>;
            return questions;
          }
        }
      }
    } catch (e) {
    }

    // Kategori mapping - Firestore'dan gelen adları kod içindeki soru setleriyle eşleştir
    final categoryMapping = {
      // Anestezi kategorileri (Türkçe) - Büyük harfli versiyonlar da eklendi
      'anestezi': anesthesiaApplicationQuestions,
      'anestezi uygulama': anesthesiaApplicationQuestions,
      'anestezi uygulaması': anesthesiaApplicationQuestions,
      'anestezi uygulamasi': anesthesiaApplicationQuestions,
      'Anestezi Uygulaması': anesthesiaApplicationQuestions, // Büyük harfli versiyon
      'ANESTEZI UYGULAMASI': anesthesiaApplicationQuestions, // Tümü büyük harf
      
      // Anestezi kategorileri (İngilizce)
      'anesthesia application': anesthesiaApplicationQuestions,
      
      // Postanesthesia Care (İngilizce)
      'postanesthesia care': en.postanesthesiaCareQuestions,

      // Solunum kategorileri
      'solunum': respiratorySystemQuestions,
      'solunum sistemleri': respiratorySystemQuestions,
      'solunum sistemi': respiratorySystemQuestions,
      'Solunum Sistemleri': respiratorySystemQuestions, // Büyük harfli versiyon
      'SOLUNUM SISTEMLERI': respiratorySystemQuestions, // Tümü büyük harf

      // Kardiyovasküler kategorileri
      'kardiyovasküler': cardiovascularMonitoringQuestions,
      'kardiyovasküler monitörizasyon': cardiovascularMonitoringQuestions,
      'kardiyovasküler monitorizasyon': cardiovascularMonitoringQuestions,
      'kardiyovaskuler monitörizasyon': cardiovascularMonitoringQuestions,
      'Kardiyovasküler Monitörizasyon': cardiovascularMonitoringQuestions, // Büyük harfli versiyon
      'KARDİYOVASKÜLER MONİTÖRİZASYON': cardiovascularMonitoringQuestions, // Tümü büyük harf

      // Farmakoloji kategorileri
      'farmakoloji': pharmacologicalPrinciplesQuestions,
      'farmakolojik prensipler': pharmacologicalPrinciplesQuestions,
      'farmakolojik prensip': pharmacologicalPrinciplesQuestions,
      'Farmakolojik Prensipler': pharmacologicalPrinciplesQuestions, // Büyük harfli versiyon
      'FARMAKOLOJIK PRENSIpLER': pharmacologicalPrinciplesQuestions, // Tümü büyük harf

      // Ameliyathane kategorileri
      'ameliyathane': operatingRoomEnvironmentQuestions,
      'ameliyathane ortamı': operatingRoomEnvironmentQuestions,
      'Ameliyathane Ortamı': operatingRoomEnvironmentQuestions, // Büyük harfli versiyon
      'AMELIYATHANE ORTAMI': operatingRoomEnvironmentQuestions, // Tümü büyük harf

      // Diğer kategoriler
      'kardiyovasküler dışı monitörizasyon':
          nonCardiovascularMonitoringQuestions,
      'anestezi iş istasyonu': anesthesiaWorkstationQuestions,
      'inhalasyon anestezikleri': inhalationAnestheticsQuestions,
      'i̇nhalasyon anestezikleri': inhalationAnestheticsQuestions,
      'intravenöz anestezikler': intravenousAnestheticsQuestions,
      'i̇ntravenöz anestezikler': intravenousAnestheticsQuestions,
      'analjezik ajanlar': analgesicAgentsQuestions,
      'analjezik ajanları': analgesicAgentsQuestions,
      'nöromüsküler blokaj ajanları': neuromuscularBlockingAgentsQuestions,
      'nöromüsküler bloker ajanlar': neuromuscularBlockingAgentsQuestions,
      'kolinesteraz inhibitörleri': cholinesteraseInhibitorsQuestions,
      'kolinesteraz inhibitörü': cholinesteraseInhibitorsQuestions,
      'antikolinerjik ilaçlar': anticholinergicDrugsQuestions,
      'antikolinerjik': anticholinergicDrugsQuestions,
      'adrenerjik agonistler ve antagonistler': adrenergicDrugsQuestions,
      'adrenerjik agonist': adrenergicDrugsQuestions,
      'adrenerjik antagonist': adrenergicDrugsQuestions,
      'adrenerjik': adrenergicDrugsQuestions,
      'hipotansif ajanlar': hypotensiveAgentsQuestions,
      'hipotansif': hypotensiveAgentsQuestions,
      'kontrollü hipotansiyon': hypotensiveAgentsQuestions,
      'havayolu yönetimi': airwayManagementQuestions,
      'bölüm 19 - havayolu yönetimi': airwayManagementQuestions,
      'kardiyovasküler fizyoloji ve anestezi':
          cardiovascularPhysiologyQuestions,
      'kardiyovasküler fizyoloji': cardiovascularPhysiologyQuestions,
      'kardiyovasküler cerrahide anestezi': cardiovascularSurgeryQuestions,
      'kardiyovasküler cerrahi': cardiovascularSurgeryQuestions,
      'solunum hastalıklarında anestezi': respiratoryDiseasesQuestions,
      'solunum hastalıkları': respiratoryDiseasesQuestions,
      'solunum fizyolojisi': respiratoryPhysiologyQuestions,
      'solunum fizyolojisi ve anestezi': respiratoryPhysiologyQuestions,
      'lokal anestezikler': localAnestheticsQuestions,
      'lokal anestezi': localAnestheticsQuestions,
      'lokal anesteziği': localAnestheticsQuestions,
      'yardımcı ilaçlar': auxiliaryDrugsQuestions,
      'anestezide yardımcı ilaçlar': auxiliaryDrugsQuestions,
      'antiemetikler': auxiliaryDrugsQuestions,
      'premedikasyon': auxiliaryDrugsQuestions,

      'algoloji': painManagementQuestions,
      'ağrı yönetimi': painManagementQuestions,
      'ağrı tedavisi': painManagementQuestions,
      'pain management': painManagementQuestions,
      'nörolojik ve psikiyatrik hastalığı olanlarda anestezi': neurologicalPsychiatricAnesthesiaQuestions,
      'nörolojik hastalık anestezi': neurologicalPsychiatricAnesthesiaQuestions,
      'psikiyatrik hastalık anestezi': neurologicalPsychiatricAnesthesiaQuestions,
                'bölüm 28': neurologicalPsychiatricAnesthesiaQuestions,
          'otolaringoloji': otolaryngologyHeadNeckSurgeryQuestions, // Added
          'baş boyun cerrahisi': otolaryngologyHeadNeckSurgeryQuestions, // Added
          'bölüm 37': otolaryngologyHeadNeckSurgeryQuestions,
          'endokrin hastalıklarda anestezi': endocrineDiseaseAnesthesiaQuestions, // Added
          'endokrin hastalıklar': endocrineDiseaseAnesthesiaQuestions, // Added
          'bölüm 35': endocrineDiseaseAnesthesiaQuestions,
          'nöromüsküler hastalığı olanlarda anestezi': neuromuscularDiseasesAnesthesiaQuestions, // Added
          'nöromüsküler hastalıklar': neuromuscularDiseasesAnesthesiaQuestions, // Added
          'bölüm 29': neuromuscularDiseasesAnesthesiaQuestions,
          'geriatrik anestezi': geriatricAnesthesiaQuestions, // Added
          'yaşlı anestezi': geriatricAnesthesiaQuestions, // Added
          'bölüm 43': geriatricAnesthesiaQuestions,
          'travma ve acil cerrahide anestezi': traumaEmergencyAnesthesiaQuestions, // Added
          'travma anestezi': traumaEmergencyAnesthesiaQuestions, // Added
          'acil cerrahi anestezi': traumaEmergencyAnesthesiaQuestions,
          'bölüm 39': traumaEmergencyAnesthesiaQuestions,
          'ortopedik cerrahide anestezi': orthopedicAnesthesiaQuestions, // Added
          'ortopedik anestezi': orthopedicAnesthesiaQuestions, // Added
          'kemik cerrahisi anestezi': orthopedicAnesthesiaQuestions,
          'bölüm 38': orthopedicAnesthesiaQuestions,
                      'geliştirilmiş iyileştirme protokolleri': enhancedRecoveryProtocolsQuestions, // Added
            'eras protokolü': enhancedRecoveryProtocolsQuestions, // Added
            'perioperatif sonuçların optimizasyonu': enhancedRecoveryProtocolsQuestions, // Added
            'bölüm 48': enhancedRecoveryProtocolsQuestions, // Added
            'anestezi komplikasyonları': anesthesiaComplicationsQuestions, // Added
            'anestezi komplikasyonu': anesthesiaComplicationsQuestions, // Added
            'bölüm 54': anesthesiaComplicationsQuestions, // Added
            'genitoüriner cerrahide anestezi': genitourinaryAnesthesiaQuestions, // Added
            'genitoüriner anestezi': genitourinaryAnesthesiaQuestions, // Added
            'ürolojik anestezi': genitourinaryAnesthesiaQuestions, // Added
            'bölüm 32': genitourinaryAnesthesiaQuestions, // Added
                      'oftalmik cerrahide anestezi': ophthalmicAnesthesiaQuestions, // Added
          'göz cerrahisi anestezi': ophthalmicAnesthesiaQuestions, // Added
          'oküler anestezi': ophthalmicAnesthesiaQuestions, // Added
          'bölüm 36': ophthalmicAnesthesiaQuestions, // Added
          'böbrek fizyolojisi ve anestezi': renalPhysiologyAnesthesiaQuestions, // Added
          'renal fizyoloji anestezi': renalPhysiologyAnesthesiaQuestions, // Added
          'bölüm 30': renalPhysiologyAnesthesiaQuestions, // Added
          'spinal epidural kaudal bloklar': spinalEpiduralCaudalBlocksQuestions, // Added
          'bölüm 45': spinalEpiduralCaudalBlocksQuestions, // Added
          'sıvı yönetimi ve kan ürünleri tedavisi': fluidManagementBloodProductsQuestions, // Added
          'bölüm 51': fluidManagementBloodProductsQuestions, // Added
          
          'toraks cerrahisinde anestezi': thoracicSurgeryAnesthesiaQuestions, // Added
          'bölüm 25': thoracicSurgeryAnesthesiaQuestions, // Added
          'termoregülasyon hipotermi malign hipertermi': thermoregulationHypothermiaMalignantHyperthermiaQuestions, // Added
          'bölüm 52': thermoregulationHypothermiaMalignantHyperthermiaQuestions, // Added
          'günübirlik ve ameliyathane dışı anestezi': outpatientAnesthesiaQuestions, // Added
          'günübirlik anestezi': outpatientAnesthesiaQuestions, // Added
          'ameliyathane dışı anestezi': outpatientAnesthesiaQuestions, // Added
          'nora': outpatientAnesthesiaQuestions, // Added
          'bölüm 44': outpatientAnesthesiaQuestions, // Added
          'kardiyopulmoner resüsitasyon': cardiopulmonaryResuscitationQuestions, // Added
          'cpr': cardiopulmonaryResuscitationQuestions, // Added
          'resüsitasyon': cardiopulmonaryResuscitationQuestions, // Added
          'bölüm 55': cardiopulmonaryResuscitationQuestions, // Added
          'yoğun bakım uygulamalarında karşılaşılan sorunlar': intensiveCareProblemsQuestions, // Added
          'yoğun bakım sorunları': intensiveCareProblemsQuestions, // Added
          'yoğun bakım': intensiveCareProblemsQuestions, // Added
          'icu': intensiveCareProblemsQuestions, // Added
          'bölüm 57': intensiveCareProblemsQuestions, // Added
          'sepsis ve ards': sepsisArdsQuestions, // Added
          'sepsis': sepsisArdsQuestions, // Added
          'ards': sepsisArdsQuestions, // Added
          'septik şok': sepsisArdsQuestions, // Added
          'koagülasyon ve antikoagülan tedavi': coagulationAnticoagulantQuestions, // Added
          'koagülasyon': coagulationAnticoagulantQuestions, // Added
          'antikoagülan': coagulationAnticoagulantQuestions, // Added
          'hemostaz': coagulationAnticoagulantQuestions, // Added
          'kanama bozuklukları': coagulationAnticoagulantQuestions, // Added
          'postanestezik bakım': postanestheticCareQuestions, // Added
          'pacu': postanestheticCareQuestions, // Added
          'postoperatif bakım': postanestheticCareQuestions, // Added
          'anestezi sonrası bakım': postanestheticCareQuestions, // Added
          'bölüm 56': postanestheticCareQuestions, // Added
          'pediatrik anestezi': pediatricAnesthesiaQuestions, // Added
          'çocuk anestezi': pediatricAnesthesiaQuestions, // Added
          'yenidoğan anestezi': pediatricAnesthesiaQuestions, // Added
          'infant anestezi': pediatricAnesthesiaQuestions, // Added
          'bölüm 42': pediatricAnesthesiaQuestions, // Added
          'güvenlik kalite performans iyileştirme': safetyQualityPerformanceImprovementQuestions, // Added
          'bölüm 59': safetyQualityPerformanceImprovementQuestions, // Added
          'postoperatif bakım ünitesi ve yoğun bakımda inhalasyon tedavisi ve mekanik ventilasyon': postoperativeCareMechanicalVentilationQuestions, // Added
          'postoperatif bakım ve mekanik ventilasyon': postoperativeCareMechanicalVentilationQuestions, // Added
          'mekanik ventilasyon': postoperativeCareMechanicalVentilationQuestions, // Added
          'yoğun bakım mekanik ventilasyon': postoperativeCareMechanicalVentilationQuestions, // Added
          'inhalasyon tedavisi ve mekanik ventilasyon': postoperativeCareMechanicalVentilationQuestions, // Added
          'bölüm 58': postoperativeCareMechanicalVentilationQuestions, // Added
          'nörocerrahide anestezi': neurosurgeryAnesthesiaQuestions, // Added
          'beyin cerrahisi anestezi': neurosurgeryAnesthesiaQuestions, // Added
          'nörocerrahi': neurosurgeryAnesthesiaQuestions, // Added
          'kraniotomi anestezi': neurosurgeryAnesthesiaQuestions, // Added
          'spinal cerrahi anestezi': neurosurgeryAnesthesiaQuestions, // Added
          'bölüm 27': neurosurgeryAnesthesiaQuestions, // Added
          'erc 2021 guidelines': erc2021GuidelinesQuestions,
          'erc 2021': erc2021GuidelinesQuestions,
          'erc kılavuzu': erc2021GuidelinesQuestions,
          'erc guidelines': erc2021GuidelinesQuestions,
          'resüsitasyon kılavuzu': erc2021GuidelinesQuestions,
          'cpr kılavuzu': erc2021GuidelinesQuestions,
          'kardiyak arrest': erc2021GuidelinesQuestions,
          'defibrilasyon': erc2021GuidelinesQuestions,
          'temel yaşam desteği': erc2021GuidelinesQuestions,
          'ileri yaşam desteği': erc2021GuidelinesQuestions,
        };

    // Önce normalize edilmiş isimle ara
    var questions = categoryMapping[normalizedCategoryName];
    
    // Eğer bulunamazsa, orijinal lowercase ile de dene
    if (questions == null) {
      final lowerCategoryName = categoryName.toLowerCase();
      questions = categoryMapping[lowerCategoryName];
    }
    
    // Eğer hala bulunamazsa, orijinal isimle dene
    if (questions == null) {
      questions = categoryMapping[categoryName];
    }
    
    // Eğer hala bulunamazsa, partial match dene
    if (questions == null) {
      final lowerCategoryName = categoryName.toLowerCase();
      for (var key in categoryMapping.keys) {
        if (key.toLowerCase().contains(lowerCategoryName) || lowerCategoryName.contains(key.toLowerCase())) {
          questions = categoryMapping[key];
          break;
        }
      }
    }

    if (questions != null) {
      return questions;
    } else {
      return [];
    }
  }

  // Doğru veya yanlış cevap verdiğinde istatistikleri güncelle
  Future<bool> updateAnswerStatistics(bool isCorrect, int points) async {
    try {
      final userId = _authService.currentUser?.uid;
      if (userId == null) {
        return false;
      }


      final now = DateTime.now();
      final year = now.year;
      final month = now.month;

      // Firestore'da kullanıcı istatistiklerini güncelle
      if (isCorrect) {
        // Doğru cevap - genel puanları güncelle
        await _firestore.collection('userActivities').doc(userId).update({
          'totalPoints': FieldValue.increment(points), // Puanları ekle
          'totalCorrectAnswers': FieldValue.increment(1), // Doğru cevap sayısını artır
        });
        
        // Aylık puanları güncelle
        final monthlyDocId = '${userId}_${year}_${month}';
        await _firestore.collection('user_monthly_points').doc(monthlyDocId).set({
          'userId': userId,
          'year': year,
          'month': month,
          'points': FieldValue.increment(points),
          'lastUpdated': FieldValue.serverTimestamp(),
        }, SetOptions(merge: true));
        
      } else {
        // Yanlış cevap - sadece genel istatistikleri güncelle
        await _firestore.collection('userActivities').doc(userId).update({
          'totalWrongAnswers': FieldValue.increment(1), // Yanlış cevap sayısını artır
        });
      }

      return true;
    } catch (e) {
      return false;
    }
  }

  // Eski metod - geriye dönük uyumluluk için tutuyoruz
  Future<bool> addPointsForCorrectAnswer(int points) async {
    return updateAnswerStatistics(true, points);
  }

  // Yanlış cevaplanan soruyu kaydet - daha iyi veri yapısıyla
  Future<bool> saveWrongAnswer(Question question, String category) async {
    try {
      final userId = _authService.currentUser?.uid;
      if (userId == null) {
        return false;
      }


      // Soruya kategori ekle (eğer yoksa)
      if (question.category == null || question.category!.isEmpty) {
        question = Question(
          id: question.id,
          question: question.question,
          options: question.options,
          correctAnswerIndex: question.correctAnswerIndex,
          explanation: question.explanation,
          category: category, // Kategoriyi ekle
        );
      }

      // Kullanıcının soruları için bir koleksiyon referansı oluştur
      // user_mistakes/{user_id}/questions/{question_id} şeklinde
      final mistakesCollectionRef = _firestore
          .collection('user_mistakes')
          .doc(userId)
          .collection('questions');

      // Sorunun benzersiz ID'si
      String questionId = question.id ?? '';
      if (questionId.isEmpty) {
        // ID yoksa yeni bir ID oluştur
        questionId = 'id_${DateTime.now().millisecondsSinceEpoch}';
      } else {
      }

      // Sorunu zaten listelenip listelenmediğini kontrol et
      final existingDoc = await mistakesCollectionRef.doc(questionId).get();
      if (existingDoc.exists) {
        return true;
      }


      // Soru verilerini oluştur
      final questionData = {
        'id': questionId,
        'question': question.question,
        'options': question.options,
        'correctAnswerIndex': question.correctAnswerIndex,
        'explanation': question.explanation,
        'category': question.category ?? category,
        'timestamp': Timestamp.now(),
      };


      // Yeni yanlış cevabı kaydet
      await mistakesCollectionRef.doc(questionId).set(questionData);

      // Doğrulama için veriyi tekrar oku
      final verifyDoc = await mistakesCollectionRef.doc(questionId).get();
      if (!verifyDoc.exists) {
        return false;
      }

      return true;
    } catch (e) {
      return false;
    }
  }

  // Yanlış cevaplanan bir soruyu listeden kaldır - yeni veri yapısıyla
  Future<bool> removeWrongAnswer(String questionId) async {
    try {
      final userId = _authService.currentUser?.uid;
      if (userId == null) {
        return false;
      }

      // Kullanıcının yanlış soruları koleksiyonu
      final mistakesCollectionRef = _firestore
          .collection('user_mistakes')
          .doc(userId)
          .collection('questions');

      // Soruyu sil
      await mistakesCollectionRef.doc(questionId).delete();

      return true;
    } catch (e) {
      return false;
    }
  }

  // Kullanıcının yanlış cevapladığı soruları getir - yeni veri yapısıyla
  Future<List<Question>> getMistakeQuestions() async {
    List<Question> mistakeQuestions = [];
    Set<String> seenQuestionIds = {}; // Tekrarlanan soruları önlemek için

    try {
      final user = _authService.currentUser;
      if (user == null) {
        return [];
      }


      // Kullanıcının yanlış soruları koleksiyonu
      final mistakesCollectionRef = _firestore
          .collection('user_mistakes')
          .doc(user.uid)
          .collection('questions');

      // Tüm yanlış soruları al - Cache sorununu önlemek için
      final querySnapshot = await mistakesCollectionRef.get();


      // Her bir belgeyi Question nesnesine dönüştür
      for (var doc in querySnapshot.docs) {
        try {
          final data = doc.data();


          // Gerekli alanların varlığını kontrol et
          if (!data.containsKey('question') ||
              !data.containsKey('options') ||
              !data.containsKey('correctAnswerIndex')) {
            continue;
          }

          // Tekrarlanan soruları önle - soru metnini hash olarak kullan
          final questionText = data['question'] ?? '';
          final questionHash = _generateQuestionHash(questionText, data['options']);
          
          if (seenQuestionIds.contains(questionHash)) {
            continue;
          }
          seenQuestionIds.add(questionHash);

          // Seçenekleri dönüştür
          final options = data['options'];
          List<String> optionsList;

          if (options is List) {
            optionsList = List<String>.from(options.map((e) => e.toString()));
          } else {
            continue;
          }

          // Question nesnesini oluştur
          final question = Question(
            id: doc.id,
            question: questionText,
            options: optionsList,
            correctAnswerIndex: data['correctAnswerIndex'] ?? 0,
            explanation: data['explanation'],
            category: data['category'],
          );

          mistakeQuestions.add(question);
        } catch (e) {
        }
      }

      return mistakeQuestions;
    } catch (e) {
      return [];
    }
  }

  // Soru hash'i oluştur - tekrarları önlemek için
  String _generateQuestionHash(String question, dynamic options) {
    final optionsList = options is List ? options.map((e) => e.toString()).toList() : [];
    final optionsText = optionsList.join('|');
    return '${question.trim()}|$optionsText';
  }

  // Eksiklerden soru kaldır
  Future<bool> removeMistakeQuestion(String questionId) async {
    try {
      final user = _authService.currentUser;
      if (user == null) {
        return false;
      }


      // Firestore'dan soruyu kaldır
      await _firestore
          .collection('user_mistakes')
          .doc(user.uid)
          .collection('questions')
          .doc(questionId)
          .delete();

      return true;
    } catch (e) {
      return false;
    }
  }

  // Veri taşıma fonksiyonu - eski yapıdan yeni yapıya
  Future<bool> migrateMistakeQuestions() async {
    try {
      final userId = _authService.currentUser?.uid;
      if (userId == null) {
        return false;
      }


      // Eski veri yapısından okuma
      final userActivityDoc =
          await _firestore.collection('userActivities').doc(userId).get();
      if (!userActivityDoc.exists) {
        return true; // Hata yok, sadece veri yok
      }

      final userData = userActivityDoc.data();
      if (userData == null || !userData.containsKey('mistakeQuestions')) {
        return true; // Hata yok, sadece veri yok
      }

      final mistakesList = List<Map<String, dynamic>>.from(
        userData['mistakeQuestions'] ?? [],
      );

      if (mistakesList.isEmpty) {
        return true; // Taşınacak veri yok
      }

      // Yeni yapıya veri taşıma
      final newMistakesCollectionRef = _firestore
          .collection('user_mistakes')
          .doc(userId)
          .collection('questions');

      // Her soruyu tek tek taşı
      int successCount = 0;
      for (var mistake in mistakesList) {
        try {
          final questionId =
              mistake['id'] ??
              'id_${DateTime.now().millisecondsSinceEpoch}_$successCount';
          await newMistakesCollectionRef.doc(questionId).set({
            'id': questionId,
            'question': mistake['question'] ?? '',
            'options': mistake['options'] ?? [],
            'correctAnswerIndex': mistake['correctAnswerIndex'] ?? 0,
            'explanation': mistake['explanation'],
            'category': mistake['category'] ?? 'Diğer',
            'timestamp': mistake['timestamp'] ?? Timestamp.now(),
          });
          successCount++;
        } catch (e) {
        }
      }

      // Eski veriyi temizle
      if (successCount > 0) {
        await _firestore.collection('userActivities').doc(userId).update({
          'mistakeQuestions': [], // Eski veriyi boş dizi yap
        });
      }

      return true;
    } catch (e) {
      return false;
    }
  }

  // Quiz'i tamamlandı olarak işaretle
  Future<bool> completeQuiz(
    String categoryName,
    int score,
    int totalQuestions, {
    String? quizId,
  }) async {
    try {
      final userId = _authService.currentUser?.uid;
      if (userId == null) {
        return false;
      }

      // quizId yoksa oluştur
      final String finalQuizId =
          quizId ??
          '${categoryName.toLowerCase().replaceAll(' ', '_')}_${DateTime.now().millisecondsSinceEpoch}';

      // Aynı quiz'in zaten tamamlanıp tamamlanmadığını kontrol et
      final completedQuizId = '${userId}_${finalQuizId}';
      final existingCompletedQuiz = await _firestore
          .collection('user_completed_quizzes')
          .doc(completedQuizId)
          .get();
          
      if (existingCompletedQuiz.exists) {
        return true; // Zaten tamamlanmış, başarılı olarak döndür
      }

      // Aynı kullanıcı için aynı kategoride son 30 saniye içinde tamamlanan quiz var mı kontrol et
      final recentQuizQuery = await _firestore
          .collection('user_completed_quizzes')
          .where('userId', isEqualTo: userId)
          .where('categoryName', isEqualTo: categoryName)
          .where('completedAt', isGreaterThan: Timestamp.fromDate(DateTime.now().subtract(const Duration(seconds: 30))))
          .limit(1)
          .get();
          
      if (recentQuizQuery.docs.isNotEmpty) {
        return true; // Çok yakın zamanda tamamlanmış, başarılı olarak döndür
      }


      // Kullanıcı aktivitesini güncelle
      final userActivityRef = _firestore
          .collection('userActivities')
          .doc(userId);

      final successRate = (score / totalQuestions) * 100; // Başarı oranı
      final now = DateTime.now();

      // Quiz ilerlemesini tamamlandı olarak işaretle
      await userActivityRef.set({
        'quizProgress': {
          finalQuizId: {
            'totalQuestions': totalQuestions,
            'completedQuestions': totalQuestions, // Tüm sorular tamamlandı
            'correctAnswers': score,
            'wrongAnswers': totalQuestions - score,
            'score': score,
            'isCompleted': true,
            'progressPercentage': 1.0, // %100 tamamlandı
            'successRate': successRate, // Başarı oranı
            'lastUpdatedAt': Timestamp.now(),
          },
        },
        'totalPoints': FieldValue.increment(score * 10), // Her doğru cevap için 10 puan
        'totalQuizzes': FieldValue.increment(1), // Toplam quiz sayısını artır
        'lastUpdated': FieldValue.serverTimestamp(),
      }, SetOptions(merge: true));

      // Users koleksiyonundaki quizzesCompleted sayısını artır
      await _firestore.collection('users').doc(userId).update({
        'quizzesCompleted': FieldValue.increment(1),
        'lastActivity': FieldValue.serverTimestamp(),
      });

      // Aylık puanları da güncelle
      final monthlyPoints = score * 10;
      final year = now.year;
      final month = now.month;
      final monthlyDocId = '${userId}_${year}_$month';
      
      await _firestore.collection('user_monthly_points').doc(monthlyDocId).set({
        'userId': userId,
        'year': year,
        'month': month,
        'points': FieldValue.increment(monthlyPoints),
        'lastUpdated': FieldValue.serverTimestamp(),
      }, SetOptions(merge: true));

      // Tamamlanan quizi user_completed_quizzes koleksiyonuna da kaydet
      await _firestore
          .collection('user_completed_quizzes')
          .doc(completedQuizId)
          .set({
            'userId': userId,
            'quizId': finalQuizId,
            'categoryName': categoryName,
            'score': score,
            'totalQuestions': totalQuestions,
            'successRate': successRate,
            'completedAt': Timestamp.fromDate(now),
          });

      // POPÜLERLİK SAYISINI ARTIR - Sadece ilk tamamlamada
      try {

        // Önce kullanıcının bu kategoriyi daha önce tamamlayıp tamamlamadığını kontrol et
        final historyDoc =
            await _firestore
                .collection('user_quiz_history')
                .doc(
                  '${_authService.currentUser!.uid}_${categoryName.toLowerCase()}',
                )
                .get();

        if (!historyDoc.exists) {

          // İlk tamamlama - popülerlik sayısını artır
          // Firestore'da kategori adına göre doküman bul ve güncelle
          final quizQuery =
              await _firestore
                  .collection('quizzes')
                  .where('name', isEqualTo: categoryName)
                  .limit(1)
                  .get();

          if (quizQuery.docs.isNotEmpty) {
            final quizDoc = quizQuery.docs.first;

            // Mevcut popülerlik sayısını al
            final currentCount = quizDoc.data()['popularityCount'] ?? 0;
            final newCount = currentCount + 1;


            // Popülerlik sayısını artır
            await quizDoc.reference.update({'popularityCount': newCount});

          } else {
            // Eğer quiz dokümanı yoksa oluştur
            await _firestore.collection('quizzes').add({
              'name': categoryName,
              'popularityCount': 1,
              'createdAt': FieldValue.serverTimestamp(),
            });
          }

          // Kullanıcı geçmişini kaydet
          await _firestore
              .collection('user_quiz_history')
              .doc(
                '${_authService.currentUser!.uid}_${categoryName.toLowerCase()}',
              )
              .set({
                'userId': _authService.currentUser!.uid,
                'categoryName': categoryName,
                'completedAt': FieldValue.serverTimestamp(),
                'totalCompletions': 1,
              });
        } else {

          // Sadece kullanıcı geçmişini güncelle
          await historyDoc.reference.update({
            'totalCompletions': FieldValue.increment(1),
            'lastCompletedAt': FieldValue.serverTimestamp(),
          });
        }
      } catch (e) {
        // Popülerlik güncellenemezse bile quiz tamamlanmış olarak devam et
      }

      // Devam eden quizlerden sil
      if (quizId != null) {
        await _firestore
            .collection('user_ongoing_quizzes')
            .doc('${userId}_${quizId}')
            .delete();
      }

      // AKTIVITE KAYDET - Son aktiviteler için (KALDIRILDI)
      // Aktivite sistemi kaldırıldığı için bu kısım artık gerekli değil

      return true;
    } catch (e) {
      return false;
    }
  }

  // Çeviri destekli soru alma metodları
  List<Question> getTranslatedQuestionsByCategory(String categoryName, String languageCode) {
    List<Question> questions = [];
    
    // Kategori adına göre soruları al
    switch (categoryName.toLowerCase()) {
      case 'lokal anestezikler':
      case 'local anesthetics':
        questions = localAnestheticsQuestions;
        break;
      case 'kardiyovasküler fizyoloji':
      case 'cardiovascular physiology':
        questions = cardiovascularPhysiologyQuestions;
        break;
      case 'solunum fizyolojisi':
      case 'respiratory physiology':
        questions = respiratoryPhysiologyQuestions;
        break;
      case 'anestezi uygulaması':
      case 'anesthesia application':
        questions = anesthesiaApplicationQuestions;
        break;
      case 'solunum sistemi':
      case 'respiratory system':
        questions = respiratorySystemQuestions;
        break;
      case 'erc 2021 guidelines':
      case 'erc 2021':
        questions = erc2021GuidelinesQuestions;
        break;
      default:
        questions = localAnestheticsQuestions; // Varsayılan
    }
    
    // Soruları çevir
    return _translationService.translateQuestions(questions, languageCode);
  }

  // Rastgele çevrilmiş sorular al
  List<Question> getRandomTranslatedQuestions(int count, String languageCode) {
    List<Question> allQuestions = [
      ...localAnestheticsQuestions,
      ...cardiovascularPhysiologyQuestions,
      ...respiratoryPhysiologyQuestions,
      ...anesthesiaApplicationQuestions,
      ...respiratorySystemQuestions,
      ...erc2021GuidelinesQuestions,
    ];
    
    allQuestions.shuffle();
    final selectedQuestions = allQuestions.take(count).toList();
    
    return _translationService.translateQuestions(selectedQuestions, languageCode);
  }

  // Çevrilmiş kategorileri al
  List<String> getTranslatedCategories(String languageCode) {
    final categories = [
      'Lokal Anestezikler',
      'Kardiyovasküler Fizyoloji', 
      'Solunum Fizyolojisi',
      'Anestezi Uygulaması',
      'Solunum Sistemi',
      'ERC 2021 Guidelines',
    ];
    
    return _translationService.getTranslatedCategories(categories, languageCode);
  }
}
