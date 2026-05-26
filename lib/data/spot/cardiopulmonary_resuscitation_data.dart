import 'package:flutter/material.dart';

class CardiopulmonaryResuscitationItem {
  final String title;
  final String description;
  final String? subtitle;
  final String? additionalInfo;

  CardiopulmonaryResuscitationItem({
    required this.title,
    required this.description,
    this.subtitle,
    this.additionalInfo,
  });
}

class CardiopulmonaryResuscitationCategory {
  final String categoryName;
  final List<CardiopulmonaryResuscitationItem> items;

  CardiopulmonaryResuscitationCategory({
    required this.categoryName,
    required this.items,
  });
}

class CardiopulmonaryResuscitationData {
  static List<CardiopulmonaryResuscitationCategory> getCardiopulmonaryResuscitationData(BuildContext context) {
    return [
      CardiopulmonaryResuscitationCategory(
        categoryName: 'Genel İlkeler',
        items: [
          CardiopulmonaryResuscitationItem(
            title: "CPR TANIMI VE YAŞAM DESTEĞİ UYGULAMALARI",
            description: "Aniden duran dolaşım ve solunumu desteklemek amacıyla yapılan temel ve ileri yaşam desteği müdahalelerinin bütünüdür.",
            additionalInfo: "Kritik hedef, beyin ve hayati organların oksijenlenmesini sürdürmektir.",
          ),
          CardiopulmonaryResuscitationItem(
            title: "RESÜSİTASYON HEDEFLERİ VE ZİNCİRLEME BAKIM",
            description: "Erken tanı, hızlı temel yaşam desteği, erken defibrilasyon ve nitelikli post-resüsitasyon bakımı kapsar.",
            additionalInfo: "Her halkanın başarısı bir sonrakine bağlıdır.",
          ),
          CardiopulmonaryResuscitationItem(
            title: "BAŞARIDA EN KRİTİK UNSUR: DEFİBRİLASYON VE KOMPRESYON",
            description: "Hayatta kalma oranını en çok artıran iki faktör; zaman kaybetmeden yapılan defibrilasyon ve kesintisiz, kaliteli göğüs kompresyonudur.",
            additionalInfo: "Defibrilasyondaki her dakikalık gecikme sağkalımı %7-10 oranında azaltır.",
          ),
        ],
      ),
      CardiopulmonaryResuscitationCategory(
        categoryName: 'Kardiyak Arrestin Tanısı',
        items: [
          CardiopulmonaryResuscitationItem(
            title: "TEMEL ARREST BULGULARI VE KLİNİK TANIM",
            description: "Bilinç kaybı, normal solunumun olmaması (veya sadece agonal solunum) ve nabızsızlık arrestin tanısal üçlüsüdür.",
            additionalInfo: "Agonal solunum genellikle arrestin ilk dakikalarında görülür ve kurtarıcılar tarafından karıştırılmamalıdır.",
          ),
          CardiopulmonaryResuscitationItem(
            title: "NABIZ KONTROLÜ VE ZAMAN SINIRI (≤10 SN)",
            description: "Nabız kontrolü karotis veya femoral arterden yapılmalı ve 10 saniyeden uzun sürmemelidir.",
            additionalInfo: "Nabızdan emin olunamayan durumlarda derhal kompresyona başlanmalıdır.",
          ),
          CardiopulmonaryResuscitationItem(
            title: "RİTM ANALİZİ: ŞOKLANABİLİR VE ŞOKLANAMAZ RİTMLER",
            description: "Ritim analizi sonrasında hastalar VF/Nabızsız VT (şoklanabilir) veya Asistoli/NEA (şoklanamaz) olarak sınıflandırılır.",
            additionalInfo: "Şoklanamaz ritimlerde temel odak adrenalin ve yüksek kaliteli CPR'dır.",
          ),
        ],
      ),
      CardiopulmonaryResuscitationCategory(
        categoryName: 'Temel Yaşam Desteği (BLS)',
        items: [
          CardiopulmonaryResuscitationItem(
            title: "CAB SIRALAMASI VE UYGULAMA ÖNCELİKLERİ",
            description: "Modern kılavuzlarda sıralama; önce Dolaşım (Circulation), sonra Havayolu (Airway) ve Solunum (Breathing) şeklindedir.",
            additionalInfo: "Kompresyonların erken başlaması koroner perfüzyon basıncını korur.",
          ),
          CardiopulmonaryResuscitationItem(
            title: "GÖĞÜS KOMPRESYONLARI: DERİNLİK VE HIZ KRİTERLERİ",
            description: "Yetişkinde 5–6 cm derinlik, dakikada 100–120 vuru hızında kompresyon yapılmalıdır.",
            subtitle: "Çocuk ve bebeklerde göğüs ön-arka çapının en az 1/3'ü kadar çökme sağlanmalıdır",
            additionalInfo: "Kompresyonlar arası göğsün tam recoil (geri dolum) yapmasına izin verilmelidir.",
          ),
          CardiopulmonaryResuscitationItem(
            title: "KOMPRESYON/VENTİLASYON ORANLARI (YETİŞKİN VE ÇOCUK)",
            description: "Yetişkinlerde kurtarıcı sayısından bağımsız olarak 30:2; çocuklarda iki kurtarıcı varsa 15:2 oranı uygulanır.",
            additionalInfo: "Tek kurtarıcı çocuk vaka yönetiminde oran 30:2 olarak kalır.",
          ),
          CardiopulmonaryResuscitationItem(
            title: "RESÜSİTASYONDA OKSİJENASYON VE %100 O2 DESTEĞİ",
            description: "Kritik arrest anında mümkün olan en yüksek konsantrasyonda (%100) oksijen desteği verilmelidir.",
            additionalInfo: "ROSC sonrası oksijen konsantrasyonu aşırı hiperoksiden kaçınmak için titre edilebilir.",
          ),
        ],
      ),
      CardiopulmonaryResuscitationCategory(
        categoryName: 'İleri Kardiyak Yaşam Desteği (ACLS)',
        items: [
          CardiopulmonaryResuscitationItem(
            title: "DEFİBRİLASYON ENERJİSİ VE UYGULAMA PRENSİPLERİ",
            description: "VF ve nabızsız VT'de bifazik cihazlarda 120–200 J; monofaziklerde 360 J şok uygulanır.",
            subtitle: "Şok sonrası ritim analizi beklenmeden derhal göğüs kompresyonuna devam edilmelidir",
            additionalInfo: "Cihaz şarj olurken kompresyonun sürdürülmesi başarı şansını artırır.",
          ),
          CardiopulmonaryResuscitationItem(
            title: "ADRENALİN KULLANIMI: DOZAJ VE ZAMANLAMA",
            description: "Tüm arrest ritimlerinde 1 mg IV/IO dozunda, her 3–5 dakikada bir tekrarlanarak uygulanır.",
            additionalInfo: "Alfa-adrenerjik etkisiyle koroner ve serebral perfüzyon basıncını artırır.",
          ),
          CardiopulmonaryResuscitationItem(
            title: "AMİODARON VE LİDOKAİN: ANTİARİTMİK ENDİKASYONLARI",
            description: "Dirençli VF/VT durumunda Amiodaron (300 mg başlangıç, 150 mg ek doz) ilk tercihtir.",
            subtitle: "Lidokain (1–1.5 mg/kg) Amiodaron'a alternatif olarak kullanılabilir",
            additionalInfo: "Şoklanamaz ritimlerde antiaritmiklerin yeri yoktur.",
          ),
          CardiopulmonaryResuscitationItem(
            title: "MAGNEZYUM SÜLFAT VE TORSADES DE POINTES TEDAVİSİ",
            description: "QT uzamasına bağlı Torsades de Pointes ritminde 1–2 g IV magnezyum hayat kurtarıcıdır.",
            additionalInfo: "Hipomagnezemi mevcutsa replasman önceliklidir.",
          ),
          CardiopulmonaryResuscitationItem(
            title: "NABIZSIZ ELEKTRİKSEL AKTİVİTE (NEA) VE ASİSTOLİ YÖNETİMİ",
            description: "Bu ritimlerde şok uygulanmaz; öncelik yüksek kaliteli CPR, erken adrenalin ve geri döndürülebilir nedenlerin (5H-5T) tayinidir.",
            additionalInfo: "NEA'da monitörde ritim görülmesine rağmen palpabl nabız yoktur.",
          ),
        ],
      ),
      CardiopulmonaryResuscitationCategory(
        categoryName: 'Reversibl Nedenler (5H–5T)',
        items: [
          CardiopulmonaryResuscitationItem(
            title: "5H: HİPOVOLEMİ, HİPOKSİ, ASİDOZ, ELEKTROLİT VE TERMAL DEĞİŞİM",
            description: "Arrestin altında yatan Hipovolemi, Hipoksi, Hidrojen iyonu (Asidoz), Hipo/Hiperkalemi ve Hipotermi hızlıca taranmalıdır.",
            additionalInfo: "Özellikle asidoz ve potasyum dengesizliği resüsitasyon başarısını doğrudan etkiler.",
          ),
          CardiopulmonaryResuscitationItem(
            title: "5T: PNÖMOTORAKS, TAMPONAD, TOKSİNLER VE TROMBOZ RİSKİ",
            description: "Tansiyon pnömotoraks, Tamponad (kardiyak), Toksinler, Tromboz (koroner) ve Tromboz (pulmoner) değerlendirilmelidir.",
            additionalInfo: "Tamponad ve pnömotoraks cerrahi müdahale veya drenaj gerektirir.",
          ),
        ],
      ),
      CardiopulmonaryResuscitationCategory(
        categoryName: 'Havayolu Yönetimi',
        items: [
          CardiopulmonaryResuscitationItem(
            title: "HAVAYOLU SEÇENEKLERİ: BAG-MASK'TAN ENTÜBASYONA",
            description: "Resüsitasyon sırasında bag-mask, supraglottik araçlar (LMA) veya endotrakeal entübasyon tercih edilebilir.",
            additionalInfo: "Tecrübe düzeyine göre en güvenli yöntem seçilmelidir.",
          ),
          CardiopulmonaryResuscitationItem(
            title: "ENTÜBE HASTALARDA KOMPRESYON VE VENTİLASYON SENKRONİZASYONU",
            description: "Endotrakeal entübasyon sonrası kompresyonlar kesintisiz sürdürülür (dakikada 100-120) ve her 6 saniyede bir (10/dk) soluk verilir.",
            additionalInfo: "Senkronizasyon aranmaz; kompresyonlar ventilasyon sırasında durdurulmaz.",
          ),
          CardiopulmonaryResuscitationItem(
            title: "KAPNOGRAFİ (ETCO2) VE KALİTELİ CPR MONİTÖRİZASYONU",
            description: "Dalga formlu kapnografi resüsitasyonun kalitesini izlemede kritiktir; <10 mmHg değeri yetersiz kompresyon göstergesidir.",
            additionalInfo: "ETCO2'de ani ve kalıcı artış ROSC'un (dolaşımın geri dönüşü) en erken işaretidir.",
          ),
        ],
      ),
      CardiopulmonaryResuscitationCategory(
        categoryName: 'Post-Resüsitasyon Bakım',
        items: [
          CardiopulmonaryResuscitationItem(
            title: "HEDEFLENEN HEMODİNAMİK PARAMETRELER VE MAP ≥65 MMHG",
            description: "Dolaşım sağlandıktan sonra organ perfüzyonu için ortalama arter basıncı (MAP) en az 65 mmHg düzeyinde tutulmalıdır.",
            additionalInfo: "Gerekirse inotropik veya vazopresör desteği başlanmalıdır.",
          ),
          CardiopulmonaryResuscitationItem(
            title: "OKSİJENASYON VE ARTERİYEL KAN GAZI HEDEFLERİ",
            description: "Oksijen satürasyonu (SpO2) %94–98 arasında tutulmalı; aşırı oksijenin serbest radikal hasarından kaçınılmalıdır.",
            additionalInfo: "Karbondioksit (PaCO2) düzeyi normokapnik (35-45 mmHg) sınırlarda hedeflenir.",
          ),
          CardiopulmonaryResuscitationItem(
            title: "HEDEFLENMİŞ SICAKLIK YÖNETİMİ (TTM): 32–36°C PROTOKOLÜ",
            description: "Koma durumundaki hastalarda nörolojik sağkalımı artırmak için 24 saat boyunca 32–36°C arası sabit sıcaklık sağlanmalıdır.",
            additionalInfo: "Ateş çıkışı (post-ROSC hipertermi) prognozu kötüleştirir ve mutlaka önlenmelidir.",
          ),
          CardiopulmonaryResuscitationItem(
            title: "NÖROLOJİK MONİTÖRİZASYON VE EEG DEĞERLENDİRMESİ",
            description: "Nöbetleri ekarte etmek ve prognozu değerlendirmek için komadaki hastalarda sürekli veya aralıklı EEG izlemi yapılır.",
            additionalInfo: "Multimodal nörolojik değerlendirme genellikle ROSC sonrası 72. saatte yapılır.",
          ),
          CardiopulmonaryResuscitationItem(
            title: "ALTTA YATAN SEBEPLERİN TEDAVİSİ VE REPERFÜZYON",
            description: "Arrest nedeni STEMI ise acil koroner anjiyografi; emboli ise trombolitik tedaviler devreye alınmalıdır.",
            additionalInfo: "Primer neden ortadan kaldırılmadıkça arrestin tekrarlama riski yüksektir.",
          ),
        ],
      ),
      CardiopulmonaryResuscitationCategory(
        categoryName: 'Özel Durumlar',
        items: [
          CardiopulmonaryResuscitationItem(
            title: "GEBELİKTE CPR VE UTERİN SOL YAN KAYDIRMA (MANUEL)",
            description: "20. gebelik haftasından büyüklerde aortokaval basıyı önlemek için uterus sola doğru manuel olarak itilmelidir.",
            additionalInfo: "Bu manevra venöz dönüşü ve kompresyon etkinliğini belirgin artırır.",
          ),
          CardiopulmonaryResuscitationItem(
            title: "HİPOTERMİK ARREST VE TEKRAR ISINMA STRATEJİLERİ",
            description: "Vücut ısısı 30°C'nin altındaysa defibrilasyon ve ilaçlara yanıt sınırlıdır; hasta 30°C'nin üzerine ısıtılana kadar CPR sürdürülür.",
            additionalInfo: "Hipotermik arrestlerde resüsitasyon süresi daha uzun tutulabilir.",
          ),
          CardiopulmonaryResuscitationItem(
            title: "TRAVMA RESÜSİTASYONU VE HEMORAJİ KONTROLÜ ÖNCELİĞİ",
            description: "Hızlı havayolu ve masif hemoraji kontrolü önceliklidir; göğüs pnömotoraks/tamponad açısından hızla taranmalıdır.",
            additionalInfo: "Travmatik arrestlerde cerrahi odak kontrolü hayati öneme sahiptir.",
          ),
          CardiopulmonaryResuscitationItem(
            title: "ASTIM VE HAVA YOLU OBSTRÜKSİYONUNDA VENTİLASYON AYARI",
            description: "Hava hapsini önlemek için ekspirasyon zamanı uzun tutulmalı ve ventilasyon hızı yavaşlatılmalıdır.",
            additionalInfo: "Yüksek intratorasik basınç venöz dönüşü bozarak kardiyak debiyi düşürebilir.",
          ),
        ],
      ),
      CardiopulmonaryResuscitationCategory(
        categoryName: 'Klinik Pratik Spotları',
        items: [
          CardiopulmonaryResuscitationItem(
            title: "CPR BAŞARI PARAMETRELERİ VE KALİTE GÖSTERGELERİ",
            description: "Erken defibrilasyon ve kompresyon fraksiyonu (CPR süresinin %60'ından fazlası) anahtar başarı göstergesidir.",
            additionalInfo: "Kompresyonların her kesintisi sağkalım oranını düşürür.",
          ),
          CardiopulmonaryResuscitationItem(
            title: "RESÜSİTASYONDA İLAÇ KULLANIM ÖNCELİKLERİ",
            description: "Adrenalin tüm arrest ritimlerinde vazgeçilmezdir; Amiodaron sadece şoka dirençli VF/VT vakalarında kullanılır.",
            additionalInfo: "Damar yolu açılamazsa IO (intraosseöz) yol ilk tercihtir.",
          ),
          CardiopulmonaryResuscitationItem(
            title: "ETCO2 DEĞERLERİ VE PROGNOSTİC GÖSTERGELER",
            description: "<10 mmHg kötü prognoz; >20 mmHg ise ROSC olasılığının yüksek olduğunu gösteren objektif kriterlerdir.",
            additionalInfo: "Kapnografi CPR kalitesinin anlık geri bildirim aracıdır.",
          ),
          CardiopulmonaryResuscitationItem(
            title: "ROSC SONRASI STABİLİZASYON VE REPERFÜZYON STRATEJİSİ",
            description: "Hedeflenmiş sıcaklık yönetimi, hemodinamik optimizasyon ve etiyolojiye yönelik reperfüzyon (PCI) planlanmalıdır.",
            additionalInfo: "Bütünsel bir bakım süreci nörolojik hasarı minimize eder.",
          ),
        ],
      ),
    ];
  }
}
