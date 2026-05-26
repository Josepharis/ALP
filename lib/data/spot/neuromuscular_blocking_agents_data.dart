import 'package:flutter/material.dart';

class NeuromuscularBlockingAgentsItem {
  final String title;
  final String description;
  final String? subtitle;
  final String? additionalInfo;

  NeuromuscularBlockingAgentsItem({
    required this.title,
    required this.description,
    this.subtitle,
    this.additionalInfo,
  });
}

class NeuromuscularBlockingAgentsCategory {
  final String categoryName;
  final List<NeuromuscularBlockingAgentsItem> items;

  NeuromuscularBlockingAgentsCategory({
    required this.categoryName,
    required this.items,
  });
}

class NeuromuscularBlockingAgentsData {
  static List<NeuromuscularBlockingAgentsCategory>
  getNeuromuscularBlockingAgentsData(BuildContext context) {
    return [
      NeuromuscularBlockingAgentsCategory(
        categoryName: 'Nöromüsküler İletim Fizyolojisi',
        items: [
          NeuromuscularBlockingAgentsItem(
            title: "AKSİYON POTANSİYELİ VE ACH SALINIMI",
            description: "Sinir ucuna ulaşan aksiyon potansiyeli, kalsiyum kanallarını açarak asetilkolinin (Ach) motor uç plağa salınmasını sağlar.",
            subtitle: "Reseptörlerin sadece %10'una Ach bağlanması kas kasılması için yeterlidir",
            additionalInfo: "Salınan Ach, postsinaptik membrandaki nikotinik reseptörlere bağlanarak sodyum kanallarını açar ve depolarizasyon başlatır. Bu süreç milisaniyeler içinde gerçekleşir ve Ach, asetilkolinesteraz enzimi (AchE) tarafından hızla yıkılarak sonlandırılır.",
          ),
          NeuromuscularBlockingAgentsItem(
            title: "NİKOTİNİK RESEPTÖR YAPISI (2α + β + δ + ε)",
            description: "Erişkinde beş alt üniteden (2 alfa, 1 beta, 1 delta, 1 epsilon) oluşan kompleks bir protein yapısıdır.",
            subtitle: "Fetal dönemde epsilon (ε) alt ünitesinin yerini gama (γ) alır",
            additionalInfo: "Kas kasılmasının gerçekleşmesi için Ach moleküllerinin her iki alfa (α) alt ünitesine aynı anda bağlanması şarttır. Patolojik durumlarda (yanıklar, felçler) fetal tip reseptörlerin tekrar sentezlenmesi süksinilkolin sonrası ölümcül hiperkalemi riskini doğurur.",
          ),
          NeuromuscularBlockingAgentsItem(
            title: "ACH SALINIMI VE KUANTUM TEORİSİ",
            description: "Asetilkolin sinir ucunda veziküller içinde 'kuantum' adı verilen paketler halinde saklanır.",
            subtitle: "Bir sinir uyarısında yaklaşık 200 kuantum (2 milyon Ach molekülü) salınır",
            additionalInfo: "Her bir kuantum yaklaşık 10.000 Ach molekülü içerir. Ortamdaki kalsiyum (Ca²⁺) miktarının artışı salınımı güçlendirirken, magnezyum fazlalığı Ach salınımını baskılayarak kas gevşeticilerin etkisini artırır.",
          ),
          NeuromuscularBlockingAgentsItem(
            title: "PATOLOJİK DURUMLAR VE RESEPTÖR SAYISI",
            description: "Bazı hastalıklar Ach salınım miktarını veya reseptör duyarlılığını değiştirerek nöromüsküler iletimi bozar.",
            additionalInfo: "• Eaton-Lambert Sendromu: Sinir ucundan Ach salınımının azaldığı durumdur; kas gevşeticilere duyarlılık artmıştır.\n• Myastenia Gravis: Postsinaptik reseptör sayısının otoimmün olarak azaldığı durumdur; süksinilkoline direnç görülürken, nondepolarizan ajanlara aşırı duyarlılık vardır.",
          ),
        ],
      ),
      NeuromuscularBlockingAgentsCategory(
        categoryName: 'Blok Mekanizmaları ve Farmakoloji',
        items: [
          NeuromuscularBlockingAgentsItem(
            title: "DEPOLARİZAN VE NONDEPOLARİZAN BLOK FARKLARI",
            description: "Kas gevşeticilerin tamamı kuarterner amonyum bileşikleri olup, reseptöre bağlanma şekillerine göre ikiye ayrılırlar.",
            subtitle: "Depolarizan ajanlar Ach taklitçisi iken, nondepolarizanlar yarışmalı antagonisttir",
            additionalInfo: "• Depolarizan (Süksinilkolin): Reseptöre bağlanıp sürekli depolarizasyon yaparak kası uyarılamaz hale getirir (Faz I Blok). Süre uzarsa Faz II bloğa döner.\n• Nondepolarizan: Alfa alt ünitelerine bağlanıp Ach'nin yerleşmesini engelleyerek kanalın açılmasını önler. Bu blok, AchE inhibitörleri (Neostigmin) ile geri çevrilebilir.",
          ),
          NeuromuscularBlockingAgentsItem(
            title: "DENERVASYON HİPERSENSİTİVİTESİ",
            description: "Sinir hasarı, yanık veya immobilizasyon sonrası kas yüzeyinde 'ekstra-junctional' reseptörlerin sayısı hızla artar.",
            additionalInfo: "Bu durum, süksinilkolin uygulaması sonrası aşırı iyon çıkışına ve durdurulamayan hiperkalemiye neden olur. Nondepolarizan ajanlara karşı ise bu tip hastalarda genellikle bir direnç gelişir (daha fazla reseptörü kapatmak için daha fazla doz gerekir).",
          ),
          NeuromuscularBlockingAgentsItem(
            title: "KANAL BLOKLARI (AÇIK VE KAPALI KANAL)",
            description: "İlaç moleküllerinin reseptörün üzerindeki iyon kanalını fiziksel olarak tıkaması sonucu oluşan iletim kusurudur.",
            subtitle: "Antibiyotikler, kokain ve neostigmin kanal bloğu yapabilir",
            additionalInfo: "Kanal kapalıyken giriş yolunun tıkanmasına 'kapalı kanal bloğu', kanal açıkken içeri girip kanalı tıkamasına 'açık kanal bloğu' denir. Bu blok türleri genellikle klasik geri çevirme (antagonizma) yöntemlerine yanıt vermezler.",
          ),
          NeuromuscularBlockingAgentsItem(
            title: "ANTAGONİZMA VE YIKIM YOLLARI",
            description: "Bloğun sonlandırılması ya ilacın vücuttan atılmasıyla ya da farmakolojik ajanlarla sağlanır.",
            subtitle: "Sugammadeks, sadece steroid yapılı (Roküronyum, Veküronyum) ajanları hapsederek temizler",
            additionalInfo: "• Psödokolinesteraz: Süksinilkolin ve Mivaküryumun yıkımından sorumludur.\n• Hoffman Eliminasyonu: Atraküryum ve Sisatraküryumun karaciğer/böbrek bağımsız kendiliğinden yıkımıdır.\n• AchE İnhibitörleri: Kavşaktaki Ach miktarını artırarak nondepolarizan bloku yarışmalı olarak sonlandırır.",
          ),
        ],
      ),
      NeuromuscularBlockingAgentsCategory(
        categoryName: 'Periferik Sinir Stimülasyonu',
        items: [
          NeuromuscularBlockingAgentsItem(
            title: "TOF (TRAIN OF FOUR) MONİTORİZASYONU",
            description: "İki saniye içinde verilen 4 ardışık uyarı ile kas gevşekliğinin seviyesini belirleyen standart yöntemdir.",
            additionalInfo: "Yanıtların (kasılmaların) giderek zayıflaması (fade), nondepolarizan bloğun veya Faz II bloğun tipik göstergesidir. 4 uyarının da alınamaması derin amir; son uyarının (T4) kaybolması %75-80, ilk uyarının (T1) kaybolması ise %95'in üzerinde reseptörün kapalı olduğunu gösterir.",
          ),
          NeuromuscularBlockingAgentsItem(
            title: "TETANİK UYARI VE DİĞER YÖNTEMLER",
            description: "Derin blok seviyelerini (TOF 0 iken) değerlendirmek veya uyanma öncesi artık bloku dışlamak için kullanılan güçlü uyarılardır.",
            subtitle: "Posttetanik potansiyasyon sadece nondepolarizan blokta görülür",
            additionalInfo: "Tetanik uyarı (50-100 Hz, 5 saniye) sonrası Ach salınımı artar ve geçici bir güçlenme (potansiyasyon) görülür. En hassas artık blok değerlendirme yöntemleri DBS (Double Burst Stimulation) ve tetanik uyarıdır.",
          ),
        ],
      ),
      NeuromuscularBlockingAgentsCategory(
        categoryName: 'Depolarizan Kas Gevşeticiler (Süksinilkolin)',
        items: [
          NeuromuscularBlockingAgentsItem(
            title: "SÜKSİNİLKOLİN (DİASETİLKOLİN) FARMAKOLOJİSİ",
            description: "Altın standart hızlı başlangıçlı (30-60 sn) ve kısa etkili (5-10 dk) tek depolarizan ajandır.",
            additionalInfo: "İki asetilkolin molekülünün birleşmesinden oluşur. Psödokolinesteraz (plazma kolinesteraz) tarafından hızla parçalandığı için normal şartlarda etkisi çok kısadır. Entübasyon için en ideal koşulları sağlar.",
          ),
          NeuromuscularBlockingAgentsItem(
            title: "DİBUKAİN SAYISI VE GENETİK VARYASYONLAR",
            description: "Psödokolinesteraz enziminin genetik olarak eksik veya bozuk olduğu durumları belirleyen laboratuvar değeridir.",
            subtitle: "Düşük dibukain sayısı, süksinilkolin etkisinin saatlerce uzamasına neden olur",
            additionalInfo: "• Normal (%80): Süre 5-10 dk\n• Heterozigot (%40-60): Süre 10-20 dk\n• Homozigot (%20): Süre 4-6 saate kadar uzayabilir. Bu hastalarda yapay ventilasyon desteği hayati önem taşır.",
          ),
          NeuromuscularBlockingAgentsItem(
            title: "KARDİYOVASKÜLER YAN ETKİLER",
            description: "Muskarinik reseptörler üzerinden etki ederek, özellikle ikinci dozlarda çocuklarda ciddi bradikardiye neden olabilir.",
            additionalInfo: "Düşük dozlarda bradikardi baskınken, yüksek dozlarda taşikardi ve hipertansiyon görülebilir. Bradikardiyi önlemek için pediatrik vakalarda atropin ile birlikte kullanımı önerilir.",
          ),
          NeuromuscularBlockingAgentsItem(
            title: "HİPERKALEMİ VE DİĞER KRİTİK YAN ETKİLER",
            description: "Hücre dışına potasyum çıkışına yol açarak (normalde 0.5 mEq/L artış) riskli hastalarda ani kalp durmasına neden olabilir.",
            subtitle: "Yanık ve ağır travmalarda 7-10. günden itibaren kullanımı ölümcüldür",
            additionalInfo: "• Göz İçi Basıncı: Artışa neden olur, göz travmalarında dikkatli olunmalıdır.\n• Fasikülasyon: İndüksiyon öncesi görülen kas seğirmeleri postoperatif kas ağrılarına yol açar.\n• MH Tetikleyici: Malign Hipertermiyi en güçlü tetikleyen ajanlardan biridir.\n• Masseter Spazmı: Ağzın açılamaması MH'nin ilk belirtisi olabilir.",
          ),
          NeuromuscularBlockingAgentsItem(
            title: "KONTRENDİKASYONLAR VE MH İLİŞKİSİ",
            description: "Mevcut yan etkileri nedeniyle rutin pediatrik kullanımda ve bilinen Malign Hipertermi (MH) öyküsünde kesinlikle kaçınılmalıdır.",
            additionalInfo: "Ayrıca ileri derece yanıklar, ezilme yaralanmaları (crush), spinal kord hasarları ve denervasyonla seyreden nörolojik hastalıklarda (ALS, MS vb.) hiperkalemi riski nedeniyle kullanılmaz.",
          ),
        ],
      ),
      NeuromuscularBlockingAgentsCategory(
        categoryName: 'Nondepolarizan Kas Gevşeticiler',
        items: [
          NeuromuscularBlockingAgentsItem(
            title: "GENEL ÖZELLİKLER VE YAPI ANALİZİ",
            description: "Kimyasal yapılarına göre Steroid (Panküronyum vb.) veya İzokinolin (Atraküryum vb.) türevleri olarak sınıflandırılırlar.",
            subtitle: "Steroid yapılılar genellikle vagolitik (taşikardi yapıcı), izokinolinler histamin salgılatıcıdır",
            additionalInfo: "Hücre içine girmezler, sadece reseptör düzeyinde yarışmalı antagonizma yaparlar. Yan etkileri genellikle kimyasal yapılarına dayanan otonomik etkilerdir. Etki başlangıç süreleri genellikle süksinilkoline göre daha yavaştır.",
          ),
          NeuromuscularBlockingAgentsItem(
            title: "BLOK GÜCÜNÜ ETKİLEYEN FARMAKOLOJİK FAKTÖRLER",
            description: "Kullanılan inhalasyon anestezikleri ve elektrolit dengesizlikleri nondepolarizan bloku derinleştirir.",
            subtitle: "Hipotermi ve magnezyum fazlalığı bloğu belirgin şekilde güçlendirir",
            additionalInfo: "• İlaçlar: Aminoglikozidler, tetrasiklinler ve kalsiyum kanal blokerleri blok etkisini artırır.\n• Elektrolitler: Hipokalemi, hipokalsemi ve hipermagnezemi kavşakta Ach etkinliğini azaltarak gevşeme süresini uzatır.",
          ),
          NeuromuscularBlockingAgentsItem(
            title: "ÖZEL HASTA GRUPLARI VE DİRENÇLİ KASLAR",
            description: "Vücuttaki kasların kas gevşeticilere duyarlılığı farklıdır; diyafram ve glottik kaslar genellikle bloğa en dirençli olanlardır.",
            additionalInfo: "Uyanma döneminde diyafram hareketi ilk dönen fonksiyondur ancak glottik kaslar en son düzelir; bu yüzden tam derlenme sağlanmadan tüp çekilmemelidir. Yenidoğanlarda reseptörler daha duyarlı olmasına rağmen, dağılım hacmi geniş olduğu için doz ayarlaması genellikle yetişkinle benzerdir.",
          ),
        ],
      ),
      NeuromuscularBlockingAgentsCategory(
        categoryName: 'Ajanlara Özel Klinik Spotlar',
        items: [
          NeuromuscularBlockingAgentsItem(
            title: "ATRAKÜRİUM (HOFFMAN ELİMİNASYONU)",
            description: "Vücut ısısında ve fizyolojik pH'da kendiliğinden yıkılan (Hoffman eliminasyonu), bu sayede karaciğer veya böbrek yetmezliğinde güvenle kullanılan bir ajandır.",
            subtitle: "Metaboliti olan Laudanozin merkezi sinir sistemini uyararak nöbet tetikleyebilir",
            additionalInfo: "Hoffman eliminasyonu asidozda yavaşlar, alkalozda hızlanır. Yüksek dozlarda belirgin histamin salınımı yaparak hipotansiyon ve bronkospazma neden olabilir.",
          ),
          NeuromuscularBlockingAgentsItem(
            title: "SİSATRAKÜRİUM",
            description: "Atraküryumun daha potent bir izomeridir; en önemli avantajı histamin salınımı yapmamasıdır.",
            additionalInfo: "Aynı şekilde Hoffman eliminasyonu ile yıkılır. Karaciğer ve böbrek hastalarında organ yetmezliğinden bağımsız uyanma sağladığı için en çok tercih edilen orta etkili ajanlardan biridir.",
          ),
          NeuromuscularBlockingAgentsItem(
            title: "PANKÜRÖNYUM (VAGOLİTİK ETKİ)",
            description: "Uzun etkili bir steroid türevi olup, muskarinik reseptörleri baskılayarak kalp hızını ve kan basıncını artırmasıyla bilinir.",
            additionalInfo: "Birincil olarak böbreklerden atılır, bu nedenle böbrek yetmezliğinde etkisi çok fazla uzar. Taşikardi istenen vakalarda (örneğin pediatrik kalp cerrahisi) avantaj sağlayabilir.",
          ),
          NeuromuscularBlockingAgentsItem(
            title: "VEKÜRÖNYUM",
            description: "Kardiyovasküler stabilite sağlayan, birincil olarak safra yoluyla atılan orta etkili bir steroiddir.",
            subtitle: "Aktif metaboliti böbrek yetmezliğinde birikerek bloğu uzatabilir",
            additionalInfo: "Histamin salınımı yapmaz. Kadınlar bu ilaca erkeklere göre yaklaşık %30 daha duyarlıdır. Uzun süreli yoğun bakım infüzyonlarında birikim etkisi (metabolitler nedeniyle) görülebilir.",
          ),
          NeuromuscularBlockingAgentsItem(
            title: "ROKÜRÖNYUM",
            description: "En hızlı etkili nondepolarizan ajandır (60-90 sn); süksinilkolin kontrendike olduğunda 'hızlı indüksiyon' için alternatiftir.",
            additionalInfo: "Metabolize edilmez, değişmeden safra ve böbreklerle atılır. Sugammadeks ile her an hızla geri çevrilebilmesi (antagonizma) büyük bir güvenlik avantajı sağlar. Kalp hızını hafifçe artırabilir.",
          ),
          NeuromuscularBlockingAgentsItem(
            title: "GANTAKÜRİUM",
            description: "Çok yeni bir ajan olup, süksinilkoline benzer şekilde çok hızlı başlangıç ve çok kısa etki süresine sahiptir.",
            additionalInfo: "L-sistein ile indirgenerek ve ester hidrolizi ile hızla inaktive edilir. Gelecekte süksinilkolinin yan etkisiz alternatifi olması beklenmektedir.",
          ),
        ],
      ),
    ];
  }
}
