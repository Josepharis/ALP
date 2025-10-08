import 'package:flutter/material.dart';
import '../l10n/app_localizations.dart';
import 'package:cloud_firestore/cloud_firestore.dart';

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

  int _correctAnswerIndex = 0;
  String _selectedQuizType = 'Mevcut Quiz';
  String _selectedCategory = 'Anestezi';
  String _difficultyLevel = 'medium'; // Zorluk seviyesi
  bool _isLoading = false;
  String _errorMessage = '';
  bool _isNewQuizSelected = false;
  List<Map<String, String>> _availableQuizzes = []; // {id, displayName}
  String _selectedQuizId = '';
  String _selectedLanguage = 'turkish'; // Dil seçimi

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
      _difficultyLevel = widget.questionData!['difficulty'] ?? 'medium';

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


      List<Map<String, String>> quizList = [];

      // Firebase'deki tüm collection'ları kontrol et
      try {
        final instance = FirebaseFirestore.instance;
        
        // 1. quizzes collection'ını kontrol et
        final quizzesSnapshot = await instance.collection('quizzes').get();
        
        // 2. quizCategories collection'ını kontrol et
        final categoriesSnapshot = await instance.collection('quizCategories').get();
        
        // 3. questions collection'ını kontrol et (quiz ID'leri için)
        final questionsSnapshot = await instance.collection('questions').get();
        
        // quizCategories collection'ından quiz'leri çek
        final querySnapshot = categoriesSnapshot;

        for (var doc in querySnapshot.docs) {
          final data = doc.data();
          final displayName = data['displayName'] as String? ?? _createDisplayNameFromId(doc.id);
          final language = data['language'] as String? ?? 'turkish';
          
          
          // Dil filtresi uygula
          if (language == _selectedLanguage) {
            quizList.add({'id': doc.id, 'displayName': displayName});
          } else {
          }
        }

        for (var quiz in quizList) {
        }
      } catch (e) {
      }

      setState(() {
        _availableQuizzes = quizList;

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
        setState(() {
          _isNewQuizSelected = true;
          _selectedQuizType = 'Yeni Quiz';
        });
      }
    } catch (e) {
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
        actions: [],
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
          // Dil seçimi kaldırıldı - artık uygulama başlangıcında seçiliyor
          const SizedBox(height: 24),
          
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
          const SizedBox(height: 24),

          // Zorluk seviyesi
          _buildSectionTitle('Zorluk Seviyesi'),
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
              value: _difficultyLevel,
              items: const [
                DropdownMenuItem(
                  value: 'easy',
                  child: Text('Kolay'),
                ),
                DropdownMenuItem(
                  value: 'medium',
                  child: Text('Orta'),
                ),
                DropdownMenuItem(
                  value: 'hard',
                  child: Text('Zor'),
                ),
              ],
              onChanged: (value) {
                if (value != null) {
                  setState(() {
                    _difficultyLevel = value;
                  });
                }
              },
            ),
          ),
        ],
      ),
    );
  }

  // Dil seçici widget'ı kaldırıldı - artık uygulama başlangıcında seçiliyor

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
                        Row(
                          children: [
                            Icon(
                              Icons.info_outline,
                              color: Colors.orange,
                              size: 20,
                            ),
                            const SizedBox(width: 8),
                            Expanded(
                              child: Text(
                                'Bu dilde quiz bulunamadı',
                                style: TextStyle(
                                  color: Colors.orange,
                                  fontWeight: FontWeight.bold,
                                  fontSize: 14,
                                ),
                              ),
                            ),
                          ],
                        ),
                        const SizedBox(height: 8),
                        Text(
                          'Dil: ${_selectedLanguage == 'turkish' ? 'Türkçe' : 'İngilizce'}',
                          style: TextStyle(
                            color: Colors.white70,
                            fontSize: 12,
                          ),
                        ),
                        const SizedBox(height: 12),
                        InkWell(
                          onTap: () {
                            setState(() {
                              _isNewQuizSelected = true;
                              _selectedQuizType = 'Yeni Quiz';
                            });
                          },
                          child: Container(
                            padding: const EdgeInsets.symmetric(horizontal: 12, vertical: 8),
                            decoration: BoxDecoration(
                              color: Colors.blue.withOpacity(0.2),
                              borderRadius: BorderRadius.circular(8),
                              border: Border.all(color: Colors.blue.withOpacity(0.3)),
                            ),
                            child: Row(
                              mainAxisSize: MainAxisSize.min,
                              children: [
                                Icon(
                                  Icons.add_circle_outline,
                                  color: Colors.blue.shade300,
                                  size: 16,
                                ),
                                const SizedBox(width: 8),
                                Text(
                                  'Yeni Quiz Oluştur',
                                  style: TextStyle(
                                    color: Colors.blue.shade300,
                                    fontWeight: FontWeight.bold,
                                  ),
                                ),
                              ],
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
    String searchQuery = '';
    List<Map<String, String>> filteredQuizzes = List.from(_availableQuizzes);
    
    showDialog(
      context: context,
      builder: (context) => StatefulBuilder(
        builder: (context, setState) {
          return AlertDialog(
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
                Expanded(
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      const Text(
                        'Quiz Seçin',
                        style: TextStyle(
                          color: Colors.white,
                          fontSize: 18,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                      Text(
                        'Dil: ${_selectedLanguage == 'turkish' ? 'Türkçe' : 'İngilizce'}',
                        style: TextStyle(
                          color: Colors.white70,
                          fontSize: 12,
                        ),
                      ),
                    ],
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
              width: MediaQuery.of(context).size.width * 0.9,
              height: MediaQuery.of(context).size.height * 0.7,
              child: Column(
                children: [
                  // Arama çubuğu
                  Container(
                    padding: const EdgeInsets.symmetric(horizontal: 12, vertical: 4),
                    decoration: BoxDecoration(
                      color: Colors.white.withOpacity(0.1),
                      borderRadius: BorderRadius.circular(20),
                      border: Border.all(color: Colors.white.withOpacity(0.3)),
                    ),
                    child: TextField(
                      style: const TextStyle(color: Colors.white),
                      decoration: InputDecoration(
                        hintText: 'Quiz ara...',
                        hintStyle: TextStyle(color: Colors.white.withOpacity(0.6)),
                        prefixIcon: Icon(Icons.search, color: Colors.white.withOpacity(0.7)),
                        border: InputBorder.none,
                        contentPadding: const EdgeInsets.symmetric(vertical: 8),
                      ),
                      onChanged: (value) {
                        setState(() {
                          searchQuery = value.toLowerCase();
                          filteredQuizzes = _availableQuizzes.where((quiz) {
                            return quiz['displayName']!.toLowerCase().contains(searchQuery);
                          }).toList();
                        });
                      },
                    ),
                  ),
                  const SizedBox(height: 12),
                  
                  // Quiz sayısı
                  Container(
                    padding: const EdgeInsets.symmetric(horizontal: 12, vertical: 6),
                    decoration: BoxDecoration(
                      color: Colors.blue.withOpacity(0.2),
                      borderRadius: BorderRadius.circular(12),
                    ),
                    child: Row(
                      mainAxisSize: MainAxisSize.min,
                      children: [
                        Icon(Icons.info_outline, size: 16, color: Colors.blue.shade300),
                        const SizedBox(width: 4),
                        Text(
                          '${filteredQuizzes.length} quiz bulundu',
                          style: TextStyle(
                            color: Colors.blue.shade300,
                            fontWeight: FontWeight.w500,
                            fontSize: 12,
                          ),
                        ),
                      ],
                    ),
                  ),
                  const SizedBox(height: 12),
                  
                  // Quiz listesi
                  Expanded(
                    child: filteredQuizzes.isEmpty
                        ? Center(
                            child: Column(
                              mainAxisAlignment: MainAxisAlignment.center,
                              children: [
                                Icon(
                                  searchQuery.isEmpty ? Icons.quiz_outlined : Icons.search_off,
                                  size: 64,
                                  color: Colors.white.withOpacity(0.5),
                                ),
                                const SizedBox(height: 16),
                                Text(
                                  searchQuery.isEmpty 
                                      ? 'Bu dilde quiz bulunamadı'
                                      : 'Arama sonucu bulunamadı',
                                  style: TextStyle(
                                    color: Colors.white.withOpacity(0.7),
                                    fontSize: 16,
                                  ),
                                ),
                                const SizedBox(height: 8),
                                Text(
                                  searchQuery.isEmpty
                                      ? 'Farklı bir dil seçin veya yeni quiz oluşturun'
                                      : '"${searchQuery}" için sonuç bulunamadı',
                                  textAlign: TextAlign.center,
                                  style: TextStyle(
                                    color: Colors.white.withOpacity(0.5),
                                    fontSize: 12,
                                  ),
                                ),
                              ],
                            ),
                          )
                        : ListView.builder(
                            itemCount: filteredQuizzes.length,
                            itemBuilder: (context, index) {
                              final quiz = filteredQuizzes[index];
                              final isSelected = quiz['displayName'] == _selectedCategory;
                              
                              return Container(
                                margin: const EdgeInsets.only(bottom: 4),
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
                                      fontWeight: isSelected ? FontWeight.bold : FontWeight.w500,
                                      fontSize: 14,
                                    ),
                                    maxLines: 2,
                                    overflow: TextOverflow.ellipsis,
                                  ),
                                  trailing: isSelected
                                      ? Icon(
                                          Icons.check_circle,
                                          color: Colors.blue.shade300,
                                          size: 20,
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
                ],
              ),
            ),
            actions: [
              TextButton.icon(
                onPressed: () => Navigator.pop(context),
                icon: const Icon(Icons.close, size: 18),
                label: const Text('İptal'),
                style: TextButton.styleFrom(
                  foregroundColor: Colors.white70,
                ),
              ),
              if (_availableQuizzes.isEmpty)
                ElevatedButton(
                  onPressed: () {
                    Navigator.pop(context);
                    setState(() {
                      _isNewQuizSelected = true;
                      _selectedQuizType = 'Yeni Quiz';
                    });
                  },
                  style: ElevatedButton.styleFrom(
                    backgroundColor: Colors.blue,
                    foregroundColor: Colors.white,
                  ),
                  child: const Text('Yeni Quiz Oluştur'),
                ),
            ],
          );
        },
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
        color: _errorMessage.contains('başarılı') || _errorMessage.contains('bulundu') 
            ? Colors.green.withOpacity(0.1)
            : Colors.red.withOpacity(0.1),
        borderRadius: BorderRadius.circular(12),
        border: Border.all(
          color: _errorMessage.contains('başarılı') || _errorMessage.contains('bulundu')
              ? Colors.green.withOpacity(0.3)
              : Colors.red.withOpacity(0.3)
        ),
      ),
      child: Row(
        children: [
          Icon(
            _errorMessage.contains('başarılı') || _errorMessage.contains('bulundu')
                ? Icons.check_circle 
                : Icons.error_outline, 
            color: _errorMessage.contains('başarılı') || _errorMessage.contains('bulundu')
                ? Colors.green 
                : Colors.red
          ),
          const SizedBox(width: 8),
          Expanded(
            child: Text(
              _errorMessage,
              style: TextStyle(
                color: _errorMessage.contains('başarılı') || _errorMessage.contains('bulundu')
                    ? Colors.green 
                    : Colors.red,
                fontSize: 12,
              ),
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
          'difficulty': _difficultyLevel, // Zorluk seviyesi
          'language': _selectedLanguage, // Dil bilgisini ekle
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
}
