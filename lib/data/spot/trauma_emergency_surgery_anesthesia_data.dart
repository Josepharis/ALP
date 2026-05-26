import 'package:flutter/material.dart';

class TraumaEmergencySurgeryAnesthesiaItem {
  final String title;
  final String description;
  final String? subtitle;
  final String? additionalInfo;

  TraumaEmergencySurgeryAnesthesiaItem({
    required this.title,
    required this.description,
    this.subtitle,
    this.additionalInfo,
  });
}

class TraumaEmergencySurgeryAnesthesiaCategory {
  final String categoryName;
  final List<TraumaEmergencySurgeryAnesthesiaItem> items;

  TraumaEmergencySurgeryAnesthesiaCategory({
    required this.categoryName,
    required this.items,
  });
}

class TraumaEmergencySurgeryAnesthesiaData {
  static List<TraumaEmergencySurgeryAnesthesiaCategory>
      getTraumaEmergencySurgeryAnesthesiaData(BuildContext context) {
    return [
      TraumaEmergencySurgeryAnesthesiaCategory(
        categoryName: 'Primer Değerlendirme (ABCDE)',
        items: [
          TraumaEmergencySurgeryAnesthesiaItem(
            title: "HAVA YOLU YÖNETİMİ VE TOK HASTA KABULÜ",
            description: "Tüm travma hastaları aksi kanıtlanana kadar 'midesi dolu' kabul edilerek aspirasyona karşı korunmalıdır.",
            subtitle: "Servikal omurga yaralanması olasılığına karşı in-line stabilizasyon her an korunmalıdır",
            additionalInfo: "Başarısız entübasyon olasılığına karşı cerrahi havayolu setleri hazır bulundurulmalıdır.",
          ),
          TraumaEmergencySurgeryAnesthesiaItem(
            title: "SOLUNUMUN DEĞERLENDİRİLMESİ VE TANSİYON PNÖMOTORAKS",
            description: "Mekanik ventilasyon başlandıktan sonra gelişen ani hemodinamik instabilite öncelikle tansiyon pnömotoraksı düşündürmelidir.",
            subtitle: "Bilateral iğne torakostomi (2. İKM, midklaviküler hat) ve ardından tüp torakostomi uygulanmalıdır",
            additionalInfo: "Hastaya hemen %100 O2 başlanarak akciğer ekspansiyonu izlenmelidir.",
          ),
          TraumaEmergencySurgeryAnesthesiaItem(
            title: "DOLAŞIMIN DEĞERLENDİRİLMESİ VE ACİL RESÜSİTASYON",
            description: "Nabızsızlık ve penetran göğüs yaralanması varlığında hızlı sıvı replasmanı (500-1000 mL) ve bilateral göğüs tüpü önceliklidir.",
            subtitle: "Hayati tehlike arz eden kanamalar durdurulana kadar resüsitasyon devam etmelidir",
            additionalInfo: "Acil torakotomi endikasyonları (kardiyak tamponad vb.) dışında torakotomi rutin yapılmaz.",
          ),
          TraumaEmergencySurgeryAnesthesiaItem(
            title: "NÖROLOJİK FONKSİYON VE BİLİNÇ DURUMU (AVPU/GKS)",
            description: "Bilinç kaybı olan travmalı hastalarda metabolik nedenler (şeker, alkol, ilaç) dışlandıktan sonra SSS hasarı varsayılmalıdır.",
            additionalInfo: "GKS skoru 8'in altındaki hastalar havayolu koruması için entübe edilmelidir.",
          ),
          TraumaEmergencySurgeryAnesthesiaItem(
            title: "HASAR DEĞERLENDİRME VE HİPOTERMİDEN KORUNMA",
            description: "Hastanın tüm giysileri çıkarılarak 'tam soyma' muayenesi yapılmalı, ancak hemen ardından aktif ısıtma başlanmalıdır.",
            subtitle: "Ölümcül triadın (Asidoz-Koagülopati-Hipotermi) kırılması için hasta ve sıvılar ısıtılmalıdır",
            additionalInfo: "Hipotermi, koagülasyon kaskadını doğrudan bozarak kanamayı artırır.",
          ),
        ],
      ),
      TraumaEmergencySurgeryAnesthesiaCategory(
        categoryName: 'Kanama Sınıflaması',
        items: [
          TraumaEmergencySurgeryAnesthesiaItem(
            title: "SINIF I KANAMA (<%15 VOLÜM KAYBI)",
            description: "Vücut volümünün %15'inden azının kaybıdır; hemodinami genellikle stabil olup genelde sıvı replasmanı gerekmez.",
            additionalInfo: "Genç hastalarda kompanzasyon mekanizmaları sayesinde nabız normal kalabilir.",
          ),
          TraumaEmergencySurgeryAnesthesiaItem(
            title: "SINIF II KANAMA (%15-30 VOLÜM KAYBI)",
            description: "Kaybın %15-30 arasında olduğu bu evrede taşikardi başlar ve diyastolik kan basıncında artış (SBP korunur) izlenir.",
            additionalInfo: "Kristalloid veya kolloid replasmanına başlanmalı, kan hazırlığı yapılmalıdır.",
          ),
          TraumaEmergencySurgeryAnesthesiaItem(
            title: "SINIF III KANAMA (%30-40 VOLÜM KAYBI)",
            description: "Belirgin hipotansiyon ve metabolik asidoz gelişir; sıvı boluslarına verilen yanıt geçicidir ve tablo hızla tekrar bozulur.",
            additionalInfo: "Kan transfüzyonu (Eritrosit süspansiyonu) bu aşamada gereklidir.",
          ),
          TraumaEmergencySurgeryAnesthesiaItem(
            title: "SINIF IV KANAMA (>%40 VOLÜM KAYBI)",
            description: "Yaşamı tehdit eden şok tablosudur; masif transfüzyon ve kontrol resüsitasyonu derhal uygulanmalıdır.",
            additionalInfo: "Hayati organ perfüzyonu durma noktasına gelmiş olup saniyeler içinde müdahale şarttır.",
          ),
        ],
      ),
      TraumaEmergencySurgeryAnesthesiaCategory(
        categoryName: 'Travma Koagülopatisi',
        items: [
          TraumaEmergencySurgeryAnesthesiaItem(
            title: "TRAVMATİK KOAGÜLOPATİ İNSİDANSI VE RİSKLER",
            description: "Major travma geçiren hastaların yaklaşık %25'inde daha hastaneye varış anında koagülopati mevcuttur.",
            subtitle: "Baz açığı (base deficit) > 6 olan hastalarda koagülopati riski %20 artar",
            additionalInfo: "Doku hasarı, asidoz ve hemodilüsyonun bilesik etkisidir.",
          ),
          TraumaEmergencySurgeryAnesthesiaItem(
            title: "TRAVMA KOAGÜLOPATİSİ PATOFİZYOLOJİSİ",
            description: "Hipoperfüzyon sonucu trombomodülin artar; bu da fibrin oluşumunu azaltırken protein C aktivasyonu ile hiperfibrinolize yol açar.",
            additionalInfo: "Trombosit fonksiyon bozukluğu da tabloya eşlik eder.",
          ),
          TraumaEmergencySurgeryAnesthesiaItem(
            title: "TRANEKSAMİK ASİT (TXA) KULLANIM PROTOKOLÜ (CRASH-2)",
            description: "Major kanamalı travmada ilk 3 saat içinde 1 g bolus ve ardından 8 saatte 1 g infüzyon mortaliteyi belirgin azaltır.",
            additionalInfo: "3 saatten sonra verilen TXA fayda sağlamaz, hatta mortaliteyi artırabilir.",
          ),
        ],
      ),
      TraumaEmergencySurgeryAnesthesiaCategory(
        categoryName: 'Hemostatik Resüstasyon',
        items: [
          TraumaEmergencySurgeryAnesthesiaItem(
            title: "TRANSFÜZYON HEDEFİ: 1:1:1 ORANI (ERİTROSİT:TDP:TROMBOSİT)",
            description: "Güncel kılavuzlar kan ürünlerinin tam kanı taklit edecek şekilde 1:1:1 oranında replasmanını önermektedir.",
            subtitle: "Mümkünse TEG (Tromboelastografi) kılavuzluğunda spesifik ürün desteği sağlanmalı",
            additionalInfo: "Aşırı kristalloid yüklemesinden kaçınarak 'hemostatik denge' korunmalıdır.",
          ),
          TraumaEmergencySurgeryAnesthesiaItem(
            title: "ÇAPRAZ YAPILMAMIŞ (ACİL) TRANSFÜZYON SEÇİMİ",
            description: "Çok acil durumlarda kadında O Negatif, erkekte O Pozitif kan grubu çaprazlama (cross-match) beklenmeden verilebilir.",
            additionalInfo: "8 üniteden fazla O grubu verilmişse reaksiyon riski nedeniyle O grubu ile devam edilmelidir.",
          ),
          TraumaEmergencySurgeryAnesthesiaItem(
            title: "MASİF TRANSFÜZYON PROTOKOLÜ (MTP) VE ENDİKASYONLARI",
            description: "MTP, hayat kurtarıcı bir lojistik protokol olup; mortaliteyi ve çoklu organ yetmezliği riskini azaltır.",
            additionalInfo: "Protokolün devreye girmesi için kan bankası ile koordineli bir sistem kurulmalıdır.",
          ),
          TraumaEmergencySurgeryAnesthesiaItem(
            title: "ABC SKORU VE MTP İHTİYACI TAHMİNİ (>=2)",
            description: "Delici yaralanma, SBP <90 mmHg, HR >120 dk ve FAST (+) bulgularından 2 veya fazlası varsa masif transfüzyon ihtiyacı yüksektir.",
            additionalInfo: "Skorun 2 ve üzeri olması %40 üzerinde MTP ihtiyacı öngörür.",
          ),
        ],
      ),
      TraumaEmergencySurgeryAnesthesiaCategory(
        categoryName: 'Anestezi Yönetimi',
        items: [
          TraumaEmergencySurgeryAnesthesiaItem(
            title: "TRAVMA ANESTEZİSİNDE GENEL YAKLAŞIM VE GÜVENLİK",
            description: "Aksi teyit edilene kadar tüm travmalı hastalar servikal hasarlı, tok ve hipovolemik kabul edilmelidir.",
            additionalInfo: "Preoksijenasyon yapılamayan durumlarda hızlı ardışık entübasyon (RSI) uygulanmalıdır.",
          ),
          TraumaEmergencySurgeryAnesthesiaItem(
            title: "İNSTABİL TRAVMADA İNDÜKSİYON AJANI SEÇİMİ (KETAMİN/ETOMİDAT)",
            description: "Hemodinamik instabilitesi olanlarda Etomidat veya Ketamin indüksiyon için en güvenli tercihlerdir.",
            subtitle: "Amnezi (hatırlamama) sağlamak için gerekiyorsa düşük doz Skopolamin (0.4 mg) eklenebilir",
            additionalInfo: "Propofol ve tiyopental bu hastalarda şiddetli hipotansiyona ve kardiyak areste yol açabilir.",
          ),
          TraumaEmergencySurgeryAnesthesiaItem(
            title: "TRAVMA MONİTÖRİZASYONU VE ZAMAN YÖNETİMİ",
            description: "İnvaziv arteriyel monitörizasyon faydalı olsa da cerrahiye girişi ve kanama kontrolünü geciktirmemelidir.",
            additionalInfo: "Standart monitörler (EKG, SpO2, NIBP) ilk aşamada yeterlidir.",
          ),
          TraumaEmergencySurgeryAnesthesiaItem(
            title: "HASAR KONTROL CERRAHİSİ (DAMAGE CONTROL)",
            description: "Ameliyatın amacı kesin tamir değil; hızlıca kanama odaklarını kontrol etmek ve kontaminasyonu (bağırsak yaralanması vb.) durdurmaktır.",
            additionalInfo: "Hasta instabil kalmaya devam ediyorsa karın tamponlanarak kapatılıp resüsitasyona yoğun bakımda devam edilir.",
          ),
        ],
      ),
      TraumaEmergencySurgeryAnesthesiaCategory(
        categoryName: 'Travmatik Beyin Hasarı (TBH)',
        items: [
          TraumaEmergencySurgeryAnesthesiaItem(
            title: "AKUT SUBDURAL HEMATOM VE VENÖZ HASAR",
            description: "Köprü venlerin yırtılması sonucu oluşur; beyin atrofisi olan yaşlılarda ve major kafa travmalarında mortalitesi çok yüksektir.",
            additionalInfo: "Beyin parankim hasarı genellikle eşlik eder.",
          ),
          TraumaEmergencySurgeryAnesthesiaItem(
            title: "EPİDURAL HEMATOM (MCA HASARI) VE CERRAHİ LİMİTLER",
            description: "Genellikle A. Meningea Media hasarı sonucu oluşur ve prognozu subdural'e göre daha iyidir.",
            subtitle: "Supratentoriyal >30 mL ve infratentoriyal >10 mL olan hematomlar acil cerrahi boşaltma gerektirir",
            additionalInfo: "Klasik 'lucid interval' (geçici iyilik hali) bu kanamalarda görülür.",
          ),
          TraumaEmergencySurgeryAnesthesiaItem(
            title: "İNTRAPARANKİMAL HEMATOM VE DEKOMPRESYON",
            description: "Frontal ve temporal loblarda ani İKB artışına neden olan kanamalarda kafa içini rahatlatmak için dekompresyon uygulanabilir.",
            additionalInfo: "Beyin ödemi ile mücadele cerrahi kadar önemlidir.",
          ),
          TraumaEmergencySurgeryAnesthesiaItem(
            title: "DİFFÜZ AKSONAL HASAR (DAH) VE DESELERASYON",
            description: "Ağır yavaşlama (deselerasyon) travmaları sonucu aksonların mikroskobik düzeyde kopmasıdır; klinikte derin komanın eşlik ettiği yüksek mortaliteli bir tablodur.",
            additionalInfo: "Tomografide bulgular genellikle çok hafiftir ancak MRI'da hasar izlenebilir.",
          ),
        ],
      ),
      TraumaEmergencySurgeryAnesthesiaCategory(
        categoryName: 'İKB Yönetimi',
        items: [
          TraumaEmergencySurgeryAnesthesiaItem(
            title: "İNTRAKRANİYAL BASINÇ (İKB) NORMAL DEĞERLERİ VE SINIRLAR",
            description: "Normal İKB 10 mmHg civarındadır; kafa travmalı bir hastada basıncın mutlaka 20 mmHg'nin altında tutulması hedeflenir.",
            additionalInfo: "Basınç artışı serebral kan akımını keserek beyin ölümüne yol açabilir.",
          ),
          TraumaEmergencySurgeryAnesthesiaItem(
            title: "SEREBRAL PERFÜZYON BASINCI (CPP) HEDEFİ (50-70 MMHG)",
            description: "CPP (Ortalama Arter Basıncı - İKB) değeri kafa travmasında 50-70 mmHg aralığında tutularak beyin beslenmesi sağlanmalıdır.",
            additionalInfo: "Basıncın 50'nin altına düşmesi iskemik hasarı, 70'in üzerine çıkması beyin ödemini artırabilir.",
          ),
          TraumaEmergencySurgeryAnesthesiaItem(
            title: "HİPERVENTİLASYONUN İKB VE İSKEMİ ÜZERİNDEKİ ETKİSİ",
            description: "CO2 düşürülerek yapılan hiperventilasyon damarları büzerek İKB'yi hızla düşürür; ancak aşırı yapıldığında beyin iskemisi riski yaratır.",
            additionalInfo: "Sadece herniasyon belirtileri varlığında kısa süreli 'köprü' tedavisi olarak kullanılmalıdır.",
          ),
          TraumaEmergencySurgeryAnesthesiaItem(
            title: "MANNİTOL KULLANIMI VE OSMOLALİTE TAKİBİ",
            description: "Basıncı düşürmek için 0.25-1 g/kg dozunda Mannitol verilmeli; ancak serum osmolalitesi ve elektrolit bozunumu izlenmelidir.",
            additionalInfo: "Osmotik diürez hastayı dehidrate ederek beyindeki ödemi çeker.",
          ),
          TraumaEmergencySurgeryAnesthesiaItem(
            title: "BARBİTÜRAT KOMASI VE METABOLİK BASKILAMA",
            description: "Tedaviye dirençli İKB artışında beyin oksijen tüketimini ve metabolizmasını minimuma indirmek için Barbitürat koması uygulanabilir.",
            additionalInfo: "Serebral koruma sağlamak için metabolizmayı durdurmak hedeflenir.",
          ),
        ],
      ),
      TraumaEmergencySurgeryAnesthesiaCategory(
        categoryName: 'Spinal Kord Hasarı',
        items: [
          TraumaEmergencySurgeryAnesthesiaItem(
            title: "OMURGA STABİLİTESİNİN DEĞERLENDİRİLMESİ (3 KOLON KURALI)",
            description: "Omurga ön, orta ve arka olarak 3 kolona bölünür; en az 2 kolonun hasar alması omurganın 'instabil' olduğunu gösterir.",
            additionalInfo: "Deniz kolon sınıflamasına göre orta kolon (arka boylamasına bağ vb.) stabilitenin anahtarıdır.",
          ),
          TraumaEmergencySurgeryAnesthesiaItem(
            title: "SERVİKAL KIRIKLARDA MULTİPL HASAR RİSKİ",
            description: "Servikal bölgede kırığı olan hastaların %10-15'inde omurganın başka bir seviyesinde de eş zamanlı kırık mevcuttur.",
            additionalInfo: "Tüm omurga aksı cerrahi planı öncesi taranmalıdır.",
          ),
          TraumaEmergencySurgeryAnesthesiaItem(
            title: "TORAKOLOMBER KIRIKLARIN ÖZELLİKLERİ (T11-L3)",
            description: "T11-L3 arasındaki geçiş bölgesinde gelişen kırıklarda ikinci bir kırık görülme ihtimali %40'a kadar çıkabilir.",
            additionalInfo: "Bu bölge mobilitenin değiştiği mekanik olarak zayıf bir noktadır.",
          ),
          TraumaEmergencySurgeryAnesthesiaItem(
            title: "SPİNAL CERRAHİ ENDİKASYONLARI VE YÜK KAYBI",
            description: "Vertebra gövdesinde %50'den fazla yük kaybı veya omurilik kanalında %30'dan fazla daralma cerrahi stabilizasyon endikasyonudur.",
            additionalInfo: "Nörolojik defisitin ilerlemesi en acil cerrahi göstergedir.",
          ),
        ],
      ),
      TraumaEmergencySurgeryAnesthesiaCategory(
        categoryName: 'Yanık Yönetimi',
        items: [
          TraumaEmergencySurgeryAnesthesiaItem(
            title: "1. DERECE YANIK (EPİDERMAL HASAR)",
            description: "Sadece cildin en üst katmanı olan epidermis etkilenir; ağrılıdır ancak sistemik sıvı replasmanı gerektirmez.",
            additionalInfo: "Güneş yanıkları en tipik örneğidir.",
          ),
          TraumaEmergencySurgeryAnesthesiaItem(
            title: "2. DERECE YANIK (DERMİS KISMEN HASARLI)",
            description: "Epidermis ve dermisin bir kısmı hasarlanır; büller (su kabarcıkları) mevcuttur ve vücut yüzeyinin %20'sini aşarsa sıvı tedavisi şarttır.",
            additionalInfo: "Doku bütünlüğü yer yer bozulmuştur, enfeksiyona açıktır.",
          ),
          TraumaEmergencySurgeryAnesthesiaItem(
            title: "3. DERECE YANIK (TAM KAT HASAR)",
            description: "Tüm deri katlarını içine alır; sinir uçları hasar gördüğü için hissizdir ve iyileşme için mutlaka greftleme gerekir.",
            additionalInfo: "Deri rengi beyaz, füme veya kömürleşmiş görünümdedir.",
          ),
          TraumaEmergencySurgeryAnesthesiaItem(
            title: "YANIK MERKEZİNE SEVK KRİTERLERİ (>%20 YÜZEY)",
            description: "Erişkinde 2. veya 3. derece yanık yüzeyi toplam vücut alanının %20'sini aşıyorsa hasta tam teşekküllü yanık merkezine sevk edilmelidir.",
            additionalInfo: "Yüz, eller, ayaklar ve genital bölge yanıkları yüzdeden bağımsız olarak sevk nedenidir.",
          ),
          TraumaEmergencySurgeryAnesthesiaItem(
            title: "YANIK ŞOKU PATOFİZYOLOJİSİ VE HEMODİNAMİ",
            description: "Kapiler geçirgenlik artışına bağlı yoğun plazma kaybı sonucu kalp debisi ilk aşamada %50 oranında düşer (Yanık Şoku).",
            subtitle: "Doğru sıvı replasmanı yapıldığı takdirde bu tablo yaklaşık 48 saat içinde düzelir",
            additionalInfo: "Yanık şoku, hipovolemik ve distributif komponentleri olan karma bir şoktur.",
          ),
          TraumaEmergencySurgeryAnesthesiaItem(
            title: "PARKLAND FORMÜLÜ VE SIVI RESÜSİTASYONU",
            description: "Hesaplama: 4 mL x kg x %Yanık Yüzeyi; bu miktarın yarısı ilk 8 saatte, kalan yarısı sonraki 16 saatte verilir.",
            additionalInfo: "Formül sadece 2. ve 3. derece yanıklar için geçerlidir.",
          ),
          TraumaEmergencySurgeryAnesthesiaItem(
            title: "BROOK FORMÜLÜ İLE SIVI HESABI",
            description: "Daha az sıvı yüklemeyi hedefleyen modifiye Brook formülü, 2 mL x kg x %Yanık Yüzeyi üzerinden hesaplanır.",
            additionalInfo: "Pulmoner ödem riski olan hastalarda bu formül tercih edilebilir.",
          ),
          TraumaEmergencySurgeryAnesthesiaItem(
            title: "YAŞA GÖRE İDRAR ÇIKIŞI HEDEFLERİ",
            description: "Sıvı tedavisinin başarısı için erişkinde 0.5-1 mL/kg/saat, çocuklarda ise 1 mL/kg/saat idrar çıkışı hedeflenmelidir.",
            subtitle: "30 kg altı çocuklara replasman sıvısına ek olarak %5 Dekstroz da verilmelidir",
            additionalInfo: "1 yaş altındaki bebeklerde hedef 1-2 mL/kg/saat'tir.",
          ),
          TraumaEmergencySurgeryAnesthesiaItem(
            title: "ABDOMİNAL KOMPARTMAN SENDROMU RİSKİ",
            description: "Özellikle vücut yüzeyinin %20'sinden fazlası yanan çocuklarda 6 mL/kg/saat üzeri sıvı verilmesi karın içi basıncını aşırı artırabilir.",
            additionalInfo: "Karın duvarı yanıkları esnekliği azaltarak bu tabloyu ağırlaştırır.",
          ),
          TraumaEmergencySurgeryAnesthesiaItem(
            title: "KARBONMONOKSİT (CO) ZEHİRLENMESİ VE PULSE OKSİMETRE",
            description: "CO zehirlenmesinde standart nabız oksimetreleri hatalı şekilde %100 oksijen satürasyonu gösterebilir ve aldatıcıdır.",
            subtitle: "HbCO düzeyi %20'yi aşarsa hasta derhal entübe edilmeli ve mekanik ventilasyona bağlanmalıdır",
            additionalInfo: "HbCO düzeyinin %60'a ulaşması genellikle ölümcüldür; 100% O2 veya hiperbarik O2 tedavisi gereklidir.",
          ),
          TraumaEmergencySurgeryAnesthesiaItem(
            title: "YANIK SONRASI PULMONER KOMPLİKASYONLAR",
            description: "İnhalasyon hasarına bağlı gelişen hava yolu ödemi, kısıtlayıcı göğüs yanıkları ve geç dönem pnömonisi sık izlenir.",
            additionalInfo: "Üst havayolu ödemi saniyeler içinde tam obstrüksiyona ilerleyebilir.",
          ),
          TraumaEmergencySurgeryAnesthesiaItem(
            title: "YANIKTA HAVAYOLU YÖNETİMİ VE ÖDEM",
            description: "Fasiyal yanıklar ve burun kılı yanması varlığında, ödem gelişmeden erken entübasyon kararı alınmalıdır.",
            additionalInfo: "Gecikmiş entübasyon, ödem nedeniyle anatomik işaretlerin kaybolması sonucu imkansız hale gelebilir.",
          ),
          TraumaEmergencySurgeryAnesthesiaItem(
            title: "SÜKSİNİLKOLİN KULLANIM KONTRENDİKASYONU (48 SAAT+)",
            description: "Yanık sonrası ilk 48 saatten itibaren reseptör up-regülasyonu nedeniyle Süksinilkolin kullanımı ölümcül hiperkalemiye yol açar.",
            additionalInfo: "Nondepolarizan ajanlara karşı ise direnç gelişir, daha yüksek doz gerekir.",
          ),
          TraumaEmergencySurgeryAnesthesiaItem(
            title: "YANIK HASTASINDA ANALJEZİ YÖNETİMİ",
            description: "Yanık, vücuttaki en şiddetli ağrı nedenlerinden biridir; mutlaka multimodal analjezi ve opioid destekli plan yapılmalıdır.",
            additionalInfo: "Pansumanlar ve debridmanlar sırasında dozlar artırılmalıdır.",
          ),
        ],
      ),
    ];
  }
}
