import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:firebase_auth/firebase_auth.dart';

class LeaderboardService {
  final FirebaseFirestore _firestore = FirebaseFirestore.instance;
  final FirebaseAuth _auth = FirebaseAuth.instance;

  // Tüm sıralamayı getir
  Future<List<Map<String, dynamic>>> getLeaderboard() async {
    try {
      print('Sıralama verileri yükleniyor...');

      // Önce tüm kullanıcıları getirelim
      final userDocs = await _firestore.collection('users').get();
      print(
        'Kullanıcı bilgileri yüklendi. Bulunan toplam kullanıcı sayısı: ${userDocs.docs.length}',
      );

      // Kullanıcı verilerinden bir map oluşturalım
      final Map<String, Map<String, dynamic>> userMap = {};
      for (var doc in userDocs.docs) {
        userMap[doc.id] = doc.data();
        print(
          'Kullanıcı eklendi: ${doc.id} - ${doc.data()['displayName'] ?? 'İsimsiz'}',
        );
      }

      // Aktivite verilerini alalım
      final activitiesSnapshot =
          await _firestore.collection('userActivities').get();
      print(
        'Aktivite verileri yüklendi. Aktivitesi olan kullanıcı sayısı: ${activitiesSnapshot.docs.length}',
      );

      // Aktivite verilerinden bir map oluşturalım
      final Map<String, Map<String, dynamic>> activityMap = {};
      for (var doc in activitiesSnapshot.docs) {
        final data = doc.data();
        final userId = data['userId'] as String? ?? doc.id;
        activityMap[userId] = data;
      }

      // Tüm kullanıcıları ve aktivitelerini birleştirelim
      List<Map<String, dynamic>> leaderboardData = [];

      // Önce tüm kullanıcıları ekleyelim
      for (var userId in userMap.keys) {
        final userData = userMap[userId] ?? {};
        final activityData = activityMap[userId] ?? {};

        // Kullanıcının puanı varsa o puanı, yoksa 0 kullan
        final totalPoints = activityData['totalPoints'] ?? 0;
        final totalCorrectAnswers = activityData['totalCorrectAnswers'] ?? 0;
        final totalWrongAnswers = activityData['totalWrongAnswers'] ?? 0;
        final dailyStreak = activityData['dailyStreak'] ?? 0;

        leaderboardData.add({
          'userId': userId,
          'displayName': userData['displayName'] ?? 'İsimsiz Kullanıcı',
          'profileImageUrl': userData['profileImageUrl'],
          'title': userData['title'] ?? 'Anestezi Uzmanı',
          'totalPoints': totalPoints,
          'totalCorrectAnswers': totalCorrectAnswers,
          'totalWrongAnswers': totalWrongAnswers,
          'dailyStreak': dailyStreak,
          'isCurrentUser': userId == _auth.currentUser?.uid,
        });
      }

      // Puana göre sırala (yüksekten düşüğe)
      leaderboardData.sort(
        (a, b) => (b['totalPoints'] as int).compareTo(a['totalPoints'] as int),
      );

      // Sıralama numaralarını ekle
      int rank = 1;
      for (var userData in leaderboardData) {
        userData['rank'] = rank++;
      }

      print(
        'Sıralama verileri işlendi, ${leaderboardData.length} kullanıcı bulundu',
      );
      return leaderboardData;
    } catch (e) {
      print('getLeaderboard hatası: $e');
      return [];
    }
  }


  // Kullanıcının sıralamasını getir
  Future<int> getUserRank() async {
    try {
      final currentUserId = _auth.currentUser?.uid;
      if (currentUserId == null) {
        return 0; // Kullanıcı giriş yapmamışsa sıfır dön
      }

      final querySnapshot =
          await _firestore
              .collection('userActivities')
              .orderBy('totalPoints', descending: true)
              .get();

      // Kullanıcının sıralamasını bul
      for (int i = 0; i < querySnapshot.docs.length; i++) {
        final doc = querySnapshot.docs[i];
        final data = doc.data();
        final userId = data['userId'] as String? ?? doc.id;

        if (userId == currentUserId) {
          return i + 1; // Sıralama 1'den başlar
        }
      }

      return 0; // Kullanıcı bulunamazsa sıfır dön
    } catch (e) {
      print('getUserRank hatası: $e');
      return 0;
    }
  }

  // Haftalık sıralamayı getir (gelecek için geliştirilebilir)
  Future<List<Map<String, dynamic>>> getWeeklyLeaderboard() async {
    // Şimdilik genel sıralamayı dönüyor, gelecekte haftalık olarak filtrelenebilir
    return getLeaderboard();
  }

  // Aylık sıralamayı getir - Geçmişi koruyan sistem
  Future<List<Map<String, dynamic>>> getMonthlyLeaderboard() async {
    try {
      print('Aylık sıralama verileri yükleniyor...');

      final now = DateTime.now();
      final year = now.year;
      final month = now.month;


      // Ay başı kontrolü ve otomatik başlatma
      await _initializeMonthlyDataIfNeeded(year, month);

      // Tüm kullanıcıları getir
      final userDocs = await _firestore.collection('users').get();
      final userMap = {for (var doc in userDocs.docs) doc.id: doc.data()};

      // Aylık puanları getir
      final monthlyPointsSnapshot = await _firestore
          .collection('user_monthly_points')
          .where('year', isEqualTo: year)
          .where('month', isEqualTo: month)
          .orderBy('points', descending: true)
          .get();


      // Aylık sıralama verilerini oluştur
      List<Map<String, dynamic>> monthlyData = [];
      
      for (var doc in monthlyPointsSnapshot.docs) {
        final monthlyDataDoc = doc.data();
        final userId = monthlyDataDoc['userId'] as String? ?? doc.id;
        final userData = userMap[userId] ?? {};
        final points = monthlyDataDoc['points'] as int? ?? 0;
        
        monthlyData.add({
          'userId': userId,
          'displayName': userData['displayName'] ?? 'İsimsiz Kullanıcı',
          'profileImageUrl': userData['profileImageUrl'],
          'title': userData['title'] ?? 'Anestezi Uzmanı',
          'totalPoints': points,
          'totalCorrectAnswers': 0, // Aylık doğru cevap sayısı
          'totalWrongAnswers': 0, // Aylık yanlış cevap sayısı
          'dailyStreak': 0, // Aylık streak
          'isCurrentUser': userId == _auth.currentUser?.uid,
        });
      }

      // Sıralama numaralarını ekle
      for (int i = 0; i < monthlyData.length; i++) {
        monthlyData[i]['rank'] = i + 1;
      }

      print(
        'Aylık sıralama verileri işlendi, ${monthlyData.length} kullanıcı bulundu',
      );
      return monthlyData;
    } catch (e) {
      print('getMonthlyLeaderboard hatası: $e');
      return [];
    }
  }

  // Ay başı kontrolü ve otomatik başlatma
  Future<void> _initializeMonthlyDataIfNeeded(int year, int month) async {
    try {
      // Bu ay için veri var mı kontrol et
      final existingData = await _firestore
          .collection('user_monthly_points')
          .where('year', isEqualTo: year)
          .where('month', isEqualTo: month)
          .limit(1)
          .get();

      if (existingData.docs.isNotEmpty) {
        return;
      }


      // Tüm aktif kullanıcıları getir
      final usersSnapshot = await _firestore.collection('users').get();

      // Her kullanıcı için bu ayın verisini oluştur
      for (var userDoc in usersSnapshot.docs) {
        final userId = userDoc.id;
        final monthlyDocId = '${userId}_${year}_$month';
        
        await _firestore.collection('user_monthly_points').doc(monthlyDocId).set({
          'userId': userId,
          'year': year,
          'month': month,
          'points': 0, // Başlangıç puanı 0
          'lastUpdated': FieldValue.serverTimestamp(),
        }, SetOptions(merge: true));
      }

    } catch (e) {
    }
  }


  // Liderlik tablosu için stream
  Stream<List<Map<String, dynamic>>> getLeaderboardStream() {
    return _firestore
        .collection('userActivities')
        .orderBy('totalPoints', descending: true)
        .snapshots()
        .asyncMap((activitySnapshot) async {
          try {
            // Auth durumunu kontrol et
            final currentUser = _auth.currentUser;
            if (currentUser == null) {
              print('Kullanıcı çıkış yapmış, boş liste döndürülüyor');
              return <Map<String, dynamic>>[];
            }

            // Tüm kullanıcıları bir kerede getir
            final userDocs = await _firestore.collection('users').get();
            final userMap = {for (var doc in userDocs.docs) doc.id: doc.data()};

            return activitySnapshot.docs.map((doc) {
              final activityData = doc.data();
              final userId = activityData['userId'] as String? ?? doc.id;
              final userData = userMap[userId] ?? {};

              return {
                'userId': userId,
                'displayName': userData['displayName'] ?? 'İsimsiz Kullanıcı',
                'profileImageUrl': userData['profileImageUrl'],
                'title': userData['title'] ?? 'Anestezi Uzmanı',
                'totalPoints': activityData['totalPoints'] ?? 0,
                'totalCorrectAnswers': activityData['totalCorrectAnswers'] ?? 0,
                'totalWrongAnswers': activityData['totalWrongAnswers'] ?? 0,
                'dailyStreak': activityData['dailyStreak'] ?? 0,
                'isCurrentUser': userId == currentUser.uid,
                'rank': activitySnapshot.docs.indexOf(doc) + 1,
              };
            }).toList();
          } catch (e) {
            print('Leaderboard stream hatası: $e');
            return <Map<String, dynamic>>[];
          }
        })
        .handleError((error) {
          print('Leaderboard stream Firestore hatası: $error');
          return <Map<String, dynamic>>[];
        });
  }

  // Kullanıcı sıralaması için stream - güvenli versiyon
  Stream<int> getUserRankStream() {
    return _firestore
        .collection('userActivities')
        .orderBy('totalPoints', descending: true)
        .snapshots()
        .map((snapshot) {
          try {
            // Auth durumunu kontrol et
            final currentUserId = _auth.currentUser?.uid;
            if (currentUserId == null) {
              print('Kullanıcı çıkış yapmış, rank 0 döndürülüyor');
              return 0;
            }

            // Tüm kullanıcıları puan sırasına göre al
            for (int i = 0; i < snapshot.docs.length; i++) {
              final doc = snapshot.docs[i];
              final data = doc.data();
              final docUserId = data['userId'] as String? ?? doc.id;

              if (docUserId == currentUserId) {
                return i + 1; // Sıralama 1'den başlar
              }
            }
            return 0; // Kullanıcı bulunamazsa
          } catch (e) {
            print('getUserRankStream hatası: $e');
            return 0;
          }
        })
        .handleError((error) {
          // Firestore permission hataları vs. için güvenli fallback
          print('getUserRankStream Firestore hatası: $error');
          return 0; // Hata durumunda sıfır döndür
        });
  }

  // Aylık liderlik tablosu için stream - Gerçek aylık sistem
  Stream<List<Map<String, dynamic>>> getMonthlyLeaderboardStream() {
    
    return _firestore
        .collection('user_monthly_points')
        .where('year', isEqualTo: DateTime.now().year)
        .where('month', isEqualTo: DateTime.now().month)
        .orderBy('points', descending: true)
        .snapshots()
        .asyncMap((monthlyPointsSnapshot) async {
          try {
            
            // Auth durumunu kontrol et
            final currentUser = _auth.currentUser;
            if (currentUser == null) {
              print('Kullanıcı çıkış yapmış, boş liste döndürülüyor');
              return <Map<String, dynamic>>[];
            }

            // Eğer aylık veri yoksa veya azsa, tüm kullanıcıları göster
            if (monthlyPointsSnapshot.docs.isEmpty) {
              return await _getAllUsersWithZeroPoints(currentUser);
            }

            // Aylık veri var ama eksik kullanıcılar olabilir, tüm kullanıcıları göster
            return await _getAllUsersWithMonthlyData(monthlyPointsSnapshot.docs, currentUser);
          } catch (e) {
            print('Monthly leaderboard stream hatası: $e');
            return <Map<String, dynamic>>[];
          }
        })
        .handleError((error) {
          print('Monthly leaderboard stream Firestore hatası: $error');
          return <Map<String, dynamic>>[];
        });
  }

  // Tüm kullanıcıları 0 puanla getir
  Future<List<Map<String, dynamic>>> _getAllUsersWithZeroPoints(User currentUser) async {
    try {
      // Tüm kullanıcıları getir
      final userDocs = await _firestore.collection('users').get();

      List<Map<String, dynamic>> monthlyData = [];
      
      for (var doc in userDocs.docs) {
        final userData = doc.data();
        final userId = doc.id;
        
        monthlyData.add({
          'userId': userId,
          'displayName': userData['displayName'] ?? 'İsimsiz Kullanıcı',
          'profileImageUrl': userData['profileImageUrl'],
          'title': userData['title'] ?? 'Anestezi Uzmanı',
          'totalPoints': 0, // 0 puan
          'totalCorrectAnswers': 0,
          'totalWrongAnswers': 0,
          'dailyStreak': 0,
          'isCurrentUser': userId == currentUser.uid,
          'rank': monthlyData.length + 1,
        });
      }

      return monthlyData;
    } catch (e) {
      return [];
    }
  }

  // Tüm kullanıcıları aylık veriyle birlikte getir (eksik olanlar 0 puanla)
  Future<List<Map<String, dynamic>>> _getAllUsersWithMonthlyData(
    List<QueryDocumentSnapshot> monthlyDocs, 
    User currentUser
  ) async {
    try {
      // Tüm kullanıcıları getir
      final userDocs = await _firestore.collection('users').get();

      // Aylık verileri map'e çevir
      final monthlyMap = <String, Map<String, dynamic>>{};
      for (var doc in monthlyDocs) {
        final data = doc.data() as Map<String, dynamic>;
        final userId = data['userId'] as String? ?? doc.id;
        monthlyMap[userId] = data;
      }

      List<Map<String, dynamic>> monthlyData = [];
      
      for (var doc in userDocs.docs) {
        final userData = doc.data();
        final userId = doc.id;
        final monthlyUserData = monthlyMap[userId];
        
        monthlyData.add({
          'userId': userId,
          'displayName': userData['displayName'] ?? 'İsimsiz Kullanıcı',
          'profileImageUrl': userData['profileImageUrl'],
          'title': userData['title'] ?? 'Anestezi Uzmanı',
          'totalPoints': monthlyUserData?['points'] ?? 0, // Aylık puan varsa onu, yoksa 0
          'totalCorrectAnswers': 0,
          'totalWrongAnswers': 0,
          'dailyStreak': 0,
          'isCurrentUser': userId == currentUser.uid,
          'rank': monthlyData.length + 1,
        });
      }

      // Puana göre sırala
      monthlyData.sort((a, b) => (b['totalPoints'] as int).compareTo(a['totalPoints'] as int));
      
      // Sıralama numaralarını güncelle
      for (int i = 0; i < monthlyData.length; i++) {
        monthlyData[i]['rank'] = i + 1;
      }

      return monthlyData;
    } catch (e) {
      return [];
    }
  }

}
