import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'dart:math';

import '../models/question.dart';
import 'question_detail_screen.dart';
import '../services/quiz_service.dart';
import '../models/quiz.dart';
import 'quiz_result_screen.dart';
import '../utils/event_bus.dart';
import '../utils/snackbar_utils.dart';

class QuizScreen extends StatefulWidget {
  final String categoryName;
  final List<Question> questions;
  final int initialQuestionIndex;
  final int initialScore;
  final String? quizId;

  const QuizScreen({
    super.key,
    required this.categoryName,
    required this.questions,
    this.initialQuestionIndex = 0,
    this.initialScore = 0,
    this.quizId,
  });

  @override
  State<QuizScreen> createState() => _QuizScreenState();
}

class _QuizScreenState extends State<QuizScreen>
    with SingleTickerProviderStateMixin {
  late int currentQuestionIndex;
  late int score;
  bool isAnswered = false;
  int? selectedAnswerIndex;
  late AnimationController _animationController;
  late Animation<double> _animation;
  final QuizService _quizService = QuizService();

  @override
  void initState() {
    super.initState();
    currentQuestionIndex = widget.initialQuestionIndex;
    score = widget.initialScore;

    print('Toplam soru sayısı: ${widget.questions.length}');
    print('Başlangıç sorusu: $currentQuestionIndex, Başlangıç puanı: $score');

    _animationController = AnimationController(
      vsync: this,
      duration: const Duration(seconds: 50),
    );
    _animation = Tween<double>(begin: 1, end: 0).animate(_animationController)
      ..addListener(() {
        setState(() {
          // Süre bitti mi kontrol et
          if (_animation.value <= 0 && !isAnswered) {
            _handleTimeExpired();
          }
        });
      });
    _animationController.forward();
  }

  @override
  void dispose() {
    _animationController.dispose();
    super.dispose();
  }

  // Quiz'i yarım olarak kaydet
  Future<void> _saveQuizProgress() async {
    try {
      // Mevcut bir quizId varsa onu kullan, yoksa yeni bir ID oluştur
      final quizId =
          widget.quizId ??
          '${widget.categoryName.toLowerCase().replaceAll(' ', '_')}_${DateTime.now().millisecondsSinceEpoch}';

      // Quiz nesnesini oluştur
      final quiz = Quiz(
        id: quizId,
        name: widget.categoryName,
        totalQuestions: widget.questions.length,
        currentQuestionIndex: currentQuestionIndex,
        score: score,
        createdAt: DateTime.now(),
      );

      // Quiz ilerlemesini kaydet
      await _quizService.saveQuizProgress(quiz);

      // Ana sayfayı yenilemek için EventBus bildirimi gönder
      EventBus().fireMistakesUpdated(true);
      print("Quiz ilerleme kaydedildi - Ana sayfa yenilenecek");

      // Başarılı mesajı (opsiyonel)
      SnackBarUtils.showSuccessSnackBar(
        context,
        'Quiz ilerlemeniz kaydedilmiştir',
      );
    } catch (e) {
      print('Quiz ilerleme kaydetme hatası: $e');
    }
  }

  // Quizden çıkmak için onay kutusu göster
  Future<bool> _showExitConfirmationDialog() async {
    final result = await showDialog<bool>(
      context: context,
      barrierColor: Colors.black87,
      builder:
          (context) => Dialog(
            backgroundColor: Colors.transparent,
            insetPadding: const EdgeInsets.symmetric(
              horizontal: 20,
              vertical: 24,
            ),
            child: Container(
              decoration: BoxDecoration(
                gradient: LinearGradient(
                  begin: Alignment.topLeft,
                  end: Alignment.bottomRight,
                  colors: [
                    const Color(0xFF303F9F), // Koyu mavi
                    const Color(0xFF512DA8), // Koyu mor
                  ],
                ),
                borderRadius: BorderRadius.circular(20),
                boxShadow: [
                  BoxShadow(
                    color: Colors.black.withOpacity(0.3),
                    blurRadius: 15,
                    spreadRadius: 5,
                  ),
                ],
                border: Border.all(
                  color: Colors.white.withOpacity(0.1),
                  width: 1.5,
                ),
              ),
              child: Column(
                mainAxisSize: MainAxisSize.min,
                children: [
                  // Üst kısım - başlık ve ikon
                  Container(
                    padding: const EdgeInsets.only(
                      top: 24,
                      left: 24,
                      right: 24,
                      bottom: 16,
                    ),
                    child: Column(
                      children: [
                        Container(
                          padding: const EdgeInsets.all(16),
                          decoration: BoxDecoration(
                            color: Colors.red.withOpacity(0.2),
                            shape: BoxShape.circle,
                            border: Border.all(
                              color: Colors.redAccent.withOpacity(0.5),
                              width: 2,
                            ),
                          ),
                          child: const Icon(
                            Icons.exit_to_app_rounded,
                            color: Colors.redAccent,
                            size: 32,
                          ),
                        ),
                        const SizedBox(height: 16),
                        const Text(
                          'Quizden Çıkış',
                          style: TextStyle(
                            color: Colors.white,
                            fontSize: 20,
                            fontWeight: FontWeight.bold,
                            letterSpacing: 0.5,
                          ),
                        ),
                      ],
                    ),
                  ),

                  // Orta kısım - mesaj
                  Padding(
                    padding: const EdgeInsets.symmetric(
                      horizontal: 24,
                      vertical: 8,
                    ),
                    child: Text(
                      'Quizden çıkmak istediğinize emin misiniz? İlerlemeniz kaydedilecek ve daha sonra devam edebilirsiniz.',
                      textAlign: TextAlign.center,
                      style: TextStyle(
                        color: Colors.white.withOpacity(0.8),
                        fontSize: 14,
                        height: 1.5,
                      ),
                    ),
                  ),

                  // Alt kısım - butonlar
                  Padding(
                    padding: const EdgeInsets.all(24),
                    child: Row(
                      children: [
                        // İptal butonu
                        Expanded(
                          child: GestureDetector(
                            onTap: () => Navigator.of(context).pop(false),
                            child: Container(
                              padding: const EdgeInsets.symmetric(vertical: 12),
                              decoration: BoxDecoration(
                                color: Colors.white.withOpacity(0.1),
                                borderRadius: BorderRadius.circular(12),
                                border: Border.all(
                                  color: Colors.white.withOpacity(0.2),
                                  width: 1,
                                ),
                              ),
                              child: const Center(
                                child: Text(
                                  'İptal',
                                  style: TextStyle(
                                    color: Colors.white,
                                    fontWeight: FontWeight.w500,
                                    fontSize: 15,
                                  ),
                                ),
                              ),
                            ),
                          ),
                        ),
                        const SizedBox(width: 16),
                        // Çıkış butonu
                        Expanded(
                          child: GestureDetector(
                            onTap: () => Navigator.of(context).pop(true),
                            child: Container(
                              padding: const EdgeInsets.symmetric(vertical: 12),
                              decoration: BoxDecoration(
                                gradient: LinearGradient(
                                  colors: [
                                    Colors.deepOrange.shade400,
                                    Colors.red.shade500,
                                  ],
                                ),
                                borderRadius: BorderRadius.circular(12),
                                boxShadow: [
                                  BoxShadow(
                                    color: Colors.red.withOpacity(0.3),
                                    blurRadius: 8,
                                    offset: const Offset(0, 4),
                                  ),
                                ],
                              ),
                              child: const Center(
                                child: Text(
                                  'Çıkış',
                                  style: TextStyle(
                                    color: Colors.white,
                                    fontWeight: FontWeight.bold,
                                    fontSize: 15,
                                  ),
                                ),
                              ),
                            ),
                          ),
                        ),
                      ],
                    ),
                  ),
                ],
              ),
            ),
          ),
    );

    // Kullanıcı çıkmak istiyorsa ilerlemeyi kaydet ve profili güncelle
    if (result == true) {
      // Quiz ilerlemesini kaydet (puanlar ve diğer veriler)
      await _saveQuizProgress();

      // Doğru cevapların puanlarını ve profil güncellemesini yap
      try {
        // Profil ekranına dönüş için hazırlık yap
        print("Quiz'den çıkılıyor, profil yenilenecek");
        return true;
      } catch (e) {
        print('Quiz çıkış hatası: $e');
        return true;
      }
    }

    return result ?? false;
  }

  @override
  Widget build(BuildContext context) {
    return WillPopScope(
      onWillPop: _showExitConfirmationDialog,
      child: Scaffold(
        extendBody: true,
        body: Container(
          decoration: BoxDecoration(
            gradient: LinearGradient(
              begin: Alignment.topLeft,
              end: Alignment.bottomRight,
              colors: [Colors.blue.shade900, Colors.black],
            ),
          ),
          child: SafeArea(
            child: Column(
              children: [
                _buildHeader(),
                _buildProgressBar(),
                Expanded(
                  child: SingleChildScrollView(
                    child: Column(
                      children: [
                        _buildQuestion(),
                        _buildPremises(),
                        _buildOptions(),
                      ],
                    ),
                  ),
                ),
                _buildBottomButton(),
              ],
            ),
          ),
        ),
      ),
    );
  }

  Widget _buildHeader() {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 16.0, vertical: 8.0),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          // Geri butonu
          GestureDetector(
            onTap: () async {
              final shouldExit = await _showExitConfirmationDialog();
              if (shouldExit) {
                // Profilin güncellenmesini sağlamak için 'refresh_profile' parametresi gönderiyoruz
                Navigator.of(context).pop('refresh_profile');
              }
            },
            child: Container(
              decoration: BoxDecoration(
                color: Colors.white,
                borderRadius: BorderRadius.circular(12),
                boxShadow: [
                  BoxShadow(
                    color: Colors.black.withOpacity(0.1),
                    blurRadius: 8,
                    offset: const Offset(0, 2),
                  ),
                ],
              ),
              padding: const EdgeInsets.all(8),
              child: const Icon(Icons.close, color: Colors.redAccent, size: 24),
            ),
          ),
          // Orta Başlık - Quiz adı
          Expanded(
            child: Padding(
              padding: const EdgeInsets.symmetric(horizontal: 12.0),
              child: Text(
                widget.categoryName,
                textAlign: TextAlign.center,
                style: const TextStyle(
                  fontSize: 18,
                  fontWeight: FontWeight.bold,
                  color: Colors.white,
                ),
                maxLines: 1,
                overflow: TextOverflow.ellipsis,
              ),
            ),
          ),
          // İlerleme
          Text(
            '${currentQuestionIndex + 1}/${widget.questions.length}',
            style: TextStyle(
              fontSize: 16,
              fontWeight: FontWeight.w500,
              color: Colors.white.withOpacity(0.9),
            ),
          ),
        ],
      ),
    );
  }

  Widget _buildProgressBar() {
    return Container(
      margin: const EdgeInsets.symmetric(horizontal: 20),
      child: Column(
        children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Text(
                '${(_animation.value * 60).toInt()} saniye',
                style: const TextStyle(color: Colors.white70),
              ),
              Text(
                'Puan: ${isAnswered ? (selectedAnswerIndex == widget.questions[currentQuestionIndex].correctAnswerIndex ? "+10" : "+0") : ""}',
                style: TextStyle(
                  color:
                      isAnswered
                          ? (selectedAnswerIndex ==
                                  widget
                                      .questions[currentQuestionIndex]
                                      .correctAnswerIndex
                              ? Colors.green
                              : Colors.red)
                          : Colors.white70,
                ),
              ),
            ],
          ),
          const SizedBox(height: 8),
          LinearProgressIndicator(
            value: _animation.value,
            backgroundColor: Colors.grey[800],
            valueColor: AlwaysStoppedAnimation<Color>(
              _animation.value > 0.3 ? Colors.blue : Colors.red,
            ),
          ),
        ],
      ),
    );
  }

  Widget _buildQuestion() {
    return Padding(
      padding: const EdgeInsets.all(16.0),
      child: Text(
        widget.questions[currentQuestionIndex].question,
        style: const TextStyle(
          color: Colors.white,
          fontSize: 18,
          fontWeight: FontWeight.bold,
          height: 1.3,
        ),
      ),
    );
  }

  Widget _buildPremises() {
    final premises = widget.questions[currentQuestionIndex].premises ?? [];

    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 16.0, vertical: 8.0),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children:
            premises
                .map(
                  (premise) => Padding(
                    padding: const EdgeInsets.only(bottom: 8.0),
                    child: Text(
                      premise,
                      style: const TextStyle(
                        color: Colors.white,
                        fontSize: 14,
                        height: 1.4,
                      ),
                    ),
                  ),
                )
                .toList(),
      ),
    );
  }

  Widget _buildOptions() {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 16.0, vertical: 8.0),
      child: Column(
        children: List.generate(
          widget.questions[currentQuestionIndex].options.length,
          (index) => _buildOptionButton(index),
        ),
      ),
    );
  }

  Widget _buildOptionButton(int index) {
    final isCorrect =
        index == widget.questions[currentQuestionIndex].correctAnswerIndex;
    final isSelected = selectedAnswerIndex == index;
    Color backgroundColor = Colors.white.withOpacity(0.1);
    Color borderColor = Colors.white.withOpacity(0.3);
    Color textColor = Colors.white;

    if (isAnswered) {
      if (isSelected) {
        backgroundColor =
            isCorrect
                ? Colors.green.withOpacity(0.3)
                : Colors.red.withOpacity(0.3);
        borderColor = isCorrect ? Colors.green : Colors.red;
      } else if (isCorrect) {
        backgroundColor = Colors.green.withOpacity(0.3);
        borderColor = Colors.green;
      }
    }

    return GestureDetector(
      onTap: isAnswered ? null : () => _handleAnswer(index),
      child: Container(
        margin: const EdgeInsets.only(bottom: 8),
        padding: const EdgeInsets.all(12),
        decoration: BoxDecoration(
          color: backgroundColor,
          border: Border.all(color: borderColor, width: 1.5),
          borderRadius: BorderRadius.circular(12),
        ),
        child: Row(
          children: [
            Container(
              width: 32,
              height: 32,
              decoration: BoxDecoration(
                color: Colors.white.withOpacity(0.15),
                shape: BoxShape.circle,
                border: Border.all(color: Colors.white.withOpacity(0.3)),
              ),
              child: Center(
                child: Text(
                  String.fromCharCode(65 + index),
                  style: TextStyle(
                    fontWeight: FontWeight.bold,
                    fontSize: 16,
                    color: textColor,
                  ),
                ),
              ),
            ),
            const SizedBox(width: 12),
            Expanded(
              child: Text(
                widget.questions[currentQuestionIndex].options[index],
                style: TextStyle(color: textColor, fontSize: 14, height: 1.4),
              ),
            ),
          ],
        ),
      ),
    );
  }

  Widget _buildBottomButton() {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 12, vertical: 8),
      child: Row(
        children: [
          if (isAnswered)
            Expanded(
              child: Hero(
                tag: 'detail_button',
                child: Material(
                  color: Colors.transparent,
                  child: InkWell(
                    onTap: () {
                      Navigator.push(
                        context,
                        MaterialPageRoute(
                          builder:
                              (context) => QuestionDetailScreen(
                                question:
                                    widget.questions[currentQuestionIndex],
                              ),
                        ),
                      );
                    },
                    borderRadius: BorderRadius.circular(8),
                    child: Container(
                      padding: const EdgeInsets.symmetric(vertical: 8),
                      decoration: BoxDecoration(
                        color: Colors.white.withOpacity(0.1),
                        borderRadius: BorderRadius.circular(8),
                        border: Border.all(
                          color: Colors.white.withOpacity(0.2),
                          width: 1,
                        ),
                      ),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          const Icon(
                            Icons.info_outline,
                            color: Colors.white70,
                            size: 16,
                          ),
                          const SizedBox(width: 4),
                          const Text(
                            'Detay',
                            style: TextStyle(
                              color: Colors.white70,
                              fontSize: 12,
                              fontWeight: FontWeight.w500,
                            ),
                          ),
                        ],
                      ),
                    ),
                  ),
                ),
              ),
            ),
          if (isAnswered) const SizedBox(width: 8),
          Expanded(
            child: Hero(
              tag: 'next_button',
              child: Material(
                color: Colors.transparent,
                child: InkWell(
                  onTap: isAnswered ? _nextQuestion : null,
                  borderRadius: BorderRadius.circular(8),
                  child: Container(
                    padding: const EdgeInsets.symmetric(vertical: 8),
                    decoration: BoxDecoration(
                      gradient: LinearGradient(
                        colors: [Colors.blue.shade600, Colors.blue.shade700],
                      ),
                      borderRadius: BorderRadius.circular(8),
                      boxShadow: [
                        BoxShadow(
                          color: Colors.blue.withOpacity(0.3),
                          blurRadius: 4,
                          offset: const Offset(0, 2),
                        ),
                      ],
                    ),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Text(
                          currentQuestionIndex == widget.questions.length - 1
                              ? 'Bitir'
                              : 'Sonraki',
                          style: const TextStyle(
                            fontSize: 12,
                            fontWeight: FontWeight.w600,
                            color: Colors.white,
                          ),
                        ),
                        if (currentQuestionIndex <
                            widget.questions.length - 1) ...[
                          const SizedBox(width: 4),
                          const Icon(
                            Icons.arrow_forward_rounded,
                            size: 16,
                            color: Colors.white,
                          ),
                        ],
                      ],
                    ),
                  ),
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }

  // Süre bittiğinde çalışacak metod
  void _handleTimeExpired() {
    if (!isAnswered) {
      print('SÜRE BİTTİ - Soru otomatik olarak yanlış sayılacak');
      
      // Soruyu yanlış olarak işaretle
      setState(() {
        isAnswered = true;
        selectedAnswerIndex = -1; // Hiçbir seçenek seçilmedi
      });

      // Yanlış cevabı kaydet
      _saveWrongAnswer();

      // Cevap istatistiklerini güncelle
      _quizService.updateAnswerStatistics(false, 0).then((success) {
        if (!success) {
          print('Süre bitimi - Cevap istatistiği kaydetme işlemi başarısız oldu');
        }
      });

      // Animasyonu durdur
      _animationController.stop();

      // 2 saniye sonra otomatik olarak sonraki soruya geç
      Future.delayed(const Duration(seconds: 2), () {
        if (mounted) {
          _nextQuestion();
        }
      });
    }
  }

  void _handleAnswer(int index) async {
    if (!isAnswered) {
      final isCorrect =
          index == widget.questions[currentQuestionIndex].correctAnswerIndex;

      print(
        "CEVAP: ${isCorrect ? 'DOĞRU' : 'YANLIŞ'} - Soru: ${widget.questions[currentQuestionIndex].question}",
      );

      setState(() {
        selectedAnswerIndex = index;
        isAnswered = true;
        if (isCorrect) {
          score++;
        } else {
          // Yanlış cevap verildiğinde soruyu kaydet
          print("YANLIŞ CEVAP VERİLDİ! Kaydediliyor...");
          _saveWrongAnswer();
        }
      });

      // Doğru veya yanlış cevabı Firestore'a kaydet
      try {
        final success = await _quizService.updateAnswerStatistics(
          isCorrect,
          isCorrect ? 10 : 0,
        );
        if (!success) {
          print('Cevap istatistiği kaydetme işlemi başarısız oldu');
        } else {
          print(
            'Cevap istatistiği başarıyla kaydedildi: ${isCorrect ? "Doğru" : "Yanlış"}',
          );
        }
      } catch (e) {
        print('Cevap istatistiği kaydetme hatası: $e');
      }

      _animationController.stop();
    }
  }

  // Yanlış cevaplanan soruyu kaydet
  Future<void> _saveWrongAnswer() async {
    try {
      final currentQuestion = widget.questions[currentQuestionIndex];



      print("===== YANLIŞ CEVAP KAYIT İŞLEMİ BAŞLATILIYOR =====");
      print(
        "SORU KAYDETME BAŞLADI: ${currentQuestion.question.substring(0, min(30, currentQuestion.question.length))}...",
      );
      print("Soru ID: ${currentQuestion.id ?? 'ID YOK'}");
      print("Kategori: ${widget.categoryName}");
      print("Seçenekler sayısı: ${currentQuestion.options.length}");
      print("Doğru cevap indeksi: ${currentQuestion.correctAnswerIndex}");
      print(
        "Açıklama var mı: ${currentQuestion.explanation != null && currentQuestion.explanation!.isNotEmpty ? 'Evet' : 'Hayır'}",
      );

      if (currentQuestion.id == null || currentQuestion.id!.isEmpty) {
        print("UYARI: Sorunun ID'si boş! Otomatik ID oluşturulacak.");
      }

      // Yanlış cevabı kaydet
      print("QuizService.saveWrongAnswer fonksiyonu çağrılıyor...");
      final result = await _quizService.saveWrongAnswer(
        currentQuestion,
        widget.categoryName,
      );

      if (result) {
        print("KAYIT BAŞARILI: Yanlış cevaplanan soru kaydedildi");
        print("===== YANLIŞ CEVAP KAYIT İŞLEMİ TAMAMLANDI =====");

        // Yanlış cevap kaydedildikten sonra EventBus ile bildirim gönder
        // Bu sayede Eksikler sayfası otomatik olarak güncellenecek
        EventBus().fireMistakesUpdated(true);
        print("Eksikler sayfası güncelleme bildirimi gönderildi");
      } else {
        print("KAYIT BAŞARISIZ: Yanlış cevap kaydedilemedi!");
        print("===== YANLIŞ CEVAP KAYIT İŞLEMİ BAŞARISIZ =====");
      }
    } catch (e) {
      print('HATA - Yanlış cevabı kaydetme hatası: $e');
      print("===== YANLIŞ CEVAP KAYIT İŞLEMİ HATA İLE SONUÇLANDI =====");
    }
  }

  void _nextQuestion() {
    if (currentQuestionIndex < widget.questions.length - 1) {
      // Sonraki soruya geç
      setState(() {
        currentQuestionIndex++;
        isAnswered = false;
        selectedAnswerIndex = null;
      });
      _animationController.reset();
      _animationController.forward();
    } else {
      // Quiz bitti, sonuçları göster
      _showQuizCompletedDialog();
    }
  }

  void _showQuizCompletedDialog() {
    final int totalScore = score;
    final int totalQuestions = widget.questions.length;
    final double percentage = (totalScore / totalQuestions) * 100;

    print(
      'Quiz tamamlandı: Skor=$totalScore/$totalQuestions, Başarı=%${percentage.toStringAsFixed(0)}',
    );

    // Quiz'i tamamla
    _onCompleteQuiz();
  }

  // Quiz tamamlandığında yapılacak işlemler
  Future<void> _onCompleteQuiz() async {
    try {
      print(
        'Quiz tamamlanıyor: kategori=${widget.categoryName}, skor=$score/${widget.questions.length}',
      );

      // Önce EventBus ile bildirim gönder (ana sayfayı hemen yenilemek için)
      EventBus().fireMistakesUpdated(true);
      print(
        "Quiz tamamlandı bildirimi hemen gönderildi - Ana sayfa yenilenecek",
      );

      final result = await _quizService.completeQuiz(
        widget.categoryName,
        score,
        widget.questions.length,
        quizId: widget.quizId,
      );

      if (!mounted) return;

      if (result) {
        print('Quiz başarıyla tamamlandı ve veritabanına kaydedildi');

        // Quiz tamamlandı, ana sayfaya dön
        Navigator.pop(context);
        SnackBarUtils.showSuccessSnackBar(context, 'Quiz tamamlandı!');
      } else {
        print('HATA: Quiz tamamlanamadı veya veritabanına kaydedilemedi');
        SnackBarUtils.showErrorSnackBar(
          context,
          'Quiz tamamlanırken bir hata oluştu',
        );
      }
    } catch (e) {
      print('_onCompleteQuiz hatası: $e');
      if (!mounted) return;
      SnackBarUtils.showErrorSnackBar(context, 'Hata: $e');
    }
  }
}
