import 'package:anestezi/models/daily_question.dart';
import 'package:cloud_firestore/cloud_firestore.dart';
import 'dart:math';
import '../models/quiz.dart';
import '../models/question.dart';
import '../models/user_activity.dart';
import 'auth_service.dart';
import '../data/anesthesia_questions.dart';
import '../data/operating_room_questions.dart';
import '../data/respiratory_questions.dart';
import '../data/anesthesia_station_questions.dart';
import '../data/cardiovascular_questions.dart';
import '../data/cardiovascular_questions_2.dart';

class QuizService {
  final FirebaseFirestore _firestore = FirebaseFirestore.instance;
  final AuthService _authService = AuthService();

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

      // Yarım kalan quizi user_ongoing_quizzes koleksiyonuna kaydet
      final ongoingQuizRef = _firestore
          .collection('user_ongoing_quizzes')
          .doc('${userId}_${quiz.id}');

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
      print('getPopularQuizzes hatası: $e');
      return [];
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
        throw Exception('Kullanıcı giriş yapmamış');
      }

      final userActivityDoc =
          await _firestore.collection('userActivities').doc(userId).get();

      if (!userActivityDoc.exists) {
        return [];
      }

      final userActivity = UserActivity.fromFirestore(userActivityDoc);

      List<Quiz> completedQuizzes = [];
      for (var entry in userActivity.quizProgress.entries) {
        final quizId = entry.key;
        final progress = entry.value;

        // Sadece tamamlanmış quizleri getir
        if (progress.isCompleted) {
          final quizDoc =
              await _firestore.collection('quizzes').doc(quizId).get();

          if (quizDoc.exists) {
            final quiz = Quiz.fromFirestore(
              quizDoc,
              totalQuestions: progress.totalQuestions,
            );

            completedQuizzes.add(quiz);
          }
        }
      }

      return completedQuizzes;
    } catch (e) {
      print('getCompletedQuizzes hatası: $e');
      return [];
    }
  }

  // Günün sorusunu getir
  Future<DailyQuestion?> getDailyQuestion() async {
    try {
      // Bugünün tarihini al
      final now = DateTime.now();
      final today = DateTime(now.year, now.month, now.day);

      // Bugüne ait günün sorusunu getir
      final querySnapshot =
          await _firestore
              .collection('dailyQuestions')
              .where('date', isGreaterThanOrEqualTo: Timestamp.fromDate(today))
              .where(
                'date',
                isLessThan: Timestamp.fromDate(today.add(Duration(days: 1))),
              )
              .limit(1)
              .get();

      if (querySnapshot.docs.isEmpty) {
        // Bugün için bir soru henüz atanmamış, rastgele bir soru seç
        final randomQuizSnapshot =
            await _firestore.collection('quizzes').limit(1).get();

        if (randomQuizSnapshot.docs.isEmpty) {
          return null;
        }

        final randomQuizId = randomQuizSnapshot.docs.first.id;
        final questionsSnapshot =
            await _firestore
                .collection('quizzes')
                .doc(randomQuizId)
                .collection('questions')
                .limit(1)
                .get();

        if (questionsSnapshot.docs.isEmpty) {
          return null;
        }

        final questionDoc = questionsSnapshot.docs.first;
        final questionData = Question.fromJson(questionDoc.data());

        // Yeni günlük soru oluştur
        final dailyQuestion = DailyQuestion(
          id: questionDoc.id,
          question: questionData,
          date: today,
          pointMultiplier: 2, // 2x puan
        );

        // Firestore'a kaydet
        await _firestore
            .collection('dailyQuestions')
            .add(dailyQuestion.toFirestore());

        return dailyQuestion;
      } else {
        // Mevcut günlük soruyu getir
        final dailyQuestionDoc = querySnapshot.docs.first;
        final data = dailyQuestionDoc.data();

        // Sorunun ayrıntılarını almak için soru ID'sini kullan
        final String questionId = data['questionId'];

        // Tüm quizlerde bu soruyu ara
        final quizzesSnapshot = await _firestore.collection('quizzes').get();

        for (var quizDoc in quizzesSnapshot.docs) {
          final questionsSnapshot =
              await _firestore
                  .collection('quizzes')
                  .doc(quizDoc.id)
                  .collection('questions')
                  .where(FieldPath.documentId, isEqualTo: questionId)
                  .limit(1)
                  .get();

          if (questionsSnapshot.docs.isNotEmpty) {
            final questionDoc = questionsSnapshot.docs.first;
            final questionData = Question.fromJson(questionDoc.data());

            return DailyQuestion.fromFirestore(dailyQuestionDoc, questionData);
          }
        }
      }

      return null;
    } catch (e) {
      print('getDailyQuestion hatası: $e');
      return null;
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
    // Kategori adına göre uygun soru listesini döndür
    switch (categoryName.toLowerCase()) {
      case 'anestezi':
        return anesthesiaQuestions;
      case 'ameliyathane':
        return operatingRoomQuestions;
      case 'solunum':
        return respiratoryQuestions;
      case 'anestezi i̇stasyonu':
      case 'anestezi istasyonu':
        return anesthesiaStationQuestions;
      case 'kardiyovasküler 1':
      case 'kardiyovasküler':
        return cardiovascularQuestions;
      case 'kardiyovasküler 2':
        return cardiovascularQuestions2;
      case 'temel anestezi':
        return anesthesiaQuestions;
      case 'i̇laç etkileşimleri':
      case 'ilaç etkileşimleri':
        return anesthesiaQuestions.take(15).toList(); // İlk 15 soru
      case 'ameliyat sonrası':
        return operatingRoomQuestions.take(10).toList(); // İlk 10 soru
      case 'acil anestezi':
        return anesthesiaQuestions.reversed.take(12).toList(); // Son 12 soru
      default:
        // Eğer eşleşen kategori bulunamazsa, anestezi sorularını döndür
        return anesthesiaQuestions;
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
            question: data['question'] ?? '',
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

      print('Toplam ${mistakeQuestions.length} yanlış soru bulundu.');
      return mistakeQuestions;
    } catch (e) {
      print('Yanlış soruları getirme hatası: $e');
      return [];
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

      // Kullanıcı aktivitesini güncelle
      final userActivityRef = _firestore
          .collection('userActivities')
          .doc(userId);

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
            'successRate': (score / totalQuestions) * 100, // Başarı oranı
            'lastUpdatedAt': Timestamp.now(),
          },
        },
        'totalPoints': FieldValue.increment(
          score * 10,
        ), // Her doğru cevap için 10 puan
      }, SetOptions(merge: true));

      // Devam eden quizlerden sil
      if (quizId != null) {
        await _firestore
            .collection('user_ongoing_quizzes')
            .doc('${userId}_${quizId}')
            .delete();
      }

      print('Quiz tamamlandı: $finalQuizId, Skor: $score/$totalQuestions');
      return true;
    } catch (e) {
      print('completeQuiz hatası: $e');
      return false;
    }
  }
}
