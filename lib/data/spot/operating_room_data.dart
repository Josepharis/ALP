import 'package:flutter/material.dart';

class OperatingRoomItem {
  final String title;
  final String description;
  final String? subtitle;
  final String? additionalInfo;

  OperatingRoomItem({
    required this.title,
    required this.description,
    this.subtitle,
    this.additionalInfo,
  });
}

class OperatingRoomCategory {
  final String categoryName;
  final List<OperatingRoomItem> items;

  OperatingRoomCategory({
    required this.categoryName,
    required this.items,
  });
}

class OperatingRoomData {
  static List<OperatingRoomCategory> getOperatingRoomData(BuildContext context) {
    return [
      OperatingRoomCategory(
        categoryName: "Medikal Gaz Kaynakları",
        items: [
          OperatingRoomItem(
            title: "O₂ H-SİLİNDİR",
            description: "Büyük merkezi sistemlerde ana kaynak olarak kullanılan, 2000 psi basınçlı devasa oksijen tüpleridir.",
            additionalInfo: "Merkezi gaz santrallerinde istasyoner olarak bulunurlar. Silindir içindeki 2000 psi'lik yüksek basınç, boru hattına verilmeden önce regülatörler aracılığıyla güvenli kullanım seviyesi olan 55 ±5 psi değerine düşürülür.",
          ),
          OperatingRoomItem(
            title: "O₂ E-SİLİNDİR",
            description: "Anestezi cihazına doğrudan bağlanabilen, acil durumlar ve taşıma için kullanılan 660 litrelik yedek oksijen kaynağıdır.",
            additionalInfo: "2000 psi tam doluluk basıncına sahiptir. Pim indeks sistemi (PISS) sayesinde cihazın arkasına yalnızca oksijen girişine uygun şekilde takılabilir. 20 °C standart sıcaklıkta yaklaşık 660 litre gaz barındırır.",
          ),
          OperatingRoomItem(
            title: "SIVI OKSİJEN",
            description: "Kritik sıcaklığı olan –119 °C'nin altında tutularak büyük hacimlerde ve ekonomik olarak depolanan oksijen formudur.",
            additionalInfo: "Büyük hastanelerin temel oksijen kaynağıdır. Gaz haline kıyasla çok daha az yer kaplar. Sisteme verilmeden önce evaporatörler aracılığıyla gaz fazına geçirilerek boru hattına basılır. Kritik sıcaklığın üzerine çıkarsa sıvı halde tutulamaz.",
          ),
          OperatingRoomItem(
            title: "PİN İNDEKS SİSTEMİ (PISS)",
            description: "Gaz silindirlerinin anestezi cihazına yanlış takılmasını ve hastaya yanlış gaz verilmesini önleyen mekanik güvenlik anahtarıdır.",
            additionalInfo: "Yoke (çatal) düzeneği üzerindeki pimler ile silindir valfi üzerindeki deliklerin eşleşmesi esasına dayanır. Her gazın (O₂, N₂O, Hava) kendine özgü bir pim dizilimi vardır; bu sayede oksijen yerine azot protoksit takılması fiziksel olarak imkansızdır.",
          ),
          OperatingRoomItem(
            title: "N₂O (AZOT PROTOKSİT)",
            description: "Mavi renkli silindirlerde hem sıvı hem gaz fazında bir arada bulunan, kritik sıcaklığı 36,5 °C olan anestezik gazdır.",
            additionalInfo: "Silindir basıncı, içindeki sıvı faz tamamen bitene kadar sabit (745 psi) kalır. Bu nedenle manometreye bakarak kalan gaz miktarını anlamak mümkün değildir; miktar ancak silindirin tartılması (brüt ağırlık - dar ağırlığı) ile kesin olarak hesaplanabilir.",
          ),
          OperatingRoomItem(
            title: "MEDİKAL HAVA",
            description: "Oksijen ve azotun belirli oranlarda karışımıyla elde edilen, kritik sıcaklığı –140,6 °C olan temiz hava kaynağıdır.",
            additionalInfo: "Ameliyathanelerde genellikle sarı renk koduyla belirtilir. Özellikle yüksek oksijen konsantrasyonunun istenmediği veya hava yolu cerrahilerinde yanma riskini azaltmak için taşıyıcı gaz olarak tercih edilir.",
          ),
          OperatingRoomItem(
            title: "KARBONDİOKSİT (CO₂)",
            description: "Laparoskopi ve robotik cerrahi işlemlerinde karın boşluğunu şişirerek (insuflasyon) çalışma alanı yaratmak amacıyla kullanılır.",
            additionalInfo: "Gri silindirlerde saklanır. Renksiz ve kokusuzdur; ancak en önemli özelliği yanıcı olmaması ve kan dolaşımına emildiğinde hızla elimine edilebilmesidir. Hafif asidik karakteri nedeniyle işlem sonrası omuz ağrısına neden olabilir.",
          ),
        ],
      ),
      OperatingRoomCategory(
        categoryName: "Ameliyathane Çevresel Faktörler",
        items: [
          OperatingRoomItem(
            title: "İDEAL SICAKLIK YÖNETİMİ",
            description: "Hem hasta konforu hem de enfeksiyon kontrolü için oda sıcaklığı 20-24 °C aralığında sabitlenmelidir.",
            additionalInfo: "Sıcaklığın bu sınırların altına düşmesi 'Perioperatif Hipotermi' riskini doğurur. Hipotermi; yara yeri enfeksiyonunu artırır, pıhtılaşmayı bozar (koagülopati) ve kardiyak yan etkileri tetikler. Özellikle pediatrik ve geriatrik hastalar bu değişime çok hassastır.",
          ),
          OperatingRoomItem(
            title: "NEM DENGESİ",
            description: "Havada taşınan enfeksiyonları önlemek ve statik elektrik birikimini engellemek için nem %50–55 seviyesinde tutulmalıdır.",
            additionalInfo: "Nem oranının %30'un altına düşmesi statik elektrik kaynaklı patlama ve yangın riskini, ayrıca enfeksiyon yayılımını artırır. %60'ın üzerine çıkması ise steril örtülerin bariyer özelliğini bozar ve küflenmeye neden olur.",
          ),
          OperatingRoomItem(
            title: "HAVALANDIRMA VE POZİTİF BASINÇ",
            description: "Ameliyathane havası HEPA filtrelerden geçirilerek saatte en az 25 kez yenilenmeli ve koridora göre pozitif basınçta tutulmalıdır.",
            additionalInfo: "Hafif pozitif basınç sayesinde kapı açıldığında kirli hava içeri girmez, temiz hava dışarı çıkar. Tavandan tabana doğru düzenli akış (laminer akım) partiküllerin yere çökmesini sağlar. HEPA filtreler 0.3 mikron boyutundaki partikülleri %99.97 oranında süzer.",
          ),
          OperatingRoomItem(
            title: "GÜRÜLTÜ KONTROLÜ",
            description: "Ekip iletişimini ve konsantrasyonu bozmamak amacıyla gürültü seviyesi 70 dB sınırının altında tutulmalıdır.",
            additionalInfo: "Cihaz alarmları, aspiratör sesleri ve ekip konuşmaları gürültü seviyesini hızla yükseltebilir. Yüksek gürültü, özellikle anestezi indüksiyonu ve uyandırma gibi kritik evrelerde hem hasta anksiyetesini artırır hem de hatalı ilaç/doz uygulama riskini tetikleyebilir.",
          ),
        ],
      ),
      OperatingRoomCategory(
        categoryName: "Radyasyon Güvenliği",
        items: [
          OperatingRoomItem(
            title: "ALARA / ALARP PRENSİBİ",
            description: "Radyasyon maruziyetinin 'mümkün olan en düşük seviyede' tutulması gerektiğini savunan temel güvenlik felsefesidir.",
            additionalInfo: "As Low As Reasonably Achievable/Practicable: Gereksiz her türlü maruziyetten kaçınılmalıdır. Uygulamada üç ana kural vardır: 1- Maruziyet zamanını en aza indirmek, 2- Kaynaktan mümkün olduğunca uzaklaşmak, 3- Kurşun bariyerlerle zırhlama yapmak.",
          ),
          OperatingRoomItem(
            title: "TERS KARE KURALI",
            description: "Radyasyonun şiddeti, kaynağa olan mesafenin karesiyle ters orantılı olarak hızla azalır.",
            additionalInfo: "Fiziksel bir koruma olmasa dahi mesafe en iyi koruyucudur. Örneğin; radyasyon kaynağından 1 metre yerine 2 metre uzaklaşmak, maruz kalınan ışın miktarını 4 kat (2²), 3 metre uzaklaşmak ise 9 kat (3²) azaltır. İdeal mesafe en az 2 metredir.",
          ),
          OperatingRoomItem(
            title: "RİSKLİ ALANLAR VE KORUNMA",
            description: "Skopi (C-kollu) ve floroskopi kullanılan girişimsel işlemler radyasyon riskinin en yoğun olduğu alanlardır.",
            additionalInfo: "Bu ortamlarda çalışan tüm ekip üyeleri kurşun önlük, tiroid koruyucu ve kurşun gözlük takmalıdır. Ayrıca maruziyet miktarını takip etmek için yaka seviyesinde dozimetre taşınması yasal bir zorunluluktur.",
          ),
        ],
      ),
      OperatingRoomCategory(
        categoryName: "Elektrik Güvenliği",
        items: [
          OperatingRoomItem(
            title: "MAKROŞOK VE MİKROŞOK",
            description: "Doğrudan kalbe ulaşan çok küçük akımlar (mikroşok) bile ölümcül ventriküler fibrilasyona neden olabilir.",
            additionalInfo: "Makroşok (mA seviyesi) deriden geçerken yüksek dirençle karşılaşır. Ancak mikroşok (μA seviyesi), santral venöz kateter veya pace kablosu gibi doğrudan yollarla kalbe ulaşırsa 100 μA gibi düşük değerlerde dahi durmaya neden olabilir. İzin verilen kaçak akım limiti 10 μA'dir.",
          ),
          OperatingRoomItem(
            title: "HAT İZOLASYON MONİTÖRÜ (LIM)",
            description: "İzole güç sistemindeki kaçak akım düzeyini sürekli tarayarak personeli elektrik çarpmasına karşı uyaran cihazdır.",
            additionalInfo: "LIM alarmı sistemde bir kaçak olduğunu (topraklama hatası) gösterir. Alarm çaldığında ameliyat durdurulmaz ve güç kesilmez; ancak sisteme en son takılan cihazın fişi çekilmeli ve teknik servis çağrılmalıdır. LIM, izolasyon trafosu ile birlikte çalışır.",
          ),
        ],
      ),
      OperatingRoomCategory(
        categoryName: "Yangın Güvenliği",
        items: [
          OperatingRoomItem(
            title: "YANGIN ÜÇGENİ ÜYELERİ",
            description: "Yangın için Yakıt, Oksitleyici ve Isı (ateşleme) unsurlarının bir arada bulunması şarttır; ameliyathaneler bu açıdan risklidir.",
            additionalInfo: "Sistemde her zaman bulunan bileşenler:\n• Yakıt: Alkollü dezenfektanlar, steril drapeler, bağırsak gazları.\n• Oksitleyici: Oksijen ve N₂O (yanmayı hızlandırır).\n• Isı/Ateşleme: Koter ucu, lazer ışınları, defibrilatör kaşıkları.",
          ),
          OperatingRoomItem(
            title: "CO₂ SÖNDÜRÜCÜ TERCİHİ",
            description: "Hassas medikal cihazlara zarar vermemesi ve termal yaralanma riskini minimize etmesi nedeniyle öncelikli yangın söndürme ajanıdır.",
            additionalInfo: "Hızlı dağılır, kalıntı bırakmaz ve elektriği iletmez. Ancak kapalı bir alanda yoğun kullanıldığında ortamdaki oksijeni süpürebileceği ve personelde asfiksi riski yaratabileceği akılda tutulmalıdır.",
          ),
        ],
      ),
    ];
  }
}
