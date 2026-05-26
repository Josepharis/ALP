import 'package:flutter/material.dart';

class ErasProtocolsItem {
  final String title;
  final String description;
  final String? subtitle;
  final String? additionalInfo;

  ErasProtocolsItem({
    required this.title,
    required this.description,
    this.subtitle,
    this.additionalInfo,
  });
}

class ErasProtocolsCategory {
  final String categoryName;
  final List<ErasProtocolsItem> items;

  ErasProtocolsCategory({
    required this.categoryName,
    required this.items,
  });
}

class ErasProtocolsData {
  static List<ErasProtocolsCategory> getErasProtocolsData(BuildContext context) {
    return [
      ErasProtocolsCategory(
        categoryName: 'Genel Prensipler',
        items: [
          ErasProtocolsItem(
            title: "ERAS (ENHANCED RECOVERY AFTER SURGERY) TANIMI VE AMACI",
            description: "Perioperatif dönemde cereyan eden fizyolojik stres yanıtı minimize etmek ve cerrahi sonrası iyileşmeyi hızlandırmak için geliştirilmiş kanıta dayalı protokollerdir.",
            additionalInfo: "Sadece cerrahi tekniğe değil, hastanın hazırlık, operasyon ve taburculuk süreçlerinin tamamına odaklanır.",
          ),
          ErasProtocolsItem(
            title: "MULTİMODAL VE MULTİDİSİPLİNER EKİP YAKLAŞIMI",
            description: "Bloklar, ilaçlar ve fizyoterapiyi birleştiren multimodal bir yaklaşım ile cerrah, anestezist, hemşire ve diyetisyenden oluşan bir ekip çalışmasıdır.",
            additionalInfo: "Tüm disiplinlerin ortak hedefe odaklanması uygulama başarısını %80'in üzerine çıkarır.",
          ),
          ErasProtocolsItem(
            title: "KLİNİK HEDEFLER: MORBİDİTE VE MORTALİTE AZALTIMI",
            description: "Postoperatif komplikasyonları azaltarak cerrahi başarısını artırmak ve hastanede kalış süresini (LOS) kısaltmak birincil hedeftir.",
            additionalInfo: "Maliyet etkinliği sağlarken hasta güvenliğinden ödün verilmez.",
          ),
        ],
      ),
      ErasProtocolsCategory(
        categoryName: 'Preoperatif Stratejiler',
        items: [
          ErasProtocolsItem(
            title: "HASTA EĞİTİMİ, OPTİMİZASYONU VE SİGARA/ALKOL KONTROLÜ",
            description: "Operasyon öncesi hastanın bilgilendirilmesi anksiyeteyi azaltır; sigara ve alkolün bırakılması yara iyileşmesini güçlendirir.",
            subtitle: "Anemi, malnütrisyon, diyabet, KOAH ve obezite gibi eşlik eden morbiditeler optimize edilmelidir",
            additionalInfo: "Preoperatif optimizasyon, postoperatif komplikasyonları %50'ye kadar azaltabilir.",
          ),
          ErasProtocolsItem(
            title: "KARBONHİDRAT YÜKLEMESİ VE AÇLIK SÜRESİ YÖNETİMİ",
            description: "Operasyondan 2 saat öncesine kadar berrak sıvı alımına izin verilerek hastanın metabolik durumu korunur.",
            subtitle: "Karbonhidrat içecekleri preoperatif açlık süresini azaltır ve postoperatif insülin direncini düşürür",
            additionalInfo: "Klasik 'gece yarısından sonra aç kalsın' kuralı modern ERAS'ta terk edilmiştir.",
          ),
          ErasProtocolsItem(
            title: "PREHABİLİTASYON: EGZERSİZ VE SOLUNUM FİZYOTERAPİSİ",
            description: "Operasyon öncesi başlanan fiziksel egzersizler ve solunum egzersizleri hastanın fonksiyonel kapasitesini artırır.",
            additionalInfo: "Özellikle büyük torasik ve abdominal cerrahilerde hayati öneme sahiptir.",
          ),
          ErasProtocolsItem(
            title: "PROFİLAKTİK ANTİBİYOTİK KULLANIMI VE ZAMANLAMASI",
            description: "Cerrahi alan enfeksiyonlarını önlemek amacıyla ilk insizyondan 30-60 dakika önce uygulanmalıdır.",
            additionalInfo: "Uygulama zamanlaması doku konsantrasyonunun cerrahi sırasında en üst düzeyde olması için kritiktir.",
          ),
        ],
      ),
      ErasProtocolsCategory(
        categoryName: 'İntraoperatif Stratejiler',
        items: [
          ErasProtocolsItem(
            title: "ANESTEZİ YÖNETİMİ: OPİOİD TASARRUFLU YAKLAŞIMLAR",
            description: "Multimodal analjezi (NSAİİ, ketamin, epidural vb.) kullanılarak opioid yan etkilerinden kaçınılır.",
            subtitle: "TAP blok ve epidural gibi rejyonal anestezi teknikleri primer analjezi kaynağıdır",
            additionalInfo: "Daha az opioid kullanımı, barsak fonksiyonlarının daha hızlı geri dönmesini sağlar.",
          ),
          ErasProtocolsItem(
            title: "HEDEFE YÖNELİK SIVI TEDAVİSİ (GOAL-DIRECTED FLUID THERAPY)",
            description: "Sıvı yönetimi ne hipovolemi ne de hipervolemi yaratacak şekilde, dinamik parametrelerle (SVV, Stroke Volume vb.) planlanır.",
            additionalInfo: "Aşırı sıvı yüklemesi barsak ödemine ve yara iyileşmesinde gecikmeye yol açar.",
          ),
          ErasProtocolsItem(
            title: "NORMOTERMİ KORUNMASI VE AKTİF ISITMA YÖNTEMLERİ",
            description: "Sıvı ısıtıcılar ve aktif üflemeli battaniyeler ile hastanun vücut ısısı cerrahi boyunca 36 derecenin üzerinde tutulur.",
            additionalInfo: "Hipotermi, kanama riskini ve cerrahi alan enfeksiyonu oranını artırır.",
          ),
          ErasProtocolsItem(
            title: "MİNİMAL İNVAZİV CERRAHİ TEKNİKLERİNİN TERCİHİ",
            description: "Doku hasarını minimize etmek için laparoskopik veya robotik tekniklerin kullanımı teşvik edilir.",
            additionalInfo: "Daha küçük insizyon, daha az inflamatuar yanıt ve daha hızlı mobilizasyon demektir.",
          ),
        ],
      ),
      ErasProtocolsCategory(
        categoryName: 'Postoperatif Stratejiler',
        items: [
          ErasProtocolsItem(
            title: "ERKEN POSTOPERATİF BESLENME VE BARSAK MOTİLİTESİ",
            description: "Genellikle ilk 24 saat içinde oral beslenmeye başlanarak barsak felci (ileus) riski ve enfeksiyonlar azaltılır.",
            additionalInfo: "Enteral beslenme, barsak mukoza bütünlüğünü korur.",
          ),
          ErasProtocolsItem(
            title: "ERKEN MOBİLİZASYON VE TROMBOEMBOLİ PROFİLAKSİSİ",
            description: "Hastanın ameliyat günü veya ilk sabahı ayağa kaldırılması tromboz, emboli ve akciğer komplikasyonlarını önler.",
            additionalInfo: "Mobilizasyon için yeterli analjezi ön koşuldur.",
          ),
          ErasProtocolsItem(
            title: "POSTOPERATİF MULTİMODAL ANALJEZİ YÖNETİMİ",
            description: "Opioidleri sınırlayan, düzenli parasetamol ve NSAİİ içeren planlı bir yaklaşımdır.",
            additionalInfo: "Ağrı duyulmadan önce düzenli aralıklarla dozlama yapılır.",
          ),
          ErasProtocolsItem(
            title: "İNVAZİV CİHAZLARIN VE KATETERLERİN HIZLI ÇEKİLMESİ",
            description: "Nazogastrik tüpler, üriner kateterler ve drenler klinik gereklilik biter bitmez (erken dönemde) çekilmelidir.",
            additionalInfo: "Bu cihazların varlığı hastanın hareketini kısıtlar ve enfeksiyon riskini artırır.",
          ),
          ErasProtocolsItem(
            title: "PERİOPERATİF GLİKOZ KONTROLÜ VE İNSÜLİN DİRENCİ",
            description: "Hiperglisemi komplikasyon riskini artırdığı için kan şekeri sıkı takip edilmeli ve stres yanıt baskılanmalıdır.",
            additionalInfo: "Preoperatif karbonhidrat yüklemesi insülin direncini kırmada başarılıdır.",
          ),
        ],
      ),
      ErasProtocolsCategory(
        categoryName: 'Multimodal Analjezi – ERAS\'ın Temel Taşı',
        items: [
          ErasProtocolsItem(
            title: "NSAİİ VE PARASETAMOLÜN ANALJEZİK ETKİNLİĞİ",
            description: "Düzenli kullanımda opioid ihtiyacını %50'ye kadar azaltabilen temel analjezik bileşenlerdir.",
            additionalInfo: "Sekonder etki olarak inflamatuar yanıtı da modüle ederler.",
          ),
          ErasProtocolsItem(
            title: "EPİDURAL ANALJEZİ VE BÜYÜK CERRAHİ ANALJEZİSİ",
            description: "Abdominal veya torakal büyük cerrahilerde ağrının sempatik baskısını en etkili kesen yöntemdir.",
            additionalInfo: "Barsak hareketlerinin daha erken başlamasına yardımcı olur.",
          ),
          ErasProtocolsItem(
            title: "PERİFERİK SİNİR BLOKLARININ REHABİLİTASYONA ETKİSİ",
            description: "Özellikle ortopedik ve ekstremite cerrahilerinde erken mobilizasyona olanak sağlar.",
            additionalInfo: "Lokal anestezikler sistemik yan etkilerden ari bölgesel konfor sunar.",
          ),
          ErasProtocolsItem(
            title: "LOKAL İNFİLTRASYON VE YARA HATTI ANALJEZİSİ",
            description: "İnsizyon hattına cerrah tarafından yapılan lokal anestezik uygulaması ilk saatlerdeki ağrıyı belirgin azaltır.",
            additionalInfo: "Basit, ucuz ve etkili bir multimodal bileşendir.",
          ),
        ],
      ),
      ErasProtocolsCategory(
        categoryName: 'ERAS Sonuçları',
        items: [
          ErasProtocolsItem(
            title: "POSTOPERATİF KOMPLİKASYON ORANLARINDAKİ AZALMA",
            description: "Akciğer enfeksiyonları, yara yeri problemleri ve tromboz gibi major komplikasyonlar anlamlı düzeyde azalır.",
            additionalInfo: "Standardize bakım sayesinde 'insan hatası' payı minimize edilir.",
          ),
          ErasProtocolsItem(
            title: "FİZYOLOJİK İYİLEŞME SÜRECİNİN HIZLANMASI",
            description: "Hastanın cerrahi öncesi temel fonksiyonlarına (beslenme, mobilite) geri dönüş hızı artar.",
            additionalInfo: "Dokuların oksijenlenmesi ve metabolizması daha hızlı normale döner.",
          ),
          ErasProtocolsItem(
            title: "HASTANEDE KALIŞ SÜRESİNDEKİ (LOS) BELİRGİN KISALMA",
            description: "ERAS uygulanan hastalarda taburculuk süresinde ortalama 2-3 günlük bir kısalma gözlenir.",
            additionalInfo: "Hastaneden çıkış kriterleri (ağrı kontrolü, oral beslenme) daha erken tamamlanır.",
          ),
          ErasProtocolsItem(
            title: "HASTA MEMNUNİYETİ VE YAŞAM KALİTESİ ARTIŞI",
            description: "Daha az ağrı ve daha hızlı hareket kabiliyeti hasta konforunu ve memnuniyet skorlarını yükseltir.",
            additionalInfo: "Hastanın tedavi sürecine katılımı ve eğitimi memnuniyeti pekiştirir.",
          ),
          ErasProtocolsItem(
            title: "SAĞLIK SİSTEMİ VE HASTANE MALİYETLERİNDE AZALMA",
            description: "Daha az komplikasyon ve daha kısa yatış süresi hastane maliyetlerinde büyük tasarruf sağlar.",
            additionalInfo: "Sağlık kaynaklarının daha verimli kullanılmasını sağlar.",
          ),
        ],
      ),
    ];
  }
}
