import 'package:flutter/material.dart';

class AcidBaseManagementItem {
  final String title;
  final String description;
  final String? subtitle;
  final String? additionalInfo;

  AcidBaseManagementItem({
    required this.title,
    required this.description,
    this.subtitle,
    this.additionalInfo,
  });
}

class AcidBaseManagementCategory {
  final String categoryName;
  final List<AcidBaseManagementItem> items;

  AcidBaseManagementCategory({required this.categoryName, required this.items});
}

class AcidBaseManagementData {
  static List<AcidBaseManagementCategory> getAcidBaseManagementData(
    BuildContext context,
  ) {
    return [
      AcidBaseManagementCategory(
        categoryName: 'Tanımlar',
        items: [
          AcidBaseManagementItem(
            title: 'BRÖNSTED–LOWRY ASİT-BAZ TANIMI',
            description: 'Asitleri bir solüsyona hidrojen iyonu (H+) veren madde, bazları ise hidrojen iyonu alan madde olarak tanımlar.',
            additionalInfo: 'Klinik pratikte asit-baz dengesini açıklayan en temel ve geçerli tanımdır.',
          ),
          AcidBaseManagementItem(
            title: 'ARHENİUS ASİT-BAZ TANIMI',
            description: 'Sulu çözeltilerde hidrojen iyonu (H+) hızı açığa çıkaranlar asit, hidroksit (OH-) iyonu açığa çıkaranlar bazdır.',
            additionalInfo: 'Klasik kimya tanımıdır; sulu ortamlar dışında sınırlı geçerliliği vardır.',
          ),
          AcidBaseManagementItem(
            title: 'GÜÇLÜ İYON FARKI (SID)',
            description: '(Sodyum + Potasyum + Kalsiyum + Magnezyum) ile (Klorür + Laktat) arasındaki farktır.',
            additionalInfo: 'Stewart yaklaşımı ile plazma pH\'ının en önemli belirleyicileri arasında yer alır.',
          ),
          AcidBaseManagementItem(
            title: 'FİZYOLOJİK SOLÜSYONLARDA [H+]İ BELİRLEYİCİLERİ',
            description: 'Hidrojen iyonu konsantrasyonu 3 temel değişken ile belirlenir: SID, PCO2 ve ATOT.',
            subtitle: 'ATOT zayıf asitlerin toplamını ifade eder',
            additionalInfo: 'Bu değişkenlerdeki değişimler ikincil olarak bikarbonat düzeyini etkiler.',
          ),
        ],
      ),
      AcidBaseManagementCategory(
        categoryName: 'Tampon Sistemleri',
        items: [
          AcidBaseManagementItem(
            title: 'BİKARBONAT TAMPON SİSTEMİ',
            description: 'H2O + CO2 ↔ H2CO3 ↔ H+ + HCO3- denklemi üzerinden çalışan en önemli ekstrasellüler tampon sistemidir.',
            additionalInfo: 'Solunumsal ve renal sistemler aracılığıyla dinamik olarak kontrol edilir.',
          ),
          AcidBaseManagementItem(
            title: 'HEMOGLOBİN (HB) TAMPON GÜCÜ',
            description: 'Histidinden zengin yapısı ve 6.8 pKa değeri ile en güçlü nonkarbonik tampon sistemidir.',
            additionalInfo: 'Kandaki hidrojen iyonu yükünün büyük bir kısmını tamponlar.',
          ),
          AcidBaseManagementItem(
            title: 'İNTRASELLÜLER PROTEİN VE FOSFAT TAMPONLARI',
            description: 'Hücre içi pH stabilitesini sağlayan ancak etkisi dakikalar/saatler sonra ortaya çıkan geç etkili tamponlardır.',
            additionalInfo: 'Hücre içi asit-baz dengesinin korunmasında kritik rol oynarlar.',
          ),
          AcidBaseManagementItem(
            title: 'AMONYAK TAMPON SİSTEMİ',
            description: 'Proksimal tübülde glutamin deaminasyonu sonucu oluşur; kronik asidozda hayati öneme sahiptir.',
            additionalInfo: 'Böbreğin asit atım kapasitesini artıran en önemli adaptasyon mekanizmasıdır.',
          ),
        ],
      ),
      AcidBaseManagementCategory(
        categoryName: 'Solunumsal Kompansasyon',
        items: [
          AcidBaseManagementItem(
            title: 'PACO2 DEĞİŞİMİ VE VENTİLASYON YANITI',
            description: 'PaCO2\'deki her 1 mmHg\'lık artış, ventilasyonu yaklaşık 1–4 L/dk aralığında artırır.',
            additionalInfo: 'En hızlı devereye giren ve pH\'ı dengelemeye çalışan kompansasyon yöntemidir.',
          ),
          AcidBaseManagementItem(
            title: 'METABOLİK ASİDOZDA SOLUNUMSAL YANIT',
            description: 'Bikarbonat düzeyindeki her 1 mEq/L\'lik düşüşe karşılık PaCO2 yaklaşık 1–1.5 mmHg düşürülür.',
            additionalInfo: 'Kompansasyonun hızı ve derinliği solunum merkezinin duyarlılığına bağlıdır.',
          ),
          AcidBaseManagementItem(
            title: 'METABOLİK ALKALOZDA SOLUNUMSAL YANIT',
            description: 'Bikarbonattaki her 1 mEq/L\'lik artış, PaCO2 düzeyini 0.25–1 mmHg aralığında yükseltir.',
            subtitle: 'Kompansasyonel PaCO2 yükselmesi genellikle 55 mmHg değerini geçmez',
            additionalInfo: 'Hipoventilasyon ile gerçekleşen bu yanıtın sınırı hipoksemi riskidir.',
          ),
        ],
      ),
      AcidBaseManagementCategory(
        categoryName: 'Renal Kompansasyon',
        items: [
          AcidBaseManagementItem(
            title: 'ASİDOZ DURUMUNDA RENAL YANIT',
            description: 'Böbrekler bikarbonat reabsorbsiyonunu artırır; titredilebilir asit ve amonyak oluşumu hızlanır.',
            subtitle: 'Bikarbonat reabsorbsiyonunun %80\'i proksimal, %20\'si distal tübülde gerçekleşir',
            additionalInfo: 'Renal kompansasyon sisteminin tam etkisi 24-48 saat sonra belirginleşir.',
          ),
          AcidBaseManagementItem(
            title: 'ALKALOZ DURUMUNDA RENAL YANIT',
            description: 'Vücut pH\'ını düşürmek amacıyla renal yolla bikarbonat atılımı (ekstresyonu) artırılır.',
            additionalInfo: 'Klorür eksikliği varlığında böbrek alkalozu kompense edemeyebilir.',
          ),
          AcidBaseManagementItem(
            title: 'BAZ AÇIĞI (BASE EXCESS)',
            description: 'Pozitif değerler alkalozu, negatif değerler ise asidozu temsil eden bir ölçüdür.',
            subtitle: 'pH 7.40 ve PaCO2 40 mmHg değerleri baz alınarak metabolik bileşen belirlenir',
            additionalInfo: 'Sadece metabolik durum hakkında bilgi veren, solunumdan bağımsız bir parametredir.',
          ),
        ],
      ),
      AcidBaseManagementCategory(
        categoryName: 'Asidoz Fizyolojik Etkileri',
        items: [
          AcidBaseManagementItem(
            title: 'ASİDOZ VE SEMPATİK AKTİVİTE İLİŞKİSİ',
            description: 'pH düştüğünde sempatik aktivite baskılanır; özellikle pH <7.20 düzeyinde bu etki belirgindir.',
            additionalInfo: 'Katekolaminlerin etkinliği azalır; kardiyak kontraktilite düşebilir.',
          ),
          AcidBaseManagementItem(
            title: 'ASİDOZDA OKSİJEN DİSOSYASYON EĞRİSİ',
            description: 'pH düşüşü eğriyi sağa kaydırsa da, akut şiddetli asidozda doku hipoksisi riski artabilir.',
            additionalInfo: 'Bohr etkisi oksijen sunumunu etkileyen ana faktördür.',
          ),
          AcidBaseManagementItem(
            title: 'ASİDOZ VE KATEKOLAMİN YANITI',
            description: 'Asidik ortam eksojen ve endojen katekolaminlerin reseptör duyarlılığını önemli ölçüde azaltır.',
            additionalInfo: 'Vazopressör tedaviye direnç gelişen hastalarda pH düzeltilmelidir.',
          ),
          AcidBaseManagementItem(
            title: 'ASİDOZ VE POTASYUM DENGESİ',
            description: 'Vücut pH değerindeki her 0.1 birimlik düşüş, potasyumu serumda 0.6 mEq/L artırır.',
            additionalInfo: 'Hücre içi hidrojen girişi karşılığında dışarıya potasyum çıkışı olur.',
          ),
        ],
      ),
      AcidBaseManagementCategory(
        categoryName: 'Solunumsal Asidoz',
        items: [
          AcidBaseManagementItem(
            title: 'AKUT SOLUNUMSAL ASİDOZ',
            description: 'PaCO2\'deki her 10 mmHg\'lık akut yükseliş, bikarbonatta 1 mEq/L\'lik bir artış sağlar.',
            additionalInfo: 'Bu yanıt renal değil, sadece kimyasal tamponlama kaynaklıdır.',
          ),
          AcidBaseManagementItem(
            title: 'KRONİK SOLUNUMSAL ASİDOZ',
            description: 'PaCO2\'deki her 10 mmHg\'lık kronik yükseliş, böbreklerin etkisiyle bikarbonatı 4 mEq/L artırır.',
            additionalInfo: 'Uzun süreli kompansasyon pH\'ın normale yaklaşmasını sağlar.',
          ),
          AcidBaseManagementItem(
            title: 'SOLUNUMSAL ASİDOZDA TEDAVİ YETERSİZLİĞİ',
            description: 'CO2 üretimi azaltılmalı ve ventilasyon artırılmalıdır; IV bikarbonat kullanımı sınırlıdır.',
            subtitle: 'IV NaHCO3 sadece pH <7.10 ve HCO3 <15 ise endikedir',
            additionalInfo: 'Hatalı bikarbonat kullanımı paradoksal serebral asidoza neden olabilir.',
          ),
        ],
      ),
      AcidBaseManagementCategory(
        categoryName: 'Metabolik Asidoz',
        items: [
          AcidBaseManagementItem(
            title: 'ANYON AÇIĞI (ANION GAP)',
            description: 'Sodyum – (Klorür + Bikarbonat) formülü ile hesaplanan ve normali 7–14 mEq/L olan değerdir.',
            subtitle: 'Anyon açığının 30 mEq/L üzerinde olması yüksek anyon açıklı asidozu doğrular',
            additionalInfo: 'Ölçülemeyen negatif yüklü moleküllerin (laktat, keton vb.) varlığını gösterir.',
          ),
          AcidBaseManagementItem(
            title: 'YÜKSEK ANYON AÇIKLI ASİDOZ NEDENLERİ',
            description: 'Laktik asidoz, ketoasidoz, kronik böbrek yetmezliği (<20 GFR) ve toksin birikimleri ana nedenlerdir.',
            subtitle: 'Toksinler: Salisilat, metanol, etilen glikol',
            additionalInfo: 'Laktat düzeyi perfüzyon bozukluklarının en önemli göstergesidir.',
          ),
          AcidBaseManagementItem(
            title: 'NORMAL ANYON AÇIKLI ASİDOZ NEDENLERİ',
            description: 'Genellikle gastrointestinal sistemden bikarbonat kaybı (diyare) sonucu oluşur.',
            subtitle: 'Renal Tübüler Asidoz (RTA Tip I–II–IV) ve dilüsyonel durumlar diğer nedenlerdir',
            additionalInfo: 'Bikarbonat kaybı artan klorür ile dengelenir (hiperkloremik asidoz).',
          ),
          AcidBaseManagementItem(
            title: 'METABOLİK ASİDOZDA TEDAVİ YAKLAŞIMI',
            description: 'Tedavi sırasında öncelik solunumsal durumun düzeltilmesine verilmeli; pH <7.20 ise NaHCO3 düşünülmelidir.',
            subtitle: 'NaHCO3 dozu (1 mEq/kg) veya (Baz açığı x %30 x kilo) formülü ile hesaplanır',
            additionalInfo: 'Uygulama sonrası kan gazı ile etkinliğin kontrolü şarttır.',
          ),
        ],
      ),
      AcidBaseManagementCategory(
        categoryName: 'Asidoz Anestezik Yön',
        items: [
          AcidBaseManagementItem(
            title: 'ANESTEZİ VE MERKEZİ SİNİR SİSTEMİ',
            description: 'Asidoz MSS depresyonuna ve havayolu koruyucu reflekslerinde azalmaya neden olur.',
            additionalInfo: 'Cerrahi stres cevabını bozabilir.',
          ),
          AcidBaseManagementItem(
            title: 'ANESTEZİ VE OPİOİD ETKİLEŞİMİ',
            description: 'Düşük pH düzeylerinde opioidlerin noniyonize formu artarak etkilerini güçlendirir.',
            additionalInfo: 'Daha derin solunumsal depresyon riskine karşı dikkatli olunmalıdır.',
          ),
          AcidBaseManagementItem(
            title: 'ANESTEZİ VE KATEKOLAMİN CEVABI',
            description: 'Asidik ortam cerrahi sırasında sempatik yanıtı ve katekolamin etkinliğini baskılar.',
            additionalInfo: 'Dirençli hipotansiyon tablolarına hazırlıklı olunmalıdır.',
          ),
          AcidBaseManagementItem(
            title: 'ASİDOZ VE SÜKSİNLİKOLİN RİSKİ',
            description: 'Asidoza eşlik eden hiperkalemi varlığında süksinilkolin kullanımı fatal olabilir; kontrendikedir.',
            additionalInfo: 'Aritmi ve kardiyak arrest riskini tetikleyebilir.',
          ),
        ],
      ),
      AcidBaseManagementCategory(
        categoryName: 'Alkaloz Fizyolojik Etkileri',
        items: [
          AcidBaseManagementItem(
            title: 'ALKALOZDA OKSİJEN DİSOSYASYON EĞRİSİ',
            description: 'PH artışı eğriyi sola kaydırarak oksijenin dokulara bırakılmasını zorlaştırır.',
            additionalInfo: 'Doku düzeyinde hücresel hipoksiye zemin hazırlayabilir.',
          ),
          AcidBaseManagementItem(
            title: 'ALKALOZ VE ELEKTROLİT DEĞİŞİKLİKLERİ',
            description: 'Alkaloz hipokalemiye neden olurken iyonize kalsiyum (Ca2+) düzeyini de düşürür.',
            additionalInfo: 'Kas krampları ve nöromüsküler irritabilite görülebilir.',
          ),
        ],
      ),
      AcidBaseManagementCategory(
        categoryName: 'Solunumsal Alkaloz',
        items: [
          AcidBaseManagementItem(
            title: 'SOLUNUMSAL ALKALOZDA KOMPANSASYON',
            description: 'PaCO2\'deki her 10 mmHg\'lık düşüş karşılığında böbrekler bikarbonatı 2–5 mEq/L azaltır.',
            additionalInfo: 'Böbreğin bu kompanze edici yanıtı diğerleri gibi geç devreye girer.',
          ),
          AcidBaseManagementItem(
            title: 'SOLUNUMSAL ALKALOZDA TEDAVİ PRENSİPLERİ',
            description: 'Öncelikle hiperventilasyonun nedeni (ağrı, anksiyete vb.) düzeltilmelidir.',
            subtitle: 'pH >7.60 değerlerinde nadiren HCl veya arginin HCl gibi asidifikasyon ajanları gerekebilir',
            additionalInfo: 'Nedene yönelik yaklaşım en kesin çözümdür.',
          ),
        ],
      ),
      AcidBaseManagementCategory(
        categoryName: 'Metabolik Alkaloz',
        items: [
          AcidBaseManagementItem(
            title: 'KLORÜR DUYARLI METABOLİK ALKALOZ',
            description: 'İdrar klorür düzeyi <10 mEq/L\'dir; kusma ve gastrik drenaj gibi sıvı kayıplarından kaynaklanır.',
            subtitle: 'Tedavide NaCl ve KCl replasmanı oldukça efektiftir',
            additionalInfo: 'Hücre dışı sıvı hacminin yerine konması temeldir.',
          ),
          AcidBaseManagementItem(
            title: 'KLORÜR DİRENÇLİ METABOLİK ALKALOZ',
            description: 'İdrar klorürü >20 mEq/L olup mineralokortikoid fazlalığından kaynaklanır.',
            subtitle: 'Tedavide spironolakton ve altta yatan nedenin çözümü gerekir',
            additionalInfo: 'Hacim replasmanına yanıt vermez.',
          ),
          AcidBaseManagementItem(
            title: 'METABOLİK ALKALOZ YAPAN DİĞER NEDENLER',
            description: 'Kan ürünleri (sitrat), Na-penisilin kullanımı ve refeeding sendromu alkalozu tetikleyebilir.',
            additionalInfo: 'Transfüzyon sonrası görülen laktat ve sitrat bikarbonata dönüşerek etki eder.',
          ),
        ],
      ),
      AcidBaseManagementCategory(
        categoryName: 'Alkaloz Anestezik Yön',
        items: [
          AcidBaseManagementItem(
            title: 'ANESTEZİ VE SEREBRAL KAN AKIMI',
            description: 'Alkaloz serebral vazokonstrüksiyona yol açarak beyin kan akımını azaltır.',
            additionalInfo: 'Terapötik amaçlı kısa vadeli hiperventilasyon bu prensiple çalışır.',
          ),
          AcidBaseManagementItem(
            title: 'ALKALOZDA ARİTMİ RİSKİ',
            description: 'Hipokalemi ile birleşen alkalozda kardiyak aritmi riski belirgin şekilde artar.',
            additionalInfo: 'Hücre membran potansiyeli bozularak ektopik odaklar oluşabilir.',
          ),
          AcidBaseManagementItem(
            title: 'ALKALEMA VE NONDEPOLARİZAN BLOK',
            description: 'Alkalemi, nondepolarizan nöromüsküler blokörlerin etkinliğini artırabilir veya süresini uzatabilir.',
            additionalInfo: 'Derlenme periyodunda monitörizasyon önemlidir.',
          ),
          AcidBaseManagementItem(
            title: 'ALKALOZ VE OPİOİD DEPRESYONU',
            description: 'Solunumsal alkaloz (hipokapni), opioidlerin neden olduğu solunum depresyonunu derinleştirir.',
            additionalInfo: 'Aneztesi sonrası derlenmede gecikmeye yol açabilir.',
          ),
        ],
      ),
      AcidBaseManagementCategory(
        categoryName: 'Kan Gazı Ölçümü',
        items: [
          AcidBaseManagementItem(
            title: 'VENÖZ PAO2 DEĞERİ',
            description: 'Genellikle 40 mmHg civarındadır ve dokulardaki oksijen ekstraksiyonunu yansıtır.',
            additionalInfo: 'Dokulara sunulan oksijenin yetersizliğini gösteren bir belirteç olabilir.',
          ),
          AcidBaseManagementItem(
            title: 'VENÖZ PACO2 DEĞERİ',
            description: 'Arteriyel PaCO2 değerinden yaklaşık 4–6 mmHg daha yüksek seyretmesi beklenir.',
            additionalInfo: 'Metabolik asidoz takibinde bilgilendiricidir.',
          ),
          AcidBaseManagementItem(
            title: 'VENÖZ PH DEĞERİ',
            description: 'Venöz kanın pH düzeyi arteriyel kandan genellikle 0.05 birim daha düşüktür (asidiktir).',
            additionalInfo: 'Klinik şok durumlarında bu fark açılabilir.',
          ),
        ],
      ),
      AcidBaseManagementCategory(
        categoryName: 'Kritik Ezberler',
        items: [
          AcidBaseManagementItem(
            title: 'ASİDOZ PH VE POTASYUM ETKİSİ',
            description: 'pH\'daki her 0.1 puanlık düşüşte serum potasyumu 0.6 mEq/L oranında artar.',
            additionalInfo: 'Hiperkalemik asidotik hastalarda çok tehlikelidir.',
          ),
          AcidBaseManagementItem(
            title: 'AKUT RESPİRATUAR ASİDOZ KURALI',
            description: 'PaCO2\'deki 10 mmHg\'lık artış bikarbonatı 1 mEq/L artırır.',
            additionalInfo: 'Hücre içi tampon cevabıdır.',
          ),
          AcidBaseManagementItem(
            title: 'KRONİK RESPİRATUAR ASİDOZ KURALI',
            description: 'PaCO2\'deki 10 mmHg\'lık artış bikarbonatı 4 mEq/L artırır.',
            additionalInfo: 'Renal kompansasyon cevabıdır.',
          ),
          AcidBaseManagementItem(
            title: 'METABOLİK ASİDOZ KOMPANZASYONU (WINTERS)',
            description: 'Bikarbonat 1 düşerse PaCO2 miktarında 1.2 mmHg\'lık bir azalma beklenir.',
            additionalInfo: 'Beklenen yanıtın dışındaki değerler mikst bozukluğa işaret eder.',
          ),
          AcidBaseManagementItem(
            title: 'METABOLİK ALKALOZ KOMPANZASYONU',
            description: 'Bikarbonat 1 artarsa PaCO2 miktarında 0.7 mmHg\'lık bir artış beklenir.',
            additionalInfo: 'Maksimum PaCO2 koruyucu etkisiyle sınırlıdır.',
          ),
          AcidBaseManagementItem(
            title: 'MAK DEĞERİNE ELEKTROLİT ETKİLERİ',
            description: 'Hiponatremi MAK ihtiyacını azaltırken, hipernatremi artırır.',
            additionalInfo: 'Anestetik doz ayarlamasında göz önünde bulundurulmalıdır.',
          ),
          AcidBaseManagementItem(
            title: 'SÜKSİNİLKOLİN KONTRENDİKASYONU',
            description: 'Hiperkalemik ve şiddetli asidozu (özellikle renal yetmezlik gibi) olan hastalarda kullanımı kesinlikle sakıncalıdır.',
            additionalInfo: 'Fatal disritmilere neden olabilir.',
          ),
        ],
      ),
    ];
  }
}
