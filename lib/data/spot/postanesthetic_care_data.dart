import 'package:flutter/material.dart';

class PostanestheticCareItem {
  final String title;
  final String description;
  final String? subtitle;
  final String? additionalInfo;

  PostanestheticCareItem({
    required this.title,
    required this.description,
    this.subtitle,
    this.additionalInfo,
  });
}

class PostanestheticCareCategory {
  final String categoryName;
  final List<PostanestheticCareItem> items;

  PostanestheticCareCategory({
    required this.categoryName,
    required this.items,
  });
}

class PostanestheticCareData {
  static List<PostanestheticCareCategory> getPostanestheticCareData(BuildContext context) {
    return [
      PostanestheticCareCategory(
        categoryName: 'Genel İlkeler',
        items: [
          PostanestheticCareItem(
            title: "PACU TANIMI VE FİZYOLOJİK İZLEM ÖNCELİKLERİ",
            description: "Anestezi sonrası fizyolojik fonksiyonların yakın takibi ve komplikasyonların erken tedavisi için tasarlanmış özel bakım birimidir.",
            additionalInfo: "Hastaların güvenli bir şekilde servise veya yoğun bakıma transferi hedeflenir.",
          ),
          PostanestheticCareItem(
            title: "POSTANESTEZİK BAKIMIN ANA HEDEFLERİ",
            description: "Hava yolu güvenliği, solunum stabilizasyonu, ağrı kontrolü ve mental durumun normale dönmesini sağlamaktır.",
            additionalInfo: "Sessiz ve profesyonel bir ortamda stabilizasyon esastır.",
          ),
          PostanestheticCareItem(
            title: "PACU'YA TRANSFER KRİTERLERİ VE GÜVENLİ HAVA YOLU",
            description: "Sadece spontan solunumu yeterli, dolaşımı stabil ve hava yolu patenti güven altına alınmış hastalar üniteye kabul edilir.",
            additionalInfo: "Stabil olmayan hastalar doğrudan yoğun bakıma transfer edilmelidir.",
          ),
        ],
      ),
      PostanestheticCareCategory(
        categoryName: 'Monitörizasyon',
        items: [
          PostanestheticCareItem(
            title: "TEMEL POSTOPERATİF MONİTÖRİZASYON STANDARTLARI",
            description: "Sürekli EKG, pulse oksimetre (SpO₂), noninvaziv kan basıncı ve solunum sayısı takibi esastır.",
            additionalInfo: "Oksijenlenme ve ventilasyonun her an izlenmesi hayatidir.",
          ),
          PostanestheticCareItem(
            title: "YÜKSEK RİSKLİ HASTALARDA İLERİ MONİTÖRİZASYON",
            description: "Komorbiditesi olan veya komplike cerrahi geçirenlerde invaziv arteriyel basınç ve kapnografi takibi gerekebilir.",
            additionalInfo: "İleri monitörizasyon, hemodinamik dalgalanmaların erken tespitini sağlar.",
          ),
          PostanestheticCareItem(
            title: "PACU'DA İLK KLİNİK DEĞERLENDİRMENİN BİLEŞENLERİ",
            description: "Hava yolu açıklığı, oksijenizasyon seviyesi, dolaşım stabilitesi, ağrı düzeyi ve bilinç durumu ilk bakışta kontrol edilir.",
            additionalInfo: "Zamanında müdahale, kalıcı hasarı önlemenin tek yoludur.",
          ),
        ],
      ),
      PostanestheticCareCategory(
        categoryName: 'Hava Yolu ve Solunum',
        items: [
          PostanestheticCareItem(
            title: "PACU'DA EN SIK GÖRÜLEN KOMPLİKASYON: HİPOKSİ",
            description: "Oksijen satürasyonunun düşmesi ünitedeki en yaygın ve en acil müdahale gerektiren problemdir.",
            additionalInfo: "Vigilans eksikliği ciddi morbiditeye yol açabilir.",
          ),
          PostanestheticCareItem(
            title: "POSTOPERATİF HİPOKSİ VE OBSTRÜKSİYON NEDENLERİ",
            description: "Rezidüel anestezik etki, laringospazm, bronkospazm, aspirasyon ve üst hava yolu tıkanıklığı ana nedenlerdir.",
            additionalInfo: "Dilin geriye kaçması en basit ama en sık obstrüksiyon nedenidir.",
          ),
          PostanestheticCareItem(
            title: "SOLUNUMSAL KOMPLİKASYONLARIN GENEL YÖNETİMİ",
            description: "Gerektiğinde orofaringeal airway kullanımı ve pozitif basınçlı maske ventilasyonu ilk basamak müdahalelerdir.",
            additionalInfo: "Spontan solunumu desteklemek için baş yukarı pozisyon verilebilir.",
          ),
          PostanestheticCareItem(
            title: "BRONKOSPAZM TEDAVİSİ VE B2 AGONİST KULLANIMI",
            description: "Özellikle astımlı hastalarda tetiklenen bronkospazm; β₂ agonist nebülizasyon ve steroidler ile tedavi edilir.",
            additionalInfo: "Şiddetli vakalarda intravenöz aminofilin veya magnezyum düşünülebilir.",
          ),
          PostanestheticCareItem(
            title: "LARİNGOSPAZM YÖNETİMİ VE SUKKİNİLKOLİN DOZAJI",
            description: "Pozitif basınçlı ventilasyona yanıt vermeyen laringospazm vakalarında düşük doz sukkinilkolin (0.1–0.5 mg/kg) uygulanır.",
            additionalInfo: "Kas gevşemesi ile hava yolu derhal açılmalıdır.",
          ),
          PostanestheticCareItem(
            title: "ASPİRASYON ŞÜPHESİNDE ACİL HAVA YOLU TEMİZLİĞİ",
            description: "Hava yolunun ivedilikle aspire edilmesi, oksijen desteği ve akciğer grafisi ile takip gereklidir.",
            additionalInfo: "Gerekirse hasta derhal entübe edilerek yoğun bakıma alınmalıdır.",
          ),
        ],
      ),
      PostanestheticCareCategory(
        categoryName: 'Dolaşım Problemleri',
        items: [
          PostanestheticCareItem(
            title: "HİPOTANSİYON NEDENLERİ VE REZİDÜEL ANESTEZİK ETKİSİ",
            description: "Hipovolemi (en sık), anesteziklerin miyokardiyal depresan etkileri ve vazodilatasyon hipotansiyona yol açar.",
            additionalInfo: "Cerrahi kanamanın devam etmesi de mutlaka dışlanmalıdır.",
          ),
          PostanestheticCareItem(
            title: "HİPOTANSİYON TEDAVİSİ VE VOLÜM REPLASMANI",
            description: "Hızlı volüm replasmanı (kristalloid/kolloid) ve gerekirse efedrin veya fenilefrin gibi vasopressörler kullanılır.",
            additionalInfo: "Masif kanamada kan ürünleri replasmanı esastır.",
          ),
          PostanestheticCareItem(
            title: "HİPERTANSİYON TETİKLEYİCİLERİ: AĞRI VE MESANE DOLULUĞU",
            description: "Kontrol edilemeyen ağrı, mesane distansiyonu ve hiperkapni perioperatif tansiyon yükselmesinin en sık nedenleridir.",
            additionalInfo: "Altun yatan sebebin ortadan kaldırılması tansiyonu normalize eder.",
          ),
          PostanestheticCareItem(
            title: "HİPERTANSİYONUN FARMAKOLOJİK VE KLİNİK TEDAVİSİ",
            description: "Analjezi ve sedasyon sonrası dirençli vakalarda kısa etkili β-blokerler veya nitratlar kullanılabilir.",
            additionalInfo: "Hastanın preoperatif kronik HT öyküsü göz önünde bulundurulmalıdır.",
          ),
          PostanestheticCareItem(
            title: "POSTOPERATİF ARİTMİLER VE ELEKTROLİT DENGESİZLİĞİ",
            description: "Hipoksi, asidoz ve elektrolit (K, Mg) dengesizlikleri aritmi oluşumunu tetikleyen ana faktörlerdir.",
            additionalInfo: "Aritmi tedavisi nedene yöneliktir.",
          ),
        ],
      ),
      PostanestheticCareCategory(
        categoryName: 'Nörolojik ve Mental Durum',
        items: [
          PostanestheticCareItem(
            title: "GEÇ UYANMA NEDENLERİ VE METABOLİK FAKTÖRLER",
            description: "Rezidüel anesteziklerin yanısıra hipoglisemi, hiponatremi ve nadiren inme geç uyanma nedenidir.",
            additionalInfo: "Kas gevşeticilerin tam geri döndürülememesi uyanıklığı maskeleyebilir.",
          ),
          PostanestheticCareItem(
            title: "POSTOPERATİF AJİTASYON VE DELİRYUM TETİKLEYİCİLERİ",
            description: "Eksitasyon tablosunun altında ağrı, hipoksi veya idrar retansiyonu gibi somatik nedenler aranmalıdır.",
            additionalInfo: "Alkol veya ilaç yoksunluğu yaşlılarda önemlidir.",
          ),
          PostanestheticCareItem(
            title: "MENTAL DURUM DEĞİŞİKLİKLERİNDE KLİNİK YÖNETİM",
            description: "Oksijenizasyonun sağlanması ve altta yatan tetikleyicinin düzeltilmesi ilk basamaktır.",
            additionalInfo: "Kontrol edilemeyen ajitasyonda kısa etkili sedatifler gerekebilir.",
          ),
        ],
      ),
      PostanestheticCareCategory(
        categoryName: 'Termoregülasyon',
        items: [
          PostanestheticCareItem(
            title: "PERİOPERATİF HİPOTERMİ VE SİSTEMİK KOMPLİKASYONLARI",
            description: "Isının 36°C'nin altına düşmesi titreme, artmış O₂ tüketimi, koagülopati ve kardiyak stres ile sonuçlanır.",
            additionalInfo: "Aktif ısıtıcı battaniyeler ve sıcak sıvılarla ısı geri kazanılmalıdır.",
          ),
          PostanestheticCareItem(
            title: "POSTOPERATİF HİPERTERMİ VE MALİGN HİPERTERMİ AYIRICI TANISI",
            description: "Ani ve yüksek ateş durumunda malign hipertermi (MH) akla gelmeli ve derhal dantrolen tedavisi planlanmalıdır.",
            additionalInfo: "Sepsis ve transfüzyon reaksiyonları da ikincil nedenlerdir.",
          ),
        ],
      ),
      PostanestheticCareCategory(
        categoryName: 'Ağrı Yönetimi',
        items: [
          PostanestheticCareItem(
            title: "POSTOPERATİF AĞRININ SİSTEMİK ETKİLERİ VE KLİNİK ÖNEMİ",
            description: "Ağrı, sempatik aktivasyona bağlı taşikardi ve hipertansiyona neden olup iyileşmeyi geciktirir.",
            additionalInfo: "Postoperatif konforun temel taşıdır.",
          ),
          PostanestheticCareItem(
            title: "MULTİMODAL ANALJEZİ YAKLAŞIMI VE REJYONAL TEKNİKLER",
            description: "Opioidlerin yanına NSAID'lerin eklenmesi ve rejyonal blokların kullanımı opioid tüketimini azaltır.",
            additionalInfo: "Lokal infiltrasyon da multimodal tedavinin parçasıdır.",
          ),
          PostanestheticCareItem(
            title: "HASTA KONTROLLÜ ANALJEZİ (PCA) UYGULAMALARI",
            description: "Hastanın kendi ağrısını yönetmesine izin veren güvenli ve etkili bir intravenöz veya epidural yöntemdir.",
            additionalInfo: "Doz kısıtlamaları sayesinde güvenlidir.",
          ),
        ],
      ),
      PostanestheticCareCategory(
        categoryName: 'PONV (Postoperatif Bulantı-Kusma)',
        items: [
          PostanestheticCareItem(
            title: "PONV İÇİN RİSK FAKTÖRLERİ VE APFEL SKORLAMASI",
            description: "Kadın cinsiyet, sigara içmeme, opioid kullanımı ve PONV öyküsü olanlar en yüksek risk grubundadır.",
            additionalInfo: "Risk skoruna göre profilaksi dozajı artırılır.",
          ),
          PostanestheticCareItem(
            title: "ANTİEMETİK PROFİLAKSİ STRATEJİLERİ VE KOMBİNASYONLAR",
            description: "Ondansetron, deksametazon ve droperidol kombinasyonları tekli ajanlardan daha etkilidir.",
            additionalInfo: "Cerrahi bitmeden önce profilaksi uygulanmalıdır.",
          ),
          PostanestheticCareItem(
            title: "DİRENÇLİ BULANTI-KUSMA TEDAVİSİ",
            description: "PACU'da gelişen dirençli vakalarda multimodal ajanlar veya farklı sınıftan ilaçlar eklenerek tedavi edilir.",
            additionalInfo: "Sıvı replasmanı da semptomları hafifletebilir.",
          ),
        ],
      ),
      PostanestheticCareCategory(
        categoryName: 'Diğer Komplikasyonlar',
        items: [
          PostanestheticCareItem(
            title: "POSTOPERATİF İDRAR RETANSİYONU VE SPİNAL BLOK İLİŞKİSİ",
            description: "Özellikle spinal ve epidural anestezi sonrası mesane tonusunun geçici kaybıdır.",
            additionalInfo: "Gerekirse tek seferlik kateterizasyon yapılabilir.",
          ),
          PostanestheticCareItem(
            title: "POSTOPERATİF TİTREME (SHIVERING) VE MEPERİDİN TEDAVİSİ",
            description: "Hipotermiye sekonder titreme durumunda meperidin (12.5–25 mg IV) en etkili farmakolojik ajandır.",
            additionalInfo: "Aktif dış ısıtma da titremeyi azaltır.",
          ),
          PostanestheticCareItem(
            title: "REZİDÜEL KAS GÜÇSÜZLÜĞÜ VE TOF MONİTÖRİZASYONU",
            description: "Kas gevşeticilerin etkisinin tam geri dönmemesi olup, Trend of Four (TOF) monitörizasyonu ile teyit edilmelidir.",
            additionalInfo: "TOF oranı >0.9 olması taburculuk için hedeflenir.",
          ),
        ],
      ),
      PostanestheticCareCategory(
        categoryName: 'Taburculuk Kriterleri (PACU\'dan Çıkış)',
        items: [
          PostanestheticCareItem(
            title: "ALDRETE SKORLAMASI (≥9–10) VE TABURCULUK GÜVENLİĞİ",
            description: "Solunum, dolaşım, bilinç, aktivite ve oksijenasyonu içeren skorda en az 9–10 puan aranır.",
            additionalInfo: "Modified Aldrete Skoru klinik pratikte en yaygın kullanılan araçtır.",
          ),
          PostanestheticCareItem(
            title: "STABİL VİTAL BULGULARIN İZLEMİ VE NORMAL SINIRLAR",
            description: "Kan basıncı ve nabız hızı taburculuk öncesi en az 30-60 dakika boyunca stabil kalmalıdır.",
            additionalInfo: "Ateş yüksekliği taburculuğu geciktirebilir.",
          ),
          PostanestheticCareItem(
            title: "HAVA YOLU GÜVENLİĞİNİN TEYİDİ VE SPONTAN SOLUNUM",
            description: "Hastanın obstrüksiyon olmadan spontan soluyabilmesi ve koruyucu reflekslerinin yerinde olması şarttır.",
            additionalInfo: "Ses kısıklığı veya laringeal ödem açısından dikkatli olunmalıdır.",
          ),
          PostanestheticCareItem(
            title: "AĞRI VE BULANTI KONTROLÜNÜN TABURCULUKTAKİ YERİ",
            description: "PACU'dan çıkış için ağrının katlanılabilir düzeyde ve şiddetli PONV'un kontrol altında olması gerekir.",
            additionalInfo: "Servis yatağına ağrılı hasta gönderilmemelidir.",
          ),
          PostanestheticCareItem(
            title: "CERRAHİ KOMPLİKASYONLARIN EKARTE EDİLMESİ",
            description: "Operasyon bölgesinde aktif kanama veya drenaj sorunu olmaması operasyon güvenliği için esastır.",
            additionalInfo: "Cerrahi ekip ile koordinasyon sürdürülmelidir.",
          ),
        ],
      ),
      PostanestheticCareCategory(
        categoryName: 'Klinik Spotlar',
        items: [
          PostanestheticCareItem(
            title: "PACU SÜRECİNDE EN SIK KARŞILAŞILAN SORUNLAR",
            description: "Klinik pratikte en sık hipoksi, hipotansiyon ve PONV ile karşılaşılır.",
            additionalInfo: "Hipoksi ana güvenlik tehdididir.",
          ),
          PostanestheticCareItem(
            title: "ALDRETE SKORUNUN KLİNİK PRAGMATİZMİ",
            description: "PACU'dan çıkışta kullanılan en değerli ve objektif puanlama sistemidir.",
            additionalInfo: "9 puan altı hastalar birimde kalmaya devam eder.",
          ),
          PostanestheticCareItem(
            title: "HİPOTANSİYONUN EN SIK NEDENİ: HİPOVOLEMİ",
            description: "PACU'da tansiyon düşüklüğü görüldüğünde ilk taranması gereken neden intravasküler volüm eksikliğidir.",
            additionalInfo: "Sıvı yüklemesine yanıt tanısal ve tedavi edicidir.",
          ),
          PostanestheticCareItem(
            title: "REZİDÜEL BLOK VARLIĞINDA FARMAKOLOJİK REVERSAL",
            description: "Kas gücü yetersizliğinde antikolinesteraz veya Sugammadeks kullanımı solunum güvenliğini sağlar.",
            additionalInfo: "TOF takibi ile doza karar verilmelidir.",
          ),
          PostanestheticCareItem(
            title: "MULTİMODAL PONV PROFİLAKSİSİNİN ÜSTÜNLÜĞÜ",
            description: "Tekli tedaviye göre en az iki farklı ilaç sınıfının (örn: Deksametazon + Ondansetron) kullanımı daha etkilidir.",
            additionalInfo: "Girişimsel olmayan yöntemler (asemptomatik hidratasyon) de yardımcıdır.",
          ),
        ],
      ),
    ];
  }
}
