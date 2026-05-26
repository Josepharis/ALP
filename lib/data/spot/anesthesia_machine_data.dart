import 'package:flutter/material.dart';

class AnesthesiaMachineItem {
  final String title;
  final String description;
  final String? subtitle;
  final String? additionalInfo;

  AnesthesiaMachineItem({
    required this.title,
    required this.description,
    this.subtitle,
    this.additionalInfo,
  });
}

class AnesthesiaMachineCategory {
  final String categoryName;
  final List<AnesthesiaMachineItem> items;

  AnesthesiaMachineCategory({required this.categoryName, required this.items});
}

class AnesthesiaMachineData {
  static List<AnesthesiaMachineCategory> getAnesthesiaMachineData(
    BuildContext context,
  ) {
    return [
      AnesthesiaMachineCategory(
        categoryName: 'Gaz Dağıtımı',
        items: [
          AnesthesiaMachineItem(
            title: "BORU HATTI GİRİŞLERİ",
            description: "O₂, N₂O ve hava gibi gazlar hastaneye ait merkezi sistemden 50 psi basınçla makineye ulaşır.",
            subtitle: "Yanlış bağlantı önleme: DISS sistemi, tek yönlü valf ve filtre",
            additionalInfo: "DISS (Diameter Index Safety System) sayesinde her gaz için yalnızca doğru hortum bağlanabilir. Tek yönlü valf gaz geri kaçışını önler. Filtre ise boru hattından gelebilecek partikülleri temizler.",
          ),
          AnesthesiaMachineItem(
            title: "SİLİNDİR GİRİŞLERİ (PISS)",
            description: "Merkezi sistem yetersiz kaldığında yedek olarak devreye giren silindir girişleri, yanlış gaz bağlantısını önlemek için Pin İndeks Safety System ile donatılmıştır.",
            additionalInfo: "Silindir basıncı Bourdon manometre ile izlenir ve yaklaşık 45 psi'ye düşüldüğünde silindir devreye girmez; yalnızca merkezi sistem basıncı 45 psi'nin altına düştüğünde otomatik olarak silindir aktif hale gelir.",
          ),
          AnesthesiaMachineItem(
            title: "BASINÇ REGÜLATÖRÜ",
            description: "Merkezi sistemde sabit basınç sağlanırken, silindir kaynaklı gaz beslemesinde basınç silindirin doluluk düzeyine bağlı olarak değişkenlik gösterir.",
            additionalInfo: "Bu değişken basıncı stabilize etmek için silindir hatlarında basınç regülatörü zorunludur. Regülatör olmadan gazın yüksek basınç nedeniyle akım ölçer ve vaporizatör performansı etkilenebilir.",
          ),
        ],
      ),
      AnesthesiaMachineCategory(
        categoryName: 'Oksijen Güvenliği',
        items: [
          AnesthesiaMachineItem(
            title: "FAIL-SAFE VALF (N₂O Kesme)",
            description: "Oksijen basıncı belirli bir eşiğin altına düştüğünde N₂O ve diğer gazların akımını otomatik olarak kesen kritik güvenlik mekanizmasıdır.",
            additionalInfo: "O₂ basıncı %50'nin altına düşerse (yaklaşık 25–30 psi) diğer gazlar kesilir. Bununla birlikte fail-safe valf, oksijen analizörünün yerini tutmaz; zira hipoksik bir O₂/N₂O karışımı hâlâ oluşabilir. Bu nedenle inspiratuar kolda oksijen analizörü bulunması zorunludur.",
          ),
          AnesthesiaMachineItem(
            title: "O₂ GİRİŞ BASINÇ GÜVENLİĞİ",
            description: "Oksijen giriş basıncı kritik eşiğin altına indiğinde N₂O ve diğer gazlar otomatik olarak kesilir.",
            additionalInfo: "N₂O için eşik değer 0,5 psi, diğer gazlar için ise 10 psi olarak belirlenmiştir. Bu değerlerin altında gaz akımı otomatik olarak durur ve hipoksik karışım oluşumu engellenir.",
          ),
          AnesthesiaMachineItem(
            title: "HİPOKSİ ÖNLEME (Oksijen Analizörü)",
            description: "Hastaya ulaşan gazın yeterli oksijen içerip içermediğini anlık olarak izleyen ve hipoksiyi önleyen en güvenilir yöntem oksijen analizörüdür.",
            additionalInfo: "Oksijen analizörü, inspiratuar kola yerleştirilir ve FiO₂'yi gerçek zamanlı olarak ölçer. Düşük oksijen alarmı, hipoksik bir karışımın hastaya ulaşmadan tespit edilmesini sağlar. Fail-safe valf ve oransal sistemler yeterli olmadığındaki son güvencedir.",
          ),
        ],
      ),
      AnesthesiaMachineCategory(
        categoryName: 'Akım Kontrolü',
        items: [
          AnesthesiaMachineItem(
            title: "AKIM VALFİ (Kontrol Düğmesi)",
            description: "Her gaz için ayrı ayrı bulunan akım valfleri, proksimal yüksek basınçtaki gazı distal düşük basınca dönüştürerek akım ölçere yönlendirir.",
            subtitle: "Dokunma ve renk kodu sistemi yanlış gaz açılmasını engeller",
            additionalInfo: "O₂ düğmesi evrensel olarak en sağda, yivli ve diğerlerinden daha büyük boyutta yapılır; bu sayede hem görsel hem dokunsal ayrım sağlanır. Her gaz düğmesi kendine özgü renk ve şekle sahiptir.",
          ),
          AnesthesiaMachineItem(
            title: "O₂ AKIM VALFİ (Yivli ve Büyük Tasarım)",
            description: "Oksijen akım valfi, diğer gazlardan ayırt edilebilmesi için en sağda, yivli ve daha büyük çaplı olarak tasarlanmıştır.",
            additionalInfo: "Bu tasarım standardı, özellikle karanlık veya acil koşullarda anestezi uzmanının dokunarak oksijeni hızla bulabilmesini sağlar. Minimum O₂ akımı ≥150 mL/dk olarak ayarlanmıştır.",
          ),
          AnesthesiaMachineItem(
            title: "AKIM ÖLÇERLERİ (Rotametre)",
            description: "Sabit basınç – değişken orifis prensibine göre çalışan rotametreler, gaz akımını yüzen bir küre veya bobin ile görsel olarak gösterir.",
            subtitle: "Kürenin ortası okunur",
            additionalInfo: "Poiseuille Kanunu'na göre:\n• Düşük akım koşullarında tüpün dar alt kısmındaki laminer akımda gaz viskozitesi belirleyicidir\n• Yüksek akım koşullarında tüpün geniş üst kısmındaki türbülanslı akımda gaz yoğunluğu belirleyicidir\nMinimum O₂ akımı ≥150 mL/dk olarak sabitlenmiştir.",
          ),
        ],
      ),
      AnesthesiaMachineCategory(
        categoryName: 'Vaporizatörler',
        items: [
          AnesthesiaMachineItem(
            title: "VAPORİZATÖR GÜVENLİK KURALI",
            description: "Aynı anda birden fazla vaporizatör açılamaz; interlok mekanizması bunu fiziksel olarak engeller.",
            additionalInfo: "İki vaporizatör aynı anda açılırsa, çıkan karışık anestezik buhardaki konsantrasyonu tahmin etmek güçleşir. Ard arda kullanılan vaporizatörlerde, önceki ajanın etkisi hâlâ sürebileceğinden geçiş arasında bekleme önerilir.",
          ),
          AnesthesiaMachineItem(
            title: "POMPALAMA ETKİSİ",
            description: "Pozitif basınçlı ventilasyon veya O₂ flush mekanizmasının oluşturduğu geri basınç, vaporizatör çıkış konsantrasyonunu geçici olarak artırır.",
            additionalInfo: "Bu etki özellikle düşük taze gaz akımlarında belirginleşir. Eski tasarımlı vaporizatörlerde daha önemli bir sorunken, modern vaporizatörler bu etkiyi minimize eden basınç dengeleyici sistemlerle donatılmıştır.",
          ),
          AnesthesiaMachineItem(
            title: "BUHARLAŞMA FİZİĞİ",
            description: "Anestezik sıvının vaporizatörde buharlaşması, sıcaklık ve buhar basıncıyla doğrudan ilişkilidir; kaynama noktasında buhar basıncı atmosfer basıncına eşittir.",
            additionalInfo: "Buharlaşma hızı ısı ile doğru orantılıdır. Buharlaşma sırasında ısı tüketildiğinden vaporizatör soğur; bu da çıkış konsantrasyonunu düşürür. Modern vaporizatörler bunu telafi eden ısı değiştirici sistemlerle donatılmıştır.",
          ),
          AnesthesiaMachineItem(
            title: "GELENEKSEL VAPORİZATÖR (Sevofluran, İzofluran)",
            description: "Saatin tersi yönünde döndürülerek açılan ve sürükleyici gazın bir kısmını anestezik sıvı üzerinden geçiren bypass tipi vaporizatördür.",
            subtitle: "15 L/dk üstü veya 250 mL/dk altı akımda çıkış konsantrasyonu değişkenlik gösterebilir",
            additionalInfo: "Taze gazın bir bölümü bypass hattından doğrudan ilerler, diğer bölüm ise anestezik sıvı üzerinden geçerek buharla doyar. İki akımın karışımı ayarlanan konsantrasyonu oluşturur.",
          ),
          AnesthesiaMachineItem(
            title: "ELEKTRONİK VAPORİZATÖR (Desfluran)",
            description: "Desfluranın yüksek buhar basıncı (39°C'de 2 atm) nedeniyle oda sıcaklığında oda sıcaklığında buharlaşmasını istikrarlı şekilde kontrol edemeyen geleneksel vaporizatörlerin yerine kullanılan elektronik kontrollü sistemdir.",
            subtitle: "Taze gaz devre içinden geçmez; ortam basıncı değişimi çıkış konsantrasyonunu etkilemez",
            additionalInfo: "Isıtılmış ve basınçlandırılmış bir hazne içinde desfluran 2 atm basınca getirilir. Elektronik kontrol ünitesi, her akım koşulunda doğru konsantrasyonu sağlayacak şekilde gazı dozar. Bu yapısıyla geleneksel vaporizatörlerden tamamen farklı bir çalışma prensibi mevcuttur.",
          ),
        ],
      ),
      AnesthesiaMachineCategory(
        categoryName: 'Solunum Devresi ve Nemlendirme',
        items: [
          AnesthesiaMachineItem(
            title: "OKSİJEN ANALİZÖRLERİ",
            description: "İnspire edilen gaz karışımındaki oksijen yüzdesini anlık olarak ölçen ve hipoksi alarmı veren güvenlik cihazlarıdır.",
            additionalInfo: "Üç temel tip mevcuttur:\n• Clark (polarografik): elektrokimyasal prensiple çalışır, en yaygın kullanılan tiptir\n• Galvanik (yakıt pili): elektrik kaynağı gerektirmez; oksijen tükettikçe akım üretir\n• Paramanyetik: O₂'nin manyetik özelliklerine dayanır; referans gaz ile karşılaştırma yapar",
          ),
          AnesthesiaMachineItem(
            title: "SPİROMETRELER",
            description: "Hastanın soluduğu hava hacmini ölçerek tidal volüm ve dakika ventilasyonunun hedef değerlerde kalmasını izleyen devre içi ölçüm cihazlarıdır.",
            additionalInfo: "Ekspirasyon veya inspirasyon koluna yerleştirilebilir. İki temel çalışma prensibi mevcuttur:\n• Ultrasonik tip: ses dalgaları ile akım hızını hesaplar\n• Pervane (türbin) tip: gaz akımıyla dönen pervane sayısına göre hacim hesaplar",
          ),
          AnesthesiaMachineItem(
            title: "APL VALFİ (Ayarlanabilir Basınç Sınırlayıcı)",
            description: "Devredeki fazla gazı dışarı atarak hem spontan hem de kontrollü ventilasyonda güvenli basınç sınırlaması sağlayan vanadir.",
            additionalInfo: "Spontan solunumda tam açık tutulur ki hasta serbestçe nefes alabilsin. Kontrollü (manuel) ventilasyonda ise kısmen kapatılarak balon sıkıldığında pozitif basınç oluşturulur. Mekanik ventilatöre geçildiğinde APL valfi devre dışı kalır.",
          ),
          AnesthesiaMachineItem(
            title: "NEMLENDİRİCİLER (Pasif ve Aktif)",
            description: "İnspire edilen gazın nemlendirilmesi mukosiliyer işlevi korur; pasif cihazlar hastanın kendi nefesini kullanırken aktif cihazlar harici ısı ve su kaynağı gerektirir.",
            subtitle: "Aktif nemlendiricide inhaler gaz ≤41°C olmalıdır",
            additionalInfo: "Pasif tip: HME (Heat and Moisture Exchanger) — hastanın ekspire ettiği ısı ve nemi tutarak sonraki inspirasyona geri verir; yaklaşık 60 mL ölü boşluk oluşturur.\nAktif tipler:\n• Passover: su yüzeyi üzerinden gaz geçirilir\n• Wick: suyun içine batırılmış fitil üzerinden gaz akımı sağlanır\n• Bubble-through: gaz su içinden kabarcık şeklinde geçirilir\n• Vapor-phase: su buharlaştırılarak ısıtılmış gaz içine eklenir",
          ),
        ],
      ),
      AnesthesiaMachineCategory(
        categoryName: 'Ventilatörler',
        items: [
          AnesthesiaMachineItem(
            title: "VENTİLATÖR SİKLUSU",
            description: "Mekanik ventilasyon dört fazdan oluşur: inspirasyon, inspirasyon sonu (plato), ekspirasyon ve ekspirasyon sonu.",
            additionalInfo: "İnspirasyon fazında ayarlanan hacim veya basınç hedefe ulaşılana kadar gaz akımı sürer. İnspirasyon sonu pausunda alveol içi basınç dengesi sağlanır (plato basıncı ölçülür). Ekspirasyon pasif gerçekleşir. Ekspirasyon sonu ise PEEP uygulanabilen ya da solunum dinginliğinin sağlandığı kısa dinlenme dönemidir.",
          ),
          AnesthesiaMachineItem(
            title: "VENTİLATÖR FAZLARI (Basınç ve Akım)",
            description: "Ventilatör inspirasyonu sırasında basınç, akım ve hacim değerleri belirli eşik noktalar aracılığıyla kontrol edilir.",
            additionalInfo: "Tepe basınç (peak pressure): inspirasyonun en yüksek noktasıdır; solunum yolu direncini ve akım hızını yansıtır.\nPlato basıncı: akım durduğunda ölçülen statik basınçtır; akciğer kompliansını yansıtır.\nTepe – plato farkı büyükse hava yolu direnci yüksek demektir.",
          ),
          AnesthesiaMachineItem(
            title: "ÇİFT DEVRE PİSTON VENTİLATÖR",
            description: "Tidal hacmin saydam ve sert plastik körük içinde görülebildiği; anestezi devresindeki gaz hacmini kesin olarak kontrol eden ventilatör tipidir.",
            subtitle: "Spontan solunuma izin veren ayrı bir valf mevcuttur",
            additionalInfo: "Piston aşağı hareket ettiğinde körük genişler ve ekspire edilen gaz toplanır. Piston yukarı hareket ettiğinde körük sıkıştırılır ve gaz akciğerlere gönderilir. Düşürme (spill) valfi, inspirasyonda kapanarak tüm gazın hastaya gitmesini sağlar.",
          ),
          AnesthesiaMachineItem(
            title: "DÜŞÜRME VALFİ (Spill Valve)",
            description: "İnspirasyon sırasında kapanarak tüm gazı hastaya yönlendiren; ekspirasyon sırasında açılarak fazla gazı atık gaz hattına ileten ventilatör güvenlik valfidir.",
            additionalInfo: "Spill valfi arızalanır ve inspirasyonda açık kalırsa, basınç sisteme birikmez ve yeterli tidal hacim sağlanamaz. Bu durum alarm sistemi tarafından düşük tidal hacim uyarısıyla tespit edilir.",
          ),
          AnesthesiaMachineItem(
            title: "ALARM SİSTEMİ",
            description: "Ventilatör alarmları hastanın ventilasyonunu izleyen ve sapmaları anında uyaran kritik güvenlik bileşenleridir.",
            additionalInfo: "Başlıca alarm türleri:\n• Düşük basınç alarmı: devre kaçağı veya bağlantı kopukluğunu gösterir\n• Düşük tidal hacim alarmı: yetersiz ventilasyonu işaret eder\n• Düşük ekspirasyon CO₂ alarmı: doğru ventilasyonun en güvenilir göstergesidir; değerin sıfıra yaklaşması özofageal entübasyonu düşündürür",
          ),
        ],
      ),
      AnesthesiaMachineCategory(
        categoryName: 'Atık Gaz Temizleme',
        items: [
          AnesthesiaMachineItem(
            title: "NIOSH SINIR DEĞERLERİ",
            description: "Çalışma ortamındaki anestezik gaz maruziyetini sınırlandıran NIOSH standartları, kronik mesleki zararlanmayı önlemek amacıyla belirlenmiştir.",
            additionalInfo: "İzin verilen maksimum maruz kalma sınırları:\n• N₂O tek başına: 25 ppm\n• Halojenli ajan tek başına: 2 ppm\n• N₂O + halojenli ajan kombinasyonu: 0,5 ppm\nBu sınırların aşılması, kronik N₂O maruziyetine bağlı B₁₂ vitamini bozulması ve halojenli ajanlara bağlı karaciğer hasarı riskini doğurabilir.",
          ),
          AnesthesiaMachineItem(
            title: "AKTİF / PASİF ATIK GAZ SİSTEMİ",
            description: "Atık anestezik gazları çalışma ortamına yayılmadan uzaklaştıran sistemlerdir; güvenli çalışma için devre basıncı 0,5–3,5 cmH₂O arasında tutulmalıdır.",
            additionalInfo: "Pasif sistem: atık gazları binanın havalandırma sistemine bağlayarak dışarı atar; güvenilirliği ortam koşullarına bağlıdır.\nAktif sistem: vakum pompasıyla sürekli emme yaparak daha güvenilir bir temizleme sağlar. 10–15 L/dk atık gaz temizleme kapasitesine sahiptir. Aşırı emme basıncına karşı koruyucu valfler mevcuttur.",
          ),
        ],
      ),
    ];
  }
}
