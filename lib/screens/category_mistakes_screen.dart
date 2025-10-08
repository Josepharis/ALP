import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import '../models/question.dart';
import '../services/quiz_service.dart';
import '../services/language_service.dart';
import '../l10n/app_localizations.dart';

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
    return Consumer<LanguageService>(
      builder: (context, languageService, child) {
        return Scaffold(
      backgroundColor: Colors.transparent,
      extendBodyBehindAppBar: true,
      appBar: AppBar(
        titleSpacing: 0, // Geri butonu ile title arasındaki boşluğu kaldır
        title: LayoutBuilder(
          builder: (context, constraints) {
            final screenWidth = MediaQuery.of(context).size.width;
            final availableWidth = screenWidth - 80; // Geri butonu ve padding için alan bırak
            
            // Metin uzunluğuna göre font boyutunu ayarla
            double fontSize = 16.0;
            if (widget.category.length > 40) {
              fontSize = 12.0;
            } else if (widget.category.length > 35) {
              fontSize = 13.0;
            } else if (widget.category.length > 30) {
              fontSize = 14.0;
            } else if (widget.category.length > 25) {
              fontSize = 15.0;
            }
            
            return Container(
              width: availableWidth,
              alignment: Alignment.centerLeft,
              padding: const EdgeInsets.only(left: 8),
              child: Text(
                widget.category,
                style: TextStyle(
                  fontSize: fontSize,
                  fontWeight: FontWeight.bold,
                  color: Colors.white,
                ),
                maxLines: 2, // İki satıra kadar izin ver
                overflow: TextOverflow.ellipsis,
              ),
            );
          },
        ),
        backgroundColor: Colors.transparent,
        elevation: 0,
        flexibleSpace: Container(
          decoration: BoxDecoration(
            gradient: LinearGradient(
              begin: Alignment.topLeft,
              end: Alignment.bottomRight,
              colors: [Colors.blue.shade900, Colors.black],
            ),
          ),
        ),

      ),
      body: Container(
        decoration: BoxDecoration(
          gradient: LinearGradient(
            begin: Alignment.topLeft,
            end: Alignment.bottomRight,
            colors: [Colors.blue.shade900, Colors.black],
          ),
        ),
        child: SafeArea(
          child: _isLoading
              ? const Center(child: CircularProgressIndicator())
              : widget.questions.isEmpty
                  ? _buildEmptyView()
                  : _buildQuestionsList(),
        ),
      ),
    );
      },
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
          Text(
            AppLocalizations.of(context)!.congratulationsNoMistakes,
            style: const TextStyle(
              fontSize: 24,
              fontWeight: FontWeight.bold,
              color: Colors.white,
            ),
          ),
          const SizedBox(height: 8),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 32),
            child: Text(
              AppLocalizations.of(context)!.noMistakesInCategory,
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
        gradient: LinearGradient(
          begin: Alignment.topLeft,
          end: Alignment.bottomRight,
          colors: [
            Colors.blue.shade800.withOpacity(0.3),
            Colors.blue.shade900.withOpacity(0.2),
          ],
        ),
        borderRadius: BorderRadius.circular(12),
        border: Border.all(color: Colors.white.withOpacity(0.15), width: 1),
        boxShadow: [
          BoxShadow(
            color: Colors.black.withOpacity(0.2),
            blurRadius: 8,
            offset: const Offset(0, 2),
          ),
        ],
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
                  style: TextStyle(
                    color: Colors.white,
                    fontWeight: FontWeight.w500,
                    fontSize: question.question.length > 150 ? 13 : 15,
                  ),
                  maxLines: 3,
                  overflow: TextOverflow.ellipsis,
                ),
                const SizedBox(height: 8),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    const SizedBox.shrink(),
                    Row(
                      children: [
                        // Eksiklerden Kaldır butonu
                        GestureDetector(
                          onTap: () => _showRemoveQuestionDialog(question),
                          child: Container(
                            padding: const EdgeInsets.symmetric(horizontal: 8, vertical: 4),
                            decoration: BoxDecoration(
                              color: Colors.red.withOpacity(0.2),
                              borderRadius: BorderRadius.circular(12),
                              border: Border.all(color: Colors.red.withOpacity(0.5)),
                            ),
                            child: Row(
                              mainAxisSize: MainAxisSize.min,
                              children: [
                                Icon(
                                  Icons.remove_circle_outline,
                                  size: 14,
                                  color: Colors.red.shade300,
                                ),
                                const SizedBox(width: 4),
                                Text(
                                  AppLocalizations.of(context)!.remove,
                                  style: TextStyle(
                                    color: Colors.red.shade300,
                                    fontSize: 12,
                                    fontWeight: FontWeight.w500,
                                  ),
                                ),
                              ],
                            ),
                          ),
                        ),
                        const SizedBox(width: 12),
                        Icon(
                          Icons.touch_app,
                          size: 16,
                          color: Colors.blue[200],
                        ),
                        const SizedBox(width: 4),
                        Text(
                          AppLocalizations.of(context)!.details,
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
          (context) => SafeArea(
                          child: Container(
                height: MediaQuery.of(context).size.height,
                padding: EdgeInsets.only(
                  top: MediaQuery.of(context).padding.top + 20, // Reduced top padding
                  left: 20,
                  right: 20,
                  bottom: 20,
                ),
              decoration: BoxDecoration(
                gradient: LinearGradient(
                  begin: Alignment.topLeft,
                  end: Alignment.bottomRight,
                  colors: [
                    Colors.blue.shade900,
                    Colors.black,
                  ],
                ),
              ),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Expanded(
                        child: Row(
                          children: [
                            Icon(
                              _getCategoryIcon(widget.category),
                              color: Colors.white,
                            ),
                            const SizedBox(width: 8),
                            Expanded(
                              child: Text(
                                widget.category,
                                style: TextStyle(
                                  fontSize: widget.category.length > 30 ? 16 : 18,
                                  fontWeight: FontWeight.bold,
                                  color: Colors.white,
                                ),
                                maxLines: 2,
                                overflow: TextOverflow.ellipsis,
                              ),
                            ),
                          ],
                        ),
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
                            style: TextStyle(
                              fontSize: question.question.length > 200 ? 16 : 18,
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
                                gradient: LinearGradient(
                                  begin: Alignment.topLeft,
                                  end: Alignment.bottomRight,
                                  colors: index == question.correctAnswerIndex
                                      ? [
                                          Colors.green.withOpacity(0.4),
                                          Colors.green.withOpacity(0.2),
                                        ]
                                      : [
                                          Colors.blue.shade800.withOpacity(0.2),
                                          Colors.blue.shade900.withOpacity(0.1),
                                        ],
                                ),
                                borderRadius: BorderRadius.circular(8),
                                border: Border.all(
                                  color: index == question.correctAnswerIndex
                                      ? Colors.green.withOpacity(0.6)
                                      : Colors.white.withOpacity(0.15),
                                  width: 1,
                                ),
                                boxShadow: [
                                  BoxShadow(
                                    color: Colors.black.withOpacity(0.1),
                                    blurRadius: 4,
                                    offset: const Offset(0, 1),
                                  ),
                                ],
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
                                        fontSize: question.options[index].length > 100 ? 13 : 14,
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
                                gradient: LinearGradient(
                                  begin: Alignment.topLeft,
                                  end: Alignment.bottomRight,
                                  colors: [
                                    Colors.blue.shade800.withOpacity(0.2),
                                    Colors.blue.shade900.withOpacity(0.1),
                                  ],
                                ),
                                borderRadius: BorderRadius.circular(8),
                                border: Border.all(
                                  color: Colors.white.withOpacity(0.15),
                                  width: 1,
                                ),
                                boxShadow: [
                                  BoxShadow(
                                    color: Colors.black.withOpacity(0.1),
                                    blurRadius: 4,
                                    offset: const Offset(0, 1),
                                  ),
                                ],
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

                        ],
                      ),
                    ),
                  ),
                ],
              ),
            ),
          ),
    );
  }



  void _showRemoveQuestionDialog(Question question) {
    showDialog(
      context: context,
      builder:
          (context) => AlertDialog(
            backgroundColor: Colors.indigo.shade900,
            title: Text(
              AppLocalizations.of(context)!.removeQuestion,
              style: const TextStyle(color: Colors.white),
            ),
            content: Text(
              AppLocalizations.of(context)!.removeQuestionConfirm,
              style: const TextStyle(color: Colors.white70),
            ),
            actions: [
              TextButton(
                onPressed: () => Navigator.pop(context),
                child: Text(
                  AppLocalizations.of(context)!.cancel,
                  style: const TextStyle(color: Colors.white70),
                ),
              ),
              TextButton(
                onPressed: () async {
                  Navigator.pop(context);
                  await _removeQuestion(question);
                },
                child: Text(
                  AppLocalizations.of(context)!.remove,
                  style: const TextStyle(color: Colors.red),
                ),
              ),
            ],
          ),
    );
  }

  // Soruyu eksiklerden kaldır
  Future<void> _removeQuestion(Question question) async {
    setState(() {
      _isLoading = true;
    });

    try {
      final success = await _quizService.removeMistakeQuestion(question.id ?? '');
      
      if (success) {
        // Soruyu yerel listeden kaldır
        setState(() {
          widget.questions.remove(question);
        });
        
        // Başarı mesajı göster
        if (mounted) {
          ScaffoldMessenger.of(context).showSnackBar(
            SnackBar(
              content: const Text('Soru eksiklerden kaldırıldı'),
              backgroundColor: Colors.green.shade600,
              duration: const Duration(seconds: 2),
            ),
          );
        }
      } else {
        // Hata mesajı göster
        if (mounted) {
          ScaffoldMessenger.of(context).showSnackBar(
            SnackBar(
              content: const Text('Soru kaldırılırken hata oluştu'),
              backgroundColor: Colors.red.shade600,
              duration: const Duration(seconds: 2),
            ),
          );
        }
      }
    } catch (e) {
      if (mounted) {
        ScaffoldMessenger.of(context).showSnackBar(
          SnackBar(
            content: const Text('Soru kaldırılırken hata oluştu'),
            backgroundColor: Colors.red.shade600,
            duration: const Duration(seconds: 2),
          ),
        );
      }
    } finally {
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



}
