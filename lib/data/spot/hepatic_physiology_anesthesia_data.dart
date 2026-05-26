import 'package:flutter/material.dart';

class HepaticPhysiologyAnesthesiaItem {
  final String title;
  final String description;
  final String? subtitle;
  final String? additionalInfo;

  HepaticPhysiologyAnesthesiaItem({
    required this.title,
    required this.description,
    this.subtitle,
    this.additionalInfo,
  });
}

class HepaticPhysiologyAnesthesiaCategory {
  final String categoryName;
  final List<HepaticPhysiologyAnesthesiaItem> items;

  HepaticPhysiologyAnesthesiaCategory({
    required this.categoryName,
    required this.items,
  });
}

class HepaticPhysiologyAnesthesiaData {
  static List<HepaticPhysiologyAnesthesiaCategory>
      getHepaticPhysiologyAnesthesiaData(BuildContext context) {
    return [
      HepaticPhysiologyAnesthesiaCategory(
        categoryName: 'Fonksiyonel Anatomi',
        items: [
          HepaticPhysiologyAnesthesiaItem(
            title: "KARACİĞER AĞIRLIĞI VE ÖNEMİ",
            description: "Karaciğer, yetişkin bir insanda ortalama 1500 gram olup vücudun en ağır solid organıdır.",
            additionalInfo: "Bu ağırlık, organın devasa metabolik kapasitesini ve kan sunumunu yansıtmaktadır.",
          ),
          HepaticPhysiologyAnesthesiaItem(
            title: "KARACİĞER LOBÜLER YAPISI",
            description: "Organ, fonksiyonel olarak 50.000 ile 100.000 arasında küçük lobüle bölünmüştür.",
            additionalInfo: "Her lobül, santral ven etrafına dizilmiş hepatosit kordonlarından oluşur.",
          ),
          HepaticPhysiologyAnesthesiaItem(
            title: "ASİNÜS ZONLARI VE OKSİJENASYON (ZON 1-3)",
            description: "Zon 1 portal sisteme en yakın olup en fazla oksijen alırken, Zon 3 santral ven çevresindedir ve en az oksijenlenen bölgedir.",
            subtitle: "Sentrilobüler alan olan Zon 3, hipoksiye ve iskemik hasara en duyarlı bölgedir",
            additionalInfo: "Hasarlar genellikle Zon 3'ten başlayarak merkeze doğru yayılır.",
          ),
          HepaticPhysiologyAnesthesiaItem(
            title: "KUPFFER HÜCRELERİ (MAKROFAJLAR)",
            description: "Sinüzoidleri döşeyen Kupfer hücreleri, tüm vücut makrofaj sisteminin en büyük parçasını oluşturur.",
            additionalInfo: "Portal kandan gelen bakteri, toksin ve partikülleri temizleyen ana savunma hattıdır.",
          ),
          HepaticPhysiologyAnesthesiaItem(
            title: "KARACİĞER İNNERVASYONU (T6-T11)",
            description: "Karaciğer; T6–T11 spinal segmentlerinden gelen sempatik, vagus (parasempatik) ve sağ frenik sinir tarafından innerve edilir.",
            additionalInfo: "Bu innervasyon damar tonusunu ve metabolik süreçleri düzenler.",
          ),
        ],
      ),
      HepaticPhysiologyAnesthesiaCategory(
        categoryName: 'Hepatik Kan Akımı',
        items: [
          HepaticPhysiologyAnesthesiaItem(
            title: "KARACİĞER KAN AKIMI VE KARDİYAK DEBİ (%25-30)",
            description: "Karaciğer, istirahat halindeki kardiyak debinin yaklaşık %25-30'unu (1500 mL/dk) alan yüksek akımlı bir organdır.",
            additionalInfo: "Bu yüksek akım hızı, hem metabolizma hem de filtrasyon fonksiyonları için temel gerekliliktir.",
          ),
          HepaticPhysiologyAnesthesiaItem(
            title: "OKİSİJEN İHTİYACI VE SUNUMU (ARTER-PORTAL)",
            description: "Karaciğerin toplam oksijen ihtiyacının yarısı hepatik arterden, diğer yarısı ise portal venden karşılanır.",
            subtitle: "Hepatik arter oksijenin %45–55'ini sağlarken, portal ven %50–55'ini sunar",
            additionalInfo: "Portal ven akımı fazla olsa da oksijen içeriği artere göre daha düşüktür.",
          ),
          HepaticPhysiologyAnesthesiaItem(
            title: "HEPATİK RESEPTÖRLER (ALFA, BETA, DOPAMİN)",
            description: "Hepatik arterde alfa-1 (vazokonstriksiyon), beta-2 ve D1 (vazodilatasyon) reseptörleri aktif olarak bulunur.",
            subtitle: "Portal vende ise sadece alfa-1 ve D1 reseptör uyarımı görülür",
            additionalInfo: "Reseptör dağılımı, sistemik stres anında organ akımının nasıl yönleneceğini belirler.",
          ),
          HepaticPhysiologyAnesthesiaItem(
            title: "SEMPATİK AKTİVASYON VE KLİNİK ETKİLER",
            description: "Şiddetli sempatik aktivasyon karaciğer kan akımını azaltırken; beta blokerler hem akımı hem de portal basıncı düşürür.",
            additionalInfo: "Cerrahi stres sırasında sempatik deşarj idrar çıkışını baskıladığı gibi hepatik perfüzyonu da azaltabilir.",
          ),
        ],
      ),
      HepaticPhysiologyAnesthesiaCategory(
        categoryName: 'Depo Fonksiyonu',
        items: [
          HepaticPhysiologyAnesthesiaItem(
            title: "PORTAL VEN BASINCI (7-10 MMHG)",
            description: "Normal portal ven basıncı 7 ile 10 mmHg arasında olup, düşük dirençli bir sistemdir.",
            additionalInfo: "Basıncın 10-12 mmHg'nin üzerine çıkması portal hipertansiyon (PHT) olarak tanımlanır.",
          ),
          HepaticPhysiologyAnesthesiaItem(
            title: "KARACİĞER KAN REZERVUARI VE CVP YÖNETİMİ",
            description: "Karaciğer, kan hacmindeki dalgalanmaları tolere edebilen dev bir kan rezervuarı görevini üstlenir.",
            subtitle: "Cerrahi sırasında santral venöz basınç (CVP) düşük tutulursa (CVP <5), karaciğer kaynaklı kanamalar belirgin şekilde azalır",
            additionalInfo: "Kanamanın kontrol edilmesi için kontrollü hipovolemi/hipotansiyon stratejileri kullanılabilir.",
          ),
        ],
      ),
      HepaticPhysiologyAnesthesiaCategory(
        categoryName: 'Metabolik Fonksiyonlar',
        items: [
          HepaticPhysiologyAnesthesiaItem(
            title: "GLİKOZ METABOLİZMASI VE GLİKOJEN DEPOLARI",
            description: "Vücudun günlük 150 gram glikoz tüketimini karşılamak için karaciğerde 70 gramlık glikojen deposu bulunur.",
            subtitle: "Beyin ana yakıt olarak glikoz kullanır ancak uzun açlıkta karaciğer kaynaklı keton cisimlerine adapte olur",
            additionalInfo: "Glikoz seviyesini dar bir bantta tutmak (öglisemi) temel görevdir.",
          ),
          HepaticPhysiologyAnesthesiaItem(
            title: "PROTEİN SENTEZİ VE PLAZMA PROTEİNLERİ",
            description: "İmmünglobulinler hariç (lenfatik / plazma hücreleri), neredeyse tüm plazma proteinleri hepatositlerde sentezlenir.",
            additionalInfo: "Albumin bu proteinlerin en büyük kısmını oluşturur.",
          ),
          HepaticPhysiologyAnesthesiaItem(
            title: "KOAGÜLASYON FAKTÖRLERİ SENTEZİ (VIII VE VWF HARİÇ)",
            description: "Faktör VIII ve vWF (Damar endoteli/trombosit) dışındaki tüm pıhtılaşma faktörleri karaciğerde üretilir.",
            additionalInfo: "İleri karaciğer hasarında faktör sentezi azaldığı için şiddetli kanama eğilimi izlenir.",
          ),
          HepaticPhysiologyAnesthesiaItem(
            title: "HORMON METABOLİZMASI VE T4-T3 DÖNÜŞÜMÜ",
            description: "Tiroit hormonu T4'ün aktif form olan T3'e dönüşümü ile insülin, glukagon, steroidler ve ADH yıkımı karaciğerde yapılır.",
            additionalInfo: "Yetmezlik durumunda östrojen birikimine bağlı jinekomasti gibi klinik tablolar gelişebilir.",
          ),
        ],
      ),
      HepaticPhysiologyAnesthesiaCategory(
        categoryName: 'İlaç Metabolizması',
        items: [
          HepaticPhysiologyAnesthesiaItem(
            title: "FAZ I METABOLİZMA (OKSİDASYON-P450)",
            description: "Oksidasyon, redüksiyon ve hidroliz reaksiyonları cytochrome P450 sistemi üzerinden gerçekleştirilir.",
            subtitle: "Barbitürat ve benzodiazepinler Faz I reaksiyonları ile inaktive edilir",
            additionalInfo: "İlaçların çoğu bu aşamada daha polar (suya karışabilir) hale getirilir.",
          ),
          HepaticPhysiologyAnesthesiaItem(
            title: "FAZ II METABOLİZMA (KONJUGASYON)",
            description: "İlaçların glukuronasyon, sülfasyon veya asetilasyonu ile tamamen suda çözünür ve atılabilir hale getirilme aşamasıdır.",
            additionalInfo: "Faz I'den geçen veya geçmeyen moleküller buraya girer.",
          ),
          HepaticPhysiologyAnesthesiaItem(
            title: "P450 ENZİM İNDÜKLEYİCİ AJANLAR",
            description: "Etanol, barbitüratlar, ketamin ve benzodiazepinler kronik kullanımda P450 enzimlerini indükleyerek ilaç yıkımını hızlandırır.",
            additionalInfo: "Bu durumda diğer ilaçların etki süreleri kısalabilir (tolerans gelişimi).",
          ),
          HepaticPhysiologyAnesthesiaItem(
            title: "YÜKSEK EKSTRAKSİYONLU VE AKIM BAĞIMLI İLAÇLAR",
            description: "Lidokain, morfin ve verapamil gibi ilaçların klirensi doğrudan karaciğer kan akımına bağlıdır.",
            subtitle: "Bu ajanların eliminasyon hızı enzim kapasitesinden ziyade organa gelen kan miktarı ile sınırlıdır",
            additionalInfo: "Kan akımı azaldığında (anestezi/şok) bu ilaçların toksisite riski artar.",
          ),
        ],
      ),
      HepaticPhysiologyAnesthesiaCategory(
        categoryName: 'Safra Fizyolojisi',
        items: [
          HepaticPhysiologyAnesthesiaItem(
            title: "SAFRA ÜRETİMİ VE BİLEŞİMİ",
            description: "Hepatositlerden sentezlenen safra; safra tuzları, kolesterol, fosfolipidler ve konjuge bilirübinden oluşur.",
            additionalInfo: "Üretilen safra, safra kesesinde depolanarak konsantre edilir.",
          ),
          HepaticPhysiologyAnesthesiaItem(
            title: "SAFRA EKSİKLİĞİ VE VİTAMİN REZORBSİYONU",
            description: "Safra akışının durması (kolestaz), yağda çözünen ADEK vitaminlerinin emilim bozukluğuna yol açar.",
            subtitle: "K vitamini eksikliği Protrombin ile faktör VII, IX ve X düzeylerini düşürerek pıhtılaşmayı bozar",
            additionalInfo: "Bu durum PT (protrombin zamanı) uzaması ile laboratuvar ortamında saptanır.",
          ),
        ],
      ),
      HepaticPhysiologyAnesthesiaCategory(
        categoryName: 'Karaciğer Fonksiyon Testleri',
        items: [
          HepaticPhysiologyAnesthesiaItem(
            title: "TOTAL BİLİRÜBİN VE SARILIK EŞİĞİ (>3)",
            description: "Kanda normal total bilirübin <1.5 mg/dL olup, değer 3 mg/dL'yi geçtiğinde sarılık (ikter) klinik olarak görünür hale gelir.",
            additionalInfo: "Göz aklarında (sklera) sararma ilk belirgin klinik bulgudur.",
          ),
          HepaticPhysiologyAnesthesiaItem(
            title: "KONJUGE (DİREKT) BİLİRÜBİN ARTIŞI",
            description: "Doğrudan bilirübin yüksekliği genellikle hepatosit fonksiyon bozukluğu, kolestaz veya safra yolu obstrüksiyonunu gösterir.",
            additionalInfo: "İdrarın koyu renkli görünmesi bu tabloya eşlik eder.",
          ),
          HepaticPhysiologyAnesthesiaItem(
            title: "ANKONJUGE (İNDİREKT) BİLİRÜBİN ARTIŞI",
            description: "Kandaki bilirübinin karaciğere girmeden veya konjuge edilemeden yükselmesi, aşırı hemoliz veya genetik konjugasyon defektlerini düşündürür.",
            additionalInfo: "Bilirübin henüz suda çözünür hale gelmemiştir.",
          ),
          HepaticPhysiologyAnesthesiaItem(
            title: "AMİNOTRANSFERAZLAR (AST/ALT) VE HÜCRE HASARI",
            description: "AST ve ALT, hepatositlerin bütünlüğünün bozulduğunu ve aktif hücre hasarı olduğunu gösteren en duyarlı enzimlerdir.",
            additionalInfo: "Hepatiti veya toksik hasarı takip etmede temel testlerdir.",
          ),
          HepaticPhysiologyAnesthesiaItem(
            title: "ALKALEN FOSFATAZ (ALP) VE OBSTRÜKSİYON",
            description: "Alkalen fosfataz normalde 25–85 IU/L arasındadır; safra yolu obstrüksiyonlarında hızla yükselir.",
            additionalInfo: "Ayrıca kemik hastalıklarında da yüksek saptanabilir.",
          ),
          HepaticPhysiologyAnesthesiaItem(
            title: "SERUM ALBUMİN DÜZEYİ VE YARI ÖMRÜ (2-3 HAFTA)",
            description: "Serum albumini (3.5–5.5 g/dL) karaciğerin kronik sentetik kapasitesini yansıtır.",
            subtitle: "Albuminin yarı ömrünün 2–3 hafta olması, akut karaciğer hasarında düzeyin hemen düşmemesine neden olur",
            additionalInfo: "Kronik karaciğer yetmezliğinde düşük albumin plazma onkotik basıncını düşürerek asit ve ödeme yol açar.",
          ),
          HepaticPhysiologyAnesthesiaItem(
            title: "KAN AMONYAĞI VE ENSEFALOPATİ RİSKİ",
            description: "Normalde 47–65 µmol/L olan amonyağın yükselmesi, hepatik ensefalopati gelişiminin ana tetikleyicisidir.",
            additionalInfo: "Amonyak kan-beyin bariyerini geçerek sinirsel toksisite yaratır.",
          ),
          HepaticPhysiologyAnesthesiaItem(
            title: "PROTROMBİN ZAMANI (PT) VE YETERSİZLİK",
            description: "11–14 saniye süren PT'nin uzaması, akut karaciğer yetmezliğinin en hassas ve en erken sentetik göstergesidir.",
            additionalInfo: "Koagülasyon faktörlerinin yarı ömrü kısa olduğu için albuminin aksine akut hasardan hemen etkilenir.",
          ),
          HepaticPhysiologyAnesthesiaItem(
            title: "VİSKOELASTİK KOAGÜLASYON TESTLERİ (TEG/ROTEM)",
            description: "TEG (Tromboelastografi) ve ROTEM, pıhtı oluşumunu ve stabilitesini gerçek zamanlı analiz ederek kanama yönetimini kolaylaştırır.",
            additionalInfo: "Özellikle karaciğer nakli ameliyatlarında standart monitörizasyon parçasıdır.",
          ),
        ],
      ),
      HepaticPhysiologyAnesthesiaCategory(
        categoryName: 'Anestezinin Hepatik Etkileri',
        items: [
          HepaticPhysiologyAnesthesiaItem(
            title: "KAN AKIMI ÜZERİNE ANESTEZİK ETKİLER",
            description: "Genel ve rejyonal anestezi yöntemleri, kardiyovasküler etkileri üzerinden hepatik kan akımını genel olarak azaltır.",
            subtitle: "Özellikle yüksek havayolu basınçlı ventilasyon ve majör karaciğer cerrahisi akımı %60 oranında düşürebilir",
            additionalInfo: "Pozitif sonu ekspiratuar basınç (PEEP) venöz dönüşü engelleyerek portal akımı kısıtlar.",
          ),
          HepaticPhysiologyAnesthesiaItem(
            title: "CERRAHİ STRES VE METABOLİK YANIT (HİPERGLİSEMİ)",
            description: "Cerrahi travmaya yanıt olarak artan katekolamin, glukagon ve kortizol; şiddetli hiperglisemi tablosuna yol açar.",
            subtitle: "Derin genel anestezi veya etkili sempatik blokaj (rejyonal) bu hiperglisemik yanıtı baskılayabilir",
            additionalInfo: "Hastada stresin kontrol edilmesi metabolik stabilite için önemlidir.",
          ),
          HepaticPhysiologyAnesthesiaItem(
            title: "OPİOİDLER VE ODDİ SFİNKTER SPAZMI",
            description: "Pek çok opioid Oddi sfinkterinde spazma yol açabilir; bu klinik tablo glukagon veya nalokson ile geri döndürülebilir.",
            additionalInfo: "Safra yolu basıncı artışı abdominal ağrıya neden olabilir.",
          ),
          HepaticPhysiologyAnesthesiaItem(
            title: "POSTOPERATİF SARILIK ETYOLOJİSİ",
            description: "Ameliyat sonrası gelişen sarılığın en sık nedeni enzim eksikliği değil, aşırı eritrosit yıkımı veya büyük hematomların emilimidir.",
            additionalInfo: "İntraoperatif kan transfüzyonları da bilirübin yükünü artırabilir.",
          ),
        ],
      ),
    ];
  }
}
