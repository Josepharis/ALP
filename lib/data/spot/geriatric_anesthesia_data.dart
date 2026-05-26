import 'package:flutter/material.dart';

class GeriatricAnesthesiaItem {
  final String title;
  final String description;
  final String? subtitle;
  final String? additionalInfo;

  GeriatricAnesthesiaItem({
    required this.title,
    required this.description,
    this.subtitle,
    this.additionalInfo,
  });
}

class GeriatricAnesthesiaCategory {
  final String categoryName;
  final List<GeriatricAnesthesiaItem> items;

  GeriatricAnesthesiaCategory({
    required this.categoryName,
    required this.items,
  });
}

class GeriatricAnesthesiaData {
  static List<GeriatricAnesthesiaCategory> getGeriatricAnesthesiaData(
    BuildContext context,
  ) {
    return [
      GeriatricAnesthesiaCategory(
        categoryName: 'Kardiyovasküler Sistem',
        items: [
          GeriatricAnesthesiaItem(
            title: "KARDİYAK VE VASKÜLER KOMPLİYANSTA YAŞA BAĞLI DEĞİŞİMLER",
            description: "Yaşlanma ile damar duvarları sertleşir, kardiyak ve vasküler kompliyans azalırken kapaklarda kalsifikasyon artar.",
            additionalInfo: "Bu durum sistolik kan basıncında artışa ve sol ventrikül hipertrofisine yol açar.",
          ),
          GeriatricAnesthesiaItem(
            title: "MAKSİMUM KALP HIZI VE YAŞLANMA ETKİSİ (50 YAŞ SONRASI)",
            description: "Maksimum kalp hızı, 50 yaşından sonra her yıl yaklaşık 1 atım/dk azalma gösterir.",
            additionalInfo: "Sempatik yanıtın azalmasıyla birlikte egzersize ve strese verilen taşikardi yanıtı zayıflar.",
          ),
          GeriatricAnesthesiaItem(
            title: "DİYASTOLİK DİSFONKSİYON VE E/é ORANLARI (15 VS 8)",
            description: "Yaşlılarda diyastolik doluşun bozulması (diyastolik disfonksiyon) oldukça yaygın bir bulgudur.",
            subtitle: "E/é oranı >15 ise diyastolik disfonksiyon; <8 ise normal kabul edilir",
            additionalInfo: "Diyastolik disfonksiyon tek başına 'kalp yetmezliği' anlamına gelmez ancak akut yüklenmelerde risk oluşturur.",
          ),
        ],
      ),
      GeriatricAnesthesiaCategory(
        categoryName: 'Solunum Sistemi',
        items: [
          GeriatricAnesthesiaItem(
            title: "ALVEOLER DİSTANSİYON VE V/Q UYUMSUZLUĞU",
            description: "Alveollerin genişleyip elastisitesini kaybetmesi ve küçük havayolları kollapsı, belirgin bir V/Q uyumsuzluğuna neden olur.",
            additionalInfo: "Şant miktarındaki bu artış, cerrahi sırasında hızlı desatürasyon riskini doğurur.",
          ),
          GeriatricAnesthesiaItem(
            title: "SOLUNUM HACİMLERİNDEKİ DEĞİŞİMLER (RV, FRK, KK ARTIŞI)",
            description: "Rezidüel hacim (RV), fonksiyonel rezidüel kapasite (FRK) ve kapanma kapasitesi (KK) yaşla birlikte artar.",
            additionalInfo: "Ancak vital kapasite (VC) ve zorlu ekspiratuvar hacimler azalma eğilimindedir.",
          ),
          GeriatricAnesthesiaItem(
            title: "ARTERİYEL OKSİJEN BASINCI (PAO2) DÜŞÜŞÜ (0.35 MMHG/YIL)",
            description: "Arteriyel oksijen parsiyel basıncı (PaO2), 20 yaşından sonra her yıl yaklaşık 0.35 mmHg düşüş gösterir.",
            additionalInfo: "Gaz değişim yüzey alanının azalması bu düşüşün temel nedenidir.",
          ),
          GeriatricAnesthesiaItem(
            title: "GERİATRİK SOLUNUM YÖNETİMİ VE PEEP UYGULAMASI",
            description: "Uzun süreli preoksijenasyon, operasyon sırasında yüksek FiO2 ve PEEP kullanımı havayolu stabilitesi için kritiktir.",
            additionalInfo: "Agresif pulmoner temizlik ve postoperatif fizyoterapi, pulmoner komplikasyonları (atelektazi vb.) azaltır.",
          ),
        ],
      ),
      GeriatricAnesthesiaCategory(
        categoryName: 'Metabolik & Endokrin',
        items: [
          GeriatricAnesthesiaItem(
            title: "YAŞLILIKTA BAZAL OKSİJEN TÜKETİMİ (VO2) DEĞİŞİMİ",
            description: "Yaşla birlikte bazal metabolizma hızı ve buna paralel olarak oksijen tüketimi (VO2) azalma gösterir.",
            additionalInfo: "Doku perfüzyonu ve hücresel enerji ihtiyacı bu değişime adapte olur.",
          ),
          GeriatricAnesthesiaItem(
            title: "VÜCUT AĞIRLIĞI VE KİLO KAYBI (60 YAŞ SONRASI)",
            description: "Fizyolojik kilo kaybı genellikle 60 yaşından sonra başlar ve yağsız vücut kitlesinde azalma ile karakterizedir.",
            additionalInfo: "Sarkopeni ile birleştiğinde kırılganlık (frailty) skoru artar.",
          ),
          GeriatricAnesthesiaItem(
            title: "TERMOREGÜLASYON BOZUKLUĞU VE HİPOTERMİ RİSKİ",
            description: "Vücut sıcaklığını koruma yeteneği zayıflar; yaşlılar intraoperatif hipotermiye karşı çok daha duyarlıdır.",
            additionalInfo: "Hipotermi, cerrahi alan enfeksiyonu ve kardiyovasküler olay riskini artırır.",
          ),
          GeriatricAnesthesiaItem(
            title: "GERİATRİK POPÜLASYONDA DİYABET (DM) PREVALANSI (>70 YAŞ)",
            description: "70 yaşın üzerindeki hastaların yaklaşık %70'inde glukoz intoleransı veya diyabet saptanmaktadır.",
            additionalInfo: "Sessiz iskemi riski nedeniyle peroperatif kan şekeri regülasyonu esastır.",
          ),
        ],
      ),
      GeriatricAnesthesiaCategory(
        categoryName: 'Renal Fonksiyon',
        items: [
          GeriatricAnesthesiaItem(
            title: "SERUM KREATİNİN VE BUN DÜZEYLERİNDEKİ YANILTICI DURUM",
            description: "Kas kitlesinin azalması nedeniyle serum kreatinin düzeyi normal görünebilir; ancak gerçek GFR dramatik olarak düşmüştür.",
            additionalInfo: "BUN düzeyleri protein yıkımı ve renal klirens azalmasıyla genellikle artış gösterir.",
          ),
          GeriatricAnesthesiaItem(
            title: "TÜBÜLER FONKSİYONLARDAKİ BOZULMA VE ELEKTROLİT DENGESİ",
            description: "İdrarı dilüe etme, konsantre etme ve sodyum/glukoz reabsorbsiyonu gibi tübüler fonksiyonlar bozulur.",
            additionalInfo: "Bu durum susuzluk hissinin kaybıyla birleşince dehidratasyon riskini artırır.",
          ),
          GeriatricAnesthesiaItem(
            title: "AKUT BÖBREK HASARI (AKI) VE POTASYUM İMBALANSI RİSKİ",
            description: "Perioperatif dönemde AKI gelişme riski yüksektir; hipo ve hiperkalemiye yatkınlık belirgindir.",
            additionalInfo: "Böbrekler kilerens azaldığında potasyum yükünü tolere edemez.",
          ),
        ],
      ),
      GeriatricAnesthesiaCategory(
        categoryName: 'Gastrointestinal & Hepatik',
        items: [
          GeriatricAnesthesiaItem(
            title: "KARACİĞER KİTLESİ VE BİYOTRANSFORMASYON KAPASİTESİ",
            description: "Karaciğer hacmi ve biyotransformasyon (enzimatik yıkım) hızı yaşla beraber azalır.",
            additionalInfo: "Faz 1 ve Faz 2 reaksiyonlarındaki yavaşlama ilaç etki süresini uzatır.",
          ),
          GeriatricAnesthesiaItem(
            title: "SERUM ALBÜMİN DÜZEYİ VE İLAÇ BAĞLANMA ETKİSİ",
            description: "Plazma albümin miktarı azalır; bu durum albümine bağlanan asidik ilaçların (opioid, benzo vb.) serbest fraksiyonunu artırır.",
            additionalInfo: "Serbest ilaç formunun artması toksisite riskini beraberinde getirir.",
          ),
        ],
      ),
      GeriatricAnesthesiaCategory(
        categoryName: 'Santral Sinir Sistemi',
        items: [
          GeriatricAnesthesiaItem(
            title: "BEYİN KAN AKIMI (CBF) VE OTOREGÜLASYON KORUNUMU (%10-20)",
            description: "Beyin kan akımı %10-20 oranında azalmasına rağmen, serebral otoregülasyon sağlıklı yaşlılarda genellikle korunur.",
            additionalInfo: "Yine de ani kan basıncı düşüşleri serebral perfüzyonu hızla tehlikeye atabilir.",
          ),
          GeriatricAnesthesiaItem(
            title: "NÖRONAL KAYIP VE DUYUSAL EŞİKTEKİ DEĞİŞİMLER",
            description: "Nöron sayısındaki azalmaya bağlı olarak duyusal eşikler yükselir; ağrı algısı ve yanıtı değişebilir.",
            additionalInfo: "Beyin dokusundaki hacimsel azalma (atrofi) epidural/spinal mesafeleri de etkiler.",
          ),
          GeriatricAnesthesiaItem(
            title: "YAŞLI HASTADA ANESTEZİK İHTİYACININ AZALMASI (GENEL/LOKAL)",
            description: "Hem genel hem de lokal anestezi için gereken doz miktarı yaşla beraber belirgin şekilde düşer.",
            additionalInfo: "Hedef organın duyarlılığındaki artış düşük dozla derin anesteziye neden olur.",
          ),
          GeriatricAnesthesiaItem(
            title: "POSTOPERATİF DAVRANIŞSAL BOZUKLUK VE DELİRYUM (%30)",
            description: "Operasyon sonrası ilk bir haftalık dönemde yaşlı hastaların yaklaşık %30'unda deliryum veya davranış değişiklikleri gözlenir.",
            additionalInfo: "Postoperatif bilişsel disfonksiyon (POCD) uzun dönemli takip gerektiren bir tablodur.",
          ),
        ],
      ),
      GeriatricAnesthesiaCategory(
        categoryName: 'Kas-İskelet & Cilt',
        items: [
          GeriatricAnesthesiaItem(
            title: "KAS KİTLESİ VE SARKOPENİ DEĞİŞİMLERİ",
            description: "Yaşlanma ile kas kitlesi ( yağsız kitle) azalırken yağ dokusu artar.",
            additionalInfo: "Bu durum bazal metabolizma hızını da doğrudan etkiler.",
          ),
          GeriatricAnesthesiaItem(
            title: "CİLT ATROFİSİ VE FRAJİL VEN YAPISI",
            description: "Cilt atrofisi (incelme) travmalara karşı dayanıksızlığa; frajil venler ise damar yolu girişimlerinde zorluklara neden olur.",
            subtitle: "IV girişimler sırasında damarın rüptüre olma riski yüksektir",
            additionalInfo: "Yapışkan bantlar ve monitör elektrotları cilde zarar vermeyecek şekilde seçilmelidir.",
          ),
        ],
      ),
      GeriatricAnesthesiaCategory(
        categoryName: 'Yaşla İlgili Farmakolojik Değişiklikler',
        items: [
          GeriatricAnesthesiaItem(
            title: "VÜCUT KOMPOZİSYONU VE LİPOFİLİK İLAÇLARIN DAĞILIM HACMİ",
            description: "Yağ kitlesindeki artış, lipofilik ilaçların (örn: fentanil, propofol) dağılım hacmini artırır ve eliminasyonu uzatır.",
            additionalInfo: "Tekrarlayan dozlarda ilaç birikimi (küümülatif etki) daha sıktır.",
          ),
          GeriatricAnesthesiaItem(
            title: "ALBÜMİN AZALMASI VE ASİDİK İLAÇLARIN SERBEST FRAKSİYONU",
            description: "Albümin seviyesindeki düşüş; benzodiazepin, barbitürat ve opioidler gibi asidik ilaçların serbest formunu artırır.",
            additionalInfo: "İlaç dozları %30-50 oranında azaltılmalıdır.",
          ),
          GeriatricAnesthesiaItem(
            title: "ALPHA-1 ASİT GLİKOPROTEİN ARTIŞI VE BAZİK İLAÇ BAĞLANMASI",
            description: "Albüminin aksine yaşla artış gösteren alfa-1 asit glikoprotein, lokal anestetikler gibi bazik ilaçların bağlanmasını (ve etkisini) değiştirir.",
            additionalInfo: "Bu durum toksisite sınırlarını da etkileyebilir.",
          ),
        ],
      ),
      GeriatricAnesthesiaCategory(
        categoryName: 'İnhalasyon Ajanları',
        items: [
          GeriatricAnesthesiaItem(
            title: "MAK (MİNİMAL ALVEOLER KONSANTRASYON) DÜŞÜŞÜ (%4/10 YIL)",
            description: "40 yaşından sonra MAK değeri her on yılda bir yaklaşık %4 oranında azalır.",
            additionalInfo: "80 yaşındaki bir hastada volatil ajan ihtiyacı genç birine göre yaklaşık %15-20 daha azdır.",
          ),
          GeriatricAnesthesiaItem(
            title: "GERİATRİK HASTADA ANESTEZİDEN DERLENME SÜRECİ",
            description: "Pulmoner gaz değişimindeki bozulma ve yağ dokusunda biriken ilaçlar nedeniyle derlenme periyodu belirgin şekilde uzar.",
            additionalInfo: "Vigilansın geri dönmesi saatler sürebilir.",
          ),
          GeriatricAnesthesiaItem(
            title: "İNHALASYON AJANLARININ KARACİĞER FONKSİYONLARINA ETKİSİ",
            description: "Genel olarak karaciğer fonksiyonları volatil anestezi ajanlarından minimal düzeyde etkilenir.",
            additionalInfo: "Yine de hepatik perfüzyonu korumak esastır.",
          ),
        ],
      ),
      GeriatricAnesthesiaCategory(
        categoryName: 'İV Ajanlar',
        items: [
          GeriatricAnesthesiaItem(
            title: "İV ANESTEZİKLERE KARŞI ARTAN DUYARLILIK VE DOZ ( %50)",
            description: "Santral sinir sistemi duyarlılığı arttığı için doz gereksinimi erişkinlere göre yaklaşık %50 oranında azalır.",
            additionalInfo: "Yüksek dozlarda şiddetli hipotansiyon ve uzamış apne (solunum durması) kaçınılmazdır.",
          ),
          GeriatricAnesthesiaItem(
            title: "DOZ GEREKSİNİMİ ANLAMLI ÖLÇÜDE AZALAN AJANLAR",
            description: "Propofol, Midazolam, Alfentanil ve Fentanil yaşlılarda mutlaka daha düşük dozlarda başlanmalıdır.",
            additionalInfo: "'Start low, go slow' (Düşük başla, yavaş ilerle) altın kuraldır.",
          ),
          GeriatricAnesthesiaItem(
            title: "FENTANİL VE TÜREVLERİNDE FARMAKODİNAMİK DEĞİŞİKLİKLER",
            description: "Fentanil, Alfentanil ve Sufentanilin farmakokinetiği nispeten stabil kalsa da hedef organ duyarlılığı (farmakodinami) artmıştır.",
            additionalInfo: "Beyin reseptörlerinin opiyatlara hassasiyeti belirgindir.",
          ),
          GeriatricAnesthesiaItem(
            title: "REMİFENTANİLİN FARMAKOKİNETİK VE DİNAMİK ÖZELLİKLERİ",
            description: "Remifentanil hem kinetik hem de dinamik olarak yaşlılarda değişim gösteren bir ajandır; dikkatli dozlanmalıdır.",
            additionalInfo: "Plazma esterazları ile yıkım hızı bir miktar yavaşlasa da hala en kısa etkilidir.",
          ),
        ],
      ),
      GeriatricAnesthesiaCategory(
        categoryName: 'Kas Gevşeticiler',
        items: [
          GeriatricAnesthesiaItem(
            title: "NÖROMÜSKÜLER BLOKÖR (NMB) YANITI VE BAŞLAMA SÜRESİ",
            description: "Nöromüsküler kavşağın cevabı genelde aynı kalsa da düşük kalp debisi nedeniyle etkinin başlama süresi (onset) uzayabilir.",
            additionalInfo: "İlaçların etki yerine ulaşması gecikir.",
          ),
          GeriatricAnesthesiaItem(
            title: "ORGAN BAĞIMLI ELİMİNASYONLU AJANLARDA ETKİ UZAMASI",
            description: "Roküronyum ve Veküronyum gibi karaciğer/böbrek ile atılan ajanların etki süreleri klirens azalmasıyla uzar.",
            additionalInfo: "Postoperatif rezidüel kürarizasyon (gevşeyememe) riski yüksektir.",
          ),
          GeriatricAnesthesiaItem(
            title: "ATRAKURİUM VE SİSATRAKURİUMUN GÜVENLİ KULLANIMI",
            description: "Eliminasyonları karaciğer ve böbrekten bağımsız (Hofmann) olduğu için yaşlılarda en güvenli seçeneklerdir.",
            additionalInfo: "Viyabilitesi zayıf hastalarda en iyi seçenektir.",
          ),
        ],
      ),
      GeriatricAnesthesiaCategory(
        categoryName: 'Klinik Püf Noktalar',
        items: [
          GeriatricAnesthesiaItem(
            title: "YAŞLI HASTADA ANESTEZİK DOZ VE ETKİ SÜRESİ İLİŞKİSİ",
            description: "Daha az doz anestezi ile daha uzun süreli etki ve olası yan etkiler beklenmelidir.",
            additionalInfo: "Fizyolojik rezervlerin kısıtlılığı unutulmamalıdır.",
          ),
          GeriatricAnesthesiaItem(
            title: "PREOKSİJENASYON VE VENTİLASYON STRATEJİLERİ",
            description: "Yaşlıda preoksijenasyon süresi uzatılmalı, operasyon sırasında akciğer atelektazisini önlemek için PEEP uygulanmalıdır.",
            additionalInfo: "Pozitif basınçlı ventilasyon hemodinamiyi (tansiyonu) daha fazla sarsabilir.",
          ),
          GeriatricAnesthesiaItem(
            title: "GERİATRİK RİSK FAKTÖRLERİ (HİPOTERMİ, AKI, DELİRYUM)",
            description: "Hipotermi, Akut Böbrek Hasarı (AKI) ve operasyon sonrası davranış değişiklikleri için yüksek risk faktörleri taşırlar.",
            additionalInfo: "Multimodal yaklaşımla bu riskler minimize edilmelidir.",
          ),
          GeriatricAnesthesiaItem(
            title: "CİLT VE DAMAR YAPISINA YÖNELİK GİRİŞİMSEL ZORLUKLAR",
            description: "Damarların frajil oluşu ve cildin kağıt gibi incelmesi nedeniyle her türlü girişim (IV, monitörizasyon) sabır ve dikkat gerektirir.",
            additionalInfo: "İyatrojenik yaralanmalara karşı duyarlı bir gruptur.",
          ),
        ],
      ),
    ];
  }
}
