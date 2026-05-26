import 'dart:async';
import 'package:flutter/material.dart';
import '../l10n/app_localizations.dart';
import 'package:flutter/services.dart';
import 'package:provider/provider.dart';
import 'package:cloud_firestore/cloud_firestore.dart';

import '../models/question.dart';
import 'question_detail_screen.dart';
import '../services/quiz_service.dart';
import '../models/quiz.dart';
import '../services/premium_access_service.dart';
import '../services/premium_service.dart';
import '../services/language_service.dart';
import '../widgets/premium_lock_widget.dart';
import '../services/multilingual_question_service.dart';

import '../utils/event_bus.dart';
import '../utils/snackbar_utils.dart';
import '../services/auth_service.dart';
import 'register_screen.dart';

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
  final AuthService _authService = AuthService();
  bool _isCompletingQuiz = false; // Quiz tamamlanma durumunu takip et

  @override
  void initState() {
    super.initState();
    currentQuestionIndex = widget.initialQuestionIndex;
    score = widget.initialScore;


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

      // Başarılı mesajı (opsiyonel)
      if (context.mounted) {
        SnackBarUtils.showSuccessSnackBar(
          context,
          AppLocalizations.of(context)!.quizProgressSaved,
        );
      }
    } catch (e) {
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
                        Text(
                          AppLocalizations.of(context)!.exitQuiz,
                          style: const TextStyle(
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
                      AppLocalizations.of(context)!.exitQuizConfirm,
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
                              child: Center(
                                child: Text(
                                  AppLocalizations.of(context)!.cancel,
                                  style: const TextStyle(
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
                              child: Center(
                                child: Text(
                                  AppLocalizations.of(context)!.exit,
                                  style: const TextStyle(
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
      // Quiz ilerlemesini sayfa geçiş animasyonu başladıktan sonra (300ms) arka planda kaydet
      Future.delayed(const Duration(milliseconds: 300), () {
        _saveQuizProgress();
      });

      // Doğru cevapların puanlarını ve profil güncellemesini yap
      try {
        // Profil ekranına dönüş için hazırlık yap
        return true;
      } catch (e) {
        return true;
      }
    }

    return result ?? false;
  }

  @override
  Widget build(BuildContext context) {
    return Consumer<LanguageService>(
      builder: (context, languageService, child) {
        return Consumer<PremiumService>(
          builder: (context, premiumService, child) {
            return FutureBuilder<_AccessState>(
              future: _loadAccessState(
                premiumService,
                languageService.currentLocale.languageCode,
              ),
              builder: (context, snapshot) {
                final accessState = snapshot.data;

                // Premium durumu - yüklenmediyse cache'teki sync değerini kullan
                final isPremium =
                    accessState?.isPremium ?? premiumService.isPremium;

                // Ücretsiz soru limiti - yüklenmediyse varsayılanı kullan
                final maxFreeQuestions =
                    accessState?.maxFreeQuestions ??
                    PremiumAccessService.maxFreeQuestions;

                // Test modu kontrolü
                if (premiumService.isTestMode) {
                  // Test modu aktifse premium ve limit kontrolünü atla
                  return _buildQuizContent(true, maxFreeQuestions);
                }

                // Premium kontrolü - ücretsiz limitten sonra premium gerekli
                if (PremiumAccessService.shouldShowPremiumScreenWithTestMode(
                  currentQuestionIndex,
                  isPremium,
                  premiumService.isTestMode,
                  maxFreeQuestionsOverride: maxFreeQuestions,
                )) {
                  return _buildPremiumLockScreen();
                }

                return _buildQuizContent(isPremium, maxFreeQuestions);
              },
            );
          },
        );
      },
    );
  }
  
  // Quiz içeriğini oluştur
  Widget _buildQuizContent(bool isPremium, int maxFreeQuestions) {
        return PopScope(
          canPop: false,
          onPopInvokedWithResult: (didPop, result) async {
            if (!didPop) {
              final shouldPop = await _showExitConfirmationDialog();
              if (shouldPop && context.mounted) {
                Navigator.of(context).pop();
              }
            }
          },
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
                    _buildPremiumStatusBanner(isPremium, maxFreeQuestions),
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
                '${(_animation.value * 60).toInt()} ${AppLocalizations.of(context)!.seconds}',
                style: const TextStyle(color: Colors.white70),
              ),
              Text(
                '${AppLocalizations.of(context)!.score}: ${isAnswered ? (selectedAnswerIndex == widget.questions[currentQuestionIndex].correctAnswerIndex ? "+10" : "+0") : ""}',
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
                          Text(
                            AppLocalizations.of(context)!.details,
                            style: const TextStyle(
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
                  onTap: isAnswered && !_isCompletingQuiz ? _nextQuestion : null,
                  borderRadius: BorderRadius.circular(8),
                  child: Container(
                    padding: const EdgeInsets.symmetric(vertical: 8),
                    decoration: BoxDecoration(
                      gradient: LinearGradient(
                        colors: _isCompletingQuiz 
                            ? [Colors.grey.shade600, Colors.grey.shade700]
                            : [Colors.blue.shade600, Colors.blue.shade700],
                      ),
                      borderRadius: BorderRadius.circular(8),
                      boxShadow: [
                        BoxShadow(
                          color: (_isCompletingQuiz ? Colors.grey : Colors.blue).withOpacity(0.3),
                          blurRadius: 4,
                          offset: const Offset(0, 2),
                        ),
                      ],
                    ),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        if (_isCompletingQuiz) ...[
                          const SizedBox(
                            width: 16,
                            height: 16,
                            child: CircularProgressIndicator(
                              strokeWidth: 2,
                              valueColor: AlwaysStoppedAnimation<Color>(Colors.white),
                            ),
                          ),
                          const SizedBox(width: 8),
                        ],
                        Text(
                          _isCompletingQuiz 
                              ? AppLocalizations.of(context)!.processing
                              : (currentQuestionIndex == widget.questions.length - 1
                                  ? AppLocalizations.of(context)!.finish
                                  : AppLocalizations.of(context)!.next),
                          style: const TextStyle(
                            fontSize: 12,
                            fontWeight: FontWeight.w600,
                            color: Colors.white,
                          ),
                        ),
                        if (currentQuestionIndex <
                            widget.questions.length - 1 && !_isCompletingQuiz) ...[
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

      // Cevap seçildi

      setState(() {
        selectedAnswerIndex = index;
        isAnswered = true;
        if (isCorrect) {
          score++;
        } else {
          // Yanlış cevap verildiğinde soruyu kaydet
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
          // Kaydetme başarısız
        } else {
          // Cevap istatistiği başarıyla kaydedildi
        }
      } catch (e) {
      }

      _animationController.stop();
    }
  }

  // Yanlış cevaplanan soruyu kaydet
  Future<void> _saveWrongAnswer() async {
    try {
      final currentQuestion = widget.questions[currentQuestionIndex];



      // Soru kaydetme başladı

      if (currentQuestion.id == null || currentQuestion.id!.isEmpty) {
        // Uyarı: Sorunun ID'si boş
      }

      // Yanlış cevabı kaydet
      final result = await _quizService.saveWrongAnswer(
        currentQuestion,
        widget.categoryName,
      );

      if (result) {

        // Yanlış cevap kaydedildikten sonra EventBus ile bildirim gönder
        // Bu sayede Eksikler sayfası otomatik olarak güncellenecek
        EventBus().fireMistakesUpdated(true);
      } else {
      }
    } catch (e) {
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
    // Eğer zaten tamamlanıyorsa, tekrar başlatma
    if (_isCompletingQuiz) {
      return;
    }

    final int totalScore = score;
    final int totalQuestions = widget.questions.length;
    final double percentage = (totalScore / totalQuestions) * 100;

    // Quiz tamamlandı

    // Quiz'i tamamla
    _onCompleteQuiz();
  }

  // Quiz tamamlandığında yapılacak işlemler
  Future<void> _onCompleteQuiz() async {
    // Eğer zaten tamamlanıyorsa, tekrar başlatma
    if (_isCompletingQuiz) {
      return;
    }

    setState(() {
      _isCompletingQuiz = true;
    });

    try {
      // Quiz tamamlanıyor

      final result = await _quizService.completeQuiz(
        widget.categoryName,
        score,
        widget.questions.length,
        quizId: widget.quizId,
      );

      if (!mounted) return;

      if (result) {
        // Quiz tamamlandıktan sonra EventBus ile bildirim gönder
        // Bu sayede hem ana sayfa hem de quizler ekranı güncellenecek
        EventBus().fireMistakesUpdated(true);

        // Kısa bir gecikme ekle ki veritabanı güncellemesi tamamlansın
        await Future.delayed(const Duration(milliseconds: 500));

        if (!mounted) return;

        // Quiz tamamlandı, sonuçları döndür ve ana sayfaya dön
        // Navigation stack kontrolü ile güvenli dönüş
        if (Navigator.canPop(context)) {
          Navigator.pop(context, {
            'score': score,
            'totalQuestions': widget.questions.length,
            'successRate': (score / widget.questions.length) * 100,
          });
        } else {
          // Eğer pop yapılamıyorsa, ana sayfaya yönlendir
          Navigator.pushNamedAndRemoveUntil(
            context,
            '/home',
            (route) => false,
          );
        }
        
        SnackBarUtils.showSuccessSnackBar(context, AppLocalizations.of(context)!.quizCompleted);
      } else {
        SnackBarUtils.showErrorSnackBar(
          context,
          AppLocalizations.of(context)!.quizCompletionError,
        );
      }
    } catch (e) {
      if (!mounted) return;
      SnackBarUtils.showErrorSnackBar(context, 'Hata: $e');
    } finally {
      if (mounted) {
        setState(() {
          _isCompletingQuiz = false;
        });
      }
    }
  }

  // Premium lock screen
  Widget _buildPremiumLockScreen() {
    final isGuest = _authService.isGuestUser;
    
    return Scaffold(
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
              Expanded(
                child: Center(
                  child: Padding(
                    padding: const EdgeInsets.all(24.0),
                    child: isGuest
                        ? _buildGuestRegisterWidget()
                        : PremiumLockWidget(
                            message: AppLocalizations.of(context)!.premiumRequiredMessage,
                            subtitle: AppLocalizations.of(context)!.premiumIncentiveMessage,
                          ),
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }

  // Misafir kullanıcı için kayıt widget'ı
  Widget _buildGuestRegisterWidget() {
    return Container(
      padding: const EdgeInsets.all(24),
      decoration: BoxDecoration(
        gradient: const LinearGradient(
          begin: Alignment.topLeft,
          end: Alignment.bottomRight,
          colors: [
            Color(0xFF1A2E1A), // Yeşil ton
            Color(0xFF162E16),
            Color(0xFF0F2E0F),
          ],
        ),
        borderRadius: BorderRadius.circular(20),
        border: Border.all(
          color: Colors.green.withOpacity(0.3),
          width: 2,
        ),
        boxShadow: [
          BoxShadow(
            color: Colors.green.withOpacity(0.2),
            blurRadius: 20,
            spreadRadius: 2,
          ),
        ],
      ),
      child: Column(
        mainAxisSize: MainAxisSize.min,
        children: [
          // User Icon
          Container(
            width: 80,
            height: 80,
            decoration: BoxDecoration(
              shape: BoxShape.circle,
              gradient: const LinearGradient(
                colors: [Colors.green, Colors.lightGreen],
              ),
              boxShadow: [
                BoxShadow(
                  color: Colors.green.withOpacity(0.4),
                  blurRadius: 20,
                  spreadRadius: 5,
                ),
              ],
            ),
            child: const Icon(
              Icons.person_add,
              size: 40,
              color: Colors.white,
            ),
          ),
          
          const SizedBox(height: 24),
          
          // Title
          Text(
            AppLocalizations.of(context)!.guestRegisterTitle,
            style: const TextStyle(
              fontSize: 24,
              fontWeight: FontWeight.bold,
              color: Colors.white,
            ),
            textAlign: TextAlign.center,
          ),
          
          const SizedBox(height: 12),
          
          // Message
          Text(
            AppLocalizations.of(context)!.guestRegisterMessage,
            style: const TextStyle(
              fontSize: 16,
              color: Colors.white70,
              height: 1.5,
            ),
            textAlign: TextAlign.center,
          ),
          
          const SizedBox(height: 8),
          
          Text(
            AppLocalizations.of(context)!.guestRegisterSubtitle,
            style: const TextStyle(
              fontSize: 14,
              color: Colors.green,
              height: 1.4,
              fontWeight: FontWeight.bold,
            ),
            textAlign: TextAlign.center,
          ),
          
          const SizedBox(height: 32),
          
          // Register Button
          SizedBox(
            width: double.infinity,
            child: ElevatedButton(
              onPressed: () async {
                final result = await Navigator.of(context, rootNavigator: true).push(
                  MaterialPageRoute(
                    builder: (context) => const RegisterScreen(isGuestUpgrade: true),
                  ),
                );
                
                // Kayıt başarılıysa sayfayı yenile (premium kontrolü tekrar yapılacak)
                if (result == true && mounted) {
                  setState(() {
                    // State'i yenile, premium kontrolü tekrar yapılacak
                  });
                }
              },
              style: ElevatedButton.styleFrom(
                backgroundColor: Colors.green,
                foregroundColor: Colors.white,
                padding: const EdgeInsets.symmetric(vertical: 16),
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(12),
                ),
                elevation: 0,
              ),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  const Icon(Icons.person_add, size: 20),
                  const SizedBox(width: 8),
                  Text(
                    AppLocalizations.of(context)!.signUp,
                    style: const TextStyle(
                      fontSize: 16,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }

  // Premium status banner
  Widget _buildPremiumStatusBanner(bool isPremium, int maxFreeQuestions) {
    return Consumer<PremiumService>(
      builder: (context, premiumService, child) {
        // Test modu aktifse banner gösterme
        if (premiumService.isTestMode) return const SizedBox.shrink();
        
        if (isPremium) return const SizedBox.shrink();
        
        final remainingQuestions =
            PremiumAccessService.getRemainingFreeQuestions(
          currentQuestionIndex, 
          isPremium,
          maxFreeQuestionsOverride: maxFreeQuestions,
        );
        
        if (remainingQuestions <= 0) return const SizedBox.shrink();
    
    return Container(
      margin: const EdgeInsets.symmetric(horizontal: 16, vertical: 8),
      padding: const EdgeInsets.symmetric(horizontal: 16, vertical: 12),
      decoration: BoxDecoration(
        gradient: const LinearGradient(
          colors: [Colors.amber, Colors.orange],
        ),
        borderRadius: BorderRadius.circular(12),
        boxShadow: [
          BoxShadow(
            color: Colors.amber.withOpacity(0.3),
            blurRadius: 8,
            spreadRadius: 1,
          ),
        ],
      ),
      child: Row(
        children: [
          const Icon(
            Icons.info_outline,
            color: Colors.black,
            size: 20,
          ),
          const SizedBox(width: 12),
          Expanded(
            child: Text(
              AppLocalizations.of(context)!.remainingFreeQuestions(remainingQuestions),
              style: const TextStyle(
                color: Colors.black,
                fontWeight: FontWeight.bold,
                fontSize: 14,
              ),
            ),
          ),
        ],
      ),
    );
      },
    );
  }
  
  Future<_AccessState> _loadAccessState(
    PremiumService premiumService,
    String languageCode,
  ) async {
    final isPremium = await premiumService.hasPremiumAccess();
    final maxFreeQuestions =
        await _getFreeQuestionLimitForCurrentCategory(languageCode);
    return _AccessState(
      isPremium: isPremium,
      maxFreeQuestions: maxFreeQuestions,
    );
  }

  Future<int> _getFreeQuestionLimitForCurrentCategory(
    String languageCode,
  ) async {
    try {
      // Firestore'dan ücretsiz soru ayarlarını çek
      final doc = await FirebaseFirestore.instance
          .collection('systemSettings')
          .doc('freeQuestionConfig')
          .get();

      final data = doc.data() ?? <String, dynamic>{};

      final firstTopicsCount = (data['firstTopicsCount'] as int?) ?? 10;
      final firstTopicsFreeQuestions =
          (data['firstTopicsFreeQuestions'] as int?) ?? 20;
      final otherTopicsFreeQuestions =
          (data['otherTopicsFreeQuestions'] as int?) ?? 2;

      // Mevcut dil için kategori listesini al
      final localeKey =
          languageCode == 'en' ? 'en' : 'turkish';
      final categories =
          MultilingualQuestionService.getQuizCategories(localeKey);

      final index = categories.indexWhere(
        (cat) => (cat['title'] as String?) == widget.categoryName,
      );

      final topicIndex = index >= 0 ? index : 9999;

      if (topicIndex < firstTopicsCount) {
        return firstTopicsFreeQuestions;
      }

      return otherTopicsFreeQuestions;
    } catch (_) {
      // Herhangi bir hata durumunda varsayılan değere dön
      return PremiumAccessService.maxFreeQuestions;
    }
  }
}

class _AccessState {
  final bool isPremium;
  final int maxFreeQuestions;

  _AccessState({
    required this.isPremium,
    required this.maxFreeQuestions,
  });
}
