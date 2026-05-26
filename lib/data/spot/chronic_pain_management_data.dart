import 'package:flutter/material.dart';

class ChronicPainManagementItem {
  final String title;
  final String description;
  final String? subtitle;
  final String? additionalInfo;

  ChronicPainManagementItem({
    required this.title,
    required this.description,
    this.subtitle,
    this.additionalInfo,
  });
}

class ChronicPainManagementCategory {
  final String categoryName;
  final List<ChronicPainManagementItem> items;

  ChronicPainManagementCategory({
    required this.categoryName,
    required this.items,
  });
}

class ChronicPainManagementData {
  static List<ChronicPainManagementCategory> getChronicPainManagementData(
    BuildContext context,
  ) {
    return [
      ChronicPainManagementCategory(
        categoryName: 'Ağrı Tanımı ve Sınıflandırması',
        items: [
          ChronicPainManagementItem(
            title: "AĞRI TANIMI VE IASP TIBBİ REFERANSI",
            description:
                "Ağrı, gerçek veya potansiyel doku hasarıyla ilişkili, hoş olmayan duyusal ve duygusal bir deneyimdir.",
            additionalInfo:
                "IASP (Uluslararası Ağrı Araştırmaları Teşkilatı) tarafından yapılan bu tanım, ağrının hem fiziksel hem de psikolojik boyutunu vurgular.",
          ),
          ChronicPainManagementItem(
            title: "NOSİSEPTİF VE NÖROPATİK AĞRI AYRIMI",
            description:
                "Dokudaki hasar sonucu oluşan ağrı Nosiseptif, sinir sistemindeki hasar sonucu oluşan ağrı ise Nöropatiktir.",
            additionalInfo:
                "Nosiseptif ağrı somatik ve visseral olarak ikiye ayrılırken; nöropatik ağrı yanma ve elektrik çarpması hissiyle karakterizedir.",
          ),
          ChronicPainManagementItem(
            title: "AKUT AĞRI VE SEMPATİK SİSTEM AKTİVASYONU",
            description:
                "Yeni başlayan ve doku hasarıyla uyumlu ağrılar akut ağrıdır; belirgin sempatik aktivite (taşikardi vb.) eşlik eder.",
            additionalInfo:
                "Akut ağrı etkin tedavi edilmezse santral sensitizasyon yoluyla kronikleşme eğilimi gösterir.",
          ),
          ChronicPainManagementItem(
            title: "KRONİK AĞRI KRİTERLERİ VE PSİKOLOJİK ETKİLER (>3-6 AY)",
            description:
                "Doku iyileşmesine rağmen 3-6 aydan uzun süren ağrılar kronik ağrı olarak sınıflandırılır.",
            additionalInfo:
                "Kronik ağrıda akut sempatik yanıt kaybolur, yerini uyku bozukluğu, depresyon ve affektif bozukluklar alır.",
          ),
        ],
      ),
      ChronicPainManagementCategory(
        categoryName: 'Nosisepsiyon – Anatomi ve Fizyoloji',
        items: [
          ChronicPainManagementItem(
            title: "BİRİNCİ SIRA NÖRONLAR VE DORSAL KÖK GİRİŞİ",
            description:
                "Periferik uyarıları spinal korda taşıyan nöronlar dorsal (arka) kökten spinal korda giriş yapar.",
            additionalInfo:
                "Bazı C lifleri nadiren ventral kökten girerek radikülotomi sonrası 'başarısız ağrı cerrahisi' nedeni olabilir.",
          ),
          ChronicPainManagementItem(
            title: "İKİNCİ SIRA NÖRONLAR VE DORSAL BOYNUZ LAMİNALARI (I-VI)",
            description:
                "Nöronlar spinal kord gri cevherindeki Lamina I-VI aralığında yerleşir.",
            subtitle:
                "Nosiseptif spesifik nöronlar Lamina I'de yer alır ve şiddetli uyarıları iletir",
            additionalInfo:
                "Lamina V'deki WDR nöronları 'wind-up' fenomeninden ve santral sensitizasyondan sorumludur.",
          ),
          ChronicPainManagementItem(
            title: "ÜÇÜNCÜ SIRA NÖRONLAR: TALAMUS VE KORTEKS İLİŞKİSİ",
            description:
                "Ağrı duyusu talamusa ulaştıktan sonra kortekse (lokalizasyon) ve limbik sisteme (duygu) iletilir.",
            additionalInfo:
                "Kortikal projeksiyonlar ağrının şiddetini ve tam yerini ayırt etmemizi sağlar.",
          ),
          ChronicPainManagementItem(
            title: "SPİNOTALAMİK TRAKTUSLAR VE AĞRI LOKALİZASYONU",
            description:
                "Lateral spinotalamik traktus ağrının yeri ve şiddetini; medial traktus ise otonomik yanıtları taşır.",
            subtitle:
                "Spinoretiküler yol otonomik yanıtta; Spinomezensefalik yol ise desendan ağrı kontrolünde rol oynar",
            additionalInfo:
                "Traktuslar genellikle spinal kordda çapraz yaparak karşı taraftan yükselirler.",
          ),
        ],
      ),
      ChronicPainManagementCategory(
        categoryName: 'Ağrı Fizyolojisi',
        items: [
          ChronicPainManagementItem(
            title: "A-DELTA LİFLERİ: HIZLI VE KESKİN AĞRI İLETİMİ",
            description:
                "Miyelinli ve hızlı iletim yapan bu lifler, ağrının başlangıcındaki keskin ve iyi lokalize duyuyu taşır.",
            additionalInfo: "Mekanik ve termal uyaranlara duyarlıdırlar.",
          ),
          ChronicPainManagementItem(
            title: "C LİFLERİ: YAVAŞ VE KÜNT AĞRI KARAKTERİ",
            description:
                "Miyelinsiz ve yavaş iletim yapan bu lifler, ağrının devamındaki künt, sızlayıcı ve diffüz ağrıyı taşır.",
            additionalInfo:
                "Polimodal karakterdedirler (mekanik, kimyasal, termal uyarıların tümüne yanıt verirler).",
          ),
          ChronicPainManagementItem(
            title: "SESSİZ NOSİSEPTÖRLER VE İNFLAMASYON İLİŞKİSİ",
            description:
                "Normalde uyarılmayan ancak doku inflamasyonu varlığında aktif hale gelen nosiseptörlerdir.",
            additionalInfo:
                "İnflamasyon sırasındaki artmış ağrı duyarlılığının ana nedenlerinden biridir.",
          ),
          ChronicPainManagementItem(
            title: "KİMYASAL MEDİATÖRLER VE GLUTAMATIN ROLÜ",
            description:
                "Ağrı iletiminde Substans P, CGRP ve en güçlü eksitatör nörotransmitter olan Glutamat rol oynar.",
            additionalInfo:
                "Glutamat, NMDA reseptörleri aracılığıyla santral fasilitasyonu tetikler.",
          ),
          ChronicPainManagementItem(
            title: "HİPERALJEZİ MEKANİZMASI VE NOSİSEPTÖR SENSİTİZASYONU",
            description:
                "Normalde ağrılı olan bir uyarana karşı şiddetli ağrı yanıtı verilmesidir.",
            subtitle:
                "Primer hiperaljezi doku hasarı bölgesinde; sekonder hiperaljezi Substans P salınımıyla çevre dokularda görülür",
            additionalInfo:
                "Prostaglandinler, histamin ve bradikinin nosiseptör eşiğini düşürür.",
          ),
        ],
      ),
      ChronicPainManagementCategory(
        categoryName: 'Modülasyon',
        items: [
          ChronicPainManagementItem(
            title: "SANTRAL FASİLİTASYON VE NMDA AKTİVASYONU (WIND-UP)",
            description:
                "Tekrarlayan ağrılı uyaranların spinal kordda 'wind-up' yaratarak ağrı algısını artırmasıdır.",
            additionalInfo:
                "NMDA reseptör aktivasyonu, nitrik oksit (NO) ve PG salınımı bu süreçte kilit rol oynar.",
          ),
          ChronicPainManagementItem(
            title: "SEGMENTAL İNHİBİSYON VE KAPI KONTROL TEORİSİ",
            description:
                "A-beta (dokunma) liflerinin uyarılmasıyla spinal kord seviyesinde ağrı iletiminin baskılanmasıdır.",
            additionalInfo:
                "GABA, glisin ve adenozin gibi mediatörler aracılık eder; TENS bu mekanizma ile çalışır.",
          ),
          ChronicPainManagementItem(
            title: "SUPRASPİNAL İNHİBİSYON VE ENDOJEN OPİOİD SİSTEMİ",
            description:
                "Beyinden (PAG-NRM) spinal korda inen yolların serotonerjik ve noradrenerjik yollarla ağrıyı durdurmasıdır.",
            additionalInfo:
                "Endojen opioidler (endorfin, enkefalin) bu modülasyonu güçlendirir.",
          ),
        ],
      ),
      ChronicPainManagementCategory(
        categoryName: 'Ağrının Sistemik Yanıtları',
        items: [
          ChronicPainManagementItem(
            title: "AKUT AĞRININ SİSTEMİK VE ORGAN FONKSİYON ETKİLERİ",
            description:
                "Kontrolsüz ağrı hipertansiyon, taşikardi, hipervantilasyon ve hiperkoagülabiliteye yol açar.",
            subtitle:
                "GİS motilitesi ve üriner fonksiyonlar azalırken; kortizol ve ADH düzeyleri yükselir",
            additionalInfo:
                "Miyokard iskemisi ve atelektazi gibi ciddi komplikasyonları tetikleyebilir.",
          ),
          ChronicPainManagementItem(
            title: "KRONİK AĞRI VE PSİKOPATOLOJİK DEĞİŞİKLİKLER",
            description:
                "Kronik ağrıda otonomik yanıtlar azalırken depresyon ve anksiyete ön plana çıkar.",
            additionalInfo:
                "Hastaların yaşam kalitesi ciddi ölçüde düşer ve kognitif fonksiyonlar etkilenebilir.",
          ),
        ],
      ),
      ChronicPainManagementCategory(
        categoryName: 'Kronik Ağrının Değerlendirilmesi',
        items: [
          ChronicPainManagementItem(
            title: "AĞRI ÖLÇEKLERİ (NRS, VAS, FACES) VE KULLANIMI",
            description:
                "Ağrının objektif takibi için numerik (0-10) veya görsel (10 cm'lik çizgi) ölçekler kullanılır.",
            additionalInfo:
                "FACES ölçeği 3 yaş üstü çocuklarda ve kooperasyon kurulamayan hastalarda idealdir.",
          ),
          ChronicPainManagementItem(
            title: "PSİKOLOJİK DEĞERLENDİRME VE BECK DEPRESYON ÖLÇEĞİ",
            description:
                "Kronik ağrıda altta yatan veya ağrıya eşlik eden psikopatolojiyi belirlemek esastır.",
            additionalInfo:
                "MMPI ve Beck ölçekleri tedavi planının bir parçasını oluşturur.",
          ),
          ChronicPainManagementItem(
            title: "FONKSİYONEL TESTLER VE YAŞAM KALİTESİ ANALİZİ",
            description:
                "Ağrının hastanın günlük aktivitelerini (SF-36, Oswestry vb.) ne kadar etkilediği ölçülür.",
            additionalInfo:
                "PDI (Paint Disability Index) gibi indeksler maluliyet değerlendirmesi sağlar.",
          ),
          ChronicPainManagementItem(
            title: "EMG VE SİNİR İLETİM ÇALIŞMALARI",
            description:
                "Sinir hasarının varlığını ve seviyesini belirlemek amacıyla elektrofizyolojik testler yapılır.",
            additionalInfo:
                "Organik ağrının fonksiyonel (psikojenik) ağrıdan ayırımına yardımcı olur.",
          ),
        ],
      ),
      ChronicPainManagementCategory(
        categoryName: 'Kronik Ağrı Sendromları',
        items: [
          ChronicPainManagementItem(
            title: "MİYOFASİYAL AĞRI SENDROMU VE TETİK NOKTALAR",
            description:
                "Kaslarda palpasyonla tetiklenen, belirli bölgelere yansıyan ağrılı nodüllerle seyreden tablodur.",
            additionalInfo:
                "İğneleme veya lokal anestezi enjeksiyonu ile tedavi edilir.",
          ),
          ChronicPainManagementItem(
            title: "FİBROMİYALJİ VE SİSTEMİK SEMPTOMLAR",
            description:
                "Yaygın vücut ağrısı, yorgunluk ve uyku bozukluğu ile karakterize, tetik noktadan ziyade 'hassas noktalar'ın olduğu tablodur.",
            additionalInfo:
                "WPI ve SS kriterleri ile tanı konur; kardiyak ve gastrointestinal semptomlar eşlik edebilir.",
          ),
          ChronicPainManagementItem(
            title: "BEL AĞRISI ETİYOLOJİSİ: DİSK VE FASET KAYNAKLI AĞRI",
            description:
                "Disk hernisi, faset sendromu ve spinal stenoz bel ağrılarının en sık nedenleri arasındadır.",
            additionalInfo:
                "Görüntüleme her zaman ağrının şiddetiyle korele olmayabilir.",
          ),
          ChronicPainManagementItem(
            title: "NÖROPATİK AĞRI VE DİYABETİK NÖROPATİ YÖNETİMİ",
            description:
                "Sinir iletimindeki hasar nedeniyle oluşan, uyuşma ve batma hissinin eşlik ettiği ağrılardır.",
            additionalInfo:
                "CRPS (Sudeck atrofisi) nöropatik ağrının en kompleks formudur.",
          ),
          ChronicPainManagementItem(
            title: "POSTHERPETİK NEVRALJİ VE TEDAVİ YAKLAŞIMLARI",
            description:
                "Zoster enfeksiyonu iyileşmesine rağmen döküntü bölgesinde devam eden şiddetli yanıcı ağrıdır.",
            additionalInfo:
                "Gabapentinoids, kapsaisin ve TENS tedavide temel bileşenlerdir.",
          ),
          ChronicPainManagementItem(
            title: "BAŞ AĞRISI TİPLERİ VE TRİGEMİNAL NEVRALJİ",
            description:
                "Migren, gerilim ve küme baş ağrıları ile yüz ağrısı yapan Trigeminal Nevralji sık görülen sendromlardır.",
            additionalInfo:
                "Vasküler dekompresyon veya ganglion blokajları cerrahi seçeneklerdir.",
          ),
          ChronicPainManagementItem(
            title: "KANSER AĞRISI VE MULTİMODAL YAKLAŞIM",
            description:
                "Tümör basısı veya tedavisine bağlı oluşan, kompleks ve progresif bir ağrı tablosudur.",
            additionalInfo: "DSÖ (WHO) merdiven uygulaması ana rehberdir.",
          ),
        ],
      ),
      ChronicPainManagementCategory(
        categoryName: 'Farmakolojik Tedavi',
        items: [
          ChronicPainManagementItem(
            title: "NSAİİ VE PARASETAMOLÜN HAFİF AĞRI YÖNETİMİNDEKİ YERİ",
            description:
                "Ağrı tedavisinin ilk basamağını oluştururlar ve hafif ağrılarda etkilidirler.",
            additionalInfo:
                "GİS kanama ve böbrek fonksiyonu riskleri NSAİİ kullanımını sınırlar.",
          ),
          ChronicPainManagementItem(
            title: "ANTİDEPRESANLARIN NÖROPATİK AĞRI TEDAVİSİNDEKİ ROLÜ",
            description:
                "TCA ve SNRI grubu ilaçlar desendan ağrı yollarını güçlendirerek nöropatik ağrıda kullanılır.",
            additionalInfo:
                "Depresyon eşlik etmese bile düşük dozlarda etkilidirler.",
          ),
          ChronicPainManagementItem(
            title: "ANTİKONVÜLZANLAR VE SİNİR HASARI KLİNİĞİ",
            description:
                "Gabapentin, Pregabalin ve Karbamazepin sinir iletimini modüle ederek nöropatik ağrıyı baskılar.",
            additionalInfo:
                "Karbamazepin Trigeminal Nevralji için ilk tercihtir.",
          ),
          ChronicPainManagementItem(
            title: "KAS GEVŞETİCİLER VE SPASTİSİTE YÖNETİMİ",
            description:
                "Baklofen ve tizanidin gibi ilaçlar santral etkili kas gevşemesi sağlar.",
            additionalInfo:
                "Spastisite kaynaklı ağrıların kontrolünde kıymetlidir.",
          ),
          ChronicPainManagementItem(
            title: "OPİOİD ANALJEZİKLER VE ŞİDDETLİ AĞRI YÖNETİMİ",
            description:
                "Morfın, fentanil ve tramadol gibi ilaçlar mu-reseptörleri üzerinden santral analjezi sağlar.",
            additionalInfo:
                "Tapentadol dual mekanizmasıyla hem opioid hem de noradrenalin geri alımını etkiler.",
          ),
          ChronicPainManagementItem(
            title: "ADJUVAN AJANLAR VE ANALJEZİ ETKİSİNİ ARTIRAN İLAÇLAR",
            description:
                "Kortikosteroidler, alfa-2 agonistler ve sistemik lidokain analjezi kalitesini artırmak için eklenir.",
            additionalInfo:
                "Polifarmasi yönetiminde ilaç etkileşimlerine dikkat edilmelidir.",
          ),
        ],
      ),
      ChronicPainManagementCategory(
        categoryName: 'Tanısal ve Tedavi Edici Bloklar',
        items: [
          ChronicPainManagementItem(
            title: "TANISAL SİNİR BLOKLARI VE LOKAL ANESTEZİK KULLANIMI",
            description:
                "Ağrının tam olarak hangi sinirden veya eklemden kaynaklandığını belirlemek için düşük hacimli LA ile yapılır.",
            additionalInfo:
                "Faset eklem veya sinir kökü blokları buna örnektir.",
          ),
          ChronicPainManagementItem(
            title: "TEDAVİ EDİCİ BLOKLAR VE STEROİD KOMBİNASYONLARI",
            description:
                "Tanı konduktan sonra kalıcı veya uzun süreli iyilik hali için LA yanına steroid eklenir.",
            additionalInfo: "Enflamatuar süreci baskılayarak sonuç verir.",
          ),
          ChronicPainManagementItem(
            title:
                "GÖRÜNTÜLEME EŞLİĞİNDE GİRİŞİMSEL AĞRI YÖNETİMİ (USG/FLOROSKOPI)",
            description:
                "USG gerçek zamanlı doku takibi sağlarken; Floroskopi kemik anatomisini net gösterir.",
            subtitle:
                "Derin ganglion bloklarında BT (bilgisayarlı tomografi) rehberliği güvenliği artırır",
            additionalInfo:
                "Radyasyon güvenliği önlemleri (kurşun önlük vb.) alınmalıdır.",
          ),
        ],
      ),
      ChronicPainManagementCategory(
        categoryName: 'Somatik Sinir Blokları',
        items: [
          ChronicPainManagementItem(
            title: "TRİGEMİNAL SİNİR BLOĞU VE GASSER GANGLİONU",
            description:
                "Yüz ağrısı ve nevralji tedavisinde Gasser ganglionuna veya terminal dallara (maksiller vb.) uygulanır.",
            subtitle:
                "En ciddi komplikasyonları subaraknoid enjeksiyon ve çiğneme kası felcidir",
            additionalInfo:
                "Ganglionun foramen ovale içindeki konumu floroskopi ile bulunabilir.",
          ),
          ChronicPainManagementItem(
            title: "FASİAL SİNİR BLOĞU VE ENDİKASYONLARI",
            description:
                "Yüz spazmı, akut herpes zoster ağrısı ve bazı göz operasyonlarında yapılır.",
            additionalInfo:
                "Giriş noktası genellikle mastoid çıkıntının önündedir.",
          ),
          ChronicPainManagementItem(
            title: "GLOSSOFARİNGEAL BLOK VE VOKAL KORD PARALİZİ RİSKİ",
            description:
                "Dil kökü ve tonsil malignitelerinde analjezi için yapılır; ancak vokal kord paralizisi riski taşır.",
            subtitle:
                "Kanser dışı ağrılarda ayırıcı tanı için tekniğe başvurulabilir",
            additionalInfo:
                "9. kranyal sinirin stiloid çıkıntı yakınında uyuşturulmasıdır.",
          ),
          ChronicPainManagementItem(
            title: "OKSİPİTAL SİNİR BLOĞU VE BAŞ AĞRISI YÖNETİMİ",
            description:
                "Oksipital nevralji ve servikojenik baş ağrılarında oksipital arterin medialinden yapılır.",
            additionalInfo: "Tanısal ve tedavi edici değeri yüksektir.",
          ),
          ChronicPainManagementItem(
            title: "SUPRASKAPULAR BLOK VE OMUZ AĞRISI TEDAVİSİ",
            description:
                "Omuz ekleminin ana duyusal siniridir; dondurulmuş omuz ve kanser ağrılarında kullanılır.",
            subtitle: "İğnenin fazla ilerletilmesi pnömotoraks riski oluşturur",
            additionalInfo:
                "Korakoid çıkıntı ve skapula anatomisi üzerinden lokalize edilir.",
          ),
          ChronicPainManagementItem(
            title: "PARAVERTEBRAL BLOK VE SEGMENTER KÖK AĞRILARI",
            description:
                "Vertebra yanından çıkan sinir köklerine tekli veya çoklu seviyelerde uygulanır.",
            subtitle:
                "Pnömotoraks ve intratekal (spinal) enjeksiyon en önemli risklerdir",
            additionalInfo: "Kuşak tarzı ağrılarda çok etkilidir.",
          ),
          ChronicPainManagementItem(
            title: "MEDİAL DAL VE FASET EKLEM ENJEKSİYONLARI",
            description:
                "Bel ve boyunda faset eklem kireçlenmesine bağlı gelişen mekanik ağrıların tedavisidir.",
            subtitle:
                "RF lezyonlama (yakma) ile aylarca süren fayda sağlanabilir",
            additionalInfo: "Her eklemi iki adet medial dal innerve eder.",
          ),
          ChronicPainManagementItem(
            title: "PUDENDAL BLOK VE PERİNEAL ANALJEZİ",
            description:
                "Perineal bölge ağrısı ve girişimlerinde sematistik sonuçlar verir.",
            additionalInfo: "İşiyadik spina yakınından yapılır.",
          ),
        ],
      ),
      ChronicPainManagementCategory(
        categoryName: 'Sempatik Sinir Blokları',
        items: [
          ChronicPainManagementItem(
            title: "STELLAT GANGLİON BLOĞU (C6-C7) VE HORNER SENDROMU",
            description:
                "Baş, boyun ve kolu kapsayan sempatik ağrılarda (Raynaud vb.) C6-C7 seviyesinde uygulanır.",
            subtitle:
                "Başarı göstergesi olarak aynı tarafta Horner Sendromu (ptozis, miyozis, anhidrozis) gelişir",
            additionalInfo:
                "İğne ucu vasküler yapılara çok yakın geçtiği için USG şarttır.",
          ),
          ChronicPainManagementItem(
            title: "TORASİK SEMPATİK ZİNCİR BLOĞU VE KISITLAMALAR",
            description:
                "Pnömotoraks riski nedeniyle uygulama sıklığı oldukça düşüktür.",
            additionalInfo:
                "Hiperhidrozis ve Raynaud fenomeninde nadiren tercih edilir.",
          ),
          ChronicPainManagementItem(
            title: "SPLANKNİK SİNİR BLOĞU VE ABDOMİNAL AĞRI",
            description:
                "T11-T12 seviyesinde visseral ağrıların iletimini kesmek için yapılır.",
            additionalInfo:
                "Çölyak pleksusa alternatif veya tamamlayıcı bir tekniktir.",
          ),
          ChronicPainManagementItem(
            title: "ÇÖLYAK PLEKSUS BLOĞU VE MALİGNİTE ANALJEZİSİ",
            description:
                "Üst abdominal kanser (örn: Pankreas) ağrılarında en güçlü ağrı kesme yöntemlerinden biridir.",
            subtitle:
                "Riskler arasında ciddi postural hipotansiyon ve visseral yaralanmalar sayılabilir",
            additionalInfo:
                "Kanser hastalarında kalıcı etki için alkol kullanılır.",
          ),
          ChronicPainManagementItem(
            title: "LUMBAL SEMPATİK BLOK VE VASKÜLER HASTALIKLAR",
            description:
                "Alt ekstremite damar tıkanıklıkları ve sempatik orijinli nöropatik ağrılarda uygulanır.",
            additionalInfo:
                "Ayak parmaklarındaki yaraların iyileşmesine dolaylı yardım eder.",
          ),
          ChronicPainManagementItem(
            title: "SUPERİOR HİPOGASTRİK PLEKSUS BLOĞU VE PELVİK AĞRI",
            description:
                "Uterus, prostat, mesane gibi pelvik organlardan kaynaklanan kanser ağrılarını dindirir.",
            additionalInfo: "L5-S1 seviyesinden giriş yapılır.",
          ),
          ChronicPainManagementItem(
            title: "GANGLİON İMPAR BLOĞU VE KOKSİGEAL ANALJEZİ",
            description:
                "Kuyruk sokumu (koksidini) ve perianal ağrılarda en uç sempatik düğümün uyuşturulmasıdır.",
            additionalInfo:
                "Transkoksigeal veya anokoksigeal ligaman üzerinden yapılır.",
          ),
        ],
      ),
      ChronicPainManagementCategory(
        categoryName: 'Epidural ve Spinal Yöntemler',
        items: [
          ChronicPainManagementItem(
            title: "EPİDURAL STEROİD ENJEKSİYONLARI VE RADİKÜLOPATİ",
            description:
                "Bel fıtığına bağlı sinir kökü ödemini ve inflamasyonu azaltmak için epidural boşluğa yapılan enjeksiyondur.",
            subtitle:
                "Ağrının başlangıcından sonraki ilk 2 haftada başarı oranı en yüksektir",
            additionalInfo:
                "Kaudal, transforaminal veya interlaminar yaklaşımlar tercih edilebilir.",
          ),
          ChronicPainManagementItem(
            title: "SELEKTİF SİNİR KÖKÜ BLOKAJI VE TANISAL ÖNEMİ",
            description:
                "Ağrının tam olarak hangi spinal sinirden kaynaklandığının belirlenmesidir.",
            additionalInfo: "Cerrahi karar öncesi çok değerli bir testtir.",
          ),
        ],
      ),
      ChronicPainManagementCategory(
        categoryName: 'Ablatif Yöntemler',
        items: [
          ChronicPainManagementItem(
            title: "RADYOFREKANS (RF) ABALSYON VE ISI İLE LEZYONLAMA",
            description:
                "Hedef sinirin ısıtılarak iletiminin kalıcı veya uzun süreli (6-12 ay) durdurulmasıdır.",
            subtitle:
                "Trigeminal rizotomi ve faset medial dal yakılması en yaygın kullanım alanlarıdır",
            additionalInfo:
                "Pulsed RF dokuya zarar vermeden modüle ederken, Termal RF lezyon yaratır.",
          ),
          ChronicPainManagementItem(
            title: "KRİYOANALJEZİ VE DONDURMA TEKNİĞİ",
            description:
                "Hızlı genişleyen dondurucu gaz (karbondioksit/azot protoksit) ile sinirin geçici dondurulmasıdır.",
            subtitle:
                "Torakotomi sonrası kalıcı ağrıları (posttorakotomi) önlemede kullanılır",
            additionalInfo:
                "Wallerian dejenerasyon yapar ancak aksonal kılıfı korur.",
          ),
          ChronicPainManagementItem(
            title: "KİMYASAL NÖROLİZ: ALKOL VE FENOL UYGULAMALARI",
            description:
                "Sinir dokusunun alkol (%100) veya fenol (kristalize) ile geri dönüşsüz olarak tahrip edilmesidir.",
            subtitle:
                "Genellikle yaşam süresi kısıtlı kanser hastalarında başvurulur",
            additionalInfo:
                "Çölyak ganglion için alkol, lumbal bölge için genellikle fenol seçilir.",
          ),
        ],
      ),
      ChronicPainManagementCategory(
        categoryName: 'Nöromodülasyon Teknikleri',
        items: [
          ChronicPainManagementItem(
            title: "TENS (TRANSKUTAN ELEKTRİKSEL SİNİR STİMÜLASYONU)",
            description:
                "Cilt üzerinden düşük akımlı elektriksel uyarılar verilerek ağrı kapısının kapatılması prensibidir.",
            additionalInfo: "Taşınabilir cihazlar ile evde de uygulanabilir.",
          ),
          ChronicPainManagementItem(
            title: "SPİNAL KORD STİMÜLASYONU (SCS) VE PİL YÖNETİMİ",
            description:
                "Epidural boşluğa yerleştirilen elektrotların akım vererek ağrı sinyalini 'karıncalanma' hissiyle perdelemesidir.",
            additionalInfo:
                "Refrakter nöropatik ağrılarda 'son çare' yöntemlerinden biridir.",
          ),
          ChronicPainManagementItem(
            title: "PERİFERİK SİNİR STİMÜLASYONU",
            description:
                "Spinal kord yerine doğrudan hasarlı olan spesifik periferik sinir üzerine elektrot yerleştirilmesidir.",
            additionalInfo:
                "Lokal sinir hasarlarına bağlı kronik ağrılarda etkilidir.",
          ),
          ChronicPainManagementItem(
            title: "DERİN BEYİN STİMÜLASYONU (DBS) VE REFRAKTER AĞRI",
            description:
                "Beyindeki talamik veya periakuaduktal gri cevher bölgelerine elektrot yerleştirilerek ağrının modüle edilmesidir.",
            additionalInfo:
                "İleri derecede dirençli nöropatik ve kanser ağrılarında çok nadir başvurulur.",
          ),
        ],
      ),
      ChronicPainManagementCategory(
        categoryName: 'Diğer Yöntemler',
        items: [
          ChronicPainManagementItem(
            title: "VERTEBRA GÜÇLENDİRME: VERTEBROPLASTİ VE KİFOPLASTİ",
            description:
                "Kırık olan vertebra içine tıbbi çimento enjekte edilerek stabilizasyon ve ağrı kontrolü sağlanmasıdır.",
            additionalInfo:
                "Osteoporoz veya metastaz kaynaklı çökme kırıklarında kullanılır.",
          ),
          ChronicPainManagementItem(
            title: "NÖROLİTİK TEKNİKLER VE DİFERANSİYEL BLOKAJ",
            description:
                "Düşük ve yüksek LA konsantrasyonları kullanılarak ağrı tipinin (sempatik vs somatik) ayrıştırılmasıdır.",
            additionalInfo: "Prognoz tayininde ve tedavi planında kıymetlidir.",
          ),
          ChronicPainManagementItem(
            title: "BOTULİNUM TOKSİNİ VE KRONİK AĞRI KULLANIMI",
            description:
                "Kas spazmı ve kronik migren profilaksisinde botulinum toksin enjeksiyonları uygulanır.",
            additionalInfo:
                "Asetilkolin salınımını bloke ederek gevşeme sağlar.",
          ),
        ],
      ),
      ChronicPainManagementCategory(
        categoryName: 'Özel Notlar',
        items: [
          ChronicPainManagementItem(
            title: "WHO (DSÖ) BASAMAKLI ANALJEZİ YAKLAŞIMI",
            description:
                "Ağrı şiddetine göre hafif (non-opioid), orta (zayıf opioid) ve şiddetli (güçlü opioid) basamakları takip edilir.",
            additionalInfo:
                "Adjuvan ilaçlar her basamakta tedaviye eklenebilir.",
          ),
          ChronicPainManagementItem(
            title: "OPİOİD YAN ETKİLERİ VE KONSTİPASYON YÖNETİMİ",
            description:
                "Opioid kullanımında tolerans gelişmeyen tek yan etki konstipasyondur (daima laksatifle gidilmelidir).",
            additionalInfo:
                "Bulantı, sedasyon ve solunum baskılanması diğer major risklerdir.",
          ),
          ChronicPainManagementItem(
            title: "KANSER AĞRISINDA MULTİMODAL ANALJEZİ STRATEJİLERİ",
            description:
                "Sadece ilaçla değil, bloklar ve nöromodülasyonla birleştirilen 'total ağrı' yönetimidir.",
            additionalInfo: "Hastaning yaşam sonu konforunu birincil hedeftir.",
          ),
        ],
      ),
    ];
  }
}
