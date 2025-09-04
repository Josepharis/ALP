import 'package:flutter/material.dart';
import 'package:cloud_firestore/cloud_firestore.dart';
import 'dart:math';
import 'dart:async'; // StreamSubscription için import

import '../services/auth_service.dart';
import '../services/quiz_service.dart';
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
      print(
        "Eksikler sayfası: Yanlış cevap bildirimi alındı, veriler yenileniyor...",
      );
      if (event.isMistakesUpdated) {
        _loadMistakes(forceRefresh: true);
      }
    });

    _loadMistakes(forceRefresh: true);
  }

  @override
  void dispose() {
    // Aboneliği iptal et
    _mistakesSubscription.cancel();
    super.dispose();
  }

  @override
  void didChangeDependencies() {
    super.didChangeDependencies();
    // Ekran tekrar görünür olduğunda verileri güncelle
    _loadMistakes();
  }

  Future<void> _loadMistakes({bool forceRefresh = false}) async {
    // Eğer halen yükleme yapılıyorsa, işlemi tekrarlama
    if (_isLoading) {
      print(
        "_loadMistakes: Zaten yükleme işlemi devam ediyor, işlem iptal edildi",
      );
      return;
    }

    setState(() {
      _isLoading = true;
    });

    try {
      final user = _authService.currentUser;
      print(
        "Eksikler yükleniyor... Kullanıcı giriş yapmış mı? ${user != null} (Zorla yenileme: $forceRefresh)",
      );

      if (user != null) {
        print("Kullanıcı ID: ${user.uid}");

        // Önce eski verileri taşı (eğer varsa)
        print("Eski verileri kontrol ediyorum ve taşıyorum...");
        final migrateResult = await _quizService.migrateMistakeQuestions();
        print(
          "Veri taşıma sonucu: ${migrateResult ? 'Başarılı' : 'Başarısız veya taşınacak veri yok'}",
        );

        // Widget mount kontrolü ekle
        if (!mounted) return;

        // Tüm yanlış soruları getir - önbellekten getir veya zorla yenile
        print("Yanlış sorular getiriliyor... (Zorla yenileme: $forceRefresh)");
        final mistakeQuestions = await _quizService.getMistakeQuestions();
        print("Yanlış soru sayısı: ${mistakeQuestions.length}");

        // Widget mount kontrolü ekle
        if (!mounted) return;

        // Firestore'da doğrudan koleksiyonu kontrol et
        try {
          print("Firestore koleksiyonunu doğrudan kontrol ediyorum...");
          final mistakesRef = FirebaseFirestore.instance
              .collection('user_mistakes')
              .doc(user.uid)
              .collection('questions');

          final snapshot = await mistakesRef.get();
          print("Firestore'da toplam belge sayısı: ${snapshot.docs.length}");

          if (snapshot.docs.isNotEmpty) {
            print("İlk belgenin içeriği: ${snapshot.docs.first.data()}");
          }
        } catch (e) {
          print("Firestore koleksiyon kontrolü hatası: $e");
        }

        // Widget mount kontrolü ekle
        if (!mounted) return;

        if (mistakeQuestions.isEmpty) {
          print("Yanlış soru bulunamadı!");
          setState(() {
            _mistakesByCategory = {};
            _isLoading = false;
          });
          return;
        }

        // Soruları kategorilerine göre grupla
        print("Sorular kategorilere göre gruplandırılıyor...");
        final Map<String, List<Question>> groupedMistakes = {};

        for (var question in mistakeQuestions) {
          final category = question.category ?? 'Diğer'; // Will be localized in UI
          print(
            "Soru: ${question.question.substring(0, min(30, question.question.length))}... - Kategori: $category",
          );

          if (!groupedMistakes.containsKey(category)) {
            groupedMistakes[category] = [];
          }
          groupedMistakes[category]!.add(question);
        }

        print(
          "Gruplama tamamlandı. Kategori sayısı: ${groupedMistakes.length}",
        );
        for (var entry in groupedMistakes.entries) {
          print("Kategori: ${entry.key} - Soru sayısı: ${entry.value.length}");
        }

        // Son bir mount kontrolü
        if (!mounted) return;

        setState(() {
          _mistakesByCategory = groupedMistakes;
          _isLoading = false;
        });
      } else {
        print("Kullanıcı giriş yapmamış!");
        setState(() {
          _isLoading = false;
        });
      }
    } catch (e) {
      print('Eksikler yükleme hatası: $e');
      // Son bir mount kontrolü
      if (!mounted) return;

      setState(() {
        _isLoading = false;
      });
    }
  }

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: _isLoading
          ? const Center(child: CircularProgressIndicator())
          : RefreshIndicator(
              onRefresh: _loadMistakes,
              child: _mistakesByCategory.isEmpty
                  ? _buildEmptyView()
                  : _buildCategoryCards(),
            ),
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
              AppLocalizations.of(context)!.noMistakesMessage,
              textAlign: TextAlign.center,
              style: TextStyle(fontSize: 16, color: Colors.grey[300]),
            ),
          ),
        ],
      ),
    );
  }

  Widget _buildCategoryCards() {
    return Padding(
      padding: const EdgeInsets.all(16.0),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          const Row(
            children: [
              Icon(Icons.assignment_late, color: Colors.blue),
              SizedBox(width: 8),
              Text(
                'Eksikleriniz',
                style: TextStyle(
                  fontSize: 24,
                  fontWeight: FontWeight.bold,
                  color: Colors.white,
                ),
              ),
            ],
          ),
          const SizedBox(height: 4),
          Text(
            'Kategorilere göre yanlış cevapladığınız sorular',
            style: TextStyle(fontSize: 14, color: Colors.grey[400]),
          ),
          const SizedBox(height: 16),
          Expanded(
            child: ListView.builder(
              itemCount: _mistakesByCategory.length,
              itemBuilder: (context, index) {
                final category = _mistakesByCategory.keys.elementAt(index);
                final questions = _mistakesByCategory[category]!;
                return Container(
                  margin: const EdgeInsets.only(bottom: 16.0),
                  child: GestureDetector(
                    onTap: () => _openCategoryMistakesScreen(category),
                    child: Container(
                      decoration: BoxDecoration(
                        gradient: LinearGradient(
                          begin: Alignment.topLeft,
                          end: Alignment.bottomRight,
                          colors: [
                            _getCategoryColor(category),
                            _getCategoryColor(category).withOpacity(0.7),
                          ],
                        ),
                        borderRadius: BorderRadius.circular(20),
                        boxShadow: [
                          BoxShadow(
                            color: _getCategoryColor(category).withOpacity(0.3),
                            blurRadius: 10,
                            spreadRadius: 2,
                          ),
                        ],
                      ),
                      child: Padding(
                        padding: const EdgeInsets.all(16.0),
                        child: Row(
                          children: [
                            Container(
                              padding: const EdgeInsets.all(8),
                              decoration: BoxDecoration(
                                color: Colors.white.withOpacity(0.2),
                                borderRadius: BorderRadius.circular(12),
                              ),
                              child: Icon(
                                _getCategoryIcon(category),
                                color: Colors.white,
                                size: 24,
                              ),
                            ),
                            const SizedBox(width: 12),
                            Expanded(
                              child: Column(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  Text(
                                    category,
                                    style: const TextStyle(
                                      fontSize: 16,
                                      fontWeight: FontWeight.bold,
                                      color: Colors.white,
                                    ),
                                    maxLines: 1,
                                    overflow: TextOverflow.ellipsis,
                                  ),
                                  const SizedBox(height: 2),
                                  Text(
                                    '${questions.length} Soru',
                                    style: TextStyle(
                                      fontSize: 12,
                                      color: Colors.white.withOpacity(0.8),
                                    ),
                                  ),
                                ],
                              ),
                            ),
                            Container(
                              padding: const EdgeInsets.symmetric(
                                horizontal: 8,
                                vertical: 4,
                              ),
                              decoration: BoxDecoration(
                                color: Colors.white.withOpacity(0.2),
                                borderRadius: BorderRadius.circular(16),
                              ),
                              child: const Row(
                                mainAxisSize: MainAxisSize.min,
                                children: [
                                  Text(
                                    'Çalış',
                                    style: TextStyle(
                                      color: Colors.white,
                                      fontWeight: FontWeight.w500,
                                      fontSize: 12,
                                    ),
                                  ),
                                  SizedBox(width: 2),
                                  Icon(
                                    Icons.arrow_forward_ios,
                                    color: Colors.white,
                                    size: 12,
                                  ),
                                ],
                              ),
                            ),
                          ],
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
        builder:
            (context) => CategoryMistakesScreen(
              category: category,
              questions: _mistakesByCategory[category] ?? [],
            ),
      ),
    ).then((_) {
      // Geri dönüldüğünde verileri yenile
      _loadMistakes();
    });
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
}
