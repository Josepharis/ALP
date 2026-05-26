import 'package:flutter/material.dart';

class AirwayManagementItem {
  final String title;
  final String description;
  final String? subtitle;
  final String? additionalInfo;

  AirwayManagementItem({
    required this.title,
    required this.description,
    this.subtitle,
    this.additionalInfo,
  });
}

class AirwayManagementCategory {
  final String categoryName;
  final List<AirwayManagementItem> items;

  AirwayManagementCategory({required this.categoryName, required this.items});
}

class AirwayManagementData {
  static List<AirwayManagementCategory> getAirwayManagementData(
    BuildContext context,
  ) {
    return [
      AirwayManagementCategory(
        categoryName: 'Havayolu Değerlendirme ve Skorlama',
        items: [
          AirwayManagementItem(
            title: "MALLAMPATİ SINIFLANDIRMASI (HAVAYOLU SKORLAMASI)",
            description: "Ağız açıklığı ve dil boyutu ile havayolu yapıları arasındaki ilişkiyi değerlendiren, zor havayolu öngörüsünde kullanılan temel testtir.",
            subtitle: "Mallampati Sınıf I kolay, Sınıf IV ise çok zor bir entübasyona işaret eder",
            additionalInfo: "• Sınıf I: Yumuşak damak, uvula, tonsiller ve farenks sütunları tamamen görünür.\n• Sınıf II: Yumuşak damak ve uvula görünür.\n• Sınıf III: Sadece yumuşak damak ve uvulanın tabanı görünür.\n• Sınıf IV: Sadece sert damak görünür; yumuşak damak kesinlikle seçilemez.",
          ),
          AirwayManagementItem(
            title: "CORMACK-LEHANE DERECELENDİRMESİ (LARİNGOSKOPİK GÖRÜNÜM)",
            description: "Doğrudan laringoskopi sırasında glottis yapılarının ne kadarının görülebildiğine dayanan derecelendirme sistemidir.",
            subtitle: "Evre I full görünüm sağlarken, Evre IV'te hiçbir yapı seçilemez",
            additionalInfo: "• Evre I: Glottis (ses telleri) tamamen görünür.\n• Evre II: Glottisin arka kısmı ve krikoid yapılar görünür.\n• Evre III: Sadece epiglot görünür, ses telleri seçilemez.\n• Evre IV: Sadece dil kökü veya yumuşak doku görülür; epiglot bile görünmez.",
          ),
          AirwayManagementItem(
            title: "ZOR ENTÜBASYON ÖNGÖREN FİZİKSEL BULGULAR",
            description: "Cerrahi öncesi fizik muayenede saptanan anatomik ölçümler, zor havayolu olasılığını belirlemede kritiktir.",
            additionalInfo: "• Tiromental Mesafe: Alt çene ucu ile tiroid kıkırdak arası mesafe < 6 cm ise zor entübasyon.\n• Sternomental Mesafe: Sternum üst ucu ile çene ucu arası mesafe < 12.5 cm ise risk yüksektir.\n• Ağız Açıklığı: İntersisör (dişler arası) mesafe < 4 cm olması durumunda laringoskop yerleştirilmesi güçleşir.\n• Boyun Hareketliliği: Başın ekstansiyon yapamaması görüş açısını ciddi oranda bozar.",
          ),
        ],
      ),
      AirwayManagementCategory(
        categoryName: 'Endotrakeal Tüp (ETT) Seçimi ve Yerleşimi',
        items: [
          AirwayManagementItem(
            title: "ERİŞKİN HASTALARDA TÜP ÇAPA VE DERİNLİK SEÇİMİ",
            description: "İdeal havayolu güvenliği için erişkin kadın ve erkeklerde farklı iç çap (ID) ve yerleştirme derinlikleri tercih edilir.",
            additionalInfo: "• Kadınlar: Genellikle 7.0–7.5 mm ID tüp kullanılır; yerleşim derinliği kesici dişler düzeyinde 20–21 cm'dir.\n• Erkekler: Genellikle 8.0–8.5 mm ID tüp kullanılır; yerleşim derinliği kesici dişler düzeyinde 21–23 cm'dir.",
          ),
          AirwayManagementItem(
            title: "ÇOCUKLARDA TÜP ÇAPI VE DERİNLİK HESAPLAMA (2 YAŞ ÜSTÜ)",
            description: "Pediatrik popülasyonda tüp çapı ve yerleşim derinliği çocuğun yaşına göre matematiksel formüllerle belirlenir.",
            subtitle: "Kafsız tüplerde formül: (Yaş / 4) + 4 mm ID",
            additionalInfo: "• Tüp Çapı (Kaflı): (Yaş / 4) + 3.5 mm ID.\n• Oral Derinlik: (Yaş / 2) + 12 cm.\n• Nazal Derinlik: (Yaş / 2) + 15 cm.",
          ),
          AirwayManagementItem(
            title: "BEBEKLERDE TÜP SEÇİMİ VE YERLEŞTİRME PRENSİPLERİ",
            description: "Yenidoğan ve 1 yaş altı bebeklerde havayolu çok dar olduğu için tüp seçimi milimetrik hassasiyet gerektirir.",
            additionalInfo: "• Prematüre: 2.5–3.0 mm ID.\n• Term Yenidoğan: 3.0–3.5 mm ID.\n• 1 Yaş: 3.5–4.0 mm ID.\n• Yerleşim Derinliği: Pratik kural olarak 'Tüp ID x 3' formülü kullanılır (Örn: 4.0 mm tüp → 12 cm derinlik).",
          ),
        ],
      ),
      AirwayManagementCategory(
        categoryName: 'Endotrakeal Tüp Balonu (Kaf) Yönetimi',
        items: [
          AirwayManagementItem(
            title: "KAF ÖZELLİKLERİ VE MUKOZAL PERFÜZYON GÜVENLİĞİ",
            description: "Modern tüplerde 'yüksek volüm / düşük basınç' özellikli kaflar kullanılarak trakeal mukoza hasarı önlenmeye çalışılır.",
            subtitle: "İdeal kaf basıncı trakeal kapiller perfüzyon basıncının altında tutulmalıdır",
            additionalInfo: "Trakeal mukoza kan akımı yaklaşık 25-30 mmHg basınçta bozulur. Bu nedenle kaf basıncının 20-30 cmH2O (yaklaşık 15-22 mmHg) aralığında tutulması iskemi ve nekroz riskini minimize eder.",
          ),
          AirwayManagementItem(
            title: "KAF VOLÜMÜ VE BASINÇ LİMİTLERİ (ERİŞKİN VE PEDİATRİK)",
            description: "Trakea içerisindeki hava kaçağını önlemek ve akciğerleri aspirasyondan korumak için kafın doğru miktarda şişirilmesi şarttır.",
            additionalInfo: "• Erişkin: Genellikle 5–10 mL hava yeterlidir.\n• Pediatrik (Kaflı): Sadece 1–2 mL hava ile sızdırmazlık sağlanabilir.\n• Manometre kullanımı altın standarttır; sadece tüp bacağının (pilot balon) elle kontrolü yanıltıcı olabilir.",
          ),
          AirwayManagementItem(
            title: "ENFLASYON KONTROLÜ VE KAÇAK TESTİ UYGULAMASI",
            description: "Kaf şişirildikten sonra pozitif basınçlı ventilasyon sırasında havayolu basıncı 20-25 cmH2O'ya ulaştığında kaçak olmamalıdır.",
            additionalInfo: "Tüp kafı şişirilirken stetoskopla boyun bölgesinde kaçak sesi (leak cycle) duyulmayana kadar hava verilir ve ardından en düşük sızdırmazlık basıncı manometre ile doğrulanır.",
          ),
        ],
      ),
      AirwayManagementCategory(
        categoryName: 'Entübasyon Fizyolojisi ve Klinik Yanıt',
        items: [
          AirwayManagementItem(
            title: "KARDİYOVASKÜLER SİSTEM ÜZERİNE SEMPATİK ETKİLER",
            description: "Laringoskopi ve entübasyon manevraları, vasküler ve otonomik sinir uçlarını uyararak şiddetli bir sempatik deşarja neden olur.",
            subtitle: "Ani tansiyon yükselmesi, taşikardi ve aritmiler en sık görülen yanıtlardır",
            additionalInfo: "Bu sempatik yanıt, özellikle koroner arter hastalığı, serebral anevrizma veya yüksek kafa içi basıncı olan hastalarda miyokard iskemisine veya beyin kanamasına yol açabilecek kadar riskli olabilir.",
          ),
          AirwayManagementItem(
            title: "ENTÜBASYON YANITINI BASKILAMA VE ÖNLEMLER",
            description: "Hastanın fizyolojik yanıtını yumuşatmak için laringoskopi öncesi ek farmakolojik ajanlar ve derin anestezi seviyeleri kullanılır.",
            additionalInfo: "• Lidokain (1–1.5 mg/kg IV): En yaygın kullanılan yöntemdir; kafa içi basınç artışını ve havayolu reflekslerini baskılar.\n• Opioidler (Fentanil/Remifentanil): Sempatik yanıtı en güçlü baskılayan ajanlardır.\n• Beta Blokerler (Esmolol): Taşikardiyi kontrol altında tutmak için tercih edilebilir.",
          ),
        ],
      ),
      AirwayManagementCategory(
        categoryName: 'Supraglottik Havayolu Araçları (LMA)',
        items: [
          AirwayManagementItem(
            title: "LARİNGİAL MASKE (LMA) TÜRLERİ VE ASPİRASYON KORUMASI",
            description: "Vokal kordların üzerinde yerleşen, endotrakeal tüpe göre daha az invaziv havayolu araçlarıdır.",
            subtitle: "Klasik LMA aspirasyona karşı koruma sağlamazken, yeni nesil LMA'lar (ProSeal, I-gel) gastrik porta sahiptir",
            additionalInfo: "Gastrik port (mide kanalı), mide içeriğinin aspire edilme riskini azaltır ve mideye tüp yerleştirilmesine olanak tanır. LMA'lar özellikle zor havayolu algoritmalarında kurtarıcı araçlar olarak yer alır.",
          ),
          AirwayManagementItem(
            title: "LMA YERLEŞTİRME TEKNİĞİ VE VENTİLASYON SINIRLARI",
            description: "LMA kafları endotrakeal tüplere göre çok daha yüksek basınç toleransına sahiptir ancak doğru yerleşim kritik önemdedir.",
            additionalInfo: "• Kaf Basıncı: Maksimum 60 cmH2O olarak önerilir.\n• Ventilasyon Sınırı: Genellikle < 20 cmH2O'nun altındaki havayolu basınçlarında güvenli ventilasyon sağlanır; bu değerin üzerinde mideye hava kaçağı ve aspirasyon riski artar.",
          ),
        ],
      ),
      AirwayManagementCategory(
        categoryName: 'İleri Havayolu Teknikleri (Fiberoptik ve Acil)',
        items: [
          AirwayManagementItem(
            title: "FİBEROPTİK ENTÜBASYON ENDİKASYONLARI VE AVANTAJLARI",
            description: "Anatomik zorluk, boyun stabilizasyonu ihtiyacı veya kısıtlı ağız açıklığı olan vakalarda altın standart yöntemdir.",
            subtitle: "Uyanık entübasyon gerektiren havayolu tümörleri veya ciddi çene anomalilerinde hayat kurtarıcıdır",
            additionalInfo: "Görüntülü laringoskopiye göre en büyük avantajı, boyun hareketine gerek duymaması ve trakeaya kadar doğrudan görsel kontrol sağlamasıdır. Servikal instabilitesi olan hastalarda en güvenli yöntemdir.",
          ),
          AirwayManagementItem(
            title: "FİBEROPTİK UYGULAMADA SEDASYON VE TOPİKALİZASYON",
            description: "Uyanık uygulamalarda hastanın konforunu sağlamak için havayolu refleksleri lokal anesteziklerle tamamen baskılanmalıdır.",
            additionalInfo: "Hafif sedasyon (Midazolam/Opioid) eşliğinde, dil köküne ve larenks yapılarına 'sprey' yöntemiyle veya sinir bloklarıyla uygulanan lidokain, hastanın entübasyonu tolere etmesini sağlar.",
          ),
          AirwayManagementItem(
            title: "ACİL HAVAYOLU YÖNETİMİ VE CERRAHİ GİRİŞİMLER",
            description: "Entübe edilemeyen ve ventile edilemeyen (CVCI) durumlarda cerrahi olarak havayolu açılması en son ve en hızlı seçenektir.",
            additionalInfo: "• Krikotirotomi: Acil durumlarda 15-30 saniye içinde uygulanabilen, krikotiroid membranın delindiği en hızlı yöntemdir.\n• Trakeostomi: Genellikle uyanık hastada veya uzun vadeli havayolu desteği için planlı yapılır; acil şartlarda ikinci tercihtir.\n• İğne Krikotirotomi: Sadece oksijenasyon sağlar; karbondioksit atılımı (ventilasyon) için yetersiz kalabilir.",
          ),
        ],
      ),
      AirwayManagementCategory(
        categoryName: 'Pediatrik Havayolu Anatomisi ve Yönetimi',
        items: [
          AirwayManagementItem(
            title: "PEDİATRİK HAVAYOLUNUN ANATOMİK FARKLILIKLARI",
            description: "Çocukların havayolu yetişkinlere göre daha yukarıda, daha anterior (ön tarafta) ve huni şeklindedir.",
            subtitle: "Epiglot daha uzun ve 'U' şeklindedir; en dar bölge krikoid halka düzeyidir",
            additionalInfo: "Larenks C3-C4 seviyesindedir (erişkinde C5-C6). Dil, ağız içine göre daha büyüktür ve oksijen rezervleri (fonksiyonel rezidüel kapasite) düşük olduğu için çok hızlı hipoksiye girerler.",
          ),
          AirwayManagementItem(
            title: "PEDİATRİK ENTÜBASYONDA DERİNLİK VE BASINÇ KRİTERLERİ",
            description: "Küçük çocuklarda tüpün yerleşimi sırasında kaf basıncı 20 cmH2O'nun altında tutularak mukozal ödem riski önlenmelidir.",
            additionalInfo: "Yerleşim derinliği için 'Tüp Çapı x 3' kuralı pratik bir rehberdir. Tüpün yanlışlıkla ana bronşa kaçması (genellikle sağ bronş) çocuklarda çok daha kolaydır; bu nedenle bilateral akciğer dinlemesi mutlaka yapılmalıdır.",
          ),
        ],
      ),
      AirwayManagementCategory(
        categoryName: 'Klinik Güvenlik ve Altın İpuçları',
        items: [
          AirwayManagementItem(
            title: "ÖZET VE KRİTİK HATIRLATMALAR",
            description: "Havayolu yönetimi sınavlarında ve klinik pratikte hata payı olmayan temel bilgiler.",
            additionalInfo: "• Kaf Basıncı: 20–30 cmH2O (Manometre ile ölçülmelidir).\n• Kapnografi (EtCO2): Entübasyonun doğrulanmasında altın standarttır.\n• Zor Entübasyon Simgesi: Tiromental mesafe < 6 cm, Mallampati IV.\n• Obez Hasta Pratiği: Boyun 'ramped' pozisyona (yastıklarla desteklenerek) getirilmelidir.\n• LMA Sınırı: Mideye hava kaçağını önlemek için ventilasyon basıncı 20 cmH2O'yu aşmamalıdır.",
          ),
        ],
      ),
    ];
  }
}
