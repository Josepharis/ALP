import 'package:flutter/material.dart';

class LocalAnestheticsItem {
  final String title;
  final String description;
  final String? subtitle;
  final String? additionalInfo;

  LocalAnestheticsItem({
    required this.title,
    required this.description,
    this.subtitle,
    this.additionalInfo,
  });
}

class LocalAnestheticsCategory {
  final String categoryName;
  final List<LocalAnestheticsItem> items;

  LocalAnestheticsCategory({required this.categoryName, required this.items});
}

class LocalAnestheticsData {
  static List<LocalAnestheticsCategory> getLocalAnestheticsData(
    BuildContext context,
  ) {
    return [
      LocalAnestheticsCategory(
        categoryName: 'Etki Mekanizması ve Fizyoloji',
        items: [
          LocalAnestheticsItem(
            title: "MEMBRAN POTANSİYELİ VE SODYUM KANALLARI",
            description: "Lokal anestezikler (LA), voltaj bağımlı sodyum kanallarının alfa alt ünitesine bağlanarak sodyum girişini ve dolayısıyla depolarizasyonu engeller.",
            subtitle: "İstirahat potansiyeli –70 mV düzeyindedir ve Na-K ATPaz pompası ile korunur",
            additionalInfo: "Lokal anestezikler, sodyum kanalının 'açık' veya 'inaktif' formlarına daha yüksek afinite gösterirler. Bu durum 'use-dependent block' (kullanım bağımlı blok) olarak adlandırılır; yani sinir ne kadar sık uyarılırsa blok o kadar derinleşir.",
          ),
          LocalAnestheticsItem(
            title: "LOKAL ANESTEZİK ETKİ SIRALAMASI VE SİNİR LİFLERİ",
            description: "Küçük çaplı, miyelinli ve hızlı uyarı ileten sinir lifleri lokal anesteziklere karşı en duyarlı olanlardır.",
            additionalInfo: "Klinik pratikte blokaj sırası genellikle şu şekildedir: Otonomik sinir etkilenmesi > Isı (soğuk/sıcak) algısı kaybı > Ağrı duyusu kaybı > Dokunma/Basınç duyusu kaybı > Motor fonksiyon kaybı (felç).",
          ),
          LocalAnestheticsItem(
            title: "DİĞER SODYUM KANAL BLOKERLERİ VE TOKSİNLER",
            description: "Bazı sistemik moleküller ve doğal toksinler de sodyum kanalları üzerinde lokal anestezik benzeri etkiler oluşturabilirler.",
            subtitle: "Tetradotoksin (balon balığı zehri), kanala dış merkezden bağlanarak felç yapar",
            additionalInfo: "Lokal anestezik benzeri sodyum kanalı blokajı yapan diğer ajanlar arasında Trisiklik Antidepresanlar (TCA), meperidin, ketamin, kalsiyum kanal blokerleri ve volatil anestezikler sayılabilir.",
          ),
        ],
      ),
      LocalAnestheticsCategory(
        categoryName: 'Yapı - Aktivite İlişkisi ve Kimya',
        items: [
          LocalAnestheticsItem(
            title: "KİMYASAL YAPI VE GRUPLANDIRMA (ESTER VE AMİD)",
            description: "Lokal anestezikler, bir lipofilik aromatik grup ile bir hidrofilik amin grubunun ester veya amid bağı ile bağlanmasından oluşur.",
            subtitle: "Artikain, benzen halkası yerine tiyofen halkası içeren özel bir amid yapısındadır",
            additionalInfo: "Lokal anestezikler zayıf baz yapısındadır. İlaç isminde 'i' harfi 'caine' ekinden önce geliyorsa (Lidocaine, Bupivacaine) o ilaç amid grubundadır. Ester grubu ilaçlar (Procaine, Tetracaine) isminde tek 'i' harfi barındırır.",
          ),
          LocalAnestheticsItem(
            title: "POTENS VE ETKİ BAŞLANGICINI BELİRLEYEN FAKTÖRLER (pKa)",
            description: "İlacın etki başlangıç hızı pKa değeri ile, potens (güç) ise yağda çözünürlüğü (lipofiliklik) ile doğru orantılıdır.",
            subtitle: "pKa değeri fizyolojik pH'a (7.4) ne kadar yakınsa ilaç o kadar hızlı etki eder",
            additionalInfo: "Önemli bir istisna olarak Kloroprokain, yüksek pKa değerine sahip olmasına rağmen yüksek konsantrasyonda kullanıldığı için en hızlı etki eden ajanlardan biridir. Benzokain ise pKa'sı düşük olup yüklü formu bulunmayan özel bir ajandır.",
          ),
          LocalAnestheticsItem(
            title: "pH DENGESİ VE ALKALİNİZASYON (SODYUM BİKARBONAT)",
            description: "Lokal anestezik solüsyonuna sodyum bikarbonat eklenmesi, ilacın iyonize olmamış (serbest) formunu artırarak etkisini hızlandırır.",
            subtitle: "Ticari solüsyonlar stabilite için asidik (pH 6-7) tutulur; içerikte epinefrin varsa pH 4-5'e kadar düşer",
            additionalInfo: "Alkalinizasyon (10 mL LA için 1 mL %8.4 NaHCO3) sadece etki başlangıcını hızlandırmakla kalmaz, aynı zamanda enjeksiyon sırasındaki ağrıyı ve doku irritasyonunu da azaltır.",
          ),
          LocalAnestheticsItem(
            title: "ÇÖZÜNÜRLÜK VE PROTEİNE BAĞLANMA ÖZELLİKLERİ",
            description: "Yağda çözünürlüğü yüksek olan ajanlar dokuda daha uzun süre tutunur ve bu sayede etki süreleri daha uzundur.",
            subtitle: "Lokal anestezikler kanda temel olarak alfa-1 asit glikoproteine bağlanırlar",
            additionalInfo: "Alfa-1 asit glikoprotein seviyesi stres, cerrahi ve kanser gibi durumlarda artar; bu da serbest (aktif) ilaç miktarının azalmasına ve toksisite riskinin düşmesine neden olabilir.",
          ),
        ],
      ),
      LocalAnestheticsCategory(
        categoryName: 'Klinik Farmakoloji ve Emilim',
        items: [
          LocalAnestheticsItem(
            title: "SİSTEMİK EMİLİM SIRALAMASI VE BÖLGESEL FARKLAR",
            description: "İlacın kan dolaşımına geçiş hızı, enjekte edildiği bölgenin kanlanma düzeyi ile doğrudan ilişkilidir.",
            subtitle: "Emilim hızı: IV > Trakeal > İnterkostal > Paraservikal > Epidural > Siyatik > SC",
            additionalInfo: "EMLA krem (%5 Lidokain + %5 Prilokain karışımı), deri üzerinden 3-5 mm derinliğe kadar nüfuz edebilir ve etkili olabilmesi için uygulamadan sonra 1-2 saat beklenmesi gerekir.",
          ),
          LocalAnestheticsItem(
            title: "EPİNEFRİN EKLEMENİN KLİNİK AVANTAJLARI",
            description: "Lokal anesteziklere vazokonstriktör (epinefrin veya fenilefrin) eklenmesi emilimi azaltarak etki süresini uzatır ve toksisite riskini düşürür.",
            additionalInfo: "Bu etki özellikle kısa ve orta etkili ajanlarda (Lidokain, Prilokain) belirgindir. Bupivakain gibi uzun etkili ajanların süresine etkisi daha sınırlıdır. Ayrıca bölgedeki kanamayı azaltarak cerrahi konforu artırır.",
          ),
          LocalAnestheticsItem(
            title: "VÜCUTTAKİ DAĞILIM VE AKCİĞER FİLTRE ETKİSİ",
            description: "Lokal anestezikler sistemik dolaşıma girdikten sonra önce beyin ve kalp gibi iyi kanlanan dokulara dağılırlar.",
            subtitle: "Akciğerler, büyük miktarda lokal anesteziği tutarak (süzerek) sistemik toksisiteyi geciktiren bir filtre görevi görür",
            additionalInfo: "İskelet kasları ise düşük afiniteli olmalarına rağmen geniş kütleleri sayesinde büyük miktarda lokal anesteziği depo edebilirler.",
          ),
          LocalAnestheticsItem(
            title: "METABOLİZMA: ESTERLER VE AMİDLER",
            description: "Ester grubu yerel anestezikler plazmada parçalanırken, amid grubu olanlar karaciğerde metabolize edilirler.",
            subtitle: "Esterler plazma psödokolinesterazı ile yıkılır; yarı ömürleri çok kısadır",
            additionalInfo: "Ester yapısındaki ilaçların yıkımı sonucu oluşan PAVA (para-amino benzoik asit) maddesi allerjik reaksiyonlardan sorumludur. Amidlerin metabolizma hızı ise şu sırayı izler: Prilokain > Lidokain > Mepivakain > Ropivakain > Bupivakain.",
          ),
          LocalAnestheticsItem(
            title: "PRİLOKAİN VE METHEMOGLOBİNEMİ YÖNETİMİ",
            description: "Yüksek dozda (>10 mg/kg) kullanılan prilokainin bir metaboliti olan o-toluidin, hemoglobinin yapısını bozarak methemoglobinemiye neden olur.",
            subtitle: "Tedavide %1'lik metilen mavisi (1-2 mg/kg) 5 dakika içinde uygulanır",
            additionalInfo: "Methemoglobinemi durumunda hastada siyanoz (morarma) ve pulse oksimetrede yanıltıcı değerler görülür. Benzokain de benzer şekilde methemoglobinemi tetikleyebilir.",
          ),
        ],
      ),
      LocalAnestheticsCategory(
        categoryName: 'Organ Sistemleri Üzerine Toksisite Ve Etki',
        items: [
          LocalAnestheticsItem(
            title: "NÖROLOJİK TOKSİSİTE VE ERKEN UYARI BULGULARI",
            description: "Sistemik toksisitenin (LAST) ilk belirtileri genellikle merkezi sinir sistemi ile ilgili sübjektif şikayetlerdir.",
            subtitle: "Ağız çevresinde uyuşma, dilde karıncalanma, kulak çınlaması (tinnitus) ve metalik tat ilk uyarıcıdır",
            additionalInfo: "Zehirli dozlar arttıkça ajitasyon, görme bulanıklığı ve sonunda nöbet (konvülziyon) gelişebilir. Benzodiazepinler ve hiperventilasyon, nöbet eşiğini yükselterek koruma sağlar. Lidokain cerrahide entübasyon sırasında kafa içi basınç artışını önlemek için IV olarak kullanılabilir.",
          ),
          LocalAnestheticsItem(
            title: "NÖROTOKSİSİTE SIRALAMASI VE CAUDA EQUINA SENDROMU",
            description: "Sinir hücreleri üzerine doğrudan temas eden yüksek konsantrasyonlu lokal anestezikler kalıcı hasara yol açabilir.",
            subtitle: "Nörotoksisite potansiyeli: Lidokain = Tetrakain > Bupivakain > Ropivakain",
            additionalInfo: "Sürekli intratekal (spinal) uygulama sırasında %5'lik lidokain kullanımı, bacaklarda kalıcı güç kaybı ve idrar-gaita kaçırma ile karakterize Cauda Equina Sendromu (KES) riskini artırır.",
          ),
          LocalAnestheticsItem(
            title: "SOLUNUM SİSTEMİ ETKİLERİ VE BRONKODİLATASYON",
            description: "Lokal anestezikler havayolu düz kaslarını gevşetebilmesine rağmen inhaler formları astımlı hastalarda tam tersi etki yapabilir.",
            additionalInfo: "Sistemik lidokain uygulaması hipoksik yanıtta (drive) azalmaya neden olabilir. Bronkospazmı çözme yeteneği olsa da, astımlı bir hastaya inhaler lidokain verilmesi bronşları uyararak feci bir daralmaya yol açabilir.",
          ),
          LocalAnestheticsItem(
            title: "KARDİYOVASKÜLER ETKİLER VE KARDİYOTOKSİSİTE",
            description: "Kalp iletim sistemindeki sodyum kanalları baskılandığında aritmi, AV blok ve kalp durması gelişebilir.",
            subtitle: "Kardiyotoksisite riski: Bupivakain > Ropivakain > Lidokain",
            additionalInfo: "• Bupivakain: Kalbe çok sıkı bağlanır (fast-in, slow-out), geri çevirmesi en zor olan ajandır.\n• Ropivakain ve Levobupivakain: Saf S-izomer formlarıdır; bupivakaine göre çok daha güvenli bir kardiyak profil sergilerler.\n• Kokain: Sempatik uçlarda noradrenalin geri alımını bloke ederek hipertansif kriz ve ciddi aritmilere neden olur.",
          ),
          LocalAnestheticsItem(
            title: "İMMÜNOLOJİK VE HEMATOLOJİK EK ETKİLER",
            description: "Allerjik reaksiyonlar esterlerde PABA, amidlerde ise genellikle koruyucu bir madde olan metilparaben kaynaklıdır.",
            additionalInfo: "Lokal anestezikler koagülasyonu (pıhtılaşmayı) hafif düzeyde baskılarlar ve fibrinolizi artırırlar. Bu etkileri tromboemboli riskini azaltmada cerrahi sonrası bir avantaj olabilir.",
          ),
        ],
      ),
      LocalAnestheticsCategory(
        categoryName: 'Klinik Altın Spotlar',
        items: [
          LocalAnestheticsItem(
            title: "ÖZET VE KRİTİK HATIRLATMALAR",
            description: "Anestezi sınavlarının ve klinik pratiğin en vazgeçilmez lokal anestezik bilgileri.",
            additionalInfo: "• En kardiyotoksik: Bupivakain.\n• En güvenli (S-izomer): Ropivakain.\n• En hızlı etki: Kloroprokain (pKa yüksek olmasına rağmen).\n• Methemoglobinemi yapanlar: Prilokain ve Benzokain.\n• Toksisite ilk bulgu: Ağız çevresi uyuşma.\n• Cauda Equina riski: %5 Lidokain intratekal uygulama.",
          ),
        ],
      ),
    ];
  }
}
