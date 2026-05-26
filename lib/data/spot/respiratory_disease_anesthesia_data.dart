import 'package:flutter/material.dart';

class RespiratoryDiseaseAnesthesiaItem {
  final String title;
  final String description;
  final String? subtitle;
  final String? additionalInfo;

  RespiratoryDiseaseAnesthesiaItem({
    required this.title,
    required this.description,
    this.subtitle,
    this.additionalInfo,
  });
}

class RespiratoryDiseaseAnesthesiaCategory {
  final String categoryName;
  final List<RespiratoryDiseaseAnesthesiaItem> items;

  RespiratoryDiseaseAnesthesiaCategory({
    required this.categoryName,
    required this.items,
  });
}

class RespiratoryDiseaseAnesthesiaData {
  static List<RespiratoryDiseaseAnesthesiaCategory>
  getRespiratoryDiseaseAnesthesiaData(BuildContext context) {
    return [
      RespiratoryDiseaseAnesthesiaCategory(
        categoryName: 'Pulmoner Risk Faktörleri',
        items: [
          RespiratoryDiseaseAnesthesiaItem(
            title: "HASTA KAYNAKLI RİSK FAKTÖRLERİ",
            description:
                "Sigara kullanımı, ileri yaş ve obezite, perioperatif solunumsal komplikasyonların en güçlü belirleyicileridir.",
            additionalInfo:
                "Özellikle sigara kullanımı silier aktiviteyi bozar ve sekresyon artışına neden olur. İleri yaş ise akciğer elastikiyetini azaltarak kapanma kapasitesini artırır.",
          ),
          RespiratoryDiseaseAnesthesiaItem(
            title: "CERRAHİ PROSEDÜR VE RİSK DÜZEYİ",
            description:
                "Operasyon bölgesinin diyaframa yakınlığı, akciğer hacimlerindeki azalma oranını doğrudan etkiler.",
            subtitle:
                "Torasik ve üst abdominal cerrahilerde Fonksiyonel Rezidüel Kapasite (FRK) en çok düşen hacimdir",
            additionalInfo:
                "Cerrahi travmaya bağlı gelişen diyafram disfonksiyonu ve ağrı nedeniyle oluşan 'splinting', atelektazi riskini zirveye taşır.",
          ),
          RespiratoryDiseaseAnesthesiaItem(
            title: "ÜST ABDOMEN CERRAHİSİ VE FRK DEĞİŞİMİ",
            description:
                "Üst batın operasyonlarında FRK kaybı en belirgin düzeyine postoperatif birinci günde ulaşır.",
            additionalInfo:
                "Bu olumsuz etki genellikle 7-10 gün boyunca devam eder ve hastanın etkili öksürme ve derin nefes alma yeteneğini ciddi şekilde kısıtlar.",
          ),
        ],
      ),
      RespiratoryDiseaseAnesthesiaCategory(
        categoryName: 'Obstrüktif Akciğer Hastalıkları',
        items: [
          RespiratoryDiseaseAnesthesiaItem(
            title: "OBSTRÜKTİF PATOLOJİ VE TEST KRİTERLERİ (FEV1/FVC)",
            description:
                "Küçük hava yollarındaki erken dönem anomaliler, FEF%25-75 değerinin %70'in altına düşmesiyle saptanır.",
            subtitle:
                "İleri obstrüksiyonda FEV1 azalırken FEV1/FVC oranı %70'in altında izlenir",
            additionalInfo:
                "Hava hapsine (air trapping) bağlı olarak rezidüel hacim (RV) ve toplam akciğer kapasitesi (TLC) artış gösterir. Normal FEF%25-75 değerleri kadınlarda >1.6 L/sn, erkeklerde >2 L/sn'dir.",
          ),
        ],
      ),
      RespiratoryDiseaseAnesthesiaCategory(
        categoryName: 'Astım',
        items: [
          RespiratoryDiseaseAnesthesiaItem(
            title: "ASTIM PATOFİZYOLOJİSİ VE ARACILAR (IgE VE HİSTAMİN)",
            description:
                "Artmış parasempatik tonus ve IgE aracılı mast hücre aktivasyonu sonucu salınan mediatörler yaygın bronkokonstriksiyona yol açar.",
            subtitle:
                "Diyurnal ritim nedeniyle bronşiyal tonus sabah erken saatlerde en yüksek seviyededir",
            additionalInfo:
                "Takipneye bağlı hipokapni tipik bir bulgudur; astımlı bir hastada PaCO2'nin normale dönmesi veya yükselmesi solunum yetmezliği geliştiğine dair ciddi bir uyarıdır.",
          ),
          RespiratoryDiseaseAnesthesiaItem(
            title: "ASTIMDA FARMAKOLOJİK TEDAVİ VE BETA-2 AGONİSTLER",
            description:
                "Beta-2 agonistler, solunum yollarında en etkili ve hızlı bronkodilatasyonu sağlayan temel ilaç grubudur.",
            subtitle:
                "Metilksantinler PDE inhibisyonu yaparak cAMP düzeyini artırır ve diyafram stimülasyonu sağlarlar",
            additionalInfo:
                "Glukokortikoidler (Beklometazon, Budesonid, Flutikazon) antiinflamatuvar etkileriyle kronik yönetimde ve hava yolu duyarlılığını azaltmada kilit rol üstlenirler.",
          ),
          RespiratoryDiseaseAnesthesiaItem(
            title: "ANTİKOLİNERJİK AJANLARIN BRONKOSPAZMDAKİ ROLÜ",
            description:
                "İpratropium gibi antikolinerjik ilaçlar, özellikle refleks yolla gelişen bronkospazmın çözülmesinde etkilidirler.",
            additionalInfo:
                "Vagus aracılı bronş daralmasını engelleyerek astım ve KOAH alevlenmelerinde destekleyici tedavi sunarlar.",
          ),
          RespiratoryDiseaseAnesthesiaItem(
            title: "ASTIMLI HASTADA ANESTEZİK YAKLAŞIM VE SEÇİMLER",
            description:
                "Astımlı hastalarda anestezi yönetiminin en kritik noktası, hava yolu enstrümantasyonunun tetikleyebileceği bronkospazmdır.",
            subtitle:
                "Mümkünse rejyonal anestezi veya maske ile ventilasyon (entübasyondan kaçınarak) tercih edilmelidir",
            additionalInfo:
                "Genel anestezi gerekiyorsa, Sevofluran güçlü bronkodilatör etkisi nedeniyle indüksiyonda mükemmel bir seçenektir.",
          ),
          RespiratoryDiseaseAnesthesiaItem(
            title: "LİDOKAİN KULLANIMI VE BRONŞİYAL İRRİTASYON",
            description:
                "İntravenöz lidokain düşük dozlarda anti-iritan etki göstererek hava yolu reflekslerini baskılar.",
            additionalInfo:
                "Ancak yetersiz dozda uygulanan lidokainin kendisi bronşiyal irritasyon yaparak bronkospazmı tetikleyebilir; dozaj dikkatli ayarlanmalıdır.",
          ),
          RespiratoryDiseaseAnesthesiaItem(
            title: "İNTRAOPERATİF VENTİLASYON STRATEJİLERİ",
            description:
                "Astımlı hastalarda ventilatör ayarları hava hapsini (auto-PEEP) önleyecek şekilde optimize edilmelidir.",
            subtitle:
                "Ekspirasyon süresi (I:E oranı) uzatılarak havanın tamamen dışarı çıkması sağlanmalıdır",
            additionalInfo:
                "Ameliyat sırasında gelişen bronkospazm tedavisinde inhaler ajanlar ve volatil anesteziklerin konsantrasyonu artırılmalıdır.",
          ),
        ],
      ),
      RespiratoryDiseaseAnesthesiaCategory(
        categoryName: 'Kronik Obstrüktif Akciğer Hastalığı (KOAH)',
        items: [
          RespiratoryDiseaseAnesthesiaItem(
            title: "KRONİK BRONŞİT VE 'BLUE BLOATER' FENOTİPİ",
            description:
                "En az iki yıl üst üste, yılda en az üç ay süren prodüktif (balgamlı) öksürük ile karakterize tablodur.",
            subtitle:
                "Bu hastalarda yaygın olarak hiperkapni ve derin hipoksemi (Blue Bloater) görülür",
            additionalInfo:
                "Hava yollarındaki kronik inflamasyon ve mukus artışı, küçük hava yollarında obstrüksiyona ve V/Q dengesizliğine yol açar.",
          ),
          RespiratoryDiseaseAnesthesiaItem(
            title: "AMFİZEM VE ALVEOLER YIKIM SÜRECİ",
            description:
                "Alveol duvarlarının kalıcı hasarı sonucu hava boşluklarının anormal genişlemesi ve geri dönüşsüz difüzyon kaybıdır.",
            subtitle:
                "Sigara 'sentrilobüler', alfa-1 antitripsin eksikliği ise 'panlobüler' amfizeme neden olur",
            additionalInfo:
                "Pink Puffer fenotipi ile karakterizedir; pulmoner hipertansiyon genellikle hafif seyreder (<40 mmHg). Efektif gaz değişim yüzeyi belirgin şekilde azalmıştır.",
          ),
          RespiratoryDiseaseAnesthesiaItem(
            title: "KOAH TEDAVİSİ VE OKSİJEN DESTEĞİ",
            description:
                "Sigaranın bırakılması, hastalığın ilerleme hızını yavaşlattığı kanıtlanmış tek müdahaledir.",
            subtitle:
                "Kronik hipoksemisi (<55 mmHg) olan hastalarda günde 1-2 L/dk oksijen desteği sağkalımı artırır",
            additionalInfo:
                "Bronkodilatörler semptomatik rahatlama sağlar; eşlik eden kor pulmonale durumunda diüretik tedavisi eklenmelidir.",
          ),
          RespiratoryDiseaseAnesthesiaItem(
            title: "KOAH'LI HASTADA ANESTEZİ VE EFOR KAPASİTESİ",
            description:
                "Preoperatif dönemde FEV1 değerinin %50'nin altında olması efor dispnesinin, %25'in altı ise istirahat dispnesinin göstergesidir.",
            additionalInfo:
                "İndüksiyon öncesi denitrojenasyon ve preoksijenizasyon bu hastalar için hayati zaman kazandırır.",
          ),
          RespiratoryDiseaseAnesthesiaItem(
            title: "HAVA HAPSİNİ AZALTAN VENTİLASYON YÖNTEMLERİ",
            description:
                "KOAH'lı hastalarda ventilatörde ekspirasyon süresi artırılarak dinamik hiperenflasyonun önüne geçilir.",
            subtitle:
                "Permisif hiperkapni (PaCO2 ~70 mmHg'ye kadar) serebral pH korunduğu sürece tolere edilebilir",
            additionalInfo:
                "Düşük eksternal PEEP uygulanarak hastanın kendi iç PEEP'i (intrinsic PEEP) ile dengelenmesi hedeflenir.",
          ),
          RespiratoryDiseaseAnesthesiaItem(
            title: "AZOT PROTOKSİT (N2O) KONTRENDİKASYONU VE BÜLLER",
            description:
                "Amfizemli hastalardaki hava dolu büllerin içine N2O hızla dolarak bül rüptürüne veya tansiyon pnömotoraksa yol açabilir.",
            additionalInfo:
                "Ayrıca pulmoner hipertansiyonu olan hastalarda pulmoner vasküler direnci artırabileceği için N2O kullanımından kaçınılmalıdır.",
          ),
          RespiratoryDiseaseAnesthesiaItem(
            title: "POSTOPERATİF MEKANİK VENTİLASYON RİSK TAHMİNİ",
            description:
                "FEV1 değeri < %50 olan ve üst batın/toraks cerrahisi geçiren hastalarda ameliyat sonrası uzun süreli solunum desteği ihtiyacı yüksektir.",
            additionalInfo:
                "Erken mobilizasyon ve agresif ağrı kontrolü (epidural vb.) bu riski azaltan en önemli faktörlerdir.",
          ),
        ],
      ),
      RespiratoryDiseaseAnesthesiaCategory(
        categoryName: 'Restriktif Akciğer Hastalıkları',
        items: [
          RespiratoryDiseaseAnesthesiaItem(
            title: "RESTRİKTİF PATERN VE SOLUNUM MEKANİĞİ",
            description:
                "Akciğer kompliyansının azalması nedeniyle FEV1 ve FVC değerlerinin düştüğü, ancak FEV1/FVC oranının normal kaldığı tablodur.",
            subtitle:
                "Hacim kaybını kompanse etmek için hastalar tipik olarak hızlı ve yüzeyel bir solunum paterni sergilerler",
            additionalInfo:
                "Gaz değişimi genellikle hastalığın çok ileri evrelerine kadar korunur. Ana problem akciğeri şişirebilmek için gereken yüksek basınç ihtiyacıdır.",
          ),
        ],
      ),
      RespiratoryDiseaseAnesthesiaCategory(
        categoryName: 'Akut İntrensek Akciğer Hastalıkları',
        items: [
          RespiratoryDiseaseAnesthesiaItem(
            title: "ARDS VENTİLASYON STRATEJİSİ VE KORUYUCU AYARLAR",
            description:
                "ARDS'li hastalarda akciğeri volütravmadan korumak için düşük tidal hacimli (4–6 mL/kg) ventilasyon altın standarttır.",
            subtitle:
                "Plato basıncı (Pplat) 30 cmH2O değerinin altında tutulmaya çalışılmalıdır",
            additionalInfo:
                "Solunum frekansı dakikada 14–18 olacak şekilde ayarlanarak yeterli dakika ventilasyonu sağlanmalıdır.",
          ),
          RespiratoryDiseaseAnesthesiaItem(
            title: "POSTOPERATİF YOĞUN BAKIM VE DESTEK PLANI",
            description:
                "Akut akciğer hasarı olan hastaların operasyon sonrası mutlaka yoğun bakım ünitesinde izlenmesi ve ventilatör desteğinin devamı planlanmalıdır.",
            additionalInfo:
                "Sıvı yönetimi 'kuru' tutma prensibiyle (akciğer ödemini azaltmak için) titizlikle yürütülmelidir.",
          ),
        ],
      ),
      RespiratoryDiseaseAnesthesiaCategory(
        categoryName: 'Kronik İntrensek (İnterstisyel) Akciğer Hastalıkları',
        items: [
          RespiratoryDiseaseAnesthesiaItem(
            title: "CİDDİ SOLUNUMSAL DİSFONKSİYON KRİTERLERİ",
            description:
                "Vital kapasitenin (VC) 15 mL/kg'ın altına düşmesi, hastanın cerrahi stresi tolere edemeyeceğinin güçlü bir göstergesidir.",
            subtitle:
                "Normal VC değeri yaklaşık 70 mL/kg'dır; ciddi azalmış FRK nedeniyle indüksiyonda hipoksemi riski çok yüksektir",
            additionalInfo:
                "İnterstisyel fibrozis nedeniyle akciğerler sertleşmiştir ve küçük tidal hacimler gerektirir.",
          ),
          RespiratoryDiseaseAnesthesiaItem(
            title: "BLEOMİSİN ÖYKÜSÜ VE OKSİJEN TOKSİSİTESİNDEN KORUNMA",
            description:
                "Daha önce Bleomisin tedavisi almış hastalarda, yüksek oksijen konsantrasyonları ölümcül akciğer fibrozisini tetikleyebilir.",
            subtitle:
                "İntraoperatif FiO2 olabildiğince düşük tutulmalı ve SpO2 %88–92 aralığında hedeflenmelidir",
            additionalInfo:
                "Gerekirse doku oksijenasyonunu korumak için 1:1 veya ters oranlı (inverse) ventilasyon teknikleri uygulanabilir.",
          ),
        ],
      ),
      RespiratoryDiseaseAnesthesiaCategory(
        categoryName: 'Pulmoner Emboli',
        items: [
          RespiratoryDiseaseAnesthesiaItem(
            title: "PULMONER EMBOLİ PATOFİZYOLOJİSİ VE V/Q BOZUKLUĞU",
            description:
                "Emboli sonrası tıkanan damarların beslediği alveoller havalanmaya devam ederken kanlanamaz (ölü boşluk).",
            subtitle:
                "Refleks vazokonstriksiyon ve bronkospazm (BC) tablonun daha da ağırlaşmasına neden olur",
            additionalInfo:
                "Vakadan 24–48 saat sonra sürfaktan kaybına bağlı atelektaziler gelişir; PaCO2 genellikle yükselse de klinikte derin hipoksemi hakimdir.",
          ),
          RespiratoryDiseaseAnesthesiaItem(
            title: "DOLAŞIM TIKANIKLIĞI VE PULMONER HİPERTANSİYON",
            description:
                "Sağlıklı bireylerde pulmoner dolaşımın %50'si kapandığında pulmoner HT ve sağ kalp yüklenmesi başlar.",
            additionalInfo:
                "Önceden kalp-akciğer hastalığı olan bireylerde, bu kritik tablo çok daha az orandaki bir tıkanıklıkla ortaya çıkabilir.",
          ),
          RespiratoryDiseaseAnesthesiaItem(
            title: "EMBOLİ SEMPTOMLARI VE KLİNİK BULGULAR",
            description:
                "Aniden gelişen dispne (nefes darlığı), takipne (hızlı solunum) ve göğüs ağrısı embolinin klasik triadıdır.",
            additionalInfo:
                "Bazı vakalarda bu tabloya hemoptizi (kanlı balgam) ve senkop (bayılma) eşlik edebilir.",
          ),
          RespiratoryDiseaseAnesthesiaItem(
            title: "ARTER KAN GAZI (ABG) VE TANI KOYUCU BULGULAR",
            description:
                "Pulmoner embolide tipik kan gazı bulgusu, respiratuvar alkaloz ile birlikte görülen hipoksemidir.",
            additionalInfo:
                "Alveoler-arteriyel (A-a) oksijen gradiyentindeki artış, tanıyı destekleyen güçlü bir veridir.",
          ),
          RespiratoryDiseaseAnesthesiaItem(
            title: "EKG BULGULARI VE SAĞ KALP YÜKLENMESİ",
            description:
                "Akut sağ kalp zorlanmasına bağlı olarak EKG'de sağ aks deviasyonu, sağ dal bloğu (RBBB) ve sivri T dalgaları görülebilir.",
            additionalInfo:
                "En meşhur EKG bulgusu S1Q3T3 paternidir ancak bu her vakada görülmeyebilir.",
          ),
          RespiratoryDiseaseAnesthesiaItem(
            title: "TANI YÖNTEMLERİ VE ALTIN STANDART (ANJİOGRAFİ)",
            description:
                "BT Anjiyografi pratiklik ve hız nedeniyle ilk tercihtir; ancak tanı koyulamayan zor vakalarda altın standart pulmoner anjiyografidir.",
            additionalInfo:
                "D-dimer testi düşük riskli hastalarda dışlayıcı bir faktör olarak kullanılabilir.",
          ),
          RespiratoryDiseaseAnesthesiaItem(
            title: "DERİN VEN TROMBOZU (DVT) ÖNLEME YÖNTEMLERİ",
            description:
                "Perioperatif dönemde DVT riskini azaltmak için elastik bantlar, pnömotik kompresyon cihazları ve erken mobilizasyon şarttır.",
            additionalInfo:
                "Cerrahi hastasında tromboemboli profilaksisi hayati bir güvenlik standardıdır.",
          ),
          RespiratoryDiseaseAnesthesiaItem(
            title: "HEPARİN TEDAVİSİ VE LABORATUVAR TAKİBİ (APTT)",
            description:
                "Akut emboli tedavisinde heparin, aPTT değerini normalin 1.5–2.5 katı düzeyinde tutacak şekilde infüze edilir.",
            subtitle:
                "Düşük molekül ağırlıklı heparinler (LMWH) operasyonun 12 saat öncesinde kesilmeli ve cerrahi sonrası 12-24. saatte başlanmalıdır",
            additionalInfo:
                "Antikoagülan dozajı, kanama riski ile tromboz riski arasındaki hassas dengede yönetilmelidir.",
          ),
          RespiratoryDiseaseAnesthesiaItem(
            title: "KÖPRÜ TEDAVİSİ (HEPARİN VE WARFARİN)",
            description:
                "Warfarin etkisi başlayana kadar heparin desteği sürdürülür (köprüleme); INR terapötik düzeye gelince heparin kesilir.",
            additionalInfo:
                "Warfarin kullanımı perioperatif dönemde kanama riski nedeniyle genellikle kesilip yerine heparin başlanarak yönetilir.",
          ),
          RespiratoryDiseaseAnesthesiaItem(
            title: "EMBOLİ ÖYKÜSÜ VE CERRAHİ ZAMANLAMA",
            description:
                "Akut bir emboli atağından yaklaşık bir yıl sonra yapılacak cerrahi girişimlerin emboli tekrarlama riski oldukça düşüktür.",
            additionalInfo:
                "Erken dönemdeki zorunlu ameliyatlarda ise vena cava filtreleri veya sıkı antikoagülasyon protokolleri düşünülmelidir.",
          ),
          RespiratoryDiseaseAnesthesiaItem(
            title: "İNTRAOPERATİF EMBOLİ BELİRTİLERİ VE ETCO2 TAKİBİ",
            description:
                "Ameliyat sırasında aniden gelişen hipotansiyon, hipoksemi ve bronkospazm tablosuna EtCO2 değerindeki ani düşüş eşlik ediyorsa pulmoner emboliden şüphelenilmelidir.",
            additionalInfo:
                "EtCO2 düşmesi, ölü boşluk artışının bir sonucu olarak intraoperatif dönemdeki en spesifik emboli işaretidir.",
          ),
        ],
      ),
    ];
  }
}
