import 'package:flutter/material.dart';

class NeurosurgeryAnesthesiaItem {
  final String title;
  final String description;
  final String? subtitle;
  final String? additionalInfo;

  NeurosurgeryAnesthesiaItem({
    required this.title,
    required this.description,
    this.subtitle,
    this.additionalInfo,
  });
}

class NeurosurgeryAnesthesiaCategory {
  final String categoryName;
  final List<NeurosurgeryAnesthesiaItem> items;

  NeurosurgeryAnesthesiaCategory({
    required this.categoryName,
    required this.items,
  });
}

class NeurosurgeryAnesthesiaData {
  static List<NeurosurgeryAnesthesiaCategory> getNeurosurgeryAnesthesiaData(BuildContext context) {
    return [
      NeurosurgeryAnesthesiaCategory(
        categoryName: 'Kafa İçi Basınç Artışı (KİBAS)',
        items: [
          NeurosurgeryAnesthesiaItem(
            title: 'KİB Kritik Değerleri',
            description: 'KİB > 15 mmHg → patolojik',
            subtitle: 'KİB > 30 mmHg → SKA ↓, ödem ↑, kısır döngü',
          ),
          NeurosurgeryAnesthesiaItem(
            title: 'Cushing Triadı',
            description: 'HT + bradikardi + düzensiz solunum',
          ),
          NeurosurgeryAnesthesiaItem(
            title: 'BOS Hacmi ve Üretim',
            description: 'BOS hacmi: 150 mL, normal üretim: 500 mL/gün',
          ),
          NeurosurgeryAnesthesiaItem(
            title: 'PaCO₂ Etkisi',
            description: 'PaCO₂ 30–33 mmHg → akut KİB düşüşü (fokal iskemi varsa riskli)',
          ),
          NeurosurgeryAnesthesiaItem(
            title: 'Mannitol',
            description: '0.25–0.5 g/kg IV bolus (renal/kalp yetm. dikkat)',
          ),
          NeurosurgeryAnesthesiaItem(
            title: 'Furosemid',
            description: 'Etki 30 dk\'da başlar',
          ),
          NeurosurgeryAnesthesiaItem(
            title: 'Steroid',
            description: 'Vazojenik ödemde etkili, sitotoksikte etkisiz',
          ),
          NeurosurgeryAnesthesiaItem(
            title: 'Hiperglisemi',
            description: 'Hiperglisemiden kaçınılmalı',
          ),
        ],
      ),
      NeurosurgeryAnesthesiaCategory(
        categoryName: 'Kitle Lezyonu & Kraniyotomi',
        items: [
          NeurosurgeryAnesthesiaItem(
            title: 'Supratentoryal Kitle',
            description: 'Nöbet, hemipleji, afazi',
          ),
          NeurosurgeryAnesthesiaItem(
            title: 'İnfratentoryal Kitle',
            description: 'Serebellar/beyin sapı disfonksiyonu',
          ),
          NeurosurgeryAnesthesiaItem(
            title: 'Preoperatif Hazırlık',
            description: 'Nörolojik muayene şart',
            subtitle: 'Antikonvülzan düzeyleri kontrol edilmeli',
            additionalInfo: 'Kortikosteroid + antikonvülzan devam edilmeli',
          ),
          NeurosurgeryAnesthesiaItem(
            title: 'İndüksiyon Hedefi',
            description: 'KİB artmadan entübasyon',
            subtitle: 'Propofol + opioid + hiperventilasyon en sık yöntem',
            additionalInfo: 'Sevofluran orta doz → BOS otoregülasyonu korunur',
          ),
          NeurosurgeryAnesthesiaItem(
            title: 'β₁ Bloker',
            description: 'HT kontrolü',
          ),
          NeurosurgeryAnesthesiaItem(
            title: 'İdame',
            description: 'TİVA veya düşük doz volatil ajan',
            subtitle: 'PaCO₂: 30–35 mmHg',
            additionalInfo: 'İzotonik solüsyon tercih edilmeli (glukozlu verilmez)',
          ),
          NeurosurgeryAnesthesiaItem(
            title: 'Hiperglisemi Kontrolü',
            description: 'Hiperglisemiden kaçınılır',
          ),
          NeurosurgeryAnesthesiaItem(
            title: 'Derlenme',
            description: 'Erken ekstübasyon tercih edilir',
          ),
        ],
      ),
      NeurosurgeryAnesthesiaCategory(
        categoryName: 'Posterior Fossa Cerrahisi',
        items: [
          NeurosurgeryAnesthesiaItem(
            title: 'Obstrüktif Hidrosefali',
            description: 'İndüksiyon öncesi ventrikülastomi gerekebilir',
          ),
          NeurosurgeryAnesthesiaItem(
            title: 'Beyin Sapı Hasarı',
            description: 'Dolaşım/solunum merkezleri → ani instabilite',
          ),
          NeurosurgeryAnesthesiaItem(
            title: 'Oturur Pozisyon',
            description: 'Pnömosefali riski (N₂O kontrendike)',
            subtitle: 'Venöz hava embolisi (VAE) riski ↑',
          ),
          NeurosurgeryAnesthesiaItem(
            title: 'VAE Tanı',
            description: 'TEE & prekordiyal doppler → en duyarlı tanı (0.25 mL hava bile tespit)',
          ),
          NeurosurgeryAnesthesiaItem(
            title: 'VAE Tedavi',
            description: '%100 O₂, hava aspirasyonu (CVP kateteri), sıvı & vazopressör',
            subtitle: 'Juguler kompresyon, PEEP (FO varsa riskli)',
          ),
        ],
      ),
      NeurosurgeryAnesthesiaCategory(
        categoryName: 'Stereotaksik Cerrahi',
        items: [
          NeurosurgeryAnesthesiaItem(
            title: 'Endikasyonlar',
            description: 'Parkinson, epilepsi, kronik ağrı',
          ),
          NeurosurgeryAnesthesiaItem(
            title: 'Anestezi',
            description: 'Propofol + deksmedetomidin infüzyonu',
          ),
          NeurosurgeryAnesthesiaItem(
            title: 'Havayolu Zorluğu',
            description: 'Çerçeve nedeniyle havayolu zorlu olabilir',
          ),
        ],
      ),
      NeurosurgeryAnesthesiaCategory(
        categoryName: 'Kafa Travması',
        items: [
          NeurosurgeryAnesthesiaItem(
            title: 'GKS ve Mortalite',
            description: 'GKS < 8 → mortalite %35',
          ),
          NeurosurgeryAnesthesiaItem(
            title: 'SAB Kritik Değer',
            description: 'SAB < 80 mmHg → kötü prognoz',
          ),
          NeurosurgeryAnesthesiaItem(
            title: 'Sekonder Hasar Nedenleri',
            description: 'Hipoksi, hiperkapni, hipotansiyon',
          ),
          NeurosurgeryAnesthesiaItem(
            title: 'İndüksiyon',
            description: 'Hızlı seri indüksiyon uygulanmalı',
            subtitle: 'Servikal travma kabul edilip in-line stabilizasyon yapılmalı',
            additionalInfo: 'Kör nazal entübasyon: bazal kafa kırığında kontrendike',
          ),
          NeurosurgeryAnesthesiaItem(
            title: 'İntraoperatif Hedefler',
            description: 'SPB: 70–110 mmHg',
            subtitle: 'PaCO₂ < 30 mmHg → kontrendike',
          ),
          NeurosurgeryAnesthesiaItem(
            title: 'Olası Komplikasyonlar',
            description: 'DİK, DI, stres ülseri',
          ),
        ],
      ),
      NeurosurgeryAnesthesiaCategory(
        categoryName: 'İntrakraniyal Anevrizma & AVM',
        items: [
          NeurosurgeryAnesthesiaItem(
            title: 'Anevrizma Lokalizasyonu',
            description: 'En sık yerleşim: Willis poligonu ön tarafı',
            subtitle: 'Sakküler anevrizma → en sık SAK nedeni',
          ),
          NeurosurgeryAnesthesiaItem(
            title: 'Rüptür Mortalitesi',
            description: 'Rüptür → ilk anda mortalite %10, 3 ayda %25',
          ),
          NeurosurgeryAnesthesiaItem(
            title: 'Vazospazm',
            description: '%30, en sık ölüm nedeni, 4–14. gün',
            subtitle: 'TCD: >200 cm/sn ciddi spazm; Lindegaard oranı >3',
            additionalInfo: 'Beyin dokusu O₂ <20 mmHg → iskemi',
          ),
          NeurosurgeryAnesthesiaItem(
            title: 'Vazospazm Tedavisi',
            description: 'Nimodipin + gerekirse 3H (hipervolemi, hemodilüsyon, HT)',
            subtitle: 'Hipotermi nöroprotektif olabilir',
          ),
          NeurosurgeryAnesthesiaItem(
            title: 'AVM Bulguları',
            description: 'En sık bulgu: baş ağrısı, nöbet',
            subtitle: 'Büyük kanama riski → geniş IV yol',
            additionalInfo: 'Kalan beyin dokusu hiperemik, şiş',
          ),
        ],
      ),
      NeurosurgeryAnesthesiaCategory(
        categoryName: 'Vertebra Cerrahisi',
        items: [
          NeurosurgeryAnesthesiaItem(
            title: 'Pron Pozisyon',
            description: 'Anesteziyi zorlaştırır',
          ),
          NeurosurgeryAnesthesiaItem(
            title: 'Transtorasik Yaklaşım',
            description: 'Tek akciğer ventilasyonu gerekebilir',
          ),
          NeurosurgeryAnesthesiaItem(
            title: 'Pozisyon Komplikasyonları',
            description: 'Göz basısı, POVL (iskemik optik nöropati, glokom, kortikal emboli)',
          ),
          NeurosurgeryAnesthesiaItem(
            title: 'POVL Risk Faktörleri',
            description: 'Uzun cerrahi, büyük kan kaybı, HT, DM, obezite, sigara',
          ),
          NeurosurgeryAnesthesiaItem(
            title: 'Monitörizasyon',
            description: 'Pozisyon verilmeden önce tam olmalı',
          ),
          NeurosurgeryAnesthesiaItem(
            title: 'Uyarılmış Potansiyeller',
            description: 'İntraop: uyarılmış potansiyeller (motor, somatosensoriyel) kullanılabilir',
          ),
        ],
      ),
      NeurosurgeryAnesthesiaCategory(
        categoryName: 'Hızlı Hatırlatma – Kritik Sayılar',
        items: [
          NeurosurgeryAnesthesiaItem(
            title: 'KİB Değerleri',
            description: 'Normal KİB: < 10 mmHg',
            subtitle: 'Patolojik KİB: > 15 mmHg',
            additionalInfo: 'Kritik KİB: > 30 mmHg',
          ),
          NeurosurgeryAnesthesiaItem(
            title: 'PaCO₂ Hedefi',
            description: 'PaCO₂: 30–35 mmHg (düşürmek → KİB ↓ ama iskemi riski)',
          ),
          NeurosurgeryAnesthesiaItem(
            title: 'Mannitol Dozu',
            description: 'Mannitol: 0.25–0.5 g/kg IV',
          ),
          NeurosurgeryAnesthesiaItem(
            title: 'TCD Vazospazm',
            description: 'TCD vazospazm: >200 cm/sn',
          ),
          NeurosurgeryAnesthesiaItem(
            title: 'SPB Hedefi',
            description: 'SPB hedef (travma): 70–110 mmHg',
          ),
          NeurosurgeryAnesthesiaItem(
            title: 'SAB Kritik Değer',
            description: 'SAB kötü prognoz: <80 mmHg',
          ),
          NeurosurgeryAnesthesiaItem(
            title: 'GKS Kritik Değer',
            description: 'GKS <8 → entübasyon, mortalite %35',
          ),
        ],
      ),
    ];
  }
}
