import 'package:flutter/material.dart';

class AnesthesiaAdjuvantDrugsItem {
  final String title;
  final String description;
  final String? subtitle;
  final String? additionalInfo;

  AnesthesiaAdjuvantDrugsItem({
    required this.title,
    required this.description,
    this.subtitle,
    this.additionalInfo,
  });
}

class AnesthesiaAdjuvantDrugsCategory {
  final String categoryName;
  final List<AnesthesiaAdjuvantDrugsItem> items;

  AnesthesiaAdjuvantDrugsCategory({
    required this.categoryName,
    required this.items,
  });
}

class AnesthesiaAdjuvantDrugsData {
  static List<AnesthesiaAdjuvantDrugsCategory> getAnesthesiaAdjuvantDrugsData(
    BuildContext context,
  ) {
    return [
      AnesthesiaAdjuvantDrugsCategory(
        categoryName: 'Aspirasyon & Profilaksi',
        items: [
          AnesthesiaAdjuvantDrugsItem(
            title: "ASPİRASYON PNÖMONİSİ RİSK FAKTÖRLERİ",
            description: "Aspirasyon pnömonisi (Mendelson Sendromu) gelişmesi için kritik eşik değerler mide içeriğinin pH değerinin 2.5'ten düşük ve hacminin 25 mL'den fazla olmasıdır.",
            additionalInfo: "Cerrahi öncesi açlık sürelerine uyulması bu riski azaltmak için temel yaklaşımdır. Ancak travma, obezite, gebelik ve diyabet gibi mide boşalmasının yavaşladığı durumlarda profilaktik ilaç kullanımı hayati önem taşır.",
          ),
          AnesthesiaAdjuvantDrugsItem(
            title: "ANTİASİTLERİN ASPİRASYON ÜZERİNDEKİ ROLÜ",
            description: "Mevcut mide asidini nötralize ederek pH'ı hızla yükseltirler ancak mide sıvısı hacmini artırma riski taşırlar.",
            subtitle: "Hacim artışı nedeniyle olası bir aspirasyon akciğerler için daha zararlı hale gelebilir",
            additionalInfo: "Genellikle sodyum sitrat gibi partikülsüz antiasitler tercih edilir; partiküllü (kalsiyum veya magnezyum bazlı) olanlar aspire edilirse ciddi akciğer hasarına (pnömoni) yol açabilir.",
          ),
          AnesthesiaAdjuvantDrugsItem(
            title: "H2 BLOKERLERİ VE MİDE ASİT YÖNETİMİ",
            description: "Mide pariyetal hücrelerinden asit salgılanmasını azaltarak hem pH'ı yükseltir hem de mide içeriğinin asiditesini düşürürler.",
            subtitle: "Sadece uygulamadan sonra salgılanan yeni mide sıvısı üzerinde etkilidirler",
            additionalInfo: "Halihazırda midede bulunan asidi nötralize etmezler, bu nedenle etkilerinin başlaması için cerrahi indüksiyondan en az 60-90 dakika önce uygulanmaları gerekir.",
          ),
          AnesthesiaAdjuvantDrugsItem(
            title: "METOKLOPRAMİD VE MİDE BOŞALMASI",
            description: "Mide boşalmasını hızlandıran prokinetik bir ajandır ve alt özofagus sfinkter tonusunu artırarak asit reflüsünü engeller.",
            additionalInfo: "Mide pH'ı üzerinde doğrudan bir etkisi yoktur; ancak mide içeriğini onikiparmak bağırsağına (duodenum) yönlendirerek aspirasyon riskini mekanik olarak azaltır.",
          ),
          AnesthesiaAdjuvantDrugsItem(
            title: "PROTON POMPA İNHİBİTÖRLERİ (PPI)",
            description: "H+/K+ ATPaz pompasını irreversibl olarak inhibe ederek asit üretimini en güçlü şekilde baskılayan ilaç grubudur.",
            additionalInfo: "Aspirasyon profilaksisinde genellikle cerrahi sabahı uygulandıklarında en yüksek verimi sağlarlar. Uzun süreli kullanımlarında mide flora değişikliğine yol açabilirler.",
          ),
        ],
      ),
      AnesthesiaAdjuvantDrugsCategory(
        categoryName: 'Histamin Fizyolojisi & Reseptörler',
        items: [
          AnesthesiaAdjuvantDrugsItem(
            title: "H1 RESEPTÖRÜ VE BRONKOKONSTRİKSİYON",
            description: "Fosfolipaz C aktivasyonu yoluyla bronkon daralmasına, kapiller geçirgenliğin artmasına ve doku ödemine yol açan reseptördür.",
            additionalInfo: "Saman nezlesi, ürtiker ve hafif alerjik reaksiyonların klinik tablosundan sorumludur. H1 aktivasyonu ayrıca bağırsak düz kaslarını kasar ve mukus salgısını artırır.",
          ),
          AnesthesiaAdjuvantDrugsItem(
            title: "H2 RESEPTÖRÜ VE MİDE ASİT SALGISI",
            description: "cAMP artışı üzerinden mide asit salgılanmasını uyarır; ayrıca kalp hızı ve kasılma gücü üzerinde hafif artırıcı etkisi vardır.",
            additionalInfo: "Sadece midede değil, damar düz kaslarında da bulunur ve vazodilatasyona (damar genişlemesine) katkıda bulunabilir. Anafilaksi tedavisinde her iki reseptörün (H1 ve H2) de bloke edilmesi daha etkili bir sonuç sağlar.",
          ),
          AnesthesiaAdjuvantDrugsItem(
            title: "H3 VE H4 RESEPTÖR FONKSİYONLARI",
            description: "H3 reseptörleri presinaptik uçta negatif feedback ile histamin salınımını azaltırken, H4 reseptörleri immün yanıt kontrolünde rol oynar.",
            additionalInfo: "H3 reseptörleri esasen merkezi sinir sisteminde yer alır ve uyku-uyanıklık döngüsünü düzenler. H4 reseptörleri ise lokositlerin kemotaksisinde (akışında) etkilidir ve yeni ilaç geliştirme çalışmalarının hedefidir.",
          ),
        ],
      ),
      AnesthesiaAdjuvantDrugsCategory(
        categoryName: 'H1 Blokerleri (Antihistaminikler)',
        items: [
          AnesthesiaAdjuvantDrugsItem(
            title: "1. KUŞAK H1 BLOKERLERİ (SEDATİF ETKİLİ)",
            description: "Kan-beyin bariyerini (KBB) aşarak belirgin uyku hali (sedasyon), antiemetik etki ve güçlü antikolinerjik yan etkiler oluştururlar.",
            subtitle: "Difenhidramin, prometazin ve hidroksizin bu gruptadır",
            additionalInfo: "Ağız kuruluğu ve görme bulanıklığı gibi yan etkiler sık görülür. Diğer merkezi sinir sistemi depresanları ve alkol ile birlikte kullanıldıklarında sedatif etkileri tehlikeli şekilde artabilir.",
          ),
          AnesthesiaAdjuvantDrugsItem(
            title: "2. KUŞAK H1 BLOKERLERİ (NON-SEDATİF ETKİLİ)",
            description: "Kan-beyin bariyerini geçemedikleri için uyku hali yapmazlar; temel olarak alerjik rinit ve ürtiker vakalarında tercih edilirler.",
            subtitle: "Loratadin, setirizin ve feksofenadin astım tedavisinde etkisizdir!",
            additionalInfo: "Bu ajanlar periferik H1 reseptörlerine çok daha selektif bağlanırlar. Antikolinerjik yan etkileri yok denecek kadar azdır; bu nedenle gün boyu zindelik gerektiren hastalarda ilk tercihtir.",
          ),
        ],
      ),
      AnesthesiaAdjuvantDrugsCategory(
        categoryName: 'H2 Blokerleri ve İlaç Etkileşimleri',
        items: [
          AnesthesiaAdjuvantDrugsItem(
            title: "SİMETİDİN VE P-450 ENZİM İNHİBİSYONU",
            description: "Karaciğerdeki sitokrom P-450 enzim sistemini güçlü şekilde inhibe ederek diğer ilaçların vücuttan atılımını yavaşlatır.",
            subtitle: "Varfarin, fenitoin, diazepam ve propranolol ile ciddi etkileşime girebilir",
            additionalInfo: "Yan etkileri arasında jinekomasti (erkeklerde meme büyümesi), impotans ve nadiren hepatotoksisite yer alır. Modern anestezide yan etkileri nedeniyle yerini daha spesifik ajanlara bırakmıştır.",
          ),
          AnesthesiaAdjuvantDrugsItem(
            title: "RANİTİDİN, FAMOTİDİN VE NİZATİDİN ÖZELLİKLERİ",
            description: "P-450 enzimi üzerine etkileri yok denecek kadar az olan, daha güvenli profil sergileyen H2 bloker ajanlardır.",
            subtitle: "Famotidin ve Nizatidin'in hızlı intravenöz uygulaması hipotansiyon ve bradikardiye (asistoliye kadar) yol açabilir",
            additionalInfo: "Ranitidin, simetidine göre daha potenttir ancak famotidin en güçlü ve uzun etkili olanıdır. İntravenöz uygulamaları yavaş yapılmalıdır (genellikle 15-20 dakikaya yayılmalıdır).",
          ),
        ],
      ),
      AnesthesiaAdjuvantDrugsCategory(
        categoryName: 'Metoklopramid ve Prokinetik Etki',
        items: [
          AnesthesiaAdjuvantDrugsItem(
            title: "METOKLOPRAMİD ETİ MEKANİZMASI",
            description: "Periferde kolinomimetik (asetilkolin etkisini artıran), merkezde ise dopamin antagonisti olarak fonksiyon görür.",
            additionalInfo: "Mide duvarının kasılma gücünü artırır, pilor sfinkterini gevşetir ve mide içeriğinin ince bağırsağa geçişini kolaylaştırır. Santral dopamin blokajı ile hafif bir antiemetik (bulantı önleyici) etki de sağlar.",
          ),
          AnesthesiaAdjuvantDrugsItem(
            title: "KLİNİK ETKİLER VE ÖZOFAGUS TONUSU",
            description: "Mide boşalmasını hızlandırıp sıvı hacmini azaltırken, alt özofagus sfinkter tonusunu artırarak mide asidinin yemek borusuna kaçmasını önler.",
            additionalInfo: "KTZ (Kemoreseptör Tetikleme Bölgesi) üzerindeki dopamin reseptörlerini bloke ederek mide bulantısını engellemede (opioid veya cerrahi sonrası) yardımcı olur.",
          ),
          AnesthesiaAdjuvantDrugsItem(
            title: "YAN ETKİLER VE EKSTRAPİRAMİDAL BULGULAR",
            description: "Dopamin reseptörlerini bloke ettiği için hareket bozukluklarına (distoni, akatizi) ve Parkinson hastalarında semptomların kötüleşmesine neden olabilir.",
            subtitle: "Feokromasitoma hastalarında katekolamin salınımını tetikleyerek hipertansif krize yol açabilir",
            additionalInfo: "Parkinson hastalığı, barsak tıkanıklığı (obstrüksiyon) ve feokromasitoma olan vakalarda kullanımı kesinlikle kontrendikedir (yasaktır).",
          ),
        ],
      ),
      AnesthesiaAdjuvantDrugsCategory(
        categoryName: 'Proton Pompa İnhibitörleri (PPI)',
        items: [
          AnesthesiaAdjuvantDrugsItem(
            title: "PPI GRUBU İLAÇLAR VE GÜÇLÜ ASİT BASKILAMA",
            description: "Omeprazol, lansoprazol ve pantoprazol gibi ajanlar mide asidini en radikal şekilde azaltan grup olup, 'son vuruş' etkisine sahiptir.",
            additionalInfo: "Hücredeki asit pompasını kalıcı olarak kapattıkları için etkileri enzimler yeniden sentezlenene kadar (yaklaşık 24-48 saat) devam eder.",
          ),
          AnesthesiaAdjuvantDrugsItem(
            title: "UZUN SÜRELİ KULLANIMDA ORTAYA ÇIKAN YAN ETKİLER",
            description: "Yıllarca süren kullanımda mide hücrelerinde (enterokromafin benzeri hücreler) hiperplazi ve bakteriyel kolonizasyon (enfeksiyon) riski artar.",
            additionalInfo: "Mide asidinin yokluğu (aklorhidri), kalsiyum ve B12 vitamini emilimini bozarak osteoporoz ve anemi riskini de artırabilir.",
          ),
          AnesthesiaAdjuvantDrugsItem(
            title: "PPI VE KLOPİDÖGREL ETKİLEŞİMİ",
            description: "Omeprazol gibi PPI'lar, kan sulandırıcı bir ilaç olan Klopidogrelin (Plavix) vücutta aktifleşmesini engelleyerek etkinliğini azaltabilir.",
            additionalInfo: "Karaciğerdeki CYP2C19 enzim yarışı nedeniyle gerçekleşen bu durum, kalp hastalarında stent tıkanması (tromboz) riskini artırdığı için dikkatli yönetilmelidir. Pantoprazol bu etkileşim açısından daha güvenli kabul edilir.",
          ),
        ],
      ),
      AnesthesiaAdjuvantDrugsCategory(
        categoryName: 'Postoperatif Bulantı Kusma (POBK)',
        items: [
          AnesthesiaAdjuvantDrugsItem(
            title: "POBK İÇİN HASTA VE ANESTEZİ RİSK FAKTÖRLERİ",
            description: "Kadın cinsiyet, sigara içmeme öyküsü ve taşıt tutması (motion sickness) geçmişi en güçlü bağımsız risk faktörleridir.",
            additionalInfo: "Anestezi sırasında kullanılan volatil (solunumsal) ajanlar, nitröz oksit (N2O) ve postoperatif dönemdeki opioid (morfin vb.) kullanımı bu riski tetikler. TİVA (total intravenöz anestezi) kullanımı riski belirgin şekilde azaltır.",
          ),
          AnesthesiaAdjuvantDrugsItem(
            title: "CERRAHİ TÜRÜ VE SÜRESİNİN POBK ÜZERİNDEKİ ETKİSİ",
            description: "Cerrahi sürenin her 30 dakikalık uzaması, bulantı kusma riskini yaklaşık %60 oranında artırmaktadır.",
            additionalInfo: "Özellikle jinekolojik ameliyatlar, şaşılık ameliyatları, laparoskopik girişimler ve kulak operasyonları POBK açısından en yüksek riskli cerrahi gruplardır.",
          ),
        ],
      ),
      AnesthesiaAdjuvantDrugsCategory(
        categoryName: 'Antiemetik Ajanlar ve Modern Tedavi',
        items: [
          AnesthesiaAdjuvantDrugsItem(
            title: "5-HT3 ANTAGONİSTLERİ (ONDANSETRON)",
            description: "Serotonin reseptörlerini bloke ederek kusma merkezini baskılayan, anestezinin en popüler antiemetik ilaç grubudur.",
            subtitle: "Yan etki olarak QT mesafesinde uzama ve baş ağrısı yapabilir",
            additionalInfo: "Karaciğer yetmezliği olan hastalarda doz azaltımı gerekebilir. Steroidlerle (Deksametazon) kombine edildiklerinde etkileri sinerjik olarak artar.",
          ),
          AnesthesiaAdjuvantDrugsItem(
            title: "BUTİROFENONLAR VE DROPERİDOL",
            description: "Dopamin reseptörlerini bloke ederek çok düşük dozlarda bile etkili antiemetik kontrol sağlarlar.",
            subtitle: "Ciddi QT uzaması ve ani ölüm riski (Black Box Warning) nedeniyle EKG monitorizasyonu ile uygulanmalıdır",
            additionalInfo: "Ekstrapiramidal yan etkiler (kas kasılmaları) yapabilirler. Torsades de Pointes aritmisine yol açma riski nedeniyle klinik kullanımı sınırlandırılmıştır.",
          ),
          AnesthesiaAdjuvantDrugsItem(
            title: "DEKSAMETAZON VE NK-1 ANTAGONİSTLERİ",
            description: "Deksametazon (4 mg) cerrahi başında uygulandığında bulantıyı önlemede etkilidir; aprepitant (NK-1 antagonisti) ise kitle kusmalarında (örneğin kemoterapi sonrası) tercih edilir.",
            additionalInfo: "Aprepitant ve ondansetron kombinasyonu, şiddetli POBK riski olan hastalarda aditif (eklemeli) bir koruma kalkanı oluşturur.",
          ),
        ],
      ),
      AnesthesiaAdjuvantDrugsCategory(
        categoryName: 'Klinik Altın Spotlar',
        items: [
          AnesthesiaAdjuvantDrugsItem(
            title: "ÖZET VE KRİTİK HATIRLATMALAR",
            description: "Anestezide yardımcı ilaçlar hakkında sınavda çıkması en muhtemel spot bilgiler.",
            additionalInfo: "• Aspirasyon riski: pH <2.5 ve hacim >25 mL.\n• Jinekomasti yapan: Simetidin.\n• QT uzaması yapanlar: Ondansetron ve Droperidol.\n• Klopidogrel etkisini azaltan: Omeprazol.\n• Prokinetik ve sfinkter tonusu artıran: Metoklopramid.\n• Astımda antihistaminik verilmesi: Pratik bir faydası yoktur, asıl tedavi bronkodilatörlerdir.",
          ),
        ],
      ),
    ];
  }
}
