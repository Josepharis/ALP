import 'package:flutter/material.dart';

class InhalationAnestheticsItem {
  final String title;
  final String description;
  final String? subtitle;
  final String? additionalInfo;

  InhalationAnestheticsItem({
    required this.title,
    required this.description,
    this.subtitle,
    this.additionalInfo,
  });
}

class InhalationAnestheticsCategory {
  final String categoryName;
  final List<InhalationAnestheticsItem> items;

  InhalationAnestheticsCategory({
    required this.categoryName,
    required this.items,
  });
}

class InhalationAnestheticsData {
  static List<InhalationAnestheticsCategory> getInhalationAnestheticsData(
    BuildContext context,
  ) {
    return [
      InhalationAnestheticsCategory(
        categoryName: 'Farmakokinetik Prensipler',
        items: [
          InhalationAnestheticsItem(
            title: "Fi (İNSPİRASYON KONSANTRASYONU)",
            description: "Anestezi cihazından hastaya gönderilen taze gaz konsantrasyonudur; indüksiyon hızını doğrudan belirler.",
            additionalInfo: "Yüksek Fi değerleri, küçük hacimli solunum sistemleri ve düşük devre absorbsiyonu (lastik/plastik yüzeylere tutunma) indüksiyonun ve derlenmenin (uyanma) hızlanmasını sağlar. Fi ne kadar yüksekse, alveollere ulaşacak gaz miktarı o kadar hızlı artar.",
          ),
          InhalationAnestheticsItem(
            title: "FA (ALVEOLER KONSANTRASYON)",
            description: "Beyindeki anestetik konsantrasyonunu yansıtan en önemli göstergedir; FA/Fi dengesi indüksiyon hızıyla ilişkilidir.",
            subtitle: "Kan/gaz partisyon katsayısı yüksek olan gazlar geç dengeye ulaşır",
            additionalInfo: "Alveollerdeki gazın kana geçiş hızı (uptake) ne kadar yüksekse, alveol konsantrasyonu (FA) o kadar yavaş yükselir ve indüksiyon gecikir. Doku uptake sırası damardan zengin organlardan damardan fakir dokulara doğrudur. Özellikle çözünürlüğü yüksek (kan/gaz katsayısı yüksek) ajanlarda ventilasyonu artırmak FA/Fi oranının yükselmesini belirgin şekilde hızlandırır.",
          ),
          InhalationAnestheticsItem(
            title: "KONSANTRASYON VE İKİNCİ GAZ ETKİSİ",
            description: "Giriş hızını ve beraberindeki diğer gazların alveoldeki konsantrasyonunu artıran fiziksel fenomenlerdir.",
            subtitle: "N₂O kullanımı, yanındaki diğer anestetik ajanın emilimini hızlandırır",
            additionalInfo: "• Konsantrasyon Etkisi: İlham edilen gaz konsantrasyonu (Fi) arttıkça, alveol hacmi azalsa bile orada daha fazla gaz kütlesi kalır.\n• İkinci Gaz Etkisi: N₂O gibi çok hızlı emilen bir gaz, beraberinde verilen diğer (ikinci) gazın alveoldeki parsiyel basıncını ve emilim hızını artırarak indüksiyonu hızlandırır.",
          ),
          InhalationAnestheticsItem(
            title: "ARTERİYEL KONSANTRASYON (Fa)",
            description: "Alveoldeki gazın arteriyel kana geçişini ifade eder; ventilasyon-perfüzyon (V/Q) uyumsuzluğu bu süreci olumsuz etkiler.",
            additionalInfo: "Akciğerlerdeki sağ-sol şantlar veya yetersiz ventilasyon durumunda (V/Q bozukluğu), alveoldeki gaz kana tam geçemez. Bu durum özellikle çözünürlüğü düşük (hızlı etkili) ajanlarda indüksiyonun belirgin şekilde yavaşlamasına neden olur.",
          ),
          InhalationAnestheticsItem(
            title: "ELİMİNASYON VE ELENME SÜREÇLERİ",
            description: "Anestetik gazların vücuttan birincil olarak akciğerler yoluyla atılma sürecidir.",
            subtitle: "Difüzyon hipoksisini önlemek için N₂O sonrası 5-10 dk %100 O₂ verilmelidir",
            additionalInfo: "Metabolizma genellikle karaciğerde CYP2E1 enzimi üzerinden gerçekleşir. İndüksiyonu hızlandıran tüm faktörler (düşük kan/gaz çözünürlüğü, yüksek ventilasyon) derlenmeyi de hızlandırır. N₂O hızla alveollere geri dönerken oradaki oksijeni seyreltebilir (Difüzyon Hipoksisi), bu yüzden uyandırma sırasında yüksek akımlı oksijen şarttır.",
          ),
        ],
      ),
      InhalationAnestheticsCategory(
        categoryName: 'Farmakodinamik Özellikler',
        items: [
          InhalationAnestheticsItem(
            title: "ETKİ TEORİLERİ VE RESEPTÖRLER",
            description: "İnhalasyon ajanları merkezi sinir sisteminde birden fazla reseptör üzerinden amnezi ve analjezi sağlar.",
            subtitle: "N₂O ve Xenon temel olarak NMDA antagonisti olarak etki eder",
            additionalInfo: "Modern teorilerde GABA-A reseptörü aktivasyonu, glisin ve nikotinik asetilkolin reseptörleri üzerindeki etkiler ön plandadır. Kortikal düzeyde amnezi (bellek kaybı) sağlanırken, spinal kord düzeyinde cerrahi uyarıya yanıtsızlık ve analjezi oluşturulur.",
          ),
          InhalationAnestheticsItem(
            title: "MEYER-OVERTON KURALI VE FİZİKSEL ÖZELLİKLER",
            description: "Bir ajanın yağda çözünürlüğü (lipofilisitesi) ile anestetik gücü (anestetik potens) arasındaki doğru orantıyı tanımlayan tarihsel kuraldır.",
            subtitle: "Yağda çözünürlük arttıkça ajanın MAK değeri düşer (yani gücü artar)",
            additionalInfo: "Kritik hacim hipotezine göre, anestetik molekülü nöron membranına yerleşerek membranı genişletir ve iyon kanallarının çalışmasını engeller. Her ne kadar protein-bağlanma teorileri günümüzde daha ön planda olsa da, lipofilisite hala potentliği öngörmede önemli bir göstergedir.",
          ),
          InhalationAnestheticsItem(
            title: "NÖROTOKSİSİTE VE PROTEKSİYON",
            description: "Anestetiklerin beyin hücreleri üzerindeki potansiyel koruyucu veya zarar verici etkilerini inceleyen alandır.",
            additionalInfo: "Deneysel çalışmalarda İzofluranın nöronal apoptozu artırabileceği gösterilmiştir. Öte yandan, NMDA antagonistleri (N₂O, Xenon) ve bazı volatil ajanlar 'kardiyak preconditioning' ve nöroprotektif (sinir koruyucu) etkiler gösterebilir; bu durum iskemi riskli vakalarda avantaj sağlayabilir.",
          ),
          InhalationAnestheticsItem(
            title: "MAK (MİNİMUM ALVEOLER KONSANTRASYON)",
            description: "Deniz seviyesinde ve 1 atmosfer basınçta, hastaların %50'sinde cerrahi uyarıya motor yanıtı engelleyen alveolar konsantrasyondur.",
            subtitle: "MAK değeri farmakolojideki ED50 değerine karşılık gelir",
            additionalInfo: "• 1,3 × MAK: Hastaların %95'inde hareketsizliği sağlar (ED95).\n• Değişkenler: Yaşlandıkça her 10 yılda bir MAK değeri yaklaşık %6 oranında düşer. Hamilelik, hipotermi ve alkol kullanımı gibi faktörler MAK değerini etkileyerek doz gereksinimini değiştirir.",
          ),
        ],
      ),
      InhalationAnestheticsCategory(
        categoryName: 'Ajanlara Özel Spotlar',
        items: [
          InhalationAnestheticsItem(
            title: "N₂O (NİTRÖZ OKSİT / GÜLDÜRÜCÜ GAZ)",
            description: "Renksiz, tatlı kokulu, yanıcı olmayan ancak yanmayı destekleyen, analjezik gücü yüksek bir gazdır.",
            additionalInfo: "• KVS: Katekolamin deşarjıyla kan basıncını korur.\n• Solunum: Solunum sayısını artırır, tidal hacmi azaltır; hipoksik cevabı baskılar.\n• Beyin: İntrakraniyal basıncı ve metabolizmayı artırır.\n• Toksisite: B12 vitaminini inhibe ederek DNA ve miyelin sentezini bozabilir.\n• Kontrendikasyonlar: Hava embolisi, barsak tıkanıklığı, pnömotoraks ve timpanoplasti greft cerrahisi (kapalı boşluklarda genişlemeye neden olur).",
          ),
          InhalationAnestheticsItem(
            title: "HALOTAN",
            description: "Hoş kokulu, yanıcı olmayan, kehribar renkli şişelerde saklanan tarihsel bir halojenli alkandır.",
            subtitle: "Epinefrin ile ciddi aritmilere neden olabilir (Sınır: 1,5 mcg/kg)",
            additionalInfo: "• KVS: Kalp debisini ve barorefleksi belirgin şekilde baskılar.\n• Karaciğer: 'Halotan Hepatiti'ne (1/35.000 risk) yol açabilir; obezite, orta yaş ve kadın cinsiyet risk faktörleridir.\n• Solunum: Güçlü bir bronkodilatördür ancak mukosiliyer temizliği bozar.\n• MH Tetikleyici: Malign Hipertermiyi tetikleyebilir. Aminofilin ile birlikte kullanımda ölümcül aritmiler görülebilir.",
          ),
          InhalationAnestheticsItem(
            title: "İZOFLURAN",
            description: "Keskin kokulu bir eter türevidir; KVS stabilitesi ve organ koruyucu özellikleri nedeniyle yaygın kullanılır.",
            subtitle: "Koroner çalma fenomenine (Coronary Steal) neden olabilir",
            additionalInfo: "Beyin cerrahisinde CMRO₂'yu düşürmesi ve EEG'de burst-supresyonu sağladığı için tercih edilebilir. Metabolizması oldukça düşüktür; TFA gibi metabolitler çok az oluşur. Kas gevşeticilerin etkisini potansiyelize eder. Malign Hipertermi öyküsünde kontrendikedir.",
          ),
          InhalationAnestheticsItem(
            title: "DESFLURAN",
            description: "Düşük kan/gaz çözünürlüğü sayesinde en hızlı indüksiyon ve derlenme (uyanma) sağlayan ajandır.",
            subtitle: "Kaynama noktası oda sıcaklığına yakın olduğu için özel ısıtmalı vaporizatör (Tec 6) gerektirir",
            additionalInfo: "Hava yollarını tahriş edici (iritan) özelliğinden dolayı maske indüksiyonu için uygun değildir. Konsantrasyonu hızla artırıldığında sempatik aktivasyonla taşikardi ve hipertansiyon yapabilir. Kuru soda-lime ile temas ettiğinde Karbonmonoksit (CO) açığa çıkarabilir.",
          ),
          InhalationAnestheticsItem(
            title: "SEVOFLURAN",
            description: "Hoş kokulu ve tahriş etmeyen yapısı nedeniyle çocuk ve yetişkin maske indüksiyonunda altın standarttır.",
            subtitle: "Düşük akımlı anestezide soda-lime ile etkileşerek Compound A oluşturabilir",
            additionalInfo: "• Nefrotoksisite: Compound A oluşumunu önlemek için taze gaz akımı 2 L/dk'nın altına düşürülmemelidir.\n• Beyin: 1,5 MAK üzerinde serebral otoregülasyonu bozabilir.\n• Saklama: Cam şişelerde HF (Hidrojen Florür) oluşumunu engellemek için su ile stabilize edilir. QT mesafesini uzatabilir.",
          ),
          InhalationAnestheticsItem(
            title: "XENON",
            description: "Hızlı etkili, inert, çevre dostu ve kardiyovasküler sistem üzerinde yan etkisi bulunmayan ideal ancak pahalı bir gazdır.",
            additionalInfo: "Kan/gaz çözünürlüğü en düşük (0,115) ajandır, bu sayede inanılmaz hızlı indüksiyon/derlenme sağlar. NMDA reseptör antagonizması ile güçlü analjezi ve nöroproteksiyon sağlar. Pahalı üretim maliyeti nedeniyle rutin kullanımı kısıtlıdır.",
          ),
        ],
      ),
    ];
  }
}
