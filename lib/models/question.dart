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

    final rawCorrectAnswer = json['correctAnswerIndex'] ?? json['correctAnswer'];
    int correctAnswerIndexVal = 0;
    if (rawCorrectAnswer != null) {
      if (rawCorrectAnswer is int) {
        correctAnswerIndexVal = rawCorrectAnswer;
      } else if (rawCorrectAnswer is String) {
        correctAnswerIndexVal = int.tryParse(rawCorrectAnswer) ?? 0;
      }
    }

    List<String> optionsList = [];
    if (json['options'] is List) {
      optionsList = (json['options'] as List).map((e) => e.toString()).toList();
    }

    List<String>? premisesList;
    if (json['premises'] is List) {
      premisesList = (json['premises'] as List).map((e) => e.toString()).toList();
    }

    List<String>? referencesList;
    if (json['references'] is List) {
      referencesList = (json['references'] as List).map((e) => e.toString()).toList();
    }

    return Question(
      question: (json['question'] ?? '').toString(),
      options: optionsList,
      correctAnswerIndex: correctAnswerIndexVal,
      premises: premisesList,
      explanation: json['explanation']?.toString(),
      references: referencesList,
      imageUrl: json['imageUrl']?.toString(),
      category: json['category']?.toString(),
      difficulty: difficultyVal,
      id: json['id']?.toString(),
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
