import 'package:flutter/material.dart';

class NeuromuscularDiseaseAnesthesiaItem {
  final String title;
  final String description;
  final String? subtitle;
  final String? additionalInfo;

  NeuromuscularDiseaseAnesthesiaItem({
    required this.title,
    required this.description,
    this.subtitle,
    this.additionalInfo,
  });
}

class NeuromuscularDiseaseAnesthesiaCategory {
  final String categoryName;
  final List<NeuromuscularDiseaseAnesthesiaItem> items;

  NeuromuscularDiseaseAnesthesiaCategory({
    required this.categoryName,
    required this.items,
  });
}

class NeuromuscularDiseaseAnesthesiaData {
  static List<NeuromuscularDiseaseAnesthesiaCategory> getNeuromuscularDiseaseAnesthesiaData(BuildContext context) {
    return [
      NeuromuscularDiseaseAnesthesiaCategory(
        categoryName: 'Myastenia Gravis (MG)',
        items: [
          NeuromuscularDiseaseAnesthesiaItem(
            title: 'Genel Bilgiler',
            description: 'İnsidans: 5–200/1.000.000',
            subtitle: 'Yaş/Kadın-Erkek: Kadın 3. dekad, Erkek 3–6. dekad',
            additionalInfo: 'Patofizyoloji: Nikotinik AChR\'ye karşı IgG antikor',
          ),
          NeuromuscularDiseaseAnesthesiaItem(
            title: 'MG Tipleri',
            description: 'Genel MG: %85–90',
            subtitle: 'Oküler MG: %50–70',
          ),
          NeuromuscularDiseaseAnesthesiaItem(
            title: 'Timik Hastalık',
            description: 'Timoma %10–15, timik hiperplazi %70',
          ),
          NeuromuscularDiseaseAnesthesiaItem(
            title: 'Belirti',
            description: 'Tutulan kas grubuna göre değişir',
          ),
          NeuromuscularDiseaseAnesthesiaItem(
            title: 'Pridostigmin',
            description: 'Oral: 2–4 sa etki',
            subtitle: 'Aşırı → kolinerjik kriz',
          ),
          NeuromuscularDiseaseAnesthesiaItem(
            title: 'Edrofonyum Testi',
            description: 'Kas güçsüzlüğü artarsa → kolinerjik kriz',
          ),
          NeuromuscularDiseaseAnesthesiaItem(
            title: 'Preoperatif Hazırlık',
            description: 'Preop optimum durumda olmalı',
            subtitle: 'Solunum/orofaringeal kas zayıf → IV Ig veya plazmaferez',
          ),
          NeuromuscularDiseaseAnesthesiaItem(
            title: 'Kolinesteraz İnhibitörleri',
            description: 'Oral dozun 1/30\'u IV verilebilir',
          ),
          NeuromuscularDiseaseAnesthesiaItem(
            title: 'Ester LA ve Sch',
            description: 'Yarı ömrünü uzatır',
          ),
          NeuromuscularDiseaseAnesthesiaItem(
            title: 'Barbitürat/Opioid',
            description: 'Orta dozda kas güçsüzlüğü',
          ),
          NeuromuscularDiseaseAnesthesiaItem(
            title: 'Volatil Anestezik',
            description: 'Ağırlıklı genel anestezi tercih edilir',
          ),
          NeuromuscularDiseaseAnesthesiaItem(
            title: 'Postop Ventilasyon Kriterleri',
            description: 'MG >6 yıl',
            subtitle: 'AC hastalığı eşlik',
            additionalInfo: 'Tepe inspiratuvar basınç <25 cmH₂O',
          ),
          NeuromuscularDiseaseAnesthesiaItem(
            title: 'Diğer Ventilasyon Kriterleri',
            description: 'Vital kapasite <4 mL/kg',
            subtitle: 'Pridostigmin >750 mg/gün',
          ),
          NeuromuscularDiseaseAnesthesiaItem(
            title: 'Gebelik',
            description: 'Son trimester/postpartum → klinik ağırlaşma',
            subtitle: 'Epidural → tercih edilebilir',
            additionalInfo: 'Anne MG\'si → bebekte 1–3 hafta geçici MG',
          ),
        ],
      ),
      NeuromuscularDiseaseAnesthesiaCategory(
        categoryName: 'Paraneoplastik Nöromüsküler Sendromlar',
        items: [
          NeuromuscularDiseaseAnesthesiaItem(
            title: 'Lambert-Eaton (LEMS)',
            description: 'Proksimal kas güçsüzlüğü, genellikle alt ekstremite',
            subtitle: 'Küçük Hücreli Akciğer Ca ile ilişkili',
            additionalInfo: 'Antikor → voltaj kapılı Ca kanalları',
          ),
          NeuromuscularDiseaseAnesthesiaItem(
            title: 'LEMS Özellikleri',
            description: 'Efor ile güç düzelir',
            subtitle: '3–4 diaminopiridin etkili',
            additionalInfo: 'Antikolinesteraz etkisi sınırlı',
          ),
          NeuromuscularDiseaseAnesthesiaItem(
            title: 'Limbik Ensefalit',
            description: 'Halüsinasyon, nöbet, otonomik disfonksiyon, demans, asimetrik duyu kaybı',
            subtitle: '%60 paraneoplastik',
            additionalInfo: 'Küçük hücreli akciğer Ca ilişkili',
          ),
          NeuromuscularDiseaseAnesthesiaItem(
            title: 'Nöromiyotoni',
            description: '"Bag of worm" kas hareketi, kas krampları, hiperhidroz, hipertrofi',
            subtitle: 'Tedavi: plazmaferez, Ig, antikonvülzanlar',
          ),
          NeuromuscularDiseaseAnesthesiaItem(
            title: 'Stiff Person',
            description: 'Aksiller + proksimal kas rijiditesi, paraspinal rijidite → spinal deformite, düşmeler',
          ),
          NeuromuscularDiseaseAnesthesiaItem(
            title: 'Polimiyosit',
            description: 'Üst ekstremite kas güçsüzlüğü, kolay yorulma',
            subtitle: 'Aspirasyon/pnömoni riski ↑',
          ),
          NeuromuscularDiseaseAnesthesiaItem(
            title: 'Anestezi Yaklaşımı',
            description: 'Tüm bu grup → NMB\'ye ↑ duyarlılık',
            subtitle: 'Volatil anestezik → entübasyon kolaylaştırır',
            additionalInfo: 'BD, opioid, sedatif → dikkat',
          ),
        ],
      ),
      NeuromuscularDiseaseAnesthesiaCategory(
        categoryName: 'Müsküler Distrofiler',
        items: [
          NeuromuscularDiseaseAnesthesiaItem(
            title: 'Duchene',
            description: 'X\'e bağlı resesif, 1–3/10.000, 3–5 yaş',
            subtitle: 'Simetrik proksimal kas güçsüzlüğü, psödohipertrofi',
            additionalInfo: '12 yaş → tekerlekli sandalye',
          ),
          NeuromuscularDiseaseAnesthesiaItem(
            title: 'Duchene Laboratuvar',
            description: 'CK ↑ 10–100×',
          ),
          NeuromuscularDiseaseAnesthesiaItem(
            title: 'Duchene Pulmoner',
            description: 'Öksürme refleks kaybı, sekresyon, pnömoni',
          ),
          NeuromuscularDiseaseAnesthesiaItem(
            title: 'Duchene Kardiyak',
            description: 'HKMP, AF',
          ),
          NeuromuscularDiseaseAnesthesiaItem(
            title: 'Becker',
            description: 'Duchene benzer ama daha geç başlar',
            subtitle: 'Solunumsal komplikasyon → ölüm',
          ),
          NeuromuscularDiseaseAnesthesiaItem(
            title: 'Miyotonik Distrofi',
            description: 'Otozomal dominant',
            subtitle: 'Kontraksiyon sonrası gevşeme yavaş',
            additionalInfo: 'Multiendokrin, GİS ↓, kardiyak tutulum',
          ),
          NeuromuscularDiseaseAnesthesiaItem(
            title: 'Miyotonik Distrofi Laboratuvar',
            description: 'Plazma CK normal/hafif ↑',
          ),
          NeuromuscularDiseaseAnesthesiaItem(
            title: 'Fasioskapulohumeral',
            description: 'OD geçiş, kadınlarda asemptomatik, 2–3. dekad',
            subtitle: 'Yüz + omuz kasları',
            additionalInfo: 'CK normal',
          ),
          NeuromuscularDiseaseAnesthesiaItem(
            title: 'Limb-Girdle',
            description: 'Otozomal resesif, çocukluk çağı',
            subtitle: 'CK normal',
            additionalInfo: 'Hipoventilasyon + tekrarlayan pnömoni sık',
          ),
          NeuromuscularDiseaseAnesthesiaItem(
            title: 'Duchene/Becker Anestezi',
            description: 'MH riski, hiperkalemi, NMB\'ye ↑ duyarlılık, kardiyak/pulmoner komplikasyon',
          ),
          NeuromuscularDiseaseAnesthesiaItem(
            title: 'Miyotonik Anestezi',
            description: 'Post-op titreme/miyotoni, premedikasyondan kaçın',
            subtitle: 'Non-depolarizan NMB genellikle normal, revers ajanlar kasılmayı ↑',
          ),
          NeuromuscularDiseaseAnesthesiaItem(
            title: 'Fasioskapulohumeral + Limb-girdle',
            description: 'Anesteziye yanıt genellikle normal',
          ),
        ],
      ),
      NeuromuscularDiseaseAnesthesiaCategory(
        categoryName: 'Myotoniler',
        items: [
          NeuromuscularDiseaseAnesthesiaItem(
            title: 'Konjenita/Paramiyotoni',
            description: 'OD + OR tip',
            subtitle: 'Kas güçsüzlüğü minimal',
            additionalInfo: 'Serum potasyumu ↑ olabilir',
          ),
          NeuromuscularDiseaseAnesthesiaItem(
            title: 'NMB Yanıtı',
            description: 'Sch → anormal yanıt, non-depolarizan → spazm',
            subtitle: 'Cerrahi sırasında myotoni alevlenebilir',
          ),
        ],
      ),
      NeuromuscularDiseaseAnesthesiaCategory(
        categoryName: 'Periyodik Paraliziler',
        items: [
          NeuromuscularDiseaseAnesthesiaItem(
            title: 'Genel Özellikler',
            description: 'Kas güçsüzlüğü/paralizi atakları',
            subtitle: 'Hipotermi → atak ↑',
            additionalInfo: 'Potasyum değişken, genellikle normal',
          ),
          NeuromuscularDiseaseAnesthesiaItem(
            title: 'Anestezi Hedefi',
            description: 'Atak önlenmesi hedef',
          ),
          NeuromuscularDiseaseAnesthesiaItem(
            title: 'Monitörizasyon',
            description: 'Plazma K⁺ ve EKG sık monitörizasyon',
            subtitle: 'Nöromusküler monitörizasyon',
          ),
          NeuromuscularDiseaseAnesthesiaItem(
            title: 'Sıvı Yönetimi',
            description: 'Hipokalemik → glukoz içeren sıvı tehlikeli',
          ),
          NeuromuscularDiseaseAnesthesiaItem(
            title: 'NMB Duyarlılığı',
            description: 'Hipokalemik → NMB\'ye ↑ duyarlılık',
            subtitle: 'Sch → kontrendike',
          ),
          NeuromuscularDiseaseAnesthesiaItem(
            title: 'Isı Kontrolü',
            description: 'Isı korunmalı, hipotermiden kaçın',
          ),
        ],
      ),
      NeuromuscularDiseaseAnesthesiaCategory(
        categoryName: 'Kritik Noktalar / Hızlı Hatırlatma',
        items: [
          NeuromuscularDiseaseAnesthesiaItem(
            title: 'MG Kritik Noktalar',
            description: 'Edrofonyum testi, post-op ventilasyon kriterleri',
            subtitle: 'Tepe inspiratuvar <25, VC <4 mL/kg, Pridostigmin >750 mg/gün',
          ),
          NeuromuscularDiseaseAnesthesiaItem(
            title: 'LEMS',
            description: 'Eforla güç düzelir, antikolinesteraz etkisi sınırlı',
          ),
          NeuromuscularDiseaseAnesthesiaItem(
            title: 'Duchene',
            description: 'CK 10–100×, 12 yaş tekerlekli sandalye',
          ),
          NeuromuscularDiseaseAnesthesiaItem(
            title: 'Miyotonik',
            description: 'Premedikasyon dikkat, NMB/revers ajan → kasılmayı ↑',
          ),
          NeuromuscularDiseaseAnesthesiaItem(
            title: 'Periyodik Paralizi',
            description: 'Sch kontrendike, hipokalemi monitorize',
          ),
        ],
      ),
    ];
  }
}
