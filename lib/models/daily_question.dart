import 'package:cloud_firestore/cloud_firestore.dart';
import 'question.dart';

class DailyQuestion {
  final String id;
  final Question question;
  final DateTime date;
  final int pointMultiplier;

  DailyQuestion({
    required this.id,
    required this.question,
    required this.date,
    this.pointMultiplier = 1,
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
    );
  }

  Map<String, dynamic> toFirestore() {
    return {
      'questionId': question.id,
      'date': Timestamp.fromDate(date),
      'pointMultiplier': pointMultiplier,
    };
  }

  bool isToday() {
    final now = DateTime.now();
    return date.year == now.year &&
        date.month == now.month &&
        date.day == now.day;
  }
}
