import 'package:flutter/material.dart';

class CardiovascularDiseaseAnesthesiaItem {
  final String title;
  final String description;
  final String? subtitle;
  final String? additionalInfo;

  CardiovascularDiseaseAnesthesiaItem({
    required this.title,
    required this.description,
    this.subtitle,
    this.additionalInfo,
  });
}

class CardiovascularDiseaseAnesthesiaCategory {
  final String categoryName;
  final List<CardiovascularDiseaseAnesthesiaItem> items;

  CardiovascularDiseaseAnesthesiaCategory({
    required this.categoryName,
    required this.items,
  });
}

class CardiovascularDiseaseAnesthesiaData {
  static List<CardiovascularDiseaseAnesthesiaCategory>
      getCardiovascularDiseaseAnesthesiaData(BuildContext context) {
    return [
      CardiovascularDiseaseAnesthesiaCategory(
        categoryName: 'Hipertansiyon (HT)',
        items: [
          CardiovascularDiseaseAnesthesiaItem(
            title: "RİSK DEĞERLENDİRMESİ VE KRİTİK EŞİKLER",
            description: "Kan basıncının 180/110 mmHg üzerinde olması operasyon sırasında ciddi kardiyovasküler olay riskini artırır.",
            subtitle: "Malign HT: >210/120 mmHg ile beraber papil ödemi ve ensefalopati tablosu görülür",
            additionalInfo: "Kontrolsüz hipertansiyon intraoperatif dönemde miyokard iskemisi, aritmi ve şiddetli kan basıncı dalgalanmalarına (labile tansiyon) zemin hazırlar.",
          ),
          CardiovascularDiseaseAnesthesiaItem(
            title: "PATOFİZYOLOJİ VE ORGAN HASARI",
            description: "Hipertansiyon vakalarının %85-95'i esansiyeldir ve uzun vadede sol ventrikül hipertrofisine (LVH) yol açar.",
            additionalInfo: "Vasküler hipertrofi, hiperinsülinemi, hücre içi kalsiyum ve sodyum artışı patofizyolojik süreçte rol oynar. Bu hastalar anestezi indüksiyonuna çok daha şiddetli hipotansif yanıt verebilirler.",
          ),
          CardiovascularDiseaseAnesthesiaItem(
            title: "PREOPERATİF HAZRLIK VE İLAÇ YÖNETİMİ",
            description: "Ameliyat öncesi dönemde antihipertansif ilaçların yönetimi, intraoperatif stabilite için hayati önem taşır.",
            subtitle: "ACE inhibitörleri ve ARB'ler indüksiyon sonrası şiddetli hipotansiyon riski nedeniyle sabah kesilmelidir",
            additionalInfo: "Diğer kronik antihipertansifler (beta blokerler, kalsiyum kanal blokerleri vb.) ameliyat sabahı bir yudum su ile alınmaya devam edilmelidir.",
          ),
          CardiovascularDiseaseAnesthesiaItem(
            title: "İNTRAOPERATİF HEDEF KAN BASINCI",
            description: "Genel hedef, kan basıncını preoperatif bazal değerlerin ±%20 aralığında tutmaktır.",
            additionalInfo: "Bazal basıncı >180/120 mmHg olan çok riskli hastalarda, intraoperatif dönemde kademeli olarak 140-150 / 80-90 mmHg seviyelerine inilmesi hedeflenir.",
          ),
          CardiovascularDiseaseAnesthesiaItem(
            title: "İNDÜKSİYON PRENSİPLERİ VE UYGULAMA",
            description: "Hipertansif hastalarda anestezi indüksiyonu sırasında sempatik yanıtın (laringoskopi) çok iyi baskılanması gerekir.",
            additionalInfo: "Opioidler, lidokain veya kısa etkili beta blokerler (esmolol) laringoskopi öncesi kullanılarak ani tansiyon yükselmeleri önlenebilir.",
          ),
          CardiovascularDiseaseAnesthesiaItem(
            title: "POSTOPERATİF KOMPLİKASYONLAR",
            description: "Kötü kontrollü hipertansiyon, cerrahi sonrası miyokard enfarktüsü ve sütür hattı kanamaları gibi ciddi sonuçlara yol açabilir.",
            additionalInfo: "Ayrıca postoperatif dönemde akut kalp yetmezliği (KKY), hematom oluşumu ve buna bağlı sütür açılmaları risk altındaki hastalarda sık görülür.",
          ),
        ],
      ),
      CardiovascularDiseaseAnesthesiaCategory(
        categoryName: 'İskemik Kalp Hastalığı (İKH)',
        items: [
          CardiovascularDiseaseAnesthesiaItem(
            title: "RİSK FAKTÖRLERİ VE ETİYOLOJİ",
            description: "Miyokard perfüzyonunu bozan aterosklerotik süreçler; diyabet, sigara, hipertansiyon ve genetik faktörlerle hızlanır.",
            additionalInfo: "Yaş ve erkek cinsiyet değiştirilemeyen risk faktörleridir. Perioperatif dönemde bu hastalar her zaman riskli kabul edilmelidir.",
          ),
          CardiovascularDiseaseAnesthesiaItem(
            title: "STABİL ANJİNA VE SEMPTOM EŞİĞİ",
            description: "Genellikle fiziksel egzersizle tetiklenen, damar lümeninde %50-75 oranında tıkanıklık olduğunda semptom veren tabloyu ifade eder.",
            additionalInfo: "Stabil anjinası olan hastaların egzersiz toleransı, anestezistin risk analizinde en önemli kriterlerden biridir.",
          ),
          CardiovascularDiseaseAnesthesiaItem(
            title: "ANSTABİL ANJİNA VE PRE-MI DURUMU",
            description: "Günde 3'ten fazla atak, istirahatte gelen ağrı veya yeni gelişen şiddetli anjina pre-enfarktüs (preMI) durumudur.",
            additionalInfo: "Damar lümenindeki darlık %80'in üzerindedir. Bu vakalar acil cerrahi dışındaki durumlarda mutlaka stabilize edilmelidir.",
          ),
          CardiovascularDiseaseAnesthesiaItem(
            title: "TEDAVİ VE FARMAKOLOJİK KONTROL",
            description: "Medikal tedavide kalp hızını 50-60/dk bandında tutan beta blokerler, nitratlar ve aspirin temel taşlarıdır.",
            additionalInfo: "ACE inhibitörleri, statinler ve kalsiyum kanal blokerleri (KKB) de miyokardın iş yükünü ve oksijen ihtiyacını azaltmak için kullanılır.",
          ),
          CardiovascularDiseaseAnesthesiaItem(
            title: "PREOPERATİF KLİNİK HAZIRLIK",
            description: "Beta bloker ve statin tedavisi ameliyat günü asla kesilmemelidir; hastanın göğüs ağrısı ve dispne durumu sorgulanmalıdır.",
            additionalInfo: "Düşük egzersiz toleransı (örneğin 2 kat merdiven çıkamama) yüksek perioperatif riskin en önemli klinik işaretidir.",
          ),
          CardiovascularDiseaseAnesthesiaItem(
            title: "MONİTÖRİZASYON VE TANI KRİTERLERİ",
            description: "EKG'de ST segment değişiklikleri ve kanda troponin düzeyleri iskemiyi saptamada en duyarlı parametrelerdir.",
            additionalInfo: "QTc uzunluğu, aritmi riski ve akciğer grafisinde konjesyon bulguları preoperatif dönemde mutlaka değerlendirilmelidir.",
          ),
          CardiovascularDiseaseAnesthesiaItem(
            title: "İNTRAOPERATİF MİYOKARD KORUMA HEDEFLERİ",
            description: "Temel ilke miyokard oksijen sunumunu artırmak (Diyastolik KB > 50 mmHg) ve oksijen tüketimini azaltmaktır.",
            additionalInfo: "Taşikardiden (oksijen ihtiyacı artar) ve aşırı hipotansiyondan (koroner dolum basıncı düşer) kaçınılarak arz/talep dengesi optimize edilmelidir.",
          ),
        ],
      ),
      CardiovascularDiseaseAnesthesiaCategory(
        categoryName: 'Kapak Hastalıkları',
        items: [
          CardiovascularDiseaseAnesthesiaItem(
            title: "MİTRAL DARLIK (MD) VE SEMPTOM YÖNETİMİ",
            description: "Kapak orifis alanı 1.5 cm²'nin altına düştüğünde egzersizle gelen nefes darlığı başlar.",
            subtitle: "İntraoperatif dönemde sinüs ritmi korunmalı, taşikardi ve hipotansiyondan kesinlikle kaçınılmalıdır",
            additionalInfo: "Şiddetli darlığı olan semptomatik vakalarda cerrahi veya balon valvüloplasti anesteziden önce düşünülmelidir.",
          ),
          CardiovascularDiseaseAnesthesiaItem(
            title: "MİTRAL YETMEZLİK (MY) VE ARDYÜK AZALTIMI",
            description: "Miyokardın üzerine binen yükü azaltmak için ardyük (SVR) düşürücü stratejiler tercih edilir.",
            subtitle: "İntraoperatif hedef: Kalp hızı 80-100/dk arasında, hafif taşikardik ve vazodilate bir tablo",
            additionalInfo: "Rejürjütan akım %60'ın üzerine çıktığında yetmezlik ciddidir; sıvı yönetimi ve anestezi derinliği takibi kritik önemdedir.",
          ),
          CardiovascularDiseaseAnesthesiaItem(
            title: "AORT DARLIĞI (AYD) VE KLİNİK TRİAD",
            description: "Kritik kapak alanı <0.7 cm² olduğunda dispne, anjina ve senkop (bayılma) üçlüsü (triad) görülür.",
            subtitle: "İntraoperatif dönemde kalp hızı 60-90/dk arasında tutulmalı ve atriyal sistolün (atrial kick) korunması hayati önemdedir",
            additionalInfo: "Hipotansiyon gelişirse koroner perfüzyonu korumak için doğrudan etkili vazokonstrüktörler (fenilefrin) tercih edilmelidir.",
          ),
          CardiovascularDiseaseAnesthesiaItem(
            title: "AORT YETMEZLİĞİ (AYY) VE VENTRİKÜLER HİPERTROFİ",
            description: "Kronik vakalarda sol ventrikülde ciddi dilatasyon ve ekzantrik hipertrofi gelişir.",
            subtitle: "Anestezi sırasında kalp hızı 80-100/dk tutularak bradikardiden ve yüksek ardyükten kaçınılmalıdır",
            additionalInfo: "Akut aort yetmezliğinde ise LV henüz genişleyemediği için hızla pulmoner konjesyon ve ödem gelişebilir.",
          ),
        ],
      ),
      CardiovascularDiseaseAnesthesiaCategory(
        categoryName: 'Konjenital Kalp Hastalıkları (KKH)',
        items: [
          CardiovascularDiseaseAnesthesiaItem(
            title: "GENEL BİLGİLER VE PREVALANS",
            description: "Doğuştan gelen kalp kusurları, tüm canlı doğumlarda %1'den daha az bir oranda görülür.",
            additionalInfo: "Bu hastalar non-kardiyak cerrahiye geldiklerinde, sahip oldukları şantın yönü ve hemodinamik etkileri mutlaka analiz edilmelidir.",
          ),
          CardiovascularDiseaseAnesthesiaItem(
            title: "SİYANOTİK HASTALAR VE HİPERVİSKOZİTE",
            description: "Kronik hipoksiye bağlı gelişen polisitemi (Hct >%65), kanın akışkanlığını bozarak tromboz riskini artırır.",
            additionalInfo: "Hiperviskozite semptomları görülen siyanotik hastalarda sıvı yönetimi ve pıhtılaşma kontrolü kritiktir.",
          ),
          CardiovascularDiseaseAnesthesiaItem(
            title: "SOL-SAĞ ŞANT VE QP/QS ORANI",
            description: "Akciğer kan akımının (Qp), sistemik kan akımına (Qs) oranının 1'den büyük olması sol-sağ şantı ifade eder.",
            additionalInfo: "Bu durum akciğerlerde aşırı kanlanma ve pulmoner hipertansiyon riski yaratır.",
          ),
          CardiovascularDiseaseAnesthesiaItem(
            title: "SAĞ-SOL ŞANT VE VASKÜLER DİRENÇ",
            description: "Şantın büyüklüğü, sistemik vasküler direnç (SVR) ile pulmoner vasküler direnç (PVR) arasındaki dengeye bağlıdır.",
            additionalInfo: "Eğer SVR düşerse sağ-sol şant artar ve hastanın oksijen satürasyonu hızla düşer.",
          ),
          CardiovascularDiseaseAnesthesiaItem(
            title: "FALLOT TETRALOJİSİ VE HİPERSİYANOTİK NÖBET",
            description: "En sık görülen siyanotik konjenital hastalıktır; anestezi sırasında SVR'yi korumak için Ketamin tercih edilir.",
            subtitle: "Hipersiyanotik nöbet (tet spell) durumunda fenilefrin (5 mcg/kg) kullanılarak SVR artırılmalıdır",
            additionalInfo: "Nöbette ayrıca diz-göğüs pozisyonu, oksijen ve derinleştirilen anestezi uygulanır.",
          ),
        ],
      ),
      CardiovascularDiseaseAnesthesiaCategory(
        categoryName: 'Kalp Nakli Yapılmış Hastalar',
        items: [
          CardiovascularDiseaseAnesthesiaItem(
            title: "TRANSPLANTE KALP ÖZELLİKLERİ VE DENERVASYON",
            description: "Nakledilen kalp artık sinirsel kontrole sahip değildir; istirahat kalp hızı 100-120/dk arasında sabittir.",
            subtitle: "Vagus uyarısına veya atropine yanıt vermez ancak dolaşımdaki katekolaminlere yanıtı normal/artmıştır",
            additionalInfo: "Kalp debisi temelde Frank-Starling mekanizmasına (gelen kan miktarına) bağlı olarak değişir.",
          ),
          CardiovascularDiseaseAnesthesiaItem(
            title: "İNTRAOPERATİF DİKKAT VE İLAÇ YANITI",
            description: "İndirekt etkili sempatomimetikler etkisiz kalabilir; önyük her zaman normal veya hafif yüksek tutulmalıdır.",
            additionalInfo: "Hastalar sterillerin korunmasına dikkat edilerek ve immünsupresif ilaçları aksatılmadan yönetilmelidir.",
          ),
        ],
      ),
      CardiovascularDiseaseAnesthesiaCategory(
        categoryName: 'Aritmiler ve ICD/Pacemaker',
        items: [
          CardiovascularDiseaseAnesthesiaItem(
            title: "SUPRAVENTRİKÜLER TAKİKARDİ (SVT) YÖNETİMİ",
            description: "Hemodinamik instabilite yaratan SVT vakalarında acilen senkronize kardiyoversiyon uygulanmalıdır.",
            additionalInfo: "Stabil vakalarda vagal manevralar veya adenozin gibi medikal tedaviler önceliklidir.",
          ),
          CardiovascularDiseaseAnesthesiaItem(
            title: "WOLFF-PARKINSON-WHITE (WPW) SENDROMU",
            description: "Aksesuar yol kullanan bu aritmilerde prokainamid veya amiodaron tercih edilen ajanlardır.",
            additionalInfo: "Digoksin ve non-dihidropiridin kalsiyum kanal blokerleri, aksesuar yolu hızlandırabileceği için kesinlikle kontrendikedir.",
          ),
          CardiovascularDiseaseAnesthesiaItem(
            title: "ATRİYAL FİBRİLASYON (AF) VE ANTİKOAGÜLASYON",
            description: "AF 48 saatten uzun sürüyorsa operasyon öncesi ve sonrası toplam 7 hafta antikoagülasyon gereklidir.",
            additionalInfo: "Hız kontrolü için beta blokerler veya amiodaron kullanılır.",
          ),
          CardiovascularDiseaseAnesthesiaItem(
            title: "VENTRİKÜLER TAKİKARDİ (VT) VE MÜDAHALE",
            description: "Stabil iskemik vakalarda beta bloker, diğerlerinde amiodaron veya prokainamid kullanılır.",
            subtitle: "Hemodinamik bozulma varsa acil kardiyoversiyon uygulanır",
            additionalInfo: "Sürekli VT, arrest (nabızsız VT) tablosuna evrilebileceği için çok yakın takip gerektirir.",
          ),
          CardiovascularDiseaseAnesthesiaItem(
            title: "TORSADES DE POINTES (TdP) VE MAGNEZYUM",
            description: "QT uzamasına bağlı gelişen bu tehlikeli ritim bozukluğunda ilk tercih Magnezyum sülfattır.",
            additionalInfo: "Gerekli durumlarda kalp hızını artırmak için izoproterenol veya geçici pacing uygulanabilir.",
          ),
        ],
      ),
      CardiovascularDiseaseAnesthesiaCategory(
        categoryName: 'Endokardit Profilaksisi',
        items: [
          CardiovascularDiseaseAnesthesiaItem(
            title: "PROFİLAKSİ ENDİKASYONLARI VE KRİTİK VAKALAR",
            description: "Prostetik kalp kapağı, endokardit öyküsü veya onarılmamış siyanotik KKH olanlarda profilaksi şarttır.",
            additionalInfo: "Ameliyat sonrası ilk 6 ay içindeki yama/materyal onarımları ve transplante kalpte gelişen kapak hastalıkları da profilaksi gerektirir.",
          ),
        ],
      ),
    ];
  }
}
