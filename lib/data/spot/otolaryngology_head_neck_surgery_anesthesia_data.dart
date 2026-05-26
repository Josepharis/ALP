import 'package:flutter/material.dart';

class OtolaryngologyHeadNeckSurgeryAnesthesiaItem {
  final String title;
  final String description;
  final String? subtitle;
  final String? additionalInfo;

  OtolaryngologyHeadNeckSurgeryAnesthesiaItem({
    required this.title,
    required this.description,
    this.subtitle,
    this.additionalInfo,
  });
}

class OtolaryngologyHeadNeckSurgeryAnesthesiaCategory {
  final String categoryName;
  final List<OtolaryngologyHeadNeckSurgeryAnesthesiaItem> items;

  OtolaryngologyHeadNeckSurgeryAnesthesiaCategory({
    required this.categoryName,
    required this.items,
  });
}

class OtolaryngologyHeadNeckSurgeryAnesthesiaData {
  static List<OtolaryngologyHeadNeckSurgeryAnesthesiaCategory>
      getOtolaryngologyHeadNeckSurgeryAnesthesiaData(BuildContext context) {
    return [
      OtolaryngologyHeadNeckSurgeryAnesthesiaCategory(
        categoryName: 'Endoskopi',
        items: [
          OtolaryngologyHeadNeckSurgeryAnesthesiaItem(
            title: "LERİNGOSKOPİ ÖNCESİ PREOPERATİF DEĞERLENDİRME",
            description: "Havayolu patolojisi olan hastalarda radyolojik görüntüleme ve indirekt laringoskopi ile havayolu açıklığı teyit edilmelidir.",
            subtitle: "Zor havayolu öngörülen vakalarda fiberoptik ve diğer ekipmanlar mutlaka hazır bulundurulmalıdır",
            additionalInfo: "Solunumsal obstrüksiyon riskini artıracağı için bu hastalarda sedatif premedikasyondan kaçınılmalıdır.",
          ),
          OtolaryngologyHeadNeckSurgeryAnesthesiaItem(
            title: "PREMEDİKASYON VE SEKRESYON KONTROLÜ (GLİKOPROLAT)",
            description: "Sekresyonları azaltarak cerrahi görüşü netleştirmek amacıyla operasyondan 1 saat önce Glikoprolat uygulanması önerilir.",
            additionalInfo: "Antisiyalogog etkisi havayolu manipülasyonu sırasında aspirasyon riskini de azaltır.",
          ),
          OtolaryngologyHeadNeckSurgeryAnesthesiaItem(
            title: "KAS GEVŞETİCİ KULLANIMI VE EKSTÜBASYON ZAMANLAMASI",
            description: "Süksinilkolin veya orta etkili nondepolarizanlar tercih edilebilir; ancak derin blok uyanmayı ve havayolu reflekslerinin dönüşünü geciktirir.",
            additionalInfo: "Cerrahi sonunda NMB etkisinin tamamen kalkması, laringospazmı önlemek için kritiktir.",
          ),
          OtolaryngologyHeadNeckSurgeryAnesthesiaItem(
            title: "ENDOSKOPİK VENTİLASYON TEKNİKLERİ VE APNE",
            description: "Cerrahiye alan açmak için küçük iç çaplı ETT kullanımı veya 2-3 dakikalık cerrahi süreleri takip eden 'aralıklı apne' teknikleri uygulanabilir.",
            subtitle: "Trakeal kanüller kısa süreli işlemler için uygun olsa da uzun süreli ventilasyonda yetersiz kalabilir",
            additionalInfo: "Hastanın oksijenasyon tablosu cerrahla sürekli iletişim halinde takip edilmelidir.",
          ),
          OtolaryngologyHeadNeckSurgeryAnesthesiaItem(
            title: "JET VENTİLASYON UYGULAMASI VE PARAMETRELERİ (30-50 PSİ)",
            description: "Küçük bir kanül yardımıyla 30-50 psi basınçta, 1-2 saniye inspirasyon ve 4-6 saniye pasif ekspirasyon fazlarıyla ventilasyon sağlanır.",
            subtitle: "Hava tuzağı ve pulmoner barotravma (pnömotoraks) riski nedeniyle dikkatli olunmalıdır",
            additionalInfo: "Modifiye jet ventilasyonda çok küçük kanüllerle dakikada 80-300 frekansa kadar çıkılabilir.",
          ),
          OtolaryngologyHeadNeckSurgeryAnesthesiaItem(
            title: "İNTRAOPERATİF HEMODİNAMİK DALGALANMALAR VE SİNİR BLOKLARI",
            description: "Laringoskopi sırasında gelişen hipertansif ve hipotansif ataklar kısa etkili ajanlarla (Remifentanil vb.) kontrol altına alınmalıdır.",
            subtitle: "Glossofaringeal ve Süperior Laringeal sinir blokları hemodinamik yanıtı yumuşatabilir",
            additionalInfo: "Özellikle kardiyak rezervi kısıtlı hastalarda refleks yanıtın baskılanması önemlidir.",
          ),
          OtolaryngologyHeadNeckSurgeryAnesthesiaItem(
            title: "LAZER CERRAHİSİNDE AJAN SEÇİMİ VE CO2/YAG FARKI",
            description: "CO2 lazer suda emilen uzun dalga boyu nedeniyle dokuya az penetre olur; YAG lazer ise daha kısa dalga boyuyla derin doku hasarı yapabilir.",
            subtitle: "Yanmayı desteklediği için N2O (Azot Protoksit) kullanılmamalı ve FiO2 minimum düzeyde tutulmalıdır",
            additionalInfo: "Hücrelerdeki su CO2 lazer enerjisini emerek patlar; bu da doku ablasyonunu sağlar.",
          ),
          OtolaryngologyHeadNeckSurgeryAnesthesiaItem(
            title: "LAZER GÜVENLİK ÖNLEMLERİ VE HAVAYOLU YANGINI",
            description: "Tüp kafı mutlaka serum fizyolojik (SF) ile doldurulmalı, havayolunda ıslak tamponlar kullanılmalı ve en az 60 mL SF'lik su kaynağı hazır tutulmalıdır.",
            additionalInfo: "Havayolu yangını lazer cerrahisinin en ölümcül komplikasyonudur; ilk müdahale tüpün çıkarılması ve ventilasyonun durdurulmasıdır.",
          ),
        ],
      ),
      OtolaryngologyHeadNeckSurgeryAnesthesiaCategory(
        categoryName: 'Nazal ve Sinüs Cerrahisi',
        items: [
          OtolaryngologyHeadNeckSurgeryAnesthesiaItem(
            title: "NAZAL CERRAHİ ÖNCESİ SOLUNUMSAL DEĞERLENDİRME",
            description: "Nazal obstrüksiyonu olanlarda maske ventilasyonu güç olabilir; nazal polipi olanlarda NSAİİ kullanımı alerjik reaksiyon (Samter Triadı) nedeniyle sorgulanmalıdır.",
            additionalInfo: "Kanama bozukluğu veya antikoagülan kullanımı cerrahi öncesi mutlaka düzeltilmelidir.",
          ),
          OtolaryngologyHeadNeckSurgeryAnesthesiaItem(
            title: "İNTRAOPERATİF NAZAL ANESTEZİ VE TÜP SEÇİMİ",
            description: "Topikal ve submukozal lokal anestetik uygulamasıyla cerrahi alan hazırlanır; RAE (pre-formed) veya spiral tüpler cerrahiye alan açmak için tercih edilir.",
            additionalInfo: "Genel anestezi indüksiyonu sonrası orofaringeal airway kullanımı ventilasyonu kolaylaştırır.",
          ),
          OtolaryngologyHeadNeckSurgeryAnesthesiaItem(
            title: "ENDOSKOPİK SİNÜS CERRAHİSİ (ESC) VE GÖZ KORUMASI",
            description: "ESC sırasında cerrahi alan göze çok yakın olduğu için göz hareketleri izlenmeli ve korneal abrazyona karşı gözler korunmalıdır.",
            subtitle: "Beyin dokusu veya optik sinir hasarını önlemek için hastanın hareketsizliği (yeterli NMB) şarttır",
            additionalInfo: "Medial rektus kası veya orbita duvarı cerrahi sırasında travmaya açıktır.",
          ),
          OtolaryngologyHeadNeckSurgeryAnesthesiaItem(
            title: "NAZAL OPERASYON SONRASI EKSTÜBASYON KRİTERLERİ",
            description: "Ekstübasyon sırasında ıkınma ve öksürme nazal kanamayı artıracağı için havayolu refleksleri korunacak şekilde pürüzsüz uyanma hedeflenir.",
            additionalInfo: "Hasta mide içeriğini veya kanı aspire etmeyecek kadar uyanıkken ekstübe edilmelidir.",
          ),
        ],
      ),
      OtolaryngologyHeadNeckSurgeryAnesthesiaCategory(
        categoryName: 'Baş ve Boyun Kanseri Cerrahisi',
        items: [
          OtolaryngologyHeadNeckSurgeryAnesthesiaItem(
            title: "BAŞ-BOYUN KANSERLERİNDE KOMORBİDİTE VE HAVAYOLU",
            description: "Bu hastalarda genellikle ağır sigara ve alkol kullanımına bağlı KOAH ve KAH eşlik eder; kitle nedeniyle entübasyon çok güç olabilir.",
            subtitle: "Hava pasajı daralmışsa inhalasyon indüksiyonu veya uyanık fiberoptik entübasyon hayat kurtarıcıdır",
            additionalInfo: "Anatomik distorsiyon nedeniyle standart laringoskopi başarısız olabilir.",
          ),
          OtolaryngologyHeadNeckSurgeryAnesthesiaItem(
            title: "İNTRAOPERATİF MONİTÖRİZASYON VE HİPOTERMİ KONTROLÜ",
            description: "Uzun süren diseksiyonlarda invaziv arter (A-line) ve CVP monitörizasyonu standart olup aktif ısıtma sistemleri mutlaka kullanılmalıdır.",
            additionalInfo: "Vücut ısısının düşmesi koagülopatiyi ve yara iyileşmesi sorunlarını tetikler.",
          ),
          OtolaryngologyHeadNeckSurgeryAnesthesiaItem(
            title: "TRAKEOSTOMİ SÜRECİNDE OKSİJEN YÖNETİMİ (FİO2 <30%)",
            description: "Trakeanın açıldığı anda yangın riskini önlemek için FiO2 %30'un altına düşürülmeli ve tüp kafı koter manipülasyonu öncesi indirilmelidir.",
            additionalInfo: "Trakeostomi kanülü yerleştirildikten sonra göğüs sesleri ve ETCO2 ile yer teyit edilmelidir.",
          ),
          OtolaryngologyHeadNeckSurgeryAnesthesiaItem(
            title: "SİNİR MONİTÖRİZASYONU VE ANESTEZİ İDAMESİ",
            description: "Rekürren laringeal sinir saptanması gibi durumlarda nöromüsküler blokör kullanımı (NMB) kesilmeli veya özel monitörizasyon tüpleri kullanılmalıdır.",
            subtitle: "Serbest flep uygulanan vasküler cerrahilerde flep perfüzyonunu bozmamak için vazopressörlerden kaçınılmalıdır",
            additionalInfo: "İdeal hematokrit (Hct) değerleri %27-30 aralığında tutularak flep akımı optimize edilir.",
          ),
          OtolaryngologyHeadNeckSurgeryAnesthesiaItem(
            title: "KAROTİD SİNÜS MANİPÜLASYONU VE KARDİYOVASKÜLER ETKİLER",
            description: "Boyun diseksiyonu sırasında karotid sinüs veya stellat ganglion manipülasyonu şiddetli bradikardi ve tansiyon dalgalanmalarına yol açabilir.",
            subtitle: "Bilateral boyun diseksiyonu sonrası hipertansiyon ve hipoksik dürtü kaybı gelişebilir",
            additionalInfo: "Sinüs traksiyonu sırasında anestezist hemodinamiği saniyelik takip etmelidir.",
          ),
        ],
      ),
      OtolaryngologyHeadNeckSurgeryAnesthesiaCategory(
        categoryName: 'Maksillofasiyal Rekonstrüksiyon / Ortognatik Cerrahi',
        items: [
          OtolaryngologyHeadNeckSurgeryAnesthesiaItem(
            title: "MAKSİLLOFASİYAL TRAVMALAR VE NAZAL ENTÜBASYON RİSKİ",
            description: "Havayolu travması olanlarda zor havayolu ekipmanı hazır olmalı; Le Fort II ve III kırıklarında kafa tabanı travması riski nedeniyle nazal entübasyon tehlikelidir.",
            additionalInfo: "Travmatik kanama ve doku ödemi maske ventilasyonunu imkansız hale getirebilir.",
          ),
          OtolaryngologyHeadNeckSurgeryAnesthesiaItem(
            title: "ORTOGNATİK CERRAHİDE KAN KONTROLÜ VE MONİTÖRİZASYON",
            description: "Kontrollü hipotansiyon teknikleri ve orofaringeal tampon kullanımı ile kanama ve aspirasyon kontrol altına alınır.",
            subtitle: "Geniş IV erişim ve invaziv arter basıncı monitörizasyonu önerilir",
            additionalInfo: "Aspirasyonun önlenmesi postoperatif pulmoner komplikasyonlar için esastır.",
          ),
          OtolaryngologyHeadNeckSurgeryAnesthesiaItem(
            title: "REKONSTRÜKSİYON SONRASI EKSTÜBASYON VE ASPİRASYON",
            description: "Ekstübasyon öncesinde orofaringeal tamponlar çıkarılmalı, ağız içi ve mide iyice aspire edilmelidir.",
            additionalInfo: "Mandibula ve maksillanın sabitlendiği (wire) vakalarda uyanma sırasında kusma, hayatı tehdit eden bir aspirasyon riskidir.",
          ),
        ],
      ),
      OtolaryngologyHeadNeckSurgeryAnesthesiaCategory(
        categoryName: 'Kulak Cerrahisi',
        items: [
          OtolaryngologyHeadNeckSurgeryAnesthesiaItem(
            title: "KULAK CERRAHİSİNDE N2O KONTRENDİKASYONU VE SÜRESİ",
            description: "N2O orta kulak boşluğu basıncını artıracağı için timpanoplasti cerrahisinde greft yerleştirilmeden 15-30 dakika önce kesilmelidir.",
            additionalInfo: "Greftin yerinden oynamasına (dislodgement) neden olarak cerrahi başarısızlığa yol açabilir.",
          ),
          OtolaryngologyHeadNeckSurgeryAnesthesiaItem(
            title: "KULAK CERRAHİSİNDE HEMOSTAZ VE POZİSYONLANDIRMA",
            description: "Mikroskobik cerrahide net görüş için başın yükseltilmesi, epinefrinli solüsyonlar ve gerekirse kontrollü hipotansiyon uygulanır.",
            additionalInfo: "Operasyon alanında tek damla kan bile görüşü tamamen engelleyebilir.",
          ),
          OtolaryngologyHeadNeckSurgeryAnesthesiaItem(
            title: "FASİYAL SİNİR SAPTAMA VE NMB AJANLARI",
            description: "Fasiyal sinirin cerrahi olarak korunması gereken aşamalarda sinir uyarımını engellememek için nöromüsküler blokör (NMB) verilmemelidir.",
            additionalInfo: "Sadece indüksiyon sırasında kısa etkili gevşetici kullanılabilir.",
          ),
          OtolaryngologyHeadNeckSurgeryAnesthesiaItem(
            title: "POSTOPERATİF KOMPLİKASYONLAR (VERTİGO VE POBK)",
            description: "KBB cerrahilerinde, özellikle kulak operasyonlarında vertigo ve POBK sıktır; propofol indüksiyonu bu riski bir miktar azaltabilir.",
            subtitle: "Retadron ve 5-HT3 antagonistlerinin kombine kullanımı faydalıdır",
            additionalInfo: "Vestibüler stimülasyon geçici ancak şiddetli dengesizlik yapabilir.",
          ),
        ],
      ),
      OtolaryngologyHeadNeckSurgeryAnesthesiaCategory(
        categoryName: 'Ağız Cerrahisi',
        items: [
          OtolaryngologyHeadNeckSurgeryAnesthesiaItem(
            title: "AĞIZ VE DİŞ CERRAHİSİNDE ANESTEZİ SEÇİMİ",
            description: "Çoğu yüzeysel işlemde lokal anestetik blokları yeterliyken; kooperasyon zorluğunda düşük doz opioid ve midazolam ile sedasyon sağlanabilir.",
            additionalInfo: "Havayolu güvenliği için sedasyonun derinliği yakından izlenmelidir.",
          ),
          OtolaryngologyHeadNeckSurgeryAnesthesiaItem(
            title: "EPİNEFRİNLİ LOKAL ANESTETİK DOZ LİMİTLERİ (LİDOKAİN/BUPİVAKAİN)",
            description: "Toksisiteyi önlemek için epinefrinli solüsyonlarda doz limitlerine (%2 Lidokain 1/100.000 max 12 mL) titizlikle uyulmalıdır.",
            subtitle: "%0.5 Bupivakain 1/200.000 solüsyonunda ise maksimum güvenli doz 8 mL'dir",
            additionalInfo: "Doz aşımı sistemik toksisite (LAST) ve kardiyak aritmilere neden olabilir.",
          ),
        ],
      ),
    ];
  }
}
