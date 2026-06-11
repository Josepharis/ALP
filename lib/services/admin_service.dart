import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/foundation.dart';

class AdminService {
  final FirebaseFirestore _firestore = FirebaseFirestore.instance;
  final FirebaseAuth _auth = FirebaseAuth.instance;

  // Uygulama genel ayarları: Ücretsiz soru limitleri
  Future<Map<String, dynamic>> getFreeQuestionConfig() async {
    try {
      final doc = await _firestore
          .collection('systemSettings')
          .doc('freeQuestionConfig')
          .get();

      final data = doc.data() ?? <String, dynamic>{};

      final firstTopicsCount = (data['firstTopicsCount'] as int?) ?? 10;
      final firstTopicsFreeQuestions =
          (data['firstTopicsFreeQuestions'] as int?) ?? 20;
      final otherTopicsFreeQuestions =
          (data['otherTopicsFreeQuestions'] as int?) ?? 2;

      return {
        'firstTopicsCount': firstTopicsCount,
        'firstTopicsFreeQuestions': firstTopicsFreeQuestions,
        'otherTopicsFreeQuestions': otherTopicsFreeQuestions,
      };
    } catch (e) {
      // Varsayılan değerler
      return {
        'firstTopicsCount': 10,
        'firstTopicsFreeQuestions': 20,
        'otherTopicsFreeQuestions': 2,
      };
    }
  }

  Future<bool> updateFreeQuestionConfig({
    required int firstTopicsCount,
    required int firstTopicsFreeQuestions,
    required int otherTopicsFreeQuestions,
  }) async {
    try {
      await _firestore
          .collection('systemSettings')
          .doc('freeQuestionConfig')
          .set({
        'firstTopicsCount': firstTopicsCount,
        'firstTopicsFreeQuestions': firstTopicsFreeQuestions,
        'otherTopicsFreeQuestions': otherTopicsFreeQuestions,
        'updatedAt': FieldValue.serverTimestamp(),
        'updatedBy': _auth.currentUser?.uid,
      }, SetOptions(merge: true));

      return true;
    } catch (e) {
      return false;
    }
  }

  // Kullanıcı istatistikleri
  Future<Map<String, dynamic>> getUserStatistics() async {
    try {
      final now = DateTime.now();
      final oneWeekAgo = now.subtract(const Duration(days: 7));
      final oneDayAgo = now.subtract(const Duration(days: 1));

      // Tüm sayımları paralel olarak gerçekleştirelim (Aggregate queries)
      final results = await Future.wait([
        _firestore.collection('users').count().get(),
        _firestore.collection('users').where('createdAt', isGreaterThan: oneWeekAgo).count().get(),
        _firestore.collection('userActivities').where('lastLoginAt', isGreaterThan: oneDayAgo).count().get(),
        _firestore.collection('users').where('lastLoginAt', isGreaterThan: oneDayAgo).count().get(),
        _firestore.collection('quiz_attempts').count().get(),
        _firestore.collection('user_completed_quizzes').count().get(),
        _firestore.collection('user_ongoing_quizzes').count().get(),
        _firestore.collection('quiz_attempts').where('date', isGreaterThan: oneWeekAgo).count().get(),
        _firestore.collection('user_completed_quizzes').where('completedAt', isGreaterThan: oneWeekAgo).count().get(),
      ]);

      final totalUsers = results[0].count ?? 0;
      final newUsersLastWeek = results[1].count ?? 0;
      
      final activeUsersFromActivities = results[2].count ?? 0;
      final activeUsersFromUsers = results[3].count ?? 0;
      final activeUsersToday = activeUsersFromActivities > activeUsersFromUsers 
          ? activeUsersFromActivities 
          : activeUsersFromUsers;

      final quizAttempts = results[4].count ?? 0;
      final userCompletedQuizzes = results[5].count ?? 0;
      final userOngoingQuizzes = results[6].count ?? 0;
      final totalQuizzes = quizAttempts + userCompletedQuizzes + userOngoingQuizzes;

      final recentQuizAttempts = results[7].count ?? 0;
      final recentCompletedQuizzes = results[8].count ?? 0;
      final recentQuizzes = recentQuizAttempts + recentCompletedQuizzes;

      return {
        'totalUsers': totalUsers,
        'newUsersLastWeek': newUsersLastWeek,
        'activeUsersToday': activeUsersToday,
        'totalQuizzes': totalQuizzes,
        'recentQuizzes': recentQuizzes,
      };
    } catch (e) {
      debugPrint('Error in getUserStatistics: $e');
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
      return [];
    }
  }

  // Son değişiklik zamanını güncelleyen yardımcı metod
  Future<void> updateQuestionsVersion() async {
    try {
      await _firestore.collection('systemSettings').doc('questionsVersion').set({
        'version': FieldValue.serverTimestamp(),
      }, SetOptions(merge: true));
    } catch (e) {
      debugPrint('Error updating questions version: $e');
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
      await updateQuestionsVersion();
      return true;
    } catch (e) {
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
      await updateQuestionsVersion();
      return true;
    } catch (e) {
      return false;
    }
  }

  // Soru sil
  Future<bool> deleteQuestion(String questionId) async {
    try {
      await _firestore.collection('questions').doc(questionId).delete();
      await updateQuestionsVersion();
      return true;
    } catch (e) {
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

      // Sonra eski questions collection'ından istatistikleri count() ile hızlıca al
      final legacyCountSnapshot =
          await _firestore.collection('questions').count().get();
      int legacyQuestions = legacyCountSnapshot.count ?? 0;

      // Toplam hesaplamalar
      final totalQuestions = organizedQuestions + legacyQuestions;
      final totalCategories = organizedCategories;

      return {
        'totalQuestions': totalQuestions,
        'totalCategories': totalCategories,
        'organizedQuestions': organizedQuestions,
        'legacyQuestions': legacyQuestions,
        'questionsByCategory': organizedQuestionsByCategory,
        'organizedCategories': organizedCategories,
      };
    } catch (e) {
      debugPrint('Error in getQuizStatistics: $e');
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

  // Tüm kullanıcıların satın almalarını getir (admin görünümü için)
  Future<List<Map<String, dynamic>>> getAllPurchases({int limit = 200}) async {
    try {
      final snapshot = await _firestore
          .collectionGroup('purchases')
          .limit(limit)
          .get();

      final List<Map<String, dynamic>> allRecords = [];

      for (final doc in snapshot.docs) {
        final data = doc.data();
        final userRef = doc.reference.parent.parent;
        final userId = userRef?.id ?? '';

        allRecords.add({
          'id': doc.id,
          'userId': userId,
          'productId': data['productId'] ?? '',
          'status': data['status'] ?? '',
          'platform': data['platform'] ?? '',
          'transactionDate': data['transactionDate'],
          'purchasedAt': data['purchasedAt'],
          'isRestored': data['isRestored'] ?? false,
        });
      }

      // Mükerrer kayıtları temizle ama AKILLICA:
      // Eğer aynı işlem hem "Purchased" hem "Restore" olarak varsa, "Purchased" olanı tutalım ki kazanç görünsün.
      final Map<String, Map<String, dynamic>> filteredMap = {};
      for (var r in allRecords) {
        final purchaseId = r['purchaseId']?.toString() ?? '';
        final key = purchaseId.isNotEmpty && purchaseId != '0'
            ? purchaseId
            : (r['id'] ?? r['uniqueId'] ?? '');
        final isNewRestored = r['isRestored'] == true;
        
        if (!filteredMap.containsKey(key)) {
          filteredMap[key] = r;
        } else {
          final existing = filteredMap[key]!;
          final isExistingRestored = existing['isRestored'] == true;
          
          // Öncelik 1: Mevcut kayıt Restore ise ve yeni kayıt Purchased ise, yeni kaydı tut.
          if (isExistingRestored && !isNewRestored) {
            filteredMap[key] = r;
          } 
          // Öncelik 2: Her iki kayıt da aynı türdeyse, daha yeni olanı tut.
          else if (isExistingRestored == isNewRestored) {
            final existingTime = (existing['purchasedAt'] as Timestamp?)?.millisecondsSinceEpoch ?? 
                               int.tryParse(existing['transactionDate']?.toString() ?? '0') ?? 0;
            final currentTime = (r['purchasedAt'] as Timestamp?)?.millisecondsSinceEpoch ?? 
                              int.tryParse(r['transactionDate']?.toString() ?? '0') ?? 0;
            
            if (currentTime > existingTime) {
              filteredMap[key] = r;
            }
          }
        }
      }

      final purchases = filteredMap.values.toList();

      // Fetch user names for filtered list in parallel
      final uniqueUserIds = purchases.map((p) => p['userId'] as String).where((uid) => uid.isNotEmpty).toSet();
      final userNames = <String, String>{};
      
      await Future.wait(uniqueUserIds.map((uid) async {
        try {
          final userDoc = await _firestore.collection('users').doc(uid).get();
          if (userDoc.exists) {
            userNames[uid] = userDoc.data()?['displayName'] ?? 'İsimsiz Kullanıcı';
          } else {
            userNames[uid] = 'Silinmiş Kullanıcı';
          }
        } catch (e) {
          userNames[uid] = 'Hata: $uid';
        }
      }));

      // Add user names to purchases list
      for (var p in purchases) {
        p['displayName'] = userNames[p['userId']] ?? 'Bilinmeyen';
      }

      // Sort in-memory: handle potential nulls or different field types
      purchases.sort((a, b) {
        final aTime = a['purchasedAt'] ?? a['transactionDate'];
        final bTime = b['purchasedAt'] ?? b['transactionDate'];
        
        if (aTime == null && bTime == null) return 0;
        if (aTime == null) return 1;
        if (bTime == null) return -1;

        // Try to compare as Timestamps or Strings
        try {
          if (aTime is Timestamp && bTime is Timestamp) {
            return bTime.compareTo(aTime);
          }
          // Fallback to string comparison if they are dates/transaction IDs
          return bTime.toString().compareTo(aTime.toString());
        } catch (e) {
          return 0;
        }
      });

      return purchases;
    } catch (e) {
      debugPrint('Error in getAllPurchases: $e');
      return [];
    }
  }

  // Dil bazlı quiz istatistiklerini getir
  Future<Map<String, dynamic>> getLanguageBasedQuizStatistics() async {
    try {
      // Tüm kategorileri getir (isActive filtresi olmadan)
      final allCategoriesSnapshot = await _firestore
          .collection('quizCategories')
          .get();

      int turkishQuestions = 0;
      int englishQuestions = 0;
      Map<String, int> turkishQuestionsByCategory = {};
      Map<String, int> englishQuestionsByCategory = {};


      // Kategorileri işle - language field'ına göre dil belirle
      for (final categoryDoc in allCategoriesSnapshot.docs) {
        final data = categoryDoc.data();
        final displayName = data['displayName'] as String;
        final collectionName = data['collectionName'] as String? ?? '';
        final questionCount = data['questionCount'] as int? ?? 0;
        final language = data['language'] as String? ?? '';
        
        // Eğer language field'ı yoksa, collection name ve display name'e göre belirle
        String determinedLanguage = language;
        if (language.isEmpty) {
          if (collectionName.startsWith('english_') || 
              displayName.toLowerCase().contains('english') ||
              displayName.toLowerCase().contains('ingilizce') ||
              displayName.toLowerCase().contains('(english)')) {
            determinedLanguage = 'english';
          } else {
            determinedLanguage = 'turkish';
          }
          
          
          // Language field'ını güncelle
          await categoryDoc.reference.update({'language': determinedLanguage});
        }
        
        // Belirlenen dile göre kategorilere ekle
        if (determinedLanguage == 'english') {
          englishQuestionsByCategory[displayName] = questionCount;
          englishQuestions += questionCount;
        } else {
          turkishQuestionsByCategory[displayName] = questionCount;
          turkishQuestions += questionCount;
        }
      }


      return {
        'turkishQuestions': turkishQuestions,
        'englishQuestions': englishQuestions,
        'turkishQuestionsByCategory': turkishQuestionsByCategory,
        'englishQuestionsByCategory': englishQuestionsByCategory,
        'turkishCategories': turkishQuestionsByCategory.length,
        'englishCategories': englishQuestionsByCategory.length,
      };
    } catch (e) {
      return {
        'turkishQuestions': 0,
        'englishQuestions': 0,
        'turkishQuestionsByCategory': <String, int>{},
        'englishQuestionsByCategory': <String, int>{},
        'turkishCategories': 0,
        'englishCategories': 0,
      };
    }
  }

  // Belirli bir quiz kategorisinin detaylarını getir
  Future<Map<String, dynamic>> getQuizCategoryDetails(String categoryName, String language) async {
    try {
      final categorySnapshot = await _firestore
          .collection('quizCategories')
          .where('displayName', isEqualTo: categoryName)
          .where('language', isEqualTo: language)
          .get();

      if (categorySnapshot.docs.isEmpty) {
        return {
          'questionCount': 0,
          'description': '',
          'difficulty': '',
          'lastUpdated': null,
        };
      }

      final data = categorySnapshot.docs.first.data();
      return {
        'questionCount': data['questionCount'] ?? 0,
        'description': data['description'] ?? '',
        'difficulty': data['difficulty'] ?? 'medium',
        'lastUpdated': data['lastUpdated'],
        'collectionName': data['collectionName'] ?? '',
      };
    } catch (e) {
      return {
        'questionCount': 0,
        'description': '',
        'difficulty': '',
        'lastUpdated': null,
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

    } catch (e) {
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

    } catch (e) {
    }
  }

  // Sistem verilerini import et (mevcut data dosyalarından)
  Future<void> importSystemQuestions() async {
    // Bu fonksiyon mevcut data dosyalarındaki soruları Firestore'a aktarır
    // Implement as needed based on your current data structure
  }
}
