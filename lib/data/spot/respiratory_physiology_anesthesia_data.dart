import 'package:flutter/material.dart';

class RespiratoryPhysiologyAnesthesiaItem {
  final String title;
  final String description;
  final String? subtitle;
  final String? additionalInfo;

  RespiratoryPhysiologyAnesthesiaItem({
    required this.title,
    required this.description,
    this.subtitle,
    this.additionalInfo,
  });
}

class RespiratoryPhysiologyAnesthesiaCategory {
  final String categoryName;
  final List<RespiratoryPhysiologyAnesthesiaItem> items;

  RespiratoryPhysiologyAnesthesiaCategory({
    required this.categoryName,
    required this.items,
  });
}

class RespiratoryPhysiologyAnesthesiaData {
  static List<RespiratoryPhysiologyAnesthesiaCategory>
      getRespiratoryPhysiologyAnesthesiaData(BuildContext context) {
    return [
      RespiratoryPhysiologyAnesthesiaCategory(
        categoryName: 'Fonksiyonel Respiratuvar Anatomi',
        items: [
          RespiratoryPhysiologyAnesthesiaItem(
            title: "GÖĞÜS KAFESİ VE SOLUNUM KASLARI (DİYAFRAM)",
            description: "Diyafram, göğüs içi hacim değişikliklerinin %75'inden sorumlu olan temel inspirasyon kasıdır.",
            subtitle: "Normal solunum sırasında inspirasyon aktif (diyafram + interkostal kaslar), ekspirasyon ise pasiftir",
            additionalInfo: "Zorlu veya eforlu inspirasyon durumlarında pektoral kaslar, skalen kaslar ve sternokleidomastoid (SCM) kası yardımcı olarak devreye girer.",
          ),
          RespiratoryPhysiologyAnesthesiaItem(
            title: "EFORLU SOLUNUM VE HAVA YOLU KASLARI",
            description: "Eforlu solunumda abdominal ve interkostal kaslar aktif olarak ekspirasyona katılırlar.",
            subtitle: "Faringeal kaslar, uyku ve anestezi sırasında hava yolu açıklığını korumada hayati rol oynar",
            additionalInfo: "Dil kökü ve farenks kaslarının gevşemesi, özellikle obstrüktif uyku apnesi olan hastalarda veya anestezi indüksiyonu sonrası tıkanıklığın ana sebebidir.",
          ),
          RespiratoryPhysiologyAnesthesiaItem(
            title: "TRAKEOBRONŞİAL AĞAÇ VE KARİNA ANATOMİSİ",
            description: "Trakea, krikoid kıkırdağın alt kenarından karinaya kadar uzanan, yaklaşık 10–13 cm uzunluğunda tüp şeklinde bir yapıdır.",
            subtitle: "Sternal açı hizasında bulunan karina, trakeanın sağ ve sol ana bronşlara ayrıldığı bölgedir",
            additionalInfo: "Trakea çapı erkeklerde (2.3 x 1.8 cm) kadınlara (2.0 x 1.4 cm) göre daha geniştir. En dar yer erkeklerde 1.7 cm, kadınlarda ise 1.3 cm'dir.",
          ),
          RespiratoryPhysiologyAnesthesiaItem(
            title: "BRONŞ ANATOMİSİ VE LOB AYRIMLARI",
            description: "Sağ ve sol ana bronşlar, uzunlukları ve anatomik açıları bakımından belirgin farklılıklar gösterirler.",
            subtitle: "Sağ bronş (2 cm) sol bronşa (5 cm) göre daha kısa, daha geniş ve daha dikey bir açıyla ayrılır",
            additionalInfo: "Sağda üst lob bronşu trakeadan yaklaşık 2 cm (erkek) sonra ayrılırken, solda bu mesafe 5 cm'ye kadar çıkar. Bu durum, tüpün yanlışlıkla sağ bronşa kaçma olasılığını artırır.",
          ),
          RespiratoryPhysiologyAnesthesiaItem(
            title: "BRONŞİYAL JENERASYONLAR VE GAZ DEĞİŞİMİ",
            description: "Trakeadan itibaren hava yolları toplam 23 jenerasyon boyunca bölünerek uç dallara ulaşır.",
            subtitle: "Gaz değişimi temel olarak 17. ile 19. jenerasyon arasındaki respiratuvar bronşiollerde başlar",
            additionalInfo: "Büyük hava yollarının açıklığı total akciğer hacmine bağımlıyken, küçük hava yolları çevre dokuların radyal gerilimi (traction) ile açık tutulur.",
          ),
          RespiratoryPhysiologyAnesthesiaItem(
            title: "ALVEOLLER VE PNÖMOSİT TİPLERİ",
            description: "Akciğerlerde gaz değişiminin yapıldığı en uç birimler olan alveoller 0.05–0.33 mm çapa sahiptir.",
            subtitle: "Tip I pnömositler yüzeyin %90'ını kaplayarak gaz değişimini sağlar; Tip II'ler ise sürfaktan üretir",
            additionalInfo: "Tip II hücreleri ayrıca hasar durumunda bölünebilme ve Tip I hücrelerine dönüşebilme yeteneğine sahip 'kök hücre' benzeri bir rol üstlenirler.",
          ),
          RespiratoryPhysiologyAnesthesiaItem(
            title: "PULMONER VE BRONŞİAL DOLAŞIM SİSTEMLERİ",
            description: "Akciğerlere kan akımı pulmoner (gaz değişimi için) ve bronşiyal (beslenme için) olmak üzere iki ayrı yolla sağlanır.",
            subtitle: "Pulmoner kapillerler yaklaşık 10 µm çapındadır ve içinden tek bir eritrosit geçebilir",
            additionalInfo: "Bronşiyal dolaşım terminal bronşiollere kadar olan duvar yapısını besler. Pulmoner dolaşım ise kalpten gelen tüm debiyi (metabolik ihtiyacı) karşılar.",
          ),
          RespiratoryPhysiologyAnesthesiaItem(
            title: "PULMONER LENFATİK AKIM VE DRENAJ",
            description: "Akciğer interstisyel dokusundaki fazla sıvının uzaklaştırılması, dakikada yaklaşık 20 mL'lik lenfatik akımla sağlanır.",
            additionalInfo: "Lenfatik drenajın bozulması, pulmoner ödem oluşumunda ve akciğer kompliyansının azalmasında önemli bir etkendir.",
          ),
          RespiratoryPhysiologyAnesthesiaItem(
            title: "SOLUNUMUN İNNERVASYONU (FRENİK SİNİR)",
            description: "Diyaframın motor kontrolü C3, C4 ve C5 spinal sinirlerinden köken alan frenik sinir tarafından sağlanır.",
            subtitle: "C5 seviyesi üzerindeki omurilik hasarları spontan solunumu tamamen durdurabilir",
            additionalInfo: "Vagus siniri ise akciğerlerden gelen duyusal uyarıları taşırken, muskarinik reseptörler üzerinden parasempatik bronkokonstriksiyon etkisi yapar.",
          ),
          RespiratoryPhysiologyAnesthesiaItem(
            title: "SEMPATİK İNNERVASYON VE BRONKODİLATASYON",
            description: "T1–T4 seviyelerinden gelen sempatik uyarılar, beta-2 reseptörleri üzerinden bronşlarda genişleme (dilatasyon) sağlar.",
            subtitle: "Pulmoner damarlar alfa-1 (vazokonstriksiyon) ve beta-2 (vazodilatasyon) reseptörlerine sahiptir",
            additionalInfo: "Ayrıca nitrik oksit (NO) aracılı parasempatik sistem üzerinden de pulmoner damarlarda genişleme sağlanabilir.",
          ),
        ],
      ),
      RespiratoryPhysiologyAnesthesiaCategory(
        categoryName: 'Solunum Mekanizması',
        items: [
          RespiratoryPhysiologyAnesthesiaItem(
            title: "SPONTAN SOLUNUM VE BASINÇ DEĞİŞİKLİKLERİ",
            description: "Doğal solunum sırasında göğüs kafesinin genişlemesi sonucu plevra içi basınç negatife düşerek havayı içeri çeker.",
            subtitle: "Ekspiryum sonunda intraplevral basınç –5 cmH₂O iken inspirasyonda –9 cmH₂O'ya kadar düşer",
            additionalInfo: "Transpulmoner basınç (Ptrans = Palv – Pplev), akciğerlerin açık tutulmasını sağlayan temel fark basıncıdır. İnspirasyonda alveolar basınç –3/–4 cmH₂O seviyelerine iner.",
          ),
          RespiratoryPhysiologyAnesthesiaItem(
            title: "MEKANİK VENTİLASYON VE POZİTİF BASINÇ",
            description: "Genel anestezide kullanılan mekanik ventilatörler, spontan solunumun aksine havayı pozitif basınçla akciğerlere iter.",
            subtitle: "Tidal hacim (VT) pozitif basınçla oluşturulur; ekspirasyon ise basınç kaldırıldığında pasif olarak gerçekleşir",
            additionalInfo: "Pozitif basınçlı ventilasyon venöz dönüşü azaltarak kardiyak debi üzerinde olumsuz etkiler yaratabilir.",
          ),
        ],
      ),
      RespiratoryPhysiologyAnesthesiaCategory(
        categoryName: 'Akciğer Mekanikleri',
        items: [
          RespiratoryPhysiologyAnesthesiaItem(
            title: "KOMPLİYANS (AKCİĞER VE GÖĞÜS DUVARI)",
            description: "Kompliyans, birim basınç değişikliğine karşılık akciğerlerin ne kadar genişleyebildiğinin bir ölçüsüdür.",
            subtitle: "Normal akciğer kompliyansı (CL) 100-150 mL/cmH₂O, göğüs duvarı (CW) 200 mL/cmH₂O'dur",
            additionalInfo: "Total sistem kompliyansı (~100 mL/cmH2O), bu iki değerin birbirine seri bağlı yaylar gibi etkileşimiyle belirlenir.",
          ),
          RespiratoryPhysiologyAnesthesiaItem(
            title: "YÜZEY GERİLİMİ VE LAPLACE KANUNU",
            description: "Alveollerin iç yüzeyindeki gerilim, Laplace kanununa (P = 2T / r) göre küçük alveollerin sönme eğilimini artırır.",
            subtitle: "Tip II hücrelerinden salınan sürfaktan, yüzey gerilimini azaltarak küçük alveolleri kollapsa karşı korur",
            additionalInfo: "Sürfaktan eksikliğinde (prematürelik vb.) akciğerleri şişirmek çok büyük basınç gerektirir.",
          ),
          RespiratoryPhysiologyAnesthesiaItem(
            title: "AKCİĞER HACİMLERİ VE FRK DEĞİŞİKLİKLERİ",
            description: "Fonksiyonel Rezidüel Kapasite (FRK), normal bir nefes verişten sonra akciğerlerde kalan hava miktarıdır.",
            subtitle: "Obezite, supin pozisyon ve genel anestezi (GA), FRK değerini belirgin şekilde düşürür",
            additionalInfo: "FRK supinde 0.8–1 L, GA indüksiyonunda ise ekstra 0.4–0.5 L azalır. FRK'nın azalması oksijen rezervinin azalması ve atelektazi riski demektir.",
          ),
          RespiratoryPhysiologyAnesthesiaItem(
            title: "KAPANMA KAPASİTESİ VE YAŞ İLİŞKİSİ",
            description: "Kapanma kapasitesi, küçük hava yollarının sönmeye başladığı hacimdir ve yaşla birlikte doğrusal olarak artar.",
            additionalInfo: "44 yaşında supin pozisyonda, 66 yaşında ise ayakta dururken kapanma kapasitesi FRK'yı aşabilir; bu durum gaz değişimini bozar.",
          ),
          RespiratoryPhysiologyAnesthesiaItem(
            title: "HAVA YOLU DİRENCİ VE AKIM TİPLERİ",
            description: "Hava kanallarının akıma karşı gösterdiği engeldir ve normalde 0.5–2 cmH₂O/L/sn civarındadır.",
            subtitle: "Hava yolu direncinin en yüksek olduğu bölge ana bronşlar değil, orta boy bronşlardır",
            additionalInfo: "Akım tipi Reynolds sayısı (Re) ile belirlenir: Re < 1000 ise laminer (sessiz), Re > 1500 ise türbülan (gürültülü) akım görülür.",
          ),
          RespiratoryPhysiologyAnesthesiaItem(
            title: "DİNAMİK HAVA YOLU KOLLAPSI",
            description: "Zorlu bir ekspirasyon sırasında göğüs içi basıncın hava yolu içi basıncı aşması sonucu bronşların erken sönmesidir.",
            additionalInfo: "KOAH gibi hastalıklarda 'dudak büzme' mekanizması uygulanarak hava yolu içi basınç artırılır ve bu kollaps geciktirilir.",
          ),
        ],
      ),
      RespiratoryPhysiologyAnesthesiaCategory(
        categoryName: 'Ventilasyon – Perfüzyon Dengesi',
        items: [
          RespiratoryPhysiologyAnesthesiaItem(
            title: "V/Q ORANI VE ÖLÜ BOŞLUK HESABI",
            description: "Akciğerlere giden hava (ventilasyon) ile kan (perfüzyon) arasındaki oran idealde 0.8 civarındadır.",
            subtitle: "Gaz değişimi olmayan alanlara ölü boşluk denir ve yetişkinlerde yaklaşık 2 mL/kg (~150 mL) seviyesindedir",
            additionalInfo: "V/Q oranının bozulması hipokseminin en yaygın nedenidir (Şant veya ölü boşluk etkisi).",
          ),
          RespiratoryPhysiologyAnesthesiaItem(
            title: "WEST ZONLARI VE PERFÜZYON DAĞILIMI",
            description: "Akciğer perfüzyonu yerçekimi ve basınç etkileriyle üç ana bölgeye ayrılır.",
            subtitle: "Zon 3, Pa > Pv > PA basınç ilişkisi ile gaz değişiminin ve perfüzyonun en iyi olduğu alt bölgelerdir",
            additionalInfo: "Zon 1'de alveolar basınç (PA) arteriyel basınçtan büyük olduğu için kılcal damarlar sönüktür (ölü boşluk). Zon 4 ise ödem veya atelektazi durumunda görülür.",
          ),
          RespiratoryPhysiologyAnesthesiaItem(
            title: "HİPOKSİK PULMONER VAZOKONSTRİKSİYON (HPV)",
            description: "Akciğer dokusu, hipoksik (havalanmayan) bölgelere giden kan akımını damarları daraltarak azaltır.",
            subtitle: "Uçucu anestezikler (volatil ajanlar) HPV yanıtını inhibe ederek şant miktarını artırabilir",
            additionalInfo: "HPV mekanizması kanın iyi havalanan bölgelere yönlendirilmesini sağlayan koruyucu bir reflekstir.",
          ),
        ],
      ),
      RespiratoryPhysiologyAnesthesiaCategory(
        categoryName: 'Gaz Basınçları ve Alveoler Gaz',
        items: [
          RespiratoryPhysiologyAnesthesiaItem(
            title: "OKSİJEN BASINÇLARI (PAO2 VE PAO2)",
            description: "Deniz seviyesinde oda havası solurken alveollerdeki oksijen basıncı (PAO2) yaklaşık 100 mmHg'dir.",
            subtitle: "Arteriyel kanda normal PaO2 düzeyi 60–100 mmHg aralığındadır",
            additionalInfo: "Beklenen arteriyel oksijen basıncı '120 – yaş/3' formülüyle kabaca hesaplanabilir.",
          ),
          RespiratoryPhysiologyAnesthesiaItem(
            title: "A-A GRADİYENT VE YAŞA BAĞLI DEĞİŞİM",
            description: "Alveol ve arter arasındaki oksijen basınç farkı normalde 15 mmHg'nin altındadır; yaşla birlikte artar.",
            subtitle: "Miks venöz kanda oksijen basıncı (PvO2) yaklaşık 40 mmHg'ye düşer",
            additionalInfo: "Bu farkın artması akciğer parenkim hastalığı veya şant varlığına işaret eder.",
          ),
          RespiratoryPhysiologyAnesthesiaItem(
            title: "KARBONDİOKSİT BASINÇLARI VE ETCO2",
            description: "Arteriyel kanda karbondioksit basıncı (PaCO2) normalde 40 ± 4 mmHg düzeyindedir.",
            subtitle: "End-tidal CO2 (EtCO2) değerinin PaCO2'den yaklaşık 5 mmHg daha düşük olması beklenir",
            additionalInfo: "EtCO2 takibi, ventilasyonun yeterliliği ve metabolik durum hakkında anlık bilgi sağlar.",
          ),
        ],
      ),
      RespiratoryPhysiologyAnesthesiaCategory(
        categoryName: 'Oksijen Taşınması',
        items: [
          RespiratoryPhysiologyAnesthesiaItem(
            title: "HEMOGLOBİN İLE OKSİJEN TAŞIMA KAPASİTESİ",
            description: "Kandaki oksijenin %99'u hemoglobine bağlı olarak taşınır; 1 gram Hb 1.39 mL oksijen bağlar.",
            additionalInfo: "Normal satürasyon ve hemoglobin düzeylerinde arter kanda yaklaşık 19.5 mL/dL oksijen bulunur (CaO2). Dokular bu oksijenin yaklaşık %25'ini kullanır.",
          ),
          RespiratoryPhysiologyAnesthesiaItem(
            title: "OKSİJEN DEPOSU VE PREOKSİJENASYON ETKİSİ",
            description: "Vücudun en büyük oksijen deposu akciğerlerdeki FRK (Fonksiyonel Rezidüel Kapasite) içindeki havadır.",
            subtitle: "%100 oksijen ile 3–5 dakika preoksijenasyon yapmak, apneye tahammül süresini 8-10 dakikaya çıkarabilir",
            additionalInfo: "FRK'daki havanın azot yerine oksijenle doldurulması (denitrojenasyon), zor havayolu yönetiminde kritik zaman kazandırır.",
          ),
        ],
      ),
      RespiratoryPhysiologyAnesthesiaCategory(
        categoryName: 'Karbondioksit Taşınması',
        items: [
          RespiratoryPhysiologyAnesthesiaItem(
            title: "CO2 TAŞINMA YÖNTEMLERİ VE HALDANE ETKİSİ",
            description: "CO2 kanda çözünmüş halde, bikarbonat (en çok) ve karbamino bileşikleri şeklinde taşınır.",
            subtitle: "Haldane etkisi: Hemoglobin oksijeni bıraktığında karbondioksit taşıma kapasitesi artar",
            additionalInfo: "Vücutta normal CO2 üretimi (VCO2) dakikada yaklaşık 200 mL'dir. Akciğerlerde kandan alveola geçiş hızı oksijene göre 20 kat daha fazladır.",
          ),
        ],
      ),
      RespiratoryPhysiologyAnesthesiaCategory(
        categoryName: 'Solunum Kontrol Mekanizmaları',
        items: [
          RespiratoryPhysiologyAnesthesiaItem(
            title: "SOLUNUM MERKEZLERİ (MEDULLA VE PONS)",
            description: "Solunumun temel ritmi beyin sapındaki medulla oblangata'daki nöron grupları tarafından oluşturulur.",
            subtitle: "Dorsal grup nöronlar inspirasyonu, ventral grup nöronlar ise zorlu ekspirasyonu yönetir",
            additionalInfo: "Pons'ta bulunan pnomotaksik ve apnöstik merkezler solunumun derinliğini ve paternini modüle eder.",
          ),
          RespiratoryPhysiologyAnesthesiaItem(
            title: "SANTRAL VE PERİFERİK KEMORESEPTÖRLER",
            description: "Kandaki gaz değişikliklerini algılayan merkezler, solunum merkezine uyarı göndererek ventilasyonu ayarlar.",
            subtitle: "Santral kemoreseptörler BOS içindeki hidrojen (pH) ve CO2 değişimine en duyarlı merkezlerdir",
            additionalInfo: "Periferik kemoreseptörler (özellikle karotid cisim) PaO2 < 50 mmHg'nin altına düştüğünde uyarılır.",
          ),
        ],
      ),
      RespiratoryPhysiologyAnesthesiaCategory(
        categoryName: 'Anestezinin Solunum Sistemi Üzerindeki Etkileri',
        items: [
          RespiratoryPhysiologyAnesthesiaItem(
            title: "FRK VE KAPANMA KAPASİTESİ DEĞİŞİMLERİ",
            description: "Genel anestezi, akciğer hacmini (FRK) düşürürken kapanma kapasitesi ile olan dengeyi şant lehine bozar.",
            additionalInfo: "Bu dengesizlik, soluk yollarının erken sönmesine ve kanda oksijen seviyesinin düşmesine (hipoksemi) yol açar.",
          ),
          RespiratoryPhysiologyAnesthesiaItem(
            title: "VOLATİL AJANLARIN SOLUNUMSAL ETKİLERİ",
            description: "Uçucu anestezikler direkt bronkodilatasyon yaparken aynı zamanda koruyucu HPV refleksini baskılarlar.",
            subtitle: "Yüksek FiO2 kullanımı 'absorpsiyon atelektazisi' riskini artırabilir",
            additionalInfo: "Ayrıca anestezikler alveolar sürfaktan fonksiyonunu da hafifçe baskılayarak atelektazi eğilimini artırır.",
          ),
          RespiratoryPhysiologyAnesthesiaItem(
            title: "SOLUNUM PATERNLERİ VE AJAN ETKİLEŞİMİ",
            description: "Farklı anestezi kombinasyonları hastanın soluma paternini karakteristik olarak değiştirir.",
            subtitle: "Opioidler yavaş ve derin solunuma neden olurken, volatil ajanlar hızlı ve yüzeyel solunum yaptırır",
            additionalInfo: "Karbondioksit uyanıklık eşiği anestezi altında sağa kayar; yani hasta ancak daha yüksek CO2 değerlerinde nefes almaya başlar.",
          ),
        ],
      ),
    ];
  }
}
