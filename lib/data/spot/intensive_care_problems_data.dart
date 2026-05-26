import 'package:flutter/material.dart';

class IntensiveCareProblemsItem {
  final String title;
  final String description;
  final String? subtitle;
  final String? additionalInfo;

  IntensiveCareProblemsItem({
    required this.title,
    required this.description,
    this.subtitle,
    this.additionalInfo,
  });
}

class IntensiveCareProblemsCategory {
  final String categoryName;
  final List<IntensiveCareProblemsItem> items;

  IntensiveCareProblemsCategory({
    required this.categoryName,
    required this.items,
  });
}

class IntensiveCareProblemsData {
  static List<IntensiveCareProblemsCategory> getIntensiveCareProblemsData(BuildContext context) {
    return [
      IntensiveCareProblemsCategory(
        categoryName: 'Genel İlkeler',
        items: [
          IntensiveCareProblemsItem(
            title: "YOĞUN BAKIM HASTALARININ MULTİSİSTEMİK RİSKLERİ",
            description: "Kritik hastalar, tek bir organ sisteminden ziyade multisistem organ disfonksiyonu riski altında olan kompleks vakalardır.",
            additionalInfo: "Dinamik fizyolojik değişimler her an izlenmelidir.",
          ),
          IntensiveCareProblemsItem(
            title: "YOĞUN BAKIMDA ANESTEZİSTİN KRİTİK ROLÜ",
            description: "Mekanik ventilasyon, hemodinamik destek, sıvı-elektrolit yönetimi ve enfeksiyon kontrolü anestezistin temel sorumluluğudur.",
            additionalInfo: "Perioperatif süreçten yoğun bakıma geçişte anestezistin tecrübesi hayati önem taşır.",
          ),
          IntensiveCareProblemsItem(
            title: "YOĞUN BAKIM ÜNİTESİNDE MONİTÖRİZASYON GEREKSİNİMLERİ",
            description: "Yaşam desteği alan hastalarda sürekli vital bulgu takibi ve multidisipliner bir yaklaşım başarının anahtarıdır.",
            additionalInfo: "Monitörizasyon sadece cihazlara bağımlı kalmamalı, klinik değerlendirmeyi de kapsamalıdır.",
          ),
        ],
      ),
      IntensiveCareProblemsCategory(
        categoryName: 'Solunum Sistemi Sorunları',
        items: [
          IntensiveCareProblemsItem(
            title: "HİPOKSEMİ ETİYOLOJİSİ VE YOĞUN BAKIMDA PNÖMONİ RİSKİ",
            description: "Atelektazi, ARDS, pnömoni ve pulmoner emboli yoğun bakımda oksijenizasyon bozukluğunun en sık nedenleridir.",
            subtitle: "Tanı PaO₂ <60 mmHg veya belirgin SpO₂ düşüklüğü ile konur",
            additionalInfo: "Tedavide FiO₂ artırma, PEEP optimizasyonu ve akciğer rekruitment manevraları kullanılır.",
          ),
          IntensiveCareProblemsItem(
            title: "HİPERKAPNİ VE HİPOVENTİLASYON MEKANİZMALARI",
            description: "Sedatif/opioid doz aşımı veya obstrüksiyon sonucu gelişen hipoventilasyon karbondioksit birikimine neden olur.",
            additionalInfo: "Dakika ventilasyonunun artırılması temel tedavi stratejisidir.",
          ),
          IntensiveCareProblemsItem(
            title: "ARDS (AKUT SOLUNUMSAL DISTRESS SENDROMU) TANI KRİTERLERİ",
            description: "Akut başlangıç, bilateral infiltratlar ve PaO₂/FiO₂ ≤300 olması durumunda ARDS tanısı konur.",
            subtitle: "Yönetim: düşük tidal volüm (6 mL/kg) ve plato basıncı <30 cmH₂O hedeflenir",
            additionalInfo: "Yeterli PEEP ve gerektiğinde prone pozisyonu sağkalımı artırır.",
          ),
        ],
      ),
      IntensiveCareProblemsCategory(
        categoryName: 'Kardiyovasküler Sorunlar',
        items: [
          IntensiveCareProblemsItem(
            title: "HİPOTANSİYON VE SEPTİK ŞOK YÖNETİMİ",
            description: "Sepsis, hipovolemi ve kardiyojenik şok sonrası gelişen tansiyon düşüklüğü organ perfüzyonunu bozar.",
            subtitle: "Tedavide agresif sıvı replasmanı ve ilk tercih vazopressör olarak norepinefrin kullanılır",
            additionalInfo: "Ortalama arter basıncı (MAP) ≥65 mmHg hedeflenmelidir.",
          ),
          IntensiveCareProblemsItem(
            title: "PERİOPERATİF HİPERTANSİYON VE SEMPATİK AKTİVASYON",
            description: "Genellikle kontrol edilemeyen ağrı, anksiyete veya artmış kafa içi basınç (KİB) sonucu gelişir.",
            additionalInfo: "Hızlı etkili intravenöz ajanlarla kontrol altına alınmalıdır.",
          ),
          IntensiveCareProblemsItem(
            title: "YOĞUN BAKIMDA ARİTMİLER VE ELEKTROLİT TETİĞİ",
            description: "Elektrolit bozuklukları, hipoksi ve katekolamin infüzyonları aritmi oluşumunu tetikleyen ana faktörlerdir.",
            additionalInfo: "Magnezyum ve potasyum seviyelerinin optimizasyonu aritmi yönetiminde ilktir.",
          ),
        ],
      ),
      IntensiveCareProblemsCategory(
        categoryName: 'Nörolojik Sorunlar',
        items: [
          IntensiveCareProblemsItem(
            title: "DELİRYUM VE AJİTASYON: YOĞUN BAKIMIN BİLİŞSEL KRİZİ",
            description: "Hipoksi, sepsis ve ilaç yoksunluğu sonucu gelişen ajitasyon durumu hastanın ventilatör uyumunu bozar.",
            additionalInfo: "Deliryum, yoğun bakımda yatış süresi ve mortalite ile doğrudan ilişkilidir.",
          ),
          IntensiveCareProblemsItem(
            title: "KOMA VE GEÇ UYANMANIN METABOLİK NEDENLERİ",
            description: "Metabolik ensefalopati, hipoglisemi veya inme uyanamayan hastada taranması gereken başlıca nedenlerdir.",
            additionalInfo: "Rezidüel anesteziklerin ve sedatiflerin etkisi dışlanmalıdır.",
          ),
          IntensiveCareProblemsItem(
            title: "NÖROLOJİK İZLEM VE PUPİL REFLEKSİNİN DEĞERİ",
            description: "Bilinç düzeyi (GKS), pupil refleksi ve gerektiğinde EEG izlemi nörolojik durumun takibi için vazgeçilmezdir.",
            additionalInfo: "Anormal nörolojik bulgular acil görüntüleme (BT/MR) endikasyonudur.",
          ),
        ],
      ),
      IntensiveCareProblemsCategory(
        categoryName: 'Renal Sorunlar',
        items: [
          IntensiveCareProblemsItem(
            title: "AKUT BÖBREK HASARI (AKI) VE OLİGÜRİ KRİTERLERİ (<0.5 ML/KG/SA)",
            description: "Sepsis ve hipoperfüzyon sonrası gelişen AKI, idrar çıkışında azalma ve kreatinin artışı ile karakterizedir.",
            subtitle: "Oligüri <0.5 mL/kg/saat değerinin 6 saatten uzun sürmesi alarm vericidir",
            additionalInfo: "Tedavide nefrotoksinlerden kaçınma ve gerekirse CRRT (sürekli renal replasman) planlanır.",
          ),
          IntensiveCareProblemsItem(
            title: "YOĞUN BAKIMDA HAYATI TEHDİT EDEN ELEKTROLİT BOZUKLUKLARI",
            description: "Hiperkalemi en acil müdahale gerektiren durumdur; ayrıca hiponatremi ve hipokalsemi de KVS kararlılığını bozar.",
            additionalInfo: "Potasyum >6 mEq/L ciddi aritmi riski taşır.",
          ),
        ],
      ),
      IntensiveCareProblemsCategory(
        categoryName: 'Gastrointestinal ve Beslenme',
        items: [
          IntensiveCareProblemsItem(
            title: "STRES ÜLSERİ PROFİLAKSİSİ VE MİDE KORUYUCU STRATEJİLER",
            description: "Kritik hastalarda mukozal erozyonları önlemek için proton pompası inhibitörleri (PPI) veya H₂ blokerler kullanılır.",
            additionalInfo: "Koagülopati ve mekanik ventilasyon en güçlü risk faktörleridir.",
          ),
          IntensiveCareProblemsItem(
            title: "YOĞUN BAKIMDA İLEUS VE GİS MOTİLİTE SORUNLARI",
            description: "Opioid kullanımı ve sepsis bağırsak hareketlerini durdurarak gıda intoleransına yol açar.",
            additionalInfo: "Prokinetik ajanlar ile tedavi desteklenebilir.",
          ),
          IntensiveCareProblemsItem(
            title: "ENTERAL BESLENMENİN ÜSTÜNLÜĞÜ VE MUKOZAL BÜTÜNLÜK",
            description: "Gastrointestinal sistem çalışıyorsa, bağırsak bütünlüğünü korumak için ENTERAL yol her zaman PARENTERAL yola tercih edilir.",
            additionalInfo: "Erken enteral beslenme enfeksiyon riskini azaltır.",
          ),
          IntensiveCareProblemsItem(
            title: "TPN (TOTAL PARENTERAL BESLENME) VE ENFEKSİYON RİSKİ",
            description: "Pnömotoraks, sepsis ve hiperglisemi PN uygulamasının en sık görülen komplikasyonlarıdır.",
            additionalInfo: "Kateter ucu enfeksiyonları TPN alanlarda yüksektir.",
          ),
        ],
      ),
      IntensiveCareProblemsCategory(
        categoryName: 'Enfeksiyon ve Sepsis',
        items: [
          IntensiveCareProblemsItem(
            title: "SEPSİS VE SEPTİK ŞOK: YOĞUN BAKIMDA EN SIK ÖLÜM NEDENİ",
            description: "Kontrolsüz enfeksiyon yanıtı sonucu gelişen organ yetmezlikleri yoğun bakımdaki ana mortalite faktörüdür.",
            additionalInfo: "Tedavi hızı sağkalımı belirleyen en önemli parametredir.",
          ),
          IntensiveCareProblemsItem(
            title: "SEPSİS TANISINDA SİSTEMİK YANIT VE ORGAN DİSFONKSİYONU",
            description: "Ateş/hipotermi, taşikardi, lökositoz ve organ işlev bozukluğu (SOFA skoru artışı) tanısaldır.",
            additionalInfo: "Hipotansiyonun sıvılardan bağımsız devam etmesi septik şoku gösterir.",
          ),
          IntensiveCareProblemsItem(
            title: "SEPSİS TEDAVİSİNDE ERKEN ANTİBİYOTİK VE NOREPİNEFRİN",
            description: "Tanıdan sonraki ilk 1 saat içinde geniş spektrumlu antibiyotik ve sıvı resüsitasyonu başlanmalıdır.",
            additionalInfo: "Kaynak kontrolü (apsenin boşaltılması vb.) mutlaka yapılmalıdır.",
          ),
          IntensiveCareProblemsItem(
            title: "ENFEKSİYON RİSK FAKTÖRLERİ VE İNVAZİV HATLARIN ROLÜ",
            description: "Santral venöz kateterler, idrar sondası ve endotrakeal tüp yoğun bakımdaki enfeksiyonların giriş yeridir.",
            additionalInfo: "İhtiyaç duyulmayan kateterlerin hızla çekilmesi esastır.",
          ),
        ],
      ),
      IntensiveCareProblemsCategory(
        categoryName: 'Hematolojik Sorunlar',
        items: [
          IntensiveCareProblemsItem(
            title: "TROMBOSİTOPENİ VE HEPRİN İLİŞKİLİ TROMBOSİTOPENİ (HIT)",
            description: "Sepsis, ilaç yan etkileri ve koagülopati sonrası trombosit sayısı düşerek kanama riskini artırır.",
            additionalInfo: "Heparin kullanım öyküsü olanlarda HIT şüphesi atlanmamalıdır.",
          ),
          IntensiveCareProblemsItem(
            title: "DİSEMİNE İNTRAVASKÜLER KOAGÜLASYON (DIC) VE TÜKETİM KOAGÜLOPATİSİ",
            description: "Sepsis veya travma sonrası gelişen, pıhtılaşma faktörlerinin tükenmesiyle seyreden ölümcül bir tablodur.",
            subtitle: "Tedavi: Altta yatan nedenin çözülmesi, FFP ve trombosit desteği",
            additionalInfo: "Fibrinojen düzeyleri yakından izlenmelidir.",
          ),
        ],
      ),
      IntensiveCareProblemsCategory(
        categoryName: 'Metabolik ve Endokrin Sorunlar',
        items: [
          IntensiveCareProblemsItem(
            title: "YOĞUN BAKIMDA STRES HİPERGLİSEMİSİ VE İNSÜLİN HEDEFLERİ",
            description: "Kritik hastada stres yanıtı olarak kan şekeri yükselir; 140–180 mg/dL aralığı hedeflenmelidir.",
            additionalInfo: "Aşırı sıkı kontrol hipoglisemi riskini artırdığı için günümüzde önerilmez.",
          ),
          IntensiveCareProblemsItem(
            title: "HİPOGLİSEMİ RİSKİ VE SEPSİS İLİŞKİSİ",
            description: "Karaciğer yetmezliği veya septik şok tablosundaki hastalarda kan şekerinin düşmesi nörolojik hasara yol açabilir.",
            additionalInfo: "Tedavide %10-20 dekstroz hızlıca yüklenmelidir.",
          ),
          IntensiveCareProblemsItem(
            title: "TİROİD KRİZİ VE ADRENAL YETMEZLİK YÖNETİMİ",
            description: "Açıklanamayan hipotansiyon varlığında göreceli adrenal yetmezlik düşünülerek stres dozu steroid (hidrokortizon) başlanabilir.",
            additionalInfo: "Adrenal yetmezlik sağkalımı doğrudan etkiler.",
          ),
        ],
      ),
      IntensiveCareProblemsCategory(
        categoryName: 'Nöromüsküler Sorunlar',
        items: [
          IntensiveCareProblemsItem(
            title: "UZAMIŞ NÖROMÜSKÜLER BLOK VE REZİDÜEL ETKİLER",
            description: "Biriken kas gevşeticiler, asidoz veya hipermagnezemi sonrası solunum desteğinden ayrılmayı zorlaştırır.",
            additionalInfo: "İlaç birikimi özellikle renal yetmezlikte belirgindir.",
          ),
          IntensiveCareProblemsItem(
            title: "KRİTİK HASTALIK NÖROPATİSİ/MİYOPATİSİ VE WEANING ZORLUĞU",
            description: "Uzun süreli immobilite, yüksek doz steroid ve sepsis sonrası gelişen yaygın kas güçsüzlüğüdür.",
            additionalInfo: "Ventilatörden ayrılma (weaning) başarısızlığının en önemli nedenidir.",
          ),
        ],
      ),
      IntensiveCareProblemsCategory(
        categoryName: 'Yoğun Bakımda Özel Durumlar',
        items: [
          IntensiveCareProblemsItem(
            title: "SEPSİS PAKET TEDAVİSİ: ANTİBİYOTİK VE SIVI RESÜSİTASYONU",
            description: "Laktat takibi, hızlı antibiyotik ve yaklaşık 30 mL/kg kristalloid yüklemesi standart pakettir.",
            additionalInfo: "Norepinefrin, sıvı resüsitasyonuna yanıtsız vakalarda hemen başlanmalıdır.",
          ),
          IntensiveCareProblemsItem(
            title: "YOĞUN BAKIMDA AKUT KORONER SENDROM YÖNETİMİ",
            description: "Göğüs ağrısı olan veya EKG değişikliği saptananlarda aspirin, heparin ve PCI planlanmalıdır.",
            additionalInfo: "Enzim takibi (Troponin) tanısaldır.",
          ),
          IntensiveCareProblemsItem(
            title: "PULMONER EMBOLİ (PE) VE ANTİKOAGÜLASYON STRATEJİLERİ",
            description: "Ani hipoksemi ve taşikardi varlığında BT anjiyo ile PE dışlanmalı ve antikoagülasyon başlanmalıdır.",
            additionalInfo: "Massive embolide trombolitik tedavi hayat kurtarıcıdır.",
          ),
          IntensiveCareProblemsItem(
            title: "STATUS EPİLEPTİKUS ACİL YÖNETİMİ",
            description: "Kontrol edilemeyen nöbetlerde benzodiazepinler sonrası propofol infüzyonu veya tiyopental gerekebilir.",
            additionalInfo: "Hava yolu güvenliği ilk önceliktir.",
          ),
        ],
      ),
      IntensiveCareProblemsCategory(
        categoryName: 'Spot Notlar',
        items: [
          IntensiveCareProblemsItem(
            title: "ÇOKLU ORGAN YETMEZİĞİ VE MORTALİTE İLİŞKİSİ",
            description: "Yoğun bakımda en sık ölüm nedeni progresif sepsis ve çoklu organ yetmezliğidir.",
            additionalInfo: "Disfonksiyon gelişen organ sayısı arttıkça mortalite logaritmik olarak yükselir.",
          ),
          IntensiveCareProblemsItem(
            title: "ARDS'DE AKCİĞER KORUYUCU VENTİLASYON HEDEFLERİ",
            description: "En temel hedef: düşük tidal volüm (6 mL/kg) ve düşük plato basıncı (<30 cmH₂O) kullanımıdır.",
            additionalInfo: "Bu strateji barotravma ve VILI riskini azaltır.",
          ),
          IntensiveCareProblemsItem(
            title: "SEPTİK ŞOKTA VAZOPRESSÖR SEÇİMİ: NOREPİNEFRİN",
            description: "Vazopresör desteği gereken durumlarda ilk tercih edilen ajan her zaman norepinefrindir.",
            additionalInfo: "Dopaminin yerini aritmi riski nedeniyle norepinefrin almıştır.",
          ),
          IntensiveCareProblemsItem(
            title: "AKI'DE DİYALİZ ENDİKASYONLARI VE OLİGÜRİ",
            description: "Sıvı yüklenmesi, dirençli potasyum yüksekliği ve metabolik asidoz varlığında acil diyaliz gereklidir.",
            additionalInfo: "Diyaliz zamanlaması sağkalım üzerinde belirleyicidir.",
          ),
          IntensiveCareProblemsItem(
            title: "UZAMIŞ ENTÜBASYONUN EN SIK KOMPLİKASYONU: PNÖMONİ",
            description: "Entübasyon süresi uzadıkça VAP (ventilatör ilişkili pnömoni) görülme sıklığı her gün artar.",
            additionalInfo: "Hava yolu hijyeni ve erken ekstübasyon en iyi korumadır.",
          ),
        ],
      ),
    ];
  }
}
