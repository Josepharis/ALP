import 'package:flutter/material.dart';

class OrthopedicSurgeryAnesthesiaItem {
  final String title;
  final String description;
  final String? subtitle;
  final String? additionalInfo;

  OrthopedicSurgeryAnesthesiaItem({
    required this.title,
    required this.description,
    this.subtitle,
    this.additionalInfo,
  });
}

class OrthopedicSurgeryAnesthesiaCategory {
  final String categoryName;
  final List<OrthopedicSurgeryAnesthesiaItem> items;

  OrthopedicSurgeryAnesthesiaCategory({
    required this.categoryName,
    required this.items,
  });
}

class OrthopedicSurgeryAnesthesiaData {
  static List<OrthopedicSurgeryAnesthesiaCategory> getOrthopedicSurgeryAnesthesiaData(BuildContext context) {
    return [
      OrthopedicSurgeryAnesthesiaCategory(
        categoryName: 'Kemik Çimento (PMMA)',
        items: [
          OrthopedicSurgeryAnesthesiaItem(
            title: 'Polimetilmetakrilat',
            description: 'İntramedüller basınç >500 mmHg',
          ),
          OrthopedicSurgeryAnesthesiaItem(
            title: 'Emboli Riski',
            description: 'Yağ, kemik iliği, çimento, hava → venöz dolaşıma geçiş',
            subtitle: 'Sistemik emilim → vazodilatasyon + tromboplastin salınımı',
          ),
          OrthopedicSurgeryAnesthesiaItem(
            title: 'Kemik Çimento İmplantasyon Sendromu',
            description: 'Hipoksi, hipotansiyon, aritmi, PHT, ↓ kalp debisi',
            subtitle: 'En sık: kalça artroplastisi sonrası',
          ),
          OrthopedicSurgeryAnesthesiaItem(
            title: 'Korunma',
            description: 'FiO₂ ↑, normovolemi, femur şaft temizliği',
            subtitle: 'Distal femur havalandırılması',
            additionalInfo: 'Çimentosuz komponent tercih edilebilir',
          ),
          OrthopedicSurgeryAnesthesiaItem(
            title: 'Uzun Dönem Komplikasyon',
            description: 'Protez gevşemesi',
          ),
          OrthopedicSurgeryAnesthesiaItem(
            title: 'Kullanım',
            description: 'Yaşlı, osteoporotik, düşük aktivite → tercih edilen grup',
          ),
        ],
      ),
      OrthopedicSurgeryAnesthesiaCategory(
        categoryName: 'Turnike Kullanımı',
        items: [
          OrthopedicSurgeryAnesthesiaItem(
            title: 'Basınç',
            description: 'SBP +100 mmHg (örn. 120 mmHg ise → 220 mmHg)',
          ),
          OrthopedicSurgeryAnesthesiaItem(
            title: 'Süre',
            description: '>2 saat → kas disfonksiyonu, sinir hasarı, rabdomiyoliz',
          ),
          OrthopedicSurgeryAnesthesiaItem(
            title: 'Esmarch Bandı',
            description: 'Bilateral → CVP & ABP aşırı artışı',
          ),
          OrthopedicSurgeryAnesthesiaItem(
            title: 'Turnike Ağrısı',
            description: 'GA / RA altında bile sempatik aktivite ↑',
          ),
          OrthopedicSurgeryAnesthesiaItem(
            title: 'Turnike Açılması',
            description: 'Hipertansiyon, ağrı kaybolur; metabolitlerin dolaşıma katılması → aritmiler, ventilasyon ihtiyacı ↑',
            subtitle: 'Risk: masif PE',
          ),
        ],
      ),
      OrthopedicSurgeryAnesthesiaCategory(
        categoryName: 'Yağ Embolizmi Sendromu',
        items: [
          OrthopedicSurgeryAnesthesiaItem(
            title: 'Mortalite',
            description: '%10–20',
          ),
          OrthopedicSurgeryAnesthesiaItem(
            title: 'En Sık Görüldüğü Durum',
            description: 'Uzun kemik/pelvis kırıkları → 72 saat sonra',
          ),
          OrthopedicSurgeryAnesthesiaItem(
            title: 'Triad',
            description: 'Dispne + konfüzyon + peteşi',
          ),
          OrthopedicSurgeryAnesthesiaItem(
            title: 'Mekanizma',
            description: 'Yağ partikülleri + ↑ serbest yağ asidi → ARDS',
          ),
          OrthopedicSurgeryAnesthesiaItem(
            title: 'Peteşiler',
            description: 'Göğüs, üst ekstremite, aksilla, konjonktiva',
          ),
          OrthopedicSurgeryAnesthesiaItem(
            title: 'Laboratuvar',
            description: 'Trombositopeni, koagülopati',
          ),
          OrthopedicSurgeryAnesthesiaItem(
            title: 'Anestezi Sırasında',
            description: 'ETCO₂ ↓, PAP ↑, ST değişiklikleri',
          ),
          OrthopedicSurgeryAnesthesiaItem(
            title: 'Tedavi',
            description: 'Kırığın erken stabilizasyonu, oksijen/CPAP, VD',
          ),
        ],
      ),
      OrthopedicSurgeryAnesthesiaCategory(
        categoryName: 'DVT / Tromboembolizm',
        items: [
          OrthopedicSurgeryAnesthesiaItem(
            title: 'Risk Faktörleri',
            description: '>60 yaş, >30 dk cerrahi, alt ekstremite kırığı, turnike, >4 gün immobilizasyon',
          ),
          OrthopedicSurgeryAnesthesiaItem(
            title: 'İnsidans',
            description: 'Kalça/diz cerrahisinde DVT %40–80; PE %20; fatal PE %1–3',
          ),
          OrthopedicSurgeryAnesthesiaItem(
            title: 'Profilaksi',
            description: 'Mekanik: tüm hastalarda',
            subtitle: 'Medikal: düşük doz antikoagülan (kanama riski düşükse)',
            additionalInfo: 'Yüksek kanama riski: sadece mekanik',
          ),
          OrthopedicSurgeryAnesthesiaItem(
            title: 'RA Teknikler',
            description: 'Tek başına veya GA\'ya ek → komplikasyon ↓',
            subtitle: 'Antikoagülan alanlarda RA uygulama zamanı → kritik',
          ),
        ],
      ),
      OrthopedicSurgeryAnesthesiaCategory(
        categoryName: 'Kalça Kırığı',
        items: [
          OrthopedicSurgeryAnesthesiaItem(
            title: 'Preop',
            description: 'İleri yaş, komorbidite, dehidratasyon, gizli kan kaybı, hipoksi sık',
          ),
          OrthopedicSurgeryAnesthesiaItem(
            title: 'İntraop',
            description: 'RA (spinal/epidural) → kısa vadede GA\'ye üstün',
            subtitle: 'İzobarik/hipobarik ajanlar denenebilir',
            additionalInfo: 'Morfin → uzun analjezi ama geç solunum depresyonu riski',
          ),
          OrthopedicSurgeryAnesthesiaItem(
            title: 'Monitörizasyon',
            description: 'Geniş IV yol gerekli',
          ),
        ],
      ),
      OrthopedicSurgeryAnesthesiaCategory(
        categoryName: 'Total Kalça Artroplastisi (TKA)',
        items: [
          OrthopedicSurgeryAnesthesiaItem(
            title: 'Endikasyonlar',
            description: 'OA, RA, avasküler nekroz',
          ),
          OrthopedicSurgeryAnesthesiaItem(
            title: 'RA Hastalarında',
            description: 'Vertebra/temporomandibuler eklem tutulumu → zor entübasyon',
            subtitle: 'Atlantoaksiyal instabilite → in-line stabilizasyon',
            additionalInfo: 'RA tedavisi → GİS kanama, trombosit disfonksiyonu riski',
          ),
          OrthopedicSurgeryAnesthesiaItem(
            title: 'Komplikasyonlar',
            description: 'KÇİS, kanama, VTE',
            subtitle: 'İnvaziv arter monitörizasyon gerekebilir',
          ),
          OrthopedicSurgeryAnesthesiaItem(
            title: 'Revizyonlar',
            description: 'RA teknik → kanama daha az',
            subtitle: 'Bilateral yapılacaksa → ilk cerrahide instabilite varsa diğeri ertelenmeli',
          ),
        ],
      ),
      OrthopedicSurgeryAnesthesiaCategory(
        categoryName: 'Kalça Çıkığı Redüksiyonu',
        items: [
          OrthopedicSurgeryAnesthesiaItem(
            title: 'Anestezi',
            description: 'Kısa süreli GA yeterli',
            subtitle: 'Kas gevşemesi için Sch kullanılabilir',
          ),
        ],
      ),
      OrthopedicSurgeryAnesthesiaCategory(
        categoryName: 'Diz Artroskopisi',
        items: [
          OrthopedicSurgeryAnesthesiaItem(
            title: 'Hasta Profili',
            description: 'Genellikle genç hasta (ama yaşlı da olabilir)',
            subtitle: 'Turnike uygulanır',
          ),
          OrthopedicSurgeryAnesthesiaItem(
            title: 'Anestezi Seçimi',
            description: 'RA teknikler ↔ GA arasında üstünlük yok',
            subtitle: 'Günübirlik cerrahi → RA ile taburculuk daha geç',
          ),
          OrthopedicSurgeryAnesthesiaItem(
            title: 'Postop Analjezi',
            description: 'İntraartiküler LA → kısa süreli',
            subtitle: 'NSAID, gabapentin, sinir blokları',
            additionalInfo: 'Opioid yüksek dozdan kaçınılmalı',
          ),
        ],
      ),
      OrthopedicSurgeryAnesthesiaCategory(
        categoryName: 'Total Diz Replasmanı (TKR)',
        items: [
          OrthopedicSurgeryAnesthesiaItem(
            title: 'Komorbiditeler',
            description: 'TKA ile benzer',
          ),
          OrthopedicSurgeryAnesthesiaItem(
            title: 'Kan Kaybı',
            description: 'Turnike ile kan kaybı ↓',
            subtitle: 'KÇİS daha nadir',
          ),
          OrthopedicSurgeryAnesthesiaItem(
            title: 'Postop Analjezi',
            description: 'Epidural en ideal',
            subtitle: 'Femoral perinöral kateter → epiduralden daha az yan etki, daha hızlı taburculuk',
            additionalInfo: 'Düşmeleri önleyici protokol gerekli',
          ),
        ],
      ),
      OrthopedicSurgeryAnesthesiaCategory(
        categoryName: 'Omuz Cerrahisi',
        items: [
          OrthopedicSurgeryAnesthesiaItem(
            title: 'Şezlong Pozisyon',
            description: 'Beyin perfüzyonu ↓ → dikkat',
            subtitle: 'Arter basıncı eksternal meatus hizasında ölçülmeli',
          ),
          OrthopedicSurgeryAnesthesiaItem(
            title: 'İnterskalen Blok',
            description: 'Yeterli anestezi',
            subtitle: 'İnterskalen kateter → postop ağrı kontrolü',
            additionalInfo: 'İntraartiküler bupivakain → kondroliz riski',
          ),
        ],
      ),
      OrthopedicSurgeryAnesthesiaCategory(
        categoryName: 'Distal Üst Ekstremite',
        items: [
          OrthopedicSurgeryAnesthesiaItem(
            title: 'IVRA (Bier Bloku)',
            description: 'Uygulanabilir',
          ),
          OrthopedicSurgeryAnesthesiaItem(
            title: 'Alternatif',
            description: 'Brakial pleksus bloğu',
            subtitle: 'Distal cerrahi → turnike kullanımı hesaplanmalı',
          ),
        ],
      ),
    ];
  }
}
