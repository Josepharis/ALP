import 'package:flutter/material.dart';
import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:file_picker/file_picker.dart';
import 'dart:io';
import 'package:flutter/foundation.dart' show kIsWeb;
import '../services/organized_data_service.dart';

class AddQuestionScreen extends StatefulWidget {
  final bool editMode;
  final Map<String, dynamic>? questionData;
  final String? questionId;
  final String? category;

  const AddQuestionScreen({
    Key? key,
    this.editMode = false,
    this.questionData,
    this.questionId,
    this.category,
  }) : super(key: key);

  @override
  State<AddQuestionScreen> createState() => _AddQuestionScreenState();
}

class _AddQuestionScreenState extends State<AddQuestionScreen> {
  final _formKey = GlobalKey<FormState>();
  final _questionController = TextEditingController();
  final _option1Controller = TextEditingController();
  final _option2Controller = TextEditingController();
  final _option3Controller = TextEditingController();
  final _option4Controller = TextEditingController();
  final _explanationController = TextEditingController();
  final _quizNameController = TextEditingController();
  final OrganizedDataService _organizedDataService = OrganizedDataService();

  int _correctAnswerIndex = 0;
  String _selectedQuizType = 'Mevcut Quiz';
  String _selectedCategory = 'Anestezi';
  bool _isLoading = false;
  String _errorMessage = '';
  bool _isNewQuizSelected = false;
  List<Map<String, String>> _availableQuizzes = []; // {id, displayName}
  String _selectedQuizId = '';

  @override
  void initState() {
    super.initState();
    _fetchQuizzes();

    // Düzenleme modu ise verileri doldur
    if (widget.editMode && widget.questionData != null) {
      _questionController.text = widget.questionData!['question'] ?? '';

      final List<dynamic> options = widget.questionData!['options'] ?? [];
      if (options.isNotEmpty) {
        _option1Controller.text = options[0];
        if (options.length > 1) _option2Controller.text = options[1];
        if (options.length > 2) _option3Controller.text = options[2];
        if (options.length > 3) _option4Controller.text = options[3];
      }

      _correctAnswerIndex = widget.questionData!['correctAnswerIndex'] ?? 0;
      _explanationController.text = widget.questionData!['explanation'] ?? '';

      if (widget.category != null) {
        _selectedCategory = widget.category!;
      }
    }
  }

  // Mevcut quizleri getir
  Future<void> _fetchQuizzes() async {
    try {
      setState(() {
        _isLoading = true;
      });

      print("Quiz'leri getirmeye başlıyorum...");

      List<Map<String, String>> quizList = [];

      // 1. Organize veri yapısından kategorileri yükle (Admin screen'deki gibi)
      try {
        final organizedCategories =
            await _organizedDataService.getOrganizedCategories();
        print("✅ Organize kategoriler bulundu: ${organizedCategories.length}");

        if (organizedCategories.isNotEmpty) {
          for (var category in organizedCategories) {
            final displayName = category['displayName'] as String;
            final collectionName = category['collectionName'] as String;

            quizList.add({'id': collectionName, 'displayName': displayName});
            print("📋 Kategori: $displayName -> $collectionName");
          }
        }
      } catch (e) {
        print("⚠️ Organize kategoriler yüklenirken hata: $e");
      }

      // 2. Eğer organize veriler yoksa, fallback kullan
      if (quizList.isEmpty) {
        print("⚠️ Organize kategoriler bulunamadı, fallback deneniyor...");

        final instance = FirebaseFirestore.instance;
        final querySnapshot = await instance.collection('quizzes').get();
        print("Legacy quizzes koleksiyonu bulundu: ${querySnapshot.size}");

        for (var doc in querySnapshot.docs) {
          final data = doc.data();
          final displayName =
              (data['name'] as String?) ?? _createDisplayNameFromId(doc.id);
          quizList.add({'id': doc.id, 'displayName': displayName});
          print("🔄 Legacy quiz: ${doc.id} -> $displayName");
        }
      }

      // 3. Son durum: Hiçbir kategori bulunamadıysa
      if (quizList.isEmpty) {
        print("⚠️ Hiçbir kategori bulunamadı!");
      }

      setState(() {
        _availableQuizzes = quizList;

        print("✅ TOPLAM QUIZ SAYISI: ${_availableQuizzes.length}");
        print("📋 Quiz Listesi:");
        for (var quiz in _availableQuizzes) {
          print("   • ${quiz['displayName']} (ID: ${quiz['id']})");
        }

        // İlk quiz varsa seç veya düzenleme modunda ise mevcut kategoriyi kullan
        if (widget.editMode && widget.category != null) {
          _selectedCategory = widget.category!;
          _selectedQuizId = widget.category!;
        } else if (_availableQuizzes.isNotEmpty) {
          _selectedCategory = _availableQuizzes.first['displayName']!;
          _selectedQuizId = _availableQuizzes.first['id']!;
        }

        _isLoading = false;
      });

      // Eğer quiz listesi boşsa, UI'da "yeni quiz" seçeneğine geçiş yapılmasını sağla
      if (_availableQuizzes.isEmpty) {
        print("⚠️ Hiç quiz bulunamadı, yeni quiz moduna geçiliyor");
        setState(() {
          _isNewQuizSelected = true;
          _selectedQuizType = 'Yeni Quiz';
        });
      }
    } catch (e) {
      print("⚠️ Quizler yüklenirken ciddi bir hata: $e");
      setState(() {
        _isLoading = false;
        _errorMessage = "Quiz'ler yüklenirken hata oluştu: $e";
      });
    }
  }

  // Collection ID'lerini anlamlı display name'lere çevir
  String _createDisplayNameFromId(String id) {
    // Bilinen collection pattern'larını kontrol et
    Map<String, String> knownCollections = {
      'anestezi_farmakolo': 'Anestezi Farmakolojisi',
      'genel_anestezi': 'Genel Anestezi',
      'rejyonal_anestezi': 'Rejyonal Anestezi',
      'yoğun_bakım': 'Yoğun Bakım',
      'ağrı_tedavisi': 'Ağrı Tedavisi',
      'monitorizasyon': 'Monitörizasyon',
      'solunum_sistemi': 'Solunum Sistemi',
      'kardiyovasküler': 'Kardiyovasküler Sistem',
      'nöroloji': 'Nöroloji',
      'pediatrik_anestezi': 'Pediatrik Anestezi',
      'obstetrik_anestezi': 'Obstetrik Anestezi',
      'geriatrik_anestezi': 'Geriatrik Anestezi',
      'ameliyathane': 'Ameliyathane',
      'anestezi': 'Anestezi',
    };

    // Eğer bilinen bir collection ise, display name'ini döndür
    String lowerCaseId = id.toLowerCase();
    if (knownCollections.containsKey(lowerCaseId)) {
      return knownCollections[lowerCaseId]!;
    }

    // Bilinen değilse, ID'yi güzelleştir
    return id
        .replaceAll('_', ' ')
        .split(' ')
        .map(
          (word) =>
              word.isNotEmpty
                  ? word[0].toUpperCase() + word.substring(1).toLowerCase()
                  : word,
        )
        .join(' ');
  }

  @override
  void dispose() {
    _questionController.dispose();
    _option1Controller.dispose();
    _option2Controller.dispose();
    _option3Controller.dispose();
    _option4Controller.dispose();
    _explanationController.dispose();
    _quizNameController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    // Ekran boyutunu al
    final size = MediaQuery.of(context).size;
    final isSmallScreen = size.width < 600;

    return Scaffold(
      appBar: AppBar(
        title: Text(widget.editMode ? 'Soruyu Düzenle' : 'Yeni Soru Ekle'),
        backgroundColor: Colors.indigo.shade900,
        elevation: 0,
        actions: [
          IconButton(
            icon: const Icon(Icons.upload_file),
            tooltip: 'Word Dosyası Yükle',
            onPressed: _pickAndProcessWordFile,
          ),
        ],
      ),
      body: Container(
        decoration: BoxDecoration(
          gradient: LinearGradient(
            begin: Alignment.topLeft,
            end: Alignment.bottomRight,
            colors: [Colors.indigo.shade900, Colors.blue.shade900],
          ),
        ),
        child: SafeArea(
          child: Form(
            key: _formKey,
            child: Center(
              child: SingleChildScrollView(
                child: Container(
                  width: isSmallScreen ? size.width : size.width * 0.7,
                  margin: const EdgeInsets.all(16),
                  child: Card(
                    color: Colors.white.withOpacity(0.1),
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(20),
                    ),
                    child: Padding(
                      padding: const EdgeInsets.all(24.0),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          _buildHeader(),
                          const SizedBox(height: 24),
                          _buildContentForm(isSmallScreen),
                          const SizedBox(height: 16),
                          if (_errorMessage.isNotEmpty) _buildErrorMessage(),
                          const SizedBox(height: 24),
                          _buildSubmitButton(),
                        ],
                      ),
                    ),
                  ),
                ),
              ),
            ),
          ),
        ),
      ),
    );
  }

  Widget _buildHeader() {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Row(
          children: [
            Container(
              padding: const EdgeInsets.all(12),
              decoration: BoxDecoration(
                color: Colors.blue.withOpacity(0.2),
                borderRadius: BorderRadius.circular(12),
              ),
              child: Icon(
                widget.editMode ? Icons.edit : Icons.add_circle_outline,
                color: Colors.white,
                size: 30,
              ),
            ),
            const SizedBox(width: 16),
            Expanded(
              child: Text(
                widget.editMode ? 'Soruyu Düzenle' : 'Yeni Soru Oluştur',
                style: const TextStyle(
                  fontSize: 24,
                  fontWeight: FontWeight.bold,
                  color: Colors.white,
                ),
              ),
            ),
          ],
        ),
        const SizedBox(height: 12),
        const Text(
          'Quize eklemek için lütfen aşağıdaki bilgileri doldurun.',
          style: TextStyle(color: Colors.white70, fontSize: 16),
        ),
      ],
    );
  }

  Widget _buildContentForm(bool isSmallScreen) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        // Quiz tipi ve kategori satırı
        if (!isSmallScreen)
          Row(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Expanded(child: _buildQuizTypeDropdown()),
              const SizedBox(width: 16),
              Expanded(
                child:
                    _isNewQuizSelected
                        ? _buildNewQuizNameField()
                        : _buildQuizDropdown(),
              ),
            ],
          )
        else
          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              _buildQuizTypeDropdown(),
              const SizedBox(height: 16),
              _isNewQuizSelected
                  ? _buildNewQuizNameField()
                  : _buildQuizDropdown(),
            ],
          ),
        const SizedBox(height: 24),

        // Soru metin alanı
        _buildSectionTitle('Soru Metni'),
        const SizedBox(height: 12),
        _buildTextFormField(
          controller: _questionController,
          hint: 'Soru metnini buraya yazın...',
          maxLines: 4,
          validator: (value) {
            if (value == null || value.trim().isEmpty) {
              return 'Lütfen soru metnini girin';
            }
            return null;
          },
        ),
        const SizedBox(height: 24),

        // Şıklar
        _buildSectionTitle('Şıklar'),
        const SizedBox(height: 4),
        const Text(
          'Lütfen doğru cevabı seçin ve tüm şıkları doldurun.',
          style: TextStyle(color: Colors.white70, fontSize: 14),
        ),
        const SizedBox(height: 16),

        // A şıkkı
        _buildOptionField('A', _option1Controller, 0, isSmallScreen),
        const SizedBox(height: 16),

        // B şıkkı
        _buildOptionField('B', _option2Controller, 1, isSmallScreen),
        const SizedBox(height: 16),

        // C şıkkı
        _buildOptionField('C', _option3Controller, 2, isSmallScreen),
        const SizedBox(height: 16),

        // D şıkkı
        _buildOptionField('D', _option4Controller, 3, isSmallScreen),
        const SizedBox(height: 24),

        // Açıklama alanı
        _buildSectionTitle('Açıklama (İsteğe Bağlı)'),
        const SizedBox(height: 12),
        _buildTextFormField(
          controller: _explanationController,
          hint: 'Soru için açıklama ekleyebilirsiniz...',
          maxLines: 3,
        ),
      ],
    );
  }

  Widget _buildSectionTitle(String title) {
    return Container(
      padding: const EdgeInsets.symmetric(horizontal: 12, vertical: 6),
      decoration: BoxDecoration(
        color: Colors.blue.withOpacity(0.2),
        borderRadius: BorderRadius.circular(4),
      ),
      child: Text(
        title,
        style: const TextStyle(
          color: Colors.white,
          fontWeight: FontWeight.bold,
          fontSize: 16,
        ),
      ),
    );
  }

  Widget _buildQuizTypeDropdown() {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        _buildSectionTitle('Quiz Tipi'),
        const SizedBox(height: 12),
        Container(
          decoration: BoxDecoration(
            color: Colors.white.withOpacity(0.1),
            borderRadius: BorderRadius.circular(12),
            border: Border.all(color: Colors.white.withOpacity(0.2)),
          ),
          child: DropdownButtonFormField<String>(
            decoration: const InputDecoration(
              contentPadding: EdgeInsets.symmetric(horizontal: 16, vertical: 8),
              border: InputBorder.none,
            ),
            dropdownColor: Colors.indigo.shade800,
            style: const TextStyle(color: Colors.white),
            value: _selectedQuizType,
            items: const [
              DropdownMenuItem(
                value: 'Mevcut Quiz',
                child: Text('Mevcut Quiz'),
              ),
              DropdownMenuItem(value: 'Yeni Quiz', child: Text('Yeni Quiz')),
            ],
            onChanged:
                widget.editMode
                    ? null
                    : (value) {
                      if (value != null) {
                        setState(() {
                          _selectedQuizType = value;
                          _isNewQuizSelected = value == 'Yeni Quiz';
                        });
                      }
                    },
          ),
        ),
      ],
    );
  }

  Widget _buildQuizDropdown() {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        _buildSectionTitle('Quiz Seçimi'),
        const SizedBox(height: 12),
        Container(
          decoration: BoxDecoration(
            color: Colors.white.withOpacity(0.1),
            borderRadius: BorderRadius.circular(12),
            border: Border.all(color: Colors.white.withOpacity(0.2)),
          ),
          child:
              _availableQuizzes.isEmpty
                  ? Padding(
                    padding: const EdgeInsets.all(16.0),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        const Text(
                          'Henüz Quiz bulunmamaktadır',
                          style: TextStyle(color: Colors.white70),
                        ),
                        const SizedBox(height: 8),
                        InkWell(
                          onTap: () {
                            setState(() {
                              _isNewQuizSelected = true;
                              _selectedQuizType = 'Yeni Quiz';
                            });
                          },
                          child: Text(
                            '"Yeni Quiz" seçeneğine geçmek için tıklayın',
                            style: TextStyle(
                              color: Colors.blue.shade300,
                              decoration: TextDecoration.underline,
                            ),
                          ),
                        ),
                      ],
                    ),
                  )
                  : DropdownButtonFormField<String>(
                    decoration: const InputDecoration(
                      contentPadding: EdgeInsets.symmetric(
                        horizontal: 16,
                        vertical: 8,
                      ),
                      border: InputBorder.none,
                    ),
                    dropdownColor: Colors.indigo.shade800,
                    style: const TextStyle(color: Colors.white),
                    value:
                        _availableQuizzes.any(
                              (q) => q['displayName'] == _selectedCategory,
                            )
                            ? _selectedCategory
                            : (_availableQuizzes.isNotEmpty
                                ? _availableQuizzes.first['displayName']
                                : null),
                    items:
                        _availableQuizzes
                            .map(
                              (quiz) => DropdownMenuItem(
                                value: quiz['displayName'],
                                child: Text(quiz['displayName']!),
                              ),
                            )
                            .toList(),
                    onChanged:
                        widget.editMode
                            ? null
                            : (value) {
                              if (value != null) {
                                final selectedQuiz = _availableQuizzes
                                    .firstWhere(
                                      (q) => q['displayName'] == value,
                                    );
                                setState(() {
                                  _selectedCategory = value;
                                  _selectedQuizId = selectedQuiz['id']!;
                                });
                              }
                            },
                  ),
        ),
      ],
    );
  }

  Widget _buildNewQuizNameField() {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        _buildSectionTitle('Yeni Quiz Adı'),
        const SizedBox(height: 12),
        _buildTextFormField(
          controller: _quizNameController,
          hint: 'Yeni quiz adını girin...',
          validator:
              _isNewQuizSelected
                  ? (value) {
                    if (value == null || value.trim().isEmpty) {
                      return 'Quiz adı boş olamaz';
                    }
                    return null;
                  }
                  : null,
        ),
      ],
    );
  }

  Widget _buildTextFormField({
    required TextEditingController controller,
    required String hint,
    int maxLines = 1,
    String? Function(String?)? validator,
  }) {
    return TextFormField(
      controller: controller,
      maxLines: maxLines,
      style: const TextStyle(color: Colors.white),
      decoration: InputDecoration(
        filled: true,
        fillColor: Colors.white.withOpacity(0.1),
        hintText: hint,
        hintStyle: TextStyle(color: Colors.white.withOpacity(0.5)),
        border: OutlineInputBorder(
          borderRadius: BorderRadius.circular(12),
          borderSide: BorderSide.none,
        ),
        focusedBorder: OutlineInputBorder(
          borderRadius: BorderRadius.circular(12),
          borderSide: BorderSide(color: Colors.blue.withOpacity(0.5), width: 2),
        ),
        errorBorder: OutlineInputBorder(
          borderRadius: BorderRadius.circular(12),
          borderSide: BorderSide(color: Colors.red.withOpacity(0.5), width: 2),
        ),
        focusedErrorBorder: OutlineInputBorder(
          borderRadius: BorderRadius.circular(12),
          borderSide: BorderSide(color: Colors.red.withOpacity(0.5), width: 2),
        ),
        errorStyle: const TextStyle(color: Colors.red),
        contentPadding: const EdgeInsets.all(16),
      ),
      validator: validator,
    );
  }

  Widget _buildOptionField(
    String optionLetter,
    TextEditingController controller,
    int index,
    bool isSmallScreen,
  ) {
    return Row(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        if (!isSmallScreen) const SizedBox(width: 8),
        Radio<int>(
          value: index,
          groupValue: _correctAnswerIndex,
          onChanged: (value) {
            if (value != null) {
              setState(() {
                _correctAnswerIndex = value;
              });
            }
          },
          activeColor: Colors.green,
          fillColor: MaterialStateProperty.resolveWith<Color>((
            Set<MaterialState> states,
          ) {
            if (states.contains(MaterialState.selected)) {
              return Colors.green;
            }
            return Colors.white70;
          }),
        ),
        if (!isSmallScreen) const SizedBox(width: 8),
        Expanded(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              if (isSmallScreen)
                Padding(
                  padding: const EdgeInsets.only(top: 12, left: 4, bottom: 8),
                  child: Text(
                    '$optionLetter şıkkı',
                    style: const TextStyle(
                      color: Colors.white70,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                ),
              TextFormField(
                controller: controller,
                style: const TextStyle(color: Colors.white),
                decoration: InputDecoration(
                  filled: true,
                  fillColor: Colors.white.withOpacity(0.1),
                  hintText: '$optionLetter şıkkını yazın...',
                  hintStyle: TextStyle(color: Colors.white.withOpacity(0.5)),
                  border: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(12),
                    borderSide: BorderSide.none,
                  ),
                  focusedBorder: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(12),
                    borderSide: BorderSide(
                      color: Colors.blue.withOpacity(0.5),
                      width: 2,
                    ),
                  ),
                  prefixText: !isSmallScreen ? '$optionLetter) ' : null,
                  prefixStyle: const TextStyle(
                    color: Colors.white,
                    fontWeight: FontWeight.bold,
                  ),
                  contentPadding: const EdgeInsets.all(16),
                ),
                validator: (value) {
                  if (value == null || value.trim().isEmpty) {
                    return '$optionLetter şıkkını boş bırakamazsınız';
                  }
                  return null;
                },
              ),
            ],
          ),
        ),
      ],
    );
  }

  Widget _buildErrorMessage() {
    return Container(
      padding: const EdgeInsets.all(12),
      decoration: BoxDecoration(
        color: Colors.red.withOpacity(0.1),
        borderRadius: BorderRadius.circular(12),
        border: Border.all(color: Colors.red.withOpacity(0.3)),
      ),
      child: Row(
        children: [
          const Icon(Icons.error_outline, color: Colors.red),
          const SizedBox(width: 8),
          Expanded(
            child: Text(
              _errorMessage,
              style: const TextStyle(color: Colors.red),
            ),
          ),
        ],
      ),
    );
  }

  Widget _buildSubmitButton() {
    return SizedBox(
      width: double.infinity,
      height: 50,
      child: ElevatedButton(
        onPressed: _isLoading ? null : _submitQuestion,
        style: ElevatedButton.styleFrom(
          backgroundColor: Colors.blue,
          foregroundColor: Colors.white,
          elevation: 0,
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(12),
          ),
          padding: const EdgeInsets.symmetric(horizontal: 24, vertical: 12),
        ),
        child:
            _isLoading
                ? const SizedBox(
                  width: 24,
                  height: 24,
                  child: CircularProgressIndicator(
                    color: Colors.white,
                    strokeWidth: 2,
                  ),
                )
                : Text(
                  widget.editMode ? 'Soruyu Güncelle' : 'Soruyu Kaydet',
                  style: const TextStyle(
                    fontSize: 16,
                    fontWeight: FontWeight.bold,
                  ),
                ),
      ),
    );
  }

  Future<void> _submitQuestion() async {
    // Form validasyonu
    if (_formKey.currentState?.validate() ?? false) {
      setState(() {
        _isLoading = true;
        _errorMessage = '';
      });

      try {
        // Soru verisini hazırla
        final questionData = {
          'question': _questionController.text.trim(),
          'options': [
            _option1Controller.text.trim(),
            _option2Controller.text.trim(),
            _option3Controller.text.trim(),
            _option4Controller.text.trim(),
          ],
          'correctAnswerIndex': _correctAnswerIndex,
          'explanation': _explanationController.text.trim(),
          'updatedAt': FieldValue.serverTimestamp(),
        };

        if (!widget.editMode) {
          questionData['createdAt'] = FieldValue.serverTimestamp();
        }

        // Düzenleme modunda
        if (widget.editMode && widget.questionId != null) {
          await FirebaseFirestore.instance
              .collection('quizzes')
              .doc(widget.category)
              .collection('questions')
              .doc(widget.questionId)
              .update(questionData);
        } else {
          // Yeni soru ekleme
          String targetCategory;

          if (_isNewQuizSelected) {
            // Yeni quiz adını kullan
            targetCategory = _quizNameController.text.trim();

            // Quiz koleksiyonunu oluştur yoksa
            final quizDocRef = FirebaseFirestore.instance
                .collection('quizzes')
                .doc(targetCategory);
            final quizDoc = await quizDocRef.get();
            if (!quizDoc.exists) {
              await quizDocRef.set({
                'name': targetCategory,
                'createdAt': FieldValue.serverTimestamp(),
              });
            }
          } else {
            // Mevcut quiz'i kullan - Quiz ID'sini kullan, display name'i değil
            targetCategory =
                _selectedQuizId.isNotEmpty
                    ? _selectedQuizId
                    : _selectedCategory;
          }

          // Soruyu ekle
          await FirebaseFirestore.instance
              .collection('quizzes')
              .doc(targetCategory)
              .collection('questions')
              .add(questionData);
        }

        // Başarılı bildirim ve geri dön
        if (mounted) {
          ScaffoldMessenger.of(context).showSnackBar(
            SnackBar(
              content: Text(
                widget.editMode
                    ? 'Soru başarıyla güncellendi!'
                    : 'Soru başarıyla eklendi!',
              ),
              backgroundColor: Colors.green,
            ),
          );
          Navigator.of(context).pop();
        }
      } catch (e) {
        // Hata mesajı
        setState(() {
          _errorMessage =
              widget.editMode
                  ? 'Soru güncellenirken hata oluştu: $e'
                  : 'Soru eklenirken hata oluştu: $e';
          _isLoading = false;
        });
      }
    }
  }

  // Word dosyasını seçme ve işleme
  Future<void> _pickAndProcessWordFile() async {
    try {
      setState(() {
        _isLoading = true;
        _errorMessage = '';
      });

      print("Word dosyası seçiliyor...");

      // Kullanıcı dosya seçmeden önce bilgilendirme gösterelim
      ScaffoldMessenger.of(context).showSnackBar(
        const SnackBar(
          content: Text('Dosya seçimi açılıyor...'),
          backgroundColor: Colors.blue,
          duration: Duration(seconds: 1),
        ),
      );

      FilePickerResult? result = await FilePicker.platform.pickFiles(
        type: FileType.custom,
        allowedExtensions: ['doc', 'docx'],
      );

      if (result != null) {
        print("Dosya seçildi: ${result.files.first.name}");
        // Dosya işleme başlıyor...
        ScaffoldMessenger.of(context).showSnackBar(
          const SnackBar(
            content: Text('Dosya alındı, işleniyor...'),
            backgroundColor: Colors.blue,
          ),
        );

        // Kullanıcıya daha net bilgi verelim
        await showDialog(
          context: context,
          builder:
              (context) => AlertDialog(
                title: const Text('Word Dosyası Desteği'),
                content: const Text(
                  'Word dosyalarından otomatik soru oluşturma desteği yakında eklenecektir.\n\n'
                  'Desteklenecek format:\n'
                  '1. Her soru "Soru:" ile başlamalıdır\n'
                  '2. Şıklar A), B), C), D) şeklinde olmalıdır\n'
                  '3. Doğru cevap "Cevap: A" şeklinde belirtilmelidir\n'
                  '4. Açıklama "Açıklama:" ile başlamalıdır',
                ),
                actions: [
                  TextButton(
                    onPressed: () => Navigator.of(context).pop(),
                    child: const Text('Anladım'),
                  ),
                ],
              ),
        );

        // Bilgilendirme sonrası temizle
        setState(() {
          _errorMessage = '';
          _isLoading = false;
        });
      } else {
        print("Kullanıcı dosya seçmedi");
        // Kullanıcı dosya seçmeden çıktı
        setState(() {
          _isLoading = false;
        });

        // Bilgilendirme yap
        ScaffoldMessenger.of(context).showSnackBar(
          const SnackBar(
            content: Text('Dosya seçimi iptal edildi'),
            backgroundColor: Colors.orange,
          ),
        );
      }
    } catch (e) {
      print("Dosya seçilirken hata: $e");
      setState(() {
        _errorMessage = 'Dosya seçilirken hata oluştu: $e';
        _isLoading = false;
      });

      // Hata bildirimi
      ScaffoldMessenger.of(context).showSnackBar(
        SnackBar(content: Text('Hata: $e'), backgroundColor: Colors.red),
      );
    }
  }
}
