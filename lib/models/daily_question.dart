import 'package:cloud_firestore/cloud_firestore.dart';
import 'question.dart';

class DailyQuestion {
  final String id;
  final Question question;
  final DateTime date;
  final int pointMultiplier;
  final bool isAnswered;
  final int? userAnswer;
  final bool? isCorrect;

  DailyQuestion({
    required this.id,
    required this.question,
    required this.date,
    this.pointMultiplier = 1,
    this.isAnswered = false,
    this.userAnswer,
    this.isCorrect,
  });

  factory DailyQuestion.fromFirestore(
    DocumentSnapshot doc,
    Question questionData,
  ) {
    final data = doc.data() as Map<String, dynamic>;

    return DailyQuestion(
      id: doc.id,
      question: questionData,
      date: (data['date'] as Timestamp).toDate(),
      pointMultiplier: data['pointMultiplier'] ?? 1,
      isAnswered: data['isAnswered'] ?? false,
      userAnswer: data['userAnswer'],
      isCorrect: data['isCorrect'],
    );
  }

  Map<String, dynamic> toFirestore() {
    return {
      'questionId': question.id,
      'date': Timestamp.fromDate(date),
      'pointMultiplier': pointMultiplier,
      'isAnswered': isAnswered,
      'userAnswer': userAnswer,
      'isCorrect': isCorrect,
    };
  }

  bool isToday() {
    final now = DateTime.now();
    return date.year == now.year &&
        date.month == now.month &&
        date.day == now.day;
  }

  DailyQuestion copyWith({
    String? id,
    Question? question,
    DateTime? date,
    int? pointMultiplier,
    bool? isAnswered,
    int? userAnswer,
    bool? isCorrect,
  }) {
    return DailyQuestion(
      id: id ?? this.id,
      question: question ?? this.question,
      date: date ?? this.date,
      pointMultiplier: pointMultiplier ?? this.pointMultiplier,
      isAnswered: isAnswered ?? this.isAnswered,
      userAnswer: userAnswer ?? this.userAnswer,
      isCorrect: isCorrect ?? this.isCorrect,
    );
  }
}
