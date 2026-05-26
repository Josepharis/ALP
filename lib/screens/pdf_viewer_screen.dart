import 'dart:io';
import 'dart:typed_data';
import 'package:flutter/material.dart';
import 'package:syncfusion_flutter_pdfviewer/pdfviewer.dart';
import 'package:http/http.dart' as http;
import 'package:path_provider/path_provider.dart';
import 'package:firebase_storage/firebase_storage.dart';

class PdfViewerScreen extends StatefulWidget {
  final String pdfUrl;
  final String subjectTitle;
  final int? subjectIndex;

  const PdfViewerScreen({
    Key? key,
    required this.pdfUrl,
    required this.subjectTitle,
    this.subjectIndex,
  }) : super(key: key);

  @override
  State<PdfViewerScreen> createState() => _PdfViewerScreenState();
}

class _PdfViewerScreenState extends State<PdfViewerScreen> {
  final PdfViewerController _pdfViewerController = PdfViewerController();
  
  double _downloadProgress = 0.0;
  bool _isDownloading = true;
  File? _pdfFile;
  String? _errorMessage;

  @override
  void initState() {
    super.initState();
    _downloadPdf();
  }

  Future<String> _getDownloadUrlForSubject(int index) async {
    final possiblePaths = [
      'konu anlatımı/$index',
      'konu nalatımı/$index', // Typo fallback
      'konu_anlatimi/$index',
      'konu anlatimi/$index',
      'Konu Anlatımları/$index',
      'Konu Anlatımı/$index',
      'konu anlatimlari/$index',
    ];

    for (final path in possiblePaths) {
      try {
        final folderRef = FirebaseStorage.instance.ref().child(path);
        final listResult = await folderRef.listAll();
        
        final pdfFileRefs = listResult.items.where(
          (ref) => ref.name.toLowerCase().endsWith('.pdf')
        ).toList();
        
        if (pdfFileRefs.isNotEmpty) {
          return await pdfFileRefs.first.getDownloadURL();
        }
      } catch (e) {
        continue;
      }
    }

    final fallbackPaths = [
      'konu anlatımı/$index/$index.pdf',
      'konu anlatımı/$index.pdf',
      'konu nalatımı/$index/$index.pdf',
      'konu nalatımı/$index.pdf',
      'konu_anlatimi/$index/$index.pdf',
      'konu_anlatimi/$index.pdf',
      'Konu Anlatımları/$index/$index.pdf',
      'Konu Anlatımı/$index/$index.pdf',
    ];

    for (final filePath in fallbackPaths) {
      try {
        final fileRef = FirebaseStorage.instance.ref().child(filePath);
        return await fileRef.getDownloadURL();
      } catch (e) {
        continue;
      }
    }

    throw FirebaseException(
      plugin: 'firebase_storage',
      code: 'object-not-found',
      message: 'PDF klasörü veya dosyası bulunamadı',
    );
  }

  Future<void> _downloadPdf() async {
    try {
      // 1. Dosyanın kaydedileceği/aranacağı geçici dizini al
      final directory = await getTemporaryDirectory();
      
      // 2. Güvenli bir dosya adı oluştur (Boşlukları ve özel karakterleri _ yap)
      final safeTitle = widget.subjectTitle.replaceAll(RegExp(r'[^a-zA-Z0-9]'), '_');
      final file = File('${directory.path}/pdf_cache_$safeTitle.pdf');

      // 3. Cache kontrolü: Eğer dosya daha önce indirilmişse, oradan oku
      if (await file.exists()) {
        if (mounted) {
          setState(() {
            _pdfFile = file;
            _isDownloading = false;
          });
        }
        return; // Direkt çıkış yap, indirmene gerek yok
      }

      // Cache'te yoksa ve pdfUrl boşsa Firebase'den index ile URL'i al
      String url = widget.pdfUrl;
      if (url.isEmpty && widget.subjectIndex != null) {
        url = await _getDownloadUrlForSubject(widget.subjectIndex!);
      }

      if (url.isEmpty) {
        throw Exception('PDF dosyası bulunamadı ve indirme adresi boş.');
      }

      // 4. Cache'te yoksa internetten yüzdeli olarak indirmeye başla
      final request = http.Request('GET', Uri.parse(url));
      final response = await http.Client().send(request);
      final contentLength = response.contentLength ?? 0;
      
      List<int> bytes = [];
      response.stream.listen(
        (List<int> newBytes) {
          bytes.addAll(newBytes);
          if (contentLength > 0 && mounted) {
            setState(() {
              _downloadProgress = bytes.length / contentLength;
            });
          }
        },
        onDone: () async {
          final uint8Bytes = Uint8List.fromList(bytes);
          
          // İndirme başarıyla bitince dosyayı bir dahaki sefer için Cache'e kaydet
          await file.writeAsBytes(uint8Bytes);

          if (mounted) {
            setState(() {
              _pdfFile = file;
              _isDownloading = false;
            });
          }
        },
        onError: (e) {
          if (mounted) {
            setState(() {
              _errorMessage = e.toString();
              _isDownloading = false;
            });
          }
        },
        cancelOnError: true,
      );
    } catch (e) {
      if (mounted) {
        setState(() {
          _errorMessage = e.toString();
          _isDownloading = false;
        });
      }
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white, // Kenarlar tamamen sayfa ile bütünleşsin
      appBar: AppBar(
        backgroundColor: Colors.blue.shade900,
        title: Text(
          widget.subjectTitle,
          style: const TextStyle(
            color: Colors.white,
            fontSize: 18,
            fontWeight: FontWeight.w600,
          ),
        ),
        leading: IconButton(
          icon: const Icon(Icons.arrow_back_ios_rounded, color: Colors.white),
          onPressed: () => Navigator.pop(context),
        ),
        elevation: 0,
      ),
      body: _isDownloading
          ? Center(
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  CircularProgressIndicator(
                    value: _downloadProgress > 0 ? _downloadProgress : null,
                    color: Colors.blue.shade900,
                  ),
                  const SizedBox(height: 16),
                  Text(
                    'PDF Yükleniyor... %${(_downloadProgress * 100).toInt()}',
                    style: TextStyle(
                      color: Colors.blue.shade900,
                      fontSize: 16,
                      fontWeight: FontWeight.w600,
                    ),
                  ),
                ],
              ),
            )
          : _errorMessage != null
              ? Center(
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      const Icon(Icons.error_outline_rounded, color: Colors.red, size: 60),
                      const SizedBox(height: 16),
                      Padding(
                        padding: const EdgeInsets.symmetric(horizontal: 20),
                        child: Text(
                          'PDF yüklenirken bir hata oluştu:\n$_errorMessage',
                          style: const TextStyle(color: Colors.black87, fontSize: 16),
                          textAlign: TextAlign.center,
                        ),
                      ),
                    ],
                  ),
                )
              : SfPdfViewer.file(
                  _pdfFile!,
                  controller: _pdfViewerController,
                  canShowScrollHead: false, // Sağdaki scroll göstergesini gizle
                  canShowScrollStatus: false,
                  canShowPageLoadingIndicator: false, // Sayfa geçişlerinde beyaz ekran spinner'ını gizle
                  pageSpacing: 0, // Sayfalar arası boşluğu tamamen sıfırla
                ),
    );
  }
}
