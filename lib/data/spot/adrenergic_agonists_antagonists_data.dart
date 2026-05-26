import 'package:flutter/material.dart';

class AdrenergicAgonistsAntagonistsItem {
  final String title;
  final String description;
  final String? subtitle;
  final String? additionalInfo;

  AdrenergicAgonistsAntagonistsItem({
    required this.title,
    required this.description,
    this.subtitle,
    this.additionalInfo,
  });
}

class AdrenergicAgonistsAntagonistsCategory {
  final String categoryName;
  final List<AdrenergicAgonistsAntagonistsItem> items;

  AdrenergicAgonistsAntagonistsCategory({
    required this.categoryName,
    required this.items,
  });
}

class AdrenergicAgonistsAntagonistsData {
  static List<AdrenergicAgonistsAntagonistsCategory>
  getAdrenergicAgonistsAntagonistsData(BuildContext context) {
    return [
      AdrenergicAgonistsAntagonistsCategory(
        categoryName: 'Adrenoseptörler - Fizyoloji',
        items: [
          AdrenergicAgonistsAntagonistsItem(
            title: "SEMPATİK SİSTEM VE NORADRENALİN (NT)",
            description: "Sempatik sinir sisteminin temel nörotransmitteri noradrenalindir; ter bezleri ve bazı damarlar dışında tüm postganglionik uçlardan salınır.",
            subtitle: "NT yıkımı: MAO, COMT, geri alım (re-uptake) ve difüzyon yolları ile gerçekleşir",
            additionalInfo: "Noradrenalin salınımı presinaptik uçlardan veziküller aracılığıyla yapılır. Etkisinin %80'i sinaptik aralıktan geri alınarak (re-uptake) sonlandırılır. Geri kalan kısım karaciğerde ve periferde MAO (Monoamin Oksidaz) ve COMT (Katekol-O-Metil Transferaz) enzimleri tarafından metabolize edilir.",
          ),
          AdrenergicAgonistsAntagonistsItem(
            title: "ADRENOSEPTÖR ALT TİPLERİ (α1 VE α2)",
            description: "Alfa reseptörler, vasküler direnci ve nörotransmitter salınımını kontrol eden G-proteini bağlı reseptörlerdir.",
            subtitle: "α1 (Gq): Düz kas kasılması; α2 (Gi): Negatif feedback ve sedasyon",
            additionalInfo: "• α1: Postsinaptik yerleşimlidir. Damar düz kaslarını kasarak periferik vasküler direnci (PVR) ve sistemik arter kan basıncını (SAB) artırır.\n• α2: Hem presinaptik hem postsinaptik yerleşebilir. Presinaptik α2 uyarımı noradrenalin salınımını baskılar (negatif feedback). Santral uyarımı ise sedasyon, analjezi ve kan basıncında düşüş sağlar.",
          ),
          AdrenergicAgonistsAntagonistsItem(
            title: "BETA RESEPTÖRLER (β1-β2-β3) VE DOPAMİN (D1-D2)",
            description: "Beta ve dopamin reseptörleri, kalp fonksiyonlarından bronkodilatasyona kadar geniş bir otonomik yelpazeyi yönetir.",
            additionalInfo: "• β1 (Gs): Kalpte yoğunlaşmıştır; kalp hızını (kronotropi), kasılma gücünü (inotropi) ve ileti hızını (dromotropi) artırır.\n• β2 (Gs): Damarları ve bronşları genişletir (VD/BD), rahim düz kasını gevşetir. Potasyumu hücre içine sokarak geçici hipokalemiye neden olabilir.\n• β3: Yağ dokusunda lipoliz sağlar.\n• D1: Böbrek, bağırsak ve kalpte damar genişlemesi yapar.\n• D2: Droperidol gibi ilaçların antiemetik etkisinden sorumludur.",
          ),
        ],
      ),
      AdrenergicAgonistsAntagonistsCategory(
        categoryName: 'Adrenerjik Agonistler (Sempatomimetikler)',
        items: [
          AdrenergicAgonistsAntagonistsItem(
            title: "FENİLEFRİN (SELEKTİF α1 AGONİST)",
            description: "Saf alfa-1 uyarımı yaparak kalp hızını artırmadan belirgin vazokonstrüksiyon ve kan basıncı artışı sağlayan sentetik bir katekolamindir.",
            subtitle: "Hızlı taşifilaksi (etki azalması) görülebilir",
            additionalInfo: "Refleks bradikardiye (vagotoni) yol açabilir, bu nedenle bazen taşikardi ile seyreden hipotansiyon durumlarında tercih edilir. Gastrointestinal ve renal kan akımını azaltabilir.",
          ),
          AdrenergicAgonistsAntagonistsItem(
            title: "SELEKTİF α2 AGONİSTLER (KLONİDİN VE DEKSMEDETOMİDİN)",
            description: "Merkezi sinir sistemindeki reseptörleri üzerinden sedasyon, anksiyoliz ve analjezi sağlarken sempatik deşarjı baskılarlar.",
            subtitle: "Ani kesilmelerinde ciddi 'rebound' hipertansiyon krizi görülebilir",
            additionalInfo: "Deksmedetomidin, klonidine göre çok daha selektif bir α2 agonisttir. Solunum depresyonu yapmadan sedasyon sağlama özelliği sayesinde yoğun bakım ve uyanık entübasyon vakalarında eşsizdir. Yan etki olarak bradikardi ve hipotansiyon yapabilirler.",
          ),
          AdrenergicAgonistsAntagonistsItem(
            title: "EPİNEFRİN (ADRENALİN - ANAMİNAL ETKİLER)",
            description: "Düşük dozlarda beta, yüksek dozlarda alfa etkileri baskın olan, anafilaksi ve kardiyak arrestin temel ilacıdır.",
            subtitle: "β1 → Kalp hızı ↑; β2 → Bronkodilatasyon; α1 → Vazokonstrüksiyon",
            additionalInfo: "Sistemik kan basıncını yükseltir, miyokardın kasılma gücünü artırır ancak oksijen tüketimini de belirgin şekilde yükseltir. Anafilaktik şokta bronkospazmı çözme ve ödemi azaltma özelliği nedeniyle hayat kurtarıcıdır.",
          ),
          AdrenergicAgonistsAntagonistsItem(
            title: "EFEDRİN (DİREKT VE İNDİREKT ETKİLİ AGONİST)",
            description: "Hem reseptörleri doğrudan uyarır hem de noradrenalin salınımını artırarak etki gösteren, uzun etkili bir sempatomimetiktir.",
            subtitle: "Uterus kan akımını azaltmadığı için obstetrik hipotansiyonda ilk tercihtir",
            additionalInfo: "Genellikle rejyonal anestezi sonrası gelişen hipotansiyonun tedavisinde kullanılır. Taşikardi yapıcı etkisi fenilefrinden daha fazladır. Tekrarlayan dozlarda noradrenalin depolarını tükettiği için taşifilaksi gelişir.",
          ),
          AdrenergicAgonistsAntagonistsItem(
            title: "NOREPİNEFRİN (GÜÇLÜ VAZOKONSTRİKTÖR)",
            description: "Güçlü alfa-1 etkisiyle vasküler direnci artıran, dirençli şok durumlarında kullanılan temel vazopressördür.",
            subtitle: "Ekstravazasyon (damar dışına sızma) durumunda doku nekrozuna yol açabilir",
            additionalInfo: "Belirgin β1 uyarısıyla kontraktiliteyi artırırken, güçlü α1 etkisiyle hem sistolik hem de diyastolik kan basıncını yükseltir. Böbrek ve mezenterik kan akımını azaltma potansiyeli taşır.",
          ),
          AdrenergicAgonistsAntagonistsItem(
            title: "DOPAMİN (DOZ BAĞIMLI RESEPTÖR SELEKTİVİTESİ)",
            description: "Uygulanan doza göre farklı reseptör gruplarını uyararak idrar çıkışından kan basıncı artışına kadar farklı etkiler oluşturur.",
            subtitle: "Düşük doz (0.5-3 mcg/kg/dk): D1; Orta doz (3-10): β1; Yüksek doz (10-20): α1",
            additionalInfo: "• D1 Etkisi: Renal ve mezenterik kan akımını artırarak diürezi destekler.\n• β1 Etkisi: Kalp debisini (CO) ve kasılma gücünü artırır.\n• α1 Etkisi: Sistemik vasküler direnci (PVR) artırarak kan basıncını yükseltir ancak renal perfüzyonu bozabilir.",
          ),
          AdrenergicAgonistsAntagonistsItem(
            title: "İZOPROTERENOL VE DOBUTAMİN (BETA SELEKTİF ETKİLER)",
            description: "Kalp debisini ve hızını artırmak amacıyla kullanılan güçlü beta-reseptör agonistleridir.",
            additionalInfo: "• İzoproterenol: Saf beta agonisttir; güçlü taşikardi ve vazodilatasyon yapar, diyastolik basıncı düşürür. Miyokard oksijen tüketimini çok artırır.\n• Dobutamin: β1 ve β2 uyarımı yapar; düşük kalp debisine sahip KKY veya KAH hastalarında kalp debisini desteklemek için idealdir.",
          ),
          AdrenergicAgonistsAntagonistsItem(
            title: "MODERN AJANLAR: FENOLDOPAM VE DOPEKSAMİN",
            description: "Spesifik vasküler yatakları hedef alarak organ perfüzyonunu korumayı amaçlayan yeni nesil sempatomimetiklerdir.",
            additionalInfo: "• Fenoldopam: Selektif D1 agonistidir; böbrek kan akımını artırır ve kan basıncını düşürür. Kontrast nefropatisinin önlenmesinde kullanılabilir.\n• Dopeksamin: β2 ve D1 uyarımı yapar; dopaminin renal koruyucu etkisini taşımasına rağmen daha az yan etki profiline sahiptir.",
          ),
        ],
      ),
      AdrenergicAgonistsAntagonistsCategory(
        categoryName: 'Adrenerjik Antagonistler (Blokerler)',
        items: [
          AdrenergicAgonistsAntagonistsItem(
            title: "ALFA BLOKERLER (FENTOLAMİN - α1 VE α2)",
            description: "Alfa reseptörlerini bloke ederek damarlarda gevşeme sağlayan, özellikle feokromositoma krizlerinde kullanılan ajanlardır.",
            subtitle: "Vazodilatasyon sonucu belirgin hipotansiyon ve refleks taşikardi yaparlar",
            additionalInfo: "α1 blokajı ile damar direncini düşürürken, α2 blokajı noradrenalin üzerindeki negatif feedback'i kaldırarak daha fazla NT salınımına ve taşikardiye yol açar. Bu yüzden genellikle kalp hızı kontrolü de gerektirir.",
          ),
          AdrenergicAgonistsAntagonistsItem(
            title: "KARMA ANTAGONİSTLER (LABETALOL - α VE β BLOKAJI)",
            description: "Hem alfa hem de beta reseptörlerini aynı anda bloke ederek dengeli bir kan basıncı kontrolü sağlarlar.",
            subtitle: "Vasküler direnci düşürürken refleks taşikardi gelişimini engellemesi en büyük avantajıdır",
            additionalInfo: "Labetalol, klinik pratikte hipertansif krizlerin yönetiminde (özellikle gebelik ve cerrahi indüksiyon sırasında) güvenle kullanılır. β bloker özelliği sayesinde taşikardiyi baskılar, α bloker özelliği ile basıncı düşürür.",
          ),
          AdrenergicAgonistsAntagonistsItem(
            title: "BETA BLOKERLER (ESMOLOL, METOPROLOL, PROPRANOLOL)",
            description: "Miyokardın oksijen tüketimini azaltan, kalp hızını ve kontraktiliteyi kontrol eden kritik anestezik yardımcılarıdır.",
            subtitle: "Esmolol, plazma esterazlarıyla yıkıldığı için 9 dakikalık ultra kısa yarı ömre sahiptir",
            additionalInfo: "• Esmolol: EKT veya entübasyon gibi ani sempatik deşarj durumlarında idealdir.\n• Metoprolol: Selektif β1 blokerdir, karaciğerde yıkılır.\n• Propranolol: Non-selektif olup, SVT ve iskemide etkilidir; astım/bronkospazmı olanlarda bronş daralması (β2 blokajı) yapabileceği için kontrendikedir.",
          ),
          AdrenergicAgonistsAntagonistsItem(
            title: "ÖZEL BETA BLOKERLER (NEBİVOLOL VE KARVEDİLOL)",
            description: "Kalp yetmezliği ve vasküler koruma için geliştirilmiş, ek mekanizmaları olan modern blokerlerdir.",
            additionalInfo: "• Nebivolol: Selektif β1 blokajının yanı sıra nitrik oksit (NO) sentezini artırarak damar koruyucu etki gösterir.\n• Karvedilol: Alfa-1 ve Beta-1/2 blokajı yapan güçlü bir ajandır; MI sonrası kalp yetmezliği ve disfonksiyon tedavisinde mortaliteyi azaltır.",
          ),
        ],
      ),
    ];
  }
}
