import 'package:flutter/material.dart';

class SpinalEpiduralCaudalBlocksItem {
  final String title;
  final String description;
  final String? subtitle;
  final String? additionalInfo;

  SpinalEpiduralCaudalBlocksItem({
    required this.title,
    required this.description,
    this.subtitle,
    this.additionalInfo,
  });
}

class SpinalEpiduralCaudalBlocksCategory {
  final String categoryName;
  final List<SpinalEpiduralCaudalBlocksItem> items;

  SpinalEpiduralCaudalBlocksCategory({
    required this.categoryName,
    required this.items,
  });
}

class SpinalEpiduralCaudalBlocksData {
  static List<SpinalEpiduralCaudalBlocksCategory>
      getSpinalEpiduralCaudalBlocksData(BuildContext context) {
    return [
      SpinalEpiduralCaudalBlocksCategory(
        categoryName: 'Anatomi',
        items: [
          SpinalEpiduralCaudalBlocksItem(
            title: "VERTEBRA SAYILARI VE OMURGA DİZİLİMİ (7C-12T-5L-5S)",
            description: "İnsan omurgası 7 servikal, 12 torakal, 5 lumbal ve 5 sakral vertebradan oluşur.",
            additionalInfo: "L5-S1 arası lumbosakral açı nedeniyle spinal iğne girişi için en geniş aralıklardan biridir.",
          ),
          SpinalEpiduralCaudalBlocksItem(
            title: "İĞNE GİRİŞİNDE GEÇİLEN ANATOMİK TABAKALAR",
            description: "Sırasıyla cilt, cilt altı, supraspinoz ligaman, interspinoz ligaman, ligamentum flavum ve epidural boşluk geçilir.",
            additionalInfo: "Dura mater geçildiğinde BOS gelişi ile spinal boşluğa girildiği teyit edilir.",
          ),
          SpinalEpiduralCaudalBlocksItem(
            title: "SPİNAL KORD SONLANMASI VE YAŞA GÖRE FARKLILIKLAR (L1-L3)",
            description: "Spinal kord (medulla spinalis) erişkinlerde L1 seviyesinde, çocuklarda ise L3 seviyesinde sonlanmaktadır.",
            additionalInfo: "İğne travmasından kaçınmak için bu seviyelerin altından (L3-L4 veya L4-L5) giriş yapılmalıdır.",
          ),
          SpinalEpiduralCaudalBlocksItem(
            title: "DURAL KESE SONLANMASI VE SAKRAL ANATOMİ (S2-S3)",
            description: "Dural kese erişkinlerde S2 seviyesinde, çocuklarda ise S3 seviyesinde sonlanır.",
            additionalInfo: "Kaudal blok yapılırken dural poşun delinmemesi için bu mesafe akılda tutulmalıdır.",
          ),
          SpinalEpiduralCaudalBlocksItem(
            title: "ARTERİA RADİKÜLARİS MAGNA (ADAMKIEWICZ) VE BESLENME",
            description: "Adamkiewicz arteri, spinal kordun anterior alt 2/3 kısmının ana kanlanmasını sağlar.",
            additionalInfo: "Genellikle T9-L2 segmentleri arasından çıkar; hasarı iskemiye yol açabilir.",
          ),
        ],
      ),
      SpinalEpiduralCaudalBlocksCategory(
        categoryName: 'Etki Mekanizması',
        items: [
          SpinalEpiduralCaudalBlocksItem(
            title: "DİFERANSİYEL BLOK SIRALAMASI VE SİNİR LİFİ TİPLERİ",
            description: "Blokaj sırası sempatik lifler (en hızlı), duyusal lifler ve en son motor lifler şeklindedir.",
            additionalInfo: "Sempatik blok düzeyi sensoryal düzeyin 2-6 segment üzerinde seyreder.",
          ),
          SpinalEpiduralCaudalBlocksItem(
            title: "KARDİYAK AKSELERATÖR LİFLER (T1-T4) VE HEMODİNAMİ",
            description: "T1-T4 segmentlerinden çıkan sempatik liflerin blokajı bradikardi ve kan basıncında düşüşe neden olur.",
            subtitle: "Hipotansiyonu önlemede sadece sıvı yükleme yetersiz kalabilir; Efedrin/Kalsiyum gibi ajanlar gerekebilir",
            additionalInfo: "Bu lifler ventrikül kontraktilitesini ve kalp hızını artırır.",
          ),
          SpinalEpiduralCaudalBlocksItem(
            title: "FRENIK SİNİR (C3-C5) VE YÜKSEK BLOKTA SOLUNUM ETKİLERİ",
            description: "Blokajın C3-C5 seviyelerine yükselmesi frenik siniri tutarak diyafram paralizisine ve solunum yetmezliğine yol açar.",
            additionalInfo: "Bu durum acil entübasyon ve solunum desteği gerektiren bir tablodur.",
          ),
          SpinalEpiduralCaudalBlocksItem(
            title: "SEMPATİK BLOK (T5-L1) VE GİS MOTİLİTESİ İLİŞKİSİ",
            description: "T5-L1 arası sempatik blokaj, parasempatik tonusun (vagal) artmasına ve barsak motilitesinin hızlanmasına neden olur.",
            additionalInfo: "Vagal aktivite artışı bazen bradikardi ve bulantı ile birlikte seyredebilir.",
          ),
          SpinalEpiduralCaudalBlocksItem(
            title: "SAKRAL BLOK (S2-S4) VE İDRAR RETANSİYONU MEKANİZMASI",
            description: "Sakral S2-S4 liflerinin blokajı mesane detrusor kası fonksiyonunu bozarak idrar retansiyonuna yol açar.",
            additionalInfo: "Hastalar idrar yapma hissini kaybedebilirler; bu derlenmede önemli bir kriterdir.",
          ),
          SpinalEpiduralCaudalBlocksItem(
            title: "CERRAHİ STRES YANITI VE REJYONAL ANESTEZİ ETKİSİ",
            description: "Spinal ve epidural anestezi, cerrahi travmaya bağlı gelişen endokrin ve metabolik stres yanıtını anlamlı ölçüde baskılar.",
            additionalInfo: "Hücresel immünite korunur ve tromboembolik olay riski azalır.",
          ),
        ],
      ),
      SpinalEpiduralCaudalBlocksCategory(
        categoryName: 'Kontrendikasyonlar',
        items: [
          SpinalEpiduralCaudalBlocksItem(
            title: "REJYONAL ANESTEZİ İÇİN KESİN KONTRENDİKASYONLAR",
            description: "Hasta reddi, koagülopati, giriş yerinde enfeksiyon, tedavi edilmemiş ciddi hipovolemi ve intrakraniyal basınç artışıdır.",
            additionalInfo: "Koagülopati varlığında hematom riski nedeniyle işlemden kesinlikle kaçınılmalıdır.",
          ),
          SpinalEpiduralCaudalBlocksItem(
            title: "GÖRECELİ KONTRENDİKASYONLAR VE KLİNİK RİSK ANALİZİ",
            description: "Ciddi aort veya mitral darlık, önceden var olan nörolojik defisit ve demiyelinizan hastalıklar (örn: MS) sayılabilir.",
            additionalInfo: "Kardiyak darlıklarda preload kaybı ölümcül hipotansiyona yol açabilir.",
          ),
        ],
      ),
      SpinalEpiduralCaudalBlocksCategory(
        categoryName: 'Antikoagülan İlaçlar',
        items: [
          SpinalEpiduralCaudalBlocksItem(
            title: "WARFARİN KULLANIMI VE INR TAKİBİ",
            description: "Warfarin kullanan hastalarda bloke girişmeden önce mutlaka INR'nin normal sınırlarda olduğu teyit edilmelidir.",
            additionalInfo: "INR >1.4 değerlerinde nöraksiyal blok önerilmez.",
          ),
          SpinalEpiduralCaudalBlocksItem(
            title: "ASPİRİN VE NSAİİ GRUBU İLAÇLARIN RİSK DÜZEYİ",
            description: "Aspirin ve NSAİİ kullanımı tek başına epidural hematom riskini anlamlı artırmaz; işlem için engel teşkil etmezler.",
            additionalInfo: "Ancak diğer antikoagülanlarla kombine edildiklerinde risk katlanır.",
          ),
          SpinalEpiduralCaudalBlocksItem(
            title: "KLOPİDOGREL (7 GÜN) VE TİKLOPİDİN (14 GÜN) KESİLME SÜRELERİ",
            description: "Girişim öncesinde Klopidogrel (Plavix) 7 gün, Tiklopidin ise 14 gün önce kesilmiş olmalıdır.",
            additionalInfo: "Bu süreler trombosit fonksiyonlarının geri dönmesi için gereken minimum sürelerdir.",
          ),
          SpinalEpiduralCaudalBlocksItem(
            title: "FRAKSİYONE OLMAYAN HEPARİN (SC) VE MİNİDOZ UYGULAMASI",
            description: "Günde iki kez 5000 ünite subkutan heparin verilmesi anestezi uygulaması için engel değildir.",
            additionalInfo: "Ancak son IV dozun üzerinden 4-6 saat geçmeden dural girişim yapılmamalıdır.",
          ),
          SpinalEpiduralCaudalBlocksItem(
            title: "LMWH (DÜŞÜK MOLEKÜL AĞIRLIKLI HEPARİN) VE KATETER YÖNETİMİ",
            description: "Tedavi edici doz LMWH alanlarda işlem 24 saat ertelenmelidir; kateter çekimi ise doza göre 10-12 saat sonra yapılabilir.",
            subtitle: "Kanlı bir girişim olması durumunda postoperatif ilk LMWH dozu 24 saat ertelenmelidir",
            additionalInfo: "Kateter çekildikten 2 saat sonra yeni doz LMWH başlanabilir.",
          ),
          SpinalEpiduralCaudalBlocksItem(
            title: "TROMBOLİTİK VE FİBRİNOLİTİK AJANLARIN KESİN ENGELİ",
            description: "Organ doku plazminojen aktivatörü gibi trombolitik alan hastalarda nöraksiyal blokaj kesin kontrendikedir.",
            additionalInfo: "Kanama ve kontrolsüz hematom riski bu ajanlarla aşırı yüksektir.",
          ),
        ],
      ),
      SpinalEpiduralCaudalBlocksCategory(
        categoryName: 'Teknik Notlar',
        items: [
          SpinalEpiduralCaudalBlocksItem(
            title: "YÜZEY ANATOMİSİ VE KRİTİK İŞARET NOKTALARI (L4-L5, T7)",
            description: "C7 en belirgin çıkıntıdır; skapula alt ucu T7, krista iliaka hattı (Tuffier hattı) L4-L5 aralığını gösterir.",
            subtitle: "Spina iliaka posterior superior (SIPS) seviyesi S2'ye denk gelir",
            additionalInfo: "L4-L5 hattı gebelerde uterus büyüklüğü nedeniyle biraz daha yukarı kayabilir.",
          ),
          SpinalEpiduralCaudalBlocksItem(
            title: "POZİSYONLANDIRMA TEKNİKLERİ VE HASTA KONFORU",
            description: "Oturur pozisyon, lateral dekübit (yan yatış) ve nadiren jackknife pozisyonları kullanılır.",
            additionalInfo: "Hastanın çenesini göğsüne yaslayarak 'kedi sırtı' yapması iğne girişini kolaylaştırır.",
          ),
          SpinalEpiduralCaudalBlocksItem(
            title: "PARAMEDİAN VE ORTA HAT YAKLAŞIM FARKLILIKLARI",
            description: "Orta hat ligamanları geçerek giderken; paramedian yaklaşımda supraspinoz ve interspinoz ligamanlar bypass edilir.",
            additionalInfo: "Yaşlılarda interspinoz ligaman kalsifikasyonu varsa paramedian yaklaşım hayat kurtarıcıdır.",
          ),
        ],
      ),
      SpinalEpiduralCaudalBlocksCategory(
        categoryName: 'Spinal Anestezi',
        items: [
          SpinalEpiduralCaudalBlocksItem(
            title: "SPİNAL İĞNE TİPLERİ: QUINCKE VS WHITACRE/SPROTTE",
            description: "Quincke uçlu iğneler dokuyu keserken; Whitacre ve Sprotte uçlu iğneler dokuyu ayırarak (non-cutting) ilerler.",
            additionalInfo: "Kalem uçlu (Pencil point) iğnelerle PDPH riski daha düşüktür.",
          ),
          SpinalEpiduralCaudalBlocksItem(
            title: "BOS BARİSİTESİ (1.003-1.008) VE İLAÇ DAĞILIMI",
            description: "Lokal anesteziğin BOS'a göre yoğunluğu barisite olarak tanımlanır; normal barisite 1.003-1.008 arasındadır.",
            subtitle: "Dextroz eklenirse hiperbarik, steril su eklenirse hipobarik ajan elde edilir",
            additionalInfo: "Hiperbarik ajanlar yer çekimiyle daha aşağı seviyelere çökerler.",
          ),
          SpinalEpiduralCaudalBlocksItem(
            title: "LOKAL ANESTETİK SEÇİMİ VE KORUYUCUSUZ AJAN ÖNEMİ",
            description: "Nörotoksisiteyi önlemek amacıyla mutlaka koruyucusuz (preservative-free) lokal anestetikler seçilmelidir.",
            subtitle: "Yüksek konsantrasyonlu lidokain (%5), Cauda Equina Sendromu riski nedeniyle tercih edilmez",
            additionalInfo: "Bupivakain spinal kullanımda en sık tercih edilen ajandır.",
          ),
          SpinalEpiduralCaudalBlocksItem(
            title: "EPİNEFRİN ADELANMASI VE ETKİ SÜRESİNİN UZAMASI",
            description: "Lokal anestetiğe epinefrin eklenmesi vazokonstriksiyon yaparak emilmeyi yavaşlatır ve etki süresini uzatır.",
            additionalInfo: "Bu uzama Tetrakainde %50'yi bulurken Bupivakainde daha sınırlıdır.",
          ),
        ],
      ),
      SpinalEpiduralCaudalBlocksCategory(
        categoryName: 'Epidural Anestezi',
        items: [
          SpinalEpiduralCaudalBlocksItem(
            title: "EPİDURAL İĞNE TİPLERİ: TUOHY VE CRAWFORD",
            description: "Tuohy iğnesi kavisli ucuyla kateter yönlendirmeyi kolaylaştırır; Crawford ise daha ince ve keskindir.",
            additionalInfo: "Hava veya serumla 'Direnç Kaybı' (LOR) yöntemiyle epidural boşluk bulunur.",
          ),
          SpinalEpiduralCaudalBlocksItem(
            title: "EPİDURAL KATETER YERLEŞİMİ VE İLERLETME MESAFESİ (2-6 CM)",
            description: "Epidural kateter, boşluğa ulaşıldıktan sonra iğne içinden yaklaşık 2-6 cm ilerletilmelidir.",
            additionalInfo: "Kateterin fazla ilerletilmesi damara girmesine veya tek taraflı bloğa yol açabilir.",
          ),
          SpinalEpiduralCaudalBlocksItem(
            title: "SEGMENTER DOZ HESAPLAMASI VE VOLÜM YÖNETİMLERİ",
            description: "İstenen blok yüksekliği için segment başına yaklaşık 1-2 mL lokal anestetik gerekli kabul edilir.",
            additionalInfo: "L2-L3'ten girildiğinde T10 bloğu için yaklaşık 10-15 mL hacim gerekir.",
          ),
          SpinalEpiduralCaudalBlocksItem(
            title: "SOLÜSYON PH DENGELENMESİ VE BİKARBONAT EKLEME KISITI",
            description: "10 mL LA'ya 1 mEq NaHCO3 eklenerek pH yükseltilebilir; bu ilacın başlangıcını hızlandırır.",
            subtitle: "Bupivakain pH 6.8 üzerine çıktığında kristalizasyon nedeniyle çöker; bikarbonat eklenmemelidir",
            additionalInfo: "Lidokain ve kloroprokain alkalizasyon için uygundur.",
          ),
        ],
      ),
      SpinalEpiduralCaudalBlocksCategory(
        categoryName: 'Kaudal Anestezi',
        items: [
          SpinalEpiduralCaudalBlocksItem(
            title: "KAUDAL BLOK ENDİKASYONLARI VE PEDİATRİK KULLANIM",
            description: "Pediatrik cerrahide postoperatif analjezi sağlamak için en popüler rejyonal yöntemdir.",
            additionalInfo: "Hemoroid cerrahisi ve sakral girişimlerde erişkinlerde de kullanılabilir.",
          ),
          SpinalEpiduralCaudalBlocksItem(
            title: "SAKRAL HİATUS GİRİŞİ VE TEKNİK UYGULAMA",
            description: "Sakrokoksigeal membranın delinmesiyle sakral kanala girilir; sakral hiatusun bulunması anahtardır.",
            additionalInfo: "Ponksiyon yapılırken 'pop' sesi ve direnç kaybı hissedilir.",
          ),
        ],
      ),
      SpinalEpiduralCaudalBlocksCategory(
        categoryName: 'Komplikasyonlar',
        items: [
          SpinalEpiduralCaudalBlocksItem(
            title: "YÜKSEK SPİNAL VE TOTAL SPİNAL KLİNİK TABLOSU",
            description: "Bradikardi, hipotansiyon ve solunum durması ile karakterize acil bir durumdur.",
            additionalInfo: "Kranial sinir tutulumu (fasyal paralizi vb.) eklenirse total spinal olarak isimlendirilir.",
          ),
          SpinalEpiduralCaudalBlocksItem(
            title: "İDRAR RETANSİYONU VE SAKRAL SİNİR BLOKAJI (S2-S4)",
            description: "Otonomik blokaj nedeniyle mesane detrusor kasının gevşemesi idrar retansiyonuna yol açar.",
            additionalInfo: "Lokal anesteziğin etkisi geçene kadar hastaların takibi şarttır.",
          ),
          SpinalEpiduralCaudalBlocksItem(
            title: "POSTDURAL PONKSİYON BAŞAĞRISI VE KAN YAMASI (15-20 ML)",
            description: "BOS kaçağı nedeniyle beyin sarkması (traction) sonucu oluşan pozisyonel karakterde bir baş ağrısıdır.",
            subtitle: "Epidural boşluğa 15-20 mL otolog kan verilerek yapılan kan yaması 'altın standart' tedavidir",
            additionalInfo: "Genellikle işlemden 12-72 saat sonra ortaya çıkar.",
          ),
          SpinalEpiduralCaudalBlocksItem(
            title: "SPİNAL/EPİDURAL HEMATOM VE ACİL DEKOMPRESYON (<=12 SA)",
            description: "Ani başlayan sırt ağrısı ve progresif motor blok ile kendini gösteren cerrahi acil bir durumdur.",
            subtitle: "Halıcı ve kalıcı hasarı önlemek için ilk 8-12 saat içinde cerrahi dekompresyon (laminektomi) hayati önem taşır",
            additionalInfo: "Görülme sıklığı epiduralde (1:150.000) spinalden bir miktar daha fazladır.",
          ),
          SpinalEpiduralCaudalBlocksItem(
            title: "EPİDURAL ABSE VE EN SIK GÖRÜLEN PATOJENLER",
            description: "Kateter enfeksiyonu sonucu gelişen tablodur; en sık etkenler S. aureus ve S. epidermidis'tir.",
            additionalInfo: "Menenjit eşlik edebilir; hızlı antibiyoterapi ve cerrahi drenaj gerekebilir.",
          ),
          SpinalEpiduralCaudalBlocksItem(
            title: "GEÇİCİ NÖROLOJİK SEMPTOMLAR (TNS) VE LİDOKAİN İLİŞKİSİ",
            description: "Blok çözüldükten sonra gelişen, uyluk ve kalçada ağrı ile seyreden bir tablodur; en sık hiperbarik lidokainle görülür.",
            additionalInfo: "Kalıcı hasar bırakmaz ancak hasta konforunu ciddi bozar.",
          ),
          SpinalEpiduralCaudalBlocksItem(
            title: "LİDOKAİN NÖROTOKSİSİTESİ VE MESANE-BARSAK DİSFONKSİYONU",
            description: "Özellikle kateter uygulamalarında ilacın yüksek konsantrasyonda birikmesi sinir hasarı (Cauda Equina Sendromu) yapabilir.",
            additionalInfo: "Kalıcı mesane/barsak kontrol kaybına yol açabilen ağır bir komplikasyondur.",
          ),
        ],
      ),
    ];
  }
}
