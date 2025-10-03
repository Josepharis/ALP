import 'package:flutter/material.dart';

class IntensiveCareProblemsItem {
  final String title;
  final String description;
  final String? subtitle;
  final String? additionalInfo;

  IntensiveCareProblemsItem({
    required this.title,
    required this.description,
    this.subtitle,
    this.additionalInfo,
  });
}

class IntensiveCareProblemsCategory {
  final String categoryName;
  final List<IntensiveCareProblemsItem> items;

  IntensiveCareProblemsCategory({
    required this.categoryName,
    required this.items,
  });
}

class IntensiveCareProblemsData {
  static List<IntensiveCareProblemsCategory> getIntensiveCareProblemsData(BuildContext context) {
    return [
      IntensiveCareProblemsCategory(
        categoryName: 'Genel İlkeler',
        items: [
          IntensiveCareProblemsItem(
            title: 'Yoğun Bakım Hastaları',
            description: 'Multisistem disfonksiyonu riski taşır',
          ),
          IntensiveCareProblemsItem(
            title: 'Anestezistin Rolü',
            description: 'Mekanik ventilasyon, dolaşım desteği, sıvı-elektrolit dengesi, beslenme, enfeksiyon ve komplikasyonların yönetimi',
          ),
          IntensiveCareProblemsItem(
            title: 'Gereksinimler',
            description: 'Sürekli monitörizasyon ve multidisipliner yaklaşım şarttır',
          ),
        ],
      ),
      IntensiveCareProblemsCategory(
        categoryName: 'Solunum Sistemi Sorunları',
        items: [
          IntensiveCareProblemsItem(
            title: 'Hipoksemi',
            description: 'En sık sorun → atelektazi, ARDS, pnömoni, pulmoner emboli',
            subtitle: 'Tanı: SpO₂ düşüklüğü, PaO₂ <60 mmHg',
            additionalInfo: 'Tedavi: FiO₂ artırma, PEEP, rekruitment manevraları',
          ),
          IntensiveCareProblemsItem(
            title: 'Hiperkapni',
            description: 'Hipoventilasyon, obstrüksiyon, sedatif/opioid etkisi',
          ),
          IntensiveCareProblemsItem(
            title: 'ARDS',
            description: 'Akut başlangıç, bilateral infiltrat, PaO₂/FiO₂ ≤300, kardiyak neden dışlanmalı',
            subtitle: 'Yönetim: düşük tidal volüm (6 mL/kg), plato basıncı <30 cmH₂O',
            additionalInfo: 'Uygun PEEP, prone pozisyon gerekirse',
          ),
        ],
      ),
      IntensiveCareProblemsCategory(
        categoryName: 'Kardiyovasküler Sorunlar',
        items: [
          IntensiveCareProblemsItem(
            title: 'Hipotansiyon',
            description: 'Hipovolemi, sepsis, kardiyojenik şok, ilaç etkisi',
            subtitle: 'Tedavi: sıvı replasmanı, vazopressör (norepinefrin ilk tercih)',
          ),
          IntensiveCareProblemsItem(
            title: 'Hipertansiyon',
            description: 'Ağrı, anksiyete, intrakraniyal basınç artışı',
          ),
          IntensiveCareProblemsItem(
            title: 'Aritmiler',
            description: 'Elektrolit bozukluğu, hipoksi, katekolamin tedavisi',
            subtitle: 'Tedavi: nedenin düzeltilmesi, antiaritmik, kardiyoversiyon',
          ),
        ],
      ),
      IntensiveCareProblemsCategory(
        categoryName: 'Nörolojik Sorunlar',
        items: [
          IntensiveCareProblemsItem(
            title: 'Deliryum ve Ajitasyon',
            description: 'Hipoksi, sepsis, ilaç yoksunluğu, elektrolit bozukluğu',
          ),
          IntensiveCareProblemsItem(
            title: 'Koma/Uyanmama',
            description: 'Rezidüel anestezik, metabolik ensefalopati, inme, hipoglisemi',
          ),
          IntensiveCareProblemsItem(
            title: 'İzlem',
            description: 'GKS, pupil refleksi, EEG, görüntüleme',
          ),
        ],
      ),
      IntensiveCareProblemsCategory(
        categoryName: 'Renal Sorunlar',
        items: [
          IntensiveCareProblemsItem(
            title: 'Akut Böbrek Hasarı (AKI)',
            description: 'Hipoperfüzyon, sepsis, nefrotoksik ilaçlar',
            subtitle: 'Oligüri <0.5 mL/kg/sa',
            additionalInfo: 'Tedavi: sıvı dengesi, nefrotoksinlerden kaçınma, gerekirse renal replasman (CRRT, hemodiyaliz)',
          ),
          IntensiveCareProblemsItem(
            title: 'Elektrolit Bozuklukları',
            description: 'Hiperkalemi (en acil), hiponatremi, hipokalsemi → aritmi riski',
          ),
        ],
      ),
      IntensiveCareProblemsCategory(
        categoryName: 'Gastrointestinal ve Beslenme',
        items: [
          IntensiveCareProblemsItem(
            title: 'Stres Ülseri',
            description: 'Profilaksi: proton pompa inhibitörü veya H₂ bloker',
          ),
          IntensiveCareProblemsItem(
            title: 'İleus',
            description: 'Opioid, elektrolit dengesizliği, sepsis',
          ),
          IntensiveCareProblemsItem(
            title: 'Enteral Beslenme',
            description: 'Tercih edilir (bağırsak bütünlüğünü korur)',
          ),
          IntensiveCareProblemsItem(
            title: 'TPN (Total Parenteral Beslenme)',
            description: 'Sepsis, hiperglisemi riski',
          ),
        ],
      ),
      IntensiveCareProblemsCategory(
        categoryName: 'Enfeksiyon ve Sepsis',
        items: [
          IntensiveCareProblemsItem(
            title: 'En Sık Mortalite Nedeni',
            description: 'Sepsis ve septik şok',
          ),
          IntensiveCareProblemsItem(
            title: 'Sepsis Tanısı',
            description: 'Ateş/hipotermi, lökositoz/lökopeni, taşikardi, hipotansiyon, organ disfonksiyonu',
          ),
          IntensiveCareProblemsItem(
            title: 'Sepsis Tedavisi',
            description: 'Erken geniş spektrum antibiyotik, sıvı resüsitasyonu, norepinefrin, kaynak kontrolü',
          ),
          IntensiveCareProblemsItem(
            title: 'Enfeksiyon Risk Faktörleri',
            description: 'Kateter, entübasyon, cerrahi yara enfeksiyonu',
          ),
        ],
      ),
      IntensiveCareProblemsCategory(
        categoryName: 'Hematolojik Sorunlar',
        items: [
          IntensiveCareProblemsItem(
            title: 'Trombositopeni',
            description: 'Sepsis, ilaç, DIC, heparin ilişkili trombositopeni (HIT)',
          ),
          IntensiveCareProblemsItem(
            title: 'DIC',
            description: 'Sepsis, travma, obstetrik komplikasyon → koagülasyon faktörleri + trombosit tüketimi',
            subtitle: 'Tedavi: altta yatan neden, destek (FFP, trombosit süspansiyonu)',
          ),
        ],
      ),
      IntensiveCareProblemsCategory(
        categoryName: 'Metabolik ve Endokrin Sorunlar',
        items: [
          IntensiveCareProblemsItem(
            title: 'Hiperglisemi',
            description: 'Stres yanıtı, TPN, steroid → mortaliteyi artırır',
            subtitle: 'Tedavi: insülin infüzyonu, hedef 140–180 mg/dL',
          ),
          IntensiveCareProblemsItem(
            title: 'Hipoglisemi',
            description: 'İnsülin tedavisi, sepsis',
          ),
          IntensiveCareProblemsItem(
            title: 'Tiroid Kriz, Adrenal Yetmezlik',
            description: 'Kritik hastada görülebilir → stres dozu steroid gerekebilir',
          ),
        ],
      ),
      IntensiveCareProblemsCategory(
        categoryName: 'Nöromüsküler Sorunlar',
        items: [
          IntensiveCareProblemsItem(
            title: 'Uzamış Nöromüsküler Blok',
            description: 'Rezidüel ilaç, hipermagnezemi, asidoz',
          ),
          IntensiveCareProblemsItem(
            title: 'Kritik Hastalık Nöropatisi/Myopatisi',
            description: 'Uzun yoğun bakım yatışı, steroid, sepsis',
            subtitle: 'Klinik: kas güçsüzlüğü, weaning zorluğu',
          ),
        ],
      ),
      IntensiveCareProblemsCategory(
        categoryName: 'Yoğun Bakımda Özel Durumlar',
        items: [
          IntensiveCareProblemsItem(
            title: 'Sepsis',
            description: 'Erken antibiyotik, 30 mL/kg kristalloid, vazopressör',
          ),
          IntensiveCareProblemsItem(
            title: 'Akut Koroner Sendrom',
            description: 'Aspirin, heparin, β-bloker, gerekirse PCI',
          ),
          IntensiveCareProblemsItem(
            title: 'PE (Pulmoner Emboli)',
            description: 'Antikoagülasyon, tromboliz',
          ),
          IntensiveCareProblemsItem(
            title: 'Status Epileptikus',
            description: 'Benzodiazepin, propofol, antiepileptik',
          ),
        ],
      ),
      IntensiveCareProblemsCategory(
        categoryName: 'Spot Notlar',
        items: [
          IntensiveCareProblemsItem(
            title: 'En Sık Ölüm Nedeni',
            description: 'Yoğun bakımda en sık ölüm nedeni: sepsis/çoklu organ yetmezliği',
          ),
          IntensiveCareProblemsItem(
            title: 'ARDS Hedefleri',
            description: 'ARDS\'de hedef: düşük tidal volüm (6 mL/kg), plato basıncı <30 cmH₂O',
          ),
          IntensiveCareProblemsItem(
            title: 'Septik Şokta İlk Tercih',
            description: 'Septik şokta ilk tercih vazopressör: norepinefrin',
          ),
          IntensiveCareProblemsItem(
            title: 'AKI\'de Diyaliz',
            description: 'AKI\'de sıvı tedavisine yanıtsız oligoüri varsa: diyaliz',
          ),
          IntensiveCareProblemsItem(
            title: 'Uzamış Entübasyon',
            description: 'Uzamış entübasyon → en sık komplikasyon: pnömoni',
          ),
        ],
      ),
    ];
  }
}
