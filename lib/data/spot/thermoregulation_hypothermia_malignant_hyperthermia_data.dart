import 'package:flutter/material.dart';

class ThermoregulationHypothermiaMalignantHyperthermiaItem {
  final String title;
  final String description;
  final String? subtitle;
  final String? additionalInfo;

  ThermoregulationHypothermiaMalignantHyperthermiaItem({
    required this.title,
    required this.description,
    this.subtitle,
    this.additionalInfo,
  });
}

class ThermoregulationHypothermiaMalignantHyperthermiaCategory {
  final String categoryName;
  final List<ThermoregulationHypothermiaMalignantHyperthermiaItem> items;

  ThermoregulationHypothermiaMalignantHyperthermiaCategory({
    required this.categoryName,
    required this.items,
  });
}

class ThermoregulationHypothermiaMalignantHyperthermiaData {
  static List<ThermoregulationHypothermiaMalignantHyperthermiaCategory> getThermoregulationHypothermiaMalignantHyperthermiaData(BuildContext context) {
    return [
      ThermoregulationHypothermiaMalignantHyperthermiaCategory(
        categoryName: 'Termoregülasyon & Hipotermi',
        items: [
          ThermoregulationHypothermiaMalignantHyperthermiaItem(
            title: 'Hipotermi Tanımı',
            description: '<36 °C',
          ),
          ThermoregulationHypothermiaMalignantHyperthermiaItem(
            title: 'Anestezi Altında Isı Kaybı Fazları',
            description: 'Faz I: İlk 1 saatte 1–2 °C düşüş → vazodilatasyona bağlı ısının merkezden perifere kayması',
            subtitle: 'Faz II: 3–4. saatte lineer azalma → çevreye ısı kaybı baskın',
            additionalInfo: 'Faz III: Isı kaybı = metabolik üretim → denge',
          ),
          ThermoregulationHypothermiaMalignantHyperthermiaItem(
            title: 'Anesteziklerin Etkisi',
            description: 'Hipotalamik termoregülasyonu (terleme, titreme, VD/VC refleksleri) baskılar',
          ),
          ThermoregulationHypothermiaMalignantHyperthermiaItem(
            title: 'Önleme',
            description: 'Preop: konvektif ısıtıcı battaniye → Faz I kaybını engeller',
            subtitle: 'İntraop: battaniye, sıvı ısıtıcı, inspiryum gazının ısıtılması',
          ),
          ThermoregulationHypothermiaMalignantHyperthermiaItem(
            title: 'Postop Titreme',
            description: 'Hipotermi dışında sepsis, transfüzyon reaksiyonu, ilaç etkisi de olabilir',
            subtitle: 'O₂ tüketimini 5 kat artırır → kardiyak rezervi düşük hastada tehlikeli',
            additionalInfo: 'Tedavi: normotermi sağla, 12.5–25 mg meperidin etkili',
          ),
        ],
      ),
      ThermoregulationHypothermiaMalignantHyperthermiaCategory(
        categoryName: 'Malign Hipertermi (MH)',
        items: [
          ThermoregulationHypothermiaMalignantHyperthermiaItem(
            title: 'İnsidans',
            description: 'Çocuk 1:15.000, yetişkin 1:40.000',
            subtitle: 'Genç erkeklerde sık',
          ),
          ThermoregulationHypothermiaMalignantHyperthermiaItem(
            title: 'Tetikleyiciler',
            description: 'Halojenli volatil anestezikler + süksinilkolin',
          ),
          ThermoregulationHypothermiaMalignantHyperthermiaItem(
            title: 'Genetik',
            description: 'Ryr1 mutasyonu (kromozom 19) → sarkoplazmik retikulumdan Ca²⁺ salınım ↑',
            subtitle: 'Ayrıca kromozom 17 Na kanal anomalileri',
            additionalInfo: 'Multigenetik; 5 farklı bölge tanımlı',
          ),
        ],
      ),
      ThermoregulationHypothermiaMalignantHyperthermiaCategory(
        categoryName: 'MH Klinik Bulgular',
        items: [
          ThermoregulationHypothermiaMalignantHyperthermiaItem(
            title: 'Erken Bulgular',
            description: 'Masseter rijiditesi (sch sonrası), yaygın kas rijiditesi, taşikardi',
            subtitle: 'Hiperkarbi (en duyarlı: ETCO₂ ↑)',
          ),
          ThermoregulationHypothermiaMalignantHyperthermiaItem(
            title: 'Geç Bulgular',
            description: 'Hipertermi (5 dakikada 1 °C ↑), miks metabolik+respiratuar asidoz',
            subtitle: 'Hiperkalemi, aritmiler',
          ),
          ThermoregulationHypothermiaMalignantHyperthermiaItem(
            title: 'Biyokimya',
            description: 'CK >20.000, LDH, myoglobin ↑',
          ),
          ThermoregulationHypothermiaMalignantHyperthermiaItem(
            title: 'Ateş',
            description: 'En geç ve tutarsız bulgu',
          ),
          ThermoregulationHypothermiaMalignantHyperthermiaItem(
            title: 'Komplikasyonlar',
            description: 'MOF, DİK, rabdomiyoliz',
          ),
        ],
      ),
      ThermoregulationHypothermiaMalignantHyperthermiaCategory(
        categoryName: 'İntraoperatif Yönetim',
        items: [
          ThermoregulationHypothermiaMalignantHyperthermiaItem(
            title: 'Tetikleyiciyi Kes',
            description: 'Makineden volatil temizliği: 10 L/dk taze gaz, ≥5 dk, vaporizatör çıkar',
          ),
          ThermoregulationHypothermiaMalignantHyperthermiaItem(
            title: 'Ventilasyon',
            description: '%100 O₂ ile ventilasyon (hiperkarbi ve O₂ tüketimine karşı)',
          ),
          ThermoregulationHypothermiaMalignantHyperthermiaItem(
            title: 'Dantrolen',
            description: 'Etki: Ryr1 üzerinden Ca²⁺ salınımı inhibe eder',
            subtitle: 'Doz: 2.5 mg/kg IV, 5 dakikada bir tekrarla (maks 10 mg/kg)',
            additionalInfo: 'Yarı ömrü: 6 saat; İdame: 24–48 sa, 6 sa\'da 1 mg/kg infüzyon; Komplikasyon: yaygın kas güçsüzlüğü, solunum depresyonu',
          ),
          ThermoregulationHypothermiaMalignantHyperthermiaItem(
            title: 'Diğer Endikasyonlar',
            description: 'Nöroleptik malign sendrom, tiroid krizi',
          ),
        ],
      ),
      ThermoregulationHypothermiaMalignantHyperthermiaCategory(
        categoryName: 'Destekleyici Tedavi',
        items: [
          ThermoregulationHypothermiaMalignantHyperthermiaItem(
            title: 'Asidoz',
            description: 'NaHCO₃',
          ),
          ThermoregulationHypothermiaMalignantHyperthermiaItem(
            title: 'Hiperkalemi',
            description: 'İnsülin+glukoz, diürez',
            subtitle: '(IV Ca verilmez)',
          ),
          ThermoregulationHypothermiaMalignantHyperthermiaItem(
            title: 'Hemodinami',
            description: 'İnotrop, vazopressör',
          ),
          ThermoregulationHypothermiaMalignantHyperthermiaItem(
            title: 'Myoglobinüri',
            description: 'Mannitol (dantrolen solüsyonunda var) + diürez',
          ),
          ThermoregulationHypothermiaMalignantHyperthermiaItem(
            title: 'Soğutma',
            description: 'Aktif soğutma yöntemleri',
          ),
        ],
      ),
      ThermoregulationHypothermiaMalignantHyperthermiaCategory(
        categoryName: 'İzole Masseter Rijiditesi (MMR)',
        items: [
          ThermoregulationHypothermiaMalignantHyperthermiaItem(
            title: 'İnsidans',
            description: 'MH ataklarının %15–30\'unda',
          ),
          ThermoregulationHypothermiaMalignantHyperthermiaItem(
            title: 'Yönetim',
            description: 'Güvenli ajanlarla cerrahi sürdürülebilir',
            subtitle: 'CK takibi (ilk 24 s)',
            additionalInfo: 'Miyopati ile ilişkili olabilir',
          ),
        ],
      ),
      ThermoregulationHypothermiaMalignantHyperthermiaCategory(
        categoryName: 'Postoperatif Yönetim',
        items: [
          ThermoregulationHypothermiaMalignantHyperthermiaItem(
            title: 'MH Duyarlılık',
            description: 'Kesin MH atağı geçiren hasta → MH duyarlı kabul edilir',
          ),
          ThermoregulationHypothermiaMalignantHyperthermiaItem(
            title: 'Tanı',
            description: 'Altın standart → kas biyopsisi + kafein/halotan kontraktür testi',
            subtitle: '(Yanlış negatif ~0)',
          ),
          ThermoregulationHypothermiaMalignantHyperthermiaItem(
            title: 'Bazal CK',
            description: 'Yüksekliği (%50–70) olabilir ama tanı koydurmaz',
          ),
        ],
      ),
      ThermoregulationHypothermiaMalignantHyperthermiaCategory(
        categoryName: 'Ayırıcı Tanılar',
        items: [
          ThermoregulationHypothermiaMalignantHyperthermiaItem(
            title: 'CO₂ İnsuflasyonu',
            description: 'Laparoskopi',
          ),
          ThermoregulationHypothermiaMalignantHyperthermiaItem(
            title: 'Tiroid Krizi',
            description: 'Hipokalemi, genelde postop',
          ),
          ThermoregulationHypothermiaMalignantHyperthermiaItem(
            title: 'Feokromasitoma',
            description: 'HT, taşikardi ama CO₂/ısı ↑ yok',
          ),
          ThermoregulationHypothermiaMalignantHyperthermiaItem(
            title: 'Sepsis',
            description: 'Benzer bulgular ama kaynak bulunur',
          ),
          ThermoregulationHypothermiaMalignantHyperthermiaItem(
            title: 'Serotonin Sendromu',
            description: 'MAOI+meperidin/SSRI',
          ),
          ThermoregulationHypothermiaMalignantHyperthermiaItem(
            title: 'Nöroleptik Malign Sendrom',
            description: 'Antidopaminerjik ilaçlar',
          ),
        ],
      ),
      ThermoregulationHypothermiaMalignantHyperthermiaCategory(
        categoryName: 'Nöroleptik Malign Sendrom (NMS)',
        items: [
          ThermoregulationHypothermiaMalignantHyperthermiaItem(
            title: 'Klinik',
            description: 'Hipertermi, rijidite, bilinç değişikliği, otonom instabilite',
          ),
          ThermoregulationHypothermiaMalignantHyperthermiaItem(
            title: 'Mekanizma',
            description: 'Dopaminerjik blokaj veya ani kesilme',
            subtitle: 'CK ↑',
            additionalInfo: 'Kalıtsal değil',
          ),
          ThermoregulationHypothermiaMalignantHyperthermiaItem(
            title: 'Tedavi',
            description: 'Dopamin agonistleri (levodopa, amantadin) + dantrolen',
          ),
        ],
      ),
      ThermoregulationHypothermiaMalignantHyperthermiaCategory(
        categoryName: 'Profilaksi & Taburculuk',
        items: [
          ThermoregulationHypothermiaMalignantHyperthermiaItem(
            title: 'Güvenli Ajanlar',
            description: 'IV ajanlar + nondepolarizan NMB',
          ),
          ThermoregulationHypothermiaMalignantHyperthermiaItem(
            title: 'Dantrolen Bulundurma',
            description: 'Genel anestezi verilen her yerde dantrolen bulunmalı',
          ),
          ThermoregulationHypothermiaMalignantHyperthermiaItem(
            title: 'Profilaktik Dantrolen',
            description: 'Şüpheli hastada profilaktik dantrolen endike değil',
          ),
          ThermoregulationHypothermiaMalignantHyperthermiaItem(
            title: 'Anestezi Makinesi',
            description: 'Vaporizatör çıkar, devre değiş, 10 L/dk O₂ ≥5 dk yıkama → volatil <1 ppm',
          ),
        ],
      ),
      ThermoregulationHypothermiaMalignantHyperthermiaCategory(
        categoryName: 'Kritik Ezberler',
        items: [
          ThermoregulationHypothermiaMalignantHyperthermiaItem(
            title: 'Hipotermi Fazları',
            description: 'Faz I (perifer dağılım), Faz II (çevre kaybı), Faz III (denge)',
          ),
          ThermoregulationHypothermiaMalignantHyperthermiaItem(
            title: 'Postop Titreme',
            description: 'O₂ tüketimini 5 kat ↑',
          ),
          ThermoregulationHypothermiaMalignantHyperthermiaItem(
            title: 'MH En Duyarlı Bulgu',
            description: 'ETCO₂ ↑',
          ),
          ThermoregulationHypothermiaMalignantHyperthermiaItem(
            title: 'Dantrolen Dozu',
            description: '2.5 mg/kg (maks 10 mg/kg)',
          ),
          ThermoregulationHypothermiaMalignantHyperthermiaItem(
            title: 'MH Ateş',
            description: 'En geç ve tutarsız MH bulgusu',
          ),
          ThermoregulationHypothermiaMalignantHyperthermiaItem(
            title: 'MH Ayırıcı Tanı',
            description: 'CO₂ insuflasyonu, tiroid krizi, NMS, sepsis',
          ),
        ],
      ),
    ];
  }
}
