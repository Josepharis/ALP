import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:firebase_auth/firebase_auth.dart';
import '../models/question.dart';

class AdminService {
  final FirebaseFirestore _firestore = FirebaseFirestore.instance;
  final FirebaseAuth _auth = FirebaseAuth.instance;

  // Kullanıcı istatistikleri
  Future<Map<String, dynamic>> getUserStatistics() async {
    try {
      final now = DateTime.now();
      final oneWeekAgo = now.subtract(const Duration(days: 7));
      final oneDayAgo = now.subtract(const Duration(days: 1));

      // Toplam kullanıcı sayısı
      final totalUsersSnapshot = await _firestore.collection('users').get();
      final totalUsers = totalUsersSnapshot.docs.length;

      // Son 7 günde kayıt olan kullanıcılar
      final newUsersSnapshot =
          await _firestore
              .collection('users')
              .where('createdAt', isGreaterThan: oneWeekAgo)
              .get();
      final newUsersLastWeek = newUsersSnapshot.docs.length;

      // Son 24 saatte aktif kullanıcılar - hem users hem userActivities'den kontrol et
      final activeUsersFromActivitiesSnapshot =
          await _firestore
              .collection('userActivities')
              .where('lastLoginAt', isGreaterThan: oneDayAgo)
              .get();

      final activeUsersFromUsersSnapshot =
          await _firestore
              .collection('users')
              .where('lastLoginAt', isGreaterThan: oneDayAgo)
              .get();

      // İki sonuçtan daha yüksek olanı al
      final activeUsersToday = [
        activeUsersFromActivitiesSnapshot.docs.length,
        activeUsersFromUsersSnapshot.docs.length,
      ].reduce((a, b) => a > b ? a : b);

      // Quiz istatistikleri - farklı collection'lardan topla
      final quizAttemptsSnapshot =
          await _firestore.collection('quiz_attempts').get();
      final userCompletedQuizzesSnapshot =
          await _firestore.collection('user_completed_quizzes').get();
      final userOngoingQuizzesSnapshot =
          await _firestore.collection('user_ongoing_quizzes').get();

      // Toplam quiz sayısı - tüm kaynaklardan
      final totalQuizzes =
          quizAttemptsSnapshot.docs.length +
          userCompletedQuizzesSnapshot.docs.length +
          userOngoingQuizzesSnapshot.docs.length;

      // Son 7 günde yapılan quizler
      final recentQuizAttemptsSnapshot =
          await _firestore
              .collection('quiz_attempts')
              .where('date', isGreaterThan: oneWeekAgo)
              .get();

      final recentCompletedQuizzesSnapshot =
          await _firestore
              .collection('user_completed_quizzes')
              .where('completedAt', isGreaterThan: oneWeekAgo)
              .get();

      final recentQuizzes =
          recentQuizAttemptsSnapshot.docs.length +
          recentCompletedQuizzesSnapshot.docs.length;

      print('Kullanıcı İstatistikleri:');
      print('- Toplam kullanıcılar: $totalUsers');
      print('- Son 7 gün yeni: $newUsersLastWeek');
      print('- Son 24 saat aktif: $activeUsersToday');
      print('- Toplam quiz denemesi: $totalQuizzes');
      print('- Son 7 gün quiz: $recentQuizzes');

      return {
        'totalUsers': totalUsers,
        'newUsersLastWeek': newUsersLastWeek,
        'activeUsersToday': activeUsersToday,
        'totalQuizzes': totalQuizzes,
        'recentQuizzes': recentQuizzes,
      };
    } catch (e) {
      print('Error getting user statistics: $e');
      return {
        'totalUsers': 0,
        'newUsersLastWeek': 0,
        'activeUsersToday': 0,
        'totalQuizzes': 0,
        'recentQuizzes': 0,
      };
    }
  }

  // Kullanıcı listesi
  Future<List<Map<String, dynamic>>> getUsers() async {
    try {
      final snapshot =
          await _firestore
              .collection('users')
              .orderBy('createdAt', descending: true)
              .get();

      return snapshot.docs.map((doc) {
        final data = doc.data();
        return {
          'id': doc.id,
          'displayName': data['displayName'] ?? 'Unknown',
          'email': data['email'] ?? '',
          'createdAt': data['createdAt'],
          'lastActivity': data['lastActivity'],
          'score': data['score'] ?? 0,
          'quizzesCompleted': data['quizzesCompleted'] ?? 0,
        };
      }).toList();
    } catch (e) {
      print('Error getting users: $e');
      return [];
    }
  }

  // Tüm kategorileri getir
  Future<List<String>> getCategories() async {
    try {
      final snapshot = await _firestore.collection('questions').get();
      final categories = <String>{};

      for (var doc in snapshot.docs) {
        final data = doc.data();
        if (data['category'] != null) {
          categories.add(data['category']);
        }
      }

      return categories.toList()..sort();
    } catch (e) {
      print('Error getting categories: $e');
      return [];
    }
  }

  // Kategoriye göre soruları getir
  Future<List<Map<String, dynamic>>> getQuestionsByCategory(
    String category,
  ) async {
    try {
      final snapshot =
          await _firestore
              .collection('questions')
              .where('category', isEqualTo: category)
              .orderBy('createdAt', descending: true)
              .get();

      return snapshot.docs.map((doc) {
        final data = doc.data();
        return {
          'id': doc.id,
          'question': data['question'] ?? '',
          'options': List<String>.from(data['options'] ?? []),
          'correctAnswer': data['correctAnswer'] ?? 0,
          'explanation': data['explanation'] ?? '',
          'difficulty': data['difficulty'] ?? 'medium',
          'category': data['category'] ?? '',
          'createdAt': data['createdAt'],
        };
      }).toList();
    } catch (e) {
      print('Error getting questions by category: $e');
      return [];
    }
  }

  // Soru ekle
  Future<bool> addQuestion(Map<String, dynamic> questionData) async {
    try {
      await _firestore.collection('questions').add({
        ...questionData,
        'createdAt': FieldValue.serverTimestamp(),
        'createdBy': _auth.currentUser?.uid,
      });
      return true;
    } catch (e) {
      print('Error adding question: $e');
      return false;
    }
  }

  // Soru güncelle
  Future<bool> updateQuestion(
    String questionId,
    Map<String, dynamic> questionData,
  ) async {
    try {
      await _firestore.collection('questions').doc(questionId).update({
        ...questionData,
        'updatedAt': FieldValue.serverTimestamp(),
        'updatedBy': _auth.currentUser?.uid,
      });
      return true;
    } catch (e) {
      print('Error updating question: $e');
      return false;
    }
  }

  // Soru sil
  Future<bool> deleteQuestion(String questionId) async {
    try {
      await _firestore.collection('questions').doc(questionId).delete();
      return true;
    } catch (e) {
      print('Error deleting question: $e');
      return false;
    }
  }

  // Quiz istatistiklerini getir - hem organize hem eski veri yapısından
  Future<Map<String, dynamic>> getQuizStatistics() async {
    try {
      // Önce organize veri yapısından istatistikleri al
      final organizedStatsSnapshot =
          await _firestore.collection('quizCategories').get();
      int organizedQuestions = 0;
      int organizedCategories = organizedStatsSnapshot.docs.length;
      Map<String, int> organizedQuestionsByCategory = {};

      for (final categoryDoc in organizedStatsSnapshot.docs) {
        final data = categoryDoc.data();
        final displayName = data['displayName'] as String;
        final questionCount = data['questionCount'] as int? ?? 0;

        organizedQuestionsByCategory[displayName] = questionCount;
        organizedQuestions += questionCount;
      }

      // Sonra eski questions collection'ından istatistikleri al
      final legacyQuestionsSnapshot =
          await _firestore.collection('questions').get();
      int legacyQuestions = legacyQuestionsSnapshot.docs.length;
      Map<String, int> legacyQuestionsByCategory = {};

      for (var doc in legacyQuestionsSnapshot.docs) {
        final category = doc.data()['category'] as String? ?? 'Diğer';
        legacyQuestionsByCategory[category] =
            (legacyQuestionsByCategory[category] ?? 0) + 1;
      }

      // Toplam hesaplamalar
      final totalQuestions = organizedQuestions + legacyQuestions;
      final totalCategories =
          organizedCategories + legacyQuestionsByCategory.length;

      // Kategorileri birleştir
      final Map<String, int> allQuestionsByCategory = {};
      allQuestionsByCategory.addAll(organizedQuestionsByCategory);
      allQuestionsByCategory.addAll(legacyQuestionsByCategory);

      print('Quiz İstatistikleri:');
      print('- Organize sorular: $organizedQuestions');
      print('- Eski format sorular: $legacyQuestions');
      print('- Toplam sorular: $totalQuestions');
      print('- Toplam kategoriler: $totalCategories');

      return {
        'totalQuestions': totalQuestions,
        'totalCategories': totalCategories,
        'organizedQuestions': organizedQuestions,
        'legacyQuestions': legacyQuestions,
        'questionsByCategory': allQuestionsByCategory,
        'organizedCategories': organizedCategories,
      };
    } catch (e) {
      print('Error getting quiz statistics: $e');
      return {
        'totalQuestions': 0,
        'totalCategories': 0,
        'organizedQuestions': 0,
        'legacyQuestions': 0,
        'questionsByCategory': <String, int>{},
        'organizedCategories': 0,
      };
    }
  }

  // Quiz tamamlandığında çağrılacak method
  Future<void> recordQuizCompletion(
    String userId,
    String category,
    int score,
  ) async {
    try {
      // Quiz attempt kaydet
      await _firestore.collection('quiz_attempts').add({
        'userId': userId,
        'category': category,
        'score': score,
        'date': FieldValue.serverTimestamp(),
        'completedAt': FieldValue.serverTimestamp(),
      });

      // User activity güncelle
      await _firestore.collection('userActivities').doc(userId).set({
        'userId': userId,
        'lastLoginAt': FieldValue.serverTimestamp(),
        'lastQuizAt': FieldValue.serverTimestamp(),
        'totalQuizzes': FieldValue.increment(1),
      }, SetOptions(merge: true));

      // User profilini güncelle
      await _firestore.collection('users').doc(userId).update({
        'lastActivity': FieldValue.serverTimestamp(),
        'quizzesCompleted': FieldValue.increment(1),
        'score': FieldValue.increment(score),
      });

      print('Quiz completion recorded for user: $userId');
    } catch (e) {
      print('Error recording quiz completion: $e');
    }
  }

  // User login olduğunda çağrılacak method
  Future<void> recordUserLogin(String userId) async {
    try {
      await _firestore.collection('userActivities').doc(userId).set({
        'userId': userId,
        'lastLoginAt': FieldValue.serverTimestamp(),
      }, SetOptions(merge: true));

      // User profilini güncelle
      await _firestore.collection('users').doc(userId).update({
        'lastActivity': FieldValue.serverTimestamp(),
      });

      print('User login recorded: $userId');
    } catch (e) {
      print('Error recording user login: $e');
    }
  }

  // Sistem verilerini import et (mevcut data dosyalarından)
  Future<void> importSystemQuestions() async {
    // Bu fonksiyon mevcut data dosyalarındaki soruları Firestore'a aktarır
    // Implement as needed based on your current data structure
  }
}
