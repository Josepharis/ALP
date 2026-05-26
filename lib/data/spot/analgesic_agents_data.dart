import 'package:flutter/material.dart';

class AnalgesicAgentsItem {
  final String title;
  final String description;
  final String? subtitle;
  final String? additionalInfo;

  AnalgesicAgentsItem({
    required this.title,
    required this.description,
    this.subtitle,
    this.additionalInfo,
  });
}

class AnalgesicAgentsCategory {
  final String categoryName;
  final List<AnalgesicAgentsItem> items;

  AnalgesicAgentsCategory({required this.categoryName, required this.items});
}

class AnalgesicAgentsData {
  static List<AnalgesicAgentsCategory> getAnalgesicAgentsData(
    BuildContext context,
  ) {
    return [
      AnalgesicAgentsCategory(
        categoryName: 'Opioidler',
        items: [
          AnalgesicAgentsItem(
            title: "RESEPTÖR MEKANİZMASI VE G-PROTEİN İLİŞKİSİ",
            description: "Merkezi ve periferik sinir sistemindeki opioid reseptörleri (µ, κ, δ, σ) üzerinden G-proteini aracılı inhibitör etki gösterirler.",
            subtitle: "Reseptör aktivasyonu nöronal hiperpolarizasyona yol açar",
            additionalInfo: "Opioidler kalsiyum (Ca⁺²) kanallarını inhibe edip potasyum (K⁺) kanallarını aktive ederek nöronun uyarılmasını zorlaştırır. Akut etkileri arasında adenilat siklaz inhibisyonu ve fosfolipaz C aktivasyonu bulunur. Vücudumuzda doğal olarak bulunan endorfin, enkefalin ve dinorfinler de bu reseptörler üzerinden etki eder.",
          ),
          AnalgesicAgentsItem(
            title: "ANALJEZİ İLETİM YOLLARI (NRM VE PAG)",
            description: "Periaqueductal gray (PAG) ve Nucleus Raphe Magnus (NRM) bölgelerini aktive ederek spinal dorsal horndaki ağrı iletimini baskılarlar.",
            subtitle: "Levorotatuar izomerler dekstrorotatuar olanlara göre çok daha potenttir",
            additionalInfo: "İnen inhibitör yolların aktivasyonu ile ağrı kapısı spinal kord düzeyinde kapatılır. Sentetik ve doğal tüm opioidlerin analjezik gücü, bu yollar üzerindeki etkinliklerine bağlıdır.",
          ),
          AnalgesicAgentsItem(
            title: "FARMAKOKİNETİK PROFİLLER (FENTANİL, MORFİN, REMİFENTANİL)",
            description: "Opioidlerin yağda çözünürlükleri ve metabolizma yolları klinik kullanım sürelerini ve uygulama yöntemlerini belirler.",
            subtitle: "Remifentanil nonspesifik esterazlarla yıkıldığı için organ organ yetmezliğinden bağımsızdır",
            additionalInfo: "• Transdermal Fentanil: 14-24 saatte plazma platosuna ulaşır ve yaklaşık 72 saat boyunca sabit salınım sağlar.\n• Morfin: Yağda çözünürlüğü düşüktür, bu yüzden kan-beyin bariyerini yavaş geçer ancak etkisi uzundur.\n• Alfentanil: Yüksek yağda çözünürlüğe sahip olmasına rağmen düşük dağılım hacmi (Vd) nedeniyle etkisi hızla başlar ve biter.",
          ),
          AnalgesicAgentsItem(
            title: "AKTİF METABOLİTLER VE TOKSİSİTE (NORMEPERİDİN)",
            description: "Bazı opioidlerin metabolitleri ana ilaçtan daha güçlü veya toksik etkiler gösterebilir.",
            subtitle: "Meperidin metaboliti olan Normeperidin epileptojenik (nöbet tetikleyici) özelliktedir",
            additionalInfo: "• Morfin-6-glukuronid (M-6-G): Morfinden daha etkili bir analjeziktir ancak böbrek yetmezliğinde birikerek ciddi solunum depresyonuna yol açabilir.\n• Tramadol: Aktif metaboliti olan O-desmetiltramadol üzerinden güçlü etki gösterir.\n• Böbrek Yetmezliği: Morfin ve Meperidin metabolitleri idrarla atıldığı için böbrek hastalarında kullanımı risklidir.",
          ),
          AnalgesicAgentsItem(
            title: "KARDİYOVASKÜLER ETKİLER VE HİSTAMİN",
            description: "Opioidler genellikle kalp dostu olarak bilinse de bazı türevleri belirgin hemodinamik değişikliklere yol açabilir.",
            subtitle: "Meperidin atropine benzer yapıda olduğu için kalp hızını artırabilir",
            additionalInfo: "Morfin ve Meperidin gibi ilaçlar belirgin histamin salınımına yol açarak periferik vazodilatasyona (hipotansiyon) ve taşikardiye neden olabilir. Diğer sentetik opioidler (Fentanil, Remifentanil) genellikle histamin salınımı yapmaz ve kalp hızını düşürme (bradikardi) eğilimindedirler.",
          ),
          AnalgesicAgentsItem(
            title: "SOLUNUM DEPRESİSYONU VE RİJİDİTE",
            description: "Opioidlerin en karakteristik yan etkisi solunum merkezinin CO₂ yanıtını azaltarak doza bağlı baskılama yapmasıdır.",
            subtitle: "Yüksek dozlarda görülen göğüs duvarı rijiditesi ventilasyonu imkansız hale getirebilir",
            additionalInfo: "Solunum sayısını azaltır (RR ↓), tidal hacmi (TV) nispeten korurlar. Hipoksik güdü baskılanır ve PaCO₂ yükselir. Hızlı ve yüksek doz IV uygulamalarda görülen 'kas rijiditesi' (wooden chest), laringeal kasları da etkileyerek havayolu yönetimini zorlaştırır; tedavisi kas gevşeticiler veya nalokson ile yapılır.",
          ),
          AnalgesicAgentsItem(
            title: "SEREBRAL ETKİLER VE OPOİD HİPERALJEZİSİ",
            description: "Beyin kan akımını (CBF) ve kafa içi basıncı (ICP) düşürürler, bu sayede kafa içi cerrahilerde güvenle kullanılırlar.",
            subtitle: "Remifentanil infüzyonu sonrası ani tolerans ve hiperaljezi (ağrı duyarlılığı artışı) görülebilir",
            additionalInfo: "EEG üzerinde minimal etkileri vardır ve genellikle SSEP/MEP monitorizasyonunu bozmazlar. Akut tolerans gelişimi, özellikle kısa etkili opioidlerin (Remifentanil) kesilmesinden sonra hastanın ağrıya karşı aşırı hassaslaşmasına yol açabilir.",
          ),
          AnalgesicAgentsItem(
            title: "GASTROİNTESTİNAL ETKİLER (ODDİ SİFİNKTERİ VE KONSTİPASYON)",
            description: "Mide ve bağırsak peristaltizmini yavaşlatarak motiliteyi bozarlar; safra yollarında spazma neden olabilirler.",
            subtitle: "Opioid kaynaklı kabızlığa (konstipasyon) karşı tolerans gelişmez",
            additionalInfo: "Oddi sfinkterinde spazm yaparak safra koliklerini taklit eden ağrılara yol açabilirler (Tedavide Nalokson veya Glukagon kullanılır). Bağırsaktaki µ reseptörleri üzerinden konstipasyon yaparlar. Bu etkiyi kırmak için Alvimopan veya Metilnaltrekson gibi periferik etkili antagonistler kullanılabilir.",
          ),
          AnalgesicAgentsItem(
            title: "ÖZEL KLİNİK KULLANIMLAR (POST-OP TİTREME)",
            description: "Bazı opioidlerin analjezi dışındaki özel endikasyonları klinik pratikte sıkça tercih edilmelerini sağlar.",
            additionalInfo: "Meperidin (10-25 mg IV), postoperatif dönemde görülen üşüme ve titremenin tedavisinde en etkili ajandır. Bu etkisi kappa (κ) reseptörleri üzerindeki aktivitesine ve termoregülasyon merkezini etkilemesine bağlıdır.",
          ),
          AnalgesicAgentsItem(
            title: "ÖNEMLİ İLAÇ ETKİLEŞİMLERİ",
            description: "Opioidlerin diğer ilaçlarla kombinasyonu hayatı tehdit eden krizlere veya etki süresi değişikliklerine yol açabilir.",
            subtitle: "Meperidin ile MAO İnhibitörlerinin (MAOI) birlikte kullanımı kesinlikle kontrendikedir",
            additionalInfo: "Meperidin ve MAOI etkileşimi; hiperpreksi (çok yüksek ateş), konvülsiyon ve koma ile seyreden ölümcül 'Serotonin Sendromu'na yol açabilir. Ayrıca Eritromisin gibi ilaçlar Alfentanil metabolizmasını yavaşlatarak ilacın etki süresini beklenmedik şekilde uzatabilir.",
          ),
        ],
      ),
      AnalgesicAgentsCategory(
        categoryName: 'Siklooksijenaz İnhibitörleri (NSAİİ)',
        items: [
          AnalgesicAgentsItem(
            title: "COX ENZİM SİSTEMİ (COX-1 VE COX-2)",
            description: "Araşidonik asidin (AA), ağrı ve inflamasyon mediyatörü olan PGH₂'ye dönüşümünü katalizleyen enzimlerdir.",
            subtitle: "COX-1 koruyucu (mide, böbrek, trombosit), COX-2 inflamatuardır",
            additionalInfo: "• COX-1 (Konstitütif): Mide mukoza bütünlüğünü korur ve trombosit agregasyonunu sağlar.\n• COX-2 (İndüklenebilir): Doku hasarı ve inflamasyon durumunda sentezlenir; ağrı, şişlik ve ateşten sorumludur.",
          ),
          AnalgesicAgentsItem(
            title: "ASPİRİN VE İRREVERSİBL ETKİ",
            description: "COX-1 enzimini geri dönüşümsüz (irreversibl) olarak asetilleyen ve trombosit ömrü boyunca (7-10 gün) etkili olan tek salisilattır.",
            additionalInfo: "Diğer NSAİİ'ler enzimi reversibl olarak bağlarken, Aspirin trombositlerin işlevini kalıcı olarak bozar. Bu nedenle cerrahi öncesi genellikle 7-10 gün önce kesilmesi önerilir.",
          ),
          AnalgesicAgentsItem(
            title: "SELEKTİF COX-2 İNHİBİTÖRLERİ VE RİSKLER",
            description: "Gastrointestinal yan etkileri minimalize etmek için tasarlanmışlardır ancak kardiyovasküler risk taşıyabilirler.",
            subtitle: "Parasetamol ve Koksibler (Selekoksib) bu gruptadır",
            additionalInfo: "COX-1'i etkilemedikleri için mide kanaması riski düşüktür ancak prostitasiklin (PGI₂) sentezini baskılayıp tromboksan-A₂ dengesini bozarak Miyokard Enfarktüsü (MI) ve tromboz riskini artırabilirler.",
          ),
          AnalgesicAgentsItem(
            title: "NSAİİ YAPI SINIFLARINA GÖRE AYRIM",
            description: "NSAİİ'ler kimyasal yapılarına göre farklı gruplara ayrılırlar ve her birinin klinik profili buna göre değişir.",
            additionalInfo: "• Salisilik Asit Türevleri: Aspirin.\n• Asetik Asit Türevleri: Ketorolak, İndometazin.\n• Propiyonik Asit Türevleri: İbuprofen, Naproksen.\n• Heterosiklik Bileşikler: Selekoksib.",
          ),
          AnalgesicAgentsItem(
            title: "FARMAKOKİNETİK VE DAĞILIM (ALBÜMİN BAĞLANMASI)",
            description: "Bu grup ilaçlar genellikle hızla emilir (3 saatten kısa pik süre) ve plasmada yüksek oranda albümine bağlanırlar.",
            additionalInfo: "Yüksek protein bağlanmaları nedeniyle diğer protein bağımlı ilaçlarla (örneğin varfarin) yarışmaya girerek kanama riskini artırabilirler. Kan-beyin bariyerini ve eklem aralığını (sinovyal sıvıya) iyi geçerler; bu özellikleri santral ve periferik analjezi sağlar.",
          ),
          AnalgesicAgentsItem(
            title: "TOKSİSİTE VE HEPATOTOKSİSİTE (NAPQI)",
            description: "Parasetamolün (Asetaminofen) yüksek dozdaki metabolitleri karaciğerde ciddi harabiyete yol açabilir.",
            subtitle: "Atılımları birincil olarak idrar yoluyladır",
            additionalInfo: "Parasetamol metabolizması sırasında oluşan NAPQI metaboliti, toksik düzeylere ulaştığında karaciğer hücrelerini nekroza uğratır. Tedavide glutatyon depolarını artıran N-asetilsistein (NAC) kullanılır.",
          ),
          AnalgesicAgentsItem(
            title: "KLİNİK UYGULAMALAR (PDA KAPATILMASI)",
            description: "NSAİİ'lerin prostaglandin sentezini baskılaması bazı vasküler açıklıkların kapatılmasında tedavi edici olarak kullanılır.",
            additionalInfo: "Fetal dönemde Prostaglandinler (PG) Ductus Arteriosus'un (DA) açık kalmasını sağlar. Yenidoğanlarda Patent Ductus Arteriosus (PDA) saptandığında, PG inhibitörleri (İndometazin, İbuprofen) verilerek kanalın cerrahiye gerek kalmadan kapanması sağlanabilir.",
          ),
          AnalgesicAgentsItem(
            title: "YAN ETKİLER VE GİS KANAMA RİSKİ",
            description: "Özellikle non-selektif COX inhibitörlerinin (COX-1 baskılaması) uzun süreli kullanımı mide mukoza bariyerini bozar.",
            additionalInfo: "Koruyucu prostaglandinlerin (PGE₂, PGI₂) sentezlenememesi sonucunda gastrit, ülser ve üst GİS kanamaları görülebilir. Ayrıca böbrek kan akımını azaltarak akut böbrek yetmezliği riskini artırabilirler (özellikle hipovolemik hastalarda).",
          ),
        ],
      ),
    ];
  }
}
