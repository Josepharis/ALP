import 'dart:ui';

import 'package:flutter/material.dart';
import '../l10n/app_localizations.dart';
// import 'package:confetti/confetti.dart';
import 'dart:math';

class QuizResultScreen extends StatefulWidget {
  final String categoryName;
  final int score;
  final int totalQuestions;

  const QuizResultScreen({
    super.key,
    required this.categoryName,
    required this.score,
    required this.totalQuestions,
  });

  @override
  State<QuizResultScreen> createState() => _QuizResultScreenState();
}

class _QuizResultScreenState extends State<QuizResultScreen> {
  // late ConfettiController _confettiController;
  late int finalScore;
  late int totalQuestions;
  late double percentage;

  @override
  void initState() {
    super.initState();
    // _confettiController = ConfettiController(
    //   duration: const Duration(seconds: 3),
    // );
    finalScore = widget.score;
    totalQuestions = widget.totalQuestions;
    percentage = (finalScore / totalQuestions) * 100;

    // Skoru hesapla ve konfeti efektini başlat
    // Future.delayed(const Duration(milliseconds: 500), () {
    //   _confettiController.play();
    // });
  }

  @override
  void dispose() {
    // _confettiController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        decoration: BoxDecoration(
          gradient: LinearGradient(
            begin: Alignment.topCenter,
            end: Alignment.bottomCenter,
            colors: [Colors.indigo.shade900, Colors.blue.shade900],
          ),
        ),
        child: Stack(
          alignment: Alignment.center,
          children: [
            // Konfeti animasyonunu kaldırıldı
            // Align(
            //   alignment: Alignment.topCenter,
            //   child: ConfettiWidget(
            //     confettiController: _confettiController,
            //     blastDirectionality: BlastDirectionality.explosive,
            //     particleDrag: 0.05,
            //     emissionFrequency: 0.05,
            //     numberOfParticles: 50,
            //     gravity: 0.1,
            //     colors: const [
            //       Colors.green,
            //       Colors.blue,
            //       Colors.pink,
            //       Colors.orange,
            //       Colors.purple,
            //     ],
            //     createParticlePath: drawStar,
            //   ),
            // ),
            SafeArea(
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  // Geri dönme butonu
                  Align(
                    alignment: Alignment.topLeft,
                    child: Padding(
                      padding: const EdgeInsets.all(16.0),
                      child: IconButton(
                        icon: const Icon(Icons.arrow_back, color: Colors.white),
                        onPressed: () => Navigator.pop(context),
                      ),
                    ),
                  ),
                  const Spacer(),
                  // Sonuç kartı
                  _buildResultCard(),
                  const Spacer(),
                  // Aşağıdaki butonlar
                  _buildBottomButtons(),
                  const SizedBox(height: 32),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }

  Widget _buildResultCard() {
    final double scorePercentage = (finalScore / totalQuestions) * 100;
    String resultMessage = '';
    Color statusColor;

    if (scorePercentage >= 90) {
      resultMessage = AppLocalizations.of(context)!.excellent;
      statusColor = Colors.green;
    } else if (scorePercentage >= 70) {
      resultMessage = AppLocalizations.of(context)!.veryGood;
      statusColor = Colors.lightGreen;
    } else if (scorePercentage >= 50) {
      resultMessage = 'Orta!';
      statusColor = Colors.yellow;
    } else {
      resultMessage = AppLocalizations.of(context)!.needsImprovement;
      statusColor = Colors.orange;
    }

    return Container(
      margin: const EdgeInsets.symmetric(horizontal: 24),
      decoration: BoxDecoration(
        color: Colors.white.withOpacity(0.1),
        borderRadius: BorderRadius.circular(20),
        boxShadow: [
          BoxShadow(
            color: Colors.black.withOpacity(0.1),
            blurRadius: 10,
            spreadRadius: 1,
          ),
        ],
        border: Border.all(color: Colors.white.withOpacity(0.2), width: 1),
      ),
      // Blur efekti kaldırıldı
      // child: ClipRRect(
      //   borderRadius: BorderRadius.circular(20),
      //   child: BackdropFilter(
      //     filter: ImageFilter.blur(sigmaX: 10, sigmaY: 10),
      child: Padding(
        padding: const EdgeInsets.all(20),
        child: Column(
          mainAxisSize: MainAxisSize.min,
          children: [
            // Kategori bilgisi
            Text(
              widget.categoryName,
              style: const TextStyle(
                fontWeight: FontWeight.bold,
                fontSize: 24,
                color: Colors.white,
              ),
            ),
            const SizedBox(height: 8),
            Text(
              AppLocalizations.of(context)!.quizCompleted,
              style: TextStyle(color: Colors.grey[300], fontSize: 16),
            ),
            const SizedBox(height: 32),
            // Skor yüzdesi
            Stack(
              alignment: Alignment.center,
              children: [
                SizedBox(
                  width: 150,
                  height: 150,
                  child: CircularProgressIndicator(
                    value: scorePercentage / 100,
                    valueColor: AlwaysStoppedAnimation<Color>(statusColor),
                    backgroundColor: Colors.grey.withOpacity(0.2),
                    strokeWidth: 12,
                  ),
                ),
                Column(
                  mainAxisSize: MainAxisSize.min,
                  children: [
                    Text(
                      '${scorePercentage.toInt()}%',
                      style: const TextStyle(
                        fontWeight: FontWeight.bold,
                        fontSize: 32,
                        color: Colors.white,
                      ),
                    ),
                    Text(
                      resultMessage,
                      style: TextStyle(
                        fontWeight: FontWeight.w500,
                        fontSize: 16,
                        color: statusColor,
                      ),
                    ),
                  ],
                ),
              ],
            ),
            const SizedBox(height: 32),
            // Skor detayları
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                _buildStatItem(
                  'Toplam',
                  '$totalQuestions',
                  Icons.quiz,
                  Colors.blue,
                ),
                _buildStatItem(
                  AppLocalizations.of(context)!.correct,
                  '$finalScore',
                  Icons.check_circle,
                  Colors.green,
                ),
                _buildStatItem(
                  AppLocalizations.of(context)!.incorrect,
                  '${totalQuestions - finalScore}',
                  Icons.close,
                  Colors.red,
                ),
              ],
            ),
          ],
        ),
        //   ),
        // ),
      ),
    );
  }

  Widget _buildStatItem(
    String label,
    String value,
    IconData icon,
    Color color,
  ) {
    return Column(
      children: [
        Container(
          padding: const EdgeInsets.all(8),
          decoration: BoxDecoration(
            color: color.withOpacity(0.2),
            shape: BoxShape.circle,
          ),
          child: Icon(icon, color: color, size: 24),
        ),
        const SizedBox(height: 8),
        Text(
          value,
          style: const TextStyle(
            fontWeight: FontWeight.bold,
            fontSize: 20,
            color: Colors.white,
          ),
        ),
        Text(label, style: TextStyle(color: Colors.grey[300], fontSize: 12)),
      ],
    );
  }

  Widget _buildBottomButtons() {
    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        ElevatedButton.icon(
          onPressed: () {
            // Ana sayfaya dön
            Navigator.of(context).popUntil((route) => route.isFirst);
          },
          icon: const Icon(Icons.home),
          label: Text(AppLocalizations.of(context)!.backToHome),
          style: ElevatedButton.styleFrom(
            backgroundColor: Colors.white.withOpacity(0.2),
            foregroundColor: Colors.white,
            padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 12),
            shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(30),
            ),
          ),
        ),
        const SizedBox(width: 16),
        ElevatedButton.icon(
          onPressed: () {
            // Tüm quizlere git
            Navigator.of(context).popUntil((route) => route.isFirst);
            // Bottom navigation'da "Quizler" sekmesine git
            // Burada global navigasyon kullanmak yerine sonra düzenleyeceğiz
          },
          icon: const Icon(Icons.refresh),
          label: Text(AppLocalizations.of(context)!.newQuiz),
          style: ElevatedButton.styleFrom(
            backgroundColor: Colors.blue,
            foregroundColor: Colors.white,
            padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 12),
            shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(30),
            ),
          ),
        ),
      ],
    );
  }

  // Konfeti için yıldız çizme fonksiyonu artık kullanılmıyor
  // Path drawStar(Size size) {
  //   double degToRad(double deg) => deg * (pi / 180.0);

  //   const numberOfPoints = 5;
  //   final halfWidth = size.width / 2;
  //   final externalRadius = halfWidth;
  //   final internalRadius = halfWidth / 2.5;
  //   final degreesPerStep = degToRad(360 / numberOfPoints);
  //   final halfDegreesPerStep = degreesPerStep / 2;
  //   final path = Path();
  //   final fullAngle = degToRad(360);
  //   path.moveTo(halfWidth, 0);

  //   for (double step = 0; step < fullAngle; step += degreesPerStep) {
  //     path.lineTo(
  //       halfWidth + externalRadius * cos(step),
  //       halfWidth + externalRadius * sin(step),
  //     );
  //     path.lineTo(
  //       halfWidth + internalRadius * cos(step + halfDegreesPerStep),
  //       halfWidth + internalRadius * sin(step + halfDegreesPerStep),
  //     );
  //   }
  //   path.close();
  //   return path;
  // }
}
