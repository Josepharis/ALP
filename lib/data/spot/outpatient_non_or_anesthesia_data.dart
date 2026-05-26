import 'package:flutter/material.dart';

class OutpatientNonOrAnesthesiaItem {
  final String title;
  final String description;
  final String? subtitle;
  final String? additionalInfo;

  OutpatientNonOrAnesthesiaItem({
    required this.title,
    required this.description,
    this.subtitle,
    this.additionalInfo,
  });
}

class OutpatientNonOrAnesthesiaCategory {
  final String categoryName;
  final List<OutpatientNonOrAnesthesiaItem> items;

  OutpatientNonOrAnesthesiaCategory({
    required this.categoryName,
    required this.items,
  });
}

class OutpatientNonOrAnesthesiaData {
  static List<OutpatientNonOrAnesthesiaCategory>
      getOutpatientNonOrAnesthesiaData(BuildContext context) {
    return [
      OutpatientNonOrAnesthesiaCategory(
        categoryName: 'Genel İlkeler',
        items: [
          OutpatientNonOrAnesthesiaItem(
            title: "GÜNÜBİRLİK CERRAHİ VE ANESTEZİ TANIMI",
            description: "Aynı gün içinde hem anestezi hem de cerrahi girişimin uygulanıp hastanın taburcu edildiği sistemdir.",
            additionalInfo: "Hastane yatış süresini minimize ederek verimliliği artırmayı hedefler.",
          ),
          OutpatientNonOrAnesthesiaItem(
            title: "AYNI GÜN TABURCULUK VE CERRAHİ AVANTAJLARI",
            description: "Düşük maliyet, hastanede kazanılmış enfeksiyon riskinde azalma ve hastanın kendi ortamında hızlı iyileşmesi temel avantajlardır.",
            additionalInfo: "Hastaların psikolojik olarak daha az etkilenmesini sağlar.",
          ),
          OutpatientNonOrAnesthesiaItem(
            title: "GÜNÜBİRLİK ANESTEZİ YÖNETİMİNDEKİ TEMEL ZORLUKLAR",
            description: "Doğru hasta seçimi, komplikasyon yönetimi ve özellikle hastane dışı ünitelerdeki sınırlı kaynaklar en büyük zorluklardır.",
            additionalInfo: "Beklenmedik yatış oranlarını düşük tutmak için titiz bir planlama gerektirir.",
          ),
        ],
      ),
      OutpatientNonOrAnesthesiaCategory(
        categoryName: 'Hasta Seçimi',
        items: [
          OutpatientNonOrAnesthesiaItem(
            title: "ASA SINIFLAMASI VE GÜNÜBİRLİK CERRAHİ UYGUNLUĞU (ASA I-II-III)",
            description: "ASA I ve II hastalar en uygun adaylardır; komorbiditeleri kontrol altında olan ASA III olguları da seçilerek kabul edilebilir.",
            additionalInfo: "Hastalık durumundan ziyade hastanın fonksiyonel kapasitesi ön plandadır.",
          ),
          OutpatientNonOrAnesthesiaItem(
            title: "GÜNÜBİRLİK ANESTEZİ İÇİN KESİN KONTRENDİKASYONLAR",
            description: "Kontrolsüz diyabet, hipertansiyon, ciddi kardiyak/pulmoner yetmezlikler ve aktif enfeksiyonlar günübirlik cerrahiye engel teşkil eder.",
            additionalInfo: "Evde bakım verecek bir refakatçinin olmaması da bir kontrendikasyondur.",
          ),
          OutpatientNonOrAnesthesiaItem(
            title: "ÖZEL HASTA GRUPLARI (ÇOCUK, YAŞLI VE OBEZİTE YÖNETİMİ)",
            description: "Çocuklar genellikle günübirlik cerrahi için idealdir; yaşlı ve obez hastalarda ise yandaş hastalıklar risk faktörüdür.",
            subtitle: "Obezite durumunda havayolu zorluğu, PONV ve OSA riskleri ciddi oranda artış gösterir",
            additionalInfo: "KBB ve üroloji küçük cerrahiler çocuklarda en sık günübirlik yapılan işlemlerdir.",
          ),
        ],
      ),
      OutpatientNonOrAnesthesiaCategory(
        categoryName: 'Preoperatif Hazırlık',
        items: [
          OutpatientNonOrAnesthesiaItem(
            title: "PREOPERATİF AÇLIK KURALLARI VE SIVI-KATI GIDA SINIRLARI",
            description: "Katı gıdalar için 6-8 saat, anne sütü için 4 saat ve berrak sıvılar için 2 saatlik açlık kuralı uygulanır.",
            additionalInfo: "Gereksiz uzun açlıklar dehidratasyon ve huzursuzluk yaratabilir.",
          ),
          OutpatientNonOrAnesthesiaItem(
            title: "PREMEDİKASYON STRATEJİLERİ VE HIZLI DERLENME HEDEFİ",
            description: "Minimal sedatif dozlar tercih edilerek hastanın hızlı derlenmesi ve erken taburculuğu amaçlanır.",
            additionalInfo: "Anksiyete düzeyi yüksek hastalarda kısa etkili ajanlar (örn: Midazolam) kullanılabilir.",
          ),
          OutpatientNonOrAnesthesiaItem(
            title: "PONV (BULANTI-KUSMA) PROFİLAKSİSİ VE RİSK YÖNETİMİ",
            description: "PONV riski yüksek görülen hastalarda operasyon öncesinde veya sırasında mutlaka antiemetik profilaksisi yapılmalıdır.",
            additionalInfo: "PONV, günübirlik hastaların eve gidişini engelleyen en can sıkıcı faktördür.",
          ),
        ],
      ),
      OutpatientNonOrAnesthesiaCategory(
        categoryName: 'İndüksiyon ve İdame',
        items: [
          OutpatientNonOrAnesthesiaItem(
            title: "İNDÜKSİYON AJANLARI VE PROPOFOLÜN AVANTAJLARI",
            description: "Propofol, hızlı başlangıç ve hızlı derlenme özellikleri nedeniyle günübirlik vakaların altın standart indüksiyon ajanıdır.",
            subtitle: "Çocuklarda kooperasyon yoksa intranasal veya IM sedasyon seçenekleri de değerlendirilebilir",
            additionalInfo: "Anti-emetik özelliği olması propofolü bu grup için paha biçilemez kılar.",
          ),
          OutpatientNonOrAnesthesiaItem(
            title: "ANESTEZİ İDAMESİ: TIVA VE İNHALASYON SEÇENEKLERİ",
            description: "TIVA (Total İntravenöz Anestezi) veya düşük çözünürlüklü inhalasyon ajanları (Sevofluran/Desfluran) ile idame sağlanır.",
            subtitle: "Kısa etkili opioidler (Fentanil, Remifentanil) peroperatif konforu artırır",
            additionalInfo: "Kas gevşetici ihtiyacı minimal tutulmalı; gerekirse kısa/orta etkililer tercih edilmelidir.",
          ),
          OutpatientNonOrAnesthesiaItem(
            title: "STANDART ASA MONİTÖRİZASYONU VE GÜVENLİK PROTOKOLLERİ",
            description: "EKG, SpO2, NIBP ve ETCO2 monitörizasyonu, girişimin yapıldığı her türlü ortamda (hastane dışı dahil) zorunludur.",
            additionalInfo: "Güvenlik standartları ameliyathane ile aynı seviyede tutulmalıdır.",
          ),
        ],
      ),
      OutpatientNonOrAnesthesiaCategory(
        categoryName: 'Ameliyathane Dışı Anestezi (NORA)',
        items: [
          OutpatientNonOrAnesthesiaItem(
            title: "NORA (OPERAHANE DIŞI) UYGULAMA ALANLARI VE LOKASYONLAR",
            description: "Endoskopi üniteleri, MRI/BT radyoloji kısımları, girişimsel kardiyoloji laboratuvarları ve acil servisler başlıca NORA alanlarıdır.",
            additionalInfo: "Bu alanlarda anestezistin 'misafir' olduğu ve standart dışı koşullar bulunduğu unutulmamalıdır.",
          ),
          OutpatientNonOrAnesthesiaItem(
            title: "NORA LOKASYONLARINDAKİ TEKNİK ZORLUKLAR VE EKİPMAN",
            description: "Dar alanlar, ekipman karmaşası ve hastaya erişimin kısıtlı olması en temel fiziksel zorluklardır.",
            subtitle: "Yedek oksijen kaynağı ve tam donanımlı resüsitasyon (rescue) ekipmanı her an hazır olmalıdır",
            additionalInfo: "İletişim kopuklukları bu alanlarda tıbbi hatalara zemin hazırlayabilir.",
          ),
          OutpatientNonOrAnesthesiaItem(
            title: "MRI VE ENDOSKOPI GİBİ ÖZEL ALANLARDAKİ RİSKLER",
            description: "MRI ünitelerinde manyetik alan uyumlu monitör ve ekipman kullanımı hayati zorunluluktur.",
            subtitle: "Endoskopik işlemlerde havayolu paylaşımı olması nedeniyle solunum takibi zordur",
            additionalInfo: "Radyolojide çocuklar için genellikle derin sedasyon (Deep Sedation) veya genel anestezi gerekebilir.",
          ),
        ],
      ),
      OutpatientNonOrAnesthesiaCategory(
        categoryName: 'Derlenme ve Taburculuk',
        items: [
          OutpatientNonOrAnesthesiaItem(
            title: "GÜNÜBİRLİK CERRAHİ TABURCULUK KRİTERLERİ VE STABİLİTE",
            description: "İdrar yapabilme zorunluluğu modern protokollerde terk edilmiş olsa da vital bulguların stabilitesi esastır.",
            subtitle: "Oral sıvı alabilme ve destek olmadan güvenli yürüyebilme (uyanıklık) şarttır",
            additionalInfo: "Analjezi düzeyi eve gönderilmek için yeterli ve ağrı kontrol altında olmalıdır.",
          ),
          OutpatientNonOrAnesthesiaItem(
            title: "ALDRETE SKORLAMASI VE TABURCULUK EŞİĞİ (>= 9/10)",
            description: "Hastanın derlenme ünitesinden veya hastaneden çıkışı için modifiye Aldrete skorunun en az 9/10 olması beklenir.",
            additionalInfo: "Solunum, dolaşım, bilinç, aktivite ve renk ölçütlerine dayanır.",
          ),
          OutpatientNonOrAnesthesiaItem(
            title: "SİSTEMİK TABURCULUK ŞARTLARI VE REFAKATÇİ ZORUNLULUĞU",
            description: "Günübirlik cerrahide hastanın yanında onu eve götürecek ve ilk gecesinde destek olacak sorumlu bir yetişkin (refakatçi) şarttır.",
            additionalInfo: "Hasta tek başına araç kullanamaz ve toplu taşıma ile dönemez.",
          ),
        ],
      ),
      OutpatientNonOrAnesthesiaCategory(
        categoryName: 'Komplikasyonlar',
        items: [
          OutpatientNonOrAnesthesiaItem(
            title: "HAVA YOLU OBSTRÜKSİYONU VE SEDASYON RİSKLERİ",
            description: "Özellikle derin sedasyon uygulanan üst GİS endoskopileri gibi işlemlerde hava yolu darlıkları sıktır.",
            additionalInfo: "Gerekirse havayolu araçları (LMA, entübasyon) hemen devreye alınmalıdır.",
          ),
          OutpatientNonOrAnesthesiaItem(
            title: "KAPALI ALANLARDA HİPOVENTİLASYON VE HİPOKSEMİ",
            description: "Radyoloji gibi izlenmesi zor dar alanlarda hipoventilasyon nedeniyle hipoksemi gelişme riski yüksektir.",
            additionalInfo: "Kapnografi (ETCO2) takibi bu alanlarda hayat kurtarıcıdır.",
          ),
          OutpatientNonOrAnesthesiaItem(
            title: "PONV: TABURCULUĞU GECİKTİREN EN SIK NEDEN",
            description: "Postoperatif bulantı ve kusma (PONV), günübirlik hastaların hastaneden çıkışını en çok öteleyen komplikasyondur.",
            additionalInfo: "Multimodal antiemetik yaklaşım ile yönetilmelidir.",
          ),
          OutpatientNonOrAnesthesiaItem(
            title: "HEMODİNAMİK İNSTABİLİTE VE KANAMA RİSKİ",
            description: "Girişimsel kardiyolojik ve radyolojik işlemler sonrası major kanamalar ve vasküler komplikasyonlar gelişebilir.",
            additionalInfo: "Hızlı sıvı replasmanı ve stabilzasyon yeteneği NORA alanında da olmalıdır.",
          ),
        ],
      ),
      OutpatientNonOrAnesthesiaCategory(
        categoryName: 'İdeal Ajan Özellikleri',
        items: [
          OutpatientNonOrAnesthesiaItem(
            title: "GÜNÜBİRLİK ANESTEZİDE İDEAL AJANIN GENEL ÖZELLİKLERİ",
            description: "Hızlı başlangıçlı, kısa etkili ve vücutta birikmeyen (tahmin edilebilir eliminasyon) ajanlar idealdir.",
            additionalInfo: "Hastanın 'hazır ve uyanık' halini çabuk almasını sağlayan ilaçlar tercih edilir.",
          ),
          OutpatientNonOrAnesthesiaItem(
            title: "KLİNİKTE EN SIK TERCİH EDİLEN GÜNÜBİRLİK AJANLAR",
            description: "Propofol, Remifentanil, Sevofluran ve Desfluran modern günübirlik anestezi pratiğinin temel taşlarıdır.",
            additionalInfo: "Genellikle TIVA uygulamaları konfor açısından daha ön plandadır.",
          ),
          OutpatientNonOrAnesthesiaItem(
            title: "KOMBİNE ANTİEMETİK TEDAVİ VE İLAÇ SEÇENEKLERİ",
            description: "Ondansetron (5-HT3 inhibitörü) ve Deksametazon kombinasyonu PONV önlemede en güçlü silahlardır.",
            additionalInfo: "İdeal zamanlama indüksiyon sırasında veya cerrahi bitimine yakındır.",
          ),
        ],
      ),
      OutpatientNonOrAnesthesiaCategory(
        categoryName: 'Özetle',
        items: [
          OutpatientNonOrAnesthesiaItem(
            title: "GÜNÜBİRLİK VE NORA YÖNETİMİNDE KRİTİK NOKTALAR",
            description: "Doğru hasta seçimi ile yüksek standartlı monitörizasyon, güvenli anestezi yönetiminin temelidir.",
            additionalInfo: "Ameliyathane dışı binalar, anestezist için güvenlik açıklarına en gebe yerlerdir.",
          ),
          OutpatientNonOrAnesthesiaItem(
            title: "EN SIK TERCİH EDİLEN ANESTEZİK AJANLAR",
            description: "Propofol, hızı ve anti-emetik etkisi nedeniyle klinik pratikte en çok tercih edilen ajandır.",
            additionalInfo: "Bebek indüksiyonunda ise hala maske/Sevofluran yaygındır.",
          ),
          OutpatientNonOrAnesthesiaItem(
            title: "TABURCULUK ŞARTLARI VE ALDRETE SKORU ÖNEMİ",
            description: "Taburculuk için Aldrete skorunun >= 9 olması ve hastanın yanında mutlaka bir refakatçi bulunması zorunluluktur.",
            additionalInfo: "Herhangi bir şüphe durumunda hasta hastaneye yatırılmalıdır.",
          ),
          OutpatientNonOrAnesthesiaItem(
            title: "EN SIK KARŞILAŞILAN PEROPERATİF SORUNLAR",
            description: "Hava yolu güvenliği (obstrüksiyon) ve postoperatif bulantı-kusma en sık karşılaşılan klinik problemlerdir.",
            additionalInfo: "Bu sorunlara karşı agresif profilaksi hayat kurtarıcıdır.",
          ),
        ],
      ),
    ];
  }
}
