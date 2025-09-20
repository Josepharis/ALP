import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import '../l10n/app_localizations.dart';
import 'package:flutter/services.dart';
import '../models/daily_question.dart';
import '../services/quiz_service.dart';
import '../services/language_service.dart';
import '../utils/snackbar_utils.dart';

class DailyQuestionScreen extends StatefulWidget {
  final DailyQuestion dailyQuestion;

  const DailyQuestionScreen({
    super.key,
    required this.dailyQuestion,
  });

  @override
  State<DailyQuestionScreen> createState() => _DailyQuestionScreenState();
}

class _DailyQuestionScreenState extends State<DailyQuestionScreen>
    with SingleTickerProviderStateMixin {
  late DailyQuestion _dailyQuestion;
  bool _isAnswered = false;
  bool _isLoading = false;
  late AnimationController _animationController;
  late Animation<double> _animation;

  final QuizService _quizService = QuizService();

  @override
  void initState() {
    super.initState();
    _dailyQuestion = widget.dailyQuestion;
    _isAnswered = _dailyQuestion.isAnswered;

    // Animasyon controller'ı başlat
    _animationController = AnimationController(
      vsync: this,
      duration: const Duration(seconds: 60), // 60 saniye süre
    );
    _animation = Tween<double>(begin: 1, end: 0).animate(_animationController)
      ..addListener(() {
        setState(() {
          if (_animation.value <= 0 && !_isAnswered) {
            _handleTimeExpired();
          }
        });
      });

    // Eğer henüz cevaplanmamışsa süreyi başlat
    if (!_isAnswered) {
      _animationController.forward();
    }
  }

  @override
  void dispose() {
    // Status bar'ı varsayılan duruma döndür
    SystemChrome.setSystemUIOverlayStyle(
      const SystemUiOverlayStyle(
        statusBarColor: Colors.transparent,
        statusBarIconBrightness: Brightness.light,
        statusBarBrightness: Brightness.dark,
        systemNavigationBarColor: Colors.transparent,
        systemNavigationBarIconBrightness: Brightness.light,
      ),
    );
    
    _animationController.dispose();
    super.dispose();
  }

  void _handleTimeExpired() {
    if (!_isAnswered) {
      _showTimeExpiredDialog();
    }
  }

  void _showTimeExpiredDialog() {
    showDialog(
      context: context,
      barrierDismissible: false,
      builder: (context) => AlertDialog(
        backgroundColor: Colors.grey.shade900,
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(16),
          side: BorderSide(color: Colors.orange, width: 2),
        ),
        title: Row(
          children: [
            Icon(Icons.timer, color: Colors.orange, size: 28),
            SizedBox(width: 8),
            Text(
              AppLocalizations.of(context)!.timeUp,
              style: TextStyle(
                color: Colors.orange,
                fontWeight: FontWeight.bold,
              ),
            ),
          ],
        ),
        content: Text(
          AppLocalizations.of(context)!.dailyQuestionTimeUp,
          style: TextStyle(color: Colors.white),
        ),
        actions: [
          TextButton(
            onPressed: () {
              Navigator.of(context).pop(); // Dialog'u kapat
              Navigator.of(context).pushNamedAndRemoveUntil(
                '/home', 
                (route) => false, // Tüm önceki route'ları temizle
              );
            },
            style: TextButton.styleFrom(
              backgroundColor: Colors.orange,
              foregroundColor: Colors.white,
              padding: EdgeInsets.symmetric(horizontal: 24, vertical: 12),
              shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(8),
              ),
            ),
            child: Text('OK', style: TextStyle(fontWeight: FontWeight.bold)),
          ),
        ],
      ),
    );
  }

  Future<void> _answerQuestion(int selectedIndex) async {
    if (_isAnswered || _isLoading) return;

    setState(() {
      _isLoading = true;
    });

    final isCorrect = selectedIndex == _dailyQuestion.question.correctAnswerIndex;

    try {
      final success = await _quizService.answerDailyQuestion(
        questionId: _dailyQuestion.id,
        userAnswer: selectedIndex,
        isCorrect: isCorrect,
        question: _dailyQuestion.question,
        languageCode: Provider.of<LanguageService>(context, listen: false).currentLocale.languageCode,
      );

      if (success) {
        setState(() {
          _isAnswered = true;
          _dailyQuestion = _dailyQuestion.copyWith(
            isAnswered: true,
            userAnswer: selectedIndex,
            isCorrect: isCorrect,
          );
        });

        // Süre animasyonunu durdur
        _animationController.stop();

        // Sonuç göster
        _showResultDialog(isCorrect);
      }
    } catch (e) {
      print('Günün sorusu yanıtlama hatası: $e');
      SnackBarUtils.showErrorSnackBar(
        context,
        AppLocalizations.of(context)!.errorTryAgain,
      );
    } finally {
      setState(() {
        _isLoading = false;
      });
    }
  }

  void _showResultDialog(bool isCorrect) {
    showDialog(
      context: context,
      barrierDismissible: false,
      builder: (context) => AlertDialog(
        backgroundColor: Colors.grey.shade900,
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(16),
          side: BorderSide(
            color: isCorrect ? Colors.green : Colors.red,
            width: 2,
          ),
        ),
        title: Row(
          children: [
            Icon(
              isCorrect ? Icons.check_circle : Icons.cancel,
              color: isCorrect ? Colors.green : Colors.red,
              size: 28,
            ),
            SizedBox(width: 8),
            Text(
              isCorrect ? AppLocalizations.of(context)!.correctAnswerTitle : AppLocalizations.of(context)!.wrongAnswerTitle,
              style: TextStyle(
                color: isCorrect ? Colors.green : Colors.red,
                fontWeight: FontWeight.bold,
              ),
            ),
          ],
        ),
        content: Column(
          mainAxisSize: MainAxisSize.min,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Container(
              padding: EdgeInsets.all(12),
              decoration: BoxDecoration(
                color: Colors.grey.shade800,
                borderRadius: BorderRadius.circular(8),
              ),
              child: Text(
                '${AppLocalizations.of(context)!.correctAnswerLabel}: ${_dailyQuestion.question.options[_dailyQuestion.question.correctAnswerIndex]}',
                style: TextStyle(
                  color: Colors.white,
                  fontWeight: FontWeight.w500,
                ),
              ),
            ),
            SizedBox(height: 12),
            Container(
              padding: EdgeInsets.all(12),
              decoration: BoxDecoration(
                color: isCorrect ? Colors.green.shade900 : Colors.red.shade900,
                borderRadius: BorderRadius.circular(8),
              ),
              child: Text(
                isCorrect
                    ? AppLocalizations.of(context)!.congratulations
                    : AppLocalizations.of(context)!.tryTomorrow,
                style: TextStyle(
                  color: Colors.white,
                  fontWeight: FontWeight.bold,
                ),
              ),
            ),
            if (_dailyQuestion.question.explanation != null &&
                _dailyQuestion.question.explanation!.isNotEmpty)
              Padding(
                padding: EdgeInsets.only(top: 12),
                child: Container(
                  padding: EdgeInsets.all(12),
                  decoration: BoxDecoration(
                    color: Colors.indigo.shade900,
                    borderRadius: BorderRadius.circular(8),
                  ),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        AppLocalizations.of(context)!.explanation,
                        style: TextStyle(
                          color: Colors.white,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                      SizedBox(height: 4),
                      Text(
                        _dailyQuestion.question.explanation!,
                        style: TextStyle(color: Colors.white70),
                      ),
                    ],
                  ),
                ),
              ),
          ],
        ),
        actions: [
          TextButton(
            onPressed: () {
              Navigator.of(context).pop(); // Dialog'u kapat
              Navigator.of(context).pushNamedAndRemoveUntil(
                '/home', 
                (route) => false, // Tüm önceki route'ları temizle
              );
            },
            style: TextButton.styleFrom(
              backgroundColor: Colors.indigo,
              foregroundColor: Colors.white,
              padding: EdgeInsets.symmetric(horizontal: 24, vertical: 12),
              shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(8),
              ),
            ),
            child: Text('OK', style: TextStyle(fontWeight: FontWeight.bold)),
          ),
        ],
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    final screenHeight = MediaQuery.of(context).size.height;
    final isSmallScreen = screenHeight < 700;
    
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
              // Header
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 16.0, vertical: 8.0),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    // Geri butonu
                    GestureDetector(
                      onTap: () => Navigator.of(context).pop(),
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
                    // Orta Başlık
                    Expanded(
                      child: Padding(
                        padding: const EdgeInsets.symmetric(horizontal: 12.0),
                        child: Column(
                          children: [
                            Text(
                              _isAnswered ? AppLocalizations.of(context)!.dailyQuestionSolved : AppLocalizations.of(context)!.dailyQuestionTitle,
                              textAlign: TextAlign.center,
                              style: const TextStyle(
                                fontSize: 18,
                                fontWeight: FontWeight.bold,
                                color: Colors.white,
                              ),
                            ),
                            if (!isSmallScreen)
                              Text(
                                _isAnswered
                                    ? (_dailyQuestion.isCorrect == true
                                        ? AppLocalizations.of(context)!.correctAnswerGiven
                                        : AppLocalizations.of(context)!.wrongAnswerGiven)
                                    : AppLocalizations.of(context)!.earnPointsOpportunity,
                                style: TextStyle(
                                  fontSize: 12,
                                  color: Colors.white70,
                                ),
                              ),
                          ],
                        ),
                      ),
                    ),
                    // Timer
                    if (!_isAnswered)
                      Container(
                        padding: EdgeInsets.symmetric(horizontal: 12, vertical: 6),
                        decoration: BoxDecoration(
                          color: Colors.white.withOpacity(0.2),
                          borderRadius: BorderRadius.circular(20),
                        ),
                        child: Row(
                          mainAxisSize: MainAxisSize.min,
                          children: [
                            Icon(Icons.timer, color: Colors.white, size: 16),
                            SizedBox(width: 4),
                            Text(
                              '${(_animation.value * 60).round()}s',
                              style: TextStyle(
                                color: Colors.white,
                                fontSize: 14,
                                fontWeight: FontWeight.bold,
                              ),
                            ),
                          ],
                        ),
                      ),
                  ],
                ),
              ),
              // Progress Bar
              if (!_isAnswered)
                Container(
                  margin: EdgeInsets.symmetric(horizontal: 20),
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
                            AppLocalizations.of(context)!.dailyQuestionScore,
                            style: TextStyle(color: Colors.white70),
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
                ),
              // Content Area
              Expanded(
                child: SingleChildScrollView(
                  physics: ClampingScrollPhysics(),
                  child: Padding(
                    padding: EdgeInsets.all(16.0),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.stretch,
                      children: [
                        // Question
                        Text(
                          _dailyQuestion.question.question,
                          style: const TextStyle(
                            color: Colors.white,
                            fontSize: 18,
                            fontWeight: FontWeight.bold,
                            height: 1.3,
                          ),
                        ),

                        const SizedBox(height: 24),

                        // Options
                        ...List.generate(
                          _dailyQuestion.question.options.length,
                          (index) => GestureDetector(
                            onTap: _isAnswered || _isLoading
                                ? null
                                : () => _answerQuestion(index),
                            child: Container(
                              margin: const EdgeInsets.only(bottom: 8),
                              padding: const EdgeInsets.all(12),
                              decoration: BoxDecoration(
                                color: _getOptionColor(index),
                                border: Border.all(
                                  color: _getOptionBorderColor(index),
                                  width: 1.5,
                                ),
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
                                      border: Border.all(
                                        color: Colors.white.withOpacity(0.3),
                                      ),
                                    ),
                                    child: Center(
                                      child: Text(
                                        String.fromCharCode(65 + index),
                                        style: TextStyle(
                                          fontWeight: FontWeight.bold,
                                          fontSize: 16,
                                          color: _getOptionTextColor(index),
                                        ),
                                      ),
                                    ),
                                  ),
                                  const SizedBox(width: 12),
                                  Expanded(
                                    child: Text(
                                      _dailyQuestion.question.options[index],
                                      style: TextStyle(
                                        color: _getOptionTextColor(index),
                                        fontSize: 14,
                                        height: 1.4,
                                      ),
                                    ),
                                  ),
                                  if (_isAnswered) _getResultIcon(index),
                                ],
                              ),
                            ),
                          ),
                        ),

                        // Explanation
                        if (_isAnswered &&
                            _dailyQuestion.question.explanation != null &&
                            _dailyQuestion.question.explanation!.isNotEmpty) ...[
                          const SizedBox(height: 24),
                          Container(
                            padding: const EdgeInsets.all(16),
                            decoration: BoxDecoration(
                              color: Colors.blue.withOpacity(0.15),
                              borderRadius: BorderRadius.circular(12),
                              border: Border.all(
                                color: Colors.blue.withOpacity(0.3),
                                width: 1,
                              ),
                            ),
                            child: Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Row(
                                  children: [
                                    Icon(
                                      Icons.lightbulb_outline,
                                      color: Colors.amber,
                                      size: 20,
                                    ),
                                    SizedBox(width: 8),
                                    Text(
                                      'Explanation',
                                      style: TextStyle(
                                        color: Colors.white,
                                        fontSize: 16,
                                        fontWeight: FontWeight.bold,
                                      ),
                                    ),
                                  ],
                                ),
                                SizedBox(height: 8),
                                Text(
                                  _dailyQuestion.question.explanation!,
                                  style: TextStyle(
                                    color: Colors.white70,
                                    fontSize: 14,
                                    height: 1.4,
                                  ),
                                ),
                              ],
                            ),
                          ),
                        ],

                        // Bottom padding
                        SizedBox(height: MediaQuery.of(context).padding.bottom + 20),
                      ],
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

  Color _getOptionColor(int index) {
    if (!_isAnswered) return Colors.white.withOpacity(0.05);
    
    if (index == _dailyQuestion.question.correctAnswerIndex) {
      return Colors.green.withOpacity(0.2);
    } else if (index == _dailyQuestion.userAnswer) {
      return Colors.red.withOpacity(0.2);
    }
    return Colors.white.withOpacity(0.05);
  }

  Color _getOptionBorderColor(int index) {
    if (!_isAnswered) return Colors.white.withOpacity(0.2);
    
    if (index == _dailyQuestion.question.correctAnswerIndex) {
      return Colors.green.withOpacity(0.5);
    } else if (index == _dailyQuestion.userAnswer) {
      return Colors.red.withOpacity(0.5);
    }
    return Colors.white.withOpacity(0.2);
  }

  Color _getOptionTextColor(int index) {
    if (!_isAnswered) return Colors.white;
    
    if (index == _dailyQuestion.question.correctAnswerIndex) {
      return Colors.green.shade200;
    } else if (index == _dailyQuestion.userAnswer) {
      return Colors.red.shade200;
    }
    return Colors.white;
  }

  Widget _getResultIcon(int index) {
    if (index == _dailyQuestion.question.correctAnswerIndex) {
      return Icon(Icons.check_circle, color: Colors.green, size: 24);
    } else if (index == _dailyQuestion.userAnswer && index != _dailyQuestion.question.correctAnswerIndex) {
      return Icon(Icons.cancel, color: Colors.red, size: 24);
    }
    return SizedBox.shrink();
  }
}
