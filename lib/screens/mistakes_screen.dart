import 'package:flutter/material.dart';
import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:provider/provider.dart';
import 'dart:async';
import 'dart:ui';

import '../services/auth_service.dart';
import '../services/quiz_service.dart';
import '../services/language_service.dart';
import '../models/question.dart';
import 'category_mistakes_screen.dart';
import '../utils/event_bus.dart';
import '../l10n/app_localizations.dart';

class MistakesScreen extends StatefulWidget {
  const MistakesScreen({super.key});

  @override
  State<MistakesScreen> createState() => _MistakesScreenState();
}

class _MistakesScreenState extends State<MistakesScreen> {
  final AuthService _authService = AuthService();
  final QuizService _quizService = QuizService();
  bool _isLoading = false;

  // EventBus aboneliği için subscription
  late StreamSubscription _mistakesSubscription;

  // Kategoriye göre gruplanmış yanlış cevaplanan sorular
  Map<String, List<Question>> _mistakesByCategory = {};

  @override
  void initState() {
    super.initState();

    // EventBus'a abone ol - yanlış cevap olay bildirimleri için dinleyici ekle
    _mistakesSubscription = EventBus().mistakesUpdatedStream.listen((event) {
      if (event.isMistakesUpdated) {
        _loadMistakes(forceRefresh: true);
      }
    });

    _loadMistakes(forceRefresh: true);
  }

  @override
  void didChangeDependencies() {
    super.didChangeDependencies();
    _loadMistakes(forceRefresh: true);
  }

  @override
  void dispose() {
    _mistakesSubscription.cancel();
    super.dispose();
  }

  Future<void> _loadMistakes({bool forceRefresh = false}) async {
    if (_isLoading) {
      return;
    }

    setState(() {
      _isLoading = true;
    });

    try {
      final user = _authService.currentUser;

      if (user != null) {
        // Önce eski verileri taşı (eğer varsa)
        await _quizService.migrateMistakeQuestions();

        if (!mounted) return;

        // Tüm yanlış soruları getir
        final mistakeQuestions = await _quizService.getMistakeQuestions();

        if (!mounted) return;

        if (mistakeQuestions.isEmpty) {
          setState(() {
            _mistakesByCategory = {};
            _isLoading = false;
          });
          return;
        }

        // Soruları kategorilerine göre grupla
        final Map<String, List<Question>> groupedMistakes = {};

        for (var question in mistakeQuestions) {
          final category = question.category ?? 'Diğer';

          if (!groupedMistakes.containsKey(category)) {
            groupedMistakes[category] = [];
          }
          groupedMistakes[category]!.add(question);
        }

        if (!mounted) return;

        setState(() {
          _mistakesByCategory = groupedMistakes;
          _isLoading = false;
        });
      } else {
        setState(() {
          _isLoading = false;
        });
      }
    } catch (e) {
      if (!mounted) return;
      setState(() {
        _isLoading = false;
      });
    }
  }

  Color _getReadableColor(Color color) {
    final hsl = HSLColor.fromColor(color);
    if (hsl.lightness < 0.6) {
      return hsl.withLightness(0.75).withSaturation(0.95).toColor();
    }
    return color;
  }

  @override
  Widget build(BuildContext context) {
    return Consumer<LanguageService>(
      builder: (context, languageService, child) {
        return SafeArea(
          child: _isLoading
              ? const Center(
                  child: CircularProgressIndicator(
                    valueColor: AlwaysStoppedAnimation<Color>(Colors.white),
                  ),
                )
              : RefreshIndicator(
                  onRefresh: _loadMistakes,
                  color: Colors.white,
                  backgroundColor: const Color(0xFF0F172A),
                  child: _mistakesByCategory.isEmpty
                      ? _buildEmptyView()
                      : _buildCategoryCards(),
                ),
        );
      },
    );
  }

  Widget _buildEmptyView() {
    return Center(
      child: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 24.0),
        child: Container(
          decoration: BoxDecoration(
            gradient: LinearGradient(
              begin: Alignment.topLeft,
              end: Alignment.bottomRight,
              colors: [
                Colors.green.withOpacity(0.15),
                Colors.green.withOpacity(0.02),
              ],
            ),
            borderRadius: BorderRadius.circular(24),
            border: Border.all(
              color: Colors.green.withOpacity(0.15),
              width: 1,
            ),
          ),
          padding: const EdgeInsets.all(32.0),
          child: Column(
            mainAxisSize: MainAxisSize.min,
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Container(
                padding: const EdgeInsets.all(16),
                decoration: BoxDecoration(
                  color: Colors.green.withOpacity(0.12),
                  shape: BoxShape.circle,
                  border: Border.all(
                    color: Colors.green.withOpacity(0.3),
                    width: 2,
                  ),
                  boxShadow: [
                    BoxShadow(
                      color: Colors.green.withOpacity(0.2),
                      blurRadius: 15,
                      spreadRadius: 2,
                    ),
                  ],
                ),
                child: const Icon(
                  Icons.check_circle_outline_rounded,
                  size: 48,
                  color: Colors.green,
                ),
              ),
              const SizedBox(height: 24),
              Text(
                AppLocalizations.of(context)!.congratulationsNoMistakes,
                textAlign: TextAlign.center,
                style: const TextStyle(
                  fontSize: 20,
                  fontWeight: FontWeight.bold,
                  color: Colors.white,
                  letterSpacing: 0.5,
                ),
              ),
              const SizedBox(height: 12),
              Text(
                AppLocalizations.of(context)!.noMistakesMessage,
                textAlign: TextAlign.center,
                style: TextStyle(
                  fontSize: 13,
                  color: Colors.white.withOpacity(0.6),
                  height: 1.4,
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }

  Widget _buildCategoryCards() {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 8.0, vertical: 10.0),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Row(
            children: [
              Container(
                padding: const EdgeInsets.all(8),
                decoration: BoxDecoration(
                  color: Colors.amber.withOpacity(0.12),
                  borderRadius: BorderRadius.circular(12),
                  border: Border.all(
                    color: Colors.amber.withOpacity(0.3),
                    width: 1,
                  ),
                ),
                child: const Icon(
                  Icons.assignment_late_rounded,
                  color: Colors.amber,
                  size: 20,
                ),
              ),
              const SizedBox(width: 12),
              Expanded(
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      AppLocalizations.of(context)!.yourDeficiencies,
                      style: const TextStyle(
                        fontSize: 22,
                        fontWeight: FontWeight.bold,
                        color: Colors.white,
                        letterSpacing: 0.3,
                      ),
                    ),
                    const SizedBox(height: 2),
                    Text(
                      AppLocalizations.of(context)!.mistakesByCategory,
                      style: TextStyle(
                        fontSize: 12,
                        color: Colors.white.withOpacity(0.5),
                      ),
                    ),
                  ],
                ),
              ),
            ],
          ),
          const SizedBox(height: 20),
          Expanded(
            child: ListView.builder(
              physics: const AlwaysScrollableScrollPhysics(),
              itemCount: _mistakesByCategory.length,
              itemBuilder: (context, index) {
                final category = _mistakesByCategory.keys.elementAt(index);
                final questions = _mistakesByCategory[category]!;
                final baseColor = _getCategoryColor(category, index);
                final readableColor = _getReadableColor(baseColor);
                final imagePath = _getCategoryImagePath(category);
                final isSmallScreen = MediaQuery.of(context).size.width < 400;

                return Container(
                  margin: const EdgeInsets.only(bottom: 8.0),
                  child: GestureDetector(
                    onTap: () => _openCategoryMistakesScreen(category),
                    child: Container(
                      decoration: BoxDecoration(
                        gradient: LinearGradient(
                          begin: Alignment.topLeft,
                          end: Alignment.bottomRight,
                          colors: [
                            readableColor.withOpacity(0.15),
                            readableColor.withOpacity(0.01),
                          ],
                        ),
                        borderRadius: BorderRadius.circular(20),
                        boxShadow: [
                          BoxShadow(
                            color: readableColor.withOpacity(0.04),
                            blurRadius: 10,
                            offset: const Offset(0, 4),
                          ),
                        ],
                      ),
                      padding: const EdgeInsets.all(1.0), // border width
                      child: ClipRRect(
                        borderRadius: BorderRadius.circular(19),
                        child: BackdropFilter(
                          filter: ImageFilter.blur(sigmaX: 12, sigmaY: 12),
                          child: Container(
                            decoration: BoxDecoration(
                              color: const Color(0xFF0F172A).withOpacity(0.75), // Deep obsidian background
                              borderRadius: BorderRadius.circular(19),
                            ),
                            child: IntrinsicHeight(
                              child: Row(
                                crossAxisAlignment: CrossAxisAlignment.stretch,
                                children: [
                                  // Fully Embedded Category Image
                                  SizedBox(
                                    width: isSmallScreen ? 64.0 : 80.0,
                                    child: Image.asset(
                                      imagePath,
                                      fit: BoxFit.cover,
                                      errorBuilder: (context, error, stackTrace) {
                                        return Container(
                                          color: readableColor.withOpacity(0.15),
                                          child: Center(
                                            child: Icon(
                                              _getCategoryIcon(category),
                                              color: Colors.white,
                                              size: isSmallScreen ? 20 : 24,
                                            ),
                                          ),
                                        );
                                      },
                                    ),
                                  ),
                                  // Text Content & Action Button
                                  Expanded(
                                    child: Padding(
                                      padding: const EdgeInsets.all(10.0),
                                      child: Row(
                                        children: [
                                          Expanded(
                                            child: Column(
                                              crossAxisAlignment: CrossAxisAlignment.start,
                                              mainAxisAlignment: MainAxisAlignment.center,
                                              children: [
                                                Text(
                                                  category,
                                                  style: const TextStyle(
                                                    fontSize: 14,
                                                    fontWeight: FontWeight.bold,
                                                    color: Colors.white,
                                                    height: 1.25,
                                                    letterSpacing: 0.1,
                                                  ),
                                                  maxLines: 2,
                                                  overflow: TextOverflow.ellipsis,
                                                ),
                                                const SizedBox(height: 6),
                                                Container(
                                                  padding: const EdgeInsets.symmetric(
                                                    horizontal: 8,
                                                    vertical: 3,
                                                  ),
                                                  decoration: BoxDecoration(
                                                    color: readableColor.withOpacity(0.08),
                                                    borderRadius: BorderRadius.circular(8),
                                                    border: Border.all(
                                                      color: readableColor.withOpacity(0.15),
                                                      width: 1,
                                                    ),
                                                  ),
                                                  child: Row(
                                                    mainAxisSize: MainAxisSize.min,
                                                    children: [
                                                      Icon(
                                                        Icons.assignment_late_outlined,
                                                        size: 10,
                                                        color: readableColor.withOpacity(0.9),
                                                      ),
                                                      const SizedBox(width: 4),
                                                      Text(
                                                        '${questions.length} ${AppLocalizations.of(context)!.questions}',
                                                        style: TextStyle(
                                                          fontSize: 9,
                                                          fontWeight: FontWeight.bold,
                                                          color: readableColor,
                                                        ),
                                                      ),
                                                    ],
                                                  ),
                                                ),
                                              ],
                                            ),
                                          ),
                                          const SizedBox(width: 8),
                                          Container(
                                            padding: const EdgeInsets.symmetric(
                                              horizontal: 10,
                                              vertical: 6,
                                            ),
                                            decoration: BoxDecoration(
                                              gradient: LinearGradient(
                                                colors: [
                                                  readableColor.withOpacity(0.3),
                                                  readableColor.withOpacity(0.1),
                                                ],
                                              ),
                                              borderRadius: BorderRadius.circular(12),
                                              border: Border.all(
                                                color: readableColor.withOpacity(0.35),
                                                width: 1,
                                              ),
                                            ),
                                            child: Row(
                                              mainAxisSize: MainAxisSize.min,
                                              children: [
                                                Text(
                                                  AppLocalizations.of(context)!.study,
                                                  style: const TextStyle(
                                                    color: Colors.white,
                                                    fontWeight: FontWeight.bold,
                                                    fontSize: 10,
                                                  ),
                                                ),
                                                const SizedBox(width: 3),
                                                Icon(
                                                  Icons.arrow_forward_ios,
                                                  color: Colors.white.withOpacity(0.9),
                                                  size: 9,
                                                ),
                                              ],
                                            ),
                                          ),
                                        ],
                                      ),
                                    ),
                                  ),
                                ],
                              ),
                            ),
                          ),
                        ),
                      ),
                    ),
                  ),
                );
              },
            ),
          ),
        ],
      ),
    );
  }

  void _openCategoryMistakesScreen(String category) {
    Navigator.push(
      context,
      MaterialPageRoute(
        builder: (context) => CategoryMistakesScreen(
          category: category,
          questions: _mistakesByCategory[category] ?? [],
        ),
      ),
    ).then((_) {
      _loadMistakes();
    });
  }

  IconData _getCategoryIcon(String category) {
    final titleLower = category.toLowerCase();

    if (titleLower.contains('tarih') || titleLower.contains('history')) {
      return Icons.history_edu;
    }
    if (titleLower.contains('inhalasyon') ||
        titleLower.contains('inhalation') ||
        titleLower.contains('ameliyathane') ||
        titleLower.contains('makine') ||
        titleLower.contains('room')) {
      return Icons.local_hospital;
    }
    if (titleLower.contains('solunum') ||
        titleLower.contains('havayolu') ||
        titleLower.contains('respiratory') ||
        titleLower.contains('airway') ||
        titleLower.contains('akciğer') ||
        titleLower.contains('thoracic') ||
        titleLower.contains('toraks')) {
      return Icons.air;
    }
    if (titleLower.contains('kardiyo') ||
        titleLower.contains('kalp') ||
        titleLower.contains('cardio') ||
        titleLower.contains('heart') ||
        titleLower.contains('vascular')) {
      return Icons.favorite;
    }
    if (titleLower.contains('oftalmik') ||
        titleLower.contains('ophthalmic') ||
        titleLower.contains('eye') ||
        titleLower.contains('göz')) {
      return Icons.visibility;
    }
    if (titleLower.contains('ortopedik') ||
        titleLower.contains('orthopedic') ||
        titleLower.contains('bone') ||
        titleLower.contains('kemik')) {
      return Icons.healing;
    }
    if (titleLower.contains('spinal') ||
        titleLower.contains('epidural') ||
        titleLower.contains('blok') ||
        titleLower.contains('sinir') ||
        titleLower.contains('nerve') ||
        titleLower.contains('ağrı') ||
        titleLower.contains('pain')) {
      return Icons.polyline;
    }
    if (titleLower.contains('nöro') ||
        titleLower.contains('beyin') ||
        titleLower.contains('neuro') ||
        titleLower.contains('psych')) {
      return Icons.psychology;
    }
    if (titleLower.contains('karaciğer') ||
        titleLower.contains('hepatic') ||
        titleLower.contains('liver')) {
      return Icons.medication_liquid;
    }
    if (titleLower.contains('endokrin') ||
        titleLower.contains('endocrine') ||
        titleLower.contains('hormon') ||
        titleLower.contains('tiroid')) {
      return Icons.water_drop;
    }
    if (titleLower.contains('pediatri') ||
        titleLower.contains('pediatric') ||
        titleLower.contains('obstetric') ||
        titleLower.contains('obstetrik') ||
        titleLower.contains('child') ||
        titleLower.contains('bebek') ||
        titleLower.contains('çocuk')) {
      return Icons.child_care;
    }
    if (titleLower.contains('böbrek') ||
        titleLower.contains('renal') ||
        titleLower.contains('kidney') ||
        titleLower.contains('genitourinary')) {
      return Icons.grain;
    }
    if (titleLower.contains('farmakoloji') ||
        titleLower.contains('ilaç') ||
        titleLower.contains('anestezik') ||
        titleLower.contains('ajan') ||
        titleLower.contains('drug') ||
        titleLower.contains('pharmac')) {
      return Icons.medical_services;
    }
    if (titleLower.contains('komplikasyon') ||
        titleLower.contains('complication') ||
        titleLower.contains('warning') ||
        titleLower.contains('acil') ||
        titleLower.contains('emergency')) {
      return Icons.warning_amber_rounded;
    }

    return Icons.quiz;
  }

  Color _getCategoryColor(String category, int index) {
    final colors = [
      Colors.blue,
      Colors.purple,
      Colors.teal,
      Colors.orange,
      Colors.pink,
      Colors.indigo,
    ];
    return colors[index % colors.length];
  }

  String _getCategoryImagePath(String title) {
    final titleLower = title.toLowerCase();

    if (titleLower.contains('tarih') || titleLower.contains('history')) {
      return 'assets/images/img_history.png';
    }
    if (titleLower.contains('inhalasyon') || titleLower.contains('inhalation')) {
      return 'assets/images/img_operating_room.png';
    }
    if (titleLower.contains('ameliyathane') ||
        titleLower.contains('makine') ||
        titleLower.contains('room') ||
        titleLower.contains('workstation')) {
      return 'assets/images/img_operating_room.png';
    }
    if (titleLower.contains('solunum') ||
        titleLower.contains('havayolu') ||
        titleLower.contains('respiratory') ||
        titleLower.contains('airway') ||
        titleLower.contains('akciğer') ||
        titleLower.contains('thoracic') ||
        titleLower.contains('toraks')) {
      return 'assets/images/img_lungs.png';
    }
    if (titleLower.contains('kardiyo') ||
        titleLower.contains('kalp') ||
        titleLower.contains('cardio') ||
        titleLower.contains('heart') ||
        titleLower.contains('vascular')) {
      return 'assets/images/img_heart.png';
    }
    if (titleLower.contains('oftalmik') ||
        titleLower.contains('ophthalmic') ||
        titleLower.contains('eye') ||
        titleLower.contains('göz')) {
      return 'assets/images/img_eye.png';
    }
    if (titleLower.contains('ortopedik') ||
        titleLower.contains('orthopedic') ||
        titleLower.contains('bone') ||
        titleLower.contains('kemik') ||
        titleLower.contains('eklem') ||
        titleLower.contains('joint')) {
      return 'assets/images/img_ortho.png';
    }
    if (titleLower.contains('spinal') ||
        titleLower.contains('epidural') ||
        titleLower.contains('kaudal') ||
        titleLower.contains('caudal') ||
        titleLower.contains('blok') ||
        titleLower.contains('block') ||
        titleLower.contains('sinir') ||
        titleLower.contains('nerve') ||
        titleLower.contains('ağrı') ||
        titleLower.contains('pain')) {
      return 'assets/images/img_spine.png';
    }
    if (titleLower.contains('nöro') ||
        titleLower.contains('beyin') ||
        titleLower.contains('neuro') ||
        titleLower.contains('psych') ||
        titleLower.contains('neuromuscular') ||
        titleLower.contains('nöromüsküler')) {
      return 'assets/images/img_brain.png';
    }
    if (titleLower.contains('karaciğer') ||
        titleLower.contains('hepatic') ||
        titleLower.contains('liver')) {
      return 'assets/images/img_liver.png';
    }
    if (titleLower.contains('endokrin') ||
        titleLower.contains('endocrine') ||
        titleLower.contains('hormon') ||
        titleLower.contains('hormone') ||
        titleLower.contains('tiroid') ||
        titleLower.contains('thyroid')) {
      return 'assets/images/img_endocrine.png';
    }
    if (titleLower.contains('pediatri') ||
        titleLower.contains('pediatric') ||
        titleLower.contains('obstetric') ||
        titleLower.contains('obstetrik') ||
        titleLower.contains('maternal') ||
        titleLower.contains('gebe') ||
        titleLower.contains('child') ||
        titleLower.contains('fetal') ||
        titleLower.contains('bebek') ||
        titleLower.contains('çocuk')) {
      return 'assets/images/img_pediatric.png';
    }
    if (titleLower.contains('böbrek') ||
        titleLower.contains('sıvı') ||
        titleLower.contains('renal') ||
        titleLower.contains('kidney') ||
        titleLower.contains('fluid') ||
        titleLower.contains('electrolyte') ||
        titleLower.contains('asit-baz') ||
        titleLower.contains('acid-base') ||
        titleLower.contains('idrar') ||
        titleLower.contains('genitourinary')) {
      return 'assets/images/img_kidney.png';
    }
    if (titleLower.contains('farmakoloji') ||
        titleLower.contains('ilaç') ||
        titleLower.contains('anestezik') ||
        titleLower.contains('ajan') ||
        titleLower.contains('agonist') ||
        titleLower.contains('antagonist') ||
        titleLower.contains('drug') ||
        titleLower.contains('pharmac') ||
        titleLower.contains('agent')) {
      return 'assets/images/img_pharmacology.png';
    }
    if (titleLower.contains('komplikasyon') ||
        titleLower.contains('complication') ||
        titleLower.contains('cpr') ||
        titleLower.contains('resüsitasyon') ||
        titleLower.contains('sepsis') ||
        titleLower.contains('warning') ||
        titleLower.contains('acil') ||
        titleLower.contains('trauma') ||
        titleLower.contains('travma') ||
        titleLower.contains('emergency') ||
        titleLower.contains('erc') ||
        titleLower.contains('guideline') ||
        titleLower.contains('kılavuz')) {
      return 'assets/images/img_warning.png';
    }

    return 'assets/images/img_operating_room.png';
  }
}
