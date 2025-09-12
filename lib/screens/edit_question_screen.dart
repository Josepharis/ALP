import 'package:flutter/material.dart';
import '../services/admin_service.dart';

class EditQuestionScreen extends StatefulWidget {
  final Map<String, dynamic> question;

  const EditQuestionScreen({super.key, required this.question});

  @override
  _EditQuestionScreenState createState() => _EditQuestionScreenState();
}

class _EditQuestionScreenState extends State<EditQuestionScreen> {
  final _formKey = GlobalKey<FormState>();
  final AdminService _adminService = AdminService();

  late TextEditingController _questionController;
  late List<TextEditingController> _optionControllers;
  late TextEditingController _explanationController;

  String _selectedDifficulty = 'medium';
  int _correctAnswerIndex = 0;
  bool _isLoading = false;

  final List<String> _difficulties = ['easy', 'medium', 'hard'];

  @override
  void initState() {
    super.initState();
    _initializeControllers();
  }

  void _initializeControllers() {
    _questionController = TextEditingController(
      text: widget.question['question'] ?? '',
    );
    _explanationController = TextEditingController(
      text: widget.question['explanation'] ?? '',
    );
    // Handle difficulty - could be int or String
    final difficulty = widget.question['difficulty'];
    if (difficulty is int) {
      // Convert int to string difficulty
      switch (difficulty) {
        case 1:
          _selectedDifficulty = 'easy';
          break;
        case 2:
          _selectedDifficulty = 'medium';
          break;
        case 3:
          _selectedDifficulty = 'hard';
          break;
        default:
          _selectedDifficulty = 'medium';
      }
    } else if (difficulty is String) {
      _selectedDifficulty = difficulty;
    } else {
      _selectedDifficulty = 'medium';
    }
    
    // Handle correctAnswer - ensure it's int
    final correctAnswer = widget.question['correctAnswer'];
    if (correctAnswer is int) {
      _correctAnswerIndex = correctAnswer;
    } else if (correctAnswer is String) {
      _correctAnswerIndex = int.tryParse(correctAnswer) ?? 0;
    } else {
      _correctAnswerIndex = 0;
    }

    final options = List<String>.from(
      widget.question['options'] ?? ['', '', '', ''],
    );
    _optionControllers =
        options.map((option) => TextEditingController(text: option)).toList();

    // Ensure we have at least 4 options
    while (_optionControllers.length < 4) {
      _optionControllers.add(TextEditingController());
    }
  }


  @override
  void dispose() {
    _questionController.dispose();
    _explanationController.dispose();
    for (var controller in _optionControllers) {
      controller.dispose();
    }
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Soruyu Düzenle'),
        backgroundColor: Colors.indigo.shade900,
        actions: [
          if (_isLoading)
            const Padding(
              padding: EdgeInsets.all(16.0),
              child: SizedBox(
                width: 20,
                height: 20,
                child: CircularProgressIndicator(
                  strokeWidth: 2,
                  valueColor: AlwaysStoppedAnimation<Color>(Colors.white),
                ),
              ),
            )
          else
            IconButton(onPressed: _saveQuestion, icon: const Icon(Icons.save)),
        ],
      ),
      body: Container(
        decoration: BoxDecoration(
          gradient: LinearGradient(
            begin: Alignment.topLeft,
            end: Alignment.bottomRight,
            colors: [Colors.blue.shade900, Colors.indigo.shade900],
          ),
        ),
        child: SafeArea(
          child: SingleChildScrollView(
            padding: const EdgeInsets.all(20),
            child: Form(
              key: _formKey,
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  _buildSectionCard(
                    title: 'Soru Bilgileri',
                    child: Column(
                      children: [
                        _buildQuestionField(),
                        const SizedBox(height: 16),
                        _buildDifficultyDropdown(),
                      ],
                    ),
                  ),
                  const SizedBox(height: 20),
                  _buildSectionCard(
                    title: 'Seçenekler',
                    child: Column(
                      children: List.generate(
                        _optionControllers.length,
                        (index) => _buildOptionField(index),
                      ),
                    ),
                  ),
                  const SizedBox(height: 20),
                  _buildSectionCard(
                    title: 'Açıklama',
                    child: _buildExplanationField(),
                  ),
                  const SizedBox(height: 30),
                  _buildActionButtons(),
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }

  Widget _buildSectionCard({required String title, required Widget child}) {
    return Container(
      width: double.infinity,
      padding: const EdgeInsets.all(20),
      decoration: BoxDecoration(
        color: Colors.white.withOpacity(0.1),
        borderRadius: BorderRadius.circular(15),
        border: Border.all(color: Colors.white.withOpacity(0.2)),
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            title,
            style: const TextStyle(
              fontSize: 18,
              fontWeight: FontWeight.bold,
              color: Colors.white,
            ),
          ),
          const SizedBox(height: 16),
          child,
        ],
      ),
    );
  }

  Widget _buildQuestionField() {
    return TextFormField(
      controller: _questionController,
      maxLines: 3,
      style: const TextStyle(color: Colors.white),
      decoration: InputDecoration(
        labelText: 'Soru',
        labelStyle: const TextStyle(color: Colors.white70),
        border: OutlineInputBorder(
          borderRadius: BorderRadius.circular(10),
          borderSide: BorderSide(color: Colors.white.withOpacity(0.3)),
        ),
        enabledBorder: OutlineInputBorder(
          borderRadius: BorderRadius.circular(10),
          borderSide: BorderSide(color: Colors.white.withOpacity(0.3)),
        ),
        focusedBorder: OutlineInputBorder(
          borderRadius: BorderRadius.circular(10),
          borderSide: const BorderSide(color: Colors.blue),
        ),
      ),
      validator: (value) {
        if (value == null || value.isEmpty) {
          return 'Lütfen bir soru girin';
        }
        return null;
      },
    );
  }


  Widget _buildDifficultyDropdown() {
    return DropdownButtonFormField<String>(
      value: _selectedDifficulty,
      style: const TextStyle(color: Colors.white),
      dropdownColor: Colors.indigo.shade800,
      decoration: InputDecoration(
        labelText: 'Zorluk',
        labelStyle: const TextStyle(color: Colors.white70),
        border: OutlineInputBorder(
          borderRadius: BorderRadius.circular(10),
          borderSide: BorderSide(color: Colors.white.withOpacity(0.3)),
        ),
        enabledBorder: OutlineInputBorder(
          borderRadius: BorderRadius.circular(10),
          borderSide: BorderSide(color: Colors.white.withOpacity(0.3)),
        ),
        focusedBorder: OutlineInputBorder(
          borderRadius: BorderRadius.circular(10),
          borderSide: const BorderSide(color: Colors.blue),
        ),
      ),
      items:
          _difficulties.map((difficulty) {
            return DropdownMenuItem(
              value: difficulty,
              child: Text(_getDifficultyDisplayName(difficulty)),
            );
          }).toList(),
      onChanged: (value) {
        setState(() => _selectedDifficulty = value ?? 'medium');
      },
    );
  }

  String _getDifficultyDisplayName(String difficulty) {
    switch (difficulty) {
      case 'easy':
        return 'Kolay';
      case 'medium':
        return 'Orta';
      case 'hard':
        return 'Zor';
      default:
        return 'Orta';
    }
  }

  Widget _buildOptionField(int index) {
    return Padding(
      padding: const EdgeInsets.only(bottom: 12),
      child: Row(
        children: [
          Radio<int>(
            value: index,
            groupValue: _correctAnswerIndex,
            onChanged: (value) {
              setState(() => _correctAnswerIndex = value ?? 0);
            },
            activeColor: Colors.green,
          ),
          Expanded(
            child: TextFormField(
              controller: _optionControllers[index],
              style: const TextStyle(color: Colors.white),
              decoration: InputDecoration(
                labelText: 'Seçenek ${String.fromCharCode(65 + index)}',
                labelStyle: const TextStyle(color: Colors.white70),
                border: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(10),
                  borderSide: BorderSide(color: Colors.white.withOpacity(0.3)),
                ),
                enabledBorder: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(10),
                  borderSide: BorderSide(color: Colors.white.withOpacity(0.3)),
                ),
                focusedBorder: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(10),
                  borderSide: const BorderSide(color: Colors.blue),
                ),
              ),
              validator: (value) {
                if (value == null || value.isEmpty) {
                  return 'Bu seçenek boş olamaz';
                }
                return null;
              },
            ),
          ),
        ],
      ),
    );
  }

  Widget _buildExplanationField() {
    return Container(
      constraints: const BoxConstraints(
        minHeight: 120, // Minimum yükseklik
        maxHeight: 300, // Maksimum yükseklik
      ),
      child: TextFormField(
        controller: _explanationController,
        maxLines: null, // Sınırsız satır
        minLines: 3, // Minimum 3 satır
        textAlignVertical: TextAlignVertical.top, // Üstten hizala
        style: const TextStyle(
          color: Colors.white,
          fontSize: 14,
          height: 1.4, // Satır aralığı
        ),
        decoration: InputDecoration(
          labelText: 'Açıklama (Opsiyonel)',
          labelStyle: const TextStyle(color: Colors.white70),
          hintText: 'Sorunun detaylı açıklamasını buraya yazabilirsiniz...',
          hintStyle: TextStyle(
            color: Colors.white.withOpacity(0.5),
            fontSize: 13,
          ),
          alignLabelWithHint: true, // Label'ı üstte hizala
          contentPadding: const EdgeInsets.symmetric(
            horizontal: 16,
            vertical: 16,
          ),
          border: OutlineInputBorder(
            borderRadius: BorderRadius.circular(12),
            borderSide: BorderSide(color: Colors.white.withOpacity(0.3)),
          ),
          enabledBorder: OutlineInputBorder(
            borderRadius: BorderRadius.circular(12),
            borderSide: BorderSide(color: Colors.white.withOpacity(0.3)),
          ),
          focusedBorder: OutlineInputBorder(
            borderRadius: BorderRadius.circular(12),
            borderSide: const BorderSide(color: Colors.blue, width: 2),
          ),
          filled: true,
          fillColor: Colors.white.withOpacity(0.05),
        ),
      ),
    );
  }

  Widget _buildActionButtons() {
    return Row(
      children: [
        Expanded(
          child: ElevatedButton(
            onPressed: () => Navigator.pop(context),
            style: ElevatedButton.styleFrom(
              backgroundColor: Colors.grey.shade600,
              foregroundColor: Colors.white,
              padding: const EdgeInsets.symmetric(vertical: 16),
              shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(10),
              ),
            ),
            child: const Text('İptal'),
          ),
        ),
        const SizedBox(width: 16),
        Expanded(
          child: ElevatedButton(
            onPressed: _isLoading ? null : _saveQuestion,
            style: ElevatedButton.styleFrom(
              backgroundColor: Colors.green.shade600,
              foregroundColor: Colors.white,
              padding: const EdgeInsets.symmetric(vertical: 16),
              shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(10),
              ),
            ),
            child:
                _isLoading
                    ? const SizedBox(
                      width: 20,
                      height: 20,
                      child: CircularProgressIndicator(
                        strokeWidth: 2,
                        valueColor: AlwaysStoppedAnimation<Color>(Colors.white),
                      ),
                    )
                    : const Text('Kaydet'),
          ),
        ),
      ],
    );
  }

  Future<void> _saveQuestion() async {
    if (!_formKey.currentState!.validate()) return;

    setState(() => _isLoading = true);

    // Convert difficulty string back to int if needed
    int difficultyInt;
    switch (_selectedDifficulty) {
      case 'easy':
        difficultyInt = 1;
        break;
      case 'medium':
        difficultyInt = 2;
        break;
      case 'hard':
        difficultyInt = 3;
        break;
      default:
        difficultyInt = 2;
    }

    final questionData = {
      'question': _questionController.text.trim(),
      'options':
          _optionControllers
              .map((controller) => controller.text.trim())
              .toList(),
      'correctAnswer': _correctAnswerIndex,
      'explanation': _explanationController.text.trim(),
      'category': widget.question['category'], // Keep original category
      'difficulty': difficultyInt, // Save as int
    };

    final success = await _adminService.updateQuestion(
      widget.question['id'],
      questionData,
    );

    setState(() => _isLoading = false);

    if (success) {
      ScaffoldMessenger.of(context).showSnackBar(
        const SnackBar(
          content: Text('Soru başarıyla güncellendi'),
          backgroundColor: Colors.green,
        ),
      );
      Navigator.pop(context, true);
    } else {
      ScaffoldMessenger.of(context).showSnackBar(
        const SnackBar(
          content: Text('Soru güncellenirken bir hata oluştu'),
          backgroundColor: Colors.red,
        ),
      );
    }
  }
}
