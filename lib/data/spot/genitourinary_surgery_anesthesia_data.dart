import 'package:flutter/material.dart';

class GenitourinarySurgeryAnesthesiaItem {
  final String title;
  final String description;
  final String? subtitle;
  final String? additionalInfo;

  GenitourinarySurgeryAnesthesiaItem({
    required this.title,
    required this.description,
    this.subtitle,
    this.additionalInfo,
  });
}

class GenitourinarySurgeryAnesthesiaCategory {
  final String categoryName;
  final List<GenitourinarySurgeryAnesthesiaItem> items;

  GenitourinarySurgeryAnesthesiaCategory({
    required this.categoryName,
    required this.items,
  });
}

class GenitourinarySurgeryAnesthesiaData {
  static List<GenitourinarySurgeryAnesthesiaCategory> getGenitourinarySurgeryAnesthesiaData(BuildContext context) {
    return [
      GenitourinarySurgeryAnesthesiaCategory(
        categoryName: 'Sistoskopi',
        items: [
          GenitourinarySurgeryAnesthesiaItem(
            title: 'Preop Değerlendirme',
            description: 'Çocuk → GA',
            subtitle: 'Kadın → tanısal işlemde topikal lidokain yeterli',
            additionalInfo: 'Erkek ve girişimsel işlemler → GA veya RA',
          ),
          GenitourinarySurgeryAnesthesiaItem(
            title: 'Litotomi Pozisyonu',
            description: 'En sık komplikasyon: lumbosakral pleksus hasarı',
            subtitle: 'Ortak peroneal sinir (ayak dorsifleksiyon kaybı), safen sinir (iç uyluk duyu kaybı)',
            additionalInfo: 'Obturator/femoral/siyatik sinir hasarı',
          ),
          GenitourinarySurgeryAnesthesiaItem(
            title: 'Uzamış Litotomi Komplikasyonları',
            description: 'Rabdomiyoliz, kompartman sendromu',
            subtitle: 'FRK azalır, Trendelenburg eklenirse daha da azalır',
          ),
          GenitourinarySurgeryAnesthesiaItem(
            title: 'Anestezi Seçimi',
            description: 'Endişeli hasta → GA (LMA olabilir)',
            subtitle: 'Spinal blok <5 dk, epidural 15–20 dk',
            additionalInfo: 'T10 düzeyinde blok yeterli',
          ),
        ],
      ),
      GenitourinarySurgeryAnesthesiaCategory(
        categoryName: 'TURP (Transüretral Prostat Rezeksiyonu)',
        items: [
          GenitourinarySurgeryAnesthesiaItem(
            title: 'Preop Değerlendirme',
            description: 'Yaşlı, komorbid hasta grubu → dikkatli değerlendirme',
          ),
          GenitourinarySurgeryAnesthesiaItem(
            title: 'Komplikasyonlar',
            description: 'Kanama, enfeksiyon, perforasyon, TURP sendromu, DİK, sepsis',
          ),
          GenitourinarySurgeryAnesthesiaItem(
            title: 'TURP Sendromu',
            description: '2 L sıvı emilimi',
            subtitle: 'Sıvı: elektrolitsiz (glisin, sorbitol, mannitol) → ortalama 20 mL/dk emilim',
            additionalInfo: 'Serum Na <120 mEq/L → semptomatik',
          ),
          GenitourinarySurgeryAnesthesiaItem(
            title: 'TURP Sendromu Sıvı Etkileri',
            description: 'Glisin → hiperglisinemi, amonyak ↑',
            subtitle: 'Sorbitol/dextroz → hiperglisemi (DM\'de risk), mannitol → volüm yüklenmesi',
          ),
          GenitourinarySurgeryAnesthesiaItem(
            title: 'TURP Sendromu Klinik',
            description: 'Hiponatremi, konfüzyon, nöbet',
            subtitle: 'Tedavi: Hipertonik Na (≤100 mL/saat), semptomatikse düşük doz midazolam',
          ),
          GenitourinarySurgeryAnesthesiaItem(
            title: 'Diğer Komplikasyonlar',
            description: 'Hipotermi (sıvılar ısıtılmalı)',
            subtitle: 'Mesane perforasyonu (<%1, vagal bradikardi + hemodinamik değişiklik)',
            additionalInfo: 'Koagülopati (tromboplastin → subklinik DİK, dilüsyonel trombositopeni)',
          ),
          GenitourinarySurgeryAnesthesiaItem(
            title: 'Septisemi',
            description: 'Antibiyotik profilaksisi şart',
          ),
          GenitourinarySurgeryAnesthesiaItem(
            title: 'Anestezi',
            description: 'T10 blok ideal',
            subtitle: 'Metastaz şüphesinde RA relatif kontrendike',
          ),
          GenitourinarySurgeryAnesthesiaItem(
            title: 'Monitörizasyon',
            description: 'Bilinç (TURP sendromu erken tanısı), EKG (iskemi %18), ısı takibi',
            subtitle: 'Kan kaybı 3–5 mL/dk',
            additionalInfo: '90 dk veya >45 g doku → transfüzyon endikasyonu',
          ),
        ],
      ),
      GenitourinarySurgeryAnesthesiaCategory(
        categoryName: 'Litotripsi',
        items: [
          GenitourinarySurgeryAnesthesiaItem(
            title: 'ESWL ve Diğer Teknikler',
            description: 'Kalp pili/ICD → aritmi riski → R dalgası ile senkronizasyon',
            subtitle: 'Başlangıçta VD + hipotansiyon, sonra SVR ↑, FRK %30–60 ↓',
          ),
          GenitourinarySurgeryAnesthesiaItem(
            title: 'Anestezi Seçimi',
            description: 'Yeni tekniklerde düşük enerji → hafif sedasyon yeterli',
            subtitle: 'Eski su banyosu tekniği → RA (T6 blok), GA',
            additionalInfo: 'Epidural kateter yerleştirirken hava değil SF kullanılmalı',
          ),
          GenitourinarySurgeryAnesthesiaItem(
            title: 'Bradikardi',
            description: 'Glikoprolat ile tedavi',
          ),
          GenitourinarySurgeryAnesthesiaItem(
            title: 'Monitörizasyon',
            description: 'EKG + O₂ sat + ısı',
            subtitle: 'R senkronizasyonunda bile SVT gelişebilir',
          ),
          GenitourinarySurgeryAnesthesiaItem(
            title: 'Sıvı Yönetimi',
            description: 'Aktif idrar çıkışı için sıvı yüklenmesi',
            subtitle: 'İlk bolus + 1000–2000 mL RL + düşük doz furosemid',
          ),
        ],
      ),
      GenitourinarySurgeryAnesthesiaCategory(
        categoryName: 'Üst Üreter ve Böbreğin Kanser Dışı Cerrahisi',
        items: [
          GenitourinarySurgeryAnesthesiaItem(
            title: 'Lateral Flexed Pozisyon',
            description: 'Brakial pleksus korumak için aksillaya rulo',
            subtitle: 'Pozisyon sonrası entübasyon tüpü yeri kontrol edilmeli',
          ),
          GenitourinarySurgeryAnesthesiaItem(
            title: 'Solunum Etkileri',
            description: 'FRK ↓, ölü boşluk ↑, atelektazi riski ↑',
          ),
          GenitourinarySurgeryAnesthesiaItem(
            title: 'Monitörizasyon',
            description: 'İnvaziv arter monitörizasyonu + geniş damar yolu',
          ),
        ],
      ),
      GenitourinarySurgeryAnesthesiaCategory(
        categoryName: 'Prostat Kanseri',
        items: [
          GenitourinarySurgeryAnesthesiaItem(
            title: 'Radikal Retropubik Prostatektomi',
            description: 'Büyük kanama riski → invaziv arter hattı, CVP, geniş IV',
            subtitle: 'RA → pozisyon + cerrahi nedeniyle tolere edilemez',
            additionalInfo: 'Epidural → postop analjezi',
          ),
          GenitourinarySurgeryAnesthesiaItem(
            title: 'Robotik Radikal Prostatektomi',
            description: 'Derin Trendelenburg → üst havayolu ödemi, pulmoner komplikasyon',
          ),
          GenitourinarySurgeryAnesthesiaItem(
            title: 'Bilateral Orşiektomi',
            description: 'GA veya RA altında yapılmalı',
          ),
        ],
      ),
      GenitourinarySurgeryAnesthesiaCategory(
        categoryName: 'Mesane Kanseri',
        items: [
          GenitourinarySurgeryAnesthesiaItem(
            title: 'TURBT',
            description: 'Obturator sinir stimülasyonu → bacak adduksiyonu → GA + kas paralizisi şart',
          ),
          GenitourinarySurgeryAnesthesiaItem(
            title: 'Radikal Sistektomi',
            description: 'Büyük kan kaybı, hipotansif anestezi tercih edilebilir',
            subtitle: 'İnvaziv arter monitörizasyonu',
          ),
          GenitourinarySurgeryAnesthesiaItem(
            title: 'İdrar Diversiyonu',
            description: 'Amaç: yeterli hidrasyon, aktif idrar çıkışı',
            subtitle: 'Jejunal yol → hiponatremi, hipokloremi, hiperkalemi, metabolik asidoz',
            additionalInfo: 'Kolon/ileal yol → hiperkloremik asidoz',
          ),
        ],
      ),
      GenitourinarySurgeryAnesthesiaCategory(
        categoryName: 'Testis Kanseri',
        items: [
          GenitourinarySurgeryAnesthesiaItem(
            title: 'Genel Özellikler',
            description: 'Genç hasta, kemoterapi komplikasyonlarına dikkat',
          ),
          GenitourinarySurgeryAnesthesiaItem(
            title: 'Kemoterapi Komplikasyonları',
            description: 'Sisplatin → nefrotoksisite',
            subtitle: 'Bleomisin → pulmoner fibrozis',
            additionalInfo: 'Vinkristin → nöropati',
          ),
          GenitourinarySurgeryAnesthesiaItem(
            title: 'Radikal Orşiektomi',
            description: 'Spermatik kord çekilmesi → bradikardi',
          ),
          GenitourinarySurgeryAnesthesiaItem(
            title: 'Retroperitoneal Diseksiyon',
            description: 'İdrar çıkışı ≥0.5 mL/kg/saat',
            subtitle: 'Hidratasyon: 1:2–1:3 kolloid/kristalloid',
            additionalInfo: 'İnterkostal arter bağlanması → parapleji riski',
          ),
        ],
      ),
      GenitourinarySurgeryAnesthesiaCategory(
        categoryName: 'Böbrek Kanseri',
        items: [
          GenitourinarySurgeryAnesthesiaItem(
            title: 'Preop Değerlendirme',
            description: 'RCC\'de eritrositoz, hiperkalsemi, HT, hepatik disfonksiyon olabilir',
            subtitle: 'Hb ≥10 g/dL olmalı',
          ),
          GenitourinarySurgeryAnesthesiaItem(
            title: 'Radikal Nefrektomi',
            description: 'GA + epidural kombinasyonu uygun',
            subtitle: 'Monitörizasyon: İABP, CVP, TEE',
            additionalInfo: 'İdrar çıkışı ≥0.5 mL/kg/saat',
          ),
          GenitourinarySurgeryAnesthesiaItem(
            title: 'Tümör Trombüsü',
            description: 'VCI\'ya uzanabilir, CPB gerekebilir',
            subtitle: 'CVP kateteri → trombüs mobilize etmeden yerleştirilmeli',
            additionalInfo: 'Emboli riski yüksek',
          ),
        ],
      ),
      GenitourinarySurgeryAnesthesiaCategory(
        categoryName: 'Böbrek Nakli',
        items: [
          GenitourinarySurgeryAnesthesiaItem(
            title: 'Preop Hazırlık',
            description: 'Alıcı → K <5.5 mEq/L, diyaliz son 24–48 saatte',
          ),
          GenitourinarySurgeryAnesthesiaItem(
            title: 'İntraop',
            description: 'GA tercih edilir',
            subtitle: 'Monitörizasyon: İABP, CVP',
            additionalInfo: 'Klempler açıldığında oligüri → diüretik verilebilir',
          ),
          GenitourinarySurgeryAnesthesiaItem(
            title: 'Hiperkalemi',
            description: 'EKG değişikliklerine dikkat',
            subtitle: 'Verici böbrek buzlu RL ile yıkanmalı',
          ),
        ],
      ),
    ];
  }
}
