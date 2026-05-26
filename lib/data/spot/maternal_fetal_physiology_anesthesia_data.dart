import 'package:flutter/material.dart';

class MaternalFetalPhysiologyAnesthesiaItem {
  final String title;
  final String description;
  final String? subtitle;
  final String? additionalInfo;

  MaternalFetalPhysiologyAnesthesiaItem({
    required this.title,
    required this.description,
    this.subtitle,
    this.additionalInfo,
  });
}

class MaternalFetalPhysiologyAnesthesiaCategory {
  final String categoryName;
  final List<MaternalFetalPhysiologyAnesthesiaItem> items;

  MaternalFetalPhysiologyAnesthesiaCategory({
    required this.categoryName,
    required this.items,
  });
}

class MaternalFetalPhysiologyAnesthesiaData {
  static List<MaternalFetalPhysiologyAnesthesiaCategory>
      getMaternalFetalPhysiologyAnesthesiaData(BuildContext context) {
    return [
      MaternalFetalPhysiologyAnesthesiaCategory(
        categoryName: 'SSS Değişiklikleri',
        items: [
          MaternalFetalPhysiologyAnesthesiaItem(
            title: "MAK (MİNİMAL ALVEOLER KONSANTRASYON) DEĞİŞİMİ (↓ %40)",
            description: "Gebelikte progesteron artışına bağlı olarak volatil anestezi ihtiyacı %40 oranında azalır.",
            additionalInfo: "Bu durum, gebeleri inhalasyon anezteziklerine karşı daha hassas hale getirir.",
          ),
          MaternalFetalPhysiologyAnesthesiaItem(
            title: "REJYONAL ANESTEZİ VE LOKAL ANESTETİK DUYARLILIĞI (↓ %30)",
            description: "Gebelikte lokal anestetik ihtiyacı %30 azalır; epidural venlerdeki dolgunluk blok yayılımını artırır.",
            subtitle: "MLAK = Gebelikte %50 analjezi sağlayan efektif lokal anestetik dozu",
            additionalInfo: "Lomber ponksiyon sırasında BOS basıncı ve epidural alan hacmi progesteron etkisiyle değişir.",
          ),
        ],
      ),
      MaternalFetalPhysiologyAnesthesiaCategory(
        categoryName: 'Solunum Değişiklikleri',
        items: [
          MaternalFetalPhysiologyAnesthesiaItem(
            title: "OKSİJEN TÜKETİMİ VE VENTİLASYON ARTIŞI (↑ %50)",
            description: "Gebelikte bazal metabolizma hızı ve oksijen tüketimi term döneminde %50'ye kadar artış gösterir.",
            additionalInfo: "Dakika ventilasyonundaki artış hem solunum sayısındaki hem de tidal volümdeki artışla sağlanır.",
          ),
          MaternalFetalPhysiologyAnesthesiaItem(
            title: "GEBELİKTE PACO2 VE RESPİRATUVAR ALKALOZ (28-32 MMHG)",
            description: "Artan alveolar ventilasyon nedeniyle PaCO2 28-32 mmHg seviyelerine düşer; bu durum kompanse respiratuvar alkaloz olarak tanımlanır.",
            additionalInfo: "Bikarbonat düzeyleri de alkalozu kompanse etmek için orantılı olarak düşer.",
          ),
          MaternalFetalPhysiologyAnesthesiaItem(
            title: "FONKSİYONEL REZİDÜEL KAPASİTE (FRK) DEĞİŞİMİ (↓ %20)",
            description: "Uterusun diyaframı yukarı itmesi sonucu FRK yaklaşık %20 oranında azalır.",
            additionalInfo: "FRK'daki bu düşüş doğumdan 48 saat sonra normale dönmeye başlar.",
          ),
          MaternalFetalPhysiologyAnesthesiaItem(
            title: "GEBELİKTE APNE VE HIZLI DESATÜRASYON RİSKİ",
            description: "Artan O2 tüketimi ve azalan FRK nedeniyle, apne sırasında gebeler çok hızlı bir şekilde desatüre olurlar.",
            additionalInfo: "Pre-oksijenasyon bu grupta hayati önem taşır; kriz anında rezervler sınırlıdır.",
          ),
          MaternalFetalPhysiologyAnesthesiaItem(
            title: "HAVA YOLU MUKOZAL ÖDEMİ VE ENTÜBASYON STRATEJİSİ",
            description: "Östrojen etkisiyle oluşan havayolu ödemi ve vaskülarite artışı zor entübasyon riskini artırır; daha küçük çaplı ETT'ler (6.5-7.0) önerilir.",
            additionalInfo: "Nazal entübasyon, kanama riski nedeniyle olabildiğince kaçınılması gereken bir yöntemdir.",
          ),
        ],
      ),
      MaternalFetalPhysiologyAnesthesiaCategory(
        categoryName: 'Kardiyovasküler Değişiklikler',
        items: [
          MaternalFetalPhysiologyAnesthesiaItem(
            title: "KAN VOLÜMÜ VE DİLÜSYONEL ANEMİ (↑ 1000-1500 ML)",
            description: "Kan hacmi 1000-1500 mL artar; ancak plazma artışı eritrosit artışından daha fazla olduğu için Hb yaklaşık 11 g/dL seviyesine düşer.",
            additionalInfo: "Bu durum fizyolojik anemi olarak kabul edilir ve kanın vizkozitesini düşürerek perfüzyonu iyileştirir.",
          ),
          MaternalFetalPhysiologyAnesthesiaItem(
            title: "KALP DEBİSİ (CO) VE VELDİS DEĞİŞİMLERİ (↑ %40)",
            description: "Kalp hızı %20, atım hacmi (SV) %30 artarken, toplam kalp debisi %40 oranında yükselir.",
            additionalInfo: "Sistemik vasküler direnç (SVR) hamilelik boyunca gebelik hormonları etkisiyle düşüş gösterir.",
          ),
          MaternalFetalPhysiologyAnesthesiaItem(
            title: "SUPİN HİPOTANSİYON SENDROMU VE AORTOKAVAL BASI",
            description: "Sırt üstü yatan gebede uterusun vena kava inferiora bası yapması venöz dönüşü ve kalp debisini ciddi oranda düşürür.",
            subtitle: "Hipotansiyonu önlemek için gebe mutlaka sol yana yatırılmalı veya uterus sola itilmelidir",
            additionalInfo: "Uteroplasental kan akımının korunması için supin pozisyondan kaçınılmalıdır.",
          ),
          MaternalFetalPhysiologyAnesthesiaItem(
            title: "GEBELİKTE VENÖZ STAZ VE HİPERKOAGÜLABİLİTE",
            description: "Gebelikte venöz staz ve koagülasyon faktörlerindeki artış nedeniyle tromboz eğilimi belirgin şekilde artar.",
            additionalInfo: "Ememboli riski postpartum erken dönemde de devam eder.",
          ),
        ],
      ),
      MaternalFetalPhysiologyAnesthesiaCategory(
        categoryName: 'Renal & GİS Değişiklikleri',
        items: [
          MaternalFetalPhysiologyAnesthesiaItem(
            title: "RENAL FONKSİYONLAR VE KREATİNİN DÜŞÜŞÜ (0.5-0.6 MG/DL)",
            description: "Böbrek kan akımı ve GFR artar; sonuç olarak normal serum kreatinin düzeyleri 0.5-0.6 mg/dL seviyelerine iner.",
            additionalInfo: "Gebe bir hastada 0.8-0.9 mg/dL gibi 'normal' görünen değerler renal disfonksiyonu düşündürebilir.",
          ),
          MaternalFetalPhysiologyAnesthesiaItem(
            title: "GEBELİKTE FİZYOLOJİK PROTEİNÜRİ VE GLUKOZÜRİ",
            description: "Artan GFR ve tübüler reabsorpsiyon kapasitesindeki değişiklikler nedeniyle hafif proteinüri ve glukozüri fizyolojik kabul edilebilir.",
            additionalInfo: "Ancak belirgin proteinüri preeklampsi açısından her zaman taranmalıdır.",
          ),
          MaternalFetalPhysiologyAnesthesiaItem(
            title: "GASTRİK BOŞALMA VE REFLÜ PATOFİZYOLOJİSİ",
            description: "Gastrik boşalma hızı azalır ve alt özofagus sfinkter (LES) basıncı düşerek reflü riskini artırır.",
            subtitle: "Opioidler ve antikolinerjikler LES basıncını daha da düşürerek aspirasyon riskini tetikler",
            additionalInfo: "Doğum ağrısı ve kaygı gastrik boşalmayı daha da geciktirir.",
          ),
        ],
      ),
      MaternalFetalPhysiologyAnesthesiaCategory(
        categoryName: 'Hepatik Değişiklikler',
        items: [
          MaternalFetalPhysiologyAnesthesiaItem(
            title: "HEPATİK ENZİMLER VE ALP ARTIŞI (PLASENTAL KAYNAKLI)",
            description: "Alkali fosfataz (ALP) düzeyi plasental üretim nedeniyle belirgin şekilde artar.",
            additionalInfo: "Diğer karaciğer enzimlerinde (AST, ALT) anlamlı bir artış beklenmez.",
          ),
          MaternalFetalPhysiologyAnesthesiaItem(
            title: "GEBELİKTE PLAZMA ALBÜMİN DÜZEYLERİ (↓)",
            description: "Plazma volümündeki dilüsyonel artışa bağlı olarak albümin konsantrasyonu bir miktar düşer.",
            additionalInfo: "Bu durum, proteine bağlanan ilaçların serbest formunun artmasına neden olabilir.",
          ),
          MaternalFetalPhysiologyAnesthesiaItem(
            title: "PSÖDOKOLİNESTERAZ AKTİVİTESİ (↓ %25-30)",
            description: "Psödokolinesteraz seviyesi %25-30 oranında azalır; bu durum doğumdan 6 hafta sonra normale döner.",
            additionalInfo: "Süksinilkolin etkisi dozaj ayarlanmazsa bir miktar uzayabilir.",
          ),
          MaternalFetalPhysiologyAnesthesiaItem(
            title: "SAFRA KESESİ DİNAMİĞİ VE PROGESTERON ETKİSİ",
            description: "Progesteron etkisiyle safra kesesi boşalması yavaşlar; safra taşı oluşumuna meyil artar.",
            additionalInfo: "Staz, gebelerde kolesistit riskini artıran ana faktördür.",
          ),
        ],
      ),
      MaternalFetalPhysiologyAnesthesiaCategory(
        categoryName: 'Hematolojik Değişiklikler',
        items: [
          MaternalFetalPhysiologyAnesthesiaItem(
            title: "GEBELİK ANEMİSİ VE PLAZMA VOLÜM ARTIŞI",
            description: "Plazma hacmindeki %50'lik artışın eritrosit kütlesindeki artışı (%20) geçmesiyle dilüsyonel anemi oluşur.",
            additionalInfo: "Demir ve folat ihtiyacı bu dönemde belirginleşir.",
          ),
          MaternalFetalPhysiologyAnesthesiaItem(
            title: "GEBELİKTE FİZYOLOJİK LÖKOSİTOZ (21.000/MM3)",
            description: "Doğum eyleminde lökosit sayısı 21.000/mm3 seviyelerine kadar yükselebilir; bu enfeksiyonla karıştırılmamalıdır.",
            additionalInfo: "Lökositosiz, stres yanıtının bir parçası olarak kabul edilir.",
          ),
          MaternalFetalPhysiologyAnesthesiaItem(
            title: "TROMBOSİT SAYISI VE DOĞUMSAL DEĞİŞİMLER (↓ %10)",
            description: "Gebelikte trombosit sayısı hafif (%10) düşebilir ancak genellikle güvenli aralıkta kalır.",
            additionalInfo: "Hamileliğin sonuna doğru 'gestasyonel trombositopeni' sık görülen selim bir tablodur.",
          ),
          MaternalFetalPhysiologyAnesthesiaItem(
            title: "KOAGÜLASYON FAKTÖRLERİ VE HİPERKOAGÜLABİLİTE",
            description: "Fibrinojen ve diğer pıhtılaşma faktörleri (VII-XII) artar; bu da gebeliği hiperkoagülabilite dönemine sokar.",
            additionalInfo: "Vücut, doğumdaki kanamaya hazırlık olarak pıhtılaşma sistemini aktive eder.",
          ),
        ],
      ),
      MaternalFetalPhysiologyAnesthesiaCategory(
        categoryName: 'Metabolik Değişiklikler',
        items: [
          MaternalFetalPhysiologyAnesthesiaItem(
            title: "GEBELİKTE DİYABETOJENİK DURUM VE KH TOLERANSI",
            description: "Plateronal laktogen ve kortizol etkisiyle yağ asiti kullanımı artar, karbonhidrat toleransı azalır.",
            additionalInfo: "Gestasyonel diyabet riski bu hormon dengesizliğiyle ilişkilidir.",
          ),
          MaternalFetalPhysiologyAnesthesiaItem(
            title: "TİROİD FONKSİYONLARI VE HCG ETKİSİ",
            description: "HCG ve östrojen etkisiyle tiroid bezi bir miktar büyür ve T3-T4 artar, ancak 'serbest' hormon düzeyleri normal kalır.",
            additionalInfo: "Gebelik ötiroid bir durum olarak devam etmelidir.",
          ),
          MaternalFetalPhysiologyAnesthesiaItem(
            title: "KALSİYUM METABOLİZMASI VE İYONİZE KALSİYUM",
            description: "Toplam kalsiyum düzeyi (albümin düşüşüne bağlı) azalır ancak biyolojik olarak aktif olan iyonize kalsiyum değişmez.",
            additionalInfo: "Kalsiyum homeostasisisi anneden fetüse aktif taşınım nedeniyle hassastır.",
          ),
        ],
      ),
      MaternalFetalPhysiologyAnesthesiaCategory(
        categoryName: 'Kas-İskelet Değişiklikleri',
        items: [
          MaternalFetalPhysiologyAnesthesiaItem(
            title: "LİGAMENTÖZ GEVŞEKLİK VE BEL AĞRISI",
            description: "Relaksin hormonu etkisiyle ligamentlerde gevşeklik oluşur; bel ağrısı ve pelvik instabilite riski artar.",
            additionalInfo: "Lordoz (bel kavisinin artması) denge merkezini değiştiren adaptif bir durumdur.",
          ),
        ],
      ),
      MaternalFetalPhysiologyAnesthesiaCategory(
        categoryName: 'Uteroplasental Dolaşım',
        items: [
          MaternalFetalPhysiologyAnesthesiaItem(
            title: "UTERUS KAN AKIMI VE TERM DEĞERLERİ (600-700 ML/DK)",
            description: "Gebe olmayan uterusta 50 mL/dk olan akım, termde 600-700 mL/dk'ya (kalp debisinin %10-15'i) çıkar.",
            subtitle: "Uteroplasental yatakta otoregülasyon yoktur; damarlar maksimum düzeyde dilatedir",
            additionalInfo: "Uterin arterlerin α-adrenerjik reseptör duyarlılığı gebelikte artmıştır; vazokonstriktörlere hassastır.",
          ),
          MaternalFetalPhysiologyAnesthesiaItem(
            title: "UTERIN KAN AKIMINI AZALTAN KRİTİK FAKTÖRLER",
            description: "Maternal hipotansiyon, şiddetli vazokonstriksiyon ve uterus kontraksiyonları kan akımını kesintiye uğratır.",
            additionalInfo: "Hipotansiyon hem anneyi hem de fetüsü hızlıca riske sokar.",
          ),
          MaternalFetalPhysiologyAnesthesiaItem(
            title: "MATERNAL HİPOTANSİYON TEDAVİSİ VE VAZOPRESSÖRLER",
            description: "Tedavide Efedrin, Fenilefrin ve Metaraminol kullanılabilir; temel amaç damar basıncını fetal perfüzyonu bozmadan korumaktır.",
            additionalInfo: "Fenilefrin güncel pratikte fetal asidoz riskinin daha düşük olması nedeniyle sık tercih edilmektedir.",
          ),
        ],
      ),
      MaternalFetalPhysiologyAnesthesiaCategory(
        categoryName: 'Plasenta Değişimi',
        items: [
          MaternalFetalPhysiologyAnesthesiaItem(
            title: "PLASENTAL DİFÜZYON (GAZLAR VE KÜÇÜK İYONLAR)",
            description: "Oksijen, CO2 ve küçük moleküllü iyonlar plasentayı basit difüzyon kuralları ile geçerler.",
            additionalInfo: "Difüzyon hızı konsantrasyon farkına bağlıdır.",
          ),
          MaternalFetalPhysiologyAnesthesiaItem(
            title: "KOLAYLAŞTIRILMIŞ DİFÜZYON VE GLUKOZ TAŞINIMI",
            description: "Glukoz, plasenta bariyerini kolaylaştırılmış difüzyon (taşıyıcı proteinler) aracılığıyla geçer.",
            additionalInfo: "Enerji ihtiyacı için glukoz geçişi hayati süreklilik arz eder.",
          ),
          MaternalFetalPhysiologyAnesthesiaItem(
            title: "AKTİF TRANSPORT VE AMİNOASİT GEÇİŞİ",
            description: "Aminoasitler, vitaminler ve Kalsiyum/Demir gibi iyonlar enerji harcanarak (aktif transport) fetüse taşınır.",
            additionalInfo: "Bu minerallerin fetüsteki konsantrasyonu anneden daha yüksektir.",
          ),
          MaternalFetalPhysiologyAnesthesiaItem(
            title: "VEZİKÜLER TRANSPORT VE İMMÜNGLOBULİNLER (IG)",
            description: "İmmünglobulinler (IgG) pinositoz yöntemiyle (veziküllere paketlenerek) anneden fetüse geçer ve pasif bağışıklık sağlar.",
            subtitle: "Plasental membrandaki defektler (kanama vb.) Rh uyumsuzluğu riskini doğurur",
            additionalInfo: "Büyük moleküller sadece bu yöntemle geçiş yapabilir.",
          ),
        ],
      ),
      MaternalFetalPhysiologyAnesthesiaCategory(
        categoryName: 'Gaz Değişimi',
        items: [
          MaternalFetalPhysiologyAnesthesiaItem(
            title: "FETAL PAO2 VE OKSİJENASYON SEVİYESİ (30-35 MMHG)",
            description: "Fetüsün arteriyel oksijen basıncı (PaO2) yaklaşık 30-35 mmHg seviyesindedir.",
            additionalInfo: "Düşük PaO2'ye rağmen fetal hemoglobini affinitesi yüksektir.",
          ),
          MaternalFetalPhysiologyAnesthesiaItem(
            title: "FETAL HEMOGLOBİN (HB) SEVİYESİ (15 G/DL)",
            description: "Fetüsteki hemoglobin düzeyi yaklaşık 15 g/dL olup yetişkinden yüksektir.",
            additionalInfo: "Yüksek Hb ve yüksek O2 afinitesi doku beslenmesini garanti altına alır.",
          ),
          MaternalFetalPhysiologyAnesthesiaItem(
            title: "FETAL OKSİJEN TÜKETİMİ (~7 ML/KG/DK)",
            description: "Fetüsün oksijen ihtiyacı vücut ağırlığına oranla yetişkinden yaklaşık 2 kat daha fazladır.",
            additionalInfo: "Bazal metabolizma fetal gelişimi için yüksektir.",
          ),
          MaternalFetalPhysiologyAnesthesiaItem(
            title: "FETÜSÜN ANOKSİYE DAYANIKLILIK SÜRESİ (10 DK)",
            description: "Fetal metabolizma yetişkine kıyasla anoksiye (oksijensizliğe) 10 dakikaya kadar dayanabilme kapasitesine sahiptir.",
            additionalInfo: "Ancak bu süre sonunda kalıcı beyin hasarı başlar.",
          ),
        ],
      ),
      MaternalFetalPhysiologyAnesthesiaCategory(
        categoryName: 'Ajan Geçişi',
        items: [
          MaternalFetalPhysiologyAnesthesiaItem(
            title: "PLASENTADAN KOLAY GEÇEN ANESTEZİK AJANLAR",
            description: "Lipofilik olduğu için hemen hemen tüm IV indüksiyon ajanları ve inhalasyon gazları plasentayı hızla geçer.",
            additionalInfo: "Fetal depozisyon maternal doza bağlıdır.",
          ),
          MaternalFetalPhysiologyAnesthesiaItem(
            title: "PLASENTAYI GEÇEMEYEN AJANLAR (KAS GEVŞETİCİLER)",
            description: "Nöromüsküler blokörler (Sch, rokuronyum vb.) iyonize yapıları nedeniyle plasentayı geçmezler (fetal paralizi yapmazlar).",
            additionalInfo: "Kas gevşeticilerin gebede kullanımı bebek üzerinde motor bir etki yaratmaz.",
          ),
          MaternalFetalPhysiologyAnesthesiaItem(
            title: "LOKAL ANESTETİKLERİN (LA) PLASENTAL GEÇİŞİ",
            description: "Lokal anestetikler zayıf baz yapısında oldukları için plasentayı geçerler; fetal asidoz durumunda 'iyon tuzağı' riski vardır.",
            additionalInfo: "İyon tuzağı, ilacın asidik fetal kanda hapsolup birikmesine neden olur.",
          ),
        ],
      ),
      MaternalFetalPhysiologyAnesthesiaCategory(
        categoryName: 'Uterin Kan Akımına Etkiler',
        items: [
          MaternalFetalPhysiologyAnesthesiaItem(
            title: "PROPOFOL VE BARBİTÜRATLARIN UTERİN AKIMA ETKİSİ",
            description: "İndüksiyon dozlarında (Propofol, Tiyopental) uterin kan akımını hafif derecede düşürürler.",
            additionalInfo: "Kısa süreli etkileri genellikle klinik olarak tolere edilir.",
          ),
          MaternalFetalPhysiologyAnesthesiaItem(
            title: "KETAMİN DOZU VE UTERİN KAN AKIMI (<=1.5 MG/KG)",
            description: "1.5 mg/kg ve altındaki dozlarda uterin akım değişmez; ancak yüksek dozlarda hipertonus yaparak akımı azaltabilir.",
            additionalInfo: "Doz sınırı fetal güvenlik için kritiktir.",
          ),
          MaternalFetalPhysiologyAnesthesiaItem(
            title: "VOLATİL ANESTEZİKLERİN UTERİN PERFÜZYONA ETKİSİ",
            description: "Tüm volatil ajanlar kan basıncını düşürerek uterin akımı azaltabilir; ancak 1 MAK altındaki derişimlerde etki minimaldir.",
            additionalInfo: "Yüksek konsantrasyonlar uterus relaksasyonu (atoni riski) yapar.",
          ),
          MaternalFetalPhysiologyAnesthesiaItem(
            title: "N2O (AZOT PROTÖKSİT) VE UTERİN VAZOKONSTRİKSİYON",
            description: "Tek başına kullanıldığında sempatik stimülasyon yoluyla uterin vazokonstriksiyon (daralma) yapabilir.",
            additionalInfo: "Genellikle diğer ajanlarla kombine kullanılır.",
          ),
          MaternalFetalPhysiologyAnesthesiaItem(
            title: "LİDOKAİNİN UTERİN DAMARLAR ÜZERİNDEKİ ETKİSİ",
            description: "Yüksek dozlarda veya damar içi (IV) kaçışlarda doğrudan uterin arterlerde spazm ve vazokonstriksiyon yapar.",
            additionalInfo: "Kardiyak yan etkiler yanında fetal asidozu tetikleyebilir.",
          ),
          MaternalFetalPhysiologyAnesthesiaItem(
            title: "EPİDURAL ANESTEZİNİN PREEKLAMPTİK HASTADAKİ AVANTAJI",
            description: "Preeklampsili hastalarda epidural anestezi, genel vazospazmı çözerek uterin kan akımını artırıcı etki gösterir.",
            additionalInfo: "Bu durum preeklamptik fetüslerde iyilik halini destekler.",
          ),
        ],
      ),
      MaternalFetalPhysiologyAnesthesiaCategory(
        categoryName: 'Normal Doğum & Anestezi',
        items: [
          MaternalFetalPhysiologyAnesthesiaItem(
            title: "DOĞUM AĞRISININ MATERNAL VENTİLASYON VE O2 TÜKETİMİ ETKİSİ",
            description: "Ağrıya bağlı olarak dakika ventilasyonu %300, oksijen tüketimi ise %60 oranında artar.",
            subtitle: "Maternal PaCO2 şiddetli hiperventilasyonla 20 mmHg'ye kadar düşebilir",
            additionalInfo: "Aşırı düşen CO2, uterin kan damarlarında büzülmeye (hipoksi riski) yol açabilir.",
          ),
          MaternalFetalPhysiologyAnesthesiaItem(
            title: "UTERİN KONTRAKSİYONLAR VE OTO-TRANSFÜZYON ETKİSİ",
            description: "Her kontraksiyonda 300-500 mL kan uterusun sıkışmasıyla sistemik dolaşıma katılır.",
            subtitle: "Doğumdan hemen sonra (postpartum) kalp debisi oto-transfüzyonla %80 oranında artar",
            additionalInfo: "Bu ani yük artışı kalp hastası gebeler için en tehlikeli dönemdir.",
          ),
        ],
      ),
      MaternalFetalPhysiologyAnesthesiaCategory(
        categoryName: 'Doğumda Kullanılan Ajanlar',
        items: [
          MaternalFetalPhysiologyAnesthesiaItem(
            title: "VOLATİL AJANLARIN UTERUS TONUSU ÜZERİNDEKİ ETKİSİ (>0.75 MAK)",
            description: "İnhalasyon ajanları uterusu baskılar; 0.75 MAK üzerindeki dozlar doğum sonrası atoni (kanama) riskini artırır.",
            additionalInfo: "Manuel plasenta çıkartılması gibi durumlarda bu etkiden yararlanılır.",
          ),
          MaternalFetalPhysiologyAnesthesiaItem(
            title: "OPİOİDLERİN DOĞUM SÜRESİ ÜZERİNDEKİ ETKİSİ",
            description: "Yüksek doz sistemik opioid kullanımı doğum eyleminin süresini uzatabilir ve yenidoğanda solunum depresyonu yapabilir.",
            additionalInfo: "Fentanil gibi kısa etkililer daha güvenlidir.",
          ),
          MaternalFetalPhysiologyAnesthesiaItem(
            title: "DOĞUM ANALJEZİSİNDE EPİDURAL KULLANIMI",
            description: "Düşük konsantrasyonlu lokal anestetikler ve opioid kombinasyonları (yürüyen epidural) en güvenli yöntemdir.",
            additionalInfo: "Motor bloğun minimal tutulması hastanın katılımını kolaylaştırır.",
          ),
        ],
      ),
      MaternalFetalPhysiologyAnesthesiaCategory(
        categoryName: 'Vazopressörler',
        items: [
          MaternalFetalPhysiologyAnesthesiaItem(
            title: "ALPHA-1 (α1) ADRENERJİK RESEPTÖRLER VE KONTRAKSİYON",
            description: "Alfa-1 stimülasyonu uterin arterleri büzerek uterus kontraksiyonuna ve potansiyel akım azalmasına neden olur.",
            additionalInfo: "Vazospazm fetal distrese yol açmamalıdır.",
          ),
          MaternalFetalPhysiologyAnesthesiaItem(
            title: "BETA-2 (β2) ADRENERJİK RESEPTÖRLER VE RELAKSASYON",
            description: "Beta-2 stimülasyonu uterus düz kaslarında gevşemeye (relaksasyon) neden olur (tokolitik etki).",
            additionalInfo: "Örn: Ritodrin, Terbütalin bu reseptörler üzerinden çalışır.",
          ),
          MaternalFetalPhysiologyAnesthesiaItem(
            title: "FENİLEFRİNİN UTERİN AKIM ÜZERİNDEKİ ETKİSİ (<40 MCG)",
            description: "Düşük doz (40 mcg altı) Fenilefrin maternal basıncı yükselterek paradoxal olarak uterin kan akımını artırabilir.",
            additionalInfo: "Fenilefrin fetal asidoz riski açısından Efedrin'den daha güvenli kabul edilir.",
          ),
          MaternalFetalPhysiologyAnesthesiaItem(
            title: "EFEDRİNNİN UTERİN KONTRAKSİYON ÜZERİNDEKİ ETKİSİ",
            description: "Efedrin, uterin damarlar üzerinde belirgin bir vazokonstriksiyon (daralma) yapmadan maternal kan basıncını yükseltir.",
            additionalInfo: "Ancak plasentayı geçerek fetal taşikardi yapabilir.",
          ),
        ],
      ),
      MaternalFetalPhysiologyAnesthesiaCategory(
        categoryName: 'Uterotonikler',
        items: [
          MaternalFetalPhysiologyAnesthesiaItem(
            title: "OKSİTOSİN UYGULAMASI VE YAN ETKİLERİ (0.5-8 MU/DK)",
            description: "Uterus kontraksiyonu sağlar; ancak hızlı verilmesi ani hipotansiyon, taşikardi, ritim bozukluğu ve su intoksikasyonuna (ADH etkisi) yol açabilir.",
            additionalInfo: "Su retansiyonu ödeme ve hiponatremiye neden olabilir.",
          ),
          MaternalFetalPhysiologyAnesthesiaItem(
            title: "METİLERGONOVİN (ERGO) VE HİPERTANSİF ETKİ (0.2 MG IM)",
            description: "Doğum sonrası kanama tedavisinde kullanılır ancak şiddetli hipertansiyon yaptığı için HT hastalarında kontrendikedir.",
            subtitle: "Hızlı IV verilmesi koroner spazm ve serebrovasküler olay tetikleyebilir",
            additionalInfo: "Eritrosit yıkımını (hiperbilirubinemi) uyarmaz, sadece düz kas kasar.",
          ),
          MaternalFetalPhysiologyAnesthesiaItem(
            title: "KARBOPROST (PGF2α) VE ASTIM KONTRENDİKASYONU (0.25 MG IM)",
            description: "Karboprost güçlü bir uterotoniktir; ancak bronkospazm yapabileceği için astımlı hastalarda kullanılması risklidir.",
            additionalInfo: "Ayrıca ciddi diyare (ishal) ve kusma yan etkisi yapabilir.",
          ),
        ],
      ),
      MaternalFetalPhysiologyAnesthesiaCategory(
        categoryName: 'Tokolitikler',
        items: [
          MaternalFetalPhysiologyAnesthesiaItem(
            title: "MAGNEZYUM SÜLFAT (MGSO4) UYGULAMA VE TOKOLİZ (4G/2G)",
            description: "Erken doğumu durdurmak ve eklampsi profilaksisi için 4 g yükleme ve 2 g/saat infüzyon şeklinde kullanılır.",
            additionalInfo: "Yenidoğanda kas gevşeticilerin etkisini potansiyalize eder (solunum depresyonu riski).",
          ),
          MaternalFetalPhysiologyAnesthesiaItem(
            title: "BETA-2 (β2) AGONİSTLER (RİTODRİN, TERBÜTALİN)",
            description: "Düz kasları gevşeterek erken doğumu inhibe ederler (tokoliz).",
            additionalInfo: "Yan etki olarak maternal taşikardi ve hiperglisemi yapabilirler.",
          ),
        ],
      ),
      MaternalFetalPhysiologyAnesthesiaCategory(
        categoryName: 'Fetal Dolaşım',
        items: [
          MaternalFetalPhysiologyAnesthesiaItem(
            title: "FETAL OKSİJENLENMİŞ KANIN DOLAŞIM YOLU",
            description: "Plasenta → Vena Kava İnferior (VCI) → Sağ Atriyum → Foramen Ovale → Sol Atriyum → Üst Vücut (Beyin/Kalp).",
            additionalInfo: "Oksijenden en zengin kan en hayati organlara gider.",
          ),
          MaternalFetalPhysiologyAnesthesiaItem(
            title: "FETAL DESATÜRE KANIN DOLAŞIM YOLU",
            description: "Vena Kava Süperior (SVC) → Sağ Ventrikül → Duktus Arteriozus → İnen Aorta → Alt Vücut ve Plasenta.",
            additionalInfo: "Kan plasentaya giderek tekrar oksijenlenir.",
          ),
        ],
      ),
      MaternalFetalPhysiologyAnesthesiaCategory(
        categoryName: 'Doğumda Değişim',
        items: [
          MaternalFetalPhysiologyAnesthesiaItem(
            title: "FETAL SURFAKTAN GELİŞİMİ VE AKCİĞER OLGUNLUĞU",
            description: "Surfaktan yeterli düzeye 34-36. haftalarda ulaşır; erken doğumda RDS riski bu nedenle yüksektir.",
            additionalInfo: "Diyabetik annelerin bebeklerinde surfaktan üretimi gecikebilir.",
          ),
          MaternalFetalPhysiologyAnesthesiaItem(
            title: "DOĞUM SONRASI KARDİYORESPİRATUVAR ADAPTASYON",
            description: "İlk solukla akciğerler açılır, rezistan düşer ve foramen ovale fonksiyonel olarak kapanır.",
            subtitle: "Duktus Arteriozus, kanda PaO2 yükselmesiyle yaklaşık 2-3 haftada anatomik olarak kapanır",
            additionalInfo: "Duktusun açık kalması (PDA) kalıcı pulmoner hipertansiyona yol açabilir.",
          ),
        ],
      ),
    ];
  }
}
