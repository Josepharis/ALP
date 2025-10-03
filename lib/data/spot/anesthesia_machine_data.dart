import 'package:flutter/material.dart';

class AnesthesiaMachineItem {
  final String title;
  final String description;
  final String? subtitle;
  final String? additionalInfo;

  AnesthesiaMachineItem({
    required this.title,
    required this.description,
    this.subtitle,
    this.additionalInfo,
  });
}

class AnesthesiaMachineCategory {
  final String categoryName;
  final List<AnesthesiaMachineItem> items;

  AnesthesiaMachineCategory({
    required this.categoryName,
    required this.items,
  });
}

class AnesthesiaMachineData {
  static List<AnesthesiaMachineCategory> getAnesthesiaMachineData(BuildContext context) {
    return [
      AnesthesiaMachineCategory(
        categoryName: 'Gaz Dağıtımı',
        items: [
          AnesthesiaMachineItem(
            title: 'Boru Hattı Girişleri',
            description: 'O₂, N₂O, Hava → merkezi sistem 50 psi.',
            subtitle: 'Yanlış bağlantı önleme: DISS, tek yönlü valf ve filtre.',
          ),
          AnesthesiaMachineItem(
            title: 'Silindir Girişleri',
            description: 'PISS (Pin İndeks Safety System), 45 psi (Bourdon manometre).',
          ),
          AnesthesiaMachineItem(
            title: 'Basınç Regülatörleri',
            description: 'Merkezi sistem: sabit basınç.\nSilindir: değişken basınç.',
            subtitle: 'Silindir devreye girmez, merkezi sistem <45 psi olursa.',
          ),
        ],
      ),
      AnesthesiaMachineCategory(
        categoryName: 'Oksijen Güvenliği',
        items: [
          AnesthesiaMachineItem(
            title: 'Fail-Safe Valf',
            description: 'O₂ basıncı %50 altına düşerse diğer gazlar kesilir (25–30 psi).',
          ),
          AnesthesiaMachineItem(
            title: 'O₂ Giriş Basıncı',
            description: 'N₂O için 0,5 psi, diğer gazlar için 10 psi altına düşerse kesilir.',
          ),
          AnesthesiaMachineItem(
            title: 'Hipoksi Önleme',
            description: 'En güvenilir yöntem oksijen analizörü (inspiratuar kola yerleştirilir).',
          ),
        ],
      ),
      AnesthesiaMachineCategory(
        categoryName: 'Akım Kontrolü',
        items: [
          AnesthesiaMachineItem(
            title: 'Akım Valfi',
            description: 'Proksimal yüksek basınç, distal düşük basınç.',
            subtitle: 'Dokunma ve renk kodu yanlış gaz açılmasını engeller.',
          ),
          AnesthesiaMachineItem(
            title: 'O₂ Akım Valfi',
            description: 'Yivli, büyük, en sağda.',
          ),
          AnesthesiaMachineItem(
            title: 'Akım Ölçerler',
            description: 'Sabit basınç – değişken orifis.\nKüre ortası okunur.',
            subtitle: 'Poiseuille Kanunu: düşük akım → viskozite, yüksek akım → yoğunluk etkili.',
            additionalInfo: 'Minimum O₂ akımı: ≥150 mL/dk.',
          ),
        ],
      ),
      AnesthesiaMachineCategory(
        categoryName: 'Vaporizatörler',
        items: [
          AnesthesiaMachineItem(
            title: 'Güvenlik Kuralı',
            description: 'Aynı anda iki vaporizatör açılamaz.',
          ),
          AnesthesiaMachineItem(
            title: 'Pompalama Efekti',
            description: 'Pozitif basınç veya O₂ flaşı → vaporizatör çıkışı artar.',
          ),
          AnesthesiaMachineItem(
            title: 'Buharlaşma Fiziği',
            description: 'Kaynama noktası → buhar basıncı = atmosfer basıncı.\nBuharlaşma hızı ısı ile doğru orantılı.',
          ),
          AnesthesiaMachineItem(
            title: 'Modern Geleneksel Vaporizatör',
            description: 'Saatin tersi açılır, sürükleyici gazın bir kısmı geçer.',
            subtitle: '15 L/dk üstü veya 250 mL/dk altı akımda gaz miktarı değişken.',
          ),
          AnesthesiaMachineItem(
            title: 'Elektronik Vaporizatör (Desfluran)',
            description: '39 °C ve 2 atm buhar basıncı.',
            subtitle: 'Taze gaz geçmez, ortam basıncı değişimi konsantrasyonu etkilemez.',
          ),
        ],
      ),
      AnesthesiaMachineCategory(
        categoryName: 'Solunum Devresi & Nemlendirme',
        items: [
          AnesthesiaMachineItem(
            title: 'Oksijen Analizörleri',
            description: 'Clark (polarografik), galvanik (yakıt pili), paramanyetik.',
          ),
          AnesthesiaMachineItem(
            title: 'Spirometreler',
            description: 'Ekspirasyon veya inspirasyon ölçümü; ultrasonik veya pervane tip.',
          ),
          AnesthesiaMachineItem(
            title: 'APL Valfi',
            description: 'Spontan solunumda açık, kontrollü ventilasyonda kısmen kapalı.',
          ),
          AnesthesiaMachineItem(
            title: 'Nemlendiriciler',
            description: 'Pasif: HME (≈60 mL ölü boşluk).',
            subtitle: 'Aktif: passover, wick, bubble-through, vapor-phase; inhaler gaz ≤41°C olmalı.',
          ),
        ],
      ),
      AnesthesiaMachineCategory(
        categoryName: 'Ventilatörler',
        items: [
          AnesthesiaMachineItem(
            title: 'Siklus',
            description: 'İnspirasyon → inspirasyon sonu → ekspirasyon → ekspirasyon sonu.',
          ),
          AnesthesiaMachineItem(
            title: 'Fazlar',
            description: 'Sabit basınç/akım, tepe basınç, plato basıncı.',
          ),
          AnesthesiaMachineItem(
            title: 'Çift Devre Piston Ventilatör',
            description: 'Tidal hacim saydam, sert plastik körük.',
            subtitle: 'Spontan solunuma izin veren valf mevcut.',
          ),
          AnesthesiaMachineItem(
            title: 'Düşürme Valfi (Spill Valve)',
            description: 'İnspirasyonda kapalı, ekspirasyonda açık.',
          ),
          AnesthesiaMachineItem(
            title: 'Alarm Sistemi',
            description: 'Düşük basınç, düşük tidal hacim, düşük ekspirasyon CO₂.',
          ),
        ],
      ),
      AnesthesiaMachineCategory(
        categoryName: 'Atık Gaz Temizleme',
        items: [
          AnesthesiaMachineItem(
            title: 'NIOSH Sınırları',
            description: 'N₂O 25 ppm, halojenli ajan 2 ppm, kombinasyon 0,5 ppm.',
          ),
          AnesthesiaMachineItem(
            title: 'Aktif/Pasif Sistem',
            description: 'Basınç 0,5–3,5 cm H₂O.',
          ),
          AnesthesiaMachineItem(
            title: 'Aktif Vakum',
            description: '10–15 L/dk atık gaz temizleme kapasitesi.',
          ),
        ],
      ),
    ];
  }
}
