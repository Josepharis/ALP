import 'package:flutter/material.dart';

class ChronicPainManagementItem {
  final String title;
  final String description;
  final String? subtitle;
  final String? additionalInfo;

  ChronicPainManagementItem({
    required this.title,
    required this.description,
    this.subtitle,
    this.additionalInfo,
  });
}

class ChronicPainManagementCategory {
  final String categoryName;
  final List<ChronicPainManagementItem> items;

  ChronicPainManagementCategory({
    required this.categoryName,
    required this.items,
  });
}

class ChronicPainManagementData {
  static List<ChronicPainManagementCategory> getChronicPainManagementData(BuildContext context) {
    return [
      ChronicPainManagementCategory(
        categoryName: 'Ağrı Tanımı ve Sınıflandırması',
        items: [
          ChronicPainManagementItem(
            title: 'Ağrı Tanımı',
            description: 'Gerçek/potansiyel doku hasarıyla ilişkili hoş olmayan duyusal-duygusal deneyim',
          ),
          ChronicPainManagementItem(
            title: 'Ağrı Türleri',
            description: 'Nosiseptif (somatik/visseral) vs nöropatik (sinir hasarı)',
          ),
          ChronicPainManagementItem(
            title: 'Akut Ağrı',
            description: 'Stres yanıtı → sempatik aktivite, iyileşmezse kronikleşir',
          ),
          ChronicPainManagementItem(
            title: 'Kronik Ağrı',
            description: '>3-6 ay, stres yanıt yok, uyku/affekt bozukluğu + depresyon',
          ),
        ],
      ),
      ChronicPainManagementCategory(
        categoryName: 'Nosisepsiyon – Anatomi ve Fizyoloji',
        items: [
          ChronicPainManagementItem(
            title: 'Birinci Sıra Nöronlar',
            description: 'Dorsal kökten girer, bazen C lifleri ventralden',
          ),
          ChronicPainManagementItem(
            title: 'İkinci Sıra Nöronlar',
            description: 'Lamina I–VI (dorsal boynuz)',
            subtitle: 'Nosiseptif spesifik (Lamina I) → yüksek eşik, şiddeti ayırt etmez',
            additionalInfo: 'WDR (Lamina V) → wind-up fenomeni, santral sensitizasyon',
          ),
          ChronicPainManagementItem(
            title: 'Üçüncü Sıra Nöronlar',
            description: 'Talamus → korteks (diskriminatif), limbik (emosyonel)',
          ),
          ChronicPainManagementItem(
            title: 'Traktuslar',
            description: 'Lateral spinotalamik → lokalizasyon, şiddet',
            subtitle: 'Medial spinotalamik → emosyonel/otonomik yanıt',
            additionalInfo: 'Spinoretiküler → otonomik yanıt; Spinomezensefalik → desendan antinosiseptif aktivasyon',
          ),
        ],
      ),
      ChronicPainManagementCategory(
        categoryName: 'Ağrı Fizyolojisi',
        items: [
          ChronicPainManagementItem(
            title: 'Aδ Lifleri',
            description: 'Keskin, hızlı, lokalize',
          ),
          ChronicPainManagementItem(
            title: 'C Lifleri',
            description: 'Künt, yavaş, diffüz',
          ),
          ChronicPainManagementItem(
            title: 'Sessiz Nosiseptörler',
            description: 'Sadece inflamasyonda aktive',
          ),
          ChronicPainManagementItem(
            title: 'Kimyasal Mediatörler',
            description: 'Substans P, CGRP, Glutamat (en güçlü eksitatör NT)',
          ),
          ChronicPainManagementItem(
            title: 'Hiperaljezi',
            description: 'Primer → nosiseptör sensitizasyonu (PG, histamin, bradikinin)',
            subtitle: 'Sekonder → nörojenik inflamasyon, Substans P kaynaklı',
          ),
        ],
      ),
      ChronicPainManagementCategory(
        categoryName: 'Modülasyon',
        items: [
          ChronicPainManagementItem(
            title: 'Santral Fasilitasyon',
            description: 'NMDA aktivasyonu, wind-up, NO, PG',
          ),
          ChronicPainManagementItem(
            title: 'Segmental İnhibisyon',
            description: 'Kapı Kontrol Teorisi → Aβ lifleri → GABA, glisin, adenozin',
          ),
          ChronicPainManagementItem(
            title: 'Supraspinal İnhibisyon',
            description: 'PAG–NRM → serotonin, noradrenalin, endojen opioidler',
          ),
        ],
      ),
      ChronicPainManagementCategory(
        categoryName: 'Ağrının Sistemik Yanıtları',
        items: [
          ChronicPainManagementItem(
            title: 'Akut Ağrı',
            description: 'KVS → taşikardi, hipertansiyon, miyokard iskemisi',
            subtitle: 'Solunum → hiperventilasyon, atelektazi, hipoksemi',
            additionalInfo: 'GİS/üriner → motilite azalır, retansiyon; Endokrin → ↑Kortizol, ↑ADH, katabolizma; Hematoloji → hiperkoagülabilite',
          ),
          ChronicPainManagementItem(
            title: 'Kronik Ağrı',
            description: 'Stres yanıt yok, psikolojik bozukluklar (anksiyete, depresyon)',
          ),
        ],
      ),
      ChronicPainManagementCategory(
        categoryName: 'Kronik Ağrının Değerlendirilmesi',
        items: [
          ChronicPainManagementItem(
            title: 'Ölçekler',
            description: 'NRS (0–10), VAS (10 cm), FACES (>3 yaş çocuk), McGill Pain Questionnaire',
          ),
          ChronicPainManagementItem(
            title: 'Psikolojik Testler',
            description: 'MMPI, Beck depresyon ölçeği',
          ),
          ChronicPainManagementItem(
            title: 'Fonksiyonel Testler',
            description: 'MPI, SF-36, PDI, Oswestry',
          ),
          ChronicPainManagementItem(
            title: 'EMG / Sinir İletim',
            description: 'Organik vs fonksiyonel ayrımı',
          ),
        ],
      ),
      ChronicPainManagementCategory(
        categoryName: 'Kronik Ağrı Sendromları',
        items: [
          ChronicPainManagementItem(
            title: 'Miyofasiyal Ağrı',
            description: 'Tetik noktalar',
          ),
          ChronicPainManagementItem(
            title: 'Fibromiyalji',
            description: 'WPI & SS kriterleri, uyku ve KV semptomlar',
          ),
          ChronicPainManagementItem(
            title: 'Bel Ağrısı',
            description: 'Disk hernisi, spinal stenoz, faset sendromu',
          ),
          ChronicPainManagementItem(
            title: 'Nöropatik Ağrı',
            description: 'Diyabetik nöropati, CRPS I–II',
          ),
          ChronicPainManagementItem(
            title: 'Postherpetik Nevralji',
            description: 'Antidepresan, antikonvülzan, TENS, kapsaisin/lidokain',
          ),
          ChronicPainManagementItem(
            title: 'Baş Ağrısı',
            description: 'Migren, küme, gerilim, trigeminal nevralji',
          ),
          ChronicPainManagementItem(
            title: 'Kanser Ağrısı',
            description: 'WHO 3 basamak tedavi yaklaşımı',
          ),
        ],
      ),
      ChronicPainManagementCategory(
        categoryName: 'Farmakolojik Tedavi',
        items: [
          ChronicPainManagementItem(
            title: 'NSAİD/Parasetamol',
            description: 'Hafif ağrı',
          ),
          ChronicPainManagementItem(
            title: 'Antidepresanlar',
            description: 'TCA, SNRI → nöropatik ağrı',
          ),
          ChronicPainManagementItem(
            title: 'Antikonvülzanlar',
            description: 'Gabapentin, karbamazepin → trigeminal nevralji, nöropati',
          ),
          ChronicPainManagementItem(
            title: 'Kas Gevşeticiler',
            description: 'Baklofen, tizanidin → spastisite',
          ),
          ChronicPainManagementItem(
            title: 'Opioidler',
            description: 'Orta–şiddetli ağrı (morfın, fentanil, tramadol, tapentadol)',
          ),
          ChronicPainManagementItem(
            title: 'Adjuvanlar',
            description: 'Kortikosteroid, α2-agonist (klonidin), lidokain infüzyonu',
          ),
        ],
      ),
      ChronicPainManagementCategory(
        categoryName: 'Tanısal ve Tedavi Edici Bloklar',
        items: [
          ChronicPainManagementItem(
            title: 'Tanısal Blok',
            description: 'Ağrı kaynağını belirlemek için düşük hacimli LA (ör. faset eklem, sinir kökü)',
          ),
          ChronicPainManagementItem(
            title: 'Tedavi Edici Blok',
            description: 'Aynı hedefe LA ± steroid',
          ),
          ChronicPainManagementItem(
            title: 'Teknikler',
            description: 'USG → gerçek zamanlı görüntü',
            subtitle: 'Floroskopi/BT → anatomik hedefleme, özellikle derin ganglion bloklarında',
          ),
        ],
      ),
      ChronicPainManagementCategory(
        categoryName: 'Somatik Sinir Blokları',
        items: [
          ChronicPainManagementItem(
            title: 'Trigeminal Blok',
            description: 'Gasser ganglionu, maksiller/mandibular dallar',
            subtitle: 'Endikasyon → trigeminal nevralji, yüz kanseri ağrısı',
            additionalInfo: 'Komplikasyon → subaraknoid enjeksiyon, çiğneme kas bloğu',
          ),
          ChronicPainManagementItem(
            title: 'Fasial Blok',
            description: 'Spazm, herpes zoster, göz cerrahisi',
          ),
          ChronicPainManagementItem(
            title: 'Glossofaringeal Blok',
            description: 'Tonsil, dil kökü kanserleri, ayırıcı tanıda nevralji',
            subtitle: 'Risk → vokal kord paralizisi',
          ),
          ChronicPainManagementItem(
            title: 'Oksipital Blok',
            description: 'Oksipital nevralji, baş ağrısı',
            subtitle: 'Uygulama → oksipital arter medialinden',
          ),
          ChronicPainManagementItem(
            title: 'Supraskapular Blok',
            description: 'Omuz kaynaklı ağrı',
            subtitle: 'Risk → pnömotoraks',
          ),
          ChronicPainManagementItem(
            title: 'Paravertebral Blok',
            description: 'Servikal, torasik, lomber kök ağrıları',
            subtitle: 'Risk → pnömotoraks, intratekal enjeksiyon',
          ),
          ChronicPainManagementItem(
            title: 'Medial Dal/Faset Eklem Blokları',
            description: 'Faset sendromu',
            subtitle: 'RF lezyonlama ile uzun süreli fayda',
          ),
          ChronicPainManagementItem(
            title: 'Pudendal Blok',
            description: 'Perineal ağrı, doğum analjezisi',
          ),
        ],
      ),
      ChronicPainManagementCategory(
        categoryName: 'Sempatik Sinir Blokları',
        items: [
          ChronicPainManagementItem(
            title: 'Stellat Ganglion Bloğu',
            description: 'C6–C7: Baş, boyun, kol, üst göğüs ağrısı; Raynaud, CRPS',
            subtitle: 'Etki göstergesi → aynı taraf Horner sendromu, cilt sıcaklığında artış',
          ),
          ChronicPainManagementItem(
            title: 'Torasik Sempatik Zincir Bloğu',
            description: 'Pnömotoraks riski nedeniyle az kullanılır',
          ),
          ChronicPainManagementItem(
            title: 'Splanknik Blok',
            description: 'T11–12 seviyesinden, abdominal visseral ağrı',
          ),
          ChronicPainManagementItem(
            title: 'Çölyak Pleksus Bloğu',
            description: 'Üst abdominal malignite ağrısı',
            subtitle: 'Risk → postural hipotansiyon, visseral yaralanma',
          ),
          ChronicPainManagementItem(
            title: 'Lumbal Sempatik Blok',
            description: 'Alt ekstremite ağrısı, vasküler hastalık',
          ),
          ChronicPainManagementItem(
            title: 'Superior Hipogastrik Pleksus Bloğu',
            description: 'Pelvik organ kaynaklı ağrı (serviks, uterus, prostat, mesane)',
          ),
          ChronicPainManagementItem(
            title: 'Ganglion İmpar Bloğu',
            description: 'Perianal ve koksigeal ağrılar',
          ),
        ],
      ),
      ChronicPainManagementCategory(
        categoryName: 'Epidural ve Spinal Yöntemler',
        items: [
          ChronicPainManagementItem(
            title: 'Epidural Steroid Enjeksiyonları',
            description: 'Radiküler ağrı, bel-boyun ağrısı',
            subtitle: 'Erken dönemde (ilk 2 hafta) daha etkili',
            additionalInfo: 'Steroidler: metilprednizolon, triamcinolon; Teknik: kaudal, transforaminal, interlaminar',
          ),
          ChronicPainManagementItem(
            title: 'Selektif Sinir Kökü Bloğu',
            description: 'Ağrının hangi kökten kaynaklandığını belirlemek için',
          ),
        ],
      ),
      ChronicPainManagementCategory(
        categoryName: 'Ablatif Yöntemler',
        items: [
          ChronicPainManagementItem(
            title: 'Radyofrekans (RF) Ablasyon',
            description: 'Isı ile kontrollü nöral lezyon',
            subtitle: 'En sık faset medial dal, trigeminal rizotomi',
            additionalInfo: 'Soğutmalı RF → daha geniş alan lezyonu',
          ),
          ChronicPainManagementItem(
            title: 'Kriyoanaljezi',
            description: 'Dokuyu dondurarak geçici blok',
            subtitle: 'Posttorakotomi ağrısında, periferik sinirlerde',
          ),
          ChronicPainManagementItem(
            title: 'Kimyasal Nöroliz',
            description: 'Fenol → protein koagülasyonu',
            subtitle: 'Alkol → fosfolipid ekstraksiyonu',
            additionalInfo: 'Çölyak ganglion için genelde alkol, lumbal için fenol',
          ),
        ],
      ),
      ChronicPainManagementCategory(
        categoryName: 'Nöromodülasyon Teknikleri',
        items: [
          ChronicPainManagementItem(
            title: 'TENS',
            description: 'Transkutan elektriksel sinir stimülasyonu: Hafif–orta ağrı, nöropatik ağrı',
            subtitle: 'Kapı kontrol mekanizması ile çalışır',
          ),
          ChronicPainManagementItem(
            title: 'Spinal Kord Stimülasyonu',
            description: 'Epidural elektrotlar → refrakter nöropatik ağrı, CRPS',
          ),
          ChronicPainManagementItem(
            title: 'Periferik Sinir Stimülasyonu',
            description: 'Hasarlı sinir çevresine elektrot',
          ),
          ChronicPainManagementItem(
            title: 'Derin Beyin Stimülasyonu',
            description: 'Periakuaduktal/periventriküler gri cevher → kanser ve refrakter nöropatik ağrı',
          ),
        ],
      ),
      ChronicPainManagementCategory(
        categoryName: 'Diğer Yöntemler',
        items: [
          ChronicPainManagementItem(
            title: 'Vertebra Güçlendirme',
            description: 'Vertebroplasti, kifoplasti → tümör veya osteoporoz kaynaklı ağrı',
          ),
          ChronicPainManagementItem(
            title: 'Nörolitik Teknikler',
            description: 'Diferansiyel blokaj (salin, düşük ve yüksek konsantrasyon LA ile ayırıcı tanı)',
          ),
          ChronicPainManagementItem(
            title: 'Botulinum Toksini',
            description: 'Migren, distoni, miyofasiyal ağrı',
          ),
        ],
      ),
      ChronicPainManagementCategory(
        categoryName: 'Özel Notlar',
        items: [
          ChronicPainManagementItem(
            title: 'WHO Basamaklı Analjezi',
            description: 'Hafif ağrı → parasetamol / NSAİD',
            subtitle: 'Orta ağrı → zayıf opioid + non-opioid ± adjuvan',
            additionalInfo: 'Şiddetli ağrı → güçlü opioid + non-opioid ± adjuvan',
          ),
          ChronicPainManagementItem(
            title: 'Opioid Yan Etkileri',
            description: 'Konstipasyon (daima laksatif), bulantı, sedasyon, tolerans, bağımlılık',
          ),
          ChronicPainManagementItem(
            title: 'Kanser Ağrısı',
            description: 'Multimodal yaklaşım + adjuvan analjezikler',
          ),
        ],
      ),
    ];
  }
}
