import 'package:flutter/material.dart';

class Erc2021Item {
  final String title;
  final String description;
  final String? subtitle;
  final String? additionalInfo;

  Erc2021Item({
    required this.title,
    required this.description,
    this.subtitle,
    this.additionalInfo,
  });
}

class Erc2021Category {
  final String categoryName;
  final List<Erc2021Item> items;

  Erc2021Category({
    required this.categoryName,
    required this.items,
  });
}

class Erc2021Data {
  static List<Erc2021Category> getErc2021Data(BuildContext context) {
    return [
      Erc2021Category(
        categoryName: 'Temel Yaşam Desteği (TYD)',
        items: [
          Erc2021Item(
            title: "KARDİYAK ARREST TANISI: YANITSIZLIK VE AGONAL SOLUNUM",
            description: "Hasta yanıtsızsa ve normal solunum yoksa (veya agonal solunum varsa) derhal arrest kabul edilmelidir.",
            additionalInfo: "Nabız kontrolü profesyoneller için bile zaman kaybı yaratabileceğinden solunum esas alınır.",
          ),
          Erc2021Item(
            title: "ACİL ÇAĞRI VE TELEFONUN HOPARLÖR MODUNDA KULLANIMI",
            description: "Yardım çağırırken telefon hoparlör moduna alınarak eller serbest şekilde KPR başlatılmalıdır.",
            additionalInfo: "Dispaçer talimatları resüsitasyon kalitesini artırır.",
          ),
          Erc2021Item(
            title: "GÖĞÜS KOMPRESYONLARI: DERİNLİK (5-6 CM) VE HIZ (100-120/DK)",
            description: "Göğüs kafesinin alt yarısına, 5-6 cm derinliğinde ve dakikada 100-120 hızında baskı yapılmalıdır.",
            additionalInfo: "Her bası sonrası göğsün tam geri çekilmesine izin verilmelidir.",
          ),
          Erc2021Item(
            title: "KURTARICI SOLUK VE 30:2 KOMPRESYON-VENTİLASYON ORANI",
            description: "Her 30 kompresyon sonrası 2 kurtarıcı soluk verilmelidir; soluk verilemiyorsa sadece kompresyona devam edilir.",
            additionalInfo: "Kesintisiz kompresyon, koroner perfüzyon basıncı için kritiktir.",
          ),
          Erc2021Item(
            title: "OED (OTOMATİK EKSTERNAL DEFİBRİLATÖR) VE PED YERLEŞİMİ",
            description: "OED cihazı ulaşır ulaşmaz pedler anterolateral (sağ köprücük altı ve sol meme altı) yerleştirilmelidir.",
            subtitle: "Alternatif olarak anteroposterior yerleşim kullanılabilir",
            additionalInfo: "Cihaz ritmi analiz ederken kompresyona ara verilir.",
          ),
          Erc2021Item(
            title: "ŞOK SONRASI KESİNTİSİZ KOMPRESYONA DÖNÜŞ",
            description: "Defibrilasyon uygulandıktan hemen sonra ritim veya nabız kontrolü yapmadan KPR'ye devam edilmelidir.",
            additionalInfo: "Ritim kontrolü sadece 2 dakikalık periyot sonrasında yapılır.",
          ),
        ],
      ),
      Erc2021Category(
        categoryName: 'İleri Yaşam Desteği (İYD)',
        items: [
          Erc2021Item(
            title: "RİTİM SINIFLAMASI: VF/PVT VE PEA/ASİSTOLİ AYIRIMI",
            description: "Tedavi algoritması şoklanabilir (VF, pulssuz VT) ve şoklanamaz (PEA, Asistoli) ritimlere göre ikiye ayrılır.",
            additionalInfo: "Şoklanabilir ritimlerde erken defibrilasyon sağkalımı belirleyen en önemli faktördür.",
          ),
          Erc2021Item(
            title: "ADRENALİN KULLANIM ZAMANLAMASI VE RİTİM İLİŞKİSİ",
            description: "Şoklanamaz ritimlerde adrenalin hemen; şoklanabilir ritimlerde ise 3. şoktan sonra uygulanmalıdır.",
            subtitle: "Doz her 3-5 dakikada bir 1 mg IV/IO olarak tekrarlanır",
            additionalInfo: "Vazopresör desteği serebral ve koroner perfüzyonu artırır.",
          ),
          Erc2021Item(
            title: "İLERİ HAVAYOLU: DENEYİMLİ PERSONEL VE ENTÜBASYON",
            description: "Havayolu yönetimi sadece deneyimli kişilerce ve kompresyonu minimum düzeyde kesintiye uğratarak yapılmalıdır.",
            additionalInfo: "Entübasyon yapılamıyorsa supraglottik cihazlar (LMA vb.) tercih edilebilir.",
          ),
          Erc2021Item(
            title: "POCUS (YATAK BAŞI USG) VE KOMPRESYON KESİNTİSİ RİSKİ",
            description: "Geri döndürülebilir nedenlerin (tamponad, PE vb.) tanısı için kullanılabilir ancak ritim kontrol süresini (10 sn) aşmamalıdır.",
            additionalInfo: "Odaklanmış ekokardiyografi arrest yönetiminde yardımcıdır.",
          ),
          Erc2021Item(
            title: "REFRAKTER VF YÖNETİMİ VE PED POZİSYON DEĞİŞİKLİĞİ",
            description: "Tekrarlayan şoklara yanıt alınamıyorsa pedlerin yerleşimi anteroposterior olarak değiştirilebilir.",
            additionalInfo: "Amiodaron (300 mg) 3. şoktan sonra IV/IO olarak uygulanmalıdır.",
          ),
          Erc2021Item(
            title: "ANTİSİPATÖR DEFİBRİLATÖR ŞARJI VE ŞOK GECİKMESİ ÖNLEME",
            description: "Şok gecikmesini azaltmak için defibrilatör kompresyon devam ederken şarj edilmelidir.",
            additionalInfo: "Defibrilasyon öncesi 'peri-shock pause' mümkün olduğunca kısa tutulmalıdır.",
          ),
          Erc2021Item(
            title: "ROSC (DOLAŞIMIN GERİ DÖNMESİ) SONRASI BAKIM VE NEDEN ANALİZİ",
            description: "Kendiliğinden dolaşımın dönüşü sonrası 5H-5T nedenleri araştırılmalı ve hedefli sıcaklık yönetimi planlanmalıdır.",
            additionalInfo: "Post-arrest dönemde nörolojik koruma ve stabilizasyon esastır.",
          ),
        ],
      ),
      Erc2021Category(
        categoryName: 'İlk Yardım Prensipleri',
        items: [
          Erc2021Item(
            title: "İLK YARDIMIN ANA AMAÇLARI VE YAŞAMI KORUMA",
            description: "Yaşamı korumak, acıyı azaltmak, komplikasyonları önlemek ve iyileşmeyi hızlandırmak birincil hedeflerdir.",
            additionalInfo: "Eğitimli olmayan kişiler bile basit talimatlarla hayat kurtarabilir.",
          ),
          Erc2021Item(
            title: "KURTARMA (DERLENME) POZİSYONU VE HAVAYOLU GÜVENLİĞİ",
            description: "Bilinçsiz ancak solunumu normal olan hastalar havayolu açıklığını korumak için yan yatırılmalıdır.",
            additionalInfo: "Gastrik içeriğin aspirasyonunu önlemek için baş geride tutulur.",
          ),
          Erc2021Item(
            title: "ŞOKTAKİ HASTA İÇİN POZİSYON VE BACAK ELEVASYONU",
            description: "Şüpheli şok tablosunda hasta sırtüstü yatırılır ve venöz dönüşü artırmak için bacaklar hafif yükseltilebilir.",
            additionalInfo: "Kanamanın kontrol altına alınması şok yönetiminin parçasıdır.",
          ),
          Erc2021Item(
            title: "ANAFİLAKSİ VE ADRENALİN OTO-ENJEKTÖR KULLANIMI",
            description: "Şiddetli alerjik reaksiyonlarda adrenalin oto-enjektörü derhal uygulanmalı ve 5 dk sonra düzelme yoksa 2. doz yapılmalıdır.",
            additionalInfo: "Enjeksiyon uyluğun dış yan kısmından (vastus lateralis) yapılmalıdır.",
          ),
          Erc2021Item(
            title: "HİPOGLİSEMİDE ŞEKER YÜKLEMESİ VE 15 DK KURALI",
            description: "Bilinçli hastaya 15-20 g glikoz verilip 15 dk sonra seviye kontrol edilmeli, gerekirse tekrarlanmalıdır.",
            additionalInfo: "Ciddi vakalarda (bilinç kaybı) ağızdan gıda verilmemeli, tıbbi yardım beklenmelidir.",
          ),
          Erc2021Item(
            title: "GÖĞÜS AĞRISINDA ASPİRİN KULLANIMI VE KONTRENDİKASYONLAR",
            description: "Travmatik olmayan göğüs ağrısında kontrendikasyon yoksa 150-300 mg aspirin çiğnetilmesi önerilir.",
            additionalInfo: "Alerji veya aktif mide kanaması varlığında kullanılmamalıdır.",
          ),
          Erc2021Item(
            title: "SICAK ÇARPMASINDA HIZLI SOĞUTMA VE SUYA DALDIRMA",
            description: "Vücut ısısını hızla düşürmek için hasta mümkünse soğuk suya daldırılmalı veya soğuk kompres uygulanmalıdır.",
            additionalInfo: "Hava akımı (yelpaze) ile soğutma da destekleyici bir yöntemdir.",
          ),
          Erc2021Item(
            title: "KANAMA KONTROLÜ: DOĞRUDAN BASI VE TURNİKE KRİTERLERİ",
            description: "Ciddi kanamalarda önce doğrudan bası uygulanmalı; durdurulamayan uzuv kanamalarında turnike kullanılmalıdır.",
            additionalInfo: "Turnike, arteriyel kan akışını kesecek kadar sıkı olmalıdır.",
          ),
          Erc2021Item(
            title: "YABANCI CİSİM TIKANIKLIĞI (HEİMLİCH) MANEVRASI",
            description: "Hasta öksüremez hale gelirse 5 sırt darbesi ve ardından 5 abdominal bası (Heimlich) uygulanmalıdır.",
            additionalInfo: "Bilinç kaybı gelişirse derhal TYD (kompresyon) başlatılır.",
          ),
          Erc2021Item(
            title: "TERMAL YANIKLARDA İLK 20 DK SOĞUK SU UYGULAMASI",
            description: "Yanık bölgesi en az 20 dakika boyunca musluk suyu altında soğutulmalı ve steril örtü ile kapatılmalıdır.",
            additionalInfo: "Buz uygulaması doku hasarını artırabileceği için önerilmez.",
          ),
        ],
      ),
      Erc2021Category(
        categoryName: 'Yenidoğan Resüsitasyon - Genel Bilgiler',
        items: [
          Erc2021Item(
            title: "YENİDOĞANLARIN %85'İ: KENDİLİĞİNDEN SOLUNUM BAŞLANGICI",
            description: "Bebeklerin büyük çoğunluğu doğum sonrası ilk birkaç dakikada müdahalesiz nefes almaya başlar.",
            additionalInfo: "Fizyolojik adaptasyon süreci yakından izlenmelidir.",
          ),
          Erc2021Item(
            title: "TAKTİL UYARI VE HAVAYOLU AÇMA İLE DÜZELEN %10'LUK KESİM",
            description: "Hafif adaptasyon zorluğu yaşayan bebeklerde kurulama ve havayolu manevraları yeterli olmaktadır.",
            additionalInfo: "Isıtma ve kurulama öncelikli ilk adımdır.",
          ),
          Erc2021Item(
            title: "POZİTİF BASINÇLI VENTİLASYON (PPV) GEREKSİNİMLİ %5'LİK KESİM",
            description: "Ciddi solunum sıkıntısı veya apne gösteren bebeklerin %5'inde maske ile PPV desteği şarttır.",
            additionalInfo: "PPV'nin başarısızlığı resüsitasyonun bir sonraki basamağına geçişi belirler.",
          ),
          Erc2021Item(
            title: "YENİDOĞAN ENTÜBASYON ORANLARI VE KLİNİK GÖRÜNÜM",
            description: "Arrest veya çok ağır RDS vakalarında entübasyon oranı %0.4-2 gibi oldukça düşüktür.",
            additionalInfo: "Çoğu bebek invaziv havayoluna gerek kalmadan düzelir.",
          ),
        ],
      ),
      Erc2021Category(
        categoryName: 'Yenidoğan - Sıcaklık Kontrolü',
        items: [
          Erc2021Item(
            title: "HEDEF VÜCUT ISISI (36.5–37.5°C) VE HİPOTERMİ ÖNLEME",
            description: "Aksiller veya rektal vücut ısısının normal aralıkta tutulması yenidoğan outcome’u için hayati önemdedir.",
            additionalInfo: "Hipodermi morbidite ve mortaliteyi artırır.",
          ),
          Erc2021Item(
            title: "DOĞUM ODASI SICAKLIĞI VE PRETERMLERDE >25°C KRİTERİ",
            description: "Doğum odası genellikle 23-25 °C olmalı; prematüre doğumlarda 25 °C'nin üzerine çıkarılmalıdır.",
            additionalInfo: "Konveksiyon yoluyla ısı kaybı önlenmelidir.",
          ),
          Erc2021Item(
            title: "TERM BEBEKLERDE TEN TENE TEMAS VE ISITMA",
            description: "Stabil term bebeklerde anne ile ten tene temas, ısı regülasyonunu mükemmel sağlar.",
            additionalInfo: "Kurutulduktan sonra anne kucağına verilebilir.",
          ),
          Erc2021Item(
            title: "PRETERM ≤32 HAFTA: POLİETİLEN ÖRTÜ VE RADYANT ISITICI",
            description: "Çok prematüre bebekler kurulanmadan polietilen örtüye sarılmalı ve radyant ısıtıcı altına alınmalıdır.",
            additionalInfo: "Isı kaybını önlemek için radyant ısıtıcı mutlaka açık olmalıdır.",
          ),
          Erc2021Item(
            title: "SOLUNUM DESTEĞİNDE ISITILMIŞ VE NEMLENDİRİLMİŞ GAZ",
            description: "Uzun süreli resüsitasyonda veya ventilasyon desteğinde solunan gazlar ısıtılarak verilmelidir.",
            additionalInfo: "Nemlendirilmiş düşük akımlı oksijen mukoza kuruluğunu önler.",
          ),
        ],
      ),
      Erc2021Category(
        categoryName: 'Yenidoğan - Umbilikal Kord Yönetimi',
        items: [
          Erc2021Item(
            title: "STABİL BEBEKTE KORD KLEMENTLEMESİ (EN AZ 60 SN GECİKTİR)",
            description: "Ek bir canlandırma gerektirmeyen bebeklerde göbek kordonu en az 60 saniye boyunca klemplenmemelidir.",
            additionalInfo: "Gecikmiş kord klemplemesi, bebekte demir depolarını ve kan volümünü artırır.",
          ),
          Erc2021Item(
            title: "KORDON SIVAZLAMA (MİLKİNG) VE PRETERMLERDE KULLANIM",
            description: "Hızlı transfer gereken 28 hafta üzeri bebeklerde kordon sıvazlama bir seçenek olarak düşünülebilir.",
            additionalInfo: "28 hafta altındaki bebeklerde intraventriküler kanama riski nedeniyle sıvazlama önerilmez.",
          ),
        ],
      ),
      Erc2021Category(
        categoryName: 'Yenidoğan - İlk Değerlendirme',
        items: [
          Erc2021Item(
            title: "DEĞERLENDİRME PARAMETRELERİ: TONUS, RENK VE KALP HIZI",
            description: "Bebeğin genel durumu tonus, deri rengi ve özellikle kalp hızı üzerinden anlık değerlendirilir.",
            additionalInfo: "Apgar skoru resüsitasyonun başlatılması için değil, sürecin değerlendirilmesi içindir.",
          ),
          Erc2021Item(
            title: "KALP HIZI >100: İYİ ADAPTASYON VE RUTİN BAKIM",
            description: "Kalp hızının 100 üzerinde seyretmesi normal adaptasyon bulgusudur.",
            additionalInfo: "Takibe devam edilir.",
          ),
          Erc2021Item(
            title: "KALP HIZI 60–100: VENTİLASYON DESTEĞİ İHTİYACI",
            description: "Bradikardi saptanan bu grupta hava yolu açıklığı sağlanmalı ve PPV başlatılmalıdır.",
            additionalInfo: "Hızlı müdahale arresti önler.",
          ),
          Erc2021Item(
            title: "KALP HIZI <60: KRİTİK SEVİYE VE GÖĞÜS KOMPRESYONU",
            description: "Bu seviyede bebek kritik durumdadır; etkin ventilasyona rağmen düzelmezse kompresyon gereklidir.",
            additionalInfo: "Yenidoğanda düşük kalp hızı primer olarak solunumsal nedenlidir.",
          ),
        ],
      ),
      Erc2021Category(
        categoryName: 'Yenidoğan - Taktil Uyarı',
        items: [
          Erc2021Item(
            title: "AYAK TABANI VE SIRT SIVAZLAMA TEKNİĞİ",
            description: "Hafif uyarı olarak ayak tabanına vurma veya sırtın sıvazlanması tercih edilmelidir.",
            additionalInfo: "Solunumu tetiklemek için kullanılan standart yöntemlerdir.",
          ),
          Erc2021Item(
            title: "AGRESİF STİMÜLASYONDAN KAÇINMA KRİTERİ",
            description: "Bebeği sarsmak veya havaya fırlatmak gibi agresif yöntemler ciddi yaralanmalara yol açabilir ve yasaktır.",
            additionalInfo: "Nazik yaklaşım esastır.",
          ),
        ],
      ),
      Erc2021Category(
        categoryName: 'Yenidoğan - Havayolu Yönetimi',
        items: [
          Erc2021Item(
            title: "BAŞIN NÖTR POZİSYONU VE HAVAYOLU AÇIKLIĞI",
            description: "Yenidoğanda havayolunu açmak için baş nötr (koklama) pozisyonunda tutulmalıdır.",
            additionalInfo: "Aşırı fleksiyon veya ekstansiyon trakeyi kapatabilir.",
          ),
          Erc2021Item(
            title: "MASKE İLE PPV: İLK 60 SANİYEDE MÜDAHALE",
            description: "Solutulamayan her bebekte doğumun ilk dakikası (Golden Minute) dolmadan PPV başlanmış olmalıdır.",
            additionalInfo: "Dakikada 40-60 soluk hızı hedeflenir.",
          ),
          Erc2021Item(
            title: "BAŞLANGIÇ BASINÇLARI: TERM (30) VE PRETERM (25 CMH2O)",
            description: "İnspiratuar basınçlar term bebeklerde 30 cmH₂O, pretermlerde ise 25 cmH₂O olarak başlatılmalıdır.",
            additionalInfo: "Göğüs kafesinin havalandığı (yükseldiği) gözlenmelidir.",
          ),
          Erc2021Item(
            title: "CPAP: SPONTAN SOLUYAN PRETERMLERDE İLK SEÇENEK",
            description: "Apnesi olmayan ancak zorlanarak soluyan prematürelerde entübasyonu önlemek için CPAP (6 cmH2O) uygulanır.",
            additionalInfo: "İnvaziv olmayan bu yöntem akciğerleri korur.",
          ),
          Erc2021Item(
            title: "PEEP (POZİTİF EKSPİRATUAR BASINÇ) DESTEĞİ (5–6 CMH2O)",
            description: "PPV sırasında fonksiyonel rezidüel kapasiteyi (FRC) oluşturmak için PEEP mutlaka kullanılmalıdır.",
            additionalInfo: "PEEP kullanımı sekresyon temizliğini de kolaylaştırır.",
          ),
          Erc2021Item(
            title: "MEKONYUMLU BEBEKLERDE RUTİN ASPİRASYON YASAĞI",
            description: "Mekonyumlu doğumda bebek deprese değilse rutin trakeal aspirasyon yapılmaz; ventilasyona odaklanılır.",
            additionalInfo: "Gereksiz aspirasyon ventilasyonu geciktirerek hipoksiyi artırır.",
          ),
        ],
      ),
      Erc2021Category(
        categoryName: 'Yenidoğan - Alternatif Havayolu',
        items: [
          Erc2021Item(
            title: "LARİNGEAL MASKE (LMA) KULLANIMI VE KİLO SINIRI",
            description: "34 hafta üzeri ve yaklaşık 2000 g üzerindeki bebeklerde maske ventilasyonu başarısızsa LMA tercih edilebilir.",
            additionalInfo: "Entübasyonun yapılamadığı durumlarda can kurtarıcıdır.",
          ),
          Erc2021Item(
            title: "ENDOTRAKEAL TÜP ENDİKASYONLARI VE SURFAKTAN YOLU",
            description: "Maske-PPV yetersizse, göğüs kompresyonu gerekiyorsa veya surfaktan verilecekse entübasyon şarttır.",
            additionalInfo: "Balon veya ventilatör ile senkron çalışma imkanı sağlar.",
          ),
        ],
      ),
      Erc2021Category(
        categoryName: 'Yenidoğan - Göğüs Kompresyonu',
        items: [
          Erc2021Item(
            title: "KOMPRESYON ENDİKASYONU: 30 SN ETKİN VENTİLASYON SONRASI",
            description: "En az 30 saniyelik kaliteli ventilasyon desteğine rağmen kalp hızı <60 kalmaya devam ediyorsa kompresyon başlanır.",
            additionalInfo: "Göğüs derinliğinin 1/3'ü kadar bası yapılmalıdır.",
          ),
          Erc2021Item(
            title: "3:1 KOMPRESYON-VENTİLASYON ORANI VE DAKİKADA 120 OLAY",
            description: "Sürekli ritim: 3 kompresyon ve ardından 1 ventilasyon şeklinde koordine edilmelidir.",
            additionalInfo: "Bu döngü dakikada yaklaşık 90 bası ve 30 soluk sağlar.",
          ),
          Erc2021Item(
            title: "KOMPRESYONDA İKİ EL TEKNİĞİ VE GÖĞÜS ÇAPRAZLAMASI",
            description: "Bebeğin göğsü her iki el ile sarılır ve başparmaklarla sternumun alt yarısına bası uygulanır.",
            additionalInfo: "İki parmak tekniğine göre daha yüksek koroner basınç sağlar.",
          ),
          Erc2021Item(
            title: "KOMPRESYON SIRASINDA %100 OKSİJENASYON DESTEĞİ",
            description: "Göğüs kompresyonu aşamasına geçilen her yenidoğan resüsitasyonunda FiO₂ %100'e çıkarılmalıdır.",
            additionalInfo: "ROSC sonrası oksijen konsantrasyonu hızla titre edilmelidir.",
          ),
        ],
      ),
      Erc2021Category(
        categoryName: 'Yenidoğan - Damar Yolu ve İlaçlar',
        items: [
          Erc2021Item(
            title: "UMBİLİKAL VEN VE İNTRAOSSEÖZ (IO) YOL TERCİHİ",
            description: "Acil ilaç uygulaması için öncelikli yol umbilikal ven kateterizasyonudur; yapılamazsa IO yol kullanılır.",
            additionalInfo: "Periferik venöz yol yenidoğan şokunda zordur.",
          ),
          Erc2021Item(
            title: "ADRENALİN DOZU (10–30 µG/KG) VE TEKRAR ARALIĞI",
            description: "Kalp hızı <60 ise 10-30 µg/kg adrenalin IV/IO verilir ve 3-5 dakikada bir tekrarlanır.",
            additionalInfo: "ET yoluyla emilim güvenilir değildir, sadece IV yol beklerken denenebilir (100 µg/kg).",
          ),
          Erc2021Item(
            title: "UZAMIŞ RESÜSİTASYONDA GLUKOZ (%10) DESTEĞİ",
            description: "Glikojen depoları hızlı tükenen bebeklerde uzamış resüsitasyonda 250 mg/kg glukoz takviyesi gerekebilir.",
            additionalInfo: "%10 glukozdan 2.5 mL/kg dozuna tekabül eder.",
          ),
          Erc2021Item(
            title: "VOLÜM REPLASMANI: O RH(-) KAN VEYA İZOTONİK KRİSTALLOİD",
            description: "Kan akımı şüphesi veya şok durumunda 10 mL/kg izotonik kristalloid veya kan transfüzyonu yapılır.",
            additionalInfo: "Preterm bebeklerde hızlı boluslar beyin kanaması riskini artırır; yavaş (10-20 dk) verilmelidir.",
          ),
          Erc2021Item(
            title: "SODYUM BİKARBONAT KULLANIMI VE RESÜSİTASYON YANITI",
            description: "Dirençli asidoz varlığında 1-2 mmol/kg dozunda yavaş infüzyon şeklinde uygulanabilir.",
            additionalInfo: "Yeterli ventilasyon sağlanmadan verilmemelidir, CO2 artışına yol açabilir.",
          ),
          Erc2021Item(
            title: "NALOKSON: ANNENİN OPİOİD KULLANIMI VE PERSİSTAN APNE",
            description: "Annenin doğuma yakın opioid alması sonucu persistan apnesi olan bebekte 200 µg IM (veya 10 µg/kg IV) uygulanır.",
            additionalInfo: "Anne bağımlıysa bebekte çekilme nöbetleri yapabilir.",
          ),
        ],
      ),
      Erc2021Category(
        categoryName: 'Yenidoğan - Prognoz',
        items: [
          Erc2021Item(
            title: "10–20 DK YOĞUN RESÜSİTASYON VE YANITSIZLIK ANALİZİ",
            description: "Tüm İYD basamaklarına rağmen 20 dakika boyunca yaşam bulgusu alınamayan bebekte prognoz çok kötüdür.",
            additionalInfo: "Uzatılmış resüsitasyon ciddi nörolojik sekellerle sonuçlanabilir.",
          ),
          Erc2021Item(
            title: "TEDAVİYİ SONLANDIRMA VE AİLE İLE ETİK İLETİŞİM",
            description: "Geri döndürülebilir nedenler yoksa resüsitasyon ekibi ve aile ortak kararıyla süreç sonlandırılmalıdır.",
            additionalInfo: "Etik kurullar ve yerel kılavuzlar bu konuda yol göstericidir.",
          ),
        ],
      ),
    ];
  }
}
