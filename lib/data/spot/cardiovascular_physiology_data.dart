import 'package:flutter/material.dart';

class CardiovascularPhysiologyItem {
  final String title;
  final String description;
  final String? subtitle;
  final String? additionalInfo;

  CardiovascularPhysiologyItem({
    required this.title,
    required this.description,
    this.subtitle,
    this.additionalInfo,
  });
}

class CardiovascularPhysiologyCategory {
  final String categoryName;
  final List<CardiovascularPhysiologyItem> items;

  CardiovascularPhysiologyCategory({
    required this.categoryName,
    required this.items,
  });
}

class CardiovascularPhysiologyData {
  static List<CardiovascularPhysiologyCategory> getCardiovascularPhysiologyData(
    BuildContext context,
  ) {
    return [
      CardiovascularPhysiologyCategory(
        categoryName: 'Kardiyak Aksiyon Potansiyeli',
        items: [
          CardiovascularPhysiologyItem(
            title: "İSTİRAHAT POTANSİYELİ (-80/-90 MV)",
            description: "Kardiyak hücrelerinde istirahat halindeki membran potansiyeli -80 ile -90 mV arasındadır.",
            additionalInfo: "Bu potansiyel farkı Na-K ATPaz pompası tarafından aktif olarak korunur; hücre içindeki negatif yükün korunması uyarılabilirlik için temeldir.",
          ),
          CardiovascularPhysiologyItem(
            title: "FAZ 0 (HIZLI DEPOLARİZASYON)",
            description: "Hızlı sodyum (Na⁺) kanallarının açılmasıyla gerçekleşen ani bir elektriksel deşarj aşamasıdır.",
            additionalInfo: "Na⁺ iyonlarının hücre içine hızla girmesiyle membran potansiyeli negatiften pozitif değerlere doğru hızla yükselir.",
          ),
          CardiovascularPhysiologyItem(
            title: "FAZ 1 (SODYUM İNAKTİVASYONU)",
            description: "Hızlı sodyum kanallarının kapanması ve potasyumun geçici dışa çıkışı ile başlayan kısa bir repolarizasyon fazıdır.",
            additionalInfo: "Bu evrede aksiyon potansiyeli tepe noktasına ulaşır ve inaktivasyon kapıları kapanarak sodyum akımı durdurulur.",
          ),
          CardiovascularPhysiologyItem(
            title: "FAZ 2 (KALSİYUM GİRİŞİ VE PLATO DÖNEMİ)",
            description: "Kalsiyum (Ca²⁺) iyonlarının hücre içine girişiyle oluşan ve kasılmanın tetiklendiği plato aşamasıdır.",
            additionalInfo: "Yavaş kalsiyum kanalları üzerinden gerçekleşen bu giriş, potasyum çıkışı ile dengelenerek aksiyon potansiyelinin süresini uzatır ve kalbin tetanik kasılmasını engeller.",
          ),
          CardiovascularPhysiologyItem(
            title: "FAZ 3 (POTASYUM ÇIKIŞI VE REPOLARİZASYON)",
            description: "Hızlı potasyum (K⁺) çıkışı ile hücrenin tekrar negatif istirahat potansiyeline dönmesini sağlayan aşamadır.",
            additionalInfo: "Repolarizasyonun tamamlanmasıyla hücre tekrar uyarılabilir hale gelmek üzere hazırlanır; bu aşamada iyon dengesi yeniden düzenlenir.",
          ),
          CardiovascularPhysiologyItem(
            title: "FAZ 4 (İSTİRAHAT POTANSİYELİNE DÖNÜŞ)",
            description: "Hücrenin tekrar uyarılmayı beklediği kararlı istirahat potansiyeli aşamasıdır.",
            subtitle: "Hücrenin tekrar uyarılmaya dirençli olduğu mutlak refrakter dönem Faz IV'e kadar sürer",
            additionalInfo: "Na-K ATPaz pompası bu fazda iyonları (Na out, K in) yerli yerine koyarak bir sonraki aksiyon potansiyeli için hazır hale gelir.",
          ),
        ],
      ),
      CardiovascularPhysiologyCategory(
        categoryName: 'Kardiyak İletim Sistemi',
        items: [
          CardiovascularPhysiologyItem(
            title: "SA NOD (PRİMER PACEMAKER)",
            description: "Kalbin ana ritim odağı olup, intrinsik olarak dakikada 90-100 uyarı üretme kapasitesine sahiptir.",
            additionalInfo: "Sağ atriyumda yer alan bu yapı, normal fizyolojide baskın pacemaker olarak kalbin hızını belirleyen ana merkezdir.",
          ),
          CardiovascularPhysiologyItem(
            title: "AV NOD (İLETİ GECİKMESİ)",
            description: "İletiyi yaklaşık 0.11 saniye geciktirerek atriyumların boşalmasına ve ventriküllerin dolmasına zaman kazandırır.",
            additionalInfo: "İntrinsik uyarı hızı dakikada 40-60 arasındadır. Bu gecikme mekanizması kalp siklusunun mekanik verimliliği için hayati önemdedir.",
          ),
          CardiovascularPhysiologyItem(
            title: "HİS-PURKİNJE SİSTEMİ (EN HIZLI İLETİ)",
            description: "İletinin en hızlı yayıldığı bölge olup, ventriküllerin 0.03 saniye içinde eş zamanlı kasılmasını sağlar.",
            additionalInfo: "Bu hızlı yayılım, kalbin kanı fırlatırken senkronize bir şekilde çalışmasına (kontraksiyon senkronizasyonuna) imkan tanır.",
          ),
          CardiovascularPhysiologyItem(
            title: "ANESTEZİKLERİN İLETİ SİSTEMİ ÜZERİNE ETKİLERİ",
            description: "Potent inhalasyon ajanları SA nodu baskılarken, AV nodu orta derece, Purkinje liflerini ise karmaşık etkilerler.",
            subtitle: "Opioidler aksiyon potansiyeli (AP) süresini uzatır",
            additionalInfo: "Lokal anestezikler (LA) ise yüksek dozlarda Na⁺ kanallarını bloke ederek ileti hızını ciddi oranda yavaşlatabilirler.",
          ),
        ],
      ),
      CardiovascularPhysiologyCategory(
        categoryName: 'Kalbin İnnervasyonu',
        items: [
          CardiovascularPhysiologyItem(
            title: "PARASEMPATİK SİSTEM (M2 RESEPTÖRLER)",
            description: "Muskarinik tip 2 reseptörler üzerinden negatif kronotropi, dromotropi ve inotropi etkisi yaparlar.",
            additionalInfo: "Vagus siniri üzerinden gerçekleştirilen bu kontrol, kalp hızını ve kasılma gücünü baskılayarak kalbin iş yükünü azaltır.",
          ),
          CardiovascularPhysiologyItem(
            title: "SEMPATİK SİSTEM (BETA-1 RESEPTÖRLER)",
            description: "Beta-1 reseptörleri üzerinden pozitif kronotropi, dromotropi ve inotropi etkileri gösterirler.",
            additionalInfo: "Sempatik üst zincir üzerinden gelen uyarılar kalp hızını ve kasılma gücünü artırarak kardiyak debiyi yükseltirler.",
          ),
          CardiovascularPhysiologyItem(
            title: "İNNERVASYON DAĞILIMI VE NOD KONTROLÜ",
            description: "Sağ otonomik sinirler temel olarak SA nodu, sol taraf ise AV nodu kontrol etme eğilimindedir.",
            additionalInfo: "Sağ vagus/sempatik sistemi SA nod üzerindeki baskın hızı, sol vagus/sempatik sistemi ise AH (AV geçiş) gecikmesini belirler.",
          ),
        ],
      ),
      CardiovascularPhysiologyCategory(
        categoryName: 'Kalp Siklusu',
        items: [
          CardiovascularPhysiologyItem(
            title: "ATRİYUM KONTRAKSİYONU (ATRİYAL KİCK)",
            description: "Atriyumların sistolü, toplam ventrikül dolumuna yaklaşık %20-30 oranında katkı sağlar.",
            additionalInfo: "Atriyal fibrilasyon gibi durumlarda bu katkının kaybolması, kardiyak debide belirgin bir düşüşle sonuçlanabilir.",
          ),
          CardiovascularPhysiologyItem(
            title: "CVP DALGALARI (A, C, V DALGASI)",
            description: "Santral venöz basınçtaki 'a' dalgası atriyum sistolünü, 'c' dalgası ise ventrikül sistolünü yansıtır.",
            subtitle: "v dalgası ise atriyumun dolum aşamasını temsil eder",
            additionalInfo: "CVP trasesindeki bu mekanik işaretler, kalbin sağ tarafındaki hemodinamik olaylar hakkında doğrudan bilgi sağlar.",
          ),
        ],
      ),
      CardiovascularPhysiologyCategory(
        categoryName: 'Ventrikül Performansı',
        items: [
          CardiovascularPhysiologyItem(
            title: "TEMEL HEMODİNAMİK FORMÜLLER (CO VE CI)",
            description: "Kardiyak debi (CO), atım hacmi ile kalp hızının çarpımıdır; CO = SV × HR.",
            subtitle: "CI (Kardiyak İndeks), CO'nun vücut yüzey alanına oranıdır ve normalde 2.5–4.2 L/dk/m²'dir",
            additionalInfo: "Bu formüller dokulara yeterli kan sunulup sunulmadığını belirleyen en temel klinik parametrelerdir.",
          ),
          CardiovascularPhysiologyItem(
            title: "EJEKSİYON FRAKSİYONU (EF) VE MİKS VENÖZ",
            description: "EF, diyastol sonu hacmin ne kadarının atıldığını gösterir; EF = (EDV-ESV)/EDV (Normal %67±8).",
            additionalInfo: "Miks venöz satürasyon (SvO2) ise dokuların oksijen tüketimi ile sunumu arasındaki dengeyi yansıtan en hassas perfüzyon göstergesidir.",
          ),
        ],
      ),
      CardiovascularPhysiologyCategory(
        categoryName: 'Önyük (Preload)',
        items: [
          CardiovascularPhysiologyItem(
            title: "ÖNYÜK GÖSTERGELERİ (EDV)",
            description: "Ventrikül diyastol sonu hacmi (EDV), kalbin önyükü için en temel göstergedir.",
            additionalInfo: "Klinik olarak EDV arttıkça Frank-Starling kanununa göre kasılma gücü ve atım hacmi de artar.",
          ),
          CardiovascularPhysiologyItem(
            title: "FRANK-STARLING YASASI VE HACİM İLİŞKİSİ",
            description: "Kalbe gelen kan hacmi arttıkça liflerin gerilmesine bağlı olarak kardiyak debi (CO) artar.",
            subtitle: "Aşırı hacim yüklenmesi durumunda kalp bu artışı kompanse edemez, debi sabit kalır veya azalır",
            additionalInfo: "Bu mekanizma kalbin anlık venöz dönüş değişikliklerine uyum sağlamasını sağlayan içsel bir özelliktir.",
          ),
          CardiovascularPhysiologyItem(
            title: "KALP HIZININ DOLUM ÜZERİNDEKİ ETKİSİ",
            description: "Kalp hızının dakikada 120 atımı aşması, diyastol süresini kısalttığı için ventrikül dolumunu azaltır.",
            additionalInfo: "Kısalan dolum süresi, özellikle mitral darlığı veya koroner yetmezliği gibi durumlarda debiyi ciddi oranda düşürebilir.",
          ),
        ],
      ),
      CardiovascularPhysiologyCategory(
        categoryName: 'Ardyük (Afterload)',
        items: [
          CardiovascularPhysiologyItem(
            title: "DUVAR GERİLİMİ VE LAPLACE KANUNU",
            description: "Duvar gerilimi (P×R)/(2×H) formülü ile hesaplanan, ventrikülün kanı fırlatmak için yendiği basınçtır.",
            additionalInfo: "Ventrikül yarıçapı arttıkça veya duvar inceldikçe gereken kasılma gücü ve oksijen tüketimi de artar.",
          ),
          CardiovascularPhysiologyItem(
            title: "VASKÜLER DİRENÇ DEĞERLERİ (SVR VE PVR)",
            description: "Sistemik direnç (SVR) 900–1500, pulmoner direnç (PVR) ise 50–150 dyn·s·cm⁻⁵ arasındadır.",
            additionalInfo: "Bu direnç değerleri, kalbin her bir atımında kanı ileriye itmek için karşılaştığı empedansı belirler.",
          ),
        ],
      ),
      CardiovascularPhysiologyCategory(
        categoryName: 'Kontraktilite',
        items: [
          CardiovascularPhysiologyItem(
            title: "POZİTİF İNOTROPİK ETKİLER",
            description: "Kasılmayı artıran en güçlü pozitif faktör sempatik sistem uyarımıdır.",
            additionalInfo: "Eksojen katekolaminler, kalsiyum ve digitalis türevleri de kasılma gücünü artıran unsurlar arasındadır.",
          ),
          CardiovascularPhysiologyItem(
            title: "NEGATİF İNOTROPİK ETKİLER",
            description: "Anoksi, asidoz, iskemi ve karbondioksit birikimi kalbin kasılma gücünü saniyeler içinde düşürür.",
            additionalInfo: "Ayrıca kronik durumlardaki katekolamin tükenmesi de kontraktilite üzerinde negatif etki oluşturur.",
          ),
        ],
      ),
      CardiovascularPhysiologyCategory(
        categoryName: 'Sistemik Dolaşım',
        items: [
          CardiovascularPhysiologyItem(
            title: "BASINÇ HESAPLAMALARI (OAB VE NB)",
            description: "Ortalama arter basıncı (OAB) = Diyastolik Basınç + 1/3 Nabız Basıncı formülüyle bulunur.",
            subtitle: "Nabız basıncı atım hacmi ile doğru, arteriyel esneklik (kompliyans) ile ters orantılıdır",
            additionalInfo: "OAB, doku perfüzyonunu sağlayan temel sürücü güçtür ve anestezi altında dikkatle izlenmelidir.",
          ),
          CardiovascularPhysiologyItem(
            title: "ARTERİYOLLERİN DİRENÇ ÜZERİNDEKİ ROLÜ",
            description: "Dolaşım sisteminde en büyük kan basıncı düşüşünün yaşandığı bölge arteriyollerdir.",
            additionalInfo: "Bu küçük damarlar, vasküler direncin (SVR) ana belirleyicisi olarak kan akımının kontrolünde başrol oynarlar.",
          ),
        ],
      ),
      CardiovascularPhysiologyCategory(
        categoryName: 'Basınç Kontrol Mekanizmaları',
        items: [
          CardiovascularPhysiologyItem(
            title: "ERKEN DÖNEM (BAROREFLEKS)",
            description: "Saniyeler içinde devreye giren en hızlı basınç kontrol mekanizmasıdır.",
            subtitle: "Karotis sinüsü baroreseptörleri, aortik alana göre daha baskındır",
            additionalInfo: "Basınç değişikliklerini algılayarak otonom sinir sistemi üzerinden kalp hızı ve direnç ayarı yapar.",
          ),
          CardiovascularPhysiologyItem(
            title: "ORTA DÖNEM (RAA VE AVP)",
            description: "Dakikalar ila saatler içinde devreye giren Renin-Anjiyotensin ve Vazopressin sistemidir.",
            additionalInfo: "Damar daralması ve sıvı tutulumu üzerinden kan basıncını dengelemeye çalışır.",
          ),
          CardiovascularPhysiologyItem(
            title: "UZUN DÖNEM (RENAL MEKANİZMALAR)",
            description: "Günler ve haftalar boyunca böbrekler üzerinden sodyum ve su dengesini düzenleyen mekanizmadır.",
            additionalInfo: "Basınç natriürezi ve diürezi yoluyla kan hacmini ayarlayarak tansiyonu stabil tutar.",
          ),
        ],
      ),
      CardiovascularPhysiologyCategory(
        categoryName: 'Koroner Dolaşım',
        items: [
          CardiovascularPhysiologyItem(
            title: "KORONER ARTERLERİN BESLEME BÖLGELERİ",
            description: "RCA sağ kalp ve LV inferiorunu besler; LCA ise sol kalp, septum ve anterior bölgeleri besler.",
            additionalInfo: "RCA = Sağ atriyum, Sağ ventrikül, LV inferiyor wall; LCA = Sol atriyum, İnterventriküler septum, LV anterior–lateral wall.",
          ),
          CardiovascularPhysiologyItem(
            title: "KORONER PERFÜZYON BASINCI VE AKIM",
            description: "Koroner perfüzyon basıncı DBP – LVEDP farkıdır; normal kan akımı dakikada 250 mL'dir.",
            subtitle: "Kalbin oksijen tüketiminin %64'ü basınç işine harcanır",
            additionalInfo: "Sinüs venöz satürasyonu yaklaşık %30'dur; bu da miyokardın oksijeni en verimli (maksimum) kullanan organ olduğunu gösterir.",
          ),
        ],
      ),
      CardiovascularPhysiologyCategory(
        categoryName: 'Anesteziklerin Kardiyovasküler Etkileri',
        items: [
          CardiovascularPhysiologyItem(
            title: "VOLATİL AJANLARIN KORUYUCU ETKİLERİ",
            description: "ATP-duyarlı potasyum kanallarını açarak rejenerasyon ve reperfüzyon koruması sağlarlar.",
            additionalInfo: "Koroner vazodilatasyon ve miyokard oksijen (MVO2) ihtiyacını azaltarak kalbi riskli dönemlerde korurlar.",
          ),
          CardiovascularPhysiologyItem(
            title: "SEVOFLURAN VE KORONER ÇALMA",
            description: "Sevofluran'ın koroner çalma fenomenine yol açmadığı klinik olarak kanıtlanmıştır.",
            additionalInfo: "Bu özelliği ile iskemik kalp hastalarında inhalasyon anestezisi için güvenilir bir seçenek sunar.",
          ),
        ],
      ),
      CardiovascularPhysiologyCategory(
        categoryName: 'Kalp Yetmezliği',
        items: [
          CardiovascularPhysiologyItem(
            title: "EN SIK SEBEP (KORONER ARTER HASTALIĞI)",
            description: "Kalp yetmezliği vakalarının birincil ve en yaygın etiyolojik nedeni koroner arter hastalığıdır.",
            additionalInfo: "Miyokard perfüzyonunun bozulması, zamanla kasılma ve dolum kusurlarına yol açarak yetmezlik tablosunu oluşturur.",
          ),
          CardiovascularPhysiologyItem(
            title: "DİYASTOLİK DİSFONKSİYON NEDENLERİ",
            description: "Sıklıkla Hipertansiyon (HT), Koroner Arter Hastalığı (KAH) ve Hipertrofik Kardiyomiyopati sonrası gelişir.",
            additionalInfo: "Kalp kasının sertleşmesi veya dolumun zorlaşması ile karakterize bu durum, yetmezlik semptomlarının önemli bir kısmından sorumludur.",
          ),
          CardiovascularPhysiologyItem(
            title: "KOMPANSATUAR MEKANİZMALAR VE VENTRİKÜL",
            description: "Kalp debisi düştüğünde vücut önyükü artırır, sempatik tonusu yükseltir ve ventriküler hipertrofi geliştirir.",
            additionalInfo: "Kısa vadede debiyi koruyan bu yanıtlar, uzun vadede kalbin şekil değiştirmesine (remodeling) ve yetmezliğin ağırlaşmasına yol açabilir.",
          ),
        ],
      ),
    ];
  }
}
