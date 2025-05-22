import 'package:cloud_firestore/cloud_firestore.dart';
import '../models/achievement.dart';
import 'auth_service.dart';
import '../models/user_activity.dart';

class AchievementService {
  final FirebaseFirestore _firestore = FirebaseFirestore.instance;
  final AuthService _authService = AuthService();

  // Tüm başarıları (rozetleri) getir
  Future<List<Achievement>> getAllAchievements() async {
    try {
      final querySnapshot = await _firestore.collection('achievements').get();

      List<Achievement> achievements = [];
      for (var doc in querySnapshot.docs) {
        achievements.add(Achievement.fromFirestore(doc));
      }

      // Kullanıcı başarılarını yükle ve durumları güncelle
      final userAchievements = await getUserAchievements();

      // Başarıların durumunu güncelle (kazanılmış mı, vs.)
      achievements =
          achievements.map((achievement) {
            final userAchievement = userAchievements.firstWhere(
              (ua) => ua.id == achievement.id,
              orElse: () => achievement,
            );
            return userAchievement;
          }).toList();

      return achievements;
    } catch (e) {
      print('getAllAchievements hatası: $e');
      return [];
    }
  }

  // Kullanıcının kazandığı başarıları getir
  Future<List<Achievement>> getUserAchievements() async {
    try {
      final userId = _authService.currentUser?.uid;
      if (userId == null) {
        throw Exception('Kullanıcı giriş yapmamış');
      }

      final userAchievementsDoc =
          await _firestore.collection('userAchievements').doc(userId).get();

      if (!userAchievementsDoc.exists) {
        return [];
      }

      final data = userAchievementsDoc.data() as Map<String, dynamic>;
      final achievementsList = data['achievements'] as List<dynamic>? ?? [];

      List<Achievement> achievements = [];
      for (var item in achievementsList) {
        final achievementId = item['id'] as String?;
        if (achievementId != null) {
          final achievementDoc =
              await _firestore
                  .collection('achievements')
                  .doc(achievementId)
                  .get();

          if (achievementDoc.exists) {
            final achievement = Achievement.fromFirestore(achievementDoc);

            // Durum bilgisini güncelle
            achievements.add(
              achievement.copyWith(
                status: AchievementStatus.unlocked,
                unlockedAt: (item['unlockedAt'] as Timestamp?)?.toDate(),
              ),
            );
          }
        }
      }

      return achievements;
    } catch (e) {
      print('getUserAchievements hatası: $e');
      return [];
    }
  }

  // Kullanıcının kilidini açabileceği başarıları kontrol et ve güncelle
  Future<List<Achievement>> checkAndUpdateAchievements(
    UserActivity userActivity,
  ) async {
    try {
      final userId = _authService.currentUser?.uid;
      if (userId == null) {
        throw Exception('Kullanıcı giriş yapmamış');
      }

      // Tüm başarıları al
      final allAchievements = await getAllAchievements();

      // Kullanıcının mevcut başarılarını al
      final userAchievements = await getUserAchievements();

      // Kilidi henüz açılmamış başarılar
      final lockedAchievements =
          allAchievements
              .where(
                (a) =>
                    !userAchievements.any(
                      (ua) =>
                          ua.id == a.id &&
                          ua.status != AchievementStatus.locked,
                    ),
              )
              .toList();

      List<Achievement> newlyUnlockedAchievements = [];

      // Başarıları kontrol et
      for (var achievement in lockedAchievements) {
        bool achieved = false;

        switch (achievement.type) {
          case AchievementType.quiz:
            // Toplam tamamlanan quiz sayısı
            final completedQuizCount =
                userActivity.quizProgress.values
                    .where((qp) => qp.isCompleted)
                    .length;
            achieved = completedQuizCount >= achievement.requiredValue;
            break;

          case AchievementType.streak:
            // Giriş yapma serisi
            achieved = userActivity.dailyStreak >= achievement.requiredValue;
            break;

          case AchievementType.accuracy:
            // Doğruluk oranı
            if (userActivity.totalCorrectAnswers +
                    userActivity.totalWrongAnswers >
                0) {
              final accuracy =
                  userActivity.totalCorrectAnswers /
                  (userActivity.totalCorrectAnswers +
                      userActivity.totalWrongAnswers) *
                  100;
              achieved = accuracy >= achievement.requiredValue;
            }
            break;

          // Diğer başarı tipleri için kontroller eklenebilir
          default:
            break;
        }

        if (achieved) {
          // Başarı kazanıldı
          newlyUnlockedAchievements.add(
            achievement.copyWith(
              status: AchievementStatus.newly,
              unlockedAt: DateTime.now(),
            ),
          );
        }
      }

      // Yeni açılan başarıları kaydet
      if (newlyUnlockedAchievements.isNotEmpty) {
        await _saveUnlockedAchievements(newlyUnlockedAchievements);
      }

      return newlyUnlockedAchievements;
    } catch (e) {
      print('checkAndUpdateAchievements hatası: $e');
      return [];
    }
  }

  // Kazanılan başarıları kaydet
  Future<bool> _saveUnlockedAchievements(List<Achievement> achievements) async {
    try {
      final userId = _authService.currentUser?.uid;
      if (userId == null) {
        throw Exception('Kullanıcı giriş yapmamış');
      }

      final userAchievementsRef = _firestore
          .collection('userAchievements')
          .doc(userId);

      final userAchievementsDoc = await userAchievementsRef.get();

      List<Map<String, dynamic>> achievementsList = [];

      if (userAchievementsDoc.exists) {
        final data = userAchievementsDoc.data() as Map<String, dynamic>;
        achievementsList = List<Map<String, dynamic>>.from(
          data['achievements'] as List<dynamic>? ?? [],
        );
      }

      // Yeni başarıları ekle
      for (var achievement in achievements) {
        achievementsList.add({
          'id': achievement.id,
          'unlockedAt': Timestamp.fromDate(
            achievement.unlockedAt ?? DateTime.now(),
          ),
        });
      }

      // Firestore'a kaydet
      await userAchievementsRef.set({
        'userId': userId,
        'achievements': achievementsList,
        'lastUpdated': Timestamp.now(),
      }, SetOptions(merge: true));

      return true;
    } catch (e) {
      print('_saveUnlockedAchievements hatası: $e');
      return false;
    }
  }

  // Örnek başarıları oluştur (sadece geliştirme amaçlı)
  Future<bool> createSampleAchievements() async {
    try {
      // Önce mevcut başarıları sil
      final existingAchievements =
          await _firestore.collection('achievements').get();
      for (var doc in existingAchievements.docs) {
        await doc.reference.delete();
      }
      print(
        'Mevcut rozetler silindi: ${existingAchievements.docs.length} adet',
      );

      // Kullanıcı başarı kayıtlarını da sil
      final existingUserAchievements =
          await _firestore.collection('userAchievements').get();
      for (var doc in existingUserAchievements.docs) {
        await doc.reference.delete();
      }
      print(
        'Kullanıcı rozet kayıtları silindi: ${existingUserAchievements.docs.length} adet',
      );

      final sampleAchievements = [
        // Quiz tamamlama rozetleri
        {
          'title': 'Başlangıç',
          'description': 'İlk quizini tamamla',
          'iconName': 'play_arrow',
          'type': AchievementType.quiz.name,
          'requiredValue': 1,
          'points': 10,
        },
        {
          'title': 'Çalışkan',
          'description': '10 quiz tamamla',
          'iconName': 'school',
          'type': AchievementType.quiz.name,
          'requiredValue': 10,
          'points': 25,
        },
        {
          'title': 'Azimli',
          'description': '25 quiz tamamla',
          'iconName': 'assignment_turned_in',
          'type': AchievementType.quiz.name,
          'requiredValue': 25,
          'points': 40,
        },
        {
          'title': 'Uzman',
          'description': '50 quiz tamamla',
          'iconName': 'workspace_premium',
          'type': AchievementType.quiz.name,
          'requiredValue': 50,
          'points': 50,
        },
        {
          'title': 'Bilge',
          'description': '100 quiz tamamla',
          'iconName': 'psychology',
          'type': AchievementType.quiz.name,
          'requiredValue': 100,
          'points': 100,
        },

        // Doğruluk oranı rozetleri
        {
          'title': 'Doğru Odaklı',
          'description': '%75 doğruluk oranına ulaş',
          'iconName': 'check_circle',
          'type': AchievementType.accuracy.name,
          'requiredValue': 75,
          'points': 20,
        },
        {
          'title': 'Bilge Anestezist',
          'description': '%85 doğruluk oranına ulaş',
          'iconName': 'biotech',
          'type': AchievementType.accuracy.name,
          'requiredValue': 85,
          'points': 30,
        },
        {
          'title': 'Mükemmel',
          'description': '%90 doğruluk oranına ulaş',
          'iconName': 'star',
          'type': AchievementType.accuracy.name,
          'requiredValue': 90,
          'points': 40,
        },
        {
          'title': 'Kusursuz',
          'description': '%95 doğruluk oranına ulaş',
          'iconName': 'auto_awesome',
          'type': AchievementType.accuracy.name,
          'requiredValue': 95,
          'points': 50,
        },
        {
          'title': 'Efsanevi',
          'description': '%100 doğruluk oranına ulaş',
          'iconName': 'military_tech',
          'type': AchievementType.accuracy.name,
          'requiredValue': 100,
          'points': 100,
        },

        // Giriş yapma streaki rozetleri
        {
          'title': 'Başlangıç',
          'description': '3 gün üst üste giriş yap',
          'iconName': 'calendar_today',
          'type': AchievementType.streak.name,
          'requiredValue': 3,
          'points': 15,
        },
        {
          'title': 'İstikrarlı',
          'description': '7 gün üst üste giriş yap',
          'iconName': 'calendar_month',
          'type': AchievementType.streak.name,
          'requiredValue': 7,
          'points': 25,
        },
        {
          'title': 'Kararlı',
          'description': '14 gün üst üste giriş yap',
          'iconName': 'event_available',
          'type': AchievementType.streak.name,
          'requiredValue': 14,
          'points': 40,
        },
        {
          'title': 'Düzenli',
          'description': '30 gün üst üste giriş yap',
          'iconName': 'local_fire_department',
          'type': AchievementType.streak.name,
          'requiredValue': 30,
          'points': 75,
        },

        // Hız rozetleri
        {
          'title': 'Hızlı',
          'description': '30 saniyede quiz tamamla',
          'iconName': 'speed',
          'type': AchievementType.speed.name,
          'requiredValue': 30,
          'points': 20,
        },
        {
          'title': 'Şimşek',
          'description': '20 saniyede quiz tamamla',
          'iconName': 'flash_on',
          'type': AchievementType.speed.name,
          'requiredValue': 20,
          'points': 30,
        },
        {
          'title': 'Süpersonik',
          'description': '10 saniyede quiz tamamla',
          'iconName': 'bolt',
          'type': AchievementType.speed.name,
          'requiredValue': 10,
          'points': 50,
        },

        // Tamamlama rozetleri - kategorilere özel
        {
          'title': 'Anestezi Uzmanı',
          'description': 'Anestezi kategorisindeki tüm quizleri tamamla',
          'iconName': 'health_and_safety',
          'type': AchievementType.completion.name,
          'requiredValue': 1,
          'points': 50,
        },
        {
          'title': 'Solunum Uzmanı',
          'description': 'Solunum kategorisindeki tüm quizleri tamamla',
          'iconName': 'air',
          'type': AchievementType.completion.name,
          'requiredValue': 1,
          'points': 50,
        },
        {
          'title': 'Kardiyoloji Uzmanı',
          'description': 'Kardiyovasküler kategorisindeki tüm quizleri tamamla',
          'iconName': 'favorite',
          'type': AchievementType.completion.name,
          'requiredValue': 1,
          'points': 50,
        },
        {
          'title': 'Ameliyathane Uzmanı',
          'description': 'Ameliyathane kategorisindeki tüm quizleri tamamla',
          'iconName': 'local_hospital',
          'type': AchievementType.completion.name,
          'requiredValue': 1,
          'points': 50,
        },

        // Özel rozetler
        {
          'title': 'Anestezi Dehası',
          'description': 'Tüm kategorilerde en az bir quiz tamamla',
          'iconName': 'emoji_events',
          'type': AchievementType.special.name,
          'requiredValue': 1,
          'points': 75,
        },
        {
          'title': 'Günün Sorusu Ustası',
          'description': '7 günün sorusunu doğru cevapla',
          'iconName': 'lightbulb',
          'type': AchievementType.special.name,
          'requiredValue': 7,
          'points': 50,
        },
        {
          'title': 'Uzmanlığın Zirvesi',
          'description': 'Tüm rozetleri kazan',
          'iconName': 'verified',
          'type': AchievementType.special.name,
          'requiredValue': 1,
          'points': 150,
        },
      ];

      // Başarıları Firestore'a ekle
      for (var achievement in sampleAchievements) {
        await _firestore.collection('achievements').add(achievement);
      }

      print('${sampleAchievements.length} adet yeni rozet oluşturuldu');
      return true;
    } catch (e) {
      print('createSampleAchievements hatası: $e');
      return false;
    }
  }
}
