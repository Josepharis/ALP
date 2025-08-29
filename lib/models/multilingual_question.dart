// Mevcut Question sınıfını import etmek için
import 'question.dart';

class MultilingualQuestion {
  final String id;
  final Map<String, String> question; // dil kodu -> soru metni
  final Map<String, List<String>> options; // dil kodu -> seçenekler listesi
  final int correctAnswerIndex;
  final Map<String, List<String>?> premises; // dil kodu -> öncüller
  final Map<String, String?> explanation; // dil kodu -> açıklama
  final Map<String, List<String>?> references; // dil kodu -> kaynaklar
  final String? imageUrl;
  final String? category;
  final int? difficulty;

  MultilingualQuestion({
    required this.id,
    required this.question,
    required this.options,
    required this.correctAnswerIndex,
    this.premises = const {},
    this.explanation = const {},
    this.references = const {},
    this.imageUrl,
    this.category,
    this.difficulty,
  });

  // Belirli bir dil için Question nesnesi oluştur
  Question toQuestion(String languageCode) {
    return Question(
      id: id,
      question: question[languageCode] ?? question['tr'] ?? question.values.first,
      options: options[languageCode] ?? options['tr'] ?? options.values.first,
      correctAnswerIndex: correctAnswerIndex,
      premises: premises[languageCode],
      explanation: explanation[languageCode],
      references: references[languageCode],
      imageUrl: imageUrl,
      category: category,
      difficulty: difficulty,
    );
  }

  factory MultilingualQuestion.fromJson(Map<String, dynamic> json) {
    return MultilingualQuestion(
      id: json['id'] as String,
      question: Map<String, String>.from(json['question'] as Map),
      options: Map<String, List<String>>.from(
        (json['options'] as Map).map(
          (key, value) => MapEntry(key, List<String>.from(value as List)),
        ),
      ),
      correctAnswerIndex: json['correctAnswerIndex'] as int,
      premises: json['premises'] != null
          ? Map<String, List<String>?>.from(
              (json['premises'] as Map).map(
                (key, value) => MapEntry(
                  key,
                  value != null ? List<String>.from(value as List) : null,
                ),
              ),
            )
          : const {},
      explanation: json['explanation'] != null
          ? Map<String, String?>.from(json['explanation'] as Map)
          : const {},
      references: json['references'] != null
          ? Map<String, List<String>?>.from(
              (json['references'] as Map).map(
                (key, value) => MapEntry(
                  key,
                  value != null ? List<String>.from(value as List) : null,
                ),
              ),
            )
          : const {},
      imageUrl: json['imageUrl'] as String?,
      category: json['category'] as String?,
      difficulty: json['difficulty'] as int?,
    );
  }

  Map<String, dynamic> toJson() {
    return {
      'id': id,
      'question': question,
      'options': options,
      'correctAnswerIndex': correctAnswerIndex,
      'premises': premises,
      'explanation': explanation,
      'references': references,
      'imageUrl': imageUrl,
      'category': category,
      'difficulty': difficulty,
    };
  }
}
