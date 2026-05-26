import 'package:flutter/material.dart';

class NeurologicalPsychiatricAnesthesiaItem {
  final String title;
  final String description;
  final String? subtitle;
  final String? additionalInfo;

  NeurologicalPsychiatricAnesthesiaItem({
    required this.title,
    required this.description,
    this.subtitle,
    this.additionalInfo,
  });
}

class NeurologicalPsychiatricAnesthesiaCategory {
  final String categoryName;
  final List<NeurologicalPsychiatricAnesthesiaItem> items;

  NeurologicalPsychiatricAnesthesiaCategory({
    required this.categoryName,
    required this.items,
  });
}

class NeurologicalPsychiatricAnesthesiaData {
  static List<NeurologicalPsychiatricAnesthesiaCategory>
      getNeurologicalPsychiatricAnesthesiaData(BuildContext context) {
    return [
      NeurologicalPsychiatricAnesthesiaCategory(
        categoryName: 'Serebrovasküler Hastalık',
        items: [
          NeurologicalPsychiatricAnesthesiaItem(
            title: "TİA VE PERİOPERATİF İNME RİSKİ",
            description: "Geçici İskemik Atak (TİA) öyküsü olan hastalarda perioperatif dönemde inme riski anlamlı derecede yüksektir.",
            subtitle: "TİA öyküsü olan hastalar, Doppler Ultrasonografi ve kapsamlı medikal değerlendirme yapılmadan elektif cerrahiye alınmamalıdır",
            additionalInfo: "Bu ataklar, beynin iskemik eşiğinin düşük olduğunun ve damarsal yapının kırılganlığının en önemli klinik ön göstergesidir.",
          ),
          NeurologicalPsychiatricAnesthesiaItem(
            title: "KAROTİS STENOZU VE CERRAHİ ENDİKASYON",
            description: "Karotis arterinde %60'ın üzerinde daralma saptanan vakalarda endarterektomi veya stentleme cerrahi açıdan önceliklidir.",
            subtitle: "40 yaş üzerindeki her 100 hastadan 4'ünde servikal bölgede üfürüm duyulabilir",
            additionalInfo: "Asemptomatik üfürüm varlığı inme riskini her zaman artırmasa da, üfürümün yokluğu kesin bir güven sağlamaz; detaylı görüntüleme esastır.",
          ),
          NeurologicalPsychiatricAnesthesiaItem(
            title: "PERİOPERATİF İNME RİSK ARTIŞI FAKTÖRLERİ",
            description: "İleri yaş, bilinen KVS (Kalp-Damar Sistemi) hastalıkları ve geçirilmiş serebrovasküler olaylar temel risk faktörleridir.",
            subtitle: "Nabız basıncının 80 mmHg'nin üzerinde olması endotel hasarı ve vasküler risk artışını gösterir",
            additionalInfo: "Özellikle kardiyak cerrahiler ve büyük damar operasyonları inme riskinin en tepeye çıktığı girişimlerdir.",
          ),
          NeurologicalPsychiatricAnesthesiaItem(
            title: "SEREBRAL DÜZELME VE İYİLEŞME SÜRELERİ",
            description: "Beyin dokusundaki bölgesel kan akımı bozukluklarının düzelmesi yaklaşık 21 hafta (yaklaşık 5 ay) sürebilir.",
            subtitle: "Kan-Beyin Bariyeri (KBB) bütünlüğünün tekrar sağlanması için en az 4 hafta gereklidir",
            additionalInfo: "Bu süreler, geçirilmiş bir inme sonrası elektif operasyonların ne kadar ertelenmesi gerektiğine dair fizyolojik bir temel oluşturur.",
          ),
          NeurologicalPsychiatricAnesthesiaItem(
            title: "PREOPERATİF NÖROLOJİK DEĞERLENDİRME",
            description: "Hastanın inme tipi, etkilenen bölge ve mevcut nörolojik defisitlerin boyutu operasyon öncesi netleştirilmelidir.",
            subtitle: "Trombotik inmelerde hastaların yaşlı olması ve beraberinde böbrek/kalp sorunları taşıması sıktır",
            additionalInfo: "Hemorajik olmayan inmelerde hastaların genellikle uzun süreli varfarin veya antitrombosit tedavi altında oldukları unutulmamalıdır.",
          ),
          NeurologicalPsychiatricAnesthesiaItem(
            title: "İNTRAOPERATİF EMBOLİ VE PERFÜZYON YAKLAŞIMI",
            description: "Ameliyat sırasında gelişen akut embolilerde, odağın kaynağına (kalp, karotis vb.) yönelik acil strateji belirlenmelidir.",
            subtitle: "Tıkayıcı karotis hastalığı saptandığında karotis endarterektomisi veya stentleme seçeneği değerlendirilir",
            additionalInfo: "Anestezistin birincil amacı, otoregülasyon sınırları içinde yeterli serebral perfüzyon basıncını sağlamaktır.",
          ),
          NeurologicalPsychiatricAnesthesiaItem(
            title: "TROMBOTİK VE HEMORAJİK İNME SONRASI STRATEJİ",
            description: "Elektif cerrahi planında asıl hedef, iskemik alanın çevresindeki 'penumbra' (riskli doku) bölgesinin korunmasıdır.",
            subtitle: "Eğer kafa içi basıncı (İKB) yüksekse, dekompresyon cerrahisi planlamaya dahil edilebilir",
            additionalInfo: "Kan basıncı kontrolü ve serebral perfüzyonun hassas yönetimi için intraoperatif invaziv monitörizasyon şiddetle önerilir.",
          ),
        ],
      ),
      NeurologicalPsychiatricAnesthesiaCategory(
        categoryName: 'Nöbet Bozuklukları (Epilepsi)',
        items: [
          NeurologicalPsychiatricAnesthesiaItem(
            title: "EPİLEPSİ TANIMI VE KLİNİK SINIFLANDIRMA",
            description: "Epilepsi, beyindeki nöronların paroksismal (aniden) aşırı aktivitesi sonucu gelişen parsiyel veya jeneralize nöbetlerdir.",
            subtitle: "Erişkinlerde nöbetin altında yatan en sık neden yapısal beyin lezyonları veya metabolik bozukluklardır",
            additionalInfo: "Çocukluk çağı nöbetleri sıklıkla idiyopatik (nedeni belirsiz) olabilir ve yaşla birlikte düzelme eğilimi gösterebilir.",
          ),
          NeurologicalPsychiatricAnesthesiaItem(
            title: "GRAND MAL NÖBET VE HAYATİ RİSKLER",
            description: "Jeneralize tonik-klonik (Grand Mal) nöbetler; aspirasyon, hipoksi ve şiddetli kas hasarı nedeniyle en riskli gruptur.",
            additionalInfo: "Nöbet sırasında gelişebilecek şiddetli kasılmalar, hastada laktik asidoza ve miyoglobinüriye bağlı böbrek hasarına yol açabilir.",
          ),
          NeurologicalPsychiatricAnesthesiaItem(
            title: "NÖBET TETİKLEYİCİ ANESTEZİK AJANLAR",
            description: "Bazı anestezik ilaçlar ve metabolitleri, nöbet odaklarını uyararak atakları tetikleyebilir.",
            subtitle: "Düşük doz ketamin ve metoheksital nöbet odaklarını aktive edebilen riskli ajanlardır",
            additionalInfo: "Ayrıca atrakurium ve sisatrakuriumun metaboliti olan 'laudanozin' ile meperidin metabolitleri (normeperidin) yüksek dozlarda nöbet aktivitesine neden olabilir.",
          ),
          NeurologicalPsychiatricAnesthesiaItem(
            title: "KRONİK EPİLEPSİ TEDAVİSİNİN ANESTEZİ ETKİSİ",
            description: "Uzun süreli antiepileptik kullanımı, karaciğer enzim indüksiyonuna yol açarak anestezik ilaç gereksinimini artırır.",
            additionalInfo: "Bu hastalarda intravenöz anestezikler ve nöromüsküler blokerlerin (NMB) etki süreleri kısalır ve daha yüksek doz ihtiyaçları doğar.",
          ),
        ],
      ),
      NeurologicalPsychiatricAnesthesiaCategory(
        categoryName: 'Parkinson Hastalığı',
        items: [
          NeurologicalPsychiatricAnesthesiaItem(
            title: "PARKINSON KLİNİK BULGULARI VE PATOFİZYOLOJİ",
            description: "Genellikle 50–70 yaş aralığında başlayan Parkinson; dopamin kaybı ve GABA artışı ile karakterize dejeneratif bir hastalıktır.",
            subtitle: "Temel belirtiler: bradikinezi (yavaşlama), rijidite (sertlik), tremor (titreme) ve postural instabilite",
            additionalInfo: "Nigrostriatal yoldaki dopaminerjik nöron kaybı, hareket kontrolünün bozulmasına neden olur.",
          ),
          NeurologicalPsychiatricAnesthesiaItem(
            title: "FARMAKOLOJİK TEDAVİ VE İLAÇ GRUPLARI",
            description: "Tedavide ana hedef merkezi sinir sistemindeki dopamin seviyesini korumak veya agonistlerle desteklemektir.",
            subtitle: "Levodopa ve dopamin agonistleri tedavinin köşe taşıdır; Selejilin ve Rasajilin gibi MAO inhibitörleri de kullanılır",
            additionalInfo: "Antikolinerjik (Triheksifenidil, Benztropin) ve Amantadin gibi ajanlar da semptomların hafifletilmesine yardımcı olur.",
          ),
          NeurologicalPsychiatricAnesthesiaItem(
            title: "DOPAMİNERJİK TEDAVİ YAN ETKİLERİ",
            description: "Parkinson ilaçları sistemik dolaşımda bulantı, diskinezi (istemsiz hareket) ve şiddetli ortostatik hipotansiyona yol açabilir.",
            additionalInfo: "İlaçların etkisiyle ortaya çıkabilen ani uyuklama atakları ve halüsinasyonlar perioperatif yönetimi güçleştirebilir.",
          ),
          NeurologicalPsychiatricAnesthesiaItem(
            title: "ANESTEZİ YAKLAŞIMI VE LEVODOPA YÖNETİMİ",
            description: "Parkinson ilaçları, özellikle Levodopa, operasyon sabahı da dahil olmak üzere KESİNTİSİZ verilmelidir.",
            subtitle: "İlaçların ani kesilmesi şiddetli iskelet kası rijiditesine ve solunum sıkıntısına yol açabilir",
            additionalInfo: "Fenotiyazin grubu ilaçlar, butirofenonlar ve metoklopramid dopamin reseptörlerini bloke ederek Parkinson semptomlarını şiddetlendirir; kullanımından kaçınılmalıdır.",
          ),
          NeurologicalPsychiatricAnesthesiaItem(
            title: "DİFENHİDRAMİNİN PREMEDİKASYONDAKİ YERİ",
            description: "Difenhidramin, santral antikolinerjik etkileri sayesinde Parkinson tremorunu hafifletmek için premedikasyonda tercih edilebilir.",
            additionalInfo: "Hem sedasyon hem de tremor kontrolü sağlaması cerrahi öncesi hasta konforunu artırır.",
          ),
          NeurologicalPsychiatricAnesthesiaItem(
            title: "UZUN SÜRELİ LEVODOPA VE HEMODİNAMİK YANITLAR",
            description: "Kronik Levodopa kullanımı, anestezi indüksiyonu sırasında şiddetli bradikardi ve derin hipotansiyon yanıtlarına zemin hazırlar.",
            subtitle: "Hipotansiyon geliştiğinde fenilefrin gibi direkt etkili vazopressör ajanlarla müdahale edilmelidir",
            additionalInfo: "İndirekt etkili ajanlar (efedrin gibi) dopaminerjik sistemdeki dengesizlik nedeniyle beklenmedik yanıtlar verebilir.",
          ),
        ],
      ),
      NeurologicalPsychiatricAnesthesiaCategory(
        categoryName: 'Alzheimer Hastalığı',
        items: [
          NeurologicalPsychiatricAnesthesiaItem(
            title: "AD PREVALANSI VE YAŞ İLİŞKİSİ",
            description: "Demansın en sık nedeni olan Alzheimer hastalığı, 80 yaş üzerindeki popülasyonda %20 gibi yüksek bir oranda görülür.",
            additionalInfo: "Yaşlı cerrahi popülasyonun artmasıyla birlikte anestezistlerin Alzheimer yönetimi konusundaki rolü kritikleşmiştir.",
          ),
          NeurologicalPsychiatricAnesthesiaItem(
            title: "ALZHEIMER KLİNİK SEYRİ VE PATOLOJİSİ",
            description: "Hafıza kaybıyla başlayan süreç; afazi (konuşma bozukluğu) ve apraksi (beceri kaybı) ile ilerler.",
            subtitle: "Patolojide beta-amiloid birikimi ve tau proteini kaynaklı nörofibriler yumaklar karakteristiktir",
            additionalInfo: "Nöronal kayıp ve asetilkolin düzeylerindeki azalma kognitif fonksiyonların çöküşünden sorumludur.",
          ),
          NeurologicalPsychiatricAnesthesiaItem(
            title: "PREOPERATİF DEĞERLENDİRME ZORLUKLARI",
            description: "Hastadaki dezoryantasyon ve kooperasyon güçlüğü nedeniyle operasyon öncesi anamnez ve fizik muayene oldukça zordur.",
            additionalInfo: "Hasta yakınlarından detaylı bilgi alınmalı ve hastanın bazal kognitif düzeyi net bir şekilde belgelenmelidir.",
          ),
          NeurologicalPsychiatricAnesthesiaItem(
            title: "POSTOPERATİF KOGNİTİF FONKSİYONLAR VE DELİRYUM",
            description: "Ameliyat sonrası yeni kognitif bozuklukların ve deliryumun gelişmesi Alzheimer hastalarında çok sıktır.",
            subtitle: "Genellikle premedikasyon verilmez; verilecekse santral etkili antikolinerjiklerden (Atropin/Skopolamin) kaçınılmalıdır",
            additionalInfo: "Postoperatif deliryum 1–3 gün sürebilir ve hastanın iyileşme sürecini, hastanede kalış süresini olumsuz etkiler.",
          ),
        ],
      ),
      NeurologicalPsychiatricAnesthesiaCategory(
        categoryName: 'Multipl Skleroz (MS)',
        items: [
          NeurologicalPsychiatricAnesthesiaItem(
            title: "MS GENEL ÖZELLİKLERİ VE DEMOGRAFİ",
            description: "Tipik olarak 20–40 yaş arası kadınlarda görülen, merkezi sinir sistemini tutan ilerleyici bir demiyelinizan hastalıktır.",
            subtitle: "Klinik bulgular: duyu kayıpları, görsel bozukluklar ve progresif motor güçsüzlükler",
            additionalInfo: "Hastalık genellikle remisyon ve relaps (atak) dönemleriyle seyreder; viral enfeksiyonlar tetikleyici olabilir.",
          ),
          NeurologicalPsychiatricAnesthesiaItem(
            title: "ATAK DÖNEMİ TEDAVİ VE SPASTİSİTE KONTROLÜ",
            description: "Akut ataklar yüksek doz steroidlerle baskılanırken, spastisite kontrolü için diazepam veya baklofen kullanılır.",
            additionalInfo: "İlaç yan etkileri (özellikle steroidlerin metabolik etkileri) cerrahi öncesi değerlendirilmelidir.",
          ),
          NeurologicalPsychiatricAnesthesiaItem(
            title: "MS HASTALARINDA CERRAHİ ZAMANLAMASI",
            description: "Hastalığın nüks (atak) evresinde olduğu dönemlerde, acil durumlar dışında elektif cerrahi girişimler yapılmamalıdır.",
            additionalInfo: "Operasyon ve anestezi stresi hastayı remisyondan çıkarıp yeni bir atağa sokabilir.",
          ),
          NeurologicalPsychiatricAnesthesiaItem(
            title: "ANESTEZİK YAKLAŞIM VE ALEVLENME RİSKLERİ",
            description: "Spinal anestezi, ilaçların demiyelinizan bölgelerle doğrudan etkileşimi nedeniyle MS alevlenme riskini en çok artıran yöntemdir.",
            subtitle: "Süksinilkolin (Sch) kullanımı, denervasyon nedeniyle tehlikeli hiperkalemi riski yarattığı için kontrendikedir",
            additionalInfo: "Vücut sıcaklığındaki minimal artışlar bile (Uhthoff fenomeni benzeri) MS semptomlarını tetikleyebileceği için normotermi korunmalıdır.",
          ),
          NeurologicalPsychiatricAnesthesiaItem(
            title: "EPİDURAL ANESTEZİ GÜVENLİĞİ",
            description: "MS hastalarında epidural anestezi, spinale göre daha güvenli kabul edilir ve yaygın olarak uygulanmaktadır.",
            additionalInfo: "Lokal anestezik dozları ve konsantrasyonları en düşük etkin seviyede tutulmalıdır.",
          ),
        ],
      ),
      NeurologicalPsychiatricAnesthesiaCategory(
        categoryName: 'ALS ve Guillain–Barré Sendromu (GBS)',
        items: [
          NeurologicalPsychiatricAnesthesiaItem(
            title: "AMYOTROFİK LATERAL SKLEROZ (ALS) ÖZELLİKLERİ",
            description: "Genellikle 50–60 yaşlarında başlayan, 2–3 yıl içinde bulber ve iskelet kaslarını felç eden ilerleyici bir hastalıktır.",
            subtitle: "Süksinilkolin kullanımı şiddetli potasyum salınımı riski nedeniyle KESİNLİKLE kontrendikedir",
            additionalInfo: "Postoperatif dönemde solunum kaslarındaki güçsüzlük nedeniyle mekanik ventilasyondan ayrılma (weaning) çok zor olabilir.",
          ),
          NeurologicalPsychiatricAnesthesiaItem(
            title: "GUILLAIN–BARRE SENDROMU (GBS) KLİNİĞİ VE SEYRİ",
            description: "Genellikle aşağıdan yukarıya doğru ilerleyen simetrik paralizi, arefleksi ve parestezi ile karakterize akut bir polinöropatidir.",
            subtitle: "Akut inflamatuvar demiyelinizan polinöropati olarak da adlandırılan bu tabloda asendan felç tipiktir",
            additionalInfo: "Hastaların %25'inde solunum kasları tutularak yoğun bakım desteği gerekebilir.",
          ),
          NeurologicalPsychiatricAnesthesiaItem(
            title: "GBS ETİYOLOJİSİ VE OTONOMİK İNSTABİLİTE",
            description: "GBS, sıklıkla geçirilmiş bir viral enfeksiyon veya lenfoma sonrası gelişen immünolojik bir yanıttır.",
            subtitle: "Otonomik sinir sistemi etkilendiği için hipo/hipertansif yanıtlar çok abartılı ve hayatı tehdit edici olabilir",
            additionalInfo: "Sch kullanımı GBS'de de kontrendikedir. Nöroaksiyel bloklar 'ikili hasar' (double crush) teorisi nedeniyle çok dikkatli ve kâr-zarar hesabı yapılarak uygulanmalıdır.",
          ),
        ],
      ),
      NeurologicalPsychiatricAnesthesiaCategory(
        categoryName: 'Otonomik Disfonksiyon (Shy-Drager vb.)',
        items: [
          NeurologicalPsychiatricAnesthesiaItem(
            title: "OTONOMİK DİSFONKSİYON KLİNİK BULGULARI",
            description: "Ortostatik hipotansiyon, gastrointestinal/mesane sorunları ve terleyememe (anhidrozis) en tipik bulgulardır.",
            additionalInfo: "Vücudun dış etkenlere karşı otonomik denge kurma yeteneği kaybolmuştur.",
          ),
          NeurologicalPsychiatricAnesthesiaItem(
            title: "PERİOPERATİF HİPOTANSİYON VE HİPOVOLEMİ RİSKİ",
            description: "Bu hastalarda indüksiyon ve kan kaybı sırasında gelişen hipotansiyon yanıtı, kompanse edilemediği için çok ciddidir.",
            subtitle: "Hastalar genellikle kronik olarak hipovolemik (susuz) bir durumdadır",
            additionalInfo: "Küçük dozlardaki anesteziklerin bile kalp hızında refleks artış yapmadan tansiyonu fırlatabileceği unutulmamalıdır.",
          ),
          NeurologicalPsychiatricAnesthesiaItem(
            title: "MONİTÖRİZASYON VE VAZOPRESSÖR SEÇİMİ",
            description: "Tansiyonun anlık izlenmesi için intraarteriyel kan basıncı monitörizasyonu şarttır.",
            subtitle: "Hipotansiyon tedavisinde fenilefrin gibi direkt etkili vazopressör ajanlar tercih edilmelidir",
            additionalInfo: "Anhidrozis olan vakalarda ısı kontrol mekanizması bozuktur; intraoperatif hiperpreksi (aşırı ısınma) riskine karşı dikkatli olunmalıdır.",
          ),
        ],
      ),
      NeurologicalPsychiatricAnesthesiaCategory(
        categoryName: 'Siringomiyeli',
        items: [
          NeurologicalPsychiatricAnesthesiaItem(
            title: "SİRİNGOMİYELİ TANIMI VE EŞLİK EDEN PATOLOJİLER",
            description: "Spinal kord içinde kavitasyon (boşluk) oluşumuyla giden bir hastalıktır; sıklıkla Arnold–Chiari malformasyonuyla birlikte görülür.",
            additionalInfo: "Karakteristik olarak ağrı ve ısı duyusunun kaybı ile motor güçsüzlük izlenir.",
          ),
          NeurologicalPsychiatricAnesthesiaItem(
            title: "SOLUNUMSAL DEĞERLENDİRME VE KOMPLİKASYONLAR",
            description: "Siringomiyelili hastalarda bulber tutulum ve göğüs duvarı deformitesi nedeniyle pulmoner riskler araştırılmalıdır.",
            additionalInfo: "Operasyon sonrası akciğer enfeksiyonları ve solunum yetmezliği risk altındaki en önemli tablodur.",
          ),
          NeurologicalPsychiatricAnesthesiaItem(
            title: "NÖROAKSİYEL BLOK VE KİB ETKİLEŞİMİ",
            description: "Kavitasyonun beyin sapı ile ilişkisi veya yüksek kafa içi basıncı (İKB) varlığında nöroaksiyel bloklar kontrendikedir.",
            subtitle: "Ancak seçilmiş olgularda epidural doğum analjezisi başarıyla uygulanmıştır",
            additionalInfo: "Basınç değişiklikleri beyin sapı herniasyonunu tetikleyebilir; kraniyo-spinal basınç dengesi korunmalıdır.",
          ),
        ],
      ),
      NeurologicalPsychiatricAnesthesiaCategory(
        categoryName: 'Spinal Kord Hasarı',
        items: [
          NeurologicalPsychiatricAnesthesiaItem(
            title: "KESİ SEVİYESİ VE SOLUNUM DESTEĞİ İHTİYACY",
            description: "C3–5 cervical vertebra seviyesinin üzerindeki hasarlarda diyafram paralizisi nedeniyle mutlaka ömür boyu solunum desteği gerekir.",
            additionalInfo: "N. Frenikus hasarı solunumun efor kabiliyetini tamamen ortadan kaldırır.",
          ),
          NeurologicalPsychiatricAnesthesiaItem(
            title: "PARALİZİ SEVİYE SINIFLANDIRMASI (C5-6, T12-L1)",
            description: "T1 seviyesinin üzerindeki kesilerde kuadripleji, L4 üzerindeki kesilerde ise parapleji gelişir.",
            subtitle: "Spinal hasarların en sık görüldüğü kritik noktalar C5–6 ve T12–L1 vertebra bölgeleridir",
            additionalInfo: "Hasar seviyesi hem duyusal hem de motor olarak anestezistin planını belirleyen en temel veridir.",
          ),
          NeurologicalPsychiatricAnesthesiaItem(
            title: "SPİNAL ŞOK EVRESİ VE REFLEKS DEĞİŞİMLERİ",
            description: "Akut kesi sonrası ilk 1–3 hafta içinde 'spinal şok' evresi izlenir (flask paralizi ve tüm reflekslerin kaybı).",
            subtitle: "Haftalar sonra refleksler geri geldikçe kas spazmları ve aşırı sempatik aktivite epizotları başlar",
            additionalInfo: "Bu süreçte hastanın otonomik dengesi son derece kararsızdır.",
          ),
          NeurologicalPsychiatricAnesthesiaItem(
            title: "AKUT TRANSEKSİYON VE STEROİD TEDAVİSİ",
            description: "Hasarın ilk 24 saati içinde uygulanan yüksek doz steroid tedavisi, nörolojik seyri olumlu etkileyen tek kanıtlı müdahaledir.",
            subtitle: "İlk 24 saat içinde Süksinilkolin (Sch) kullanılabilir; ancak bu süreden sonra hiperkalemi riski nedeniyle YASAKTIR",
            additionalInfo: "Vasküler tonusun kaybolması nedeniyle invaziv kan basıncı takibi akut dönemde şarttır.",
          ),
          NeurologicalPsychiatricAnesthesiaItem(
            title: "KRONİK TRANSEKSİYON VE OTONOMİK HİPERREFLEKSİ",
            description: "Özellikle T6 seviyesinin üzerindeki kronik hasarlarda, ağrılı uyaranlarla tetiklenen kontrolsüz sempatik deşarjlar (hiperrefleksi) gelişir.",
            subtitle: "Genel veya derin rejyonal anestezi bu aşırı hiperrefleksi yanıtlarını önleyebilir",
            additionalInfo: "Hiperrefleksi sırasında gelişen ani tansiyon fırlamalarını kontrol etmek için direkt etkili vazodilatörler (Nitrogliserin vb.) hazır tutulmalıdır.",
          ),
          NeurologicalPsychiatricAnesthesiaItem(
            title: "T1 ÜZERİ KESİLERDE HİPOTERMİ TAKİBİ",
            description: "T1 seviyesinin üzerindeki hasarlarda termoregülasyon (vücut ısısı kontrolü) bozulur; hipotermi riski çok yüksektir.",
            additionalInfo: "Anestezi sırasında hastanın vücut sıcaklığı en az bir odaktan sürekli olarak monitorize edilmelidir.",
          ),
        ],
      ),
      NeurologicalPsychiatricAnesthesiaCategory(
        categoryName: 'Depresyon ve Psikiyatrik İlaçlar',
        items: [
          NeurologicalPsychiatricAnesthesiaItem(
            title: "TRİSİKLİK ANTİDEPRESANLAR VE GERİ ALINIM BLOKAJI",
            description: "TSA'lar sinaptik aralıktaki katekolaminlerin (özellikle NE) ve serotoninin geri alınımını bloke ederek depoları dolu tutar.",
            subtitle: "Cerrahi öncesinde depresyon tedavisine KESİNTİSİZ devam edilmelidir",
            additionalInfo: "Kullanılan ilaçlara bağlı olarak anestezik madde ihtiyacı artabilir ve operasyon sırasında daha derin anestezi gerekebilir.",
          ),
          NeurologicalPsychiatricAnesthesiaItem(
            title: "TRİSİKLİKLERDE VAZOPRESSÖR YANITI HASSASİYETİ",
            description: "TSA kullanan hastalarda indirekt etkili vazopressörlere ve sempatik stimülasyona karşı abartılı ve kontrolsüz bir yanıt gelişebilir.",
            additionalInfo: "Endojen NE depoları dolu olduğu için verilen her uyaran şiddetli tansiyon fırlamasına yol açabilir.",
          ),
          NeurologicalPsychiatricAnesthesiaItem(
            title: "ANTİDEPRESAN KULLANIMINDA KAÇINILMASI GEREKENLER",
            description: "Panküronyum, ketamin, meperidin ve epinefrin içeren lokal anestzikler trisiklik antidepresanlarla tehlikeli etkileşimlere girer.",
            additionalInfo: "Özellikle aritmileri tetikleme riski bu kombinasyonlarda en üst düzeydedir.",
          ),
          NeurologicalPsychiatricAnesthesiaItem(
            title: "MAO İNHİBİTÖRLERİ VE SUBTİP FARKLARI",
            description: "MAO-A daha çok NE ve Serotonin yıkımından sorumluyken; MAO-B dopamin yıkımını kontrol eder.",
            subtitle: "Psikiyatride MAO-A, Parkinson'da ise MAO-B inhibitörleri (Selejilin) kullanılır",
            additionalInfo: "Eskiden ameliyattan 2 hafta önce kesilmesi kuraldı, ancak güncel anesteziklerle bu şart ortadan kalmıştır.",
          ),
          NeurologicalPsychiatricAnesthesiaItem(
            title: "MAOİ VE MEPERİDİN ETKİLEŞİMİ (HİPERTERMİ/KOMA)",
            description: "MAO inhibitörü alan bir hastada meperidin kullanımı, serotonerjik fırtınaya yol açarak ölümcül sonuçlar doğurabilir.",
            subtitle: "Bu etkileşim; şiddetli hipertermi, nöbet, koma ve otonomik çöküş ile karakterizedir",
            additionalInfo: "Hipotansiyon müdahalesinde efedrin (indirekt) yerine mutlaka direkt etkili vazopressörler kullanılmalıdır.",
          ),
          NeurologicalPsychiatricAnesthesiaItem(
            title: "SSRI GRUBU VE SEROTONİN SENDROMU RİSKİ",
            description: "SSRI'lar antikolinerjik yan etkileri en az olan modern antidepresanlardır ancak Serotonin Sendromu riski taşırlar.",
            subtitle: "Ajitasyon, hipertansiyon, hipertermi, tremor ve metabolik asidoz tablosu sendromun habercisidir",
            additionalInfo: "Özellikle MAO inhibitörleri veya triptanlarla kombine edildiklerinde risk dramatik olarak artar.",
          ),
        ],
      ),
      NeurologicalPsychiatricAnesthesiaCategory(
        categoryName: 'Bipolar Bozukluk',
        items: [
          NeurologicalPsychiatricAnesthesiaItem(
            title: "LİTYUM TERAPÖTİK ARALIĞI VE TAKİBİ",
            description: "Lityumun güvenli kan konsantrasyon aralığı 0.8–1 mEq/L gibi çok dar bir penceredir.",
            additionalInfo: "Operasyon öncesi son lityum düzeyi mutlaka laboratuvar olarak doğrulanmalıdır.",
          ),
          NeurologicalPsychiatricAnesthesiaItem(
            title: "LİTYUM KULLANIMININ YAN ETKİ PROFİLİ",
            description: "Lityum; EKG'de T dalga değişiklikleri, Diabetes İnsipitus (DI) ve uzun süreli kullanımda hipotiroidiye neden olabilir.",
            subtitle: "Toksisite belirtileri: konfüzyon, şiddetli tremor, AV blok, hipotansiyon ve jeneralize nöbetlerdir",
            additionalInfo: "Yetersiz hidrasyon ve lityum doz aşımı cerrahi sırasında hayatı tehdit edici krizlere yol açabilir.",
          ),
          NeurologicalPsychiatricAnesthesiaItem(
            title: "LİTYUMUN ANESTEZİK AJANLARLA ETKİLEŞİMİ",
            description: "Lityum kullanan hastalarda volatillerin MAC değeri düşer ve nöromüsküler blokerlerin (NMB) etki süreleri belirgin şekilde uzar.",
            subtitle: "Düşük sodyum (hiponatremi) lityumun böbrekten atılımını azaltarak toksisite riskini artırır",
            additionalInfo: "Sıvı tedavisinde sodyum dengesinin korunması lityum toksisitesinden korunmada birincil önlemdir.",
          ),
        ],
      ),
      NeurologicalPsychiatricAnesthesiaCategory(
        categoryName: 'Şizofreni',
        items: [
          NeurologicalPsychiatricAnesthesiaItem(
            title: "ANTİPSİKOTİKLER VE EKSTRAPİRAMİDAL YAN ETKİLER",
            description: "Eski kuşak antipsikotikler güçlü D2 antagonizması yaparak hareket kontrolünü bozan yan etkilere yol açarlar.",
            subtitle: "Ortostatik hipotansiyon, akut distoni ve uzun süreli kullanımda tardif diskinezi sıktır",
            additionalInfo: "Bu semptomlar perioperatif dünümsel (pozisyonel) yönetimde zorluk çıkarabilir.",
          ),
          NeurologicalPsychiatricAnesthesiaItem(
            title: "KLOZAPİN VE GRANÜLOSİTOPENİ RİSKİ",
            description: "Klozapin tedavisi altındaki hastalarda ciddi bağışıklık baskılanması (granülositopeni) riski mevcuttur.",
            subtitle: "Psikotik dengeyi korumak için tedaviye ameliyat sürecinde de devam edilmelidir",
            additionalInfo: "Operasyon öncesi tam kan sayımı (özellikle beyaz küre dağılımı) mutlaka kontrol edilmelidir.",
          ),
        ],
      ),
      NeurologicalPsychiatricAnesthesiaCategory(
        categoryName: 'Nöroleptik Malign Sendrom (NMS)',
        items: [
          NeurologicalPsychiatricAnesthesiaItem(
            title: "NMS TANIMI VE TETİKLEYİCİ FAKTÖRLER",
            description: "Antipsikotik ilaç kullanımından sonra saatler veya haftalar içinde gelişebilen, hayati tehlike yaratan bir reaksiyondur.",
            subtitle: "Meperidin ve metoklopramid gibi ilaçlar NMS tablosunu tetikleyebilir veya şiddetlendirebilir",
            additionalInfo: "Farmakolojik olarak dopaminerjik sistemin aniden bloke edilmesiyle ilişkili olduğu düşünülmektedir.",
          ),
          NeurologicalPsychiatricAnesthesiaItem(
            title: "NMS KLİNİK TABLOSU VE CK YÜÜKSEKLİĞİ",
            description: "Ciddi kas rijiditesi, hipertermi, otonom instabilite ve bilinç bulanıklığı ile karakterizedir.",
            subtitle: "Laboratuvarda CK (Kreatin Kinaz) değerlerinde dramatik yükselme ve rabdomiyoliz izlenir",
            additionalInfo: "Malign hipertermi ile klinik olarak karışabilir ancak tetikleyici ilaçlar farklıdır.",
          ),
          NeurologicalPsychiatricAnesthesiaItem(
            title: "NMS MORTALİTESİ VE SPESİFİK TEDAVİSİ",
            description: "Nöroleptik Malign Sendromun mortalite oranı zamanında müdahale edilmezse %30–40 civarındadır.",
            subtitle: "Tedavisinde kas gevşemesi için Dantrolen ve dopaminerjik destek için Bromokriptin kullanılır",
            additionalInfo: "Hastaların agresif soğutulması ve hidrasyonu böbrek hasarını önlemek için şarttır.",
          ),
        ],
      ),
      NeurologicalPsychiatricAnesthesiaCategory(
        categoryName: 'Kritik Sayılar (Hızlı Hatırlatma)',
        items: [
          NeurologicalPsychiatricAnesthesiaItem(
            title: "KAROTİS VE NABIZ BASINCI KRİTERLERİ",
            description: "Karotis stenozu >%60 ise cerrahi; Nabız basıncı >80 mmHg ise endotel hasar riski yüksektir.",
            additionalInfo: "Bu sınırlar vasküler riskin perioperatif dönemdeki ana belirleyicileridir.",
          ),
          NeurologicalPsychiatricAnesthesiaItem(
            title: "RECOVERY (DÜZELME) SÜREÇLERİ",
            description: "Bölgesel kan akımı düzelmesi: 21 hafta; Kan-Beyin Bariyeri düzelmesi: ≥4 hafta.",
            additionalInfo: "İnme sonrası bekleme süreleri bu fizyolojik iyileşme hızına göre ayarlanır.",
          ),
          NeurologicalPsychiatricAnesthesiaItem(
            title: "HASTALIK VE YAŞ EPİDEMİYOLOJİSİ",
            description: "Parkinson 50–70 yaş; Alzheimer 80 yaş sonrası %20 sıklık; MS ise 20–40 yaş arası kadınlarda sıktır.",
            additionalInfo: "Demografik veriler tanı ayırıcı tanısında ilk ipucunu verir.",
          ),
          NeurologicalPsychiatricAnesthesiaItem(
            title: "SCH KONTRENDİKASYON LİSTESİ",
            description: "Multipl Skleroz (MS), ALS ve Guillain-Barré (GBS) hastalarında Süksinilkolin KESİNLİKLE kontrendikedir.",
            additionalInfo: "Denervasyon sonrası gelişen reseptör artışı şiddetli hiperkalemi ve arrest riski yaratır.",
          ),
          NeurologicalPsychiatricAnesthesiaItem(
            title: "PSİKİYATRİK İLAÇ TERAPÖTİK SINIRLARI",
            description: "Lityum için güvenli aralık 0.8–1 mEq/L düzeyindedir.",
            additionalInfo: "Bu sınırın altı etkisiz, üstü ise hızla toksik tablolar yaratır.",
          ),
          NeurologicalPsychiatricAnesthesiaItem(
            title: "NMS MORTALİTE ORANI",
            description: "Nöroleptik Malign Sendromda ölüm riski yaklaşık %30–40 düzeyindedir.",
            additionalInfo: "Erken tanı ve Dantrolen tedavisi bu oranı düşürmede yardımcıdır.",
          ),
        ],
      ),
    ];
  }
}
