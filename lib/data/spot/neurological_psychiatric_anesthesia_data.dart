import 'package:flutter/material.dart';

class NeurologicalPsychiatricAnesthesiaItem {
  final String title;
  final String description;
  final String? subtitle;
  final String? additionalInfo;

  NeurologicalPsychiatricAnesthesiaItem({
    required this.title,
    required this.description,
    this.subtitle,
    this.additionalInfo,
  });
}

class NeurologicalPsychiatricAnesthesiaCategory {
  final String categoryName;
  final List<NeurologicalPsychiatricAnesthesiaItem> items;

  NeurologicalPsychiatricAnesthesiaCategory({
    required this.categoryName,
    required this.items,
  });
}

class NeurologicalPsychiatricAnesthesiaData {
  static List<NeurologicalPsychiatricAnesthesiaCategory> getNeurologicalPsychiatricAnesthesiaData(BuildContext context) {
    return [
      NeurologicalPsychiatricAnesthesiaCategory(
        categoryName: 'Serebrovasküler Hastalık',
        items: [
          NeurologicalPsychiatricAnesthesiaItem(
            title: 'TİA ve Perioperatif Risk',
            description: 'TİA → perioperatif inme riskini ↑',
            subtitle: 'TİA öyküsü olan → Doppler + medikal değerlendirme olmadan elektif cerrahiye alınmaz',
          ),
          NeurologicalPsychiatricAnesthesiaItem(
            title: 'Karotis Stenozu',
            description: 'Karotis stenozu >%60 → endarterektomi veya stent',
            subtitle: '40 yaş üstü → %4 servikal üfürüm',
            additionalInfo: 'Asemptomatik üfürüm → inme riskini artırmayabilir ama yokluğu da güvenli değil',
          ),
          NeurologicalPsychiatricAnesthesiaItem(
            title: 'Risk Artışı Faktörleri',
            description: 'İleri yaş, KVS hastalığı, bilinen serebrovasküler hastalık, kardiyak cerrahi',
            subtitle: 'Nabız basıncı >80 mmHg → endotel hasarı riski',
          ),
          NeurologicalPsychiatricAnesthesiaItem(
            title: 'Düzelme Süreleri',
            description: 'Bölgesel kan akımı bozukluğu: 21 haftada düzelmeye başlar',
            subtitle: 'KBB bozukluğu: ≥4 hafta düzelmeye başlar',
          ),
          NeurologicalPsychiatricAnesthesiaItem(
            title: 'Preoperatif Değerlendirme',
            description: 'İnme tipi, defisit boyutu değerlendirilmeli',
            subtitle: 'Trombotik inmelerde yaşlı + KVS + renal sorun sık',
            additionalInfo: 'Non-hemorajik → uzun süre varfarin/antitrombosit',
          ),
          NeurologicalPsychiatricAnesthesiaItem(
            title: 'İntraoperatif Yaklaşım',
            description: 'Akut emboli → kaynağa yönelik yaklaşım',
            subtitle: 'Tıkayıcı karotis hast. → endarterektomi/stent',
            additionalInfo: 'Amaç: yeterli serebral perfüzyon',
          ),
          NeurologicalPsychiatricAnesthesiaItem(
            title: 'Trombotik/Hemorajik Sonrası',
            description: 'Elektif cerrahi → penumbra korunmalı',
            subtitle: 'İKB yüksekse → dekompresyon cerrahisi',
            additionalInfo: 'Kan basıncı kontrolü için invaziv monitörizasyon önerilir',
          ),
        ],
      ),
      NeurologicalPsychiatricAnesthesiaCategory(
        categoryName: 'Nöbet Bozuklukları (Epilepsi)',
        items: [
          NeurologicalPsychiatricAnesthesiaItem(
            title: 'Epilepsi Tanımı',
            description: 'Paroksismal nöbet aktivitesi, parsiyel/jeneralize',
            subtitle: 'Erişkin → en sık yapısal beyin lezyonu/metabolik bozukluk',
            additionalInfo: 'Çocuk → idiyopatik olabilir',
          ),
          NeurologicalPsychiatricAnesthesiaItem(
            title: 'Grand Mal',
            description: 'En riskli (aspirasyon, hipoksi, kas hasarı)',
          ),
          NeurologicalPsychiatricAnesthesiaItem(
            title: 'Nöbet Tetikleyiciler',
            description: 'Düşük doz ketamin, metoheksital → nöbet tetikleyebilir',
            subtitle: 'Atrakurium, sisatrakurium, meperidin metabolitleri → nöbet aktivitesi',
          ),
          NeurologicalPsychiatricAnesthesiaItem(
            title: 'Kronik Tedavi Etkisi',
            description: 'Kronik tedavi → hepatik enzim indüksiyonu → IV anestezik + NMB doz ihtiyacı ↑',
          ),
        ],
      ),
      NeurologicalPsychiatricAnesthesiaCategory(
        categoryName: 'Parkinson Hastalığı',
        items: [
          NeurologicalPsychiatricAnesthesiaItem(
            title: 'Genel Bilgiler',
            description: 'Yaş: 50–70',
            subtitle: 'Semptom: bradikinezi, rijidite, tremor, postural instabilite',
            additionalInfo: 'Patofizyoloji: dopamin kaybı + GABA ↑',
          ),
          NeurologicalPsychiatricAnesthesiaItem(
            title: 'Tedavi',
            description: 'Levodopa/dopamin agonistleri',
            subtitle: 'MAO inh.: selejilin, rasajilin',
            additionalInfo: 'Antikolinerjik: triheksifenidil, benztropin, Amantadin',
          ),
          NeurologicalPsychiatricAnesthesiaItem(
            title: 'Yan Etkiler',
            description: 'Bulantı, diskinezi, ortostatik hipotansiyon, ani uyuklama',
          ),
          NeurologicalPsychiatricAnesthesiaItem(
            title: 'Anestezi Yaklaşımı',
            description: 'Levodopa cerrahi sabahı da verilir',
            subtitle: 'Ani kesilme → rijidite',
            additionalInfo: 'Fenotiyazin, butirofenon, metoklopramid → semptomları kötüleştirir',
          ),
          NeurologicalPsychiatricAnesthesiaItem(
            title: 'Difenhidramin',
            description: 'Premedikasyonda kullanılabilir',
          ),
          NeurologicalPsychiatricAnesthesiaItem(
            title: 'Uzun Süre Levodopa',
            description: 'İndüksiyonda şiddetli bradikardi/hipotansiyon',
            subtitle: 'Hipotansiyon tedavisi → direkt etkili ajan (fenilefrin)',
          ),
        ],
      ),
      NeurologicalPsychiatricAnesthesiaCategory(
        categoryName: 'Alzheimer Hastalığı',
        items: [
          NeurologicalPsychiatricAnesthesiaItem(
            title: 'Prevalans',
            description: '80 yaşta prevalans: %20',
          ),
          NeurologicalPsychiatricAnesthesiaItem(
            title: 'Klinik',
            description: 'Hafıza kaybı → afazi/apraksi',
            subtitle: 'Patoloji: β-amiloid + tau → nörofibriler yumak',
          ),
          NeurologicalPsychiatricAnesthesiaItem(
            title: 'Preoperatif',
            description: 'Değerlendirme zor (dezoryantasyon)',
          ),
          NeurologicalPsychiatricAnesthesiaItem(
            title: 'Postoperatif',
            description: 'Yeni kognitif bozukluk % sık, 1–3 gün sürebilir',
            subtitle: 'Premedikasyon genelde verilmez; verilirse santral atropin/skopolamin verilmez',
          ),
        ],
      ),
      NeurologicalPsychiatricAnesthesiaCategory(
        categoryName: 'Multipl Skleroz',
        items: [
          NeurologicalPsychiatricAnesthesiaItem(
            title: 'Genel Bilgiler',
            description: '20–40 yaş kadın, viral enfeksiyon sonrası, ilerleyici',
            subtitle: 'Belirti: duyu kaybı, görsel sorun, motor güçsüzlük',
          ),
          NeurologicalPsychiatricAnesthesiaItem(
            title: 'Tedavi',
            description: 'Spastisite → diazepam/baklofen; atak → steroid',
          ),
          NeurologicalPsychiatricAnesthesiaItem(
            title: 'Cerrahi Kontrendikasyonu',
            description: 'Nüks sırasında elektif cerrahi yapılmaz',
          ),
          NeurologicalPsychiatricAnesthesiaItem(
            title: 'Anestezi Yaklaşımı',
            description: 'Spinal anestezi alevlenme riski ↑',
            subtitle: 'Sch → kontrendike (hiperkalemi riski)',
            additionalInfo: 'Vücut sıcaklığı artışı alevlenme tetikler',
          ),
          NeurologicalPsychiatricAnesthesiaItem(
            title: 'Epidural',
            description: 'Güvenli kabul edilir',
          ),
        ],
      ),
      NeurologicalPsychiatricAnesthesiaCategory(
        categoryName: 'ALS ve Guillain–Barré',
        items: [
          NeurologicalPsychiatricAnesthesiaItem(
            title: 'ALS',
            description: '50–60 yaş başlangıç, 2–3 yılda bulber + iskelet kası tutar',
            subtitle: 'Sch → kontrendike',
            additionalInfo: 'Mekanik ventilasyondan ayrılma güç olabilir',
          ),
          NeurologicalPsychiatricAnesthesiaItem(
            title: 'Guillain–Barré Sendromu',
            description: 'Klinik: yukarıdan aşağı paralizi, arefleksi, parestezi',
            subtitle: 'Akut inflamatuvar demiyelinizan polinöropati',
            additionalInfo: 'Sch kontrendike',
          ),
          NeurologicalPsychiatricAnesthesiaItem(
            title: 'GBS Etiyoloji',
            description: 'İmmünolojik (post-viral, lenfoma ilişkili)',
            subtitle: 'Hipo/hipertansif yanıtlar abartılı',
            additionalInfo: 'Nöroaksiyel blok → dikkatli olunmalı (ikili hasar riski)',
          ),
        ],
      ),
      NeurologicalPsychiatricAnesthesiaCategory(
        categoryName: 'Otonomik Disfonksiyon',
        items: [
          NeurologicalPsychiatricAnesthesiaItem(
            title: 'Klinik',
            description: 'Ortostatik hipotansiyon, GİS/mesane disfonksiyonu, anhidrozis',
          ),
          NeurologicalPsychiatricAnesthesiaItem(
            title: 'En Büyük Risk',
            description: 'Ciddi hipotansiyon',
            subtitle: 'Genellikle hipovolemik',
          ),
          NeurologicalPsychiatricAnesthesiaItem(
            title: 'Monitörizasyon',
            description: 'Monitör: intraarteriyel kan basıncı',
            subtitle: 'Vazopressör: direkt etkili ajan',
            additionalInfo: 'Anhidrozis → hiperpreksiye dikkat',
          ),
        ],
      ),
      NeurologicalPsychiatricAnesthesiaCategory(
        categoryName: 'Siringomiyeli',
        items: [
          NeurologicalPsychiatricAnesthesiaItem(
            title: 'Tanım',
            description: 'Spinal kord kavitasyonu; sık: Arnold–Chiari ile beraber',
          ),
          NeurologicalPsychiatricAnesthesiaItem(
            title: 'Değerlendirme',
            description: 'Pulmoner komplikasyonlar araştırılmalı',
          ),
          NeurologicalPsychiatricAnesthesiaItem(
            title: 'Nöroaksiyel Blok',
            description: 'Yüksek İKB varsa nöroaksiyel blok kontrendike',
            subtitle: 'Epidural doğum analjezisi uygulanmış olgular mevcut',
          ),
        ],
      ),
      NeurologicalPsychiatricAnesthesiaCategory(
        categoryName: 'Spinal Kord Hasarı',
        items: [
          NeurologicalPsychiatricAnesthesiaItem(
            title: 'Solunum Desteği',
            description: 'C3–5 üzeri → solunum desteği gerekir',
          ),
          NeurologicalPsychiatricAnesthesiaItem(
            title: 'Paralizi Seviyeleri',
            description: 'T1 üzeri → kuadripleji',
            subtitle: 'L4 üzeri → parapleji',
            additionalInfo: 'En sık kesiler: C5–6, T12–L1',
          ),
          NeurologicalPsychiatricAnesthesiaItem(
            title: 'Spinal Şok',
            description: 'Akut kesiden sonra 1–3 hafta spinal şok (flask paralizi, refleks kaybı)',
            subtitle: 'Haftalar sonra refleks geri → kas spazmı, sempatik aktivite ↑',
          ),
          NeurologicalPsychiatricAnesthesiaItem(
            title: 'Akut Transeksiyon',
            description: 'İlk 24 saatte yüksek doz steroid',
            subtitle: 'İlk 24 saatte Sch kullanılabilir; sonra → hiperkalemi riski',
            additionalInfo: 'İnvaziv KB monitörizasyonu şart',
          ),
          NeurologicalPsychiatricAnesthesiaItem(
            title: 'Kronik Transeksiyon',
            description: 'T6 üzeri → hiperrefleksi',
            subtitle: 'Genel/rejyonal anestezi hiperrefleksiyi önler',
            additionalInfo: 'Direkt etkili VD ajanlar hazır tutulmalı',
          ),
          NeurologicalPsychiatricAnesthesiaItem(
            title: 'T1 Üzeri',
            description: 'Hipotermi riski, sıcaklık monitorize edilmeli',
          ),
        ],
      ),
      NeurologicalPsychiatricAnesthesiaCategory(
        categoryName: 'Depresyon',
        items: [
          NeurologicalPsychiatricAnesthesiaItem(
            title: 'Trisiklik Antidepresanlar',
            description: 'Katekolamin/serotonin geri alınımını bloke eder',
            subtitle: 'Tedaviye devam edilir',
            additionalInfo: 'Derin anestezi gerekebilir',
          ),
          NeurologicalPsychiatricAnesthesiaItem(
            title: 'Vazopressör Yanıtı',
            description: 'İndirekt vazopressör + sempatik stimülasyona abartılı yanıt',
          ),
          NeurologicalPsychiatricAnesthesiaItem(
            title: 'Kaçınılması Gerekenler',
            description: 'Panküronyum, ketamin, meperidin, epinefrin içeren LA',
          ),
          NeurologicalPsychiatricAnesthesiaItem(
            title: 'MAO İnhibitörleri',
            description: 'MAO-A: serotonin, DA, NE (depresyonda)',
            subtitle: 'MAO-B: DA, feniletilamin (Parkinson)',
            additionalInfo: 'Eskiden 2 hafta önce kesilirdi, artık şart değil',
          ),
          NeurologicalPsychiatricAnesthesiaItem(
            title: 'MAOİ + Meperidin',
            description: 'Meperidin + MAOİ → hipertermi, nöbet, koma',
            subtitle: 'Vazopressör: direkt etkili ajan',
          ),
          NeurologicalPsychiatricAnesthesiaItem(
            title: 'SSRI/Atipik Antidepresanlar',
            description: 'Antikolinerjik yan etki minimal',
            subtitle: 'Serotonin sendromu (ajitasyon, HT, hipertermi, tremor, asidoz, otonom instabilite) → özellikle ilaç kombinasyonunda',
          ),
        ],
      ),
      NeurologicalPsychiatricAnesthesiaCategory(
        categoryName: 'Bipolar Bozukluk',
        items: [
          NeurologicalPsychiatricAnesthesiaItem(
            title: 'Lityum',
            description: 'Terapötik aralık 0.8–1 mEq/L',
          ),
          NeurologicalPsychiatricAnesthesiaItem(
            title: 'Lityum Yan Etkileri',
            description: 'EKG T dalga değişiklikleri, DI, hipotiroidi',
            subtitle: 'Yüksek doz: konfüzyon, tremor, AV blok, hipotansiyon, nöbet',
          ),
          NeurologicalPsychiatricAnesthesiaItem(
            title: 'Lityum Anestezi Etkisi',
            description: 'Lityum → MAC ↓, NMB süresi ↑',
            subtitle: 'Hiponatremi → lityum atılımı ↓ → toksisite',
          ),
        ],
      ),
      NeurologicalPsychiatricAnesthesiaCategory(
        categoryName: 'Şizofreni',
        items: [
          NeurologicalPsychiatricAnesthesiaItem(
            title: 'Eski Antipsikotikler',
            description: 'Güçlü D₂ antagonisti → ekstrapiramidal yan etkiler',
            subtitle: 'Yan etki: ortostatik HT, distoni, tardif diskinezi',
          ),
          NeurologicalPsychiatricAnesthesiaItem(
            title: 'Klozapin',
            description: 'Granülositopeni riski',
            subtitle: 'Tedaviye devam edilmeli',
          ),
        ],
      ),
      NeurologicalPsychiatricAnesthesiaCategory(
        categoryName: 'Nöroleptik Malign Sendrom',
        items: [
          NeurologicalPsychiatricAnesthesiaItem(
            title: 'Tanım',
            description: 'Antipsikotik sonrası saatler–haftalar içinde',
            subtitle: 'Tetikleyici: meperidin, metoklopramid',
          ),
          NeurologicalPsychiatricAnesthesiaItem(
            title: 'Klinik',
            description: 'Rijidite, hipertermi, rabdomiyoliz, otonom instabilite, bilinç değişikliği',
            subtitle: 'CK ↑',
          ),
          NeurologicalPsychiatricAnesthesiaItem(
            title: 'Mortalite ve Tedavi',
            description: 'Mortalitesi: %30–40',
            subtitle: 'Tedavi: dantrolen + bromokriptin',
          ),
        ],
      ),
      NeurologicalPsychiatricAnesthesiaCategory(
        categoryName: 'Kritik Sayılar (Hızlı Hatırlatma)',
        items: [
          NeurologicalPsychiatricAnesthesiaItem(
            title: 'Karotis Stenozu',
            description: '>%60 → cerrahi/endovasküler',
          ),
          NeurologicalPsychiatricAnesthesiaItem(
            title: 'Nabız Basıncı',
            description: '>80 mmHg → riskli',
          ),
          NeurologicalPsychiatricAnesthesiaItem(
            title: 'Düzelme Süreleri',
            description: 'Bölgesel dolaşım bozukluğu düzelmesi: 21 hf',
            subtitle: 'KBB bozukluğu düzelmesi: ≥4 hf',
          ),
          NeurologicalPsychiatricAnesthesiaItem(
            title: 'Yaş Aralıkları',
            description: 'Parkinson: 50–70 yaş',
            subtitle: 'Alzheimer: >80 yaşta %20',
            additionalInfo: 'MS: 20–40 yaş kadın',
          ),
          NeurologicalPsychiatricAnesthesiaItem(
            title: 'Kontrendikasyonlar',
            description: 'MS/ALS/GBS: Sch kontrendike',
          ),
          NeurologicalPsychiatricAnesthesiaItem(
            title: 'Lityum',
            description: 'Terapötik aralık: 0.8–1 mEq/L',
          ),
          NeurologicalPsychiatricAnesthesiaItem(
            title: 'NMS',
            description: 'Mortalite: %30–40',
          ),
        ],
      ),
    ];
  }
}
