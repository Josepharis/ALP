import 'package:flutter/material.dart';

class NeurophysiologyAnesthesiaItem {
  final String title;
  final String description;
  final String? subtitle;
  final String? additionalInfo;

  NeurophysiologyAnesthesiaItem({
    required this.title,
    required this.description,
    this.subtitle,
    this.additionalInfo,
  });
}

class NeurophysiologyAnesthesiaCategory {
  final String categoryName;
  final List<NeurophysiologyAnesthesiaItem> items;

  NeurophysiologyAnesthesiaCategory({
    required this.categoryName,
    required this.items,
  });
}

class NeurophysiologyAnesthesiaData {
  static List<NeurophysiologyAnesthesiaCategory>
      getNeurophysiologyAnesthesiaData(BuildContext context) {
    return [
      NeurophysiologyAnesthesiaCategory(
        categoryName: 'Beyin Metabolizması',
        items: [
          NeurophysiologyAnesthesiaItem(
            title: "BEYİN OKSİJEN TÜKETİMİ (CMRO2) VE PAYLAŞIMI",
            description: "Beyin, vücut ağırlığının sadece %2'sini oluşturmasına rağmen toplam oksijen tüketiminin %20'sini gerçekleştirir.",
            subtitle: "Erişkinde CMRO2 değeri 3–3,8 mL/100 g/dk'dır; bu enerjinin %60'ı elektriksel aktivite için kullanılır",
            additionalInfo: "Geri kalan %40'lık enerji hücresel bütünlüğün korunması (homeostaz) için harcanır. Bu ayrım, anesteziklerin metabolizmayı baskılama kapasitesinin sınırını belirler.",
          ),
          NeurophysiologyAnesthesiaItem(
            title: "KRİTİK PAO2 DEĞERLERİ VE BİLİNÇ KAYBI",
            description: "Arteriyel oksijen basıncının (PaO2) 30 mmHg'nin altına düşmesi beyin fonksiyonlarını saniyeler içinde durdurur.",
            additionalInfo: "Hipoksinin başlamasından sonra 10 saniye içinde bilinç kaybı gerçekleşirken, 3–8 dakika süren tam anoksi durumunda kalıcı hücresel hasar başlar.",
          ),
          NeurophysiologyAnesthesiaItem(
            title: "BEYİN GLUKOZ TÜKETİM HIZI",
            description: "Beynin temel enerji kaynağı glukozdur ve tüketim hızı ortalama 5 mg/100 g/dk seviyesindedir.",
            additionalInfo: "Glukoz depoları çok kısıtlı olduğu için beyin kesintisiz bir kan akımına ve glukoz sunumuna bağımlıdır.",
          ),
        ],
      ),
      NeurophysiologyAnesthesiaCategory(
        categoryName: 'Serebral Kan Akımı (SKA)',
        items: [
          NeurophysiologyAnesthesiaItem(
            title: "NORMAL SEREBRAL KAN AKIMI VE DOKU DAĞILIMI",
            description: "Serebral kan akımı (SKA) normal şartlarda ortalama 50 mL/100 g/dk (toplamda ~750 mL/dk) düzeyindedir.",
            subtitle: "Gri cevher (80 mL/100 g/dk) beyaz cevhere (20 mL/100 g/dk) göre çok daha yüksek kan akımına sahiptir",
            additionalInfo: "Bu fark, gri cevherdeki nöron yoğunluğunun ve metabolik aktivitenin çok daha yüksek olmasından kaynaklanır.",
          ),
          NeurophysiologyAnesthesiaItem(
            title: "İSKEMİK EŞİKLER VE EEG DEĞİŞİKLİKLERİ",
            description: "Kan akımının azalması beyinde kademeli olarak fonksiyonel ve yapısal yıkıma yol açar.",
            subtitle: "SKA 20–25 mL altına inince EEG yavaşlar, 15–20 mL altında EEG düzleşir",
            additionalInfo: "Akım 10 mL/100 g/dk değerinin altına düştüğünde ise nöronal hücre membran bütünlüğü bozulur ve geri dönüşsüz hasar başlar.",
          ),
          NeurophysiologyAnesthesiaItem(
            title: "TRANSKRANİYAL DOPPLER (TCD) İZLEMİ",
            description: "TCD ile orta serebral arter akım hızı ölçülerek beyin perfüzyonu non-invaziv olarak takip edilebilir.",
            subtitle: "Normal akım hızı 55 cm/sn'dir; 120 cm/sn üzeri değerler vazospazm veya kanamayı işaret edebilir",
            additionalInfo: "Karatid endarterektomi ve vazospazm riski olan SAK vakalarında anlık perfüzyon takibi için altın değerindedir.",
          ),
          NeurophysiologyAnesthesiaItem(
            title: "BEYİN DOKUSU OKSİMETRİSİ VE İSKEMİ SINIRI",
            description: "Beyin doku oksijen basıncı (PbtO2) ölçümü, lokal iskemi takibinde anlık veri sunar.",
            subtitle: "Normal değerler 20–50 mmHg arasındadır; 20 mmHg altı müdahale, 10 mmHg altı ise iskemi kritiğidir",
            additionalInfo: "Kafa travmalı hastalarda beyin perfüzyonunun yeterliliğini değerlendirmede KİB takibiyle birlikte kullanılır.",
          ),
          NeurophysiologyAnesthesiaItem(
            title: "MİKRODİYALİZ VE METABOLİK İSKEMİ TAKİBİ",
            description: "Hücreler arası sıvıdan alınan örneklerle beyin metabolizmasının biyokimyasal analizi yapılır.",
            additionalInfo: "Laktat/piruvat oranındaki artış, dokunun anaerobik metabolizmaya geçtiğinin ve hücre düzeyinde iskeminin başladığının habercisidir.",
          ),
        ],
      ),
      NeurophysiologyAnesthesiaCategory(
        categoryName: 'Serebral Perfüzyon Basıncı (SPB)',
        items: [
          NeurophysiologyAnesthesiaItem(
            title: "SPB FORMÜLÜ VE NORMAL KAFA İÇİ BASINÇ (KİB)",
            description: "Serebral perfüzyon basıncı (SPB), ortalama arteriyel basınç (OAB) ile kafa içi basınç (KİB) arasındaki farktır.",
            subtitle: "KİB normalde 10 mmHg'nin altındadır; formül SPB = OAB – KİB şeklindedir",
            additionalInfo: "Kafa içi kitle veya ödem durumunda KİB yükseldiğinde, SPB'yi korumak için OAB'nin de yükseltilmesi zorunluluğu doğar.",
          ),
          NeurophysiologyAnesthesiaItem(
            title: "SPB KRİTİK DEĞERLERİ VE EEG İLİŞKİSİ",
            description: "Perfüzyon basıncındaki düşüşler beyin fonksiyonlarını doğrudan baskılar.",
            subtitle: "SPB 50 mmHg altına inince EEG yavaşlar, 25–40 mmHg aralığında EEG düzleşir",
            additionalInfo: "SPB'nin 25 mmHg'nin altına inmesi, beyine kanın gidemediği anlamına gelir ve hızla kalıcı hasar gelişir.",
          ),
        ],
      ),
      NeurophysiologyAnesthesiaCategory(
        categoryName: 'Otoregülasyon Mekanizmalar',
        items: [
          NeurophysiologyAnesthesiaItem(
            title: "NORMAL OTOREGÜLASYON SINIRLARI VE ETKİLEYENLER",
            description: "Beyin, OAB 60–160 mmHg aralığında değişse bile kan akımını (SKA) sabit tutma yeteneğine sahiptir.",
            subtitle: "Kronik hipertansiyonu olan hastalarda bu güvenli otoregülasyon sınırı yukarı (sağa) kayar",
            additionalInfo: "Bu denge miyojenik (damar duvarı gerimi) ve metabolik (CO2 ve H birikimi) mekanizmalarla sağlanır. Kafa travması veya şiddetli anestezi altında bu mekanizma bozulabilir.",
          ),
        ],
      ),
      NeurophysiologyAnesthesiaCategory(
        categoryName: 'Karbondioksit (PaCO2) Etkisi',
        items: [
          NeurophysiologyAnesthesiaItem(
            title: "PACO2 ARALIĞI VE SEREBRAL KAN AKIMI İLİŞKİSİ",
            description: "Serebral kan akımı, 20–80 mmHg PaCO2 aralığında karbondioksit basıncı ile doğrusal bir ilişki gösterir.",
            subtitle: "Her 1 mmHg PaCO2 değişimi, SKA'yı yaklaşık 1–2 mL/100 g/dk oranında değiştirir",
            additionalInfo: "Hiperventilasyon (hipokapni) serebral vazokonstriksiyon yaparak KİB'i düşürür. Ancak bu etki 24–48 saat içinde BOS bikarbonat uyumuyla ortadan kalkar.",
          ),
        ],
      ),
      NeurophysiologyAnesthesiaCategory(
        categoryName: 'PaO2, Isı ve Viskozite Etkisi',
        items: [
          NeurophysiologyAnesthesiaItem(
            title: "HİPOKSİ VE HİPEROKSİNİN SKA ÜZERİNDEKİ ETKİSİ",
            description: "PaO2 50 mmHg'nin altına düştüğünde beyin kan akımı katlanarak artmaya başlar.",
            subtitle: "Hiperoksi ise (yüksek oksijen seviyesi) serebral kan akımını yaklaşık %10 oranında azaltabilir",
            additionalInfo: "Hipokside akım artışının temel amacı, azalan oksijen içeriğini miktar olarak daha fazla kan göndererek kompanse etmektir.",
          ),
          NeurophysiologyAnesthesiaItem(
            title: "ISI DEĞİŞİMİNİN METABOLİZMA VE AKIM ÜZERİNDEKİ ROLÜ",
            description: "Vücut ısısındaki her 1°C'lik değişim, serebral kan akımında (SKA) %5–7 oranında paralellik gösteren bir değişikliğe neden olur.",
            subtitle: "Vücut ısısındaki 10°C'lik bir düşüş CMRO2 değerini yaklaşık %50 oranında azaltır",
            additionalInfo: "Beyin ısısı 20°C'ye inerse EEG izoelektrik (sessiz) hale gelir; bu durum derin hipotermik arrest cerrahilerinde beyin koruması sağlar.",
          ),
          NeurophysiologyAnesthesiaItem(
            title: "KAN VİSKOZİTESİ VE HEMATOKRİT OPTİMİZASYONU",
            description: "Serebral perfüzyonun en önemli reolojik belirleyicisi kan viskozitesidir ve ana belirleyici hematokrittir (Hct).",
            subtitle: "Beyne optimal oksijen sunumu ve akışkanlık için en ideal Hct değeri yaklaşık %30 civarıdır",
            additionalInfo: "Düşük Hct (anemi) akışkanlığı artırsa da oksijen taşıma kapasitesini düşürür; yüksek Hct ise akımı yavaşlatarak tromboz riski yaratır.",
          ),
        ],
      ),
      NeurophysiologyAnesthesiaCategory(
        categoryName: 'Kan–Beyin Bariyeri (KBB)',
        items: [
          NeurophysiologyAnesthesiaItem(
            title: "KBB GEÇİŞ KURALLARI VE OSMOTİK DENGE",
            description: "Küçük, yağda çözünen ve iyonize olmayan moleküller KBB'den kolayca geçerken; büyük ve iyonize olanlar geçemez.",
            subtitle: "Su bariyerden serbestçe geçer; bu yüzden elektrolit bozukluklarında beyin osmotik farktan hızla etkilenir",
            additionalInfo: "Travma veya enfeksiyonla KBB bütünlüğü bozulursa, sıvı geçişi osmotik farktan ziyade hidrostatik basınç (tansiyon) farkıyla gerçekleşir ve ödem hızla artar.",
          ),
        ],
      ),
      NeurophysiologyAnesthesiaCategory(
        categoryName: 'Beyin Omurilik Sıvısı (BOS)',
        items: [
          NeurophysiologyAnesthesiaItem(
            title: "BOS ÜRETİM HIZI, HACMİ VE SİRKÜLASYONU",
            description: "BOS, günde yaklaşık 500 mL (saatte 21 mL) hızla üretilir ancak toplam hacmi sürekli 150 mL civarında tutulur.",
            additionalInfo: "Üretimin %70'inden fazlası ventriküller içindeki koroid pleksus tarafından gerçekleştirilir.",
          ),
          NeurophysiologyAnesthesiaItem(
            title: "BOS DOLAŞIM YOLU VE VENTRİKÜLER ANATOMİ",
            description: "BOS, koroid pleksustan başlayarak ventriküler sistem boyunca belirli bir sıra ile akar ve subaraknoid mesafeye geçer.",
            subtitle: "Akış: Lateral ventrikül → Monroe → 3. Ventrikül → Sylvius → 4. Ventrikül → Magendie/Luschka → Sisterna Magna",
            additionalInfo: "Bu dar kanallardan (özellikle Sylvius akuaduktu) herhangi birinde tıkanıklık olması hidrosefaliye yol açar.",
          ),
          NeurophysiologyAnesthesiaItem(
            title: "BOS ÜRETİMİNİ AZALTAN FARMAKOLOJİK AJANLAR",
            description: "Bazı ilaçlar ve anestezikler BOS yapımını baskılayarak KİB yönetiminde yardımcı olabilirler.",
            subtitle: "Asetazolamid, steroidler, spironolakton, furosemid ve izofluran BOS yapımını azaltan başlıca ajanlardır",
            additionalInfo: "Vazokonstriktör ajanlar da koroid pleksus kan akımını azaltarak BOS yapımını dolaylı olarak düşürür.",
          ),
          NeurophysiologyAnesthesiaItem(
            title: "BOS SIVISININ FİZYOKİMYASAL ÖZELLİKLERİ",
            description: "BOS, kan plazmasına göre aktif iyon sekresyonu (başta Sodyum) ile oluşan izotonik bir sıvıdır.",
            additionalInfo: "Düşük protein içeriği ve aktif iyon dengesi sayesinde sinir dokusu için koruyucu ve metabolik dengeleyici rol üstlenir.",
          ),
        ],
      ),
      NeurophysiologyAnesthesiaCategory(
        categoryName: 'Kafa İçi Basıncı (KİB)',
        items: [
          NeurophysiologyAnesthesiaItem(
            title: "KİB NORMAL DEĞERİ VE MONİTÖRİZASYON",
            description: "Sağlıklı bir erişkinde supin pozisyonda normal kafa içi basıncı 10 mmHg'nin altındadır.",
            additionalInfo: "KİB takibi ventriküler kateter (altın standart) veya parankimal sensörler ile invaziv olarak yapılır.",
          ),
          NeurophysiologyAnesthesiaItem(
            title: "KAFA İÇİ İÇERİK DAĞILIMI VE HERNİASYON RİSKİ",
            description: "Kafa içi hacmin %80'ini beyin dokusu, %12'sini kan ve %8'ini BOS oluşturur (Monro-Kellie doktrini).",
            subtitle: "Bu hacimlerden birindeki artış diğerleri tarafından kompanse edilemezse elastans sınırı aşılır ve herniasyon başlar",
            additionalInfo: "Kafa içi elastansın azalması, küçük hacim artışlarının çok yüksek KİB fırlamalarına neden olmasına yol açar.",
          ),
        ],
      ),
      NeurophysiologyAnesthesiaCategory(
        categoryName: 'Volatil Ajanların Serebral Etkileri',
        items: [
          NeurophysiologyAnesthesiaItem(
            title: "VOLATİL AJANLARIN METABOLİZMA (CMRO2) ÜZERİNDEKİ ETKİSİ",
            description: "Uçucu anestezikler beyin metabolik hızını (CMRO2) doz bağımlı olarak azaltırlar.",
            subtitle: "Metabolizmayı en güçlü izofluran, en az ise halotan baskılar",
            additionalInfo: "CMRO2'deki bu azalma, anesteziklerin nöronal elektriksel aktiviteyi baskılamasından kaynaklanır.",
          ),
          NeurophysiologyAnesthesiaItem(
            title: "VOLATİL AJANLARIN SEREBRAL KAN AKIMI (SKA) ÜZERİNDEKİ ETKİSİ",
            description: "Uçucu anestezikler, metabolizmayı düşürmelerine rağmen serebral vazodilatasyon yaparak SKA'yı artırırlar.",
            subtitle: "SKA'yı en çok halotan (%200 artış), en az ise sevofluran artırır",
            additionalInfo: "İzofluran orta düzeyde (%20) bir akım artışına neden olur. Bu ajanların kafa içi kitlelerde kullanımı riskli olabilir.",
          ),
          NeurophysiologyAnesthesiaItem(
            title: "OTOREGÜLASYONUN BOZULMASI VE LÜKS PERFÜZYON",
            description: "Volatil ajanlar beyin otoregülasyonunu bozarak metabolik ihtiyacın ötesinde bir akıma (lüks perfüzyon) neden olurlar.",
            subtitle: "Otoregülasyonu en şiddetli bozan ajan halotan iken, sevofluran düşük dozlarda (<1 MAC) bu dengeyi daha iyi korur",
            additionalInfo: "Lüks perfüzyon durumu, KKB ve KİB dengesi bozuk hastalarda istenmeyen hacim artışlarına yol açabilir.",
          ),
          NeurophysiologyAnesthesiaItem(
            title: "VOLATİL AJANLARIN BOS DİNAMİKLERİNE ETKİSİ",
            description: "Farklı inhalasyon ajanları BOS yapımı ve emilimi üzerinde farklı etkiler gösterir.",
            subtitle: "İzofluran BOS emilimini artırırken, Desfluran BOS yapımını artırıp emilimi azaltır",
            additionalInfo: "Halotan ise hem BOS oluşumunu hem de emilimini baskılayarak net bir dezavantaj yaratabilir.",
          ),
        ],
      ),
      NeurophysiologyAnesthesiaCategory(
        categoryName: 'N2O ve İV Ajanların Nörofizyolojik Etkileri',
        items: [
          NeurophysiologyAnesthesiaItem(
            title: "AZOT PROTOKSİT (N2O) VE KAFA İÇİ BASINÇ",
            description: "N2O genellikle nötr kabul edilse de tek başına kullanıldığında serebral vazodilatasyon yaparak KİB'i artırabilir.",
            subtitle: "Diğer ajanlarla (barbitürat/opioid) kombine edildiğinde bu KİB artırıcı etkisi minimalleşir",
            additionalInfo: "Kafa içi hava (pnömosefali) şüphesi olan vakalarda hava hacmini artıracağı için KESİNLİKLE kontrendikedir.",
          ),
          NeurophysiologyAnesthesiaItem(
            title: "BARBİTÜRATLAR VE 'ROBİN HOOD' FENOMENİ",
            description: "Barbitüratların SKA'yı baskılaması sonucu, kanın iskemik (vazodilate) bölgelere yönlenmesine 'ters çalma' veya Robin Hood fenomeni denir.",
            subtitle: "CMRO2'yi büyük oranda düşürerek nöronal koruma sağlarlar ve BOS emilimini artırırlar",
            additionalInfo: "SKA/CMRO2 oranını koruyarak KİB'i düşürmede en etkili ajanlar arasındadırlar.",
          ),
          NeurophysiologyAnesthesiaItem(
            title: "OPİOİDLERİN NÖROANESTEZİDEKİ YERİ",
            description: "Opioidlerin beyin metabolizması ve kan akımı üzerindeki doğrudan etkileri minimaldir.",
            subtitle: "Solunum depresyonu yapıp PaCO2'yi yükseltmedikleri sürece KİB üzerine güvenlidirler",
            additionalInfo: "Ancak opioidlere bağlı gelişebilecek ani hipotansiyon, SPB'yi (perfüzyon basıncı) kritik düzeylere düşürebilir.",
          ),
          NeurophysiologyAnesthesiaItem(
            title: "ETOMİDAT VE EPİLEPTİK ODAK ETKİLEŞİMİ",
            description: "Etomidat, CMRO2 ve BOS yapımını azaltırken epileptik odakları stimüle edebilir (prokonvülsan).",
            additionalInfo: "Elektroşok tedavisi sırasında nöbet süresini uzatmak için kullanılabilse de epileptik cerrahisinde dikkatli olunmalıdır.",
          ),
          NeurophysiologyAnesthesiaItem(
            title: "PROPOFOLÜN İDEAL NÖROANESTEZİK ÖZELLİKLERİ",
            description: "Propofol; CMRO2, SKA ve KİB'i eş zamanlı düşürerek nöroanestezi için en ideal indüksiyon/idame ajanlarından biri haline gelir.",
            additionalInfo: "Hızlı derlenme ve serebral otoregülasyonu koruma kapasitesi sayesinde nöroşirürjide yaygın kullanılır.",
          ),
          NeurophysiologyAnesthesiaItem(
            title: "BENZODİAZEPİNLER VE SEREBRAL ETKİLERİ",
            description: "GABA reseptörleri üzerinden hafif derecede CMRO2 ve SKA azalması yaparlar.",
            additionalInfo: "Ölçekli dozlarda KİB üzerine etkileri minimaldir ancak hemodinamik olarak instabil hastalarda perfüzyon basıncını bozabilirler.",
          ),
          NeurophysiologyAnesthesiaItem(
            title: "KETAMİNİN NÖROPROTEKTİF VE SKA ETKİLERİ",
            description: "Ketamin SKA'yı %50–60 oranında artırırken NMDA reseptör blokajı ile nöroprotektif etki gösterir.",
            subtitle: "Eskiden KİB artırdığı için kaçınılırdı, ancak güncel çalışmalar kontrollü kullanımının güvenli olabileceğini göstermektedir",
            additionalInfo: "BOS emilimini azaltması, kafa içi kitlesi olan hastalarda halen dikkatli olmayı gerektirir.",
          ),
          NeurophysiologyAnesthesiaItem(
            title: "LİDOKAİNİN BEYİN KORUYUCU ÖZELLİKLERİ",
            description: "İntravenöz lidokain CMRO2, SKA ve KİB değerlerini hafifçe düşürür.",
            additionalInfo: "Membran stabilize edici etkisi ve serbest radikal süpürücü rolüyle nöroprotektif potansiyele sahiptir.",
          ),
        ],
      ),
      NeurophysiologyAnesthesiaCategory(
        categoryName: 'Vazopressörler ve Vazodilatörler',
        items: [
          NeurophysiologyAnesthesiaItem(
            title: "VAZOPRESSÖRLERİN SKA VE OTOREGÜLASYON ETKİLEŞİMİ",
            description: "Otoregülasyonun korunduğu sağlıklı bir beyinde, vazopressörler serebral kan akımını anlamlı ölçüde değiştirmezler.",
            subtitle: "Beta-1 agonistler (Dopamin vb.) KBB bozulmuşsa CMR ve SKA'yı artırabilir",
            additionalInfo: "Alfa-2 agonistler (Deksmedetomidin) ise beyinde bir miktar vazokonstriksiyon yaparak KİB üzerinde olumlu etki yaratabilir.",
          ),
          NeurophysiologyAnesthesiaItem(
            title: "VAZODİLATÖRLERİN KİB ÜZERİNDEKİ OLUMSUZ ETKİSİ",
            description: "Nitrogliserin veya nitroprusid gibi direkt vazodilatörler serebral damarları genişleterek SKA ve KİB'i artırırlar.",
            additionalInfo: "KONTRENDİKASYON: Kafa içi basıncı zaten yüksek olan hastalarda bu ajanlar herniasyonu tetikleyebileceği için çok dikkatli olunmalıdır.",
          ),
        ],
      ),
      NeurophysiologyAnesthesiaCategory(
        categoryName: 'Nöromüsküler Bloker (NMB) Ajanlar',
        items: [
          NeurophysiologyAnesthesiaItem(
            title: "NMB AJANLARIN SEREBRAL FİZYOLOJİYE DOLAYLI ETKİLERİ",
            description: "Kas gevşeticilerin beyin fizyolojisi üzerinde doğrudan bir etkisi yoktur; etkileri yan etkiler üzerinden gelişir.",
            subtitle: "Histamin salan ajanlar (Atracurium vb.) vazodilatasyon yaparak KİB'i artırabilir",
            additionalInfo: "Süksinilkolin fasikülasyonları SKA ve KİB artışına neden olabilir; bu durum cerrahi öncesi uygun dozda NMB ile önlenmelidir.",
          ),
        ],
      ),
      NeurophysiologyAnesthesiaCategory(
        categoryName: 'Beyin Koruma Stratejileri',
        items: [
          NeurophysiologyAnesthesiaItem(
            title: "HİPOTERMİ VE METABOLİK BASKILAMA",
            description: "Serebral metabolizmayı baskılayarak beyni korumada en etkili yöntem kontrollü hipotermidir.",
            additionalInfo: "Her 10°C'lik ısı düşüşü beyin oksijen ihtiyacını %50 oranında azaltarak iskemik toleransı artırır.",
          ),
          NeurophysiologyAnesthesiaItem(
            title: "ANESTEZİK AJANLARLA ELEKTRİKSEL SESSİZLİK",
            description: "Yüksek doz barbitürat, propofol veya izofluran kullanımı EEG'de elektriksel sessizlik yaratarak ATP tüketimini minimize eder.",
            additionalInfo: "Bu sayede iskemi riski olan cerrahilerde hücrelerin 'bakım (maintenance)' enerjisi korunmuş olur.",
          ),
          NeurophysiologyAnesthesiaItem(
            title: "KETAMİN VE NMDA BLOKAJI İLE KORUMA",
            description: "Ketamin, eksitotoksik hücre ölümünü (glutamat aracılı) NMDA reseptörlerini bloke ederek engeller.",
            additionalInfo: "Özellikle akut hasar sonrası gelişen ikincil hasar süreçlerini yavaşlatmada potansiyel koruyucu etkiye sahiptir.",
          ),
          NeurophysiologyAnesthesiaItem(
            title: "NİMODİPİN VE VAZOSPAZMDAN KORUNMA",
            description: "Kalsiyum kanal blokeri olan nimodipin, subaraknoid kanama sonrası gelişebilecek serebral vazospazmı önlemede spesifiktir.",
            additionalInfo: "Kan akımını artırarak ikincil iskemik inmeleri (DCI) önlemede altın standarttır.",
          ),
          NeurophysiologyAnesthesiaItem(
            title: "GENEL SEREBRAL KORUMA ÖNLEMLERİ (GLİSEMİ, KARBİ)",
            description: "Beyin korumasında en temel ancak en önemli adımlar fizyolojik stabilitenin korunmasıdır.",
            subtitle: "Kan şekeri <180 mg/dL tutulmalı (hiperglisemi iskemik hasarı artırır) ve normokarbi sağlanmalıdır",
            additionalInfo: "SPB normal veya hafif yüksek tutulmalı, venöz basınç ve KİB artışına neden olacak her türlü engelden (boyun bükülmesi vb.) kaçınılmalıdır.",
          ),
        ],
      ),
      NeurophysiologyAnesthesiaCategory(
        categoryName: 'EEG ve Uyarılmış Potansiyel Parametreleri',
        items: [
          NeurophysiologyAnesthesiaItem(
            title: "ANESTEZİ ALTINDA EEG PATERN DEĞİŞİKLİKLERİ",
            description: "Çoğu anestezik doz artışıyla birlikte önce EEG'de bir aktivasyon (beta), ardından progresif bir depresyon yapar.",
            subtitle: "İzofluran izoelektrik EEG yapabilirken, Sevofluran ve Desfluran burst-supresyon paterni oluşturur",
            additionalInfo: "Bu paternler anestezi derinliği takibinde (BIS vb.) referans değerler olarak kullanılır.",
          ),
          NeurophysiologyAnesthesiaItem(
            title: "OPİOİD VE KETAMİNİN EEG ÜZERİNDEKİ KARAKTERİSTİK ETKİLERİ",
            description: "Opioidler doza bağımlı yavaşlama yaparken ketamin çok karakteristik bir yüksek amplitüdlü aktivite yapar.",
            subtitle: "Ketamin EEG'de teta ve gama dalgalarında artış yaparak klasik anestezi takibini zorlaştırabilir",
            additionalInfo: "Ketamin etkisi altındaki EEG, derin anestezide bile 'yüzeyel' gibi görünebilir.",
          ),
          NeurophysiologyAnesthesiaItem(
            title: "UYARILMIŞ POTANSİYELLER (EP) VE LATENS ÖZELLİKLERİ",
            description: "Merkezi sinir sisteminin dış uyarılara (ses, ışık, dokunma) verdiği elektriksel cevabın kaydedilmesidir.",
            subtitle: "Kısa latensli cevaplar beyin sapı ve sinir iletimini gösterirken; orta ve uzun latensli cevaplar kortikal aktiviteyi yansıtır",
            additionalInfo: "Kortikal cevaplar (SSEP, MEP vb.) anestezik ajanların baskılanmasına karşı alt merkezlere göre çok daha hassastır.",
          ),
        ],
      ),
    ];
  }
}
