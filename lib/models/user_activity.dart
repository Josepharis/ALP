import 'package:cloud_firestore/cloud_firestore.dart';

class UserActivity {
  final String userId;
  final List<DateTime> loginDays;
  final Map<String, QuizProgress> quizProgress;
  final int dailyStreak;
  final int totalCorrectAnswers;
  final int totalWrongAnswers;
  final int totalPoints;
  final bool isPremium;
  final DateTime lastUpdated;

  UserActivity({
    required this.userId,
    required this.loginDays,
    required this.quizProgress,
    this.dailyStreak = 0,
    this.totalCorrectAnswers = 0,
    this.totalWrongAnswers = 0,
    this.totalPoints = 0,
    this.isPremium = false,
    required this.lastUpdated,
  });

  factory UserActivity.empty(String userId) {
    return UserActivity(
      userId: userId,
      loginDays: [DateTime.now()],
      quizProgress: {},
      dailyStreak: 1,
      totalPoints: 0,
      isPremium: false,
      lastUpdated: DateTime.now(),
    );
  }

  factory UserActivity.fromFirestore(DocumentSnapshot doc) {
    final data = doc.data() as Map<String, dynamic>;

    // Login günlerini dönüştür
    List<DateTime> loginDays = [];
    if (data['loginDays'] != null) {
      loginDays =
          (data['loginDays'] as List)
              .map((date) => (date as Timestamp).toDate())
              .toList();
    }

    // Quiz ilerlemelerini dönüştür
    Map<String, QuizProgress> quizProgress = {};
    if (data['quizProgress'] != null) {
      final progressMap = data['quizProgress'] as Map<String, dynamic>;
      progressMap.forEach((quizId, progress) {
        try {
          quizProgress[quizId] = QuizProgress.fromMap(
            progress as Map<String, dynamic>,
          );
        } catch (e) {
          // Hatalı quiz ilerlemesini atla
        }
      });
    }

    return UserActivity(
      userId: data['userId'] ?? doc.id,
      loginDays: loginDays,
      quizProgress: quizProgress,
      dailyStreak: data['dailyStreak'] ?? 0,
      totalCorrectAnswers: data['totalCorrectAnswers'] ?? 0,
      totalWrongAnswers: data['totalWrongAnswers'] ?? 0,
      totalPoints: data['totalPoints'] ?? 0,
      isPremium: data['isPremium'] ?? false,
      lastUpdated:
          (data['lastUpdated'] as Timestamp?)?.toDate() ?? DateTime.now(),
    );
  }

  Map<String, dynamic> toFirestore() {
    Map<String, dynamic> progressMap = {};
    quizProgress.forEach((quizId, progress) {
      progressMap[quizId] = progress.toMap();
    });

    return {
      'userId': userId,
      'loginDays': loginDays.map((date) => Timestamp.fromDate(date)).toList(),
      'quizProgress': progressMap,
      'dailyStreak': dailyStreak,
      'totalCorrectAnswers': totalCorrectAnswers,
      'totalWrongAnswers': totalWrongAnswers,
      'totalPoints': totalPoints,
      'isPremium': isPremium,
      'lastUpdated': Timestamp.fromDate(lastUpdated),
    };
  }

  // Günün login durumunu kontrol eder
  bool isLoggedInToday() {
    final today = DateTime.now();
    final todayDate = DateTime(today.year, today.month, today.day);

    return loginDays.any((loginDate) {
      final date = DateTime(loginDate.year, loginDate.month, loginDate.day);
      return date.isAtSameMomentAs(todayDate);
    });
  }

  // 7 günlük login durumlarını getirir
  List<bool> getWeeklyLoginStatus() {
    final now = DateTime.now();
    final today = DateTime(now.year, now.month, now.day);

    List<bool> weeklyStatus = List.filled(7, false);

    // Haftanın günlerini Pazartesi=0, Salı=1, ... Pazar=6 şeklinde düzenle
    for (int i = 0; i < 7; i++) {
      // weekday 1-7 arasında (Pazartesi=1, Pazar=7)
      // Hesaplama: (bugün - güncel haftanın günü) + i + 1
      // Örnek: Bugün Çarşamba (3) ise ve i=0 (Pazartesi) için
      // (bugün - 3) + 0 + 1 = bugün - 2 (iki gün önce, yani bu haftanın pazartesi günü)

      // Haftanın i. günü (0: Pazartesi, 6: Pazar)
      final int targetWeekday = i + 1; // 1-7 arasında weekday değeri

      // Bugünün weekday değeri
      final todayWeekday = now.weekday; // 1-7 arasında

      // Bugünden haftanın hedef gününe kadar olan fark
      final dayDiff = (targetWeekday - todayWeekday);

      // Eğer hedef gün geçmişte ise (negatif fark), önceki hafta gününe bakmalıyız
      // Eğer hedef gün bugün veya gelecekte ise (0 veya pozitif fark), bu hafta gününe bakmalıyız
      final checkDate = today.add(Duration(days: dayDiff));

      // Bu gün için kullanıcının giriş yapıp yapmadığını kontrol et
      weeklyStatus[i] = loginDays.any((loginDate) {
        final date = DateTime(loginDate.year, loginDate.month, loginDate.day);
        return date.isAtSameMomentAs(checkDate);
      });

    }

    return weeklyStatus;
  }

  // Bugün giriş yapıldığını işaretler
  UserActivity markTodayLogin() {
    final today = DateTime.now();
    final todayDate = DateTime(today.year, today.month, today.day);

    if (!isLoggedInToday()) {
      List<DateTime> updatedLoginDays = List.from(loginDays)..add(todayDate);

      // Günlük seriyi kontrol et
      int updatedStreak = dailyStreak;
      final yesterday = todayDate.subtract(const Duration(days: 1));

      bool loggedInYesterday = loginDays.any((loginDate) {
        final date = DateTime(loginDate.year, loginDate.month, loginDate.day);
        return date.isAtSameMomentAs(yesterday);
      });

      if (loggedInYesterday) {
        updatedStreak += 1;
      } else {
        updatedStreak = 1;
      }

      return UserActivity(
        userId: userId,
        loginDays: updatedLoginDays,
        quizProgress: quizProgress,
        dailyStreak: updatedStreak,
        totalCorrectAnswers: totalCorrectAnswers,
        totalWrongAnswers: totalWrongAnswers,
        totalPoints: totalPoints,
        lastUpdated: DateTime.now(),
      );
    }

    return this;
  }

  // Haftalık istatistikleri getirir
  Map<String, int> getWeeklyStats() {
    final now = DateTime.now();
    final weekStart = now.subtract(Duration(days: now.weekday - 1));
    final weekStartDate = DateTime(
      weekStart.year,
      weekStart.month,
      weekStart.day,
    );

    int weeklyCorrect = 0;
    int weeklyWrong = 0;

    quizProgress.forEach((quizId, progress) {
      progress.answers.forEach((answer) {
        if (answer.date.isAfter(weekStartDate)) {
          if (answer.isCorrect) {
            weeklyCorrect++;
          } else {
            weeklyWrong++;
          }
        }
      });
    });

    return {
      'correct': weeklyCorrect,
      'wrong': weeklyWrong,
      'total': weeklyCorrect + weeklyWrong,
    };
  }
}

class QuizProgress {
  final String quizId;
  final int totalQuestions;
  final int completedQuestions;
  final List<QuizAnswer> answers;
  final bool isCompleted;
  final DateTime lastUpdated;

  QuizProgress({
    required this.quizId,
    required this.totalQuestions,
    required this.completedQuestions,
    required this.answers,
    required this.isCompleted,
    required this.lastUpdated,
  });

  factory QuizProgress.start(String quizId, int totalQuestions) {
    return QuizProgress(
      quizId: quizId,
      totalQuestions: totalQuestions,
      completedQuestions: 0,
      answers: [],
      isCompleted: false,
      lastUpdated: DateTime.now(),
    );
  }

  factory QuizProgress.fromMap(Map<String, dynamic> map) {
    List<QuizAnswer> answers = [];
    if (map['answers'] != null) {
      try {
        answers =
            (map['answers'] as List)
                .map(
                  (answer) =>
                      QuizAnswer.fromMap(answer as Map<String, dynamic>),
                )
                .toList();
      } catch (e) {
      }
    }

    return QuizProgress(
      quizId: map['quizId'] as String? ?? '',
      totalQuestions: map['totalQuestions'] as int? ?? 0,
      completedQuestions: map['completedQuestions'] as int? ?? 0,
      answers: answers,
      isCompleted: map['isCompleted'] as bool? ?? false,
      lastUpdated:
          (map['lastUpdated'] as Timestamp?)?.toDate() ?? DateTime.now(),
    );
  }

  Map<String, dynamic> toMap() {
    return {
      'quizId': quizId,
      'totalQuestions': totalQuestions,
      'completedQuestions': completedQuestions,
      'answers': answers.map((answer) => answer.toMap()).toList(),
      'isCompleted': isCompleted,
      'lastUpdated': Timestamp.fromDate(lastUpdated),
    };
  }

  // Doğru cevap sayısını verir
  int get correctAnswersCount => answers.where((a) => a.isCorrect).length;

  // Yanlış cevap sayısını verir
  int get wrongAnswersCount => answers.where((a) => !a.isCorrect).length;

  // Başarı yüzdesini hesaplar
  double get successRate {
    if (answers.isEmpty) return 0.0;
    return (correctAnswersCount / answers.length) * 100;
  }

  // İlerleme yüzdesini hesaplar
  double get progressPercentage {
    if (totalQuestions == 0) return 0.0;
    return completedQuestions / totalQuestions;
  }
}

class QuizAnswer {
  final String questionId;
  final int selectedAnswerIndex;
  final bool isCorrect;
  final DateTime date;

  QuizAnswer({
    required this.questionId,
    required this.selectedAnswerIndex,
    required this.isCorrect,
    required this.date,
  });

  factory QuizAnswer.fromMap(Map<String, dynamic> map) {
    return QuizAnswer(
      questionId: map['questionId'] as String,
      selectedAnswerIndex: map['selectedAnswerIndex'] as int,
      isCorrect: map['isCorrect'] as bool,
      date: (map['date'] as Timestamp).toDate(),
    );
  }

  Map<String, dynamic> toMap() {
    return {
      'questionId': questionId,
      'selectedAnswerIndex': selectedAnswerIndex,
      'isCorrect': isCorrect,
      'date': Timestamp.fromDate(date),
    };
  }
}
