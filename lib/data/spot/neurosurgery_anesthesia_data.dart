import 'package:flutter/material.dart';

class NeurosurgeryAnesthesiaItem {
  final String title;
  final String description;
  final String? subtitle;
  final String? additionalInfo;

  NeurosurgeryAnesthesiaItem({
    required this.title,
    required this.description,
    this.subtitle,
    this.additionalInfo,
  });
}

class NeurosurgeryAnesthesiaCategory {
  final String categoryName;
  final List<NeurosurgeryAnesthesiaItem> items;

  NeurosurgeryAnesthesiaCategory({
    required this.categoryName,
    required this.items,
  });
}

class NeurosurgeryAnesthesiaData {
  static List<NeurosurgeryAnesthesiaCategory> getNeurosurgeryAnesthesiaData(
      BuildContext context) {
    return [
      NeurosurgeryAnesthesiaCategory(
        categoryName: 'Kafa İçi Basınç Artışı (KİBAS)',
        items: [
          NeurosurgeryAnesthesiaItem(
            title: "KİB NORMAL VE PATOLOJİK DEĞERLERİ",
            description: "Kafa içi basıncının (KİB) 15 mmHg'nin üzerinde olması patolojik, 30 mmHg'nin üzerine çıkması ise hayatı tehdit edici kabul edilir.",
            subtitle: "KİB > 30 mmHg olduğunda serebral kan akımı (SKA) düşer, beyin ödemi artar ve ölümcül bir kısır döngü başlar",
            additionalInfo: "Yüksek KİB, serebral perfüzyon basıncını (SPB) düşürerek beynin iskemik kalmasına neden olur. Bu durum acil müdahale gerektiren bir cerrahi tablodur.",
          ),
          NeurosurgeryAnesthesiaItem(
            title: "CUSHING TRİADI (HT + BRADİKARDİ + SOLUNUM)",
            description: "Şiddetli kafa içi basınç artışına yanıt olarak gelişen klasik klinik tablo; hipertansiyon, bradikardi ve düzensiz solunumu içerir.",
            additionalInfo: "Bu triadı görmek, beyin sapı herniasyonunun (fıtıklaşmasının) başlamış olabileceğini gösteren çok geç ve kritik bir bulgudur.",
          ),
          NeurosurgeryAnesthesiaItem(
            title: "BOS HACMİ VE GÜNLÜK ÜRETİM HIZI",
            description: "Beyin omurilik sıvısı (BOS) toplam hacmi 150 mL iken, günlük üretim miktarı yaklaşık 500 mL'dir.",
            additionalInfo: "Üretim ve emilim arasındaki dengesizlik (örneğin kitle basısı) hızla KİB artışına ve hidrosefaliye yol açabilir.",
          ),
          NeurosurgeryAnesthesiaItem(
            title: "PACO2 DÜZEYİ VE KİB YÖNETİMİ",
            description: "Arteriyel karbondioksit basıncını (PaCO2) 30–33 mmHg seviyesine düşürmek (hafif hiperventilasyon) KİB'i hızla düşürür.",
            additionalInfo: "Ancak fokal beyin iskemisi olan hastalarda vazokonstriksiyon riski nedeniyle aşırı hipokapniden (shunting) kaçınılmalıdır.",
          ),
          NeurosurgeryAnesthesiaItem(
            title: "MANNİTOL KULLANIMI VE DOZAJ",
            description: "Ozmotik bir diüretik olan mannitol, beyin parankimindeki suyu çekerek kafa içi hacmi ve basıncı azaltır.",
            subtitle: "Standart doz 0.25–0.5 g/kg IV bolus şeklindedir",
            additionalInfo: "Kullanım sırasında renal rezerv ve kalp yetmezliği riskleri yakından takip edilmelidir; elektrolit dengesizliği yapabilir.",
          ),
          NeurosurgeryAnesthesiaItem(
            title: "FUROSEMİD (LOOP DİÜRETİK) ETKİSİ",
            description: "Mannitolün etkisini güçlendirmek veya mannitolün kontrendike olduğu durumlarda BOS üretimini azaltmak için kullanılır.",
            additionalInfo: "Etkisi genellikle uygulamadan 30 dakika sonra başlar ve sistemik sıvı yükünü azaltarak KİB yönetimine katkı sağlar.",
          ),
          NeurosurgeryAnesthesiaItem(
            title: "STEROİD TEDAVİSİ VE ÖDEM TİPLERİ",
            description: "Kortikosteroidler (Deksametazon), özellikle beyin tümörlerine bağlı gelişen vazojenik ödemde çok etkilidir.",
            additionalInfo: "Ancak travmaya bağlı gelişen sitotoksik ödemde steroidlerin klinik faydası gösterilmemiştir ve rutin kullanımı önerilmez.",
          ),
          NeurosurgeryAnesthesiaItem(
            title: "HİPERGLİSEMİNİN OLUMSUZ ETKİLERİ",
            description: "Yüksek kan şekeri, iskemik beyin dokusunda laktik asidozu artırarak nöronal hasarı şiddetlendirir.",
            additionalInfo: "Nörocerrahi vakalarında glisemi seviyesinin ampirok olarak 180 mg/dL'nin altında tutulması beyin koruması açısından hayatidir.",
          ),
        ],
      ),
      NeurosurgeryAnesthesiaCategory(
        categoryName: 'Kitle Lezyonu & Kraniyotomi',
        items: [
          NeurosurgeryAnesthesiaItem(
            title: "SUPRATENTORYAL KİTLE BELİRTİLERİ",
            description: "Tentoryumun üzerinde yerleşen kitleler genellikle epileptik nöbet, hemipleji (felç) ve afazi gibi fokal nörolojik kayıplara yol açar.",
            additionalInfo: "Anestezi planında hava yolu güvenliği ve postoperatif nörolojik değerlendirmenin hızı ön plandadır.",
          ),
          NeurosurgeryAnesthesiaItem(
            title: "İNFRATENTORYAL (POSTERİOR FOSSA) KİTLELERİ",
            description: "Arka çukurda yerleşen kitleler serebellar disfonksiyon veya beyin sapı bası bulgularıyla kendini gösterir.",
            additionalInfo: "Beyin sapı tutulumu durumunda vital merkezler (solunum/dolaşım) tehlikede olabilir ve ani krizlere yol açabilir.",
          ),
          NeurosurgeryAnesthesiaItem(
            title: "PREOPERATİF NÖROLOJİK MUAYENE VE İLAÇLAR",
            description: "Hastanın ameliyat öncesi bazal nörolojik durumu, GKS skoru ve antikonvülzan ilaç düzeyleri mutlaka kaydedilmelidir.",
            subtitle: "Antikonvülzan ve kortikosteroid tedavisine ameliyat sabahı da devam edilmelidir",
            additionalInfo: "Özellikle kitle etkisi olan hastalarda ağır sedatif premedikasyondan (KİB artış riski nedeniyle) kaçınılmalıdır.",
          ),
          NeurosurgeryAnesthesiaItem(
            title: "ANESTEZİ İNDÜKSİYON HEDEFLERİ",
            description: "Laringoskopi ve entübasyon sırasında gelişebilecek refleks sempatik yanıtların KİB'i artırması engellenmelidir.",
            subtitle: "Propofol + Opioid + Hafif Hiperventilasyon kombinasyonu en güvenli yöntemlerden biridir",
            additionalInfo: "Düşük doz Sevofluran (1 MAC altı) kullanımı serebral otoregülasyonu koruduğu için idame için uygundur.",
          ),
          NeurosurgeryAnesthesiaItem(
            title: "BETA-BLOKERLERLE HEMODİNAMİK KONTROL",
            description: "Kafa içi basıncı yüksek hastalarda tansiyon fırlamalarını (HT) kontrol etmek için kısa etkili beta blokerler (Esmolol vb.) kullanılabilir.",
            additionalInfo: "Pulsatil basınç artışları intrakraniyal kanama riskini tetikleyebileceği için hemodinamik profil dümdüz olmalıdır.",
          ),
          NeurosurgeryAnesthesiaItem(
            title: "İDAME ANESTEZİ VE SIVI SEÇİMİ",
            description: "İdamede TİVA (Propofol/Remifentanil) veya düşük doz volatil ajanlar tercih edilmelidir.",
            subtitle: "Hedef PaCO2: 30–35 mmHg arasında tutulmalıdır",
            additionalInfo: "Sıvı tedavisinde glukozsuz izotonik solüsyonlar (%0.9 NaCl) tercih edilmeli, hipotonik sıvılardan beyin ödemini artıracağı için KESİNLİKLE kaçınılmalıdır.",
          ),
          NeurosurgeryAnesthesiaItem(
            title: "İNTRAOPERATİF GLİSEMİK KONTROL",
            description: "Ameliyat sırasında kan şekerinin yükselmesi nörolojik prognozu kötüleştirir.",
            additionalInfo: "Sık glisemi takibi yapılarak seviye <180 mg/dL tutulmalı, gerekirse insülin perfüzyonu başlanmalıdır.",
          ),
          NeurosurgeryAnesthesiaItem(
            title: "DERLENME VE EKSTÜBASYON STRATEJİSİ",
            description: "Kraniyotomi sonrası hastanın nörolojik durumunu hemen görebilmek için erken ve sakin bir ekstübasyon tercih edilir.",
            additionalInfo: "Ekstübasyon sırasında gelişen aşırı öksürük ve 'ıkınma' (strain) kafa içi basıncı fırlatarak dikiş hatlarına zarar verebilir; bu nedenle 'smooth emergence' teknikleri uygulanmalıdır.",
          ),
        ],
      ),
      NeurosurgeryAnesthesiaCategory(
        categoryName: 'Posterior Fossa Cerrahisi',
        items: [
          NeurosurgeryAnesthesiaItem(
            title: "OBSTRÜKTİF HİDROSEFALİ VE VENTRİKÜLOSTOMİ",
            description: "Posterior fossa kitleleri BOS akışını tıkayabilir; bu durumlarda anestezi indüksiyonu öncesi acil ventrikül drenajı gerekebilir.",
            additionalInfo: "Drenajın hızlı yapılması oransal basınç farkı (brain shift) yaratarak herniasyona neden olabilir; dikkatli olunmalıdır.",
          ),
          NeurosurgeryAnesthesiaItem(
            title: "BEYİN SAPI HASARI VE VİTAL İNSTABİLİTE",
            description: "Dördüncü ventrikül tabanındaki cerrahi manevralar solunum ve dolaşım merkezlerini uyararak ani tansiyon/nabız değişikliklerine yol açar.",
            additionalInfo: "Bu kritik anlarda cerraha bilgi verilmeli ve operasyona geçici süre ara verilmelidir.",
          ),
          NeurosurgeryAnesthesiaItem(
            title: "OTURUR POZİSYON VE PNÖMOSEFALİ RİSKİ",
            description: "Oturur pozisyonda kafanın atmosfer basıncına açık kalması sonucu içeri hava dolması (pnömosefali) riski vardır.",
            subtitle: "Hava hacmini artırarak KİBAS yapacağı için Azot Protoksit (N2O) KESİNLİKLE kullanılmamalıdır",
            additionalInfo: "Ayrıca bu pozisyon cerrahi saha ile kalp seviyesi arasındaki basınç farkı nedeniyle hava embolisine zemin hazırlar.",
          ),
          NeurosurgeryAnesthesiaItem(
            title: "VENÖZ HAVA EMBOLİSİ (VAE) TANISI",
            description: "Posterior fossa ve kraniyotomi ameliyatlarında gelişebilecek hava embolisinin en hassas tanı aracı TEE veya Prekordiyal Doppler'dir.",
            subtitle: "Prekordiyal doppler 0.25 mL gibi çok küçük hava kabarcıklarını bile 'değirmen taşı sesi' şeklinde yakalayabilir",
            additionalInfo: "End-tidal CO2 (EtCO2) değerindeki ani düşüş ve havayolu basınçlarındaki artış da emboli şüphesini güçlendirir.",
          ),
          NeurosurgeryAnesthesiaItem(
            title: "VAE ACİL TEDAVİ PROTOKOLÜ",
            description: "Hava embolisi saptandığında cerrahi saha ıslatılmalı, %100 O2'ye geçilmeli ve CVP kateterinden hava aspire edilmelidir.",
            subtitle: "Hipotansiyon varsa sıvı ve vazopressör desteği sağlanmalı, juguler venlere kompresyon uygulanmalıdır",
            additionalInfo: "PEEP uygulanması venöz basıncı artırsa da, eğer hastada patent foramen ovale (PFO) varsa sağ-sol şant yaparak paradoksal emboli riski yaratabilir.",
          ),
        ],
      ),
      NeurosurgeryAnesthesiaCategory(
        categoryName: 'Stereotaksik Cerrahi',
        items: [
          NeurosurgeryAnesthesiaItem(
            title: "STEREOTAKSİK CERRAHİ ENDİKASYONLARI",
            description: "Derin beyin stimülasyonu (DBS) veya biyopsi amacıyla Parkinson, epilepsi ve kronik ağrı tedavisinde kullanılır.",
            additionalInfo: "Cerrahi sırasında hastanın kooperasyonunun gerekmesi anestezi derinliği yönetimini kritik hale getirir.",
          ),
          NeurosurgeryAnesthesiaItem(
            title: "ANESTEZİK AJANLARIN SEÇİMİ (PROPOFOL / DEKS)",
            description: "Genellikle propofol ve deksmedetomidin infüzyonu ile 'konuşarak cerrahi' imkanı sağlayan bilinçli sedasyon tercih edilir.",
            additionalInfo: "İdeal anestezi, nörolojik monitörizasyonu bozmayan ancak hastanın ağrı duymasını engelleyen dengeli bir yaklaşımdır.",
          ),
          NeurosurgeryAnesthesiaItem(
            title: "ÇERÇEVE KULLANIMI VE HAVAYOLU ZORLUĞU",
            description: "Hastanın başına sabitlenen stereotaksik çerçeve, havayolu müdahalesini fiziksel olarak engeller ve zor entübasyon riski yaratır.",
            additionalInfo: "Acil bir durumda çerçevenin nasıl çıkarılacağı önceden bilinmeli ve gerekli ekipman hazır bulundurulmalıdır.",
          ),
        ],
      ),
      NeurosurgeryAnesthesiaCategory(
        categoryName: 'Kafa Travması',
        items: [
          NeurosurgeryAnesthesiaItem(
            title: "GLASGOW KOMA SKALASI (GKS) VE MORTALİTE",
            description: "Travma sonrası GKS skorunun 8'in altında olması ciddi beyin hasarını gösterir ve mortalite yaklaşık %35'tir.",
            additionalInfo: "GKS ≤ 8 olan hastalar havayolu güvenliği için gecikmeden entübe edilmelidir.",
          ),
          NeurosurgeryAnesthesiaItem(
            title: "SİSTOLİK KAN BASINCI (SAB) VE PROGNOZ",
            description: "Kafa travmasında sistolik kan basıncının 80 mmHg'nin altına bir kez bile düşmesi kötü prognoz ile ilişkilidir.",
            additionalInfo: "Sekonder brain injury (ikincil beyin hasarı) gelişmemesi için tansiyonun agresif şekilde korunması şarttır.",
          ),
          NeurosurgeryAnesthesiaItem(
            title: "SEKONDER BEYİN HASARI NEDENLERİ",
            description: "İlk darbeden sonra gelişen hipoksi, hiperkapni ve hipotansiyon beyni iskemik bırakarak hasarı derinleştirir.",
            additionalInfo: "Anestezistin temel görevi bu üçlüyü (hipoksi, hiperkapni, hipotansiyon) önleyerek ikincil hasarı durdurmaktır.",
          ),
          NeurosurgeryAnesthesiaItem(
            title: "TRAVMALI HASTADA İNDÜKSİYON VE STABİLİZASYON",
            description: "Olası mide dolgunluğu nedeniyle Hızlı Seri İndüksiyon (RSI) uygulanırken servikal omurga in-line stabilizasyonu yapılmalıdır.",
            subtitle: "Bazal kafa kırığı şüphesinde kör nazal entübasyon (beyne tüp girmesi riski nedeniyle) KESİNLİKLE kontrendikedir",
            additionalInfo: "Laringoskopi sırasında KİB artışını önlemek için önceden IV lidokain veya opioid desteği sağlanabilir.",
          ),
          NeurosurgeryAnesthesiaItem(
            title: "İNTRAOPERATİF SPB VE PACO2 HEDEFLERİ",
            description: "Travmalı hastalarda Serebral Perfüzyon Basıncı (SPB) 70–110 mmHg aralığında tutulmalıdır.",
            subtitle: "KİB düşürmek için yapılan aşırı PaCO2 düşüşü (<30 mmHg) beyni iskemik yapacağı için kaçınılmalıdır",
            additionalInfo: "Modern yaklaşım, normokarbi veya hafif hipokapni eşliğinde yüksek perfüzyon basıncı sağlamaktır.",
          ),
          NeurosurgeryAnesthesiaItem(
            title: "TRAVMA SONRASI SİSTEMİK KOMPLİKASYONLAR",
            description: "Ciddi kafa travmalarında Dissemine İntravasküler Koagülasyon (DİK), Diabetes İnsipitus (DI) ve stres ülserleri gelişebilir.",
            additionalInfo: "Ozmotik tedavi (Mannitol) alan hastalarda DI tablosu hızla dehidratasyona ve elektrolit krizine yol açabilir; idrar takibi hayatidir.",
          ),
        ],
      ),
      NeurosurgeryAnesthesiaCategory(
        categoryName: 'İntrakraniyal Anevrizma & AVM',
        items: [
          NeurosurgeryAnesthesiaItem(
            title: "ANEVRİZMA LOKALİZASYONU VE WILLIS POLİGONU",
            description: "İntrakraniyal anevrizmaların %85'i Willis poligonunun ön (anterior) segmentinde yerleşir.",
            subtitle: "Sakküler (böğürtlen) anevrizmalar, travma dışı subaraknoid kanamanın (SAK) en sık nedenidir",
            additionalInfo: "Anevrizmalar genellikle rüptüre olana kadar belirti vermezler ancak büyüklüklerine göre kranial sinir basısı yapabilirler.",
          ),
          NeurosurgeryAnesthesiaItem(
            title: "RÜPTÜR MORTALİTESİ VE ZAMANLAMA",
            description: "Anevrizma rüptürü sonrası hastaların %10'u hastaneye ulaşamadan, %25'i ise ilk 3 ay içinde hayatını kaybeder.",
            additionalInfo: "Erken cerrahi (ilk 72 saat), yeniden kanama (re-bleeding) riskini azaltmak için güncel altın standarttır.",
          ),
          NeurosurgeryAnesthesiaItem(
            title: "SEREBRAL VAZOSPAZM VE TCD TAKİBİ",
            description: "SAK sonrası gelişen vazospazm (%30 görülür), gecikmiş iskemik hasarın ve ameliyat başarısızlığının en sık nedenidir.",
            subtitle: "Genellikle 4–14. günler arasında pik yapar; TCD akım hızı >200 cm/sn ciddi spazm demektir",
            additionalInfo: "Lindegaard oranının (MCA/ICA) 3'ün üzerine çıkması da tanıyı destekler. Beyin doku oksijeninin 20 mmHg altına düşmesi iskemiyi tesciller.",
          ),
          NeurosurgeryAnesthesiaItem(
            title: "VAZOSPAZMDAN KORUNMA VE 3H TEDAVİSİ",
            description: "Vazospazm gelişen hastalarda perfüzyonu artırmak için 3H (Hypervolemia, Hemodilution, Hypertension) protokolü uygulanır.",
            subtitle: "Koruyucu olarak oral Nimodipin kullanımı standarttır; hipotermi nöroproteksiyon sağlayabilir",
            additionalInfo: "3H tedavisi sırasında kalp yetmezliği ve akciğer ödemi riski nedeniyle CVP gibi invaziv monitörizasyon önerilir.",
          ),
          NeurosurgeryAnesthesiaItem(
            title: "AVM BULGULARI VE KANAMA RİSKİ",
            description: "Arteriyovenöz malformasyonlar (AVM) en sık şiddetli baş ağrısı ve epileptik nöbetlerle başvururlar.",
            subtitle: "Ameliyat sırasında kontrolsüz büyük kanama riski yüksektir; en az iki adet geniş çaplı IV yol açılmalıdır",
            additionalInfo: "AVM çıkarıldıktan sonra çevredeki 'çalma (steal)' etkisindeki damarlar aniden yüksek basınca maruz kalarak ödem yapabilir (Normal pressure breakthrough).",
          ),
        ],
      ),
      NeurosurgeryAnesthesiaCategory(
        categoryName: 'Vertebra (Omurga) Cerrahisi',
        items: [
          NeurosurgeryAnesthesiaItem(
            title: "PRON POZİSYONUN ANESTEZİK ZORLUKLARI",
            description: "Yüzüstü yatırılan hastalarda hem ventilasyon yönetimi zordur hem de olası bir krizde havayolu müdahalesi imkansızdır.",
            additionalInfo: "Göğüs ve karın serbest tutulmalı, venöz dönüşü engelleyecek basılardan mutlaka kaçınılmalıdır.",
          ),
          NeurosurgeryAnesthesiaItem(
            title: "TRANSTORASİK YAKLAŞIM VE TEK AC VENTİLASYONU",
            description: "Torakal vertebra cerrahilerinde önden yaklaşım (transtorasik) uygulanıyorsa tek akciğer ventilasyonu gerekebilir.",
            additionalInfo: "Bu durumda çift lümenli tüp veya bronşiyal bloker ile intraoperatif akciğer izolasyonu sağlanmalıdır.",
          ),
          NeurosurgeryAnesthesiaItem(
            title: "POZİSYONA BAĞLI GÖZ KOMPLİKASYONLARI (POVL)",
            description: "Uzun cerrahilerde pron pozisyon sonrası gelişebilen görme kaybı (POVL), geri dönüşsüz bir felakettir.",
            subtitle: "Başlıca nedenleri iskemik optik nöropati, retinal arter tıkanıklığı ve kornea hasarıdır",
            additionalInfo: "Gözlerin yastığa veya çerçeveye bası yapmadığı her 15 dakikada bir manuel olarak kontrol edilmelidir.",
          ),
          NeurosurgeryAnesthesiaItem(
            title: "POVL RİSK FAKTÖRLERİ VE ÖNLEMLER",
            description: "6 saatten uzun ameliyatlar, >1 litre kan kaybı, hipertansiyon, DM ve obezite POVL riskini dramatik artırır.",
            additionalInfo: "Hastanın başı kalp seviyesinden yüksekte tutulmalı ve sistemik hipotansiyondan KESİNLİKLE kaçınılmalıdır.",
          ),
          NeurosurgeryAnesthesiaItem(
            title: "POZİSYON ÖNCESİ MONİTÖRİZASYON GÜVENLİĞİ",
            description: "Hastaya pron pozisyonu verilmeden önce tüm invaziv hatlar ve monitorizasyon tam olarak çalışır durumda olmalıdır.",
            additionalInfo: "Pozisyon verildikten sonra tüp yerleşimi ve akciğer sesleri mutlaka ikinci kez teyit edilmelidir.",
          ),
          NeurosurgeryAnesthesiaItem(
            title: "İNTRAOPERATİF UYARILMIŞ POTANSİYEL TAKİBİ",
            description: "Spinal kord hasarını önlemek için Motor (MEP) ve Somatosensoriyel (SSEP) uyarılmış potansiyeller sıkça kullanılır.",
            additionalInfo: "Bu izlemler sırasında volatil ajan dozu düşük (0.5 MAC altı) tutulmalı veya tamamen TİVA yöntemine geçilmelidir; aksi halde sinyaller kaybolur.",
          ),
        ],
      ),
      NeurosurgeryAnesthesiaCategory(
        categoryName: 'Hızlı Hatırlatma – Kritik Nörocerrahi Sayıları',
        items: [
          NeurosurgeryAnesthesiaItem(
            title: "KİB NORMAL, PATOLOJİK VE KRİTİK SINIRLARI",
            description: "Normal KİB: < 10 mmHg; Patolojik KİB: > 15 mmHg; Kritik KİB: > 30 mmHg.",
            additionalInfo: "Basınç arttıkça serebral perfüzyonun sürdürülmesi zorlaşır ve herniasyon riski katlanır.",
          ),
          NeurosurgeryAnesthesiaItem(
            title: "PACO2 HEDEF ARALIĞI",
            description: "Nörocerrahi için ideal hedef 30–35 mmHg'dir.",
            additionalInfo: "Bu aralık hem beyni cerrahi olarak 'rahatlatır' hem de yaygın iskemi riskini minimalde tutar.",
          ),
          NeurosurgeryAnesthesiaItem(
            title: "MANNİTOL DOZAJ BİLGİSİ",
            description: "0.25–0.5 g/kg IV bolus dozda uygulanır.",
            additionalInfo: "Genellikle etkisinin pik yapması için cerrah dura açılışına başlamadan 20–30 dakika önce verilmelidir.",
          ),
          NeurosurgeryAnesthesiaItem(
            title: "VAZOSPAZMDA TCD DEĞERİ (>200)",
            description: "TCD ile ölçülen akım hızının >200 cm/sn olması ciddi serebral vazospazmı teyit eder.",
            additionalInfo: "Beyin dokusu oksijeninin (PbtO2) 20 mmHg altına inmesi ise klinik iskeminin başladığını gösterir.",
          ),
          NeurosurgeryAnesthesiaItem(
            title: "SPB VE SAB KRİTİK HEDEFLERİ",
            description: "Travmalı hastada SPB hedefi 70–110 mmHg, Sistolik Kan Basıncı (SAB) alt sınırı ise 80 mmHg'dir.",
            additionalInfo: "Tansiyonun bir kez bile bu sınırın altına düşmesi prognozu doğrudan olumsuz etkiler.",
          ),
          NeurosurgeryAnesthesiaItem(
            title: "GKS ENTÜBASYON SINIRI",
            description: "Glasgow Koma Skalası puanı 8 ve altında olan tüm hastaların acil havayolu güvenliği için entübasyonu şarttır.",
            additionalInfo: "GKS < 8, havayolu reflekslerinin kaybı ve aspirasyon riski ile eş anlamlıdır.",
          ),
        ],
      ),
    ];
  }
}
