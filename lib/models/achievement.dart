import 'package:cloud_firestore/cloud_firestore.dart';

enum AchievementType {
  quiz, // Quiz ile ilgili başarılar
  streak, // Giriş yapma sürekliliği
  accuracy, // Doğruluk oranı
  speed, // Hız ile ilgili
  completion, // Tamamlama ile ilgili
  special, // Özel başarılar
}

enum AchievementStatus {
  locked, // Henüz kazanılmamış
  unlocked, // Kazanılmış
  newly, // Yeni kazanılmış (bildirim gösterilecek)
}

class Achievement {
  final String id;
  final String title;
  final String description;
  final String iconName;
  final AchievementType type;
  final int requiredValue;
  final int points;
  final AchievementStatus status;
  final DateTime? unlockedAt;

  Achievement({
    required this.id,
    required this.title,
    required this.description,
    required this.iconName,
    required this.type,
    required this.requiredValue,
    required this.points,
    this.status = AchievementStatus.locked,
    this.unlockedAt,
  });

  factory Achievement.fromFirestore(DocumentSnapshot doc) {
    final data = doc.data() as Map<String, dynamic>;
    
    return Achievement(
      id: doc.id,
      title: data['title'] ?? '',
      description: data['description'] ?? '',
      iconName: data['iconName'] ?? 'star',
      type: AchievementType.values.firstWhere(
        (e) => e.name == (data['type'] ?? 'special'),
        orElse: () => AchievementType.special,
      ),
      requiredValue: data['requiredValue'] ?? 0,
      points: data['points'] ?? 0,
      status: AchievementStatus.values.firstWhere(
        (e) => e.name == (data['status'] ?? 'locked'),
        orElse: () => AchievementStatus.locked,
      ),
      unlockedAt: (data['unlockedAt'] as Timestamp?)?.toDate(),
    );
  }

  Map<String, dynamic> toFirestore() {
    return {
      'title': title,
      'description': description,
      'iconName': iconName,
      'type': type.name,
      'requiredValue': requiredValue,
      'points': points,
      'status': status.name,
      'unlockedAt': unlockedAt != null ? Timestamp.fromDate(unlockedAt!) : null,
    };
  }

  Achievement copyWith({
    String? title,
    String? description,
    String? iconName,
    AchievementType? type,
    int? requiredValue,
    int? points,
    AchievementStatus? status,
    DateTime? unlockedAt,
  }) {
    return Achievement(
      id: this.id,
      title: title ?? this.title,
      description: description ?? this.description,
      iconName: iconName ?? this.iconName,
      type: type ?? this.type,
      requiredValue: requiredValue ?? this.requiredValue,
      points: points ?? this.points,
      status: status ?? this.status,
      unlockedAt: unlockedAt ?? this.unlockedAt,
    );
  }
} 