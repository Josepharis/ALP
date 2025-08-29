import 'package:flutter/material.dart';
import '../l10n/app_localizations.dart';
import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:file_picker/file_picker.dart';
import 'dart:io';
import 'dart:math';
import 'package:flutter/foundation.dart' show kIsWeb;
import '../services/organized_data_service.dart';
import '../services/word_parser_service.dart';

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
  final WordParserService _wordParserService = WordParserService();

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
        title: Text(widget.editMode ? AppLocalizations.of(context)!.editQuestion : AppLocalizations.of(context)!.addNewQuestion),
        backgroundColor: Colors.indigo.shade900,
        elevation: 0,
        actions: [
          IconButton(
            icon: const Icon(Icons.upload_file),
            tooltip: AppLocalizations.of(context)!.uploadWordFile,
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
                        Expanded(
                          child: _buildContentForm(isSmallScreen),
                        ),
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
                widget.editMode ? AppLocalizations.of(context)!.editQuestion : AppLocalizations.of(context)!.createNewQuestion,
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
    return SingleChildScrollView(
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          // Quiz tipi ve kategori satırı
          if (!isSmallScreen)
            Row(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Expanded(
                  flex: 1,
                  child: _buildQuizTypeDropdown(),
                ),
                const SizedBox(width: 16),
                Expanded(
                  flex: 2,
                  child: _isNewQuizSelected
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
            hint: AppLocalizations.of(context)!.questionTextHint,
            maxLines: 4,
            validator: (value) {
              if (value == null || value.trim().isEmpty) {
                return AppLocalizations.of(context)!.pleaseEnterQuestion;
              }
              return null;
            },
          ),
          const SizedBox(height: 24),

          // Şıklar
          _buildSectionTitle(AppLocalizations.of(context)!.options),
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
          _buildSectionTitle(AppLocalizations.of(context)!.explanationOptional),
          const SizedBox(height: 12),
          _buildTextFormField(
            controller: _explanationController,
            hint: AppLocalizations.of(context)!.explanationHint,
            maxLines: 3,
          ),
        ],
      ),
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
            style: const TextStyle(
              color: Colors.white,
              fontSize: 14,
            ),
            isExpanded: true,
            icon: const Icon(Icons.keyboard_arrow_down, color: Colors.white70, size: 20),
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
        _buildSectionTitle(AppLocalizations.of(context)!.quizSelection),
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
                            AppLocalizations.of(context)!.clickNewQuiz,
                            style: TextStyle(
                              color: Colors.blue.shade300,
                              decoration: TextDecoration.underline,
                            ),
                          ),
                        ),
                      ],
                    ),
                  )
                  : _buildCustomQuizDropdown(),
        ),
      ],
    );
  }

  Widget _buildCustomQuizDropdown() {
    return Material(
      color: Colors.transparent,
      child: InkWell(
        borderRadius: BorderRadius.circular(12),
        onTap: widget.editMode ? null : () => _showQuizSelectionDialog(),
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 16, vertical: 12),
          child: Row(
            children: [
              Expanded(
                child: Text(
                  _availableQuizzes.any(
                        (q) => q['displayName'] == _selectedCategory,
                      )
                      ? _selectedCategory
                      : (_availableQuizzes.isNotEmpty
                          ? _availableQuizzes.first['displayName']!
                          : AppLocalizations.of(context)!.selectQuiz),
                  style: const TextStyle(
                    color: Colors.white,
                    fontSize: 14,
                  ),
                  overflow: TextOverflow.ellipsis,
                  maxLines: 1,
                ),
              ),
              const Icon(
                Icons.keyboard_arrow_down,
                color: Colors.white70,
                size: 20,
              ),
            ],
          ),
        ),
      ),
    );
  }

  void _showQuizSelectionDialog() {
    showDialog(
      context: context,
      builder: (context) => AlertDialog(
        backgroundColor: Colors.indigo.shade800,
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(20),
        ),
        title: Row(
          children: [
            Icon(
              Icons.quiz,
              color: Colors.blue.shade300,
              size: 24,
            ),
            const SizedBox(width: 12),
            const Expanded(
              child: Text(
                'Quiz Seçin',
                style: TextStyle(
                  color: Colors.white,
                  fontSize: 18,
                  fontWeight: FontWeight.bold,
                ),
              ),
            ),
            IconButton(
              onPressed: () => Navigator.pop(context),
              icon: const Icon(Icons.close, color: Colors.white70),
              iconSize: 24,
            ),
          ],
        ),
        content: Container(
          width: double.maxFinite,
          constraints: const BoxConstraints(maxHeight: 400),
          child: ListView.builder(
            shrinkWrap: true,
            itemCount: _availableQuizzes.length,
            itemBuilder: (context, index) {
              final quiz = _availableQuizzes[index];
              final isSelected = quiz['displayName'] == _selectedCategory;
              
              return Container(
                margin: const EdgeInsets.only(bottom: 8),
                decoration: BoxDecoration(
                  color: isSelected 
                      ? Colors.blue.withOpacity(0.3)
                      : Colors.white.withOpacity(0.1),
                  borderRadius: BorderRadius.circular(12),
                  border: Border.all(
                    color: isSelected 
                        ? Colors.blue.shade400
                        : Colors.white.withOpacity(0.2),
                    width: isSelected ? 2 : 1,
                  ),
                ),
                child: ListTile(
                  contentPadding: const EdgeInsets.symmetric(horizontal: 16, vertical: 8),
                  title: Text(
                    quiz['displayName']!,
                    style: TextStyle(
                      color: isSelected ? Colors.blue.shade300 : Colors.white,
                      fontWeight: isSelected ? FontWeight.bold : FontWeight.normal,
                      fontSize: 16,
                    ),
                  ),
                  trailing: isSelected
                      ? Icon(
                          Icons.check_circle,
                          color: Colors.blue.shade300,
                          size: 24,
                        )
                      : null,
                  onTap: () {
                    final selectedQuiz = _availableQuizzes.firstWhere(
                      (q) => q['displayName'] == quiz['displayName'],
                    );
                    setState(() {
                      _selectedCategory = quiz['displayName']!;
                      _selectedQuizId = selectedQuiz['id']!;
                    });
                    Navigator.pop(context);
                  },
                ),
              );
            },
          ),
        ),
        actions: [
          TextButton(
            onPressed: () => Navigator.pop(context),
            style: TextButton.styleFrom(
              foregroundColor: Colors.white70,
            ),
            child: const Text('İptal'),
          ),
        ],
      ),
    );
  }

  Widget _buildNewQuizNameField() {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        _buildSectionTitle(AppLocalizations.of(context)!.newQuizName),
        const SizedBox(height: 12),
        _buildTextFormField(
          controller: _quizNameController,
          hint: AppLocalizations.of(context)!.enterNewQuizName,
          validator:
              _isNewQuizSelected
                  ? (value) {
                    if (value == null || value.trim().isEmpty) {
                      return AppLocalizations.of(context)!.quizNameRequired;
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
        allowedExtensions: ['txt', 'doc', 'docx'],
      );

      if (result != null) {
        final fileName = result.files.first.name;
        print("Dosya seçildi: $fileName");
        
        // Dosya formatını kontrol et
        if (!_wordParserService.isSupportedFormat(fileName)) {
          ScaffoldMessenger.of(context).showSnackBar(
            const SnackBar(
              content: Text('Desteklenmeyen dosya formatı!'),
              backgroundColor: Colors.red,
            ),
          );
          setState(() {
            _isLoading = false;
          });
          return;
        }

        // Dosya işleme başlıyor...
        ScaffoldMessenger.of(context).showSnackBar(
          const SnackBar(
            content: Text('Dosya alındı, işleniyor...'),
            backgroundColor: Colors.blue,
          ),
        );

        // Dosyayı parse et
        final file = File(result.files.first.path!);
        final questions = await _wordParserService.parseWordFile(file);
        
        if (questions.isNotEmpty) {
          // Soruları göster ve düzenleme ekranına yönlendir
          await _showParsedQuestions(questions, fileName);
        } else {
          ScaffoldMessenger.of(context).showSnackBar(
            const SnackBar(
              content: Text('Dosyadan soru bulunamadı!'),
              backgroundColor: Colors.orange,
            ),
          );
        }

        setState(() {
          _isLoading = false;
        });
      } else {
        print("Kullanıcı dosya seçmedi");
        setState(() {
          _isLoading = false;
        });

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

      ScaffoldMessenger.of(context).showSnackBar(
        SnackBar(content: Text('Hata: $e'), backgroundColor: Colors.red),
      );
    }
  }

                // Parse edilen soruları göster ve Firebase'e kaydetme seçenekleri sun
              Future<void> _showParsedQuestions(List<Map<String, dynamic>> questions, String fileName) async {
                await showDialog(
                  context: context,
                  builder: (context) => AlertDialog(
                    title: Row(
                      children: [
                        Icon(Icons.file_upload, color: Colors.blue.shade300),
                        const SizedBox(width: 8),
                        Expanded(
                          child: Text(
                            '$fileName - Parse Edilen Sorular',
                            style: const TextStyle(fontSize: 16),
                          ),
                        ),
                      ],
                    ),
                    content: Column(
                      mainAxisSize: MainAxisSize.min,
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Container(
                          padding: const EdgeInsets.all(12),
                          decoration: BoxDecoration(
                            color: Colors.green.withOpacity(0.1),
                            borderRadius: BorderRadius.circular(8),
                            border: Border.all(color: Colors.green.withOpacity(0.3)),
                          ),
                          child: Row(
                            children: [
                              Icon(Icons.check_circle, color: Colors.green.shade600),
                              const SizedBox(width: 8),
                              Expanded(
                                child: Text(
                                  'Toplam ${questions.length} soru başarıyla parse edildi!',
                                  style: TextStyle(
                                    color: Colors.green.shade600,
                                    fontWeight: FontWeight.bold,
                                  ),
                                ),
                              ),
                            ],
                          ),
                        ),
                        const SizedBox(height: 16),
                        const Text(
                          'Soru önizlemesi:',
                          style: TextStyle(fontWeight: FontWeight.bold),
                        ),
                        const SizedBox(height: 8),
                        Container(
                          height: 200,
                          width: 400,
                          decoration: BoxDecoration(
                            border: Border.all(color: Colors.grey),
                            borderRadius: BorderRadius.circular(8),
                          ),
                          child: ListView.builder(
                            itemCount: questions.take(3).length,
                            itemBuilder: (context, index) {
                              final question = questions[index];
                              return ListTile(
                                title: Text(
                                  'Soru ${index + 1}: ${question['question'].toString().substring(0, min(50, question['question'].toString().length))}...',
                                  style: const TextStyle(fontSize: 12),
                                ),
                                subtitle: Text(
                                  'Şıklar: ${question['options'].length}, Doğru: ${String.fromCharCode(65 + (question['correctAnswer'] as int))}',
                                  style: const TextStyle(fontSize: 10),
                                ),
                              );
                            },
                          ),
                        ),
                        const SizedBox(height: 16),
                        const Text(
                          'Bu soruları nasıl eklemek istiyorsunuz?',
                          style: TextStyle(fontWeight: FontWeight.bold),
                        ),
                      ],
                    ),
                    actions: [
                      TextButton(
                        onPressed: () => Navigator.pop(context),
                        child: const Text('İptal'),
                      ),
                      ElevatedButton(
                        onPressed: () {
                          Navigator.pop(context);
                          _navigateToBulkEdit(questions);
                        },
                        style: ElevatedButton.styleFrom(
                          backgroundColor: Colors.blue,
                          foregroundColor: Colors.white,
                        ),
                        child: const Text('Düzenle ve Ekle'),
                      ),
                      ElevatedButton(
                        onPressed: () {
                          Navigator.pop(context);
                          _showDirectSaveDialog(questions, fileName);
                        },
                        style: ElevatedButton.styleFrom(
                          backgroundColor: Colors.green,
                          foregroundColor: Colors.white,
                        ),
                        child: const Text('Direkt Firebase\'e Kaydet'),
                      ),
                    ],
                  ),
                );
              }

                // Toplu düzenleme ekranına yönlendir
              void _navigateToBulkEdit(List<Map<String, dynamic>> questions) {
                // TODO: Toplu düzenleme ekranına yönlendir
                // Şimdilik ilk soruyu düzenleme ekranına gönder
                if (questions.isNotEmpty) {
                  final firstQuestion = questions.first;
                  
                  // Soru verilerini form'a yükle
                  _questionController.text = firstQuestion['question'] ?? '';
                  
                  final options = firstQuestion['options'] ?? [];
                  if (options.isNotEmpty) {
                    _option1Controller.text = options[0];
                    if (options.length > 1) _option2Controller.text = options[1];
                    if (options.length > 2) _option3Controller.text = options[2];
                    if (options.length > 3) _option4Controller.text = options[3];
                  }
                  
                  _correctAnswerIndex = (firstQuestion['correctAnswer'] ?? 0) as int;
                  _explanationController.text = firstQuestion['explanation'] ?? '';
                  
                  // Kullanıcıya bilgi ver
                  ScaffoldMessenger.of(context).showSnackBar(
                    SnackBar(
                      content: Text('İlk soru form\'a yüklendi. Diğer sorular için tekrar dosya yükleyin.'),
                      backgroundColor: Colors.blue,
                    ),
                  );
                }
              }

              // Direkt Firebase'e kaydetme dialog'u
              Future<void> _showDirectSaveDialog(List<Map<String, dynamic>> questions, String fileName) async {
                final quizNameController = TextEditingController();
                String selectedQuizId = '';
                bool isNewQuiz = true;
                
                // Mevcut quiz'ler varsa seçenek olarak sun
                if (_availableQuizzes.isNotEmpty) {
                  isNewQuiz = false;
                  selectedQuizId = _availableQuizzes.first['id']!;
                }

                await showDialog(
                  context: context,
                  builder: (context) => StatefulBuilder(
                    builder: (context, setState) => AlertDialog(
                      title: Row(
                        children: [
                          Icon(Icons.cloud_upload, color: Colors.green.shade600),
                          const SizedBox(width: 8),
                          const Expanded(
                            child: Text(
                              'Firebase\'e Direkt Kaydet',
                              style: TextStyle(fontSize: 18),
                            ),
                          ),
                        ],
                      ),
                      content: Column(
                        mainAxisSize: MainAxisSize.min,
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Container(
                            padding: const EdgeInsets.all(12),
                            decoration: BoxDecoration(
                              color: Colors.blue.withOpacity(0.1),
                              borderRadius: BorderRadius.circular(8),
                              border: Border.all(color: Colors.blue.withOpacity(0.3)),
                            ),
                            child: Row(
                              children: [
                                Icon(Icons.info, color: Colors.blue.shade600),
                                const SizedBox(width: 8),
                                Expanded(
                                  child: Text(
                                    '${questions.length} soru direkt Firebase\'e kaydedilecek',
                                    style: TextStyle(
                                      color: Colors.blue.shade600,
                                      fontWeight: FontWeight.bold,
                                    ),
                                  ),
                                ),
                              ],
                            ),
                          ),
                          const SizedBox(height: 16),
                          
                          // Quiz seçimi
                          if (_availableQuizzes.isNotEmpty) ...[
                            Row(
                              children: [
                                Radio<bool>(
                                  value: false,
                                  groupValue: isNewQuiz,
                                  onChanged: (value) {
                                    setState(() {
                                      isNewQuiz = value!;
                                    });
                                  },
                                  activeColor: Colors.blue,
                                ),
                                const Text('Mevcut Quiz Kullan'),
                                const SizedBox(width: 16),
                                Radio<bool>(
                                  value: true,
                                  groupValue: isNewQuiz,
                                  onChanged: (value) {
                                    setState(() {
                                      isNewQuiz = value!;
                                    });
                                  },
                                  activeColor: Colors.blue,
                                ),
                                const Text('Yeni Quiz Oluştur'),
                              ],
                            ),
                            const SizedBox(height: 16),
                          ],
                          
                          // Quiz seçimi dropdown (mevcut quiz kullanılıyorsa)
                          if (!isNewQuiz && _availableQuizzes.isNotEmpty) ...[
                            const Text(
                              'Quiz Seçin:',
                              style: TextStyle(fontWeight: FontWeight.bold),
                            ),
                            const SizedBox(height: 8),
                            Container(
                              decoration: BoxDecoration(
                                color: Colors.grey.withOpacity(0.1),
                                borderRadius: BorderRadius.circular(8),
                                border: Border.all(color: Colors.grey.withOpacity(0.3)),
                              ),
                              child: DropdownButtonFormField<String>(
                                decoration: const InputDecoration(
                                  contentPadding: EdgeInsets.symmetric(horizontal: 12, vertical: 8),
                                  border: InputBorder.none,
                                ),
                                value: selectedQuizId.isNotEmpty ? selectedQuizId : null,
                                items: _availableQuizzes.map((quiz) {
                                  return DropdownMenuItem(
                                    value: quiz['id'],
                                    child: Text(quiz['displayName']!),
                                  );
                                }).toList(),
                                onChanged: (value) {
                                  setState(() {
                                    selectedQuizId = value!;
                                  });
                                },
                              ),
                            ),
                            const SizedBox(height: 16),
                          ],
                          
                          // Yeni quiz adı (yeni quiz oluşturuluyorsa)
                          if (isNewQuiz) ...[
                            const Text(
                              'Yeni Quiz Adı:',
                              style: TextStyle(fontWeight: FontWeight.bold),
                            ),
                            const SizedBox(height: 8),
                            TextField(
                              controller: quizNameController,
                              decoration: InputDecoration(
                                hintText: 'Quiz adını girin...',
                                border: OutlineInputBorder(
                                  borderRadius: BorderRadius.circular(8),
                                ),
                                contentPadding: const EdgeInsets.symmetric(horizontal: 12, vertical: 8),
                              ),
                            ),
                          ],
                        ],
                      ),
                      actions: [
                        TextButton(
                          onPressed: () => Navigator.pop(context),
                          child: const Text('İptal'),
                        ),
                        ElevatedButton(
                          onPressed: () async {
                            // Validasyon
                            if (isNewQuiz && (quizNameController.text.trim().isEmpty)) {
                              ScaffoldMessenger.of(context).showSnackBar(
                                const SnackBar(
                                  content: Text('Lütfen quiz adını girin'),
                                  backgroundColor: Colors.red,
                                ),
                              );
                              return;
                            }
                            
                            if (!isNewQuiz && selectedQuizId.isEmpty) {
                              ScaffoldMessenger.of(context).showSnackBar(
                                const SnackBar(
                                  content: Text('Lütfen quiz seçin'),
                                  backgroundColor: Colors.red,
                                ),
                              );
                              return;
                            }
                            
                            Navigator.pop(context);
                            
                            // Firebase'e kaydet
                            await _saveQuestionsToFirebase(
                              questions,
                              isNewQuiz ? quizNameController.text.trim() : selectedQuizId,
                              isNewQuiz ? quizNameController.text.trim() : _availableQuizzes.firstWhere((q) => q['id'] == selectedQuizId)['displayName']!,
                              isNewQuiz,
                            );
                          },
                          style: ElevatedButton.styleFrom(
                            backgroundColor: Colors.green,
                            foregroundColor: Colors.white,
                          ),
                          child: const Text('Kaydet'),
                        ),
                      ],
                    ),
                  ),
                );
                
                quizNameController.dispose();
              }

              // Soruları Firebase'e kaydet
              Future<void> _saveQuestionsToFirebase(
                List<Map<String, dynamic>> questions,
                String quizId,
                String quizName,
                bool isNewQuiz,
              ) async {
                try {
                  setState(() {
                    _isLoading = true;
                    _errorMessage = '';
                  });

                  // Loading dialog göster
                  showDialog(
                    context: context,
                    barrierDismissible: false,
                    builder: (context) => AlertDialog(
                      content: Row(
                        children: [
                          const CircularProgressIndicator(),
                          const SizedBox(width: 16),
                          Text('${questions.length} soru kaydediliyor...'),
                        ],
                      ),
                    ),
                  );

                  // WordParserService ile Firebase'e kaydet
                  final result = await _wordParserService.saveQuestionsToFirebase(
                    questions,
                    quizId,
                    isNewQuiz ? quizName : quizId,
                  );

                  // Loading dialog'u kapat
                  Navigator.pop(context);

                  if (result['success'] == true) {
                    // Başarılı
                    ScaffoldMessenger.of(context).showSnackBar(
                      SnackBar(
                        content: Text(result['message']),
                        backgroundColor: Colors.green,
                        duration: const Duration(seconds: 5),
                      ),
                    );
                    
                    // Quiz listesini yenile
                    await _fetchQuizzes();
                    
                    // Başarı dialog'u göster
                    await showDialog(
                      context: context,
                      builder: (context) => AlertDialog(
                        title: Row(
                          children: [
                            Icon(Icons.check_circle, color: Colors.green.shade600),
                            const SizedBox(width: 8),
                            const Text('Başarılı!'),
                          ],
                        ),
                        content: Column(
                          mainAxisSize: MainAxisSize.min,
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text('${result['totalQuestions']} soru başarıyla kaydedildi!'),
                            const SizedBox(height: 8),
                            Text('Quiz: ${result['quizName']}'),
                            const SizedBox(height: 8),
                            Text('Quiz ID: ${result['quizId']}'),
                          ],
                        ),
                        actions: [
                          ElevatedButton(
                            onPressed: () => Navigator.pop(context),
                            child: const Text('Tamam'),
                          ),
                        ],
                      ),
                    );
                  } else {
                    // Hata
                    ScaffoldMessenger.of(context).showSnackBar(
                      SnackBar(
                        content: Text(result['message']),
                        backgroundColor: Colors.red,
                        duration: const Duration(seconds: 5),
                      ),
                    );
                  }
                } catch (e) {
                  // Loading dialog'u kapat
                  if (Navigator.canPop(context)) {
                    Navigator.pop(context);
                  }
                  
                  setState(() {
                    _errorMessage = 'Sorular kaydedilirken hata oluştu: $e';
                    _isLoading = false;
                  });
                  
                  ScaffoldMessenger.of(context).showSnackBar(
                    SnackBar(
                      content: Text('Hata: $e'),
                      backgroundColor: Colors.red,
                    ),
                  );
                } finally {
                  setState(() {
                    _isLoading = false;
                  });
                }
              }
}
