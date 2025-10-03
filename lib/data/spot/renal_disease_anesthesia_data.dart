import 'package:flutter/material.dart';

class RenalDiseaseAnesthesiaItem {
  final String title;
  final String description;
  final String? subtitle;
  final String? additionalInfo;

  RenalDiseaseAnesthesiaItem({
    required this.title,
    required this.description,
    this.subtitle,
    this.additionalInfo,
  });
}

class RenalDiseaseAnesthesiaCategory {
  final String categoryName;
  final List<RenalDiseaseAnesthesiaItem> items;

  RenalDiseaseAnesthesiaCategory({
    required this.categoryName,
    required this.items,
  });
}

class RenalDiseaseAnesthesiaData {
  static List<RenalDiseaseAnesthesiaCategory> getRenalDiseaseAnesthesiaData(BuildContext context) {
    return [
      RenalDiseaseAnesthesiaCategory(
        categoryName: 'Böbrek Fonksiyonunun İncelenmesi',
        items: [
          RenalDiseaseAnesthesiaItem(
            title: 'BUN (Kan Üre Azotu)',
            description: 'Protein katabolizması → amonyak → KC\'de üre',
            subtitle: 'BUN ∝ protein katabolizması, ∝ 1/GFR',
            additionalInfo: 'Ultrafiltratın %40–50\'si geri emilir → GFR için güvenilir değil',
          ),
          RenalDiseaseAnesthesiaItem(
            title: 'BUN Normal Değerler',
            description: 'Normal: 10–20 mg/dL',
            subtitle: '50 mg/dL → böbrek bozukluğu',
            additionalInfo: 'Hipovolemi → reabsorbsiyon ↑',
          ),
          RenalDiseaseAnesthesiaItem(
            title: 'Serum Kreatinin',
            description: 'Kas yıkım ürünü (sabit kas kitlesi → güvenilir GFR göstergesi)',
            subtitle: 'Erkek: 0.8–1.3 mg/dL, Kadın: 0.6–1 mg/dL',
            additionalInfo: '20 yaştan sonra her 10 yılda GFR %5 azalır',
          ),
          RenalDiseaseAnesthesiaItem(
            title: 'Kreatinin Etkileyen Faktörler',
            description: 'Simetidin → kreatinin sekresyonunu ↓',
          ),
          RenalDiseaseAnesthesiaItem(
            title: 'Kreatinin Klerensi',
            description: 'Hafif bozukluk: 40–60 mL/dk',
            subtitle: 'Orta: 25–40 mL/dk',
            additionalInfo: 'Ağır: <25 mL/dk',
          ),
          RenalDiseaseAnesthesiaItem(
            title: 'BUN/Kreatinin Oranı',
            description: 'Normal: 10–15/1',
            subtitle: '15/1 → hipovolemi, KY, siroz, nefrotik sendrom',
          ),
          RenalDiseaseAnesthesiaItem(
            title: 'İdrar Analizi',
            description: 'Sistemik asidoz + idrar pH >7 → renal tübüler asidoz',
            subtitle: 'Özgül ağırlık: 1.010 ≈ 290 mOsm/kg',
            additionalInfo: '1.018 → yeterli konsantrasyon',
          ),
          RenalDiseaseAnesthesiaItem(
            title: 'İdrar Anormallikleri',
            description: 'Glukozüri: glukoz >180 mg/dL',
            subtitle: 'Proteinüri: >150 mg/gün',
          ),
        ],
      ),
      RenalDiseaseAnesthesiaCategory(
        categoryName: 'İntravenöz Ajanlar',
        items: [
          RenalDiseaseAnesthesiaItem(
            title: 'Propofol, Etomidat',
            description: 'FK değişmez, etomidat serbest ilaç düzeyi ↑ (hipoalbuminemi)',
          ),
          RenalDiseaseAnesthesiaItem(
            title: 'Barbitüratlar',
            description: 'FK etkilenmez, asidozda noniyonize fraksiyon ↑ → hızlı etki',
          ),
          RenalDiseaseAnesthesiaItem(
            title: 'Ketamin',
            description: 'FK değişmez, metabolit birikimi olabilir',
          ),
          RenalDiseaseAnesthesiaItem(
            title: 'Benzodiazepinler',
            description: 'Serbest fraksiyon ↑ (hipoalbuminemi), aktif metabolit birikir',
            subtitle: 'Diazepam, midazolam dikkat',
          ),
          RenalDiseaseAnesthesiaItem(
            title: 'Opioidler',
            description: 'Çoğu karaciğerde metabolize olur',
            subtitle: 'Remifentanil güvenli',
            additionalInfo: 'Morfin, meperidin → aktif metabolit birikir (sakıncalı)',
          ),
          RenalDiseaseAnesthesiaItem(
            title: 'Antikolinerjikler',
            description: 'Atropin, glikoprolat tolere edilir; tekrar dozda birikim olabilir',
          ),
          RenalDiseaseAnesthesiaItem(
            title: 'Antiemetikler',
            description: 'H2 blokerlerde doz azalt, PPI güvenli',
            subtitle: 'Metoklopramid birikir, 5-HT3 antagonist güvenli',
          ),
        ],
      ),
      RenalDiseaseAnesthesiaCategory(
        categoryName: 'İnhalasyon Ajanları',
        items: [
          RenalDiseaseAnesthesiaItem(
            title: 'Volatil Ajanlar',
            description: 'İdeal, sevofluran düşük akımda compound A riski (klinik önemsiz)',
          ),
          RenalDiseaseAnesthesiaItem(
            title: 'N₂O',
            description: 'Hb <7 g/dL olanlarda kaçınılmalı',
          ),
        ],
      ),
      RenalDiseaseAnesthesiaCategory(
        categoryName: 'Kas Gevşeticiler',
        items: [
          RenalDiseaseAnesthesiaItem(
            title: 'Süksinilkolin',
            description: 'K⁺ <5 mEq/L ise güvenli',
          ),
          RenalDiseaseAnesthesiaItem(
            title: 'Sisatraküryum, Atraküryum',
            description: 'Plazmada metabolize, güvenli',
          ),
          RenalDiseaseAnesthesiaItem(
            title: 'Veküronyum',
            description: '%20 renal atılım, etki süresi hafif uzun',
          ),
          RenalDiseaseAnesthesiaItem(
            title: 'Roküronyum',
            description: 'KC eliminasyonu → güvenli sayılır',
          ),
          RenalDiseaseAnesthesiaItem(
            title: 'Kürar',
            description: '%40–60 renal atılım → uzamış etki',
          ),
          RenalDiseaseAnesthesiaItem(
            title: 'Panküronyum',
            description: '%60–90 renal atılım → uzamış etki',
          ),
          RenalDiseaseAnesthesiaItem(
            title: 'Revers Ajanlar',
            description: 'Neostigmin, edrofonyum, pridostigmin → renal atılım → etki süresi uzar',
          ),
        ],
      ),
      RenalDiseaseAnesthesiaCategory(
        categoryName: 'Böbrek Yetersizliğinde Klinik Bulgular',
        items: [
          RenalDiseaseAnesthesiaItem(
            title: 'Metabolik Bulgular',
            description: 'Metabolik asidoz, hiperkalemi, hiperfosfatemi, hipokalsemi',
            subtitle: 'Hipermagnezemi, hiperürisemi',
          ),
          RenalDiseaseAnesthesiaItem(
            title: 'Hematolojik Bulgular',
            description: 'Anemi (Hb 6–8 g/dL), trombosit disfonksiyonu',
          ),
          RenalDiseaseAnesthesiaItem(
            title: 'Kardiyovasküler Bulgular',
            description: 'HT, LVH, KY, aritmi',
          ),
          RenalDiseaseAnesthesiaItem(
            title: 'Pulmoner Bulgular',
            description: 'Asidoza yanıt olarak hiperventilasyon, sıvı yüklenmesi → ödem',
          ),
          RenalDiseaseAnesthesiaItem(
            title: 'Endokrin Bulgular',
            description: 'Tip 2 DM sık, sekonder hiperparatiroidi, hipertrigliseridemi',
          ),
          RenalDiseaseAnesthesiaItem(
            title: 'Nörolojik Bulgular',
            description: 'Konfüzyon–koma, periferik sensöryal nöropati',
          ),
        ],
      ),
      RenalDiseaseAnesthesiaCategory(
        categoryName: 'Böbrek Yetersizliğinde Anestezi Yaklaşımı',
        items: [
          RenalDiseaseAnesthesiaItem(
            title: 'Preop Hazırlık',
            description: 'Son diyaliz → mümkünse son 24 saatte',
            subtitle: 'K, asit-baz, hematoloji optimize edilmeli',
            additionalInfo: 'RA planlanacaksa koagülasyon mutlaka değerlendirilmeli',
          ),
          RenalDiseaseAnesthesiaItem(
            title: 'İntraop Monitörizasyon',
            description: 'Arteryel kateter (majör cerrahi), NIBP fistül olmayan kolda',
          ),
          RenalDiseaseAnesthesiaItem(
            title: 'İndüksiyon',
            description: 'Propofol/etomidat güvenli; Esmolol → HT kontrolü',
          ),
          RenalDiseaseAnesthesiaItem(
            title: 'İdame',
            description: 'Volatil ajanlar, propofol, opioidler (meperidin, morfin hariç)',
            subtitle: 'Kas gevşetici: Atrakurium/sisatrakurium tercih edilir',
          ),
          RenalDiseaseAnesthesiaItem(
            title: 'Sıvı Yönetimi',
            description: 'K⁺ ve glukoz içeren solüsyonlardan kaçın',
            subtitle: 'Kan kaybı → ES veya kolloid ile yerine koy',
            additionalInfo: 'Allojenik transfüzyon → böbrek nakli sonrası rejeksiyon riskini ↓',
          ),
        ],
      ),
      RenalDiseaseAnesthesiaCategory(
        categoryName: 'Hafif-Orta Böbrek Bozukluğunda Anestezi',
        items: [
          RenalDiseaseAnesthesiaItem(
            title: 'Hafif Böbrek Bozukluğu',
            description: 'GFR 40–60 → dokunun korunması',
          ),
          RenalDiseaseAnesthesiaItem(
            title: 'Orta Böbrek Bozukluğu',
            description: 'GFR 25–40 → azotemi + anemi + HT eşlik eder',
            subtitle: 'Hipovolemi → postoperatif ABY riski ↑',
          ),
          RenalDiseaseAnesthesiaItem(
            title: 'Monitörizasyon',
            description: 'Büyük cerrahide invaziv arter, idrar çıkışı ≥0.5 mL/kg/saat',
          ),
          RenalDiseaseAnesthesiaItem(
            title: 'İndüksiyon',
            description: 'Hipovolemiden kaçın → hipotansiyon renal perfüzyonu kötüleştirir',
          ),
          RenalDiseaseAnesthesiaItem(
            title: 'İdame',
            description: 'Düşük akım sevofluran dışında tüm ajanlar güvenli',
          ),
          RenalDiseaseAnesthesiaItem(
            title: 'Sıvı Tedavisi',
            description: 'Normovolemi veya hafif hipervolemi koruyucu',
          ),
        ],
      ),
    ];
  }
}
