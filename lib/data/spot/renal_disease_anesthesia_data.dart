import 'package:flutter/material.dart';

class RenalDiseaseAnesthesiaItem {
  final String title;
  final String description;
  final String? subtitle;
  final String? additionalInfo;

  RenalDiseaseAnesthesiaItem({
    required this.title,
    required this.description,
    this.subtitle,
    this.additionalInfo,
  });
}

class RenalDiseaseAnesthesiaCategory {
  final String categoryName;
  final List<RenalDiseaseAnesthesiaItem> items;

  RenalDiseaseAnesthesiaCategory({
    required this.categoryName,
    required this.items,
  });
}

class RenalDiseaseAnesthesiaData {
  static List<RenalDiseaseAnesthesiaCategory> getRenalDiseaseAnesthesiaData(
    BuildContext context,
  ) {
    return [
      RenalDiseaseAnesthesiaCategory(
        categoryName: 'Böbrek Fonksiyonunun İncelenmesi',
        items: [
          RenalDiseaseAnesthesiaItem(
            title: "BUN (KAN ÜRE AZOTU) VE PROTEİN KATABOLİZMASI",
            description: "BUN, protein katabolizması sonucu karaciğerde sentezlenen ürenin kandaki düzeyini yansıtır.",
            subtitle: "BUN düzeyleri protein yıkımıyla doğru, GFR (Glomerüler Filtrasyon Hızı) ile ters orantılıdır",
            additionalInfo: "Ultrafiltratın %40–50'si geri emildiği için tek başına GFR ölçümü olarak güvenilir değildir; beslenme ve hidrasyondan etkilenir.",
          ),
          RenalDiseaseAnesthesiaItem(
            title: "BUN NORMAL DEĞERLERİ VE KONTROL EŞİĞİ",
            description: "Kanda normal BUN düzeyi 10–20 mg/dL arasındadır; 50 mg/dL üzerindeki değerler ciddi böbrek bozukluğuna işaret eder.",
            subtitle: "Hipovolemi (dehidrasyon) durumlarında tübüler reabsorbsiyon arttığı için BUN düzeyi hızla yükselir",
            additionalInfo: "50 mg/dL üzerindeki bir BUN düzeyi, genellikle GFR'nin belirgin şekilde düştüğünü gösterir.",
          ),
          RenalDiseaseAnesthesiaItem(
            title: "SERUM KREATİNİN VE GFR İLİŞKİSİ",
            description: "Kas yıkım ürünü olan kreatinin, sabit kas kitlesine sahip kişilerde GFR için en güvenilir rutin göstergedir.",
            subtitle: "Normal aralık Erkeklerde 0.8–1.3 mg/dL, Kadınlarda 0.6–1 mg/dL'dir",
            additionalInfo: "20 yaşından sonra her 10 yılda bir GFR fizyolojik olarak yaklaşık %5 oranında azalma gösterir.",
          ),
          RenalDiseaseAnesthesiaItem(
            title: "KREATİNİN DÜZEYİNİ ETKİLEYEN FARMAKOLOJİK FAKTÖRLER",
            description: "Bazı ilaçlar, kreatininin tübüler sekresyonunu azaltarak böbrek hasarı olmaksızın serum düzeyini yükseltebilir.",
            subtitle: "Simetidin kullanımı kreatinin sekresyonunu baskılayarak yalancı bir yükseklik yaratabilir",
            additionalInfo: "İlaç öyküsü değerlendirilirken bu tür etkileşimler göz önünde bulundurulmalıdır.",
          ),
          RenalDiseaseAnesthesiaItem(
            title: "KREATİNİN KLERENSİ VE YETERSİZLİK EVRELERİ",
            description: "Klerens değerleri böbrek yetmezliğinin derecesini belirlemede altın standarttır: Hafif (40–60), Orta (25–40) ve Ağır (<25 mL/dk).",
            additionalInfo: "Özellikle 25 mL/dk'nın altındaki değerler kronik böbrek yetmezliği tanısında kritiktir.",
          ),
          RenalDiseaseAnesthesiaItem(
            title: "BUN/KREATİNİN ORANI VE KLİNİK ANLAMI",
            description: "Normalde bu oran 10–15/1 arasındadır; oranın 15/1'in üzerine çıkması böbrek dışı (prerenal) nedenleri düşündürür.",
            subtitle: "Yüksek oranlar hipovolemi, kalp yetmezliği, siroz veya nefrotik sendrom göstergesi olabilir",
            additionalInfo: "Bu oran, böbreğe gelen kan akımının azaldığı durumlarda ayırıcı tanıda değerlidir.",
          ),
          RenalDiseaseAnesthesiaItem(
            title: "İDRAR ANALİZİ VE PH DEĞERLERİ",
            description: "Sistemik asidoz varlığında idrar pH'ının 7'nin üzerinde saptanması renal tübüler asidozu (RTA) gösterir.",
            subtitle: "İdrar özgül ağırlığı 1.010 olması yaklaşık 290 mOsm/kg ozmolaliteye (plazmayla eş) tekabül eder",
            additionalInfo: "Normal böbrek fonksiyonu için idrarın 1.018 ve üzerine konsantre edilebilmesi beklenir.",
          ),
          RenalDiseaseAnesthesiaItem(
            title: "İDRAR ANORMALLİKLERİ VE EŞİK DEĞERLER (GLUKOZ/PROTEİN)",
            description: "Kan şekeri 180 mg/dL'yi geçtiğinde glukozüri, günlük protein atılımı 150 mg'ı geçtiğinde ise proteinüri saptanır.",
            additionalInfo: "Altın standart proteinüri ölçümü için 24 saatlik idrar toplama gereklidir.",
          ),
        ],
      ),
      RenalDiseaseAnesthesiaCategory(
        categoryName: 'İntravenöz Ajanlar',
        items: [
          RenalDiseaseAnesthesiaItem(
            title: "PROPOFOL VE ETOMİDAT KULLANIMI",
            description: "Bu ajanların farmakokinetiği böbrek yetmezliğinde belirgin değişmez; ancak hipoalbuminemi serbest ilaç düzeyini artırabilir.",
            subtitle: "Etomidat, düşük albuminli hastalarda serbest fraksiyon artışı nedeniyle daha güçlü etki gösterebilir",
            additionalInfo: "Propofol klirensinde böbrek dışı mekanizmalar (akciğer) baskın olduğu için güvenlidir.",
          ),
          RenalDiseaseAnesthesiaItem(
            title: "BARBİTÜRATLAR VE ASİDOZ ETKİLEŞİMİ",
            description: "Barbitüratların temel farmakokinetiği etkilenmez ancak metabolik asidoz varlığında noniyonize fraksiyon artar.",
            subtitle: "Daha fazla noniyonize ilaç beyne daha hızlı geçerek indüksiyonu hızlandırır ve derinleştirir",
            additionalInfo: "Doz ayarı yapılırken hastanın pH durumu mutlaka göz önüne alınmalıdır.",
          ),
          RenalDiseaseAnesthesiaItem(
            title: "KETAMİN VE METABOLİT BİRİKİMİ",
            description: "Ketaminin ana farmakokinetiği değişmemekle birlikte, aktif metaboliti olan norketamin böbreğe bağımlı birikim yapabilir.",
            additionalInfo: "Bu durum, özellikle tekrarlayan dozlarda etkinin beklenenden uzun sürmesine zemin hazırlayabilir.",
          ),
          RenalDiseaseAnesthesiaItem(
            title: "BENZODİAZEPİNLER VE SERBEST FRAKSİYON ARTIŞI",
            description: "Hipoalbuminemi nedeniyle serbest fraksiyon artar ve proteinlere bağlanma oranları düştüğü için etki şiddetlenir.",
            subtitle: "Aktif metaboliti olan diazepam ve midazolam kullanımı sırasında birikim riskine dikkat edilmelidir",
            additionalInfo: "Kısa etkili olanlar tercih edilmeli ve dozlar düşük tutulmalıdır.",
          ),
          RenalDiseaseAnesthesiaItem(
            title: "OPİOİDLER VE AKTİF METABOLİT RİSKLERİ (MORFİN/MEPERİDİN)",
            description: "Pek çok opioid karaciğerde yıkılsa da; Morfin (M6G) ve Meperidin (Normeperidin) aktif metabolitleri böbrekten atılır.",
            subtitle: "Morfin ve meperidin, metabolit birikimine bağlı solunum depresyonu ve nöbet riski nedeniyle sakıncalıdır",
            additionalInfo: "Remifentanil, organ bağımsız eliminasyonu sayesinde böbrek hastalarında en güvenli opioid seçeneğidir.",
          ),
          RenalDiseaseAnesthesiaItem(
            title: "ANTİKOLİNERJİKLER VE BİRİKİM RİSKİ",
            description: "Atropin ve glikoprolat tek dozda iyi tolere edilir; ancak tekrarlayan dozlarda birikim yaparak antikolinerjik yan etkilere yol açabilir.",
            additionalInfo: "Taşikardi ve ağız kuruluğu bu hastalarda daha belirgin izlenebilir.",
          ),
          RenalDiseaseAnesthesiaItem(
            title: "ANTİEMETİKLER VE H2 BLOKER YÖNETİMİ",
            description: "Metoklopramid birikim riski nedeniyle sakıncalıyken, H2 blokerlerin dozu azaltılmalıdır; PPI ve 5-HT3 antagonistleri güvenlidir.",
            additionalInfo: "Ondansetron (5-HT3) böbrek yetmezliğinde doz ayarı gerektirmeyen ideal bir antiemetiktir.",
          ),
        ],
      ),
      RenalDiseaseAnesthesiaCategory(
        categoryName: 'İnhalasyon Ajanları',
        items: [
          RenalDiseaseAnesthesiaItem(
            title: "VOLATİL AJANLAR VE SEVOFLURAN YAKLAŞIMI",
            description: "Modern volatil ajanlar böbrek hastaları için idealdir; Sevofluranın teorik Compound A riski klinikte önemsiz kabul edilir.",
            additionalInfo: "Düzenli idrar çıkışı ve stabil hemodinami sağlandığı sürece tüm volatil ajanlar kullanılabilir.",
          ),
          RenalDiseaseAnesthesiaItem(
            title: "N2O (AZOT PROTÜSİT) VE ANEMİ KONTRENDİKASYONU",
            description: "Böbrek yetmezliği olan ve hemoglobin düzeyi 7 g/dL'nin altında olan hastalarda azot protüsit kullanımından kaçınılmalıdır.",
            additionalInfo: "Hücre içi oksijen sunumunu kısıtlayarak doku hipoksisini derinleştirebilir.",
          ),
        ],
      ),
      RenalDiseaseAnesthesiaCategory(
        categoryName: 'Kas Gevşeticiler',
        items: [
          RenalDiseaseAnesthesiaItem(
            title: "SÜKSİNİLKOLİN VE POTASYUM SINIRI (K+ <5)",
            description: "Diyalizini düzenli alan ve potasyum (K+) düzeyi 5 mEq/L'nin altında olan renal hastalarda Süksinilkolin güvenlidir.",
            additionalInfo: "Hiperkalemik (K >5.5) vakalarda Süksinilkolin aritmi ve arrest riskini tetikleyebilir.",
          ),
          RenalDiseaseAnesthesiaItem(
            title: "SİSATRAKÜRYUM VE ATRAKÜRYUM GÜVENLİĞİ",
            description: "Plazmada Hofmann eliminasyonu ile metabolize oldukları için böbrek fonksiyonundan bağımsız olarak en güvenli gevşeticilerdir.",
            additionalInfo: "Bu ajanlar organ yetmezliğinden etkilenmeyen klirens profili sunarlar.",
          ),
          RenalDiseaseAnesthesiaItem(
            title: "VEKÜRONYUM VE RENAL ATILIM ORANI",
            description: "Veküronyumun yaklaşık %20'si böbrek yoluyla atılır; yetmezlik durumunda etki süresi hafif bir uzama gösterebilir.",
            additionalInfo: "İstisnai olmayan durumlarda düşük dozlarda kullanılabilir.",
          ),
          RenalDiseaseAnesthesiaItem(
            title: "ROKÜRONYUM VE ELİMİNASYON YOLU",
            description: "Roküronyum temel olarak karaciğerden elimine edildiği için böbrek yetmezliğinde nispeten güvenli kabul edilen bir ajandır.",
            additionalInfo: "Yine de derin blok sonrası geri dönüş süreleri monitörize edilmelidir.",
          ),
          RenalDiseaseAnesthesiaItem(
            title: "KÜRAR VE UZAMIŞ ETKİ RİSKİ",
            description: "Kürar %40–60 oranında renal yolla atıldığı için böbrek hastalarında belirgin şekilde uzamış nöromüsküler blokaj yapar.",
            additionalInfo: "Postoperatif solunum yetmezliği riskini artırdığı için tercih edilmez.",
          ),
          RenalDiseaseAnesthesiaItem(
            title: "PANKÜRONYUM VE YÜKSEK RENAL ELİMİNASYON",
            description: "Panküronyumun %60–90'ı böbreklerden atılır; yetmezlikte etkisi saatlerce sürebilir ve d-kürarizasyon (revers) zordur.",
            additionalInfo: "Böbrek yetersizliğinde mutlak kontrendike sayılabilir denli risklidir.",
          ),
          RenalDiseaseAnesthesiaItem(
            title: "REVERS AJANLAR VE RENAL ELİMİNASYON SÜRESİ",
            description: "Neostigmin ve diğer antikolinesterazların renal atılımı bozulduğu için etki süreleri kendiliğinden uzar.",
            additionalInfo: "Bu durum, kas gevşeticinin de etkisinin sürdüğü renal hastalarda 'rekürarizasyon' (tekrar felç) riskini azaltan koruyucu bir faktördür.",
          ),
        ],
      ),
      RenalDiseaseAnesthesiaCategory(
        categoryName: 'Böbrek Yetersizliğinde Klinik Bulgular',
        items: [
          RenalDiseaseAnesthesiaItem(
            title: "METABOLİK VE ELEKTROLİT BULGULARI",
            description: "Metabolik asidozun yanı sıra hiperkalemi, hiperfosfatemi ve hipokalsemi en tipik elektrolit bozukluklarıdır.",
            subtitle: "Hipermagnezemi ve hiperürisemi de tabloya sıklıkla eşlik eder",
            additionalInfo: "Bu dengesizlikler intraoperatif kardiyak irritabiliteyi (aritmi) artırır.",
          ),
          RenalDiseaseAnesthesiaItem(
            title: "HEMATOLOJİK BULGULAR VE ANEMİ (HB 6-8)",
            description: "Eritropoetin eksikliğine bağlı gelişen normokrom normositer anemi sonucunda hemoglobin düzeyi genellikle 6–8 g/dL bandındadır.",
            subtitle: "Anemiye ek olarak trombosit disfonksiyonu (üremiye bağlı yapışma bozukluğu) kanama riskini artırır",
            additionalInfo: "Hastalar bu düşük Hb düzeylerine kronik olarak adapte olmuştur.",
          ),
          RenalDiseaseAnesthesiaItem(
            title: "KARDİYOVASKÜLER SİSTEM BULGULARI",
            description: "Hipertansiyon, sol ventrikül hipertrofisi (LVH), kalp yetmezliği ve aritmiye eğilim en sık görülen KVS problemleridir.",
            additionalInfo: "Kalp yükü, hem anemi hem de sıvı yüklenmesi nedeniyle her zaman yüksektir.",
          ),
          RenalDiseaseAnesthesiaItem(
            title: "PULMONER BULGULAR VE ASİDOZ YANITI",
            description: "Metabolik asidozu kompanse etmek için hastalar hiperventilasyon yaparlar; sıvı yüklenmesi ise akciğer ödemine zemin hazırlar.",
            additionalInfo: "Pulmoner kompliyans azalmıştır ve ventilasyon yönetimi hassasiyet gerektirir.",
          ),
          RenalDiseaseAnesthesiaItem(
            title: "ENDOKRİN BULGULAR VE DM İLİŞKİSİ",
            description: "Hastalarda Tip 2 Diyabet sık görülürken; sekonder hiperparatiroidi ve hipertrigliseridemi gibi ek bozukluklar izlenebilir.",
            additionalInfo: "Glukoz yönetimi insülin direnci nedeniyle zorlaşabilir.",
          ),
          RenalDiseaseAnesthesiaItem(
            title: "NÖROLOJİK BULGULAR VE ÜREMİK ENSEFALOPATİ",
            description: "Klinik tablo hafif konfüzyondan komaya kadar değişebilir; periferik sensöryal nöropatiler de yaygın olarak saptanır.",
            additionalInfo: "Hastalarda 'huzursuz bacak sendromu' ve kas krampları cerrahi sonrası konforu bozabilir.",
          ),
        ],
      ),
      RenalDiseaseAnesthesiaCategory(
        categoryName: 'Böbrek Yetersizliğinde Anestezi Yaklaşımı',
        items: [
          RenalDiseaseAnesthesiaItem(
            title: "PREOPERATİF HAZIRLIK VE DİYALİZ ZAMANLAMASI",
            description: "Cerrahi öncesi son diyalizin ideal olarak operasyondan önceki son 24 saat içinde yapılmış olması gerekir.",
            subtitle: "Potasyum, asit-baz ve hematolojik değerler diyalizle optimize edilmelidir",
            additionalInfo: "Rejyonal anestezi (RA) planlanıyorsa koagülasyon değerleri ve trombosit fonksiyonu mutlaka değerlendirilmelidir.",
          ),
          RenalDiseaseAnesthesiaItem(
            title: "İNTRAOPERATİF MONİTÖRİZASYON VE FİSTÜL KORUMASI",
            description: "Arteryel kateterizasyon majör cerrahilerde şarttır; NİBP ölçümü mutlaka AV fistül olmayan koldan yapılmalıdır.",
            additionalInfo: "Fistülün korunması hastanın yaşam hattı olduğu için hayati önem taşır.",
          ),
          RenalDiseaseAnesthesiaItem(
            title: "İNDÜKSİYON AJANLARI VE HT KONTROLÜ",
            description: "Propofol ve etomidat indüksiyonda güvenli seçeneklerdir; ani tansiyon fırlamaları için Esmolol gibi kısa etkili beta blokerler hazır tutulmalıdır.",
            additionalInfo: "Hipertansif ataklar beyin kanaması riski yaratabilir.",
          ),
          RenalDiseaseAnesthesiaItem(
            title: "İDAME ANESTEZİ VE KAS GEVŞETİCİ SEÇİMİ",
            description: "Volatil ajanlar, propofol ve organ bağımsız opioidler (Remifentanil) idame için idealdir.",
            subtitle: "Kas gevşetici olarak Atrakuryum veya Sisatrakuryum kullanımı standarttır",
            additionalInfo: "Blok derinliği mutlaka periyodik olarak monitörize edilmelidir.",
          ),
          RenalDiseaseAnesthesiaItem(
            title: "SIVI YÖNETİMİ VE TRANSFÜZYON STRATEJİSİ",
            description: "Potasyum ve glukoz içeren solüsyonlardan kaçınılmalı; sıvı açığı ES veya kolloidler ile yerine konmalıdır.",
            subtitle: "Allojenik transfüzyonun, böbrek nakli sonrası rejeksiyon riskini azalttığı savunulmaktadır",
            additionalInfo: "Hacim yüklenmesine bağlı kalp yetmezliği riski her aşamada gözlenmelidir.",
          ),
        ],
      ),
      RenalDiseaseAnesthesiaCategory(
        categoryName: 'Hafif-Orta Böbrek Bozukluğunda Anestezi',
        items: [
          RenalDiseaseAnesthesiaItem(
            title: "HAFİF BÖBREK BOZUKLUĞU VE KORUYUCU YAKLAŞIM",
            description: "GFR 40–60 mL/dk aralığında olan hastalarda ana hedef, mevcut böbrek dokusunun perfüzyonunu korumaktır.",
            additionalInfo: "Bu hastalar genellikle klinik olarak asemptomatiktir ancak 'böbrek rezervi' düşüktür.",
          ),
          RenalDiseaseAnesthesiaItem(
            title: "ORTA BÖBREK BOZUKLUĞU VE AZOTEMİ YÖNETİMİ",
            description: "GFR 25–40 mL/dk aralığında azotemi, anemi ve HT tabloya eklenmiştir; akut böbrek yetmezliği (ABY) riski yüksektir.",
            subtitle: "Postoperatif hipovolemi, bu hastalarda geri dönüşsüz böbrek hasarı tetikleyicisi olabilir",
            additionalInfo: "İlaç eliminasyonlarının yavaşlamaya başladığı kritik evredir.",
          ),
          RenalDiseaseAnesthesiaItem(
            title: "MONİTÖRİZASYON VE İDRAR ÇIKIŞI HEDEFİ (0.5 ML/KG/SAAT)",
            description: "Büyük ameliyatlarda invaziv arter takibi yapılmalı ve idrar çıkışının saatlik 0.5 mL/kg üzerinde olması hedeflenmelidir.",
            additionalInfo: "Oligüri (az idrar) geliştiğinde hızla hidrasyon ve gerekirse diüretik desteği düşünülmelidir.",
          ),
          RenalDiseaseAnesthesiaItem(
            title: "İNDÜKSİYONDA RENAL PERFÜZYONUN KORUNMASI",
            description: "Şiddetli hipotansiyon renal perfüzyon basıncını bozacağı için indüksiyon sırasında normovolemi ve tansiyon dengesi korunmalıdır.",
            additionalInfo: "Vazopressör desteği gerekirse direkt etkili ajanlar seçilebilir.",
          ),
          RenalDiseaseAnesthesiaItem(
            title: "İDAME ANESTEZİ VE SEVOFLURAN AKIM YÖNETİMİ",
            description: "Orta yetmezlikte düşük akımlı sevofluran dışında (Compound A riski nedeniyle) tüm ajanlar güvenle kullanılabilir.",
            additionalInfo: "Modern anestezi cihazlarıyla taze gaz akımı uygun düzeyde tutulmalıdır.",
          ),
          RenalDiseaseAnesthesiaItem(
            title: "SIVI TEDAVİSİ VE NORMOVOLEMİ HEDEFİ",
            description: "Böbreği korumak için normovolemi veya hafif hipervolemi (hacim fazlalığı) hedeflenmesi genellikle koruyucu bir yaklaşımdır.",
            additionalInfo: "Böbrekler 'ıslak' tutulduğunda iskemi riski azalmaktadır.",
          ),
        ],
      ),
    ];
  }
}
