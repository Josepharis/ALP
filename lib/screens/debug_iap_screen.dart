import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import '../services/in_app_purchase_service.dart';

class DebugIAPScreen extends StatefulWidget {
  const DebugIAPScreen({super.key});

  @override
  State<DebugIAPScreen> createState() => _DebugIAPScreenState();
}

class _DebugIAPScreenState extends State<DebugIAPScreen> {
  final InAppPurchaseService _purchaseService = InAppPurchaseService();
  bool _isLoading = false;
  String _debugInfo = '';

  @override
  void initState() {
    super.initState();
    _loadDebugInfo();
  }

  Future<void> _loadDebugInfo() async {
    setState(() {
      _isLoading = true;
      _debugInfo = 'Yükleniyor...';
    });

    try {
      // Initialize service
      await _purchaseService.initialize();

      final buffer = StringBuffer();
      buffer.writeln('=== IN-APP PURCHASE DEBUG INFO ===\n');
      
      // Expected Product IDs
      buffer.writeln('📋 Kodda Tanımlı Product ID\'ler:');
      buffer.writeln('1. ${InAppPurchaseService.premiumMonthlyId}');
      buffer.writeln('2. ${InAppPurchaseService.premiumSixMonthId}');
      buffer.writeln('3. ${InAppPurchaseService.premiumYearlyId}');
      buffer.writeln('');

      // Service status
      buffer.writeln('🔧 Servis Durumu:');
      buffer.writeln('• Initialized: ${_purchaseService.isInitialized}');
      buffer.writeln('• Available: ${_purchaseService.isAvailable}');
      buffer.writeln('');
      
      // Sandbox durumu kontrolü
      buffer.writeln('🔐 SANDBOX DURUMU:');
      if (_purchaseService.isAvailable) {
        buffer.writeln('✅ In-App Purchase servisi kullanılabilir');
        if (_purchaseService.products.isEmpty) {
          buffer.writeln('⚠️ Ürünler yüklenemedi - Sandbox hesabı sorunu olabilir');
          buffer.writeln('');
          buffer.writeln('📋 SANDBOX KONTROL LİSTESİ:');
          buffer.writeln('1. Settings → App Store → Sandbox Account');
          buffer.writeln('2. Sandbox test hesabı ile giriş yapılmış mı?');
          buffer.writeln('3. Normal App Store hesabından çıkış yapılmış mı?');
          buffer.writeln('4. Cihazı yeniden başlattınız mı?');
        } else {
          buffer.writeln('✅ Ürünler yüklendi - Sandbox çalışıyor gibi görünüyor');
        }
      } else {
        buffer.writeln('❌ In-App Purchase servisi kullanılamıyor');
        buffer.writeln('⚠️ Bu genellikle sandbox hesabı sorunundan kaynaklanır');
      }
      buffer.writeln('');

      // Loaded products
      buffer.writeln('📦 Yüklenen Ürünler (${_purchaseService.products.length}):');
      if (_purchaseService.products.isEmpty) {
        buffer.writeln('❌ HİÇBİR ÜRÜN YÜKLENEMEDİ!');
        buffer.writeln('');
        buffer.writeln('⚠️ Olası Nedenler:');
        buffer.writeln('1. App Store Connect\'te ürünler oluşturulmamış');
        buffer.writeln('2. Product ID\'ler eşleşmiyor');
        buffer.writeln('3. Ürünler "Ready to Submit" durumunda değil');
        buffer.writeln('4. Sandbox hesabı ile giriş yapılmamış');
        buffer.writeln('5. 24-48 saat beklenmemiş');
      } else {
        for (var product in _purchaseService.products) {
          buffer.writeln('✅ ${product.id}');
          buffer.writeln('   Fiyat: ${product.price}');
          buffer.writeln('   Başlık: ${product.title}');
          buffer.writeln('   Açıklama: ${product.description}');
          buffer.writeln('');
        }
      }

      buffer.writeln('');
      buffer.writeln('🔍 KONTROL LİSTESİ:');
      buffer.writeln('');
      buffer.writeln('App Store Connect\'te kontrol edin:');
      buffer.writeln('1. Ürünlerin Product ID\'leri yukarıdakilerle TAM eşleşiyor mu?');
      buffer.writeln('2. Her ürün "Ready to Submit" veya "Approved" durumunda mı?');
      buffer.writeln('3. Bundle ID doğru mu: com.yftsoftware.anestezi');
      buffer.writeln('');
      buffer.writeln('Cihazda kontrol edin:');
      buffer.writeln('1. Settings → App Store → Sandbox Account');
      buffer.writeln('2. Sandbox test hesabı ile giriş yapılmış mı?');
      buffer.writeln('3. İnternet bağlantısı aktif mi?');

      setState(() {
        _debugInfo = buffer.toString();
        _isLoading = false;
      });
    } catch (e) {
      setState(() {
        _debugInfo = '❌ HATA: $e\n\nLütfen internet bağlantınızı kontrol edin.';
        _isLoading = false;
      });
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('IAP Debug'),
        actions: [
          IconButton(
            icon: const Icon(Icons.refresh),
            onPressed: _loadDebugInfo,
          ),
          IconButton(
            icon: const Icon(Icons.copy),
            onPressed: () {
              Clipboard.setData(ClipboardData(text: _debugInfo));
              ScaffoldMessenger.of(context).showSnackBar(
                const SnackBar(content: Text('Debug bilgisi kopyalandı')),
              );
            },
          ),
        ],
      ),
      body: _isLoading
          ? const Center(child: CircularProgressIndicator())
          : SingleChildScrollView(
              padding: const EdgeInsets.all(16),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Container(
                    padding: const EdgeInsets.all(16),
                    decoration: BoxDecoration(
                      color: Colors.black87,
                      borderRadius: BorderRadius.circular(8),
                      border: Border.all(color: Colors.grey),
                    ),
                    child: SelectableText(
                      _debugInfo,
                      style: const TextStyle(
                        fontFamily: 'monospace',
                        fontSize: 12,
                        color: Colors.white,
                      ),
                    ),
                  ),
                  const SizedBox(height: 16),
                  ElevatedButton.icon(
                    onPressed: _loadDebugInfo,
                    icon: const Icon(Icons.refresh),
                    label: const Text('Yenile'),
                  ),
                  const SizedBox(height: 8),
                  ElevatedButton.icon(
                    onPressed: () {
                      Clipboard.setData(ClipboardData(text: _debugInfo));
                      ScaffoldMessenger.of(context).showSnackBar(
                        const SnackBar(content: Text('Debug bilgisi kopyalandı')),
                      );
                    },
                    icon: const Icon(Icons.copy),
                    label: const Text('Kopyala'),
                  ),
                ],
              ),
            ),
    );
  }
}


