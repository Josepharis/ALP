import 'package:flutter/material.dart';

class PostoperativeCareInhalationItem {
  final String title;
  final String description;
  final String? subtitle;
  final String? additionalInfo;

  PostoperativeCareInhalationItem({
    required this.title,
    required this.description,
    this.subtitle,
    this.additionalInfo,
  });
}

class PostoperativeCareInhalationCategory {
  final String categoryName;
  final List<PostoperativeCareInhalationItem> items;

  PostoperativeCareInhalationCategory({
    required this.categoryName,
    required this.items,
  });
}

class PostoperativeCareInhalationData {
  static List<PostoperativeCareInhalationCategory> getPostoperativeCareInhalationData(BuildContext context) {
    return [
      PostoperativeCareInhalationCategory(
        categoryName: 'Genel İlkeler',
        items: [
          PostoperativeCareInhalationItem(
            title: "PACU VE YOĞUN BAKIMDA MEKANİK VENTİLASYONUN ROLÜ",
            description: "Postanestezik bakım ve yoğun bakım süreçlerinde oksijenasyonun sürdürülmesi ve solunum desteği kritik öneme sahiptir.",
            additionalInfo: "Hastaların ekstübasyon sonrası stabilizasyonu inhalasyon tedavileriyle desteklenir.",
          ),
          PostoperativeCareInhalationItem(
            title: "İNHALASYON TEDAVİSİNDE ANA HEDEFLER VE AKCİĞER KORUMA",
            description: "Oksijenlenme, ventilasyonun sağlanması, asit-baz dengesinin korunması ve akciğer hasarının önlenmesi birincil hedeflerdir.",
            additionalInfo: "Akciğer koruyucu ventilasyon stratejileri morbiditeyi azaltır.",
          ),
        ],
      ),
      PostoperativeCareInhalationCategory(
        categoryName: 'Oksijen Tedavisi',
        items: [
          PostoperativeCareInhalationItem(
            title: "PACU'DA RUTİN OKSİJEN UYGULAMASI VE HİPOKSEMİ ÖNLEME",
            description: "Anestezi sonrası derlenme döneminde gelişebilecek hipoksemi riskini azaltmak için rutin oksijen desteği önerilir.",
            additionalInfo: "Oksijen seviyeleri pulse oksimetre ile sürekli takip edilmelidir.",
          ),
          PostoperativeCareInhalationItem(
            title: "POSTOPERATİF HİPOKSEMİ NEDENLERİ: ATELEKTAZİ VE OBSTRÜKSİYON",
            description: "Rezidüel anesteziklerin solunum merkezini baskılaması, atelektazi ve üst hava yolu tıkanıklığı en sık nedenlerdir.",
            additionalInfo: "Hipoventilasyon, cerrahi sonrası en büyük solunum sekeli riskidir.",
          ),
          PostoperativeCareInhalationItem(
            title: "NAZAL KANÜL İLE DÜŞÜK AKIMLI OKSİJEN DESTEĞİ (%24–44 FIO2)",
            description: "1–6 L/dk akım hızında nazal yolla verilen oksijen, hastayı yormadan orta düzeyde destek sağlar.",
            additionalInfo: "Hastanın konforu yüksek olmasına rağmen ağızdan solunum yapanlarda etkinlik düşebilir.",
          ),
          PostoperativeCareInhalationItem(
            title: "BASİT YÜZ MASKESİ VE ORTA DERECE OKSİJENASYON (%35–60 FIO2)",
            description: "6–10 L/dk akım hızında kullanılan basit maskeler, nazal kanüle göre daha yüksek FiO₂ sağlar.",
            additionalInfo: "CO2 birikimini önlemek için akış hızının en az 5-6 L/dk olması şarttır.",
          ),
          PostoperativeCareInhalationItem(
            title: "VENTURİ MASKE: SABİT FIO2 VE HASSAS OKSİJEN KONTROLÜ",
            description: "Özellikle KOAH hastalarında kontrollü ve sabit FiO₂ (%24–50) sağlamak amacıyla tercih edilir.",
            additionalInfo: "Oksijen akışından bağımsız olarak kararlı bir inspiratuar konsantrasyon sunar.",
          ),
          PostoperativeCareInhalationItem(
            title: "REZERVUARLI MASKE İLE YÜKSEK KONSANTRASYONLU OKSİJEN (%60–90 FIO2)",
            description: "Şiddetli hipoksemide yüksek akımlı oksijen sağlamak için kullanılan geri solumasız maskelerdir.",
            additionalInfo: "Kısa süreli acil stabilizasyonlarda hayat kurtarıcıdır.",
          ),
        ],
      ),
      PostoperativeCareInhalationCategory(
        categoryName: 'Nemlendirme ve İnhalasyon Tedavileri',
        items: [
          PostoperativeCareInhalationItem(
            title: "MEKANİK VENTİLASYONDA NEMLENDİRME KRİTERLERİ (30 MG/L, 37°C)",
            description: "Havayolunun kurumasını önlemek için solunan gazın mutlak nemi en az 30 mg/L ve ısısı 37 °C olmalıdır.",
            additionalInfo: "Yetersiz nemlendirme muko-siliyer temizliği bozar ve sekresyon tıkaçlarına yol açar.",
          ),
          PostoperativeCareInhalationItem(
            title: "ISI VE NEM DEĞİŞTİRİCİLER (HME) VE KISA SÜRELİ KULLANIM",
            description: "Hastanın kendi nemini ve ısısını geri kazanan pasif sistemlerdir; kısa süreli ventilasyonlarda pratiktir.",
            additionalInfo: "Hipersekresyonu olan veya uzun süre yatan hastalarda etkinliği azalır.",
          ),
          PostoperativeCareInhalationItem(
            title: "YOĞUN BAKIMDA AKTİF NEMLENDİRİCİLERİN ETKİNLİĞİ",
            description: "Uzun süreli mekanik ventilasyon alan hastalarda havayolu nemliliğini korumak için en etkin yöntemdir.",
            additionalInfo: "Devrelerde yoğuşma (su birikmesi) açısından dikkatli izlenmelidir.",
          ),
          PostoperativeCareInhalationItem(
            title: "İNHALASYON YOLUYLA BRONKODİLATÖR VE ANTİBİYOTİK UYGULAMASI",
            description: "β₂ agonistler, antikolinerjikler ve mukolitikler doğrudan hedef bölgeye etkin dozda ulaştırılabilir.",
            additionalInfo: "Antibiyotik nebülizasyonu özellikle dirençli akciğer enfeksiyonlarında yardımcıdır.",
          ),
          PostoperativeCareInhalationItem(
            title: "NEBÜLİZASYON TEKNİKLERİ VE VENTİLATÖR DEVRESİ ENTEGRASYONU",
            description: "Ultrasonik veya jet nebülizatörler ventilatör devresine bağlanarak soluk senkronuna göre ilaç verebilir.",
            additionalInfo: "İlaç birikmesini önlemek için ekspirasyon valfi filtresi korunmalıdır.",
          ),
        ],
      ),
      PostoperativeCareInhalationCategory(
        categoryName: 'Mekanik Ventilasyon Endikasyonları',
        items: [
          PostoperativeCareInhalationItem(
            title: "AKUT HİPOKSEMİ VE VENTİLASYON İHTİYACI (PAO2 <60, FIO2 >0.5)",
            description: "Oksijen desteğine rağmen arteriyel oksijen değerlerinin kritik düzeyin altına düşmesi acil entübasyon endikasyonudur.",
            additionalInfo: "FiO2 %50'den yüksek olduğu halde PaO2 <60 mmHg kalması alarm vericidir.",
          ),
          PostoperativeCareInhalationItem(
            title: "HİPERKAPNİ VE SOLUNUMSAL ASİDOZ SINIRLARI (PACO2 >50, PH <7.25)",
            description: "Karondioksit eliminasyonunun yetersizliği ve beraberindeki asidoz durumu mekanik destek gerektirir.",
            additionalInfo: "Özellikle akut solunum yetmezliği olan KOAH hastalarında dikkatli olunmalıdır.",
          ),
          PostoperativeCareInhalationItem(
            title: "SOLUNUM KAS YORGUNLUĞU VE APNE DURUMLARI",
            description: "Solunum çabasının yetersiz olması veya solunumun tamamen durması durumunda ventilatör desteği zorunludur.",
            additionalInfo: "Apne, en kesin ve tartışmasız ventilasyon endikasyonudur.",
          ),
          PostoperativeCareInhalationItem(
            title: "HEMODİNAMİK İNSTABİLİTE VE ASPİRASYON RİSKİNDE HAVAYOLU KORUMA",
            description: "Şok tablosu, bilinç bulanıklığı veya kusma riski olan hastalarda havayolunu korumak için entübasyon ve ventilasyon şarttır.",
            additionalInfo: "Nörolojik kötüleşme havayolu reflekslerinin kaybı demektir.",
          ),
        ],
      ),
      PostoperativeCareInhalationCategory(
        categoryName: 'Ventilasyon Modları',
        items: [
          PostoperativeCareInhalationItem(
            title: "KONTROLLÜ MEKANİK VENTİLASYON (CMV) ÖZELLİKLERİ",
            description: "Ventilatörün tüm solunumu üstlendiği, hasta katkısının olmadığı veya baskılandığı moddur.",
            additionalInfo: "Genellikle tam sedatize veya paralize hastalarda kullanılır.",
          ),
          PostoperativeCareInhalationItem(
            title: "ASİST-KONTROL (AC) MODU VE HASTA TETİKLİ SOLUKLAR",
            description: "Hasta solunumu tetiklediğinde ventilatörün önceden belirlenen hacim veya basıncı sağladığı moddur.",
            additionalInfo: "Hastanın solunum hızı çok artarsa hiperventilasyon riski doğabilir.",
          ),
          PostoperativeCareInhalationItem(
            title: "SENKRONİZE ARALIKLI ZORUNLU VENTİLASYON (SIMV)",
            description: "Zorunlu solukların hasta eforuyla senkronize edildiği, aralarda spontan soluklara izin veren moddur.",
            additionalInfo: "Spontan ve mekanik solunumların hibrit bir formudur.",
          ),
          PostoperativeCareInhalationItem(
            title: "BASINÇ DESTEKLİ VENTİLASYON (PSV) VE SPONTAN SOLUNUMA DESTEK",
            description: "Hastanın her spontan soluk çabasını belirlenen bir basınçla destekleyen weaning modudur.",
            additionalInfo: "Hastanın solunum işini (WOB) önemli ölçüde azaltır.",
          ),
          PostoperativeCareInhalationItem(
            title: "PEEP (POZİTİF EKSPİRATUAR BASINÇ) VE ATELEKTAZİ YÖNETİMİ",
            description: "Ekspiryum sonunda alveollerin açık kalmasını sağlayarak atelektaziyi önler ve şantı azaltır.",
            additionalInfo: "Oksijenasyonun iyileştirilmesinde en güçlü araçtır.",
          ),
        ],
      ),
      PostoperativeCareInhalationCategory(
        categoryName: 'Mekanik Ventilasyon Parametreleri',
        items: [
          PostoperativeCareInhalationItem(
            title: "TİDAL VOLÜM AYARI VE ARDS'DE AKCİĞER KORUYUCU VOLÜM (6 ML/KG)",
            description: "Tidal volüm genellikle 6–8 mL/kg (ideal kilo) olarak ayarlanmalı, ARDS vakalarında ise 6 mL/kg ile sınırlanmalıdır.",
            additionalInfo: "Düşük tidal volüm stratejisi VILI riskini azaltır.",
          ),
          PostoperativeCareInhalationItem(
            title: "SOLUNUM SAYISI VE PACO2 HEDEFİNE GÖRE TİTRASYON",
            description: "Dakikada ortalama 10–14 solutma yapılır ve hedef PaCO₂ seviyesine göre hız titre edilir.",
            additionalInfo: "Hiperventilasyondan kaynaklanan respiratuar alkalozdan kaçınılmalıdır.",
          ),
          PostoperativeCareInhalationItem(
            title: "FIO2 YÖNETİMİ: EN DÜŞÜK EFEKTİF KONSANTRASYON HEDEFİ",
            description: "Oksijen toksisitesini önlemek için SpO₂ %92–96 hedeflenerek mümkün olan en düşük FiO₂ seçilmelidir.",
            additionalInfo: "FiO2 >0.6 düzeylerinin uzun süreli kullanımından kaçınılmalıdır.",
          ),
          PostoperativeCareInhalationItem(
            title: "PEEP BAŞLANGIÇ VE ARDS'DE YÜKSEK PEEP (10–20 CMH2O) STRATEJİSİ",
            description: "Rutin başlangıç değeri 5 cmH₂O olup, ARDS gibi refrakter durumlarda alveol açılması için daha yüksek değerler gerekebilir.",
            additionalInfo: "Yüksek PEEP, barotravma riskini beraberinde getirir.",
          ),
          PostoperativeCareInhalationItem(
            title: "PLATO BASINCI SINIRI VE BAROTRAVMA ÖNLEME (<30 CMH2O)",
            description: "Akciğer hasarını minimize etmek için hava yolu plato basıncı mutlaka 30 cmH₂O altında tutulmalıdır.",
            additionalInfo: "Statik kompliyansın önemli bir göstergesidir.",
          ),
          PostoperativeCareInhalationItem(
            title: "PİK İNSPİRATUAR BASINÇ (PIP) LİMİTLERİ (<35–40 CMH2O)",
            description: "Dinamik havayolu basıncı olan PIP, havayolu direnci ve kompliyansı yansıtır; ideal olarak 35 cmH₂O altında kalmalıdır.",
            additionalInfo: "Aniden artan PIP, obstrüksiyon veya pnömotoraks işareti olabilir.",
          ),
        ],
      ),
      PostoperativeCareInhalationCategory(
        categoryName: 'Noninvaziv Mekanik Ventilasyon (NIV)',
        items: [
          PostoperativeCareInhalationItem(
            title: "CPAP (SÜREKLİ POZİTİF HAVAYOLU BASINCI) VE OKSİJENASYON",
            description: "Hem inspiryum hem ekspiryumda sabit basınç sağlayarak alveolleri açık tutar ve oksijenasyonu artırır.",
            additionalInfo: "Gevşememiş, spontan solunumu yeterli hastalarda kullanılır.",
          ),
          PostoperativeCareInhalationItem(
            title: "BIPAP İLE İNSPİRATUM VE EKSPİRİUMDA DİFERANSİYEL BASINÇ DESTEĞİ",
            description: "İki farklı basınç seviyesi ile hem ventilasyonu hem de oksijenasyonu aynı anda destekler.",
            additionalInfo: "IPAP ventilasyonu, EPAP (PEEP) ise oksijenasyonu yönetir.",
          ),
          PostoperativeCareInhalationItem(
            title: "NIV ENDIKASYONLARI: KOAH ALEVLENMESİ VE AKCİĞER ÖDEMİ",
            description: "Akut hiperkapnik solunum yetmezliği ve kardiyojenik akciğer ödeminde NIV ilk tercihtir.",
            additionalInfo: "Hafif-orta ARDS vakalarında da yakın izlemle denenebilir.",
          ),
          PostoperativeCareInhalationItem(
            title: "NIV KONTRENDİKASYONLARI: BİLİNÇ BOZUKLUĞU VE ASPİRASYON RİSKİ",
            description: "Kooperasyonu olmayan, bulantı-kusması olan veya hemodinamik olarak instabil hastalarda NIV uygulanmamalıdır.",
            additionalInfo: "Maske uyumsuzluğu tedavinin başarısızlığındaki en büyük etkendir.",
          ),
        ],
      ),
      PostoperativeCareInhalationCategory(
        categoryName: 'Komplikasyonlar',
        items: [
          PostoperativeCareInhalationItem(
            title: "BAROTRAVMA: PNÖMOTORAKS VE PNÖMOMEDİASTİNUM RİSKİ",
            description: "Yüksek havayolu basınçlarına bağlı olarak alveol rüptürü ve plevral boşluğa hava kaçmasıdır.",
            additionalInfo: "Tansiyon pnömotoraks acil drenaj gerektiren bir durumdur.",
          ),
          PostoperativeCareInhalationItem(
            title: "VOLÜTRAVMA VE AŞIRI TİDAL VOLÜMÜN AKCİĞER HASARINDAKİ ROLÜ",
            description: "Aşırı tidal volüm nedeniyle alveollerin aşırı gerilmesi sonucu oluşan inflamatuar hasardır.",
            additionalInfo: "Sadece basınç değil, volüm kontrolü de akciğer koruma için şarttır.",
          ),
          PostoperativeCareInhalationItem(
            title: "OKSİJEN TOKSİSİTESİ VE UZUN SÜRELİ YÜKSEK FIO2 (>0.6) RİSKLERİ",
            description: "Uzun süre %60 üzerindeki oksijene maruz kalmak serbest radikal hasarı ve absorptif atelektaziye yol açar.",
            additionalInfo: "Hedef daima hastanın tolere ettiği en düşük FiO2 olmalıdır.",
          ),
          PostoperativeCareInhalationItem(
            title: "YÜKSEK PEEP'İN HEMODİNAMİK ETKİLERİ VE VENÖZ DÖNÜŞ AZALMASI",
            description: "Artan intratorasik basınç, venöz dönüşü azaltarak kardiyak debiyi ve tansiyonu düşürebilir.",
            additionalInfo: "Hipotansif hastalarda PEEP artırılırken dikkatli olunmalıdır.",
          ),
          PostoperativeCareInhalationItem(
            title: "VENTİLATÖR İLİŞKİLİ PNÖMONİ (VAP) VE ÖNLEME STRATEJİLERİ",
            description: "Mekanik ventilasyon sırasında gelişen en sık ve ciddi enfeksiyon komplikasyonudur.",
            additionalInfo: "Yatak başının yükseltilmesi ve ağız bakımı VAP insidansını azaltır.",
          ),
        ],
      ),
      PostoperativeCareInhalationCategory(
        categoryName: 'Weaning (Ventilatörden Ayırma)',
        items: [
          PostoperativeCareInhalationItem(
            title: "WEANING İÇİN HAZIRLIK KRİTERLERİ VE SOLUNUMSAL STABİLİTE",
            description: "Altta yatan nedenin çözülmesi, FiO₂ ≤0.4, PEEP ≤5 ve yeterli oksijenasyon (PaO₂/FiO₂ >150) şarttır.",
            additionalInfo: "Hastanın kooperasyonu ve öksürük refleksi taburculuk için değerlendirilmelidir.",
          ),
          PostoperativeCareInhalationItem(
            title: "SPONTAN SOLUNUM DENEMESİ (SBT) VE BAŞARI PARAMETRELERİ",
            description: "Hastanın ventilatör desteği olmadan en az 30-120 dakika boyunca stabil kalabilmesi testi (T-tüp veya düşük PSV) başarının teyididir.",
            additionalInfo: "Başarısızlık durumunda test bir sonraki gün tekrarlanır.",
          ),
          PostoperativeCareInhalationItem(
            title: "RSBI (TEK HARFLİ HIZLI YÜZEYSEL SOLUNUM İNDEKSİ) <105 KRİTERİ",
            description: "Solunum sayısı / Tidal Volüm oranının 105 altında olması başarılı ekstübasyonu öngörmede en değerli parametredir.",
            additionalInfo: "Yüksek index değeri, solunum kaslarının yorulmaya başladığını gösterir.",
          ),
        ],
      ),
      PostoperativeCareInhalationCategory(
        categoryName: 'Postanestezik Dönem İçin Spot Notlar',
        items: [
          PostoperativeCareInhalationItem(
            title: "PACU HİPOKSEMİSİNDE İLK MÜDAHALE: OKSİJEN VE CPAP",
            description: "Hipoksemi durumunda önce pozisyon verilmeli ve maske ile oksijen başlanmalıdır; dirençli vakalarda CPAP/NIV düşünülür.",
            additionalInfo: "Gerekirse hasta derhal re-entübe edilmelidir.",
          ),
          PostoperativeCareInhalationItem(
            title: "REZİDÜEL KAS BLOKAJI VE OPİOİD KAYNAKLI HİPOVENTİLASYON",
            description: "Uyanma odasındaki gizli tehlike, tam geri dönmemiş nöromüsküler blok veya opioidlerin depresan etkisidir.",
            additionalInfo: "Yetersiz tidal volüm karbondioksit narkozuna yol açabilir.",
          ),
          PostoperativeCareInhalationItem(
            title: "POSTOPERATİF TİTREMENİN OKSİJEN TÜKETİMİ ÜZERİNE ETKİSİ",
            description: "Titreme, oksijen tüketimini ve metabolik hızı %400'e kadar artırarak solunum yetmezliğini tetikleyebilir.",
            additionalInfo: "Aktif ısıtma ve meperidin kullanımı esastır.",
          ),
          PostoperativeCareInhalationItem(
            title: "MEKANİK VENTİLASYONUN EN SIK VE ÖLÜMCÜL KOMPLİKASYONU: PNÖMONİ",
            description: "Yoğun bakımda ventilasyona bağlı pnömoni gelişimini önlemek için hijyen ve erken weaning hayati öneme sahiptir.",
            additionalInfo: "VAP kiti uygulamaları rutin olmalıdır.",
          ),
          PostoperativeCareInhalationItem(
            title: "OKSİJEN TOKSİSİTESİ VE UZUN SÜRELİ YÜKSEK FIO2 SINIRI (>0.6)",
            description: "Yoğun bakımda 48 saatten uzun süreli yüksek FiO₂ değerlerinin mortaliteyi artırdığı unutulmamalıdır.",
            additionalInfo: "Mümkün olan en kısa sürede %40-50 altına düşülmelidir.",
          ),
        ],
      ),
    ];
  }
}
