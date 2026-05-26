import 'package:flutter/material.dart';

class RespiratorySystemsItem {
  final String title;
  final String description;
  final String? subtitle;
  final String? additionalInfo;

  RespiratorySystemsItem({
    required this.title,
    required this.description,
    this.subtitle,
    this.additionalInfo,
  });
}

class RespiratorySystemsCategory {
  final String categoryName;
  final List<RespiratorySystemsItem> items;

  RespiratorySystemsCategory({required this.categoryName, required this.items});
}

class RespiratorySystemsData {
  static List<RespiratorySystemsCategory> getRespiratorySystemsData(
    BuildContext context,
  ) {
    return [
      RespiratorySystemsCategory(
        categoryName: 'İnsuflasyon',
        items: [
          RespiratorySystemsItem(
            title: "İNSUFLASYON",
            description: "Anestezik gazların hastanın yüzüne ya da hava yoluna doğrudan üflendiği, geri soluma olmayan en basit anestezi yöntemidir.",
            subtitle: "Akım >10 L/dk → CO₂ birikimi önlenir",
            additionalInfo: "CO₂'nin birikmemesi için taze gaz akımının yüksek tutulması zorunludur. Kullanım alanları şu şekilde sıralanabilir:\n• Yüze üfleme: çocuk hastalarda ve yüzün kapatıldığı lokal işlemlerde\n• Akciğere üfleme: bronkoskopide anestezik gaz doğrudan trakeaya verilir\n• Nazal kanül: 6 L/dk'ya kadar kullanılır; her 1 L artış FiO₂'yi yaklaşık %4 yükseltir (maksimum ≈ %44)\n• Venturi maske: FiO₂'yi %24–40 arasında sabit tutar; bu değer dakika ventilasyonundan ve inspirasyon akım hızından bağımsızdır.",
          ),
        ],
      ),
      RespiratorySystemsCategory(
        categoryName: 'Açık Damla Anestezisi',
        items: [
          RespiratorySystemsItem(
            title: "AÇIK DAMLA ANESTEZİSİ",
            description: "Schimmel-Busch maskesi üzerine damlatılan eterle uygulanan tarihsel anestezi yöntemidir.",
            additionalInfo: "Tıp tarihinde kullanılan bu yöntemde anestezik sıvı, tel kafesli bir maskenin üzerindeki gaz geçirgen bir beze damlatılırdı. Hasta bu buharlı maddeyi soluyarak anestezi altına girerdi. Geri soluma kontrolü yoktur ve anestezi derinliğini ayarlamak deneyim gerektirirdi. Bugün yalnızca tarihsel önemi açısından bilinmektedir.",
          ),
        ],
      ),
      RespiratorySystemsCategory(
        categoryName: 'Draw-Over Anestezisi',
        items: [
          RespiratorySystemsItem(
            title: "DRAW-OVER ANESTEZİSİ",
            description: "Taşıyıcı gaz olarak atmosfer havasını kullanan, oksijen kaynağına ihtiyaç duymadan çalışabilen portatif bir anestezi yöntemidir.",
            subtitle: "Hortum ≈ 400 mL; geri solumasız valf + PEEP valfi mevcuttur",
            additionalInfo: "Doğada ya da kaynak yetersiz sahra koşullarında uygulanabilir olması en büyük avantajıdır. Potent halojenli ajanlar bu sistemde kullanılabilir. IPPV, CPAP ve PEEP uygulamaları mümkündür. Oksijen desteği şu şekilde FiO₂'yi etkiler:\n• 1 L/dk ekleme → FiO₂ %30–40\n• 4 L/dk ekleme → FiO₂ %60–80\nDezavantajları arasında pediatrik ve baş-boyun cerrahisinde uygulama güçlüğü ile atık gazların ortamı kirletmesi sayılabilir. SpO₂'nin %90'ın altına düşme riski göz önünde bulundurulmalıdır.",
          ),
        ],
      ),
      RespiratorySystemsCategory(
        categoryName: 'Mapleson Devreleri',
        items: [
          RespiratorySystemsItem(
            title: "MAPLESON DEVRELERİ (Genel Yapı)",
            description: "Hortum, taze gaz girişi, APL valfi ve rezervuar balondan oluşan geri solumalı veya geri solumasız yarı açık anestezi devre ailesidir.",
            additionalInfo: "Tüm Mapleson devrelerinde ortak bileşenler şunlardır:\n• Hortumlar: 22 mm çaplı, hacmi en az tidal volüme eşit olmalıdır\n• Taze gaz girişi: devrenin performansını belirleyen ana faktördür\n• APL valfi: basınç kontrollü dışa akım sağlar\n• Rezervuar balon: hem gaz rezervuarı hem de pozitif basınç uygulaması için kullanılır; büyük hacimli balon uyumu artırır ve barotravma riskini azaltır.",
          ),
          RespiratorySystemsItem(
            title: "MAPLESON A (Magill)",
            description: "Spontan solumada en verimli Mapleson devresidir; taze gaz girişi maskeye yakın olduğu için alveolar gaz önce dışarı atılır.",
            additionalInfo: "Kontrollü (mekanik) ventilasyonda ise CO₂ birikimi riski artar ve bu nedenle uygun değildir. Spontan solumada taze gaz akımı, dakika ventilasyona eşit tutulması yeterlidir.",
          ),
          RespiratorySystemsItem(
            title: "MAPLESON B",
            description: "Taze gaz girişi maske yanında olup APL valfi de maskeye yakın konumdadır; spontan ve kontrollü solumada orta düzeyde verimlidir.",
            additionalInfo: "Devre düzeni: Balon → Hortum → Taze Gaz → APL Valfi → Maske. B ve C devreleri özellikle kullanım pratikliği açısından değerlendirilir.",
          ),
          RespiratorySystemsItem(
            title: "MAPLESON C (Waters To-and-Fro)",
            description: "Mapleson B'nin kısaltılmış halidir; kısa hortum nedeniyle kompakt ama geri soluma riski yüksektir.",
            additionalInfo: "Günümüzde çok nadir kullanılır. Kısa devre uzunluğu ölü boşluğu azaltmaz çünkü yeterli taze gaz akımı olmadan CO₂ birikimi kaçınılmaz olur.",
          ),
          RespiratorySystemsItem(
            title: "MAPLESON D (Bain)",
            description: "Kontrollü ventilasyona en uygun Mapleson devresidir; içten geçen taze gaz hortumu sayesinde soluk ısındığı için pediatri ve uzun işlemlerde tercih edilir.",
            additionalInfo: "Taze gaz hortumu devrenin içinden geçtiğinden katlanma (kinking) riski taşır ve periyodik olarak kontrol edilmelidir. Kontrollü ventilasyonda daha yüksek taze gaz akımı gerektirir. Spontan solumada ise A devresi kadar verimli değildir.",
          ),
          RespiratorySystemsItem(
            title: "MAPLESON E (Ayre T-Parçası)",
            description: "Mapleson D'den balon ve APL valfi çıkarılmış halidir; geri soluması olmayan en basit pediatrik devredir.",
            additionalInfo: "Özellikle küçük çocuklar ve yenidoğanlarda tercih edilir çünkü solunum direnci minimumdur. Spontan solumada hastanın kendi solunum çabası ile çalışır.",
          ),
          RespiratorySystemsItem(
            title: "MAPLESON F (Jackson-Rees)",
            description: "Mapleson E'ye açık uçlu rezervuar balon eklenerek pediatrik kontrollü ventilasyona uygun hale getirilmiş devredir.",
            additionalInfo: "APL valfi yoktur; solunum kontrolü anestezistin balonun ucunu sıkması ile yapılır. Pediatrik pratikte yaygın kullanım alanı vardır. Solunum çabasını takip etmek kolaylıkla balonun hareketinden anlaşılabilir.",
          ),
        ],
      ),
      RespiratorySystemsCategory(
        categoryName: 'Halka (Circle) Sistemi',
        items: [
          RespiratorySystemsItem(
            title: "CO₂ ABSORBANLARI",
            description: "Halka sisteminde exhale edilen karbondioksiti tutarak gazın yeniden solunmasına izin veren kimyasal filtrelerdir; son ürünler ısı, su ve CaCO₃'tür.",
            subtitle: "Son ürün: ısı + su + CaCO₃",
            additionalInfo: "Yaygın kullanılan absorbanlar soda lime, baryum hydroxide lime ve amsorb'dur. İndikatör boyası olan etil viyole %50–70 tükenimi gösterince renk değiştirir ve değiştirilmesi gerekir. Riskler:\n• CO üretimi: absorban kuru ise, ısı yüksekse ya da desfluran/sevofluranla birlikte kullanılırsa artar\n• Compound A: sevofluranın soda lime ile reaksiyonu sonucu oluşan böbrek toksik metabolittir\nAbsorban verimliliği için tidal volüm, absorban hacminin en az yarısı kadar olmalıdır. Soda lime, baryum lime'a kıyasla daha yüksek kapasiteye sahiptir.",
          ),
          RespiratorySystemsItem(
            title: "TEK YÖNLÜ VALFLER",
            description: "Halka sisteminde gazın yalnızca tek yönde akmasını sağlayarak CO₂ içeren ekspiratuar havayı inspiratuar kola karıştırmayan kritik bileşenlerdir.",
            additionalInfo: "İnspiratuar ve ekspiratuar kolda birer adet tek yönlü valf bulunur. Bu valfler arızalanırsa geri soluma meydana gelir ve CO₂ birikmesi kaçınılmaz olur. Periyodik kontrolleri hasta güvenliği açısından zorunludur.",
          ),
          RespiratorySystemsItem(
            title: "DEVRE YERLEŞİMİ",
            description: "Halka sistemindeki bileşenlerin doğru konumlandırılması CO₂ kontrolü ve güvenli ventilasyon için kritik önem taşımaktadır.",
            additionalInfo: "Standart yerleşim şu şekildedir:\n• Taze gaz girişi (TGG): absorban ile inspiratuar valf arasına yerleştirilir\n• APL valfi: ekspiratuar valf ile absorban arasına yerleştirilir\n• Rezervuar balon: ekspiratuar valf ile absorban arasına bağlanır",
          ),
          RespiratorySystemsItem(
            title: "HALKA SİSTEMİ PERFORMANSI",
            description: "Taze gaz akımı 5 L/dk'nın üzerinde tutulursa absorban devre dışı kalabilir; düşük akımda ise absorbanın rolü hayati önem kazanır.",
            subtitle: "Bakteri riski → Y-konnektör veya inspiratuar/ekspiratuar kola filtre eklenebilir",
            additionalInfo: "Önemli performans özellikleri:\n• Ölü boşluk: hortum uzunluğu ölü boşluğu etkilemez\n• Direnç: valf ve absorber direnç artırır; kronik akciğer hastalığında önemlidir\n• Isı ve nem: absorber granülleri önemli bir ısı ve nem kaynağıdır\nDezavantajları:\n• Büyük ve karmaşık bir yapıya sahiptir\n• Absorban ve düşük akım kombinasyonunda öngörülemez komplikasyonlar ortaya çıkabilir",
          ),
        ],
      ),
      RespiratorySystemsCategory(
        categoryName: 'Diğer Sistemler',
        items: [
          RespiratorySystemsItem(
            title: "JET VENTİLASYON",
            description: "22G kanül aracılığıyla yüksek basınçlı hava jeti ile alveollere taze gaz ulaştırılan, geleneksel devrelerin kullanılamadığı zor havayolu durumlarında başvurulan ventilasyon yöntemidir.",
            additionalInfo: "Özellikle rijid bronkoskopi, lazer havayolu cerrahisi ve transtrakeal acil havayolu yönetiminde kullanılır. Gaz çıkışının serbest olması barotravmayı önlemek açısından zorunludur.",
          ),
          RespiratorySystemsItem(
            title: "KAPALI SİSTEM",
            description: "Exhale edilen gazın tamamının CO₂ absorbe edildikten sonra yeniden solunduğu; dışarıya hiç gaz atılmayan anestezi devresidir.",
            additionalInfo: "Taze gaz akımı yalnızca hastanın tükettiği oksijen miktarı kadar verilir. İlaç ve ısı kaybı minimumdur. Ancak absorban tüketiminin ve gaz bileşiminin çok sıkı takip edilmesini gerektirir.",
          ),
          RespiratorySystemsItem(
            title: "YARI KAPALI SİSTEM",
            description: "Exhale edilen gazın bir kısmının geri solunan, bir kısmının ise APL valfi aracılığıyla dışarı atıldığı en yaygın kullanılan anestezi devre tipidir.",
            additionalInfo: "Taze gaz akımı, kapalı sisteme göre daha yüksek tutulur. Gaz bileşimi daha öngörülebilirdir ve klinik açıdan yönetimi daha kolaydır. Günümüzde klinik pratikte en sık tercih edilen sistemdir.",
          ),
        ],
      ),
    ];
  }
}
