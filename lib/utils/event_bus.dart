import 'dart:async';

// Olay veri yapısı
class MistakesUpdatedEvent {
  final bool isMistakesUpdated;

  MistakesUpdatedEvent(this.isMistakesUpdated);
}

// EventBus sınıfı - Singleton pattern
class EventBus {
  // Singleton instance
  static EventBus? _instance;

  // Singleton factory constructor
  factory EventBus() {
    _instance ??= EventBus._internal();
    return _instance!;
  }

  // Private constructor
  EventBus._internal();

  // Eksikler sayfası için özel event controller
  StreamController<MistakesUpdatedEvent>? _mistakesUpdatedController;

  // Controller'ı lazy initialization ile oluştur
  StreamController<MistakesUpdatedEvent> get _controller {
    _mistakesUpdatedController ??=
        StreamController<MistakesUpdatedEvent>.broadcast();
    return _mistakesUpdatedController!;
  }

  // Dinleyici Stream'i getir
  Stream<MistakesUpdatedEvent> get mistakesUpdatedStream => _controller.stream;

  // Yeni olay yayınla
  void fireMistakesUpdated(bool isUpdated) {
    if (_mistakesUpdatedController != null &&
        !_mistakesUpdatedController!.isClosed) {
      _mistakesUpdatedController!.add(MistakesUpdatedEvent(isUpdated));
    }
  }

  // Kaynakları temizle
  void dispose() {
    try {
      if (_mistakesUpdatedController != null) {
        if (!_mistakesUpdatedController!.isClosed) {
          _mistakesUpdatedController!.close();
        }
        _mistakesUpdatedController = null;
      }
      print('EventBus kaynakları temizlendi');
    } catch (e) {
      print('EventBus dispose hatası: $e');
    } finally {
      // Hata olsa da instance'ı sıfırla
      _mistakesUpdatedController = null;
      _instance = null;
    }
  }

  // Güvenli dispose - hata vermez
  static void safeDispose() {
    try {
      if (_instance != null) {
        _instance!.dispose();
      }
    } catch (e) {
      print('EventBus güvenli dispose hatası: $e');
    } finally {
      // Her durumda instance'ı null yap
      _instance = null;
    }
  }

  // EventBus'ın aktif olup olmadığını kontrol et
  bool get isActive =>
      _mistakesUpdatedController != null &&
      !_mistakesUpdatedController!.isClosed;
}
