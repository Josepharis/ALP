import 'package:flutter/material.dart';
import 'package:cloud_firestore/cloud_firestore.dart';
import '../services/auth_service.dart';
import '../theme/app_theme.dart';

import '../data/anesthesia_application_questions.dart';
import '../data/respiratory_system_questions.dart';
import '../data/cardiovascular_monitoring_questions.dart';
import '../data/pharmacological_principles_questions.dart';
import '../data/operating_room_environment_questions.dart';
import '../data/non_cardiovascular_monitoring_questions.dart';
import '../data/anesthesia_workstation_questions.dart';
import '../data/preoperative_assessment_questions.dart';
import '../questions/airway_management_questions.dart';
import '../questions/cardiovascular_physiology_questions.dart';
import '../questions/cardiovascular_surgery_questions.dart';
import '../questions/respiratory_diseases_questions.dart';
import '../questions/respiratory_physiology_questions.dart';

import 'add_question_screen.dart';

class AdminScreen extends StatefulWidget {
  const AdminScreen({super.key});

  @override
  _AdminScreenState createState() => _AdminScreenState();
}

class _AdminScreenState extends State<AdminScreen>
    with SingleTickerProviderStateMixin {
  late TabController _tabController;
  final AuthService _authService = AuthService();
  String _selectedCategory = 'Anestezi';
  int _currentTabIndex = 0;
  List<String> _categories = [];

  @override
  void initState() {
    super.initState();
    _tabController = TabController(length: 2, vsync: this);
    _tabController.addListener(() {
      setState(() {
        _currentTabIndex = _tabController.index;
      });
    });
    _loadCategories();
  }

  @override
  void dispose() {
    _tabController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Admin Panel'),
        backgroundColor: Colors.indigo.shade900,
        actions: [
          IconButton(
            icon: const Icon(Icons.upload_file),
            onPressed: () {
              _showDataImportDialog();
            },
            tooltip: 'Veri Aktar',
          ),
          IconButton(
            icon: const Icon(Icons.exit_to_app),
            onPressed: () async {
              await _authService.signOut();
              if (mounted) {
                Navigator.of(context).pushReplacementNamed('/login');
              }
            },
            tooltip: 'Çıkış Yap',
          ),
        ],
        bottom: TabBar(
          controller: _tabController,
          tabs: const [
            Tab(text: 'Soru Yönetimi', icon: Icon(Icons.question_answer)),
            Tab(text: 'Kullanıcılar', icon: Icon(Icons.people)),
          ],
        ),
      ),
      body: TabBarView(
        controller: _tabController,
        children: [_buildQuestionManagement(), _buildUserManagement()],
      ),
      floatingActionButton:
          _currentTabIndex == 0
              ? FloatingActionButton(
                backgroundColor: Colors.indigo.shade900,
                onPressed: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(
                      builder: (context) => const AddQuestionScreen(),
                    ),
                  );
                },
                child: const Icon(Icons.add),
              )
              : null,
    );
  }

  Widget _buildQuestionManagement() {
    return Container(
      decoration: BoxDecoration(
        gradient: LinearGradient(
          begin: Alignment.topLeft,
          end: Alignment.bottomRight,
          colors: [Colors.blue.shade900, Colors.indigo.shade900],
        ),
      ),
      child: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            _buildSectionHeader('Soru Yönetimi'),
            const SizedBox(height: 20),
            _buildQuizCategorySelector(),
            const SizedBox(height: 20),
            Expanded(child: _buildQuestionsList()),
          ],
        ),
      ),
    );
  }

  Widget _buildUserManagement() {
    return Container(
      decoration: BoxDecoration(
        gradient: LinearGradient(
          begin: Alignment.topLeft,
          end: Alignment.bottomRight,
          colors: [Colors.blue.shade900, Colors.indigo.shade900],
        ),
      ),
      child: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            _buildSectionHeader('Kullanıcı Yönetimi'),
            const SizedBox(height: 20),
            Expanded(child: _buildUsersList()),
          ],
        ),
      ),
    );
  }

  Widget _buildSectionHeader(String title) {
    return Container(
      padding: const EdgeInsets.symmetric(vertical: 8, horizontal: 12),
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(8),
        color: Colors.white.withOpacity(0.1),
      ),
      child: Row(
        children: [
          Icon(
            title == 'Soru Yönetimi' ? Icons.quiz : Icons.people,
            color: Colors.white,
          ),
          const SizedBox(width: 8),
          Text(
            title,
            style: const TextStyle(
              fontSize: 18,
              fontWeight: FontWeight.bold,
              color: Colors.white,
            ),
          ),
        ],
      ),
    );
  }

  Widget _buildQuizCategorySelector() {
    return Container(
      padding: const EdgeInsets.all(16),
      decoration: BoxDecoration(
        color: Colors.white.withOpacity(0.1),
        borderRadius: BorderRadius.circular(12),
        border: Border.all(color: Colors.white.withOpacity(0.2)),
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          const Text(
            'Quiz Seçimi',
            style: TextStyle(
              fontSize: 16,
              fontWeight: FontWeight.bold,
              color: Colors.white,
            ),
          ),
          const SizedBox(height: 12),
          DropdownButton<String>(
            value: _selectedCategory,
            dropdownColor: Colors.indigo.shade700,
            style: const TextStyle(color: Colors.white),
            underline: Container(height: 2, color: Colors.blue.shade200),
            onChanged: (String? newValue) {
              if (newValue != null) {
                setState(() {
                  _selectedCategory = newValue;
                });
              }
            },
            items:
                _categories.isEmpty
                    ? [
                      const DropdownMenuItem<String>(
                        value: 'Anestezi',
                        child: Text('Anestezi'),
                      ),
                    ]
                    : _categories.map<DropdownMenuItem<String>>((String value) {
                      return DropdownMenuItem<String>(
                        value: value,
                        child: Text(value),
                      );
                    }).toList(),
          ),
        ],
      ),
    );
  }

  Widget _buildQuestionsList() {
    // Firestore'dan soruları çek
    return StreamBuilder<QuerySnapshot>(
      stream:
          FirebaseFirestore.instance
              .collection('quizzes')
              .doc(_selectedCategory)
              .collection('questions')
              .snapshots(),
      builder: (context, snapshot) {
        if (snapshot.connectionState == ConnectionState.waiting) {
          return const Center(child: CircularProgressIndicator());
        }

        if (snapshot.hasError) {
          return Center(
            child: Text(
              'Sorular yüklenirken hata oluştu: ${snapshot.error}',
              style: const TextStyle(color: Colors.white),
            ),
          );
        }

        if (!snapshot.hasData || snapshot.data!.docs.isEmpty) {
          return const Center(
            child: Text(
              'Bu kategoride henüz soru bulunmamaktadır.',
              style: TextStyle(color: Colors.white),
            ),
          );
        }

        // Soruları listele
        return ListView.builder(
          itemCount: snapshot.data!.docs.length,
          itemBuilder: (context, index) {
            final questionDoc = snapshot.data!.docs[index];
            final questionData = questionDoc.data() as Map<String, dynamic>;
            final String questionText =
                questionData['question'] ?? 'Soru metni bulunamadı';
            final List<dynamic> options = questionData['options'] ?? [];

            return Card(
              margin: const EdgeInsets.only(bottom: 12),
              color: Colors.white.withOpacity(0.1),
              shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(12),
              ),
              child: ListTile(
                title: Text(
                  questionText,
                  style: const TextStyle(color: Colors.white),
                ),
                subtitle: Text(
                  'Şık sayısı: ${options.length}',
                  style: TextStyle(color: Colors.grey.shade400),
                ),
                trailing: Row(
                  mainAxisSize: MainAxisSize.min,
                  children: [
                    IconButton(
                      icon: const Icon(Icons.edit, color: Colors.blue),
                      onPressed: () {
                        Navigator.push(
                          context,
                          MaterialPageRoute(
                            builder:
                                (context) => AddQuestionScreen(
                                  editMode: true,
                                  questionData: questionData,
                                  questionId: questionDoc.id,
                                  category: _selectedCategory,
                                ),
                          ),
                        );
                      },
                    ),
                    IconButton(
                      icon: const Icon(Icons.delete, color: Colors.red),
                      onPressed: () {
                        _deleteQuestion(questionDoc.id);
                      },
                    ),
                  ],
                ),
              ),
            );
          },
        );
      },
    );
  }

  // Soruyu silme işlemi
  Future<void> _deleteQuestion(String questionId) async {
    // Silme onayı
    bool? confirm = await showDialog<bool>(
      context: context,
      builder:
          (context) => AlertDialog(
            backgroundColor: Colors.indigo.shade900,
            title: const Text(
              'Soruyu Sil',
              style: TextStyle(color: Colors.white),
            ),
            content: const Text(
              'Bu soruyu silmek istediğinizden emin misiniz?',
              style: TextStyle(color: Colors.white),
            ),
            actions: [
              TextButton(
                onPressed: () => Navigator.of(context).pop(false),
                child: const Text(
                  'İptal',
                  style: TextStyle(color: Colors.white),
                ),
              ),
              ElevatedButton(
                onPressed: () => Navigator.of(context).pop(true),
                style: ElevatedButton.styleFrom(backgroundColor: Colors.red),
                child: const Text('Sil'),
              ),
            ],
          ),
    );

    if (confirm == true) {
      try {
        await FirebaseFirestore.instance
            .collection('quizzes')
            .doc(_selectedCategory)
            .collection('questions')
            .doc(questionId)
            .delete();

        if (mounted) {
          ScaffoldMessenger.of(context).showSnackBar(
            const SnackBar(
              content: Text('Soru başarıyla silindi'),
              backgroundColor: Colors.green,
            ),
          );
        }
      } catch (e) {
        if (mounted) {
          ScaffoldMessenger.of(context).showSnackBar(
            SnackBar(
              content: Text('Soru silinirken hata oluştu: $e'),
              backgroundColor: Colors.red,
            ),
          );
        }
      }
    }
  }

  Widget _buildUsersList() {
    // Firestore'dan kullanıcıları çek
    return StreamBuilder<QuerySnapshot>(
      stream: FirebaseFirestore.instance.collection('users').snapshots(),
      builder: (context, snapshot) {
        if (snapshot.connectionState == ConnectionState.waiting) {
          return const Center(child: CircularProgressIndicator());
        }

        if (snapshot.hasError) {
          return Center(
            child: Text(
              'Kullanıcılar yüklenirken hata oluştu: ${snapshot.error}',
              style: const TextStyle(color: Colors.white),
            ),
          );
        }

        if (!snapshot.hasData || snapshot.data!.docs.isEmpty) {
          return const Center(
            child: Text(
              'Henüz kullanıcı bulunmamaktadır.',
              style: TextStyle(color: Colors.white),
            ),
          );
        }

        // Kullanıcıları listele
        return ListView.builder(
          itemCount: snapshot.data!.docs.length,
          itemBuilder: (context, index) {
            final userDoc = snapshot.data!.docs[index];
            final userData = userDoc.data() as Map<String, dynamic>;
            final bool isAdmin = userData['isAdmin'] ?? false;
            final String email = userData['email'] ?? 'Email yok';

            return Card(
              margin: const EdgeInsets.only(bottom: 12),
              color: Colors.white.withOpacity(0.1),
              shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(12),
              ),
              child: ListTile(
                leading: CircleAvatar(
                  backgroundColor: isAdmin ? Colors.amber : Colors.blue,
                  child: Icon(
                    isAdmin ? Icons.admin_panel_settings : Icons.person,
                    color: Colors.white,
                  ),
                ),
                title: Text(email, style: const TextStyle(color: Colors.white)),
                subtitle: Text(
                  isAdmin ? 'Admin' : 'Standart Kullanıcı',
                  style: TextStyle(color: Colors.grey.shade400),
                ),
                trailing: Switch(
                  value: isAdmin,
                  activeColor: Colors.amber,
                  onChanged: (newValue) {
                    // Admin yetkisi değiştirme
                    _updateUserAdminStatus(userDoc.id, newValue);
                  },
                ),
              ),
            );
          },
        );
      },
    );
  }

  // Kullanıcının admin durumunu güncelle
  Future<void> _updateUserAdminStatus(String userId, bool isAdmin) async {
    try {
      await FirebaseFirestore.instance.collection('users').doc(userId).update({
        'isAdmin': isAdmin,
      });

      ScaffoldMessenger.of(context).showSnackBar(
        SnackBar(
          content: Text(
            'Kullanıcı yetkisi ${isAdmin ? 'admin' : 'standart kullanıcı'} olarak güncellendi',
          ),
          backgroundColor: Colors.green,
        ),
      );
    } catch (e) {
      ScaffoldMessenger.of(context).showSnackBar(
        SnackBar(
          content: Text('Yetki güncellenirken hata oluştu: $e'),
          backgroundColor: Colors.red,
        ),
      );
    }
  }

  // Veri aktarma işlemi için dialog
  void _showDataImportDialog() {
    showDialog(
      context: context,
      builder: (BuildContext context) {
        return AlertDialog(
          backgroundColor: Colors.indigo.shade900,
          title: const Text(
            'Veri Aktarma',
            style: TextStyle(color: Colors.white),
          ),
          content: Column(
            mainAxisSize: MainAxisSize.min,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              const Text(
                'Quiz ve soru verilerini Firestore\'a aktarmak istiyor musunuz?',
                style: TextStyle(color: Colors.white),
              ),
              const SizedBox(height: 12),
              const Text(
                'Not: Bu işlem, uygulamadaki tanımlı tüm quiz\'leri ve soruları Firebase veritabanına aktaracaktır. Eğer veritabanında halihazırda quizler varsa, üzerine yazarak içerikleri güncelleyecektir.',
                style: TextStyle(color: Colors.grey, fontSize: 12),
              ),
            ],
          ),
          actions: [
            TextButton(
              onPressed: () {
                Navigator.of(context).pop();
              },
              child: const Text('İptal', style: TextStyle(color: Colors.white)),
            ),
            ElevatedButton(
              onPressed: () {
                Navigator.of(context).pop();
                _importQuestionsToFirestore();
              },
              style: ElevatedButton.styleFrom(
                backgroundColor: Colors.blue.shade700,
              ),
              child: const Text('Aktarımı Başlat'),
            ),
          ],
        );
      },
    );
  }

  // Soruları Firestore'a aktarma işlemi
  Future<void> _importQuestionsToFirestore() async {
    try {
      // Loading göster
      showDialog(
        context: context,
        barrierDismissible: false,
        builder: (BuildContext context) {
          return AlertDialog(
            backgroundColor: Colors.indigo.shade900,
            content: Column(
              mainAxisSize: MainAxisSize.min,
              children: [
                const CircularProgressIndicator(),
                const SizedBox(height: 16),
                const Text(
                  'Veriler aktarılıyor...',
                  style: TextStyle(color: Colors.white),
                ),
              ],
            ),
          );
        },
      );

      print("Veri aktarma işlemi başlatılıyor...");

      // Firestore'u tamamen temizleyelim mi diye soralım
      bool shouldClearFirestore = false;

      try {
        final querySnapshot =
            await FirebaseFirestore.instance.collection('quizzes').get();
        if (querySnapshot.docs.isNotEmpty) {
          // Bu kısmı kapatıyorum, otomatik olarak üzerine yazacağız
          // shouldClearFirestore = await _showClearFirestoreDialog() ?? false;
        }
      } catch (e) {
        print("Firestore kontrolü sırasında hata: $e");
      }

      // Eğer Firestore'u temizlememiz gerekiyorsa
      if (shouldClearFirestore) {
        print("Firestore temizleniyor...");
        final batch = FirebaseFirestore.instance.batch();
        final querySnapshot =
            await FirebaseFirestore.instance.collection('quizzes').get();

        for (var doc in querySnapshot.docs) {
          batch.delete(doc.reference);
        }

        await batch.commit();
        print("Firestore temizlendi");
      }

      int totalQuestions = 0;

      // Her quiz için bir belge oluşturalım
      final List<String> quizzes = [
        'Anestezi Uygulaması',
        'Solunum Sistemleri',
        'Kardiyovasküler Monitörizasyon',
        'Farmakolojik Prensipler',
        'Ameliyathane Ortamı',
        'Kardiyovasküler Dışı Monitörizasyon',
        'Anestezi İş İstasyonu',
        'Preoperatif Değerlendirme',
        'Bölüm 19 - Havayolu Yönetimi',
        'Kardiyovasküler Fizyoloji ve Anestezi',
        'Kardiyovasküler Cerrahide Anestezi',
        'Solunum Hastalıklarında Anestezi',
      ];

      // Ana quizzes koleksiyonunda quizleri oluşturalım
      for (var quiz in quizzes) {
        print("$quiz quizi oluşturuluyor...");
        await FirebaseFirestore.instance.collection('quizzes').doc(quiz).set({
          'name': quiz,
          'createdAt': FieldValue.serverTimestamp(),
        });
      }

      // Şimda her kategori için soruları ekleyelim

      // Anestezi Uygulaması soruları
      if (anesthesiaApplicationQuestions.isNotEmpty) {
        print(
          "Anestezi Uygulaması quizi için sorular aktarılıyor: ${anesthesiaApplicationQuestions.length} soru",
        );
        for (var question in anesthesiaApplicationQuestions) {
          await FirebaseFirestore.instance
              .collection('quizzes')
              .doc('Anestezi Uygulaması')
              .collection('questions')
              .add({
                'question': question.question,
                'options': question.options,
                'correctAnswerIndex': question.correctAnswerIndex,
                'explanation': question.explanation,
                'premises': question.premises,
                'references': question.references,
                'category': question.category,
                'difficulty': question.difficulty,
                'createdAt': FieldValue.serverTimestamp(),
              });
          totalQuestions++;
        }
        print("Anestezi Uygulaması quizi için sorular aktarıldı");
      }

      // Solunum Sistemleri soruları
      if (respiratorySystemQuestions.isNotEmpty) {
        print(
          "Solunum Sistemleri quizi için sorular aktarılıyor: ${respiratorySystemQuestions.length} soru",
        );
        for (var question in respiratorySystemQuestions) {
          await FirebaseFirestore.instance
              .collection('quizzes')
              .doc('Solunum Sistemleri')
              .collection('questions')
              .add({
                'question': question.question,
                'options': question.options,
                'correctAnswerIndex': question.correctAnswerIndex,
                'explanation': question.explanation,
                'premises': question.premises,
                'references': question.references,
                'category': question.category,
                'difficulty': question.difficulty,
                'createdAt': FieldValue.serverTimestamp(),
              });
          totalQuestions++;
        }
        print("Solunum Sistemleri quizi için sorular aktarıldı");
      }

      // Kardiyovasküler Monitörizasyon soruları
      if (cardiovascularMonitoringQuestions.isNotEmpty) {
        print(
          "Kardiyovasküler Monitörizasyon quizi için sorular aktarılıyor: ${cardiovascularMonitoringQuestions.length} soru",
        );
        for (var question in cardiovascularMonitoringQuestions) {
          await FirebaseFirestore.instance
              .collection('quizzes')
              .doc('Kardiyovasküler Monitörizasyon')
              .collection('questions')
              .add({
                'question': question.question,
                'options': question.options,
                'correctAnswerIndex': question.correctAnswerIndex,
                'explanation': question.explanation,
                'premises': question.premises,
                'references': question.references,
                'category': question.category,
                'difficulty': question.difficulty,
                'createdAt': FieldValue.serverTimestamp(),
              });
          totalQuestions++;
        }
        print("Kardiyovasküler Monitörizasyon quizi için sorular aktarıldı");
      }

      // Farmakolojik Prensipler soruları
      if (pharmacologicalPrinciplesQuestions.isNotEmpty) {
        print(
          "Farmakolojik Prensipler quizi için sorular aktarılıyor: ${pharmacologicalPrinciplesQuestions.length} soru",
        );
        for (var question in pharmacologicalPrinciplesQuestions) {
          await FirebaseFirestore.instance
              .collection('quizzes')
              .doc('Farmakolojik Prensipler')
              .collection('questions')
              .add({
                'question': question.question,
                'options': question.options,
                'correctAnswerIndex': question.correctAnswerIndex,
                'explanation': question.explanation,
                'premises': question.premises,
                'references': question.references,
                'category': question.category,
                'difficulty': question.difficulty,
                'createdAt': FieldValue.serverTimestamp(),
              });
          totalQuestions++;
        }
        print("Farmakolojik Prensipler quizi için sorular aktarıldı");
      }

      // Ameliyathane Ortamı soruları
      if (operatingRoomEnvironmentQuestions.isNotEmpty) {
        print(
          "Ameliyathane Ortamı quizi için sorular aktarılıyor: ${operatingRoomEnvironmentQuestions.length} soru",
        );
        for (var question in operatingRoomEnvironmentQuestions) {
          await FirebaseFirestore.instance
              .collection('quizzes')
              .doc('Ameliyathane Ortamı')
              .collection('questions')
              .add({
                'question': question.question,
                'options': question.options,
                'correctAnswerIndex': question.correctAnswerIndex,
                'explanation': question.explanation,
                'premises': question.premises,
                'references': question.references,
                'category': question.category,
                'difficulty': question.difficulty,
                'createdAt': FieldValue.serverTimestamp(),
              });
          totalQuestions++;
        }
        print("Ameliyathane Ortamı quizi için sorular aktarıldı");
      }

      // Kardiyovasküler Dışı Monitörizasyon soruları
      if (nonCardiovascularMonitoringQuestions.isNotEmpty) {
        print(
          "Kardiyovasküler Dışı Monitörizasyon quizi için sorular aktarılıyor: ${nonCardiovascularMonitoringQuestions.length} soru",
        );
        for (var question in nonCardiovascularMonitoringQuestions) {
          await FirebaseFirestore.instance
              .collection('quizzes')
              .doc('Kardiyovasküler Dışı Monitörizasyon')
              .collection('questions')
              .add({
                'question': question.question,
                'options': question.options,
                'correctAnswerIndex': question.correctAnswerIndex,
                'explanation': question.explanation,
                'premises': question.premises,
                'references': question.references,
                'category': question.category,
                'difficulty': question.difficulty,
                'createdAt': FieldValue.serverTimestamp(),
              });
          totalQuestions++;
        }
        print(
          "Kardiyovasküler Dışı Monitörizasyon quizi için sorular aktarıldı",
        );
      }

      // Anestezi İş İstasyonu soruları
      if (anesthesiaWorkstationQuestions.isNotEmpty) {
        print(
          "Anestezi İş İstasyonu quizi için sorular aktarılıyor: ${anesthesiaWorkstationQuestions.length} soru",
        );
        for (var question in anesthesiaWorkstationQuestions) {
          await FirebaseFirestore.instance
              .collection('quizzes')
              .doc('Anestezi İş İstasyonu')
              .collection('questions')
              .add({
                'question': question.question,
                'options': question.options,
                'correctAnswerIndex': question.correctAnswerIndex,
                'explanation': question.explanation,
                'premises': question.premises,
                'references': question.references,
                'category': question.category,
                'difficulty': question.difficulty,
                'createdAt': FieldValue.serverTimestamp(),
              });
          totalQuestions++;
        }
        print("Anestezi İş İstasyonu quizi için sorular aktarıldı");
      }

      // Preoperative Assessment soruları
      if (preoperativeAssessmentQuestions.isNotEmpty) {
        print(
          "Preoperatif Değerlendirme quizi için sorular aktarılıyor: ${preoperativeAssessmentQuestions.length} soru",
        );
        for (var question in preoperativeAssessmentQuestions) {
          await FirebaseFirestore.instance
              .collection('quizzes')
              .doc('Preoperatif Değerlendirme')
              .collection('questions')
              .add({
                'question': question.question,
                'options': question.options,
                'correctAnswerIndex': question.correctAnswerIndex,
                'explanation': question.explanation,
                'premises': question.premises,
                'references': question.references,
                'category': question.category,
                'difficulty': question.difficulty,
                'createdAt': FieldValue.serverTimestamp(),
              });
          totalQuestions++;
        }
        print("Preoperatif Değerlendirme quizi için sorular aktarıldı");
      }

      // Bölüm 19 - Havayolu Yönetimi soruları
      if (airwayManagementQuestions.isNotEmpty) {
        print(
          "Bölüm 19 - Havayolu Yönetimi quizi için sorular aktarılıyor: ${airwayManagementQuestions.length} soru",
        );
        for (var question in airwayManagementQuestions) {
          await FirebaseFirestore.instance
              .collection('quizzes')
              .doc('Bölüm 19 - Havayolu Yönetimi')
              .collection('questions')
              .add({
                'question': question.question,
                'options': question.options,
                'correctAnswerIndex': question.correctAnswerIndex,
                'explanation': question.explanation,
                'premises': question.premises,
                'references': question.references,
                'category': question.category,
                'difficulty': question.difficulty,
                'createdAt': FieldValue.serverTimestamp(),
              });
          totalQuestions++;
        }
        print("Bölüm 19 - Havayolu Yönetimi quizi için sorular aktarıldı");
      }

      // Kardiyovasküler Fizyoloji ve Anestezi soruları
      if (cardiovascularPhysiologyQuestions.isNotEmpty) {
        print(
          "Kardiyovasküler Fizyoloji ve Anestezi quizi için sorular aktarılıyor: ${cardiovascularPhysiologyQuestions.length} soru",
        );
        for (var question in cardiovascularPhysiologyQuestions) {
          await FirebaseFirestore.instance
              .collection('quizzes')
              .doc('Kardiyovasküler Fizyoloji ve Anestezi')
              .collection('questions')
              .add({
                'question': question.question,
                'options': question.options,
                'correctAnswerIndex': question.correctAnswerIndex,
                'explanation': question.explanation,
                'premises': question.premises,
                'references': question.references,
                'category': question.category,
                'difficulty': question.difficulty,
                'createdAt': FieldValue.serverTimestamp(),
              });
          totalQuestions++;
        }
        print(
          "Kardiyovasküler Fizyoloji ve Anestezi quizi için sorular aktarıldı",
        );
      }

      // Kardiyovasküler Cerrahide Anestezi soruları
      if (cardiovascularSurgeryQuestions.isNotEmpty) {
        print(
          "Kardiyovasküler Cerrahide Anestezi quizi için sorular aktarılıyor: ${cardiovascularSurgeryQuestions.length} soru",
        );
        for (var question in cardiovascularSurgeryQuestions) {
          await FirebaseFirestore.instance
              .collection('quizzes')
              .doc('Kardiyovasküler Cerrahide Anestezi')
              .collection('questions')
              .add({
                'question': question.question,
                'options': question.options,
                'correctAnswerIndex': question.correctAnswerIndex,
                'explanation': question.explanation,
                'premises': question.premises,
                'references': question.references,
                'category': question.category,
                'difficulty': question.difficulty,
                'createdAt': FieldValue.serverTimestamp(),
              });
          totalQuestions++;
        }
        print(
          "Kardiyovasküler Cerrahide Anestezi quizi için sorular aktarıldı",
        );
      }

      // Solunum Hastalıklarında Anestezi soruları
      if (respiratoryDiseasesQuestions.isNotEmpty) {
        print(
          "Solunum Hastalıklarında Anestezi quizi için sorular aktarılıyor: ${respiratoryDiseasesQuestions.length} soru",
        );
        for (var question in respiratoryDiseasesQuestions) {
          await FirebaseFirestore.instance
              .collection('quizzes')
              .doc('Solunum Hastalıklarında Anestezi')
              .collection('questions')
              .add({
                'question': question.question,
                'options': question.options,
                'correctAnswerIndex': question.correctAnswerIndex,
                'explanation': question.explanation,
                'premises': question.premises,
                'references': question.references,
                'category': question.category,
                'difficulty': question.difficulty,
                'createdAt': FieldValue.serverTimestamp(),
              });
          totalQuestions++;
        }
        print("Solunum Hastalıklarında Anestezi quizi için sorular aktarıldı");
      }

      // Solunum Fizyolojisi ve Anestezi soruları
      if (respiratoryPhysiologyQuestions.isNotEmpty) {
        print(
          "Solunum Fizyolojisi quizi için sorular aktarılıyor: ${respiratoryPhysiologyQuestions.length} soru",
        );
        for (var question in respiratoryPhysiologyQuestions) {
          await FirebaseFirestore.instance
              .collection('quizzes')
              .doc('Solunum Fizyolojisi')
              .collection('questions')
              .add({
                'question': question.question,
                'options': question.options,
                'correctAnswerIndex': question.correctAnswerIndex,
                'explanation': question.explanation,
                'premises': question.premises,
                'references': question.references,
                'category': question.category,
                'difficulty': question.difficulty,
                'createdAt': FieldValue.serverTimestamp(),
              });
          totalQuestions++;
        }
        print("Solunum Fizyolojisi quizi için sorular aktarıldı");
      }

      // Yükleme tamamlandı, kategorileri yenile
      await _loadCategories();

      // Loading dialogu kapat
      if (mounted) {
        Navigator.of(context).pop();

        // Başarılı mesajı göster
        ScaffoldMessenger.of(context).showSnackBar(
          SnackBar(
            content: Text('$totalQuestions soru başarıyla aktarıldı!'),
            backgroundColor: Colors.green,
          ),
        );
      }
    } catch (e) {
      print("Veri aktarma hatası: $e");
      // Loading dialogu kapat
      if (mounted) {
        Navigator.of(context).pop();

        // Hata mesajı göster
        ScaffoldMessenger.of(context).showSnackBar(
          SnackBar(
            content: Text('Veri aktarma sırasında hata oluştu: $e'),
            backgroundColor: Colors.red,
          ),
        );
      }
    }
  }

  // Quiz'leri yükle
  Future<void> _loadCategories() async {
    try {
      print("Quiz'ler yükleniyor...");

      // Firestore bağlantısını kontrol et
      final instance = FirebaseFirestore.instance;
      print("Firestore bağlantısı sağlandı");

      // Quizzes koleksiyonunu direkt getir
      final querySnapshot = await instance.collection('quizzes').get();

      print("Firestore'dan cevap alındı. Quiz sayısı: ${querySnapshot.size}");

      if (querySnapshot.size == 0) {
        print("⚠️ DİKKAT: Firestore'dan hiç quiz bulunamadı!");
        _showFirestoreErrorDialog(
          "Henüz hiç quiz bulunamadı. 'Veri Aktar' düğmesine basarak verileri aktarmanız gerekebilir.",
        );
        return;
      }

      List<String> quizNames = [];
      for (var doc in querySnapshot.docs) {
        print("Bulunan quiz: ${doc.id}");
        quizNames.add(doc.id);
      }

      if (quizNames.isNotEmpty) {
        setState(() {
          _categories = quizNames;
          _selectedCategory = _categories.first;
          print("Quiz listesi güncellendi: $_categories");
        });
      } else {
        print("Hiç quiz bulunamadı!");
        _showFirestoreErrorDialog(
          "Henüz hiç quiz bulunamadı. 'Veri Aktar' düğmesine basarak verileri aktarmanız gerekebilir.",
        );
      }
    } catch (e) {
      print("⚠️ Quiz'ler yüklenirken ciddi bir hata: $e");
      _showFirestoreErrorDialog("Quiz'ler yüklenirken hata oluştu: $e");
    }
  }

  // Hata durumunda bilgilendirme dialogu
  void _showFirestoreErrorDialog(String message) {
    if (!mounted) return;

    showDialog(
      context: context,
      builder: (BuildContext context) {
        return AlertDialog(
          backgroundColor: Colors.indigo.shade900,
          title: const Text(
            'Veri Erişim Hatası',
            style: TextStyle(color: Colors.white),
          ),
          content: Column(
            mainAxisSize: MainAxisSize.min,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(message, style: const TextStyle(color: Colors.white)),
              const SizedBox(height: 12),
              const Text(
                'Çözüm Önerileri:\n'
                '1. İnternet bağlantınızı kontrol edin\n'
                '2. "Veri Aktar" düğmesine basarak verileri yeniden aktarın\n'
                '3. Uygulamayı yeniden başlatın',
                style: TextStyle(color: Colors.grey, fontSize: 12),
              ),
            ],
          ),
          actions: [
            TextButton(
              onPressed: () {
                Navigator.of(context).pop();
              },
              child: const Text(
                'Anladım',
                style: TextStyle(color: Colors.white),
              ),
            ),
            ElevatedButton(
              onPressed: () {
                Navigator.of(context).pop();
                _showDataImportDialog();
              },
              style: ElevatedButton.styleFrom(
                backgroundColor: Colors.blue.shade700,
              ),
              child: const Text('Veri Aktarımı Başlat'),
            ),
          ],
        );
      },
    );
  }
}
