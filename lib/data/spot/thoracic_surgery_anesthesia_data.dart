import 'package:flutter/material.dart';

class ThoracicSurgeryAnesthesiaItem {
  final String title;
  final String description;
  final String? subtitle;
  final String? additionalInfo;

  ThoracicSurgeryAnesthesiaItem({
    required this.title,
    required this.description,
    this.subtitle,
    this.additionalInfo,
  });
}

class ThoracicSurgeryAnesthesiaCategory {
  final String categoryName;
  final List<ThoracicSurgeryAnesthesiaItem> items;

  ThoracicSurgeryAnesthesiaCategory({
    required this.categoryName,
    required this.items,
  });
}

class ThoracicSurgeryAnesthesiaData {
  static List<ThoracicSurgeryAnesthesiaCategory>
      getThoracicSurgeryAnesthesiaData(BuildContext context) {
    return [
      ThoracicSurgeryAnesthesiaCategory(
        categoryName: 'Lateral Dekübit Pozisyonu',
        items: [
          ThoracicSurgeryAnesthesiaItem(
            title: "SPONTAN SOLUNUM VE V/Q DENGESİ",
            description: "Uyanık bir hastada lateral pozisyonda dependan (altta kalan) akciğer hem daha iyi havalanır hem de daha iyi kanlanır.",
            additionalInfo: "Yerçekimi etkisiyle altta kalan akciğerin kompliyansı ve perfüzyonu artar, bu da ventilasyon-perfüzyon (V/Q) dengesinin korunmasını sağlar.",
          ),
          ThoracicSurgeryAnesthesiaItem(
            title: "GENEL ANESTEZİ VE POZİTİF BASINÇLI VENTİLASYON",
            description: "Anestezi altında pozitif basınçlı ventilasyona geçildiğinde, hava yolu basıncı üstteki (non-dependan) akciğere kayar.",
            additionalInfo: "Perfüzyon yerçekimiyle altta kalmaya devam ederken ventilasyonun üste kayması, ciddi V/Q uyumsuzluğu ve hipoksemi riskine yol açar.",
          ),
          ThoracicSurgeryAnesthesiaItem(
            title: "HİPOKSEMİYİ ARTIRAN POZİSYONEL FAKTÖRLER",
            description: "Lateral pozisyonda yastık yerleşimi ve torakotomi bölgesi, akciğer mekaniğini bozarak oksijenasyonu olumsuz etkileyebilir.",
            additionalInfo: "Özellikle anestezi derinliğinin yetersizliği ve üst akciğerin cerrahi manevralarla sıkıştırılması hipoksemi tablosunu ağırlaştırır.",
          ),
        ],
      ),
      ThoracicSurgeryAnesthesiaCategory(
        categoryName: 'Açık Pnömotoraks',
        items: [
          ThoracicSurgeryAnesthesiaItem(
            title: "PARADOKSAL SOLUNUM MEKANİZMASI",
            description: "Göğüs kafesi açıkken inspirasyon sırasında hava, açık olan taraftan kapalı olan (sağlam) akciğere doğru hareket eder.",
            subtitle: "Ekspirasyon sırasında ise hava sağlam akciğerden açık olan (ameliyat tarafı) tarafa kayar",
            additionalInfo: "Bu durum solunumsal verimliliği ciddi şekilde düşürür ve 'arka arkaya aynı havanın solunmasına' (pendelluft) neden olur.",
          ),
          ThoracicSurgeryAnesthesiaItem(
            title: "MEDİASTEN HAREKETİ (FLUTTER)",
            description: "Açık pnömotoraksta mediastinal yapılar inspirasyonda aşağı, ekspirasyonda ise yukarı doğru yer değiştirir.",
            additionalInfo: "Mediastenin bu sarkaç hareketi venöz dönüşü engelleyebilir ve kardiyak debiyi düşürerek hemodinamik instabiliteye yol açabilir.",
          ),
        ],
      ),
      ThoracicSurgeryAnesthesiaCategory(
        categoryName: 'Tek Akciğer Ventilasyonu (TAV / OLV)',
        items: [
          ThoracicSurgeryAnesthesiaItem(
            title: "İNTRAPULMONER ŞANT VE HİPOKSEMİ",
            description: "Ameliyat edilen (havalanmayan) akciğerden geçen kanın oksijenlenmeden dönmesi sonucu %20–30 oranında şant oluşur.",
            additionalInfo: "TAV sırasında gelişen bu fizyolojik şant, anestezistin en çok dikkat etmesi gereken hipoksemi kaynağıdır.",
          ),
          ThoracicSurgeryAnesthesiaItem(
            title: "HPV YANITINI İNHİBE EDEN FAKTÖRLER",
            description: "Hipoksik Pulmoner Vazokonstriksiyon (HPV), damarları daraltarak şantı azaltan koruyucu bir mekanizmadır.",
            subtitle: "Çok düşük veya çok yüksek pulmoner arter basıncı (PAP) ve hipokapni HPV yanıtını bozar",
            additionalInfo: "Vazodilatörler, pulmoner enfeksiyon, aşırı düşük/yüksek PaO2 değerleri ve yüksek doz inhalasyon ajanları da HPV'yi baskılayarak hipoksemiyi artırır.",
          ),
          ThoracicSurgeryAnesthesiaItem(
            title: "DEPENDAN AC PERFÜZYONUNU AZALTAN NEDENLER",
            description: "Altta kalan akciğerde (sağlam taraf) gelişen yüksek basınç, kan akımını bozarak oksijenasyonu engeller.",
            subtitle: "Yüksek PEEP/havayolu basıncı ve yetersiz ekspirasyon süresine bağlı gelişen 'intrinsic PEEP' perfüzyonu bozar",
            additionalInfo: "Ayrıca sistemik vazokonstriktör ajanların kullanımı dependan akciğer damarlarını da daraltarak direnci artırabilir.",
          ),
          ThoracicSurgeryAnesthesiaItem(
            title: "TAV SIRASINDA KARBONDİOKSİT (CO2) ATILIMI",
            description: "Tek akciğer ventilasyonu sırasında karbondioksit atılımı, oksijenasyondaki bozulmanın aksine genellikle stabil kalır.",
            additionalInfo: "CO2'nin difüzyon kapasitesinin yüksek olması sayesinde tek akciğerle yapılan yeterli dakika ventilasyonu, PaCO2 düzeyini normal sınırlarda tutabilir.",
          ),
        ],
      ),
      ThoracicSurgeryAnesthesiaCategory(
        categoryName: 'Çift Lümenli Tüp (DLT)',
        items: [
          ThoracicSurgeryAnesthesiaItem(
            title: "DLT BOYUT SEÇİMİ VE CİNSİYET FARKLARI",
            description: "Erişkin hastalarda genellikle kadınlar için 35F, erkekler için ise 37-41F aralığındaki tüpler tercih edilir.",
            additionalInfo: "Boyut seçimi, hastanın boyuna, radyolojik bronş çapına ve trakea genişliğine göre bireyselleştirilmelidir.",
          ),
          ThoracicSurgeryAnesthesiaItem(
            title: "TRAKEA ANATOMİSİ VE YERLEŞİM SINIRLARI",
            description: "Trakea yaklaşık 11–13 cm uzunluğundadır; krikoid kıkırdak (C6) seviyesinden başlayıp karinada (T5) sonlanır.",
            additionalInfo: "DLT yerleşimi sırasında tüpün karinayı geçip hedeflenen ana bronşa tam olarak oturması fiberoptik bronkoskopi ile teyit edilmelidir.",
          ),
          ThoracicSurgeryAnesthesiaItem(
            title: "SAĞ ÇİFT LÜMENLİ TÜP (DLT) ÖZELLİKLERİ",
            description: "Sağ ana bronş çok kısa olduğu için, sağ DLT'lerde üst lobun havalanmasını sağlayacak özel bir açıklık (fenestrasyon) bulunur.",
            additionalInfo: "Sağ tüpün yerleşimi daha zordur ve üst lobu tıkama riski (obstrüksiyon) sol tüpe göre çok daha yüksektir.",
          ),
          ThoracicSurgeryAnesthesiaItem(
            title: "SOL DLT TERCİH EDİLMEYEN KRİTİK DURUMLAR",
            description: "Sol ana bronşta dıştan bası (örneğin aort anevrizması) veya tümör varlığında sol DLT kullanımı kontrendikedir.",
            subtitle: "Sol pnömonektomi, sol akciğer transplantasyonu ve sol ana bronş rezeksiyonlarında sağ DLT tercih edilmelidir",
            additionalInfo: "Bu durumlarda cerrahi sahayı bozmamak ve dikiş hattını korumak için operasyon tarafındaki bronşa tüp yerleştirilmemelidir.",
          ),
          ThoracicSurgeryAnesthesiaItem(
            title: "DLT UYGULAMASINDA GELİŞEBİLECEK KOMPLİKASYONLAR",
            description: "DLT kullanımında en sık karşılaşılan sorunlar tüpün yerinden oynaması ve buna bağlı gelişen ani hipoksemidir.",
            subtitle: "Travmatik larenjit, bronş rüptürü ve cerrahi sırasında tüpün yanlışlıkla dikişle dikilmesi ciddi risklerdir",
            additionalInfo: "Aşırı kaf basıncı bronş mukozasında iskemiye yol açabilir; bu nedenle kaf basınçları minimumda tutulmalıdır.",
          ),
        ],
      ),
      ThoracicSurgeryAnesthesiaCategory(
        categoryName: 'Bronşiyal Bloker Kullanımı',
        items: [
          ThoracicSurgeryAnesthesiaItem(
            title: "BRONŞİYAL BLOKER AVANTAJLARI",
            description: "Operasyon sonrası uzun süreli entübasyon gerekiyorsa, DLT'yi standart bir tüple değiştirmeye gerek bırakmaz.",
            additionalInfo: "Ayrıca küçük çocuklarda ve zor havayolu olan hastalarda standart endotrakeal tüp içerisinden uygulanabilmesi büyük bir avantajdır.",
          ),
          ThoracicSurgeryAnesthesiaItem(
            title: "BRONŞİYAL BLOKER DEZAVANTAJLARI",
            description: "DLT'ye kıyasla aspire edilen veya bloke edilen akciğerin sönmesi (kollapsı) çok daha yavaş gerçekleşir.",
            additionalInfo: "Sürekli fiberoptik bronkoskopi takibi gerektirir çünkü cerrahi manipülasyonlarla yerinden kayma eğilimi yüksektir.",
          ),
        ],
      ),
      ThoracicSurgeryAnesthesiaCategory(
        categoryName: 'Akciğer Rezeksiyonu – Preoperatif Değerlendirme',
        items: [
          ThoracicSurgeryAnesthesiaItem(
            title: "BENİGN AKCİĞER TÜMÖRLERİ (HAMARTOM)",
            description: "Akciğerin iyi huylu kitlelerinin %90'ını kıkırdak, yağ ve epitelyal dokudan oluşan hamartomlar oluşturur.",
            additionalInfo: "Genellikle rastlantısal olarak saptanırlar ve malignite şüphesi yoksa konservatif izlenebilirler.",
          ),
          ThoracicSurgeryAnesthesiaItem(
            title: "MALİGN AKCİĞER TÜMÖRLERİ VE YERLEŞİMLERİ",
            description: "Küçük hücreli ve epidermoid (yassı hücreli) kanserler sıklıkla santral (merkezi) yerleşimli iken, adenokanserler periferiktir.",
            additionalInfo: "Santral kitleler büyük hava yollarına bası yaparak havayolu yönetimi ve DLT seçimini zorlaştırabilir.",
          ),
          ThoracicSurgeryAnesthesiaItem(
            title: "POSTOPERATİF FEV1 HESAPLAMA VE MORTALİTE",
            description: "Tahmini postoperatif FEV1, ameliyat öncesi değerin sağlam kalan akciğer dokusu yüzdesiyle çarpılmasıyla bulunur.",
            subtitle: "Hesaplanan değerin %40'ın altında olması yüksek mortalite; %30'un altı ise ventilatörden ayrılma zorluğu demektir",
            additionalInfo: "Bu hesaplama, rezeksiyon sonrası hastanın solunumsal rezervinin yeterli olup olmayacağını belirlemede en temel kriterdir.",
          ),
          ThoracicSurgeryAnesthesiaItem(
            title: "DİFÜZYON KAPASİTESİ (DLCO) VE RİSK ANALİZİ",
            description: "Akciğerin gaz değişim yüzeyini ölçen DLCO değerinin %40'ın altında olması, ameliyat sonrası komplikasyon riskini artırır.",
            additionalInfo: "Hacim testleri normal olsa bile DLCO düşüklüğü, perioperatif dönemde oksijenasyon sorunu yaşanabileceğini gösterir.",
          ),
          ThoracicSurgeryAnesthesiaItem(
            title: "GAZ DEĞİŞİMİ VE ARTER KAN GAZI PARAMETRELERİ",
            description: "Cerrahi uygunluk için oda havasında PaO2 > 60 mmHg ve PaCO2 < 45 mmHg olması istenir.",
            additionalInfo: "Kronik hiperkapni, postoperatif dönemde solunum merkezi duyarlılığının azalması ve uzamış ventilasyon riskini artırır.",
          ),
          ThoracicSurgeryAnesthesiaItem(
            title: "MAKSİMAL OKSİJEN TÜKETİMİ (VO2 MAX) KAPASİTESİ",
            description: "VO2 max değerinin 20 mL/kg/dk'nın altında olması, cerrahi sonrası yüksek risk faktörü olarak kabul edilir.",
            additionalInfo: "Bu test, kalp ve akciğerin stres altındaki (egzersiz) performansını gösteren en objektif parametredir.",
          ),
        ],
      ),
      ThoracicSurgeryAnesthesiaCategory(
        categoryName: 'İntraoperatif Ventilasyon Yönetimi',
        items: [
          ThoracicSurgeryAnesthesiaItem(
            title: "TAV SIRASINDA VENTİLATÖR AYARLARI",
            description: "Tek akciğer ventilasyonu sırasında akciğeri korumak için 6–8 mL/kg tidal hacim hedeflenmelidir.",
            subtitle: "Atelektaziyi önlemek için dependan akciğere 5–10 cmH2O PEEP uygulanmalıdır",
            additionalInfo: "FiO2 genellikle %50–80 aralığında tutulur; hipoksemi varsa %100'e çıkarılabilir.",
          ),
          ThoracicSurgeryAnesthesiaItem(
            title: "GÜVENLİ HAVAYOLU BASINÇ LİMİTLERİ (PPLAT VE PPEAK)",
            description: "Barotravmayı önlemek için plato basıncı (Pplat) 25 cmH2O, tepe basıncı (Ppeak) ise 35 cmH2O değerini aşmamalıdır.",
            additionalInfo: "Yüksek basınçlar dependan akciğerde ödeme (Sızdıran AC Sendromu) ve enflamasyona yol açabilir.",
          ),
          ThoracicSurgeryAnesthesiaItem(
            title: "AKCİĞER AÇMA (RECRUITMENT) MANEVRASI",
            description: "Sönmüş alanları açmak için 30 cmH2O basınç uygulayarak akciğerlerin tekrar havalandırılması prosedürüdür.",
            additionalInfo: "Bu manevra genellikle OLV sonlandırılırken veya intraoperatif hipoksemi ataklarında uygulanır.",
          ),
          ThoracicSurgeryAnesthesiaItem(
            title: "İNTRAOPERATİF SIVI YÖNETİMİ HASSASİYETİ",
            description: "Aşırı sıvı yüklemesi 'dependan akciğer sendromu' dediğimiz sızıntı ödemine yol açarak oksijenasyonu bozar.",
            additionalInfo: "Sıvı yönetimi mümkün olduğunca kısıtlı (kuru akciğer) prensibine göre yönetilmelidir.",
          ),
          ThoracicSurgeryAnesthesiaItem(
            title: "GÜDÜK KAÇAĞI TESTİ VE CERRAHİ KONTROL",
            description: "Cerrahi dikiş hattının sızdırmazlığını kontrol etmek için su altında 30 cmH2O basınç verilerek kabarcık aranır.",
            additionalInfo: "Pozitif test, stapler veya dikiş hattında kaçak olduğu anlamına gelir ve ek cerrahi müdahale gerektirir.",
          ),
        ],
      ),
      ThoracicSurgeryAnesthesiaCategory(
        categoryName: 'OLV Sırasında Hipoksi Yönetimi',
        items: [
          ThoracicSurgeryAnesthesiaItem(
            title: "HİPOKSİ DURUMUNDA İLK MÜDAHALE ADIMLARI",
            description: "Saturasyon düştüğünde yapılacak ilk işlem tüpün yerini kontrol etmek ve FiO2 oranını 1.0 (saf oksijen) yapmaktır.",
            subtitle: "Hemen ardından dependan (altta kalan) akciğere açma manevrası (recruitment) uygulanmalıdır",
            additionalInfo: "Tüp klempi kaymış veya bronş sekresyonla tıkanmış olabilir; fiberoptik kontrol hayati önemdedir.",
          ),
          ThoracicSurgeryAnesthesiaItem(
            title: "VENTİLASYON VE TAŞIMA OPTİMİZASYONU",
            description: "PEEP seviyesi optimize edilmeli, kardiyak debi ve oksijen taşıma kapasitesi artırılmalıdır.",
            additionalInfo: "Yeterli hemoglobin düzeyi ve stabil bir tansiyon, hipoksemiyle mücadelede oksijen içeriği (CaO2) kadar önemlidir.",
          ),
          ThoracicSurgeryAnesthesiaItem(
            title: "CERRAHİ İLE UYUMLU CPAP UYGULAMASI",
            description: "Hipoksi düzelmiyorsa, opere edilen (üstteki) akciğere cerrahın görüşünü engellemeyecek şekilde düşük basınçlı oksijen (CPAP) verilir.",
            additionalInfo: "Bu yöntem, şant kanının bir miktar oksijenlenmesini sağlayarak saturasyonu hızla yükseltebilir.",
          ),
          ThoracicSurgeryAnesthesiaItem(
            title: "PERSİSTAN HİPOKSİDE İLERİ YÖNTEMLER",
            description: "Eğer tüm manevralar başarısız olursa cerrahiye ara verilerek bilateral ventilasyona geçilmelidir.",
            subtitle: "Çok zor vakalarda cerrah tarafından pulmoner arterin geçici klemplenmesi şantı tamamen kesebilir",
            additionalInfo: "Klempleme, şant kanını çalışan akciğere yönlendirerek saturasyonu mekanik olarak düzeltir.",
          ),
        ],
      ),
      ThoracicSurgeryAnesthesiaCategory(
        categoryName: 'Postoperatif Komplikasyonlar ve Analjezi',
        items: [
          ThoracicSurgeryAnesthesiaItem(
            title: "SIK GÖRÜLEN POSTOPERATİF SORUNLAR",
            description: "Toraks cerrahisi sonrası hipoksemi, respiratuvar asidoz ve supraventriküler taşikardiler (SVT) sık izlenir.",
            additionalInfo: "Atelektazi, mukus tıkacı ve cerrahi alandan olan kanamalar yakın takip gerektiren diğer durumlardır.",
          ),
          ThoracicSurgeryAnesthesiaItem(
            title: "ANALJEZİ YÖNETİMİ VE EPİDURAL AVANTAJI",
            description: "Torakal epidural analjezi, sistemik opioidlere göre çok daha üstün konfor ve daha iyi solunum performansı sağlar.",
            additionalInfo: "Ağrısız hastanın daha iyi öksürebilmesi ve derin nefes alabilmesi, postoperatif akciğer komplikasyonlarını minimize eder.",
          ),
          ThoracicSurgeryAnesthesiaItem(
            title: "ERKEN EKSTÜBASYONUN ÖNEMİ VE RİSKLERİ",
            description: "Yüksek pozitif havayolu basınçlarından kaçınmak ve dikiş hattını korumak için hastalar mümkünse ameliyat masasında uyandırılmalıdır.",
            subtitle: "Geç ekstübasyon, barotravma ve cerrahi güdükten hava kaçağı riskini artırır",
            additionalInfo: "Hastanın spontan solunuma erken geçmesi, akciğerlerin doğal yolla havalanmasına ve lenfatik drenajın iyileşmesine katkı sağlar.",
          ),
          ThoracicSurgeryAnesthesiaItem(
            title: "POSTOPERATİF ATELEKTAZİ VE HAVA KAÇAĞI",
            description: "Sekresyon tıkaçları sönümlere neden olurken, cerrahi hattaki kaçaklar tüp drenajında sürekli hava gelmesiyle fark edilir.",
            subtitle: "Geç başlangıçlı pnömotoraks, mediastinal kayma ve akciğer torsiyonu acil cerrahi durumlar yaratabilir",
            additionalInfo: "Drenaj takibi ve seri akciğer grafileri komplikasyonları erkenden yakalamak için şarttır.",
          ),
          ThoracicSurgeryAnesthesiaItem(
            title: "CERRAHİYE BAĞLI SİNİR HASARLARI",
            description: "Ameliyat sırasında frenik sinir, vagus siniri veya n. rekürrens yanlışlıkla hasar görebilir.",
            subtitle: "Frenik sinir hasarı diyafram paralizisine; n. rekürrens hasarı ise ses kısıklığına yol açar",
            additionalInfo: "Çok nadiren spinal kord basısı sonucu parapleji gibi yıkıcı nörolojik sonuçlar gelişebilir.",
          ),
        ],
      ),
      ThoracicSurgeryAnesthesiaCategory(
        categoryName: 'Özel Durumlar ve Müdahaleler',
        items: [
          ThoracicSurgeryAnesthesiaItem(
            title: "MASİF HEMOPTİZİ VE ASİS KONTRANKI",
            description: "24 saatte 500–600 mL üzerinde kanama masif kabul edilir ve mortalite %20'nin üzerindedir.",
            additionalInfo: "Bu hastalar asimetrik (asimetrik olmayan) entübasyon veya DLT ile sağlam akciğere kan dolması engellenerek yönetilmelidir.",
          ),
          ThoracicSurgeryAnesthesiaItem(
            title: "AKCİĞER KİST VE BÜLLERİNDE ANESTEZİ",
            description: "Büllöz hastalıklarda azot protoksit (N2O) bül içine dolarak rüptüre neden olabileceği için kontrendikedir.",
            subtitle: "Mümkünse spontan solunumu koruyarak yapılacak bir entübasyon rüptür riskini azaltır",
            additionalInfo: "Pozitif basınçlı ventilasyon sırasında düşük tepe basınçları tercih edilmelidir.",
          ),
          ThoracicSurgeryAnesthesiaItem(
            title: "AKCİĞER APSESİ VE SAĞLAM AKCİĞER KORUMASI",
            description: "Apseli hastalarda iltihabın sağlam akciğere akmasını (kontaminasyonu) engellemek için acil DLT yerleşimi şarttır.",
            additionalInfo: "Hasta genellikle lateral pozisyona alınırken sağlam tarafın üstte kalmasına (geçici olarak) dikkat edilebilir.",
          ),
          ThoracicSurgeryAnesthesiaItem(
            title: "BRONKOPLEVRAL FİSTÜL VE VENTİLASYON KISITI",
            description: "Bronş ile plevra arasında bağlantı olduğunda pozitif basınçlı ventilasyon büyük hava kaçaklarına yol açar.",
            additionalInfo: "Bu vakalarda yüksek frekanslı jet ventilasyon veya cerrahi ile fistül kapatılana kadar düşük basınç stratejileri uygulanır.",
          ),
        ],
      ),
      ThoracicSurgeryAnesthesiaCategory(
        categoryName: 'Trakea Rezeksiyonu',
        items: [
          ThoracicSurgeryAnesthesiaItem(
            title: "TRAKEA CERRAHİSİNDE PREMEDİKASYON KISITI",
            description: "Trakeal darlığı olan hastalarda solunum merkezini baskılayacak ağır premedikasyondan kaçınılır.",
            additionalInfo: "Hastanın uyanıklık düzeyinin korunması, havayolu güvenliği için kilit faktördür.",
          ),
          ThoracicSurgeryAnesthesiaItem(
            title: "SPONTAN SOLUNUMUN KORUNMASI (NMB KAÇINIMI)",
            description: "İndüksiyonda kas gevşeticilerden kaçınılarak hastanın kendi solunumu korunmalıdır.",
            additionalInfo: "Kas gevşemesi trakeal kollapsa veya darlığın arkasına havayı itememeye (obstrüksiyon) neden olabilir.",
          ),
          ThoracicSurgeryAnesthesiaItem(
            title: "İNDÜKSİYONDA LİDOKAİN DESTEĞİ",
            description: "Laringoskopik uyarıyı azaltmak için 1–2 mg/kg intravenöz lidokain kullanılarak anestezi derinliği artırılır.",
            additionalInfo: "Bu sayede hasta uyanık tutulurken öksürük ve laringospazm refleksleri baskılanmış olur.",
          ),
        ],
      ),
      ThoracicSurgeryAnesthesiaCategory(
        categoryName: 'Tanısal İşlemler',
        items: [
          ThoracicSurgeryAnesthesiaItem(
            title: "BRONKOSKOPİ SIRASINDA VENTİLASYON YÖNTEMLERİ",
            description: "Sert bronkoskopide apneik oksijenasyon, yan kol ventilasyonu veya jet ventilasyon yöntemleri kullanılabilir.",
            additionalInfo: "İşlem sırasında cerrahla işbirliği içinde havayolu paylaşımı yönetilmeli ve hipoksemi yakın takip edilmelidir.",
          ),
          ThoracicSurgeryAnesthesiaItem(
            title: "MEDİASTİNOSKOPİ VE VASKÜLER BASI RİSKİ",
            description: "Mediastinoskop innominant artere bası yaparak sağ koldaki nabız ve kan basıncının kaybolmasına neden olabilir.",
            subtitle: "Bu nedenle kan basıncı monitörizasyonu mutlaka sol koldan yapılmalıdır",
            additionalInfo: "Ayrıca vagal stimülasyona bağlı gelişebilecek bradikardi açısından dikkatli olunmalıdır.",
          ),
          ThoracicSurgeryAnesthesiaItem(
            title: "BRONKOALVEOLER LAVAJ (BAL) YÖNETİMİ",
            description: "Tüm akciğer lavajı sırasında (örneğin proteinözis), izolasyon için DLT kullanılır ve 10–20 litre ılık SF ile yıkama yapılır.",
            additionalInfo: "Yıkama sırasında sızıntı olup sağlam akciğere sıvı kaçması en büyük risktir; isolation fiberoptik ile sürekli kontrol edilmelidir.",
          ),
        ],
      ),
      ThoracicSurgeryAnesthesiaCategory(
        categoryName: 'Akciğer Transplantasyonu',
        items: [
          ThoracicSurgeryAnesthesiaItem(
            title: "TEK AKCİĞER NAKLİ VE KPB İHTİYACI",
            description: "İdiopatik Pulmoner Fibrozis (İPF) gibi vakalarda yapılan tek akciğer naklinde genellikle KPB gerekmez.",
            additionalInfo: "Ancak pulmoner arter klemplendiğinde sağ kalp yüklenmesi veya hipoksemi tolere edilemezse bypass gerekebilir.",
          ),
          ThoracicSurgeryAnesthesiaItem(
            title: "ÇİFT AKCİĞER NAKLİ VE BYPASS SÜRECİ",
            description: "İki taraflı rezeksiyon ve anastomoz gerektiğinde genellikle operasyon KPB eşliğinde yürütülür.",
            additionalInfo: "Hücre dışı koruma solüsyonları (perfüzyon sıvıları) donör akciğerini korumak için kullanılır.",
          ),
          ThoracicSurgeryAnesthesiaItem(
            title: "NAKİLDE HİPOTANSİYE YAKLAŞIM",
            description: "Yeni akciğerde ödem oluşmaması için hipotansiyon gelişiminde aşırı sıvı yerine vazopressörler tercih edilir.",
            additionalInfo: "Düşük doz adrenalin veya noradrenalin perfüzyon basıncını korurken 'dry lung' (kuru akciğer) prensibine hizmet eder.",
          ),
          ThoracicSurgeryAnesthesiaItem(
            title: "NAKLEDİLEN AKCİĞERDE REFLEKS DEĞİŞİMLERİ",
            description: "Nakil sonrası akciğerde HPV koruyucu mekanizması çalışmaya devam eder ancak öksürük refleksi kaybolur.",
            additionalInfo: "Bu durum postoperatif dönemde sekresyon temizliğini zorlaştıracağı için agresif fizyoterapi gerektirir.",
          ),
          ThoracicSurgeryAnesthesiaItem(
            title: "POSTOPERATİF ERKEN DÖNEM YÖNETİMİ",
            description: "Nakil sonrası hastaların erken ekstübe edilmesi ve sıvı alımının minimalde tutulması başarının anahtarıdır.",
            additionalInfo: "Rejeksiyon belirtileri ve enfeksiyon kontrolü için çok sıkı bağışıklık baskılayıcı (immünsupresif) tedaviler uygulanır.",
          ),
        ],
      ),
      ThoracicSurgeryAnesthesiaCategory(
        categoryName: 'Özofagus Cerrahisi',
        items: [
          ThoracicSurgeryAnesthesiaItem(
            title: "ÖZOFAGUS CERRAHİSİ VE ASPİRASYON RİSKİ",
            description: "Özofagus darlığı veya dilatasyonu (akalazya) olan hastalar, mide içeriği biriktiği için en yüksek aspirasyon riskine sahiptir.",
            additionalInfo: "Preoperatif dönemde hastanın uzun süreli açlığı ve gerekirse mide tüpüyle boşaltma işlemi düşünülmelidir.",
          ),
          ThoracicSurgeryAnesthesiaItem(
            title: "İNDÜKSİYONDA CRUSH (FAST) PROTOKOLÜ",
            description: "Aspirasyonu önlemek için krikoid basısı eşliğinde 'Rapid Sequence Induction' (RSI) uygulanmalıdır.",
            additionalInfo: "Entübasyon tamamlanana kadar ventilasyon yapmaktan mümkün olduğunca kaçınılmalıdır.",
          ),
          ThoracicSurgeryAnesthesiaItem(
            title: "TÜP SEÇİMİ VE TORAKOTOMİ İLİŞKİSİ",
            description: "Eğer cerrahi girişim göğüs kafesi (torakotomi) üzerinden yapılacaksa, izolasyon için çift lümenli tüp kullanılır.",
            additionalInfo: "Operasyon laparoskopik veya transhiatal yolla yapılacaksa standart entübasyon tüpü yeterli olabilir.",
          ),
          ThoracicSurgeryAnesthesiaItem(
            title: "İNTRAOPERATİF KARDİYAK VE VAGAL RİSKLER",
            description: "Özofagusun manipülasyonu kalp üzerine doğrudan bası yaparak dolum bozukluğu veya şiddetli vagal uyarılara (bradikardi) neden olabilir.",
            additionalInfo: "Bu kritik anlarda cerraha bilgi verilmeli ve gerekirse antikolinerjik ilaçlar kullanılmalıdır.",
          ),
          ThoracicSurgeryAnesthesiaItem(
            title: "POSTOPERATİF MEKANİK VENTİLASYON İHTİYACI",
            description: "Geniş cerrahi travma ve diyafram etkilenmesi nedeniyle bu hastaların postoperatif yoğun bakım ve solunum desteği ihtiyacı sıktır.",
            additionalInfo: "Beslenme desteği ve sıvı dengesi cerrahi başarının devamlılığı için hayati önem taşır.",
          ),
        ],
      ),
    ];
  }
}
