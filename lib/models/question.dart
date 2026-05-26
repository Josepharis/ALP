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
    int? difficultyVal;
    if (json['difficulty'] != null) {
      if (json['difficulty'] is int) {
        difficultyVal = json['difficulty'] as int;
      } else if (json['difficulty'] is String) {
        final diffStr = (json['difficulty'] as String).toLowerCase();
        if (diffStr == 'easy' || diffStr == 'kolay') {
          difficultyVal = 1;
        } else if (diffStr == 'medium' || diffStr == 'orta') {
          difficultyVal = 2;
        } else if (diffStr == 'hard' || diffStr == 'zor') {
          difficultyVal = 3;
        } else {
          difficultyVal = int.tryParse(diffStr);
        }
      }
    }

    return Question(
      question: (json['question'] ?? '') as String,
      options: List<String>.from(json['options'] ?? []),
      correctAnswerIndex: (json['correctAnswerIndex'] ?? json['correctAnswer'] ?? 0) as int,
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
      difficulty: difficultyVal,
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
