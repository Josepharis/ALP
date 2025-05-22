import 'question.dart';

class QuizCategory {
  final String name;
  final String icon;
  final List<Question> questions;

  QuizCategory({
    required this.name,
    required this.icon,
    required this.questions,
  });
}
