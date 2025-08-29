import 'dart:io';
import 'package:file_picker/file_picker.dart';
import 'package:cloud_firestore/cloud_firestore.dart';

class WordParserService {
  // Word dosyasından soruları parse et
  Future<List<Map<String, dynamic>>> parseWordFile(File file) async {
    try {
      print('Word dosyası parse ediliyor: ${file.path}');
      
      // Dosyayı text olarak oku
      final content = await file.readAsString();
      final lines = content.split('\n');
      
      print('Toplam satır sayısı: ${lines.length}');
      
      final questions = <Map<String, dynamic>>[];
      Map<String, dynamic>? currentQuestion;
      
      for (int i = 0; i < lines.length; i++) {
        final line = lines[i].trim();
        
        if (line.isEmpty) continue;
        
        print('Satır $i: $line');
        
        // Soru başlangıcını kontrol et
        if (_isQuestionStart(line)) {
          // Önceki soruyu kaydet
          if (currentQuestion != null && currentQuestion['question']?.isNotEmpty == true) {
            questions.add(currentQuestion);
          }
          
          // Yeni soru başlat
          currentQuestion = {
            'question': _extractQuestionText(line),
            'options': [],
            'correctAnswer': 0,
            'explanation': '',
            'difficulty': 'medium',
            'category': 'Word Import',
            'source': 'word_file',
            'originalText': line,
          };
          
          print('Yeni soru başladı: ${currentQuestion['question']}');
        }
        // Şık kontrolü
        else if (_isOption(line) && currentQuestion != null) {
          final option = _extractOptionText(line);
          if (option.isNotEmpty) {
            currentQuestion['options'].add(option);
            print('Şık eklendi: $option');
          }
        }
        // Doğru cevap kontrolü
        else if (_isCorrectAnswer(line) && currentQuestion != null) {
          final correctAnswer = _extractCorrectAnswer(line);
          if (correctAnswer >= 0 && correctAnswer < currentQuestion['options'].length) {
            currentQuestion['correctAnswer'] = correctAnswer;
            print('Doğru cevap: $correctAnswer');
          }
        }
        // Açıklama kontrolü
        else if (_isExplanation(line) && currentQuestion != null) {
          final explanation = _extractExplanationText(line);
          if (explanation.isNotEmpty) {
            currentQuestion['explanation'] = explanation;
            print('Açıklama eklendi: $explanation');
          }
        }
        // Eğer mevcut soru varsa ve şık sayısı 4'ten azsa, ek şık olarak ekle
        else if (currentQuestion != null && 
                 currentQuestion['options'].length < 4 && 
                 line.length > 10 && 
                 !_isSpecialText(line)) {
          currentQuestion['options'].add(line);
          print('Ek şık eklendi: $line');
        }
      }
      
      // Son soruyu da ekle
      if (currentQuestion != null && currentQuestion['question']?.isNotEmpty == true) {
        questions.add(currentQuestion);
      }
      
      print('Toplam parse edilen soru sayısı: ${questions.length}');
      
      // Soruları temizle ve doğrula
      final cleanedQuestions = _cleanAndValidateQuestions(questions);
      
      return cleanedQuestions;
    } catch (e) {
      print('Word dosyası parse edilirken hata: $e');
      rethrow;
    }
  }
  
  // Soru başlangıcını kontrol et
  bool _isQuestionStart(String text) {
    final lowerText = text.toLowerCase();
    return lowerText.startsWith('soru:') || 
           lowerText.startsWith('soru ') ||
           lowerText.startsWith('1.') ||
           lowerText.startsWith('2.') ||
           lowerText.startsWith('3.') ||
           lowerText.startsWith('4.') ||
           lowerText.startsWith('5.') ||
           lowerText.startsWith('6.') ||
           lowerText.startsWith('7.') ||
           lowerText.startsWith('8.') ||
           lowerText.startsWith('9.') ||
           lowerText.startsWith('10.') ||
           (text.length > 20 && text.contains('?'));
  }
  
  // Şık kontrolü
  bool _isOption(String text) {
    final lowerText = text.toLowerCase();
    return lowerText.startsWith('a)') || 
           lowerText.startsWith('a.') ||
           lowerText.startsWith('b)') || 
           lowerText.startsWith('b.') ||
           lowerText.startsWith('c)') || 
           lowerText.startsWith('c.') ||
           lowerText.startsWith('d)') || 
           lowerText.startsWith('d.') ||
           lowerText.startsWith('e)') || 
           lowerText.startsWith('e.');
  }
  
  // Doğru cevap kontrolü
  bool _isCorrectAnswer(String text) {
    final lowerText = text.toLowerCase();
    return lowerText.startsWith('cevap:') || 
           lowerText.startsWith('doğru cevap:') ||
           lowerText.startsWith('doğru:') ||
           lowerText.startsWith('yanıt:');
  }
  
  // Açıklama kontrolü
  bool _isExplanation(String text) {
    final lowerText = text.toLowerCase();
    return lowerText.startsWith('açıklama:') || 
           lowerText.startsWith('açıklama ') ||
           lowerText.startsWith('not:') ||
           lowerText.startsWith('bilgi:');
  }
  
  // Özel metin kontrolü (şık olarak eklenmemeli)
  bool _isSpecialText(String text) {
    final lowerText = text.toLowerCase();
    return lowerText.startsWith('cevap:') || 
           lowerText.startsWith('doğru cevap:') ||
           lowerText.startsWith('açıklama:') ||
           lowerText.startsWith('not:') ||
           lowerText.startsWith('bilgi:') ||
           lowerText.startsWith('kaynak:') ||
           lowerText.startsWith('referans:');
  }
  
  // Soru metnini çıkar
  String _extractQuestionText(String text) {
    if (text.toLowerCase().startsWith('soru:')) {
      return text.substring(6).trim();
    } else if (text.toLowerCase().startsWith('soru ')) {
      return text.substring(6).trim();
    } else if (RegExp(r'^\d+\.').hasMatch(text)) {
      return text.replaceAll(RegExp(r'^\d+\.\s*'), '').trim();
    }
    return text.trim();
  }
  
  // Şık metnini çıkar
  String _extractOptionText(String text) {
    if (text.toLowerCase().startsWith('a)') || text.toLowerCase().startsWith('a.')) {
      return text.substring(2).trim();
    } else if (text.toLowerCase().startsWith('b)') || text.toLowerCase().startsWith('b.')) {
      return text.substring(2).trim();
    } else if (text.toLowerCase().startsWith('c)') || text.toLowerCase().startsWith('c.')) {
      return text.substring(2).trim();
    } else if (text.toLowerCase().startsWith('d)') || text.toLowerCase().startsWith('d.')) {
      return text.substring(2).trim();
    } else if (text.toLowerCase().startsWith('e)') || text.toLowerCase().startsWith('e.')) {
      return text.substring(2).trim();
    }
    return text.trim();
  }
  
  // Doğru cevabı çıkar
  int _extractCorrectAnswer(String text) {
    final lowerText = text.toLowerCase();
    String answerText = '';
    
    if (lowerText.startsWith('cevap:')) {
      answerText = text.substring(7).trim();
    } else if (lowerText.startsWith('doğru cevap:')) {
      answerText = text.substring(13).trim();
    } else if (lowerText.startsWith('doğru:')) {
      answerText = text.substring(7).trim();
    } else if (lowerText.startsWith('yanıt:')) {
      answerText = text.substring(6).trim();
    }
    
    if (answerText.isNotEmpty) {
      final firstChar = answerText[0].toLowerCase();
      switch (firstChar) {
        case 'a': return 0;
        case 'b': return 1;
        case 'c': return 2;
        case 'd': return 3;
        case 'e': return 4;
      }
    }
    
    return -1;
  }
  
  // Açıklama metnini çıkar
  String _extractExplanationText(String text) {
    if (text.toLowerCase().startsWith('açıklama:')) {
      return text.substring(10).trim();
    } else if (text.toLowerCase().startsWith('açıklama ')) {
      return text.substring(10).trim();
    } else if (text.toLowerCase().startsWith('not:')) {
      return text.substring(4).trim();
    } else if (text.toLowerCase().startsWith('bilgi:')) {
      return text.substring(6).trim();
    }
    return text.trim();
  }
  
  // Soruları temizle ve doğrula
  List<Map<String, dynamic>> _cleanAndValidateQuestions(List<Map<String, dynamic>> questions) {
    final cleanedQuestions = <Map<String, dynamic>>[];
    
    for (final question in questions) {
      // Gerekli alanları kontrol et
      if (question['question']?.isNotEmpty == true && 
          question['options']?.length >= 2) {
        
        // Şıkları temizle (boş olanları kaldır)
        final cleanOptions = (question['options'] as List)
            .where((option) => option.toString().trim().isNotEmpty)
            .take(4) // Maksimum 4 şık
            .toList();
        
        // Eğer yeterli şık yoksa, varsayılan şıklar ekle
        while (cleanOptions.length < 4) {
          cleanOptions.add('Şık ${String.fromCharCode(65 + cleanOptions.length)}');
        }
        
        // Doğru cevap indeksini kontrol et
        int correctAnswer = question['correctAnswer'] ?? 0;
        if (correctAnswer < 0 || correctAnswer >= cleanOptions.length) {
          correctAnswer = 0; // Varsayılan olarak ilk şık
        }
        
        final cleanedQuestion = {
          'question': question['question'].toString().trim(),
          'options': cleanOptions,
          'correctAnswer': correctAnswer,
          'explanation': question['explanation']?.toString().trim() ?? '',
          'difficulty': question['difficulty'] ?? 'medium',
          'category': question['category'] ?? 'Word Import',
          'source': 'word_file',
          'originalText': question['originalText'] ?? '',
        };
        
        cleanedQuestions.add(cleanedQuestion);
      }
    }
    
    return cleanedQuestions;
  }
  
  // Desteklenen dosya formatlarını getir
  List<String> getSupportedFormats() {
    return ['txt', 'doc', 'docx'];
  }
  
  // Dosya formatını kontrol et
  bool isSupportedFormat(String fileName) {
    final extension = fileName.split('.').last.toLowerCase();
    return getSupportedFormats().contains(extension);
  }

  // Soruları Firebase'e toplu olarak kaydet
  Future<Map<String, dynamic>> saveQuestionsToFirebase(
    List<Map<String, dynamic>> questions,
    String quizId,
    String quizName,
  ) async {
    try {
      final firestore = FirebaseFirestore.instance;
      final batch = firestore.batch();
      
      int successCount = 0;
      int errorCount = 0;
      List<String> errors = [];
      
      // Quiz koleksiyonunu oluştur (yoksa)
      final quizDocRef = firestore.collection('quizzes').doc(quizId);
      final quizDoc = await quizDocRef.get();
      
      if (!quizDoc.exists) {
        batch.set(quizDocRef, {
          'name': quizName,
          'displayName': quizName,
          'createdAt': FieldValue.serverTimestamp(),
          'updatedAt': FieldValue.serverTimestamp(),
          'questionCount': 0,
          'source': 'word_import',
        });
      }
      
      // Her soruyu batch'e ekle
      for (int i = 0; i < questions.length; i++) {
        final question = questions[i];
        final questionRef = quizDocRef.collection('questions').doc();
        
        final questionData = {
          'question': question['question'],
          'options': question['options'],
          'correctAnswerIndex': question['correctAnswer'],
          'explanation': question['explanation'],
          'difficulty': question['difficulty'],
          'category': quizName,
          'source': 'word_file_import',
          'importedAt': FieldValue.serverTimestamp(),
          'createdAt': FieldValue.serverTimestamp(),
          'updatedAt': FieldValue.serverTimestamp(),
          'order': i + 1,
        };
        
        batch.set(questionRef, questionData);
      }
      
      // Quiz'deki soru sayısını güncelle
      batch.update(quizDocRef, {
        'questionCount': FieldValue.increment(questions.length),
        'updatedAt': FieldValue.serverTimestamp(),
      });
      
      // Batch'i commit et
      await batch.commit();
      
      return {
        'success': true,
        'message': '$successCount soru başarıyla kaydedildi',
        'totalQuestions': questions.length,
        'successCount': successCount,
        'errorCount': errorCount,
        'errors': errors,
        'quizId': quizId,
        'quizName': quizName,
      };
      
    } catch (e) {
      print('Firebase kayıt hatası: $e');
      return {
        'success': false,
        'message': 'Sorular kaydedilirken hata oluştu: $e',
        'error': e.toString(),
      };
    }
  }
}
