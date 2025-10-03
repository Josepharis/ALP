import 'package:flutter/material.dart';

class CardiovascularSurgeryAnesthesiaItem {
  final String title;
  final String description;
  final String? subtitle;
  final String? additionalInfo;

  CardiovascularSurgeryAnesthesiaItem({
    required this.title,
    required this.description,
    this.subtitle,
    this.additionalInfo,
  });
}

class CardiovascularSurgeryAnesthesiaCategory {
  final String categoryName;
  final List<CardiovascularSurgeryAnesthesiaItem> items;

  CardiovascularSurgeryAnesthesiaCategory({
    required this.categoryName,
    required this.items,
  });
}

class CardiovascularSurgeryAnesthesiaData {
  static List<CardiovascularSurgeryAnesthesiaCategory> getCardiovascularSurgeryAnesthesiaData(BuildContext context) {
    return [
      CardiovascularSurgeryAnesthesiaCategory(
        categoryName: 'Kardiyopulmoner Bypass (KPB)',
        items: [
          CardiovascularSurgeryAnesthesiaItem(
            title: 'Temel Devre',
            description: 'Rezervuar: Venöz kanı toplar; roller pompada hava riski vardır, santrifugal pompada yeterli kan gerek.',
            subtitle: 'Oksijenatör: Silikon membran; CO₂ giderimi hava hacmine bağlı.',
            additionalInfo: 'Isı Değiştirici: Kondüksiyonla ısıt/soğut; baloncuk filtresi.',
          ),
          CardiovascularSurgeryAnesthesiaItem(
            title: 'Pompa Tipleri',
            description: 'Roller: Basınç bağımsız, eritrosit hasarı düşük.',
            subtitle: 'Santrifugal: Basınca duyarlı, travmatizm az.',
            additionalInfo: 'Pulsatil: Doku perfüzyonu artırabilir.',
          ),
          CardiovascularSurgeryAnesthesiaItem(
            title: 'Arteriyel Filtre',
            description: '27-40 µm, emboli önler.',
          ),
          CardiovascularSurgeryAnesthesiaItem(
            title: 'Aksesuar',
            description: 'Kardiyotomi aspiratörü, sol ventrikül boşaltma, kardiyopleji pompası, ultrafiltrasyon.',
          ),
          CardiovascularSurgeryAnesthesiaItem(
            title: 'Sistemik Hipotermi',
            description: '20-32°C arasında, metabolik O₂ gereksinimi 10°C\'de yarıya düşer.',
            subtitle: 'Total dolaşım arresti: 15-18°C\'de 0 dk kadar.',
          ),
          CardiovascularSurgeryAnesthesiaItem(
            title: 'Miyokard Korunması',
            description: 'Kardiyopleji: K⁺ zengin solüsyon, 30 dk\'da tekrarlanan doz.',
            subtitle: 'Enerji tüketimini azaltır, havadan arındırma kritik.',
            additionalInfo: 'Potasyum: 10-40 mEq/L; Ca, Mg, bikarbonat, mannitol ve membran stabilizatörleri eklenir.',
          ),
          CardiovascularSurgeryAnesthesiaItem(
            title: 'Kardiyopleji Yöntemi',
            description: 'Retrograd > antegrad; hiperkalsemiden kaçın.',
          ),
          CardiovascularSurgeryAnesthesiaItem(
            title: 'Fizyolojik Etkiler',
            description: 'Stres hormonu ↑, sistemik inflamasyon → ödem, ARDS, koagülopati, AKİ.',
            subtitle: 'Farmakokinetik değişir: hidrofilik ajan plazmada azalır; heparin serbest Ca ve ilaç bağlanmasını etkiler.',
          ),
        ],
      ),
      CardiovascularSurgeryAnesthesiaCategory(
        categoryName: 'Kardiyak Cerrahide Anestezi',
        items: [
          CardiovascularSurgeryAnesthesiaItem(
            title: 'Preoperatif Değerlendirme',
            description: 'Kardiyak ve sistemik durum değerlendirmesi; pulmoner/renal/nörolojik fonksiyon.',
          ),
          CardiovascularSurgeryAnesthesiaItem(
            title: 'Monitörizasyon',
            description: 'EKG II, V5; invaziv arteriyel basınç; CVP/PA basınç; TEE; idrar; ısı; EEG; transkranial doppler.',
          ),
          CardiovascularSurgeryAnesthesiaItem(
            title: 'Anestezi İndüksiyonu',
            description: 'Kontrollü, sakin; sıvı bolusuna dikkat; hipotansiyon fenilefrin/vazopressin/efedrin ile.',
          ),
          CardiovascularSurgeryAnesthesiaItem(
            title: 'Yüksek Doz Opioid',
            description: 'Miyokard depresyon ↓, post-op solunum depresyon ↑',
          ),
          CardiovascularSurgeryAnesthesiaItem(
            title: 'TIVA',
            description: 'Fast-track, propofol + opioid (1.5-2 µg/mL hedef)',
          ),
          CardiovascularSurgeryAnesthesiaItem(
            title: 'Mikst IV/İnhalasyon',
            description: 'Early ekstübasyon, N₂O yok',
          ),
          CardiovascularSurgeryAnesthesiaItem(
            title: 'Kas Gevşeticiler',
            description: 'Roküronyum, veküronyum, sisatraküryum',
          ),
          CardiovascularSurgeryAnesthesiaItem(
            title: 'Bypass Öncesi',
            description: 'Heparin 300-400 ünite/kg (ACT 400-480 s); ATIII eksikliği heparin direnci yaratır → TDP veya rekombinant ATIII.',
            subtitle: 'Kanama profilaksisi: ε-aminokaproik asit, traneksamik asit.',
          ),
          CardiovascularSurgeryAnesthesiaItem(
            title: 'Bypass Dönemi',
            description: 'Akım: 2-2.5 L/dk/m², MAP 50-80 mmHg',
            subtitle: 'Hipotermi: Orta 26-32°C, derin 20-25°C',
            additionalInfo: 'Solunum: 1-2 L/dk veya PEEP 5 cmH₂O',
          ),
          CardiovascularSurgeryAnesthesiaItem(
            title: 'Serebral Koruma',
            description: 'TEE, epiaortik EKO, steroid, mannitol, baş soğutma, NMDA antagonisti, tiyopental/propofol',
          ),
          CardiovascularSurgeryAnesthesiaItem(
            title: 'Weaning',
            description: 'Pompa akımı kademeli ↓, systolik basınç >80-90 mmHg → pompadan ayrılır',
            subtitle: 'İntraaortik balon pompası gerekebilir',
          ),
          CardiovascularSurgeryAnesthesiaItem(
            title: 'Postoperatif',
            description: 'Hct 25-30; elektrolit ve ritim kontrolü',
            subtitle: 'Protamin: Heparin reversal 1-1.3 mg/100 ünite',
            additionalInfo: 'Kanama >10 mL/kg/sa → reexplorasyon',
          ),
          CardiovascularSurgeryAnesthesiaItem(
            title: 'Off-Pump CABG',
            description: 'Cerrahi sahaya emme ile stabilizasyon; distal anastomozda vazopressör, proksimalde vazodilatör gerekebilir',
          ),
        ],
      ),
      CardiovascularSurgeryAnesthesiaCategory(
        categoryName: 'Pediatrik Kardiyak Cerrahi',
        items: [
          CardiovascularSurgeryAnesthesiaItem(
            title: 'Preoperatif Hazırlık',
            description: 'Pulmoner enfeksiyon ve KKY tedavi edilmeli; duktus bağımlı hastalarda PGE1',
          ),
          CardiovascularSurgeryAnesthesiaItem(
            title: 'İndüksiyon Yöntemleri',
            description: 'IV: Hipnotik + opioid',
            subtitle: 'IM: Ketamin 4-10 mg/kg + atropin',
            additionalInfo: 'İnhalasyon: Sevofluran, N₂O %50 ≤',
          ),
          CardiovascularSurgeryAnesthesiaItem(
            title: 'Monitörizasyon',
            description: 'Arteriyel, CVP; PA kateter nadiren',
          ),
          CardiovascularSurgeryAnesthesiaItem(
            title: 'KPB Özellikleri',
            description: 'Hemodilüsyonu önlemek için kan ile hazırlanır (1/3), pH-stat yaklaşımı dolaşım arresti gereken çocuklarda daha iyi',
          ),
        ],
      ),
      CardiovascularSurgeryAnesthesiaCategory(
        categoryName: 'Kalp Nakli',
        items: [
          CardiovascularSurgeryAnesthesiaItem(
            title: 'Preoperatif Kriterler',
            description: 'EF <20%, ileri organ hasarı yok, PVR <6-8 Wood',
          ),
          CardiovascularSurgeryAnesthesiaItem(
            title: 'Anestezi Hazırlığı',
            description: 'Tok hasta, H2 bloker/metpamid, preop siklosporin',
          ),
          CardiovascularSurgeryAnesthesiaItem(
            title: 'KPB Sonrası',
            description: 'Hiperventilasyon riski, sağ kalp yetersizliği',
          ),
        ],
      ),
      CardiovascularSurgeryAnesthesiaCategory(
        categoryName: 'Perikard Hastalıkları',
        items: [
          CardiovascularSurgeryAnesthesiaItem(
            title: 'Tamponad',
            description: 'Akut: 100-200 mL sıvı → hipotansiyon, taşikardi, takipne',
            subtitle: 'CVP: y inişi kaybolur, x inişi belirgin',
            additionalInfo: 'Anestezi: Düşük doz ketamin ideal, epinefrin 5-10 mcg',
          ),
          CardiovascularSurgeryAnesthesiaItem(
            title: 'Konstriktif Perikardit',
            description: 'CVP: y inişi görünür, Kussmaul belirti (+)',
            subtitle: 'Perikardiyektomi: KPB hazır, temel amaç kardiyak depresyon, bradikardi ve hipotansiyon önleme',
          ),
        ],
      ),
      CardiovascularSurgeryAnesthesiaCategory(
        categoryName: 'Damar Cerrahisi',
        items: [
          CardiovascularSurgeryAnesthesiaItem(
            title: 'Aort Cerrahisi',
            description: 'Diseksiyon: Proksimal cerrahi; distal medikal',
            subtitle: 'Anevrizma: >5 cm cerrahi endikasyon',
            additionalInfo: 'Koarktasyon: Preduktal (<1 yaş), postduktal (erişkin)',
          ),
          CardiovascularSurgeryAnesthesiaItem(
            title: 'Aort Cerrahisi Anestezi',
            description: 'KPB, TEE, e-aminokaproik asit, derin hipotermi/dolaşım arresti',
            subtitle: 'İnen torasik aort: KPB yoksa distal hipotansiyon, proksimal hipertansiyon',
            additionalInfo: 'Postop: Kanama kontrolü, hemodinamik stabilite',
          ),
          CardiovascularSurgeryAnesthesiaItem(
            title: 'Karotid Cerrahisi',
            description: '%70 stenoz veya %30-70 + TIA/inme endikasyon',
            subtitle: 'Amaç: Serebral ve koroner perfüzyon korunması',
            additionalInfo: 'Yüksek risk: >75 yaş, semptomatik, kontrolsüz HT, tromboz, karotid sifon lezyonu',
          ),
        ],
      ),
    ];
  }
}
