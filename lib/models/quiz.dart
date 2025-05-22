import 'package:cloud_firestore/cloud_firestore.dart';
import 'question.dart';

class Quiz {
  final String id;
  final String name;
  final String? description;
  final String? imageUrl;
  final String? category;
  final int? difficulty;
  final int totalQuestions;
  final int? popularityCount;
  final DateTime? createdAt;
  final List<Question>? questions;
  final int? currentQuestionIndex;
  final int? score;
  final double? successRate;

  Quiz({
    required this.id,
    required this.name,
    this.description,
    this.imageUrl,
    this.category,
    this.difficulty,
    required this.totalQuestions,
    this.popularityCount,
    this.createdAt,
    this.questions,
    this.currentQuestionIndex,
    this.score,
    this.successRate,
  });

  factory Quiz.fromFirestore(
    DocumentSnapshot doc, {
    List<Question>? questionsList,
    int? totalQuestions,
  }) {
    final data = doc.data() as Map<String, dynamic>;

    return Quiz(
      id: doc.id,
      name: data['name'] ?? doc.id,
      description: data['description'],
      imageUrl: data['imageUrl'],
      category: data['category'],
      difficulty: data['difficulty'],
      totalQuestions: totalQuestions ?? data['totalQuestions'] ?? 0,
      popularityCount: data['popularityCount'] ?? 0,
      createdAt: (data['createdAt'] as Timestamp?)?.toDate(),
      questions: questionsList,
      currentQuestionIndex: data['currentQuestionIndex'],
      score: data['score'],
      successRate: data['successRate'],
    );
  }

  Map<String, dynamic> toFirestore() {
    return {
      'name': name,
      'description': description,
      'imageUrl': imageUrl,
      'category': category,
      'difficulty': difficulty,
      'totalQuestions': totalQuestions,
      'popularityCount': popularityCount ?? 0,
      'createdAt':
          createdAt != null ? Timestamp.fromDate(createdAt!) : Timestamp.now(),
      'currentQuestionIndex': currentQuestionIndex,
      'score': score,
      'successRate': successRate,
    };
  }

  // Zorluk seviyesine göre bir ikon döndürür
  String getDifficultyIcon() {
    switch (difficulty) {
      case 1:
        return 'Kolay';
      case 2:
        return 'Orta';
      case 3:
        return 'Zor';
      default:
        return 'Normal';
    }
  }

  // Varsayılan bir resim URL'si döndürür
  String getImageUrl() {
    if (imageUrl != null && imageUrl!.isNotEmpty) {
      return imageUrl!;
    }

    // Kategori veya quiz adına göre varsayılan resim belirleme
    if (category != null) {
      switch (category!.toLowerCase()) {
        case 'anestezi':
          return 'assets/images/anesthesia.jpg';
        case 'kardiyovasküler':
          return 'assets/images/cardiovascular.jpg';
        case 'solunum':
          return 'assets/images/respiratory.jpg';
        case 'anestezi istasyonu':
          return 'assets/images/anesthesia_station.jpg';
        case 'ameliyathane':
          return 'assets/images/operating_room.jpg';
        default:
          return 'assets/images/quiz_default.jpg';
      }
    }

    return 'assets/images/quiz_default.jpg';
  }

  // Popülerlik durumunu kontrol eder
  bool isPopular() {
    return (popularityCount ?? 0) > 50;
  }
}
