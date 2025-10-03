import 'package:flutter/material.dart';

class AirwayManagementItem {
  final String title;
  final String description;
  final String? subtitle;
  final String? additionalInfo;

  AirwayManagementItem({
    required this.title,
    required this.description,
    this.subtitle,
    this.additionalInfo,
  });
}

class AirwayManagementCategory {
  final String categoryName;
  final List<AirwayManagementItem> items;

  AirwayManagementCategory({
    required this.categoryName,
    required this.items,
  });
}

class AirwayManagementData {
  static List<AirwayManagementCategory> getAirwayManagementData(BuildContext context) {
    return [
      AirwayManagementCategory(
        categoryName: 'Havayolu Değerlendirme',
        items: [
          AirwayManagementItem(
            title: 'Mallampati Sınıflandırması',
            description: 'I: Yumuşak damak, uvula, tonsiller görünür → kolay',
            subtitle: 'IV: Sadece sert damak görünür → zor entübasyon riski yüksek',
          ),
          AirwayManagementItem(
            title: 'Cormack-Lehane Sınıflandırması',
            description: 'I: Glottis tamamen görünür',
            subtitle: 'IV: Sadece epiglot veya hiç yapı görünmez',
          ),
          AirwayManagementItem(
            title: 'Zor Entübasyon Öngören Bulgular',
            description: 'Tiromental mesafe < 6 cm',
            subtitle: 'Sternomental mesafe < 12 cm',
            additionalInfo: 'Ağız açıklığı < 4 cm\nBoyun mobilitesi kısıtlı',
          ),
        ],
      ),
      AirwayManagementCategory(
        categoryName: 'Endotrakeal Tüp (ETT) Seçimi',
        items: [
          AirwayManagementItem(
            title: 'Erişkin Tüp Seçimi',
            description: 'Kadın: 7.0–7.5 mm ID → dişlerden 20–21 cm',
            subtitle: 'Erkek: 8.0–8.5 mm ID → dişlerden 21–23 cm',
          ),
          AirwayManagementItem(
            title: 'Çocuk Tüp Seçimi (2 yaş üstü)',
            description: 'ID (mm) = (Yaş / 4) + 3.5',
            subtitle: 'Derinlik (cm) = (Yaş / 2) + 12 (oral), +15 (nazal)',
          ),
          AirwayManagementItem(
            title: 'Bebek Tüp Seçimi (yenidoğan–1 yaş)',
            description: 'Prematüre: 2.5–3.0 mm ID',
            subtitle: 'Term yenidoğan: 3.0–3.5 mm ID',
            additionalInfo: '1 yaş: 3.5–4.0 mm ID\nDerinlik = Tüp ID x 3 cm (ör: 4.0 mm → 12 cm)',
          ),
        ],
      ),
      AirwayManagementCategory(
        categoryName: 'Tüp Balonu (Kaf)',
        items: [
          AirwayManagementItem(
            title: 'Kaf Özellikleri',
            description: 'Yüksek volüm / düşük basınçlı manşon → trakeal mukozal perfüzyonu korur.',
            subtitle: 'Optimal kaf basıncı: 20–30 cmH₂O (25 cmH₂O üstü → iskemi riski).',
          ),
          AirwayManagementItem(
            title: 'Balon Volümü',
            description: 'Erişkin → 5–10 mL hava',
            subtitle: 'Pediatrik cuff\'lu tüp → 1–2 mL hava',
          ),
          AirwayManagementItem(
            title: 'Kaçak Testi',
            description: 'Kaf basıncı ayarlanırken 20–25 cmH₂O inspiratuar basınçta kaçak olmamalı.',
          ),
        ],
      ),
      AirwayManagementCategory(
        categoryName: 'Entübasyon Fizyolojisi',
        items: [
          AirwayManagementItem(
            title: 'Kardiyovasküler Etkiler',
            description: 'Entübasyon → sempatik sistem aktivasyonu → hipertansiyon, taşikardi, aritmi.',
          ),
          AirwayManagementItem(
            title: 'Önlemler',
            description: 'Lidokain (1–1.5 mg/kg), opioid, derin anestezi, β-bloker.',
            subtitle: 'Özellikle KAH, serebral anevrizma, kafa travması olanlarda risk yüksek.',
          ),
        ],
      ),
      AirwayManagementCategory(
        categoryName: 'Supraglottik Havayolu Araçları',
        items: [
          AirwayManagementItem(
            title: 'LMA Türleri',
            description: 'Klasik LMA: Aspirasyona karşı tam koruma yok.',
            subtitle: 'ProSeal, I-gel: Gastrik port → aspirasyon riski daha düşük.',
          ),
          AirwayManagementItem(
            title: 'Yerleştirme ve Ventilasyon',
            description: 'En uygun kaf basıncı ≤ 60 cmH₂O.',
            subtitle: 'Ventilasyon limitleri: Genellikle < 20 cmH₂O basınçla güvenli.',
          ),
        ],
      ),
      AirwayManagementCategory(
        categoryName: 'Fiberoptik Entübasyon',
        items: [
          AirwayManagementItem(
            title: 'Endikasyonlar',
            description: 'Altın standart: zor havayolu + uyanık entübasyon.',
            subtitle: 'Avantaj: Servikal instabilite, yüz travması, boyun hareket kısıtlılığı olanlarda güvenli.',
          ),
          AirwayManagementItem(
            title: 'Sedasyon',
            description: 'Midazolam, opioid, düşük doz propofol + topikal lidokain.',
          ),
        ],
      ),
      AirwayManagementCategory(
        categoryName: 'Acil Havayolu',
        items: [
          AirwayManagementItem(
            title: 'Krikotirotomi',
            description: 'Acilde en hızlı yöntem (15–30 sn).',
          ),
          AirwayManagementItem(
            title: 'Trakeostomi',
            description: 'Uzun süreli havayolu ihtiyacı için.',
          ),
          AirwayManagementItem(
            title: 'İğne Krikotirotomi',
            description: 'Oksijenasyon sağlar, ventilasyon yetersiz olabilir.',
          ),
        ],
      ),
      AirwayManagementCategory(
        categoryName: 'Pediatrik Havayolu',
        items: [
          AirwayManagementItem(
            title: 'Anatomik Farklar',
            description: 'Larenks daha anterior ve kraniyal (C3–C4).',
            subtitle: 'En dar yer: Krikoid halka (erişkinde vokal kord seviyesi).',
          ),
          AirwayManagementItem(
            title: 'Pediatrik Özellikler',
            description: 'Entübasyon derinliği: Tüp çapı x 3 cm.',
            subtitle: 'Pediatrik kaf basıncı: < 20 cmH₂O önerilir.',
          ),
        ],
      ),
      AirwayManagementCategory(
        categoryName: 'Havayolu Basınçları ve Güvenlik',
        items: [
          AirwayManagementItem(
            title: 'Basınç Limitleri',
            description: 'Kaf basıncı: 20–30 cmH₂O',
            subtitle: 'LMA kaf basıncı: ≤ 60 cmH₂O',
            additionalInfo: 'Pozitif basınç ventilasyonu: LMA\'da güvenli sınır < 20 cmH₂O\nTrakeal mukozal perfüzyon basıncı: ~25–30 mmHg (33–40 cmH₂O) → aşılırsa iskemi.',
          ),
        ],
      ),
      AirwayManagementCategory(
        categoryName: 'Klinik İpuçları',
        items: [
          AirwayManagementItem(
            title: 'Pratik Bilgiler',
            description: 'Entübasyon sonrası tüpün derinliği → Kadınlarda 21 cm, erkeklerde 23 cm kuralı.',
            subtitle: 'Kaf basıncı manometre ile düzenlenmeli, "sadece palpasyon" güvenilir değildir.',
            additionalInfo: 'Tüp pozisyonu doğrulama: Kapnografi altın standart.\nObez hastada tüp daha sığ yerleştirilmeli (dislokasyon riski yüksek).\nNazotrakeal tüp: Daha uzun → genellikle 26–28 cm (erişkin).',
          ),
        ],
      ),
      AirwayManagementCategory(
        categoryName: 'En Çok Sorulan Sınav Spotları',
        items: [
          AirwayManagementItem(
            title: 'ÖZET SPOT SORULAR',
            description: 'Kadın: 7.0–7.5 mm tüp, 20–21 cm',
            subtitle: 'Erkek: 8.0–8.5 mm tüp, 21–23 cm',
            additionalInfo: 'Çocuk: (Yaş/4)+3.5 mm, derinlik (Yaş/2)+12 cm\nKaf basıncı: 20–30 cmH₂O\nLMA basıncı: ≤ 60 cmH₂O',
          ),
        ],
      ),
    ];
  }
}
