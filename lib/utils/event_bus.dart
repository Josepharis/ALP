import 'dart:async';

// Olay veri yapısı
class MistakesUpdatedEvent {
  final bool isMistakesUpdated;

  MistakesUpdatedEvent(this.isMistakesUpdated);
}

// EventBus sınıfı - Singleton pattern
class EventBus {
  // Singleton instance
  static final EventBus _instance = EventBus._internal();

  // Singleton factory constructor
  factory EventBus() {
    return _instance;
  }

  // Private constructor
  EventBus._internal();

  // Eksikler sayfası için özel event controller
  final StreamController<MistakesUpdatedEvent> _mistakesUpdatedController =
      StreamController<MistakesUpdatedEvent>.broadcast();

  // Dinleyici Stream'i getir
  Stream<MistakesUpdatedEvent> get mistakesUpdatedStream =>
      _mistakesUpdatedController.stream;

  // Yeni olay yayınla
  void fireMistakesUpdated(bool isUpdated) {
    _mistakesUpdatedController.add(MistakesUpdatedEvent(isUpdated));
  }

  // Kaynakları temizle
  void dispose() {
    _mistakesUpdatedController.close();
  }
}
