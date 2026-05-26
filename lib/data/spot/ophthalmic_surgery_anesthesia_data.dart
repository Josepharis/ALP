import 'package:flutter/material.dart';

class OphthalmicSurgeryAnesthesiaItem {
  final String title;
  final String description;
  final String? subtitle;
  final String? additionalInfo;

  OphthalmicSurgeryAnesthesiaItem({
    required this.title,
    required this.description,
    this.subtitle,
    this.additionalInfo,
  });
}

class OphthalmicSurgeryAnesthesiaCategory {
  final String categoryName;
  final List<OphthalmicSurgeryAnesthesiaItem> items;

  OphthalmicSurgeryAnesthesiaCategory({
    required this.categoryName,
    required this.items,
  });
}

class OphthalmicSurgeryAnesthesiaData {
  static List<OphthalmicSurgeryAnesthesiaCategory>
      getOphthalmicSurgeryAnesthesiaData(BuildContext context) {
    return [
      OphthalmicSurgeryAnesthesiaCategory(
        categoryName: 'İntraoküler Basınç (İOB) Dinamikleri',
        items: [
          OphthalmicSurgeryAnesthesiaItem(
            title: "NORMAL İOB DEĞERLERİ VE ARALIĞI (12-20 MMHG)",
            description: "Sağlıklı bir bireyde intraoküler basınç (İOB) normalde 12 ile 20 mmHg arasında stabil kalır.",
            additionalInfo: "Bu basıncın korunması retina perfüzyonu ve gözün anatomik bütünlüğü için kritiktir.",
          ),
          OphthalmicSurgeryAnesthesiaItem(
            title: "GÖZ HAREKETLERİNİN İOB ÜZERİNDEKİ ETKİSİ",
            description: "Basit bir göz kırpma basıncı +5 mmHg artırırken, şiddetli şaşı bakma veya göz kısma 50 mmHg'ye kadar yükseltebilir.",
            additionalInfo: "Ekstraoküler kasların kasılması glob üzerindeki basıyı doğrudan artırır.",
          ),
          OphthalmicSurgeryAnesthesiaItem(
            title: "VOLATİL AJANLARIN İOB ÜZERİNDEKİ ETKİSİ",
            description: "İnhalasyon ajanları hem sistemik kan basıncını düşürerek hem de ekstraoküler kasları gevşeterek İOB'u azaltır.",
            additionalInfo: "Bu ajanlar göz cerrahisi sırasında düşük İOB sağlamak için avantajlıdır.",
          ),
          OphthalmicSurgeryAnesthesiaItem(
            title: "IV AJANLAR VE KETAMİNİN ÖZEL DURUMU",
            description: "Çoğu intravenöz anestetik İOB'u düşürürken, Ketamin sempatik aktivasyon ve göz kası tonusu artışı nedeniyle İOB'u artırabilir.",
            subtitle: "Ketaminli indüksiyonlarda basınç artışına karşı dikkatli olunmalıdır",
            additionalInfo: "Propofol, tiyopental ve etomidat İOB'u belirgin şekilde düşürür.",
          ),
          OphthalmicSurgeryAnesthesiaItem(
            title: "SÜKSİNİLKOLİN VE İOB ARTIŞI (+5-10 MMHG)",
            description: "Süksinilkolin kullanımı sonrasında ekstraoküler kaslardaki tonik kasılma nedeniyle basınçta 5-10 dakikalık bir yükselme izlenir.",
            additionalInfo: "Hücre dışı kalsiyum akışı ve koryoidal vazodilatasyon da bu artışta rol oynar.",
          ),
          OphthalmicSurgeryAnesthesiaItem(
            title: "NONDEPOLARİZAN NMB AJANLARIN GÜVENLİĞİ",
            description: "Rokuronyum, vekuronyum gibi nondepolarizan nöromüsküler blokörler intraoküler basıncı etkilemezler.",
            additionalInfo: "Basınç artışı istenmeyen açık göz yaralanmalarında tercih edilirler.",
          ),
          OphthalmicSurgeryAnesthesiaItem(
            title: "TOPİKAL ANTİKOLİNERJİKLER VE GLOKOM RİSKİ",
            description: "Göze damlatılan Atropin damlaları midriyazis yaparak kapalı açılı glokomu olan hastalarda basıncı tehlikeli seviyelere çıkarabilir.",
            additionalInfo: "Hümör aközün drenajını bozarak akut glokom krizini tetikleyebilirler.",
          ),
          OphthalmicSurgeryAnesthesiaItem(
            title: "SİSTEMİK ANTİKOLİNERJİKLER VE İOB İLİŞKİSİ",
            description: "İntravenöz yolla verilen Atropin veya Glikoprolat gibi ajanların sistemik dozları İOB artışı ile ilişkili bulunmamıştır.",
            additionalInfo: "Bu ajanlar okülokardiyak refleksten korunmak için güvenle kullanılabilir.",
          ),
        ],
      ),
      OphthalmicSurgeryAnesthesiaCategory(
        categoryName: 'Okülokardiyak Refleks (OKR)',
        items: [
          OphthalmicSurgeryAnesthesiaItem(
            title: "OKR MEKANİZMASI: TRİGEMİNAL (AFF) - VAGAL (EFF)",
            description: "Göz küresine bası veya ekstraoküler kasların traksiyonu ile tetiklenen refleksin afferent yolu Trigeminal (V1), efferent yolu ise Vagus'tur.",
            additionalInfo: "Halk arasında 'Bezemhold-Jarisch benzeri' bir parasempatik aktivasyon oluşturur.",
          ),
          OphthalmicSurgeryAnesthesiaItem(
            title: "OKR'NİN EN SIK İZLENDİĞİ OPERASYONLAR (PEDİATRİK ŞAŞILIK)",
            description: "Refleks en sık pediatrik yaş grubunda gerçekleştirilen şaşılık cerrahilerinde ve retrobulber blok uygulamalarında görülür.",
            additionalInfo: "Özellikle medial rektus kasının traksiyonu en güçlü tetikleyicidir.",
          ),
          OphthalmicSurgeryAnesthesiaItem(
            title: "OKR KLİNİK BULGULARI VE ARİTMİLER",
            description: "Klasik bulgusu bradikardi olup; AV blok, ventriküler ektopiler, asistoli ve diğer ciddi aritmilere de yol açabilir.",
            additionalInfo: "Sürekli EKG monitörizasyonu bu cerrahilerde hayati önem taşır.",
          ),
          OphthalmicSurgeryAnesthesiaItem(
            title: "OKR'DEN KORUNMA VE PREMEDİKASYON STRATEJİLERİ",
            description: "Antikolinerjik premedikasyon (atropin), derin anestezi idamesi ve bazen de retrobulber blok OKR riskini azaltabilir.",
            subtitle: "Ancak unutulmamalıdır ki retrobulber blok uygulamasının kendisi de OKR'yi tetikleyebilir",
            additionalInfo: "IV Atropin 10 mcg/kg dozunda profilaktik olarak kullanılabilir.",
          ),
          OphthalmicSurgeryAnesthesiaItem(
            title: "OKR TEDAVİ BASAMAKLARI VE ACİL MÜDAHALE",
            description: "Aritmi geliştiğinde ilk adım cerrahi manipülasyonun hemen durdurulması ve hastanın ventilasyon/oksijenasyonunun kontrol edilmesidir.",
            subtitle: "Dirençli olgularda IV Atropin ve rektus kasına lokal anestetik enjeksiyonu uygulanır",
            additionalInfo: "Aritmi durduğunda cerraha dikkatli devam etmesi uyarısı yapılmalıdır; refleks yorulabilir bir yapıdadır.",
          ),
        ],
      ),
      OphthalmicSurgeryAnesthesiaCategory(
        categoryName: 'İntraoküler Gaz Ekspansiyonu',
        items: [
          OphthalmicSurgeryAnesthesiaItem(
            title: "VİTREORETİNAL CERRAHİDE GAZ ENJEKSİYONU",
            description: "Retina dekolmanı veya vitreus cerrahilerinde glob içine tamponat amacıyla hava veya SF6/C3F8 gibi gazlar enjekte edilir.",
            additionalInfo: "Bu gazlar retina tabakalarını yerinde tutmak için bir balon görevi görür.",
          ),
          OphthalmicSurgeryAnesthesiaItem(
            title: "N2O (AZOT PROTOKSİT) VE GAZ BALONU ETKİLEŞİMİ",
            description: "Azot protoksit (N2O) kandaki gaz basıncı farkı nedeniyle göz içindeki gaz balonuna diffüze olarak balonun hacmini hızla artırır.",
            subtitle: "%70 N2O kullanımı durumunda 30 dakika içinde balon hacmi yaklaşık 3 katına çıkar ve İOB'u kontrolsüzce yükseltir",
            additionalInfo: "Bu durum retina perfüzyonunu bozarak görme kaybına yol açabilir.",
          ),
          OphthalmicSurgeryAnesthesiaItem(
            title: "N2O KESİLME ZAMANI VE ÖNLEMLER (>=15 DK)",
            description: "Göz içine gaz enjeksiyonundan en az 15 dakika önce N2O kesilmeli ve postoperatif dönemde gaz emilene kadar kullanımı kontrendikedir.",
            subtitle: "Hava için 5 gün, SF6 için 10 gün ve C3F8 için 30 gün boyunca N2O'dan kaçınılmalıdır",
            additionalInfo: "Hastalara bu konuda uyarıcı bileklik takılması güvenli bir yaklaşımdır.",
          ),
        ],
      ),
      OphthalmicSurgeryAnesthesiaCategory(
        categoryName: 'Oftalmik İlaçların Sistemik Etkileri',
        items: [
          OphthalmicSurgeryAnesthesiaItem(
            title: "FENİLEFRİN (%2.5) VE SİSTEMİK TANSİYON ETKİSİ",
            description: "Topikal olarak damlatılan Fenilefrin özellikle çocuk ve yaşlılarda şiddetli hipertansiyon, taşikardi ve aritmiye neden olabilir.",
            additionalInfo: "Sistemik vazokonstriktör etkileri nedeniyle kardiyak hastalar yakından izlenmelidir.",
          ),
          OphthalmicSurgeryAnesthesiaItem(
            title: "EKOTİYOFAT VE PSÖDOKOLİNESTERAZ İNHİBİSYONU",
            description: "İrreversible bir kolinesteraz inhibitörü olan Ekotiyofat, Süksinilkolin etkisini 3-7 haftaya kadar uzatabilen şiddetli psödokolinesteraz eksikliği yapar.",
            additionalInfo: "Bu ilacı kullananlarda Süksinilkolin kullanımı apneyi tehlikeli boyutta uzatır.",
          ),
          OphthalmicSurgeryAnesthesiaItem(
            title: "EPİNEFRİN DAMLA VE DİSRİTMİ RİSKİ",
            description: "Göz içi cerrahide sistemik emilime bağlı olarak gelişen hipertansiyon, taşikardi ve disritmi riski mevcuttur.",
            additionalInfo: "Halojenli anestetikler kullanılıyorsa epinefriine duyarlılık artabilir.",
          ),
          OphthalmicSurgeryAnesthesiaItem(
            title: "TİMOLOL VE BETA-BLOKER YAN ETKİLERİ (BRADİKARDİ)",
            description: "Göz tansiyonunu düşürmek için kullanılan Timolol'ün sistemik emilimi bradikardi ve AV blok gibi kardiyak komplikasyonlara yol açabilir.",
            additionalInfo: "Astımlı hastalarda bronkospazmı da tetikleyebilir.",
          ),
        ],
      ),
      OphthalmicSurgeryAnesthesiaCategory(
        categoryName: 'Oftalmik Cerrahide Genel Anestezi',
        items: [
          OphthalmicSurgeryAnesthesiaItem(
            title: "PREOPERATİF HAZIRLIK VE KOMORBİDİTE TAKİBİ",
            description: "Göz operasyonu geçiren hastalar genellikle ileri yaşta olduğu için kardiyak ve diyabetik durumları önceden optimize edilmelidir.",
            additionalInfo: "Hastalarda genellikle hipertansiyon ve koroner arter hastalığı eşlik eder.",
          ),
          OphthalmicSurgeryAnesthesiaItem(
            title: "İNDÜKSİYON SIRASINDA İOB KONTROLÜ",
            description: "Derin anestezi sağlandıktan sonra entübasyon yapılarak laringoskopinin yaratacağı İOB artışı baskılanmalıdır.",
            subtitle: "Açık göz yaralanmalarında sch kullanımı tartışmalı olsa da pratik olarak vitreus kaybı pek izlenmez",
            additionalInfo: "İndüksiyonda İOB'u düşüren ajanlar (Propofol vb.) tercih edilmelidir.",
          ),
          OphthalmicSurgeryAnesthesiaItem(
            title: "İNTRAOPERATİF MONİTÖRİZASYON VE MH AYIRIMI",
            description: "EKG ile OKR takibi yapılırken, End-tidal CO2 takibi Malign Hipertermi (MH) olasılığına karşı önemlidir.",
            additionalInfo: "Isı takibi de standart monitörizasyon parçası olmalıdır.",
          ),
          OphthalmicSurgeryAnesthesiaItem(
            title: "ANESTEZİ İDAMESİ VE GÖZ AKİNEZİSİ",
            description: "Başarılı cerrahi için volatil ajanlar ve opioidler ile yeterli NMB düzeyleri sağlanarak gözün tamamen hareketsiz kalması hedeflenir.",
            additionalInfo: "Gözün cerrahi sırasında 'yukarı bakması' (Bell fenomeni) kontrol altına alınmalıdır.",
          ),
          OphthalmicSurgeryAnesthesiaItem(
            title: "POBK PROFİLAKSİSİ VE KOMBİNE TEDAVİ",
            description: "Göz cerrahilerinde Postoperatif Bulantı Kusma (POBK) riski yüksektir; 5-HT3 antagonistleri ve deksametazon sıklıkla kullanılır.",
            subtitle: "Ondansetron/Granisetron ± 8–10 mg Deksametazon standart profilaksidir",
            additionalInfo: "Göz içi basıncın ikincil artışını önlemek için bulantı mutlaka kontrol edilmelidir.",
          ),
          OphthalmicSurgeryAnesthesiaItem(
            title: "EKSTÜBASYON YÖNETİMİ VE LİDOKAİN KULLANIMI",
            description: "Öksürme-ıkınma (valsalva) İOB'u aşırı artıracağı için ekstübasyon orta derinlikte ve lidokain desteği ile yapılmalıdır.",
            subtitle: "Ekstübasyondan 1–2 dakika önce 1.5 mg/kg lidokain IV verilerek havayolu refleksleri yumuşatılabilir",
            additionalInfo: "Pürüzsüz bir uyanma cerrahi dikişlerin stabilitesi için kritiktir.",
          ),
        ],
      ),
      OphthalmicSurgeryAnesthesiaCategory(
        categoryName: 'Retrobulber Blok',
        items: [
          OphthalmicSurgeryAnesthesiaItem(
            title: "RETROBULBER BLOK TEKNİĞİ VE UYGULAMA (25G İĞNE)",
            description: "Alt göz kapağının dış 1/3'ünden 25G iğne ile 3.5 cm derinliğe girilerek 2-5 mL lokal anestetik enjekte edilir.",
            additionalInfo: "Lokal anestetik kas konisi içine verilerek sensoriyel ve motor blok sağlar.",
          ),
          OphthalmicSurgeryAnesthesiaItem(
            title: "BLOKTA TERCİH EDİLEN LOKAL ANESTETİKLER",
            description: "Genellikle %2 lidokain ve %0.75 bupivakain kombinasyonları kullanılır; adrenalin emilimi yavaşlatmak için eklenebilir.",
            additionalInfo: "Blok kalitesini artırmak için hyaluronidaz da eklenebilir.",
          ),
          OphthalmicSurgeryAnesthesiaItem(
            title: "BAŞARILI BLOK KRİTERLERİ VE AKİNEZİ",
            description: "Blok sonrasında gözde tam motor akinezi sağlanması ve okülokardiyak refleksin kaybolması bloğun başarısını gösterir.",
            additionalInfo: "Hastada ağrı duyusu tamamen ortadan kalkar.",
          ),
          OphthalmicSurgeryAnesthesiaItem(
            title: "RETROBULBER BLOK KOMPLİKASYONLARI VE APNE",
            description: "En korkulan komplikasyonlar sinir hasarı, intravasküler enjeksiyon ve 20 dakika sonra gelişebilen geç apnedir.",
            subtitle: "Apne tablosu genellikle 1 saat içinde kendiliğinden düzelir",
            additionalInfo: "Retrobulber kanama durumunda cerrahi kantarotomi gerekebilir.",
          ),
          OphthalmicSurgeryAnesthesiaItem(
            title: "BLOK KONTRENDİKASYONLARI VE MİYOPİ RİSKİ",
            description: "Koagülopati, ileri derecede aksiyel miyopi (glob uzunluğu fazladır) ve açık göz yaralanmasında bloktan kaçınılmalıdır.",
            additionalInfo: "Miyopi olanlarda glob perforasyonu riski belirgin şekilde artmıştır.",
          ),
        ],
      ),
      OphthalmicSurgeryAnesthesiaCategory(
        categoryName: 'Diğer Bölgesel Teknikler',
        items: [
          OphthalmicSurgeryAnesthesiaItem(
            title: "PERİBULBER BLOK VE GÜVENLİK AVANTAJI",
            description: "İğne kas konisinin dışına uygulandığı için optik sinir ve damar yaralanma riski retrobulber bloğa göre daha düşüktür.",
            additionalInfo: "Daha az invaziv bir yöntem olarak kabul edilir.",
          ),
          OphthalmicSurgeryAnesthesiaItem(
            title: "PERİBULBER BLOK DEZAVANTAJI (GEÇ ETKİ)",
            description: "Kas konisinin dışına yapılan enjeksiyon nedeniyle LA diffüzyonu zaman alır ve blok etkisi daha geç başlar.",
            additionalInfo: "Genellikle daha yüksek volümde LA gerektirir.",
          ),
          OphthalmicSurgeryAnesthesiaItem(
            title: "PERİBULBER BLOK UYGULAMA HATTI",
            description: "Lateral kantus ile limbus hattından uygulama yapılır; iki ayrı enjeksiyon noktası tercih edilebilir.",
            additionalInfo: "Fasiyal sinir blokajı genellikle bu teknikle birlikte sağlanır.",
          ),
          OphthalmicSurgeryAnesthesiaItem(
            title: "SUBTENON (EPİSKLERAL) BLOK TEKNİĞİ",
            description: "Tenon fasyasının altına yerleştirilen künt bir kanül yardımıyla lokal anestetiğin peribulber alana verilmesidir.",
            additionalInfo: "Konjonktiva altından girilerek uygulanır.",
          ),
          OphthalmicSurgeryAnesthesiaItem(
            title: "SUBTENON BLOK AVANTAJLARI",
            description: "İğne perforasyonu riski taşımadığı için en güvenli bölgesel tekniklerden biri olarak kabul edilir.",
            additionalInfo: "Minimal invaziv cerrahiler için idealdir.",
          ),
          OphthalmicSurgeryAnesthesiaItem(
            title: "FASİYAL SİNİR BLOĞU VE KAPAK AKİNEZİSİ",
            description: "Orbicularis oculi kasını paralize ederek cerrahi sırasında göz kapağının ani kapanmasını (kırpma) önler.",
            additionalInfo: "Retrobulber blok tek başına kapak hareketlerini durdurmayabilir.",
          ),
          OphthalmicSurgeryAnesthesiaItem(
            title: "NADBATH TEKNİĞİ VE HAVAYOLU RİSKİ",
            description: "Fasiyal sinirin stilomastoid delik çıkışında bloke edilmesi tekniğidir; jedoch glosefaringeal ve vagus sinir blokajı riski taşır.",
            additionalInfo: "Havayolu obstrüksiyonu riski nedeniyle sık tercih edilmez.",
          ),
        ],
      ),
      OphthalmicSurgeryAnesthesiaCategory(
        categoryName: 'Topikal ve Sedasyon',
        items: [
          OphthalmicSurgeryAnesthesiaItem(
            title: "TOPİKAL ANESTEZİ KULLANIM ALANLARI",
            description: "İnvaziv olmayan katarakt (fakoemülsifikasyon) gibi yüzeysel işlemlerde korneaya damlatılan damlalarla anestezi sağlanabilir.",
            additionalInfo: "Hasta kooperasyonu bu teknikte hayati önem taşır.",
          ),
          OphthalmicSurgeryAnesthesiaItem(
            title: "DERİN SEDASYON RİSKLERİ VE KAÇINILACAKLAR",
            description: "Göz cerrahisinde derin sedasyon hastanın aniden uyanması, hareket etmesi veya horlaması (gözü titretir) nedeniyle önerilmez.",
            additionalInfo: "Göz içi cerrahide ani hareketler kalıcı görme kaybına yol açabilir.",
          ),
          OphthalmicSurgeryAnesthesiaItem(
            title: "HAFİF SEDASYON VE AJAN KOMBİNASYONLARI",
            description: "Midazolam 1-2 mg ve düşük doz opioid kombinasyonları (remifentanil vb.) konfor için tercih edilebilir.",
            additionalInfo: "Propofol veya Etomidat ile desteklenen hafif 'conscious sedation' teknikleri uygulanabilir.",
          ),
        ],
      ),
    ];
  }
}
