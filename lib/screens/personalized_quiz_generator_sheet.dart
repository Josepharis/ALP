import 'package:flutter/material.dart';
import 'dart:math';
import 'dart:async';

import '../models/question.dart';
import '../services/quiz_service.dart';
import 'quiz_screen.dart';

class PersonalizedQuizGeneratorSheet extends StatefulWidget {
  final String category;
  final Color categoryColor;
  final List<Question> questions;

  const PersonalizedQuizGeneratorSheet({
    super.key,
    required this.category,
    required this.categoryColor,
    required this.questions,
  });

  @override
  State<PersonalizedQuizGeneratorSheet> createState() =>
      _PersonalizedQuizGeneratorSheetState();
}

class _PersonalizedQuizGeneratorSheetState
    extends State<PersonalizedQuizGeneratorSheet>
    with TickerProviderStateMixin {
  final QuizService _quizService = QuizService();
  bool _isGenerating = true;
  int _generationProgress = 0;
  List<String> _generationSteps = [
    'Eksik konular analiz ediliyor...',
    'Yapay zeka modelinden yararlanılıyor...',
    'Zorlanılan soru tipleri belirleniyor...',
    'Konuya özel sorular çekiliyor...',
    'Kişiselleştirilmiş eğitim planı oluşturuluyor...',
    'Sonuçlar optimize ediliyor...',
    'Özel sorular hazırlanıyor...',
  ];
  late AnimationController _progressController;
  late Animation<double> _progressAnimation;

  @override
  void initState() {
    super.initState();
    _progressController = AnimationController(
      duration: const Duration(seconds: 5),
      vsync: this,
    );
    _progressAnimation = Tween<double>(
      begin: 0,
      end: 100,
    ).animate(_progressController)..addListener(() {
      setState(() {
        _generationProgress = _progressAnimation.value.toInt();
      });
    });
    _progressController.forward();

    // İşlem tamamlanma animasyonu
    _startGenerationProcess();
  }

  @override
  void dispose() {
    _progressController.dispose();
    super.dispose();
  }

  // Sözde soru üretimi simülasyonu
  void _startGenerationProcess() async {
    int stepIndex = 0;

    // Her adım için belirli bir süre bekleyerek ilerleme hissi ver
    Timer.periodic(const Duration(milliseconds: 800), (timer) {
      if (stepIndex < _generationSteps.length) {
        setState(() {
          _isGenerating = true;
          _generationProgress =
              ((stepIndex + 1) / _generationSteps.length * 100).toInt();
        });
        stepIndex++;
      } else {
        timer.cancel();
        setState(() {
          _isGenerating = false;
        });

        // Üretim tamamlandığında kısa bir bekleme ile quiz ekranına geç
        Future.delayed(const Duration(milliseconds: 500), () {
          _startPersonalizedQuiz();
        });
      }
    });
  }

  // Kişiselleştirilmiş quiz'i başlat (aslında normal sorulardan seçiyor)
  void _startPersonalizedQuiz() async {
    // Mevcut kategori sorularını al - normalde ayrı bir API olabilir
    final categoryQuestions = await _quizService.getCategoryQuestions(
      widget.category,
    );

    // Karışık sorular seç - aslında gerçek bir algoritma burada devreye girebilir
    final random = Random();
    final personalizedQuestions = List<Question>.from(categoryQuestions)
      ..shuffle(random);

    // Quiz başlatma için 10-15 soru seç
    final quizQuestions = personalizedQuestions.take(10).toList();

    if (!mounted) return;

    // Quiz ekranına yönlendir
    Navigator.pop(context); // Bottom sheet'i kapat
    Navigator.push(
      context,
      MaterialPageRoute(
        builder:
            (context) => QuizScreen(
              categoryName: "${widget.category} - Gelişim Programı",
              questions: quizQuestions,
              isMistakesMode: false,
            ),
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      constraints: BoxConstraints(
        maxHeight: MediaQuery.of(context).size.height * 0.75,
      ),
      decoration: BoxDecoration(
        gradient: LinearGradient(
          begin: Alignment.topCenter,
          end: Alignment.bottomCenter,
          colors: [
            const Color(0xFF1A237E), // Koyu mavi
            const Color(0xFF0D47A1), // Daha koyu mavi
          ],
        ),
        borderRadius: const BorderRadius.vertical(top: Radius.circular(24)),
        boxShadow: [
          BoxShadow(
            color: Colors.black.withOpacity(0.3),
            blurRadius: 20,
            spreadRadius: 5,
          ),
        ],
      ),
      child: Column(
        mainAxisSize: MainAxisSize.min,
        children: [
          // Üst kısım - Başlık ve kapatma
          Padding(
            padding: const EdgeInsets.fromLTRB(20, 20, 20, 4),
            child: Row(
              children: [
                const Icon(Icons.auto_awesome, color: Colors.amber, size: 24),
                const SizedBox(width: 12),
                Expanded(
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      const Text(
                        'Kişiselleştirilmiş Sorular',
                        style: TextStyle(
                          color: Colors.white,
                          fontSize: 18,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                      Text(
                        widget.category,
                        style: TextStyle(
                          color: Colors.white.withOpacity(0.7),
                          fontSize: 14,
                        ),
                      ),
                    ],
                  ),
                ),
                GestureDetector(
                  onTap: () => Navigator.pop(context),
                  child: Container(
                    padding: const EdgeInsets.all(8),
                    decoration: BoxDecoration(
                      color: Colors.white.withOpacity(0.1),
                      shape: BoxShape.circle,
                    ),
                    child: const Icon(
                      Icons.close,
                      color: Colors.white70,
                      size: 20,
                    ),
                  ),
                ),
              ],
            ),
          ),

          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 8),
            child: ClipRRect(
              borderRadius: BorderRadius.circular(8),
              child: LinearProgressIndicator(
                value: _generationProgress / 100,
                backgroundColor: Colors.white.withOpacity(0.1),
                valueColor: AlwaysStoppedAnimation<Color>(widget.categoryColor),
                minHeight: 8,
              ),
            ),
          ),

          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 4),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text(
                  _isGenerating ? 'Üretiliyor...' : 'Tamamlandı!',
                  style: TextStyle(
                    color: _isGenerating ? Colors.amber : Colors.green,
                    fontWeight: FontWeight.bold,
                  ),
                ),
                Text(
                  '%$_generationProgress',
                  style: const TextStyle(
                    color: Colors.white70,
                    fontWeight: FontWeight.bold,
                  ),
                ),
              ],
            ),
          ),

          // Üretim adımları
          Expanded(
            child: ListView.builder(
              padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 12),
              itemCount: _generationSteps.length,
              itemBuilder: (context, index) {
                final isCurrentStep =
                    _isGenerating &&
                    (index ==
                        (_generationProgress / (100 / _generationSteps.length))
                            .floor());
                final isCompletedStep =
                    index <
                    (_generationProgress / (100 / _generationSteps.length))
                        .floor();

                return Container(
                  margin: const EdgeInsets.symmetric(vertical: 8),
                  padding: const EdgeInsets.all(12),
                  decoration: BoxDecoration(
                    color:
                        isCurrentStep
                            ? Colors.amber.withOpacity(0.2)
                            : (isCompletedStep
                                ? Colors.green.withOpacity(0.1)
                                : Colors.white.withOpacity(0.05)),
                    borderRadius: BorderRadius.circular(12),
                    border: Border.all(
                      color:
                          isCurrentStep
                              ? Colors.amber.withOpacity(0.5)
                              : (isCompletedStep
                                  ? Colors.green.withOpacity(0.3)
                                  : Colors.white.withOpacity(0.1)),
                      width: 1,
                    ),
                  ),
                  child: Row(
                    children: [
                      Container(
                        width: 24,
                        height: 24,
                        decoration: BoxDecoration(
                          color:
                              isCurrentStep
                                  ? Colors.amber.withOpacity(0.2)
                                  : (isCompletedStep
                                      ? Colors.green.withOpacity(0.2)
                                      : Colors.white.withOpacity(0.1)),
                          shape: BoxShape.circle,
                          border: Border.all(
                            color:
                                isCurrentStep
                                    ? Colors.amber
                                    : (isCompletedStep
                                        ? Colors.green
                                        : Colors.white.withOpacity(0.3)),
                            width: 1,
                          ),
                        ),
                        child: Center(
                          child:
                              isCompletedStep
                                  ? const Icon(
                                    Icons.check,
                                    color: Colors.green,
                                    size: 14,
                                  )
                                  : (isCurrentStep
                                      ? SizedBox(
                                        width: 12,
                                        height: 12,
                                        child: CircularProgressIndicator(
                                          strokeWidth: 2,
                                          valueColor:
                                              AlwaysStoppedAnimation<Color>(
                                                Colors.amber,
                                              ),
                                        ),
                                      )
                                      : Text(
                                        '${index + 1}',
                                        style: TextStyle(
                                          color: Colors.white.withOpacity(0.7),
                                          fontSize: 12,
                                          fontWeight: FontWeight.bold,
                                        ),
                                      )),
                        ),
                      ),
                      const SizedBox(width: 12),
                      Expanded(
                        child: Text(
                          _generationSteps[index],
                          style: TextStyle(
                            color:
                                isCurrentStep
                                    ? Colors.amber
                                    : (isCompletedStep
                                        ? Colors.green
                                        : Colors.white70),
                            fontWeight:
                                isCurrentStep
                                    ? FontWeight.bold
                                    : FontWeight.normal,
                          ),
                        ),
                      ),
                    ],
                  ),
                );
              },
            ),
          ),

          // Tamamlandığında quiz başlatma butonu
          AnimatedOpacity(
            opacity: _isGenerating ? 0.0 : 1.0,
            duration: const Duration(milliseconds: 500),
            child: Container(
              width: double.infinity,
              margin: const EdgeInsets.fromLTRB(20, 0, 20, 20),
              child: ElevatedButton(
                onPressed: _isGenerating ? null : _startPersonalizedQuiz,
                style: ElevatedButton.styleFrom(
                  backgroundColor: widget.categoryColor,
                  padding: const EdgeInsets.symmetric(vertical: 16),
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(16),
                  ),
                  elevation: 5,
                ),
                child: const Text(
                  'BAŞLAT',
                  style: TextStyle(
                    color: Colors.white,
                    fontWeight: FontWeight.bold,
                    fontSize: 16,
                    letterSpacing: 1,
                  ),
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
