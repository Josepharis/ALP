import 'package:flutter/material.dart';
import '../models/spot_info.dart';
import '../services/spot_service.dart';
import '../data/spot_unit_titles.dart';

class AddSpotInfoScreen extends StatefulWidget {
  final SpotItem? editingItem;

  const AddSpotInfoScreen({super.key, this.editingItem});

  @override
  _AddSpotInfoScreenState createState() => _AddSpotInfoScreenState();
}

class _AddSpotInfoScreenState extends State<AddSpotInfoScreen> {
  final _formKey = GlobalKey<FormState>();
  final _titleController = TextEditingController();
  final _descriptionController = TextEditingController();
  final _subtitleController = TextEditingController();
  final _additionalInfoController = TextEditingController();
  final _categoryController = TextEditingController();
  final _unitController = TextEditingController();
  
  String _selectedLanguage = 'tr';
  bool _isLoading = false;
  final SpotService _spotService = SpotService();

  @override
  void initState() {
    super.initState();
    if (widget.editingItem != null) {
      _titleController.text = widget.editingItem!.title;
      _descriptionController.text = widget.editingItem!.description;
      _subtitleController.text = widget.editingItem!.subtitle ?? '';
      _additionalInfoController.text = widget.editingItem!.additionalInfo ?? '';
      _categoryController.text = widget.editingItem!.categoryName;
      _unitController.text = widget.editingItem!.unitName ?? '';
      _selectedLanguage = widget.editingItem!.language;
    }
  }

  @override
  void dispose() {
    _titleController.dispose();
    _descriptionController.dispose();
    _subtitleController.dispose();
    _additionalInfoController.dispose();
    _categoryController.dispose();
    _unitController.dispose();
    super.dispose();
  }

  Future<void> _submitForm() async {
    if (!_formKey.currentState!.validate()) return;

    setState(() => _isLoading = true);

    try {
      final item = SpotItem(
        id: widget.editingItem?.id ?? '',
        title: _titleController.text.trim(),
        description: _descriptionController.text.trim(),
        subtitle: _subtitleController.text.trim().isEmpty ? null : _subtitleController.text.trim(),
        additionalInfo: _additionalInfoController.text.trim().isEmpty ? null : _additionalInfoController.text.trim(),
        categoryName: _categoryController.text.trim(),
        unitName: _unitController.text.trim().isEmpty ? null : _unitController.text.trim(),
        language: _selectedLanguage,
        createdAt: widget.editingItem?.createdAt ?? DateTime.now(),
      );

      if (widget.editingItem != null) {
        await _spotService.updateSpotItem(widget.editingItem!.id, item);
      } else {
        await _spotService.addSpotItem(item);
      }

      if (mounted) {
        Navigator.pop(context, true);
        ScaffoldMessenger.of(context).showSnackBar(
          SnackBar(
            content: Text(widget.editingItem != null ? '✅ Bilgi güncellendi' : '✅ Bilgi eklendi'),
            backgroundColor: Colors.green,
          ),
        );
      }
    } catch (e) {
      if (mounted) {
        ScaffoldMessenger.of(context).showSnackBar(
          SnackBar(content: Text('❌ Hata: $e'), backgroundColor: Colors.red),
        );
      }
    } finally {
      if (mounted) setState(() => _isLoading = false);
    }
  }

  @override
  Widget build(BuildContext context) {
    bool isEditing = widget.editingItem != null;

    return Scaffold(
      backgroundColor: Colors.black,
      appBar: AppBar(
        title: Text(isEditing ? 'Spot Bilgiyi Düzenle' : 'Yeni Spot Bilgi Ekle'),
        backgroundColor: Colors.transparent,
        elevation: 0,
      ),
      body: Container(
        padding: const EdgeInsets.all(20),
        child: Form(
          key: _formKey,
          child: SingleChildScrollView(
            child: Column(
              children: [
                _buildSegmentedLanguageSelector(),
                const SizedBox(height: 20),
                _buildUnitDropdown(),
                const SizedBox(height: 20),
                _buildField(
                  controller: _categoryController,
                  label: 'Kategori (Örn: Medikal Gazlar)',
                  hint: 'Hangi kategori başlığı altında görünecek?',
                  validator: (v) => v!.isEmpty ? 'Kategori boş olamaz' : null,
                ),
                const SizedBox(height: 20),
                _buildField(
                  controller: _titleController,
                  label: 'Başlık (Title)',
                  validator: (v) => v!.isEmpty ? 'Başlık boş olamaz' : null,
                ),
                const SizedBox(height: 20),
                _buildField(
                  controller: _subtitleController,
                  label: 'Alt Başlık (Opsiyonel)',
                ),
                const SizedBox(height: 20),
                _buildField(
                  controller: _descriptionController,
                  label: 'Açıklama (Description)',
                  maxLines: 4,
                  validator: (v) => v!.isEmpty ? 'Açıklama boş olamaz' : null,
                ),
                const SizedBox(height: 20),
                _buildField(
                  controller: _additionalInfoController,
                  label: 'Ek Bilgi (Additional Info - Opsiyonel)',
                  maxLines: 3,
                ),
                const SizedBox(height: 40),
                SizedBox(
                  width: double.infinity,
                  height: 55,
                  child: ElevatedButton(
                    onPressed: _isLoading ? null : _submitForm,
                    style: ElevatedButton.styleFrom(
                      backgroundColor: Colors.blueAccent,
                      shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(15)),
                    ),
                    child: _isLoading
                        ? const CircularProgressIndicator(color: Colors.white)
                        : Text(isEditing ? 'GÜNCELLE' : 'KAYDET',
                            style: const TextStyle(fontWeight: FontWeight.bold, fontSize: 16)),
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }

  Widget _buildSegmentedLanguageSelector() {
    return Container(
      decoration: BoxDecoration(
        color: Colors.white.withOpacity(0.1),
        borderRadius: BorderRadius.circular(12),
      ),
      padding: const EdgeInsets.all(4),
      child: Row(
        children: [
          Expanded(child: _languageOption('tr', 'Türkçe', '🇹🇷')),
          Expanded(child: _languageOption('en', 'English', '🇺🇸')),
        ],
      ),
    );
  }

  Widget _languageOption(String lang, String label, String flag) {
    bool isSelected = _selectedLanguage == lang;
    return GestureDetector(
      onTap: () => setState(() => _selectedLanguage = lang),
      child: Container(
        padding: const EdgeInsets.symmetric(vertical: 12),
        decoration: BoxDecoration(
          color: isSelected ? Colors.blueAccent : Colors.transparent,
          borderRadius: BorderRadius.circular(8),
        ),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text(flag),
            const SizedBox(width: 8),
            Text(label, style: TextStyle(color: isSelected ? Colors.white : Colors.white60, fontWeight: isSelected ? FontWeight.bold : FontWeight.normal)),
          ],
        ),
      ),
    );
  }

  Widget _buildField({
    required TextEditingController controller,
    required String label,
    String? hint,
    int maxLines = 1,
    String? Function(String?)? validator,
  }) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(label, style: const TextStyle(color: Colors.white70, fontSize: 14, fontWeight: FontWeight.bold)),
        const SizedBox(height: 8),
        TextFormField(
          controller: controller,
          maxLines: maxLines,
          validator: validator,
          style: const TextStyle(color: Colors.white),
          decoration: InputDecoration(
            hintText: hint,
            hintStyle: TextStyle(color: Colors.white.withOpacity(0.3)),
            filled: true,
            fillColor: Colors.white.withOpacity(0.05),
            border: OutlineInputBorder(borderRadius: BorderRadius.circular(12), borderSide: BorderSide(color: Colors.white.withOpacity(0.1))),
            enabledBorder: OutlineInputBorder(borderRadius: BorderRadius.circular(12), borderSide: BorderSide(color: Colors.white.withOpacity(0.1))),
            focusedBorder: OutlineInputBorder(borderRadius: BorderRadius.circular(12), borderSide: const BorderSide(color: Colors.blueAccent)),
          ),
        ),
      ],
    );
  }

  Widget _buildUnitDropdown() {
    final bool isEnglish = _selectedLanguage == 'en';
    final List<String> units = SpotUnitTitles.getUnitTitles(isEnglish);
    
    // Eğer mevcut bir değer varsa ve listede yoksa, 'Genel Bilgiler' veya listedeki ilk opsiyonu düşünebiliriz ama 
    // en iyisi listede yoksa null set etmek.
    String? currentValue = _unitController.text.isEmpty ? null : _unitController.text;
    if (currentValue != null && !units.contains(currentValue)) {
      currentValue = null;
    }

    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        const Text('Ünite / Section (Opsiyonel)', 
          style: TextStyle(color: Colors.white70, fontSize: 14, fontWeight: FontWeight.bold)),
        const SizedBox(height: 8),
        DropdownButtonFormField<String>(
          value: currentValue,
          dropdownColor: Colors.grey.shade900,
          style: const TextStyle(color: Colors.white),
          decoration: InputDecoration(
            hintText: 'Ünite Seçin',
            hintStyle: TextStyle(color: Colors.white.withOpacity(0.3)),
            filled: true,
            fillColor: Colors.white.withOpacity(0.05),
            border: OutlineInputBorder(borderRadius: BorderRadius.circular(12), borderSide: BorderSide(color: Colors.white.withOpacity(0.1))),
            enabledBorder: OutlineInputBorder(borderRadius: BorderRadius.circular(12), borderSide: BorderSide(color: Colors.white.withOpacity(0.1))),
          ),
          items: [
            const DropdownMenuItem<String>(
              value: null,
              child: Text('Seçilmedi (Varsayılan)', style: TextStyle(color: Colors.white60)),
            ),
            ...units.map((unit) => DropdownMenuItem(
              value: unit,
              child: Text(unit, style: const TextStyle(color: Colors.white)),
            )),
          ],
          onChanged: (val) {
            setState(() {
              _unitController.text = val ?? '';
            });
          },
        ),
      ],
    );
  }
}
