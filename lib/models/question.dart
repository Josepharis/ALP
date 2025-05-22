class Question {
  final String question;
  final List<String> options;
  final int correctAnswerIndex;
  final List<String>? premises;
  final String? explanation;
  final List<String>? references;
  final String? imageUrl;
  final String? category;
  final int? difficulty;
  final String? id;

  Question({
    required this.question,
    required this.options,
    required this.correctAnswerIndex,
    this.premises,
    this.explanation,
    this.references,
    this.imageUrl,
    this.category,
    this.difficulty,
    this.id,
  });

  factory Question.fromJson(Map<String, dynamic> json) {
    return Question(
      question: json['question'] as String,
      options: List<String>.from(json['options'] as List),
      correctAnswerIndex: json['correctAnswerIndex'] as int,
      premises:
          json['premises'] != null
              ? List<String>.from(json['premises'] as List)
              : null,
      explanation: json['explanation'] as String?,
      references:
          json['references'] != null
              ? List<String>.from(json['references'] as List)
              : null,
      imageUrl: json['imageUrl'] as String?,
      category: json['category'] as String?,
      difficulty: json['difficulty'] as int?,
      id: json['id'] as String?,
    );
  }

  Map<String, dynamic> toJson() {
    return {
      'question': question,
      'options': options,
      'correctAnswerIndex': correctAnswerIndex,
      'premises': premises,
      'explanation': explanation,
      'references': references,
      'imageUrl': imageUrl,
      'category': category,
      'difficulty': difficulty,
      'id': id,
    };
  }
}
