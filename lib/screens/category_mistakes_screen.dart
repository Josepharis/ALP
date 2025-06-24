import 'package:flutter/material.dart';
import 'dart:math';
import '../models/question.dart';
import '../services/quiz_service.dart';
import '../utils/snackbar_utils.dart';
import 'quiz_screen.dart';
import 'question_detail_screen.dart';
import 'personalized_quiz_generator_sheet.dart';

class CategoryMistakesScreen extends StatefulWidget {
  final String category;
  final List<Question> questions;

  const CategoryMistakesScreen({
    Key? key,
    required this.category,
    required this.questions,
  }) : super(key: key);

  @override
  State<CategoryMistakesScreen> createState() => _CategoryMistakesScreenState();
}

class _CategoryMistakesScreenState extends State<CategoryMistakesScreen> {
  final QuizService _quizService = QuizService();
  bool _isLoading = false;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xFF1A237E),
      appBar: AppBar(
        title: Text(widget.category),
        backgroundColor: const Color(0xFF1A237E),
        elevation: 0,
        actions: [
          // Premium Beni Geliştir butonu
          Padding(
            padding: const EdgeInsets.only(right: 16.0),
            child: ElevatedButton.icon(
              icon: const Icon(
                Icons.auto_awesome,
                color: Colors.amber,
                size: 18,
              ),
              label: const Text(
                'BENİ GELİŞTİR',
                style: TextStyle(
                  color: Colors.white,
                  fontWeight: FontWeight.bold,
                  fontSize: 12,
                ),
              ),
              onPressed: () => _showPersonalizedQuizGenerator(),
              style: ElevatedButton.styleFrom(
                backgroundColor: Colors.deepPurple.shade700,
                foregroundColor: Colors.white,
                elevation: 3,
                padding: const EdgeInsets.symmetric(
                  horizontal: 10,
                  vertical: 0,
                ),
                minimumSize: const Size(40, 32),
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(16),
                ),
              ),
            ),
          ),
        ],
      ),
      body:
          _isLoading
              ? const Center(child: CircularProgressIndicator())
              : widget.questions.isEmpty
              ? _buildEmptyView()
              : _buildQuestionsList(),
    );
  }

  Widget _buildEmptyView() {
    return Center(
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Icon(
            Icons.check_circle_outline,
            size: 80,
            color: Colors.green.withOpacity(0.7),
          ),
          const SizedBox(height: 16),
          const Text(
            'Tebrikler!',
            style: TextStyle(
              fontSize: 24,
              fontWeight: FontWeight.bold,
              color: Colors.white,
            ),
          ),
          const SizedBox(height: 8),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 32),
            child: Text(
              'Bu kategoride yanlış yapmadınız veya tüm yanlışlarınızı düzelttiniz.',
              textAlign: TextAlign.center,
              style: TextStyle(fontSize: 16, color: Colors.grey[300]),
            ),
          ),
        ],
      ),
    );
  }

  Widget _buildQuestionsList() {
    return ListView.builder(
      padding: const EdgeInsets.all(16),
      itemCount: widget.questions.length,
      itemBuilder: (context, index) {
        final question = widget.questions[index];
        return _buildQuestionItem(question);
      },
    );
  }

  Widget _buildQuestionItem(Question question) {
    return Container(
      margin: const EdgeInsets.only(bottom: 12),
      decoration: BoxDecoration(
        color: Colors.white.withOpacity(0.1),
        borderRadius: BorderRadius.circular(12),
        border: Border.all(color: Colors.white.withOpacity(0.1), width: 1),
      ),
      child: Material(
        color: Colors.transparent,
        child: InkWell(
          onTap: () => _showQuestionDetails(question),
          onLongPress: () => _showRemoveQuestionDialog(question),
          borderRadius: BorderRadius.circular(12),
          child: Padding(
            padding: const EdgeInsets.all(16),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  question.question,
                  style: const TextStyle(
                    color: Colors.white,
                    fontWeight: FontWeight.w500,
                    fontSize: 15,
                  ),
                ),
                const SizedBox(height: 8),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    if (question.explanation != null &&
                        question.explanation!.isNotEmpty)
                      Text(
                        'Açıklama mevcut',
                        style: TextStyle(color: Colors.blue[300], fontSize: 13),
                      ),
                    Row(
                      children: [
                        Icon(
                          Icons.touch_app,
                          size: 16,
                          color: Colors.blue[200],
                        ),
                        const SizedBox(width: 4),
                        Text(
                          'Detaylar',
                          style: TextStyle(
                            color: Colors.blue[200],
                            fontSize: 13,
                          ),
                        ),
                      ],
                    ),
                  ],
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }

  void _showQuestionDetails(Question question) {
    showModalBottomSheet(
      context: context,
      backgroundColor: Colors.transparent,
      isScrollControlled: true,
      builder:
          (context) => Container(
            height: MediaQuery.of(context).size.height * 0.8,
            padding: const EdgeInsets.all(20),
            decoration: BoxDecoration(
              gradient: LinearGradient(
                begin: Alignment.topLeft,
                end: Alignment.bottomRight,
                colors: [
                  _getCategoryColor(widget.category),
                  _getCategoryColor(widget.category).withOpacity(0.8),
                ],
              ),
              borderRadius: const BorderRadius.only(
                topLeft: Radius.circular(20),
                topRight: Radius.circular(20),
              ),
            ),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Row(
                      children: [
                        Icon(
                          _getCategoryIcon(widget.category),
                          color: Colors.white,
                        ),
                        const SizedBox(width: 8),
                        Text(
                          widget.category,
                          style: const TextStyle(
                            fontSize: 18,
                            fontWeight: FontWeight.bold,
                            color: Colors.white,
                          ),
                        ),
                      ],
                    ),
                    IconButton(
                      icon: const Icon(Icons.close, color: Colors.white),
                      onPressed: () => Navigator.pop(context),
                    ),
                  ],
                ),
                const Divider(color: Colors.white30),
                Expanded(
                  child: SingleChildScrollView(
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        const SizedBox(height: 16),
                        Text(
                          question.question,
                          style: const TextStyle(
                            fontSize: 18,
                            fontWeight: FontWeight.bold,
                            color: Colors.white,
                          ),
                        ),
                        const SizedBox(height: 24),
                        const Text(
                          'Seçenekler:',
                          style: TextStyle(
                            fontSize: 16,
                            fontWeight: FontWeight.bold,
                            color: Colors.white70,
                          ),
                        ),
                        const SizedBox(height: 8),
                        ...List.generate(
                          question.options.length,
                          (index) => Container(
                            margin: const EdgeInsets.only(bottom: 8),
                            padding: const EdgeInsets.all(12),
                            decoration: BoxDecoration(
                              color:
                                  index == question.correctAnswerIndex
                                      ? Colors.green.withOpacity(0.3)
                                      : Colors.white.withOpacity(0.1),
                              borderRadius: BorderRadius.circular(8),
                              border: Border.all(
                                color:
                                    index == question.correctAnswerIndex
                                        ? Colors.green
                                        : Colors.white.withOpacity(0.1),
                                width: 1,
                              ),
                            ),
                            child: Row(
                              children: [
                                index == question.correctAnswerIndex
                                    ? const Icon(
                                      Icons.check_circle,
                                      color: Colors.green,
                                    )
                                    : Icon(
                                      Icons.circle_outlined,
                                      color: Colors.white.withOpacity(0.7),
                                    ),
                                const SizedBox(width: 12),
                                Expanded(
                                  child: Text(
                                    question.options[index],
                                    style: TextStyle(
                                      color:
                                          index == question.correctAnswerIndex
                                              ? Colors.white
                                              : Colors.white.withOpacity(0.8),
                                      fontWeight:
                                          index == question.correctAnswerIndex
                                              ? FontWeight.bold
                                              : FontWeight.normal,
                                    ),
                                  ),
                                ),
                              ],
                            ),
                          ),
                        ),
                        if (question.explanation != null &&
                            question.explanation!.isNotEmpty) ...[
                          const SizedBox(height: 24),
                          const Text(
                            'Açıklama:',
                            style: TextStyle(
                              fontSize: 16,
                              fontWeight: FontWeight.bold,
                              color: Colors.white70,
                            ),
                          ),
                          const SizedBox(height: 8),
                          Container(
                            padding: const EdgeInsets.all(12),
                            decoration: BoxDecoration(
                              color: Colors.white.withOpacity(0.1),
                              borderRadius: BorderRadius.circular(8),
                            ),
                            child: Text(
                              question.explanation!,
                              style: TextStyle(
                                color: Colors.white.withOpacity(0.9),
                                fontSize: 14,
                              ),
                            ),
                          ),
                        ],
                        const SizedBox(height: 24),
                        SizedBox(
                          height: MediaQuery.of(context).padding.bottom + 24,
                        ),
                        Padding(
                          padding: EdgeInsets.only(
                            bottom: MediaQuery.of(context).padding.bottom + 16,
                          ),
                          child: SizedBox(
                            width: double.infinity,
                            child: ElevatedButton.icon(
                              onPressed: () => _startPracticeQuiz(),
                              icon: const Icon(Icons.refresh),
                              label: const Text('Bu Kategoride Pratik Yap'),
                              style: ElevatedButton.styleFrom(
                                backgroundColor: Colors.white.withOpacity(0.2),
                                foregroundColor: Colors.white,
                                padding: const EdgeInsets.symmetric(
                                  vertical: 12,
                                ),
                                shape: RoundedRectangleBorder(
                                  borderRadius: BorderRadius.circular(8),
                                ),
                              ),
                            ),
                          ),
                        ),
                      ],
                    ),
                  ),
                ),
              ],
            ),
          ),
    );
  }

  void _startPracticeQuiz() {
    // Kategoriye ait quizi başlat
    Navigator.push(
      context,
      MaterialPageRoute(
        builder:
            (context) => QuizScreen(
              categoryName: widget.category,
              questions: widget.questions,
              isMistakesMode: true,
            ),
      ),
    ).then((_) {
      // Verileri yenile
      setState(() {}); // Ekranı yenile
    });
  }

  void _showRemoveQuestionDialog(Question question) {
    showDialog(
      context: context,
      builder:
          (context) => AlertDialog(
            backgroundColor: Colors.indigo.shade900,
            title: const Text(
              'Soruyu Kaldır',
              style: TextStyle(color: Colors.white),
            ),
            content: const Text(
              'Bu soruyu eksikler listenizden kaldırmak istiyor musunuz?',
              style: TextStyle(color: Colors.white70),
            ),
            actions: [
              TextButton(
                onPressed: () => Navigator.of(context).pop(),
                child: const Text(
                  'İptal',
                  style: TextStyle(color: Colors.white70),
                ),
              ),
              ElevatedButton(
                style: ElevatedButton.styleFrom(backgroundColor: Colors.red),
                onPressed: () async {
                  Navigator.of(context).pop();
                  await _removeQuestion(question);
                },
                child: const Text('Kaldır'),
              ),
            ],
          ),
    );
  }

  Future<void> _removeQuestion(Question question) async {
    setState(() {
      _isLoading = true;
    });

    try {
      // Null kontrol ekleyelim
      final questionId =
          question.id == null || question.id!.isEmpty
              ? 'unknown_id_${DateTime.now().millisecondsSinceEpoch}'
              : question.id!;

      // Soruyu listeden kaldır
      final success = await _quizService.removeWrongAnswer(questionId);

      if (success) {
        SnackBarUtils.showSuccessSnackBar(context, 'Soru başarıyla kaldırıldı');

        // Listeyi güncelle
        setState(() {
          widget.questions.removeWhere((q) => q.id == question.id);
          _isLoading = false;
        });

        // Eğer tüm sorular kaldırıldıysa geri dön
        if (widget.questions.isEmpty) {
          Navigator.pop(
            context,
          ); // Kategoriye ait tüm sorular silindi, geri dön
        }
      } else {
        SnackBarUtils.showErrorSnackBar(
          context,
          'Soru kaldırılırken bir hata oluştu',
        );

        setState(() {
          _isLoading = false;
        });
      }
    } catch (e) {
      print('Soru kaldırma hatası: $e');
      SnackBarUtils.showErrorSnackBar(
        context,
        'Soru kaldırılırken bir hata oluştu',
      );

      setState(() {
        _isLoading = false;
      });
    }
  }

  IconData _getCategoryIcon(String category) {
    switch (category.toLowerCase()) {
      case 'anestezi':
        return Icons.health_and_safety;
      case 'kardiyovasküler':
      case 'kardiyovasküler 1':
      case 'kardiyovasküler 2':
        return Icons.favorite;
      case 'solunum':
        return Icons.air;
      case 'ameliyathane':
        return Icons.local_hospital;
      case 'anestezi istasyonu':
        return Icons.medical_services;
      default:
        return Icons.quiz;
    }
  }

  Color _getCategoryColor(String category) {
    switch (category.toLowerCase()) {
      case 'anestezi':
        return Colors.indigo.shade700;
      case 'kardiyovasküler':
      case 'kardiyovasküler 1':
        return Colors.blue.shade700;
      case 'kardiyovasküler 2':
        return Colors.purple.shade700;
      case 'solunum':
        return Colors.cyan.shade700;
      case 'ameliyathane':
        return Colors.indigo.shade600;
      case 'anestezi istasyonu':
        return Colors.blue.shade600;
      default:
        return Colors.indigo.shade600;
    }
  }

  void _showPersonalizedQuizGenerator() {
    showModalBottomSheet(
      context: context,
      backgroundColor: Colors.transparent,
      isScrollControlled: true,
      builder:
          (context) => PersonalizedQuizGeneratorSheet(
            category: widget.category,
            categoryColor: _getCategoryColor(widget.category),
            questions: widget.questions,
          ),
    );
  }
}
