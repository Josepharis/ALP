import 'dart:async';
import 'dart:math';
 
import 'package:anestezi/models/daily_question.dart';
import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:firebase_auth/firebase_auth.dart';
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
import '../data/preoperative_assessment_questions.dart';
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
import '../data/maternal_fetal_physiology_anesthesia_questions.dart'; // Added
import '../data/thoracic_surgery_anesthesia_questions.dart'; // Added
import '../data/thermoregulation_hypothermia_malignant_hyperthermia_questions.dart'; // Added
import '../data/outpatient_anesthesia_questions.dart'; // Added
import '../data/cardiopulmonary_resuscitation_questions.dart'; // Added
import '../data/intensive_care_problems_questions.dart'; // Added
import '../data/postanesthetic_care_questions.dart'; // Added
import '../data/pediatric_anesthesia_questions.dart'; // Added
import '../data/chronic_pain_treatment_questions.dart'; // Added
import '../data/postoperative_care_mechanical_ventilation_questions.dart'; // Added
import '../data/hepatic_physiology_anesthesia_questions.dart'; // Added
import '../data/obstetric_anesthesia_questions.dart'; // Added
import '../data/acid_base_management_questions.dart'; // Added
import '../data/liver_disease_anesthesia_questions.dart'; // Added
import '../data/neurophysiology_anesthesia_questions.dart'; // Added
import '../data/perioperative_intensive_care_nutrition_questions.dart'; // Added
import '../data/fluid_electrolyte_imbalance_management_questions.dart'; // Added
import '../utils/event_bus.dart';
import 'question_translation_service.dart';


class QuizService {
  final FirebaseFirestore _firestore = FirebaseFirestore.instance;
  final AuthService _authService = AuthService();
  final QuestionTranslationService _translationService = QuestionTranslationService();


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
        print('Mevcut quiz güncellendiDuplicateID: ${quiz.id}');
      } else {
        // Yeni quiz kaydı oluştur
        await ongoingQuizRef.set({
          'userId': userId,
          'quizId': quiz.id,
          'quizName': quiz.name,
          'currentQuestionIndex': quiz.currentQuestionIndex ?? 0,
          'totalQuestions': quiz.totalQuestions,
          'score': quiz.score ?? 0,
          'updatedAt': Timestamp.now(),
          'createdAt': Timestamp.now(),
        });
        print('Yeni quiz kaydı oluşturuldu: ${quiz.id}');
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
      print('saveQuizProgress hatası: $e');
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
      print('getAllQuizzes hatası: $e');
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
      print('getQuizById hatası: $e');
      return null;
    }
  }

  // Popüler quizleri getir
  Future<List<Quiz>> getPopularQuizzes({int limit = 5}) async {
    try {
      print('DEBUG: getPopularQuizzes başlıyor...');

      // İlk kez çalışıyorsa temel popülarite değerlerini ayarla
      await _initializePopularityCounts();

      print('DEBUG: Popüler quizler sorgulanıyor...');
      final querySnapshot =
          await _firestore
              .collection('quizzes')
              .orderBy('popularityCount', descending: true)
              .limit(limit)
              .get();

      print('DEBUG: Sorgu sonucu: ${querySnapshot.docs.length} quiz bulundu');

      List<Quiz> quizzes = [];
      for (var doc in querySnapshot.docs) {
        print(
          'DEBUG: Quiz işleniyor - ID: ${doc.id}, Name: ${doc.data()['name']}, PopularityCount: ${doc.data()['popularityCount']}',
        );

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
        print(
          'DEBUG: Quiz eklendi - Name: ${quiz.name}, PopularityCount: ${quiz.popularityCount}',
        );
      }

      print('DEBUG: Toplam ${quizzes.length} popüler quiz döndürülüyor');
      return quizzes;
    } catch (e) {
      print('DEBUG: getPopularQuizzes hatası: $e');
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
          print(
            '${doc.id} için başlangıç popülarite değeri atandı: $randomCount',
          );
        }
      }
    } catch (e) {
      print('Popülarite değerleri başlatma hatası: $e');
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

      print(
        'Filtrelenmiş benzersiz devam eden quiz sayısı: ${ongoingQuizzes.length}',
      );
      return ongoingQuizzes;
    } catch (e) {
      print('getOngoingQuizzes hatası: $e');
      return [];
    }
  }

  // Kullanıcının tamamladığı quizleri getir
  Future<List<Quiz>> getCompletedQuizzes() async {
    try {
      final userId = _authService.currentUser?.uid;
      if (userId == null) {
        print('getCompletedQuizzes hatası: Kullanıcı giriş yapmamış');
        return [];
      }

      print('Tamamlanan quizler getiriliyor...');

      // Öncelikle doğrudan user_completed_quizzes koleksiyonundan verileri çekelim
      print('user_completed_quizzes koleksiyonundan veriler alınıyor...');
      final querySnapshot =
          await _firestore
              .collection('user_completed_quizzes')
              .where('userId', isEqualTo: userId)
              .orderBy(
                'completedAt',
                descending: true,
              ) // En son tamamlananlar önce
              .get();

      print('Sorgu sonucu belge sayısı: ${querySnapshot.docs.length}');

      List<Quiz> completedQuizzes = [];

      if (querySnapshot.docs.isNotEmpty) {
        print('user_completed_quizzes koleksiyonunda veriler bulundu');

        for (var doc in querySnapshot.docs) {
          final data = doc.data();
          print('Belge: ${doc.id}, Data: $data');

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

        print(
          'Tamamlanan quizler başarıyla yüklendi: ${completedQuizzes.length}',
        );
        return completedQuizzes;
      }

      // Eğer user_completed_quizzes koleksiyonunda veri bulunamazsa, eski yöntemle devam et
      print(
        'user_completed_quizzes koleksiyonunda veri bulunamadı, eski yönteme geçiliyor...',
      );

      final userActivityDoc =
          await _firestore.collection('userActivities').doc(userId).get();

      if (!userActivityDoc.exists) {
        print('userActivities belgesinde de veri bulunamadı');
        return [];
      }

      final userActivity = UserActivity.fromFirestore(userActivityDoc);

      for (var entry in userActivity.quizProgress.entries) {
        final quizId = entry.key;
        final progress = entry.value;

        // Sadece tamamlanmış quizleri getir
        if (progress.isCompleted) {
          print('QuizProgress içinde tamamlanmış quiz bulundu: $quizId');

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

      print('Toplam tamamlanan quiz sayısı: ${completedQuizzes.length}');
      return completedQuizzes;
    } catch (e) {
      print('getCompletedQuizzes hatası: $e');
      return [];
    }
  }

  // Günün sorusunu getir - Yeni sistem: Tüm kategorilerden rastgele
  Future<DailyQuestion?> getDailyQuestion() async {
    try {
      print('DEBUG: Günün sorusu getiriliyor...');

      // Bugünün tarihini al
      final now = DateTime.now();
      final today = DateTime(now.year, now.month, now.day);
      final todayString =
          '${today.year}-${today.month.toString().padLeft(2, '0')}-${today.day.toString().padLeft(2, '0')}';

      print('DEBUG: Bugünün tarihi: $todayString');

      // Kullanıcının bugün günün sorusunu çözüp çözmediğini kontrol et
      final userId = _authService.currentUser?.uid;
      if (userId != null) {
        final userAnswerDoc =
            await _firestore
                .collection('daily_question_answers')
                .doc('${userId}_$todayString')
                .get();

        if (userAnswerDoc.exists) {
          print('DEBUG: Kullanıcı bugün günün sorusunu zaten çözmüş');
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

      // Bugün için günün sorusunu kontrol et
      final dailyQuestionDoc =
          await _firestore.collection('daily_questions').doc(todayString).get();

      if (dailyQuestionDoc.exists) {
        print('DEBUG: Bugün için günün sorusu zaten mevcut');
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

      print('DEBUG: Bugün için yeni günün sorusu seçiliyor...');

      // Tüm kategorilerden rastgele bir soru seç
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
        preoperativeAssessmentQuestions,
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
        safetyQualityPerformanceImprovementQuestions,
      ];

      // Tüm soruları bir listede topla
      List<Question> allQuestions = [];
      for (var questionSet in allQuestionSets) {
        allQuestions.addAll(questionSet);
      }

      if (allQuestions.isEmpty) {
        print('DEBUG: Hiç soru bulunamadı!');
        return null;
      }

      // Rastgele bir soru seç
      final random = Random();
      final selectedQuestion =
          allQuestions[random.nextInt(allQuestions.length)];

      print(
        'DEBUG: Rastgele soru seçildi: ${selectedQuestion.question.substring(0, 50)}...',
      );

      // Günün sorusunu Firestore'a kaydet
      final dailyQuestion = DailyQuestion(
        id: 'daily_${todayString}',
        question: selectedQuestion,
        date: today,
        pointMultiplier: 10, // 20 puan (normal 2 puan * 10)
        isAnswered: false,
      );

      await _firestore.collection('daily_questions').doc(todayString).set({
        'questionId': dailyQuestion.id,
        'question': selectedQuestion.toJson(),
        'date': Timestamp.fromDate(today),
        'pointMultiplier': 10,
        'createdAt': FieldValue.serverTimestamp(),
      });

      print('DEBUG: Günün sorusu Firestore\'a kaydedildi');
      return dailyQuestion;
    } catch (e) {
      print('DEBUG: getDailyQuestion hatası: $e');
      return null;
    }
  }

  // Günün sorusunu yanıtla - Yeni sistem
  Future<bool> answerDailyQuestion({
    required String questionId,
    required int userAnswer,
    required bool isCorrect,
    required Question question,
  }) async {
    try {
      final userId = _authService.currentUser?.uid;
      if (userId == null) {
        print('DEBUG: Kullanıcı giriş yapmamış');
        return false;
      }

      final now = DateTime.now();
      final today = DateTime(now.year, now.month, now.day);
      final todayString =
          '${today.year}-${today.month.toString().padLeft(2, '0')}-${today.day.toString().padLeft(2, '0')}';

      print('DEBUG: Günün sorusu yanıtlanıyor - Doğru: $isCorrect');

      // Kullanıcının cevabını kaydet
      await _firestore
          .collection('daily_question_answers')
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
        await _firestore.collection('userActivities').doc(userId).update({
          'totalPoints': FieldValue.increment(20),
          'dailyQuestionsCorrect': FieldValue.increment(1),
        });
        print('DEBUG: Kullanıcıya 20 puan eklendi');
      } else {
        await _firestore.collection('userActivities').doc(userId).update({
          'dailyQuestionsWrong': FieldValue.increment(1),
        });
        print('DEBUG: Yanlış cevap kaydedildi');
      }

      return true;
    } catch (e) {
      print('DEBUG: answerDailyQuestion hatası: $e');
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
      print('updateUserActivity hatası: $e');
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
      print('getUserActivity hatası: $e');
      return null;
    }
  }

  // Kategori adına göre soruları getir
  Future<List<Question>> getCategoryQuestions(String categoryName) async {
    print('DEBUG: getCategoryQuestions çağrıldı - Kategori: "$categoryName"');
    print('DEBUG: Lowercase kategori: "${categoryName.toLowerCase()}"');

    // Kategori mapping - Firestore'dan gelen adları kod içindeki soru setleriyle eşleştir
    final categoryMapping = {
      // Anestezi kategorileri
      'anestezi': anesthesiaApplicationQuestions,
      'anestezi uygulama': anesthesiaApplicationQuestions,
      'anestezi uygulaması': anesthesiaApplicationQuestions,
      'anestezi uygulamasi': anesthesiaApplicationQuestions,

      // Solunum kategorileri
      'solunum': respiratorySystemQuestions,
      'solunum sistemleri': respiratorySystemQuestions,
      'solunum sistemi': respiratorySystemQuestions,

      // Kardiyovasküler kategorileri
      'kardiyovasküler': cardiovascularMonitoringQuestions,
      'kardiyovasküler monitörizasyon': cardiovascularMonitoringQuestions,
      'kardiyovasküler monitorizasyon': cardiovascularMonitoringQuestions,
      'kardiyovaskuler monitörizasyon': cardiovascularMonitoringQuestions,

      // Farmakoloji kategorileri
      'farmakoloji': pharmacologicalPrinciplesQuestions,
      'farmakolojik prensipler': pharmacologicalPrinciplesQuestions,
      'farmakolojik prensip': pharmacologicalPrinciplesQuestions,

      // Ameliyathane kategorileri
      'ameliyathane': operatingRoomEnvironmentQuestions,
      'ameliyathane ortamı': operatingRoomEnvironmentQuestions,

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
      'bölüm 18 - ameliyat öncesi değerlendirme':
          preoperativeAssessmentQuestions,
      'ameliyat öncesi değerlendirme': preoperativeAssessmentQuestions,
      'preoperatif değerlendirme': preoperativeAssessmentQuestions,
      'preoperatif': preoperativeAssessmentQuestions,
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
        };

    final lowerCategoryName = categoryName.toLowerCase();
    final questions = categoryMapping[lowerCategoryName];

    if (questions != null) {
      print('DEBUG: Kategori eşleşti! ${questions.length} soru bulundu');
      return questions;
    } else {
      print(
        'DEBUG: UYARI - Kategori eşleşmedi! "$categoryName" için boş liste döndürülüyor',
      );
      print(
        'DEBUG: Kullanılabilir kategoriler: ${categoryMapping.keys.take(10).join(", ")}...',
      );
      return [];
    }
  }

  // Doğru veya yanlış cevap verdiğinde istatistikleri güncelle
  Future<bool> updateAnswerStatistics(bool isCorrect, int points) async {
    try {
      final userId = _authService.currentUser?.uid;
      if (userId == null) {
        print('updateAnswerStatistics hatası: Kullanıcı giriş yapmamış');
        return false;
      }

      print(
        'İstatistik güncelleniyor: ${isCorrect ? "Doğru" : "Yanlış"} cevap, kullanıcı: $userId',
      );

      // Firestore'da kullanıcı istatistiklerini güncelle
      if (isCorrect) {
        // Doğru cevap
        await _firestore.collection('userActivities').doc(userId).update({
          'totalPoints': FieldValue.increment(points), // Puanları ekle
          'totalCorrectAnswers': FieldValue.increment(
            1,
          ), // Doğru cevap sayısını artır
        });
        print('Doğru cevap istatistiği güncellendi: $points puan eklendi');
      } else {
        // Yanlış cevap
        await _firestore.collection('userActivities').doc(userId).update({
          'totalWrongAnswers': FieldValue.increment(
            1,
          ), // Yanlış cevap sayısını artır
        });
        print('Yanlış cevap istatistiği güncellendi');
      }

      return true;
    } catch (e) {
      print('updateAnswerStatistics hatası: $e');
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
        print('saveWrongAnswer hatası: Kullanıcı giriş yapmamış');
        return false;
      }

      print('Yanlış cevap kaydediliyor - UserID: $userId');
      print('Soru: ${question.question}');

      // Soruya kategori ekle (eğer yoksa)
      if (question.category == null || question.category!.isEmpty) {
        print('Soru kategorisi yoktu, kategori ekleniyor: $category');
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
        print('Soru için yeni ID oluşturuldu: $questionId');
      } else {
        print('Mevcut soru ID\'si kullanılıyor: $questionId');
      }

      // Sorunu zaten listelenip listelenmediğini kontrol et
      print('Soru kayıt kontrolü yapılıyor: $questionId');
      final existingDoc = await mistakesCollectionRef.doc(questionId).get();
      if (existingDoc.exists) {
        print('Bu soru zaten yanlışlar listesinde var: $questionId');
        return true;
      }

      print(
        'Soru kaydediliyor... ID: $questionId, Kategori: ${question.category ?? category}',
      );

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

      print('Hazırlanan veri: $questionData');

      // Yeni yanlış cevabı kaydet
      await mistakesCollectionRef.doc(questionId).set(questionData);

      // Doğrulama için veriyi tekrar oku
      final verifyDoc = await mistakesCollectionRef.doc(questionId).get();
      if (!verifyDoc.exists) {
        print('HATA: Soru kaydedildi ancak doğrulama başarısız oldu!');
        return false;
      }

      print(
        'Doğrulama başarılı. Yanlış cevaplanan soru kaydedildi! ID: $questionId',
      );
      return true;
    } catch (e) {
      print('saveWrongAnswer hatası: $e');
      return false;
    }
  }

  // Yanlış cevaplanan bir soruyu listeden kaldır - yeni veri yapısıyla
  Future<bool> removeWrongAnswer(String questionId) async {
    try {
      final userId = _authService.currentUser?.uid;
      if (userId == null) {
        print('removeWrongAnswer hatası: Kullanıcı giriş yapmamış');
        return false;
      }

      // Kullanıcının yanlış soruları koleksiyonu
      final mistakesCollectionRef = _firestore
          .collection('user_mistakes')
          .doc(userId)
          .collection('questions');

      // Soruyu sil
      await mistakesCollectionRef.doc(questionId).delete();

      print('Yanlış cevaplanan soru başarıyla listeden kaldırıldı');
      return true;
    } catch (e) {
      print('removeWrongAnswer hatası: $e');
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
        print('getMistakeQuestions: Kullanıcı giriş yapmamış');
        return [];
      }

      print('Yanlış cevaplanan sorular getiriliyor - UserID: ${user.uid}');

      // Kullanıcının yanlış soruları koleksiyonu
      final mistakesCollectionRef = _firestore
          .collection('user_mistakes')
          .doc(user.uid)
          .collection('questions');

      // Tüm yanlış soruları al - Cache sorununu önlemek için
      final querySnapshot = await mistakesCollectionRef.get();

      print('Yanlış cevaplanan soru sayısı: ${querySnapshot.docs.length}');

      // Her bir belgeyi Question nesnesine dönüştür
      for (var doc in querySnapshot.docs) {
        try {
          final data = doc.data();

          // Debug bilgisi ekle
          print('Belge ID: ${doc.id}, Veri: $data');

          // Gerekli alanların varlığını kontrol et
          if (!data.containsKey('question') ||
              !data.containsKey('options') ||
              !data.containsKey('correctAnswerIndex')) {
            print('Hatalı veri formatı: ${doc.id}');
            continue;
          }

          // Tekrarlanan soruları önle - soru metnini hash olarak kullan
          final questionText = data['question'] ?? '';
          final questionHash = _generateQuestionHash(questionText, data['options']);
          
          if (seenQuestionIds.contains(questionHash)) {
            print('Tekrarlanan soru atlandı: ${questionText.substring(0, min(30, questionText.length))}...');
            continue;
          }
          seenQuestionIds.add(questionHash);

          // Seçenekleri dönüştür
          final options = data['options'];
          List<String> optionsList;

          if (options is List) {
            optionsList = List<String>.from(options.map((e) => e.toString()));
          } else {
            print('Options formatı hatalı: $options');
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
          print(
            'Soru eklendi: ${question.question.substring(0, min(30, question.question.length))}...',
          );
        } catch (e) {
          print('Soru dönüştürme hatası: $e');
        }
      }

      print('Toplam ${mistakeQuestions.length} benzersiz yanlış soru bulundu.');
      return mistakeQuestions;
    } catch (e) {
      print('Yanlış soruları getirme hatası: $e');
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
        print('removeMistakeQuestion hatası: Kullanıcı giriş yapmamış');
        return false;
      }

      print('Eksiklerden soru kaldırılıyor: $questionId');

      // Firestore'dan soruyu kaldır
      await _firestore
          .collection('user_mistakes')
          .doc(user.uid)
          .collection('questions')
          .doc(questionId)
          .delete();

      print('Soru başarıyla eksiklerden kaldırıldı: $questionId');
      return true;
    } catch (e) {
      print('Eksiklerden soru kaldırma hatası: $e');
      return false;
    }
  }

  // Veri taşıma fonksiyonu - eski yapıdan yeni yapıya
  Future<bool> migrateMistakeQuestions() async {
    try {
      final userId = _authService.currentUser?.uid;
      if (userId == null) {
        print('Veri taşıma hatası: Kullanıcı giriş yapmamış');
        return false;
      }

      print('Eski yanlış sorular taşınıyor...');

      // Eski veri yapısından okuma
      final userActivityDoc =
          await _firestore.collection('userActivities').doc(userId).get();
      if (!userActivityDoc.exists) {
        print('Taşınacak veri bulunamadı');
        return true; // Hata yok, sadece veri yok
      }

      final userData = userActivityDoc.data();
      if (userData == null || !userData.containsKey('mistakeQuestions')) {
        print('mistakeQuestions alanı bulunamadı');
        return true; // Hata yok, sadece veri yok
      }

      final mistakesList = List<Map<String, dynamic>>.from(
        userData['mistakeQuestions'] ?? [],
      );

      print('Taşınacak soru sayısı: ${mistakesList.length}');
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
          print('Soru taşıma hatası: $e');
        }
      }

      // Eski veriyi temizle
      if (successCount > 0) {
        await _firestore.collection('userActivities').doc(userId).update({
          'mistakeQuestions': [], // Eski veriyi boş dizi yap
        });
      }

      print('$successCount soru başarıyla taşındı');
      return true;
    } catch (e) {
      print('Veri taşıma hatası: $e');
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
        print('completeQuiz hatası: Kullanıcı giriş yapmamış');
        return false;
      }

      // quizId yoksa oluştur
      final String finalQuizId =
          quizId ??
          '${categoryName.toLowerCase().replaceAll(' ', '_')}_${DateTime.now().millisecondsSinceEpoch}';

      print('Quiz tamamlanıyor: $finalQuizId, Skor: $score/$totalQuestions');

      // Kullanıcı aktivitesini güncelle
      final userActivityRef = _firestore
          .collection('userActivities')
          .doc(userId);

      final successRate = (score / totalQuestions) * 100; // Başarı oranı

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
        'totalPoints': FieldValue.increment(
          score * 10,
        ), // Her doğru cevap için 10 puan
      }, SetOptions(merge: true));

      // Tamamlanan quizi user_completed_quizzes koleksiyonuna da kaydet
      final now = DateTime.now();
      final completedQuizId = '${userId}_${finalQuizId}';

      print('Tamamlanan quiz kaydediliyor: $completedQuizId');

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
        print('DEBUG: Popülerlik sayısı artırılıyor - Kategori: $categoryName');

        // Önce kullanıcının bu kategoriyi daha önce tamamlayıp tamamlamadığını kontrol et
        final historyDoc =
            await _firestore
                .collection('user_quiz_history')
                .doc(
                  '${_authService.currentUser!.uid}_${categoryName.toLowerCase()}',
                )
                .get();

        if (!historyDoc.exists) {
          print('DEBUG: İlk tamamlama, popülerlik artırılacak');

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
            print('DEBUG: Quiz dokümanı bulundu: ${quizDoc.id}');

            // Mevcut popülerlik sayısını al
            final currentCount = quizDoc.data()['popularityCount'] ?? 0;
            final newCount = currentCount + 1;

            print('DEBUG: Mevcut sayı: $currentCount, Yeni sayı: $newCount');

            // Popülerlik sayısını artır
            await quizDoc.reference.update({'popularityCount': newCount});

            print('DEBUG: Popülerlik sayısı güncellendi: $newCount');
          } else {
            print('DEBUG: Quiz dokümanı bulunamadı - Yeni oluşturuluyor');
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
          print('DEBUG: Daha önce tamamlanmış, popülerlik artırılmayacak');

          // Sadece kullanıcı geçmişini güncelle
          await historyDoc.reference.update({
            'totalCompletions': FieldValue.increment(1),
            'lastCompletedAt': FieldValue.serverTimestamp(),
          });
        }
      } catch (e) {
        print('DEBUG: HATA - Popülerlik güncelleme hatası: $e');
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
      print('completeQuiz hatası: $e');
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
    ];
    
    return _translationService.getTranslatedCategories(categories, languageCode);
  }
}
