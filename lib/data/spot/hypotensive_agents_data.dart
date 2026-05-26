import 'package:flutter/material.dart';

class HypotensiveAgentsItem {
  final String title;
  final String description;
  final String? subtitle;
  final String? additionalInfo;

  HypotensiveAgentsItem({
    required this.title,
    required this.description,
    this.subtitle,
    this.additionalInfo,
  });
}

class HypotensiveAgentsCategory {
  final String categoryName;
  final List<HypotensiveAgentsItem> items;

  HypotensiveAgentsCategory({required this.categoryName, required this.items});
}

class HypotensiveAgentsData {
  static List<HypotensiveAgentsCategory> getHypotensiveAgentsData(
    BuildContext context,
  ) {
    return [
      HypotensiveAgentsCategory(
        categoryName: 'Nitrovazodilatörler',
        items: [
          HypotensiveAgentsItem(
            title: "SODYUM NİTROPRUSSİD (HIZLI VE GÜÇLÜ VAZODİLATÖR)",
            description: "Nitrik oksit (NO) üzerinden cGMP seviyelerini artırarak hem arteriyollerde hem de venlerde ani ve güçlü bir genişleme sağlar.",
            subtitle: "Yarı ömrü 5 saniyeden kısa olduğu için doz titrasyonu yapmak çok kolaydır",
            additionalInfo: "Klinik doz aralığı 0,5–10 mcg/kg/dk'dır. Entübasyon sırasında gelişen hipertansif yanıtı baskılamak için 1-2 mcg/kg bolus uygulama yapılabilir. Etkisi çok hızlı başlar ve ilaç kesildiği anda hızla sonlanır.",
          ),
          HypotensiveAgentsItem(
            title: "NİTROPRUSSİD METABOLİZMASI VE SİYANÜR DÖNGÜSÜ",
            description: "Nitroprussid molekülü vücutta parçalanırken siyanür iyonlarının (CN⁻) salınmasına ve methemoglobin oluşumuna yol açar.",
            additionalInfo: "Metabolizma sürecinde serbest kalan siyanür iyonlarının bir kısmı methemoglobin ile birleşerek siyanomethemoglobini oluşturur; bir kısmı ise karaciğerde tiyosülfat ile birleşerek tiyosiyanata dönüşür ve böbreklerden atılır. Kalan serbest siyanür ise hücre solunumunu (sitokrom oksidaz) bloke ederek toksisiteye neden olur.",
          ),
          HypotensiveAgentsItem(
            title: "SİYANÜR TOKSİSİTESİ VE ACİL TEDAVİ YAKLAŞIMI",
            description: "Hücre düzeyinde oksijen kullanımını engelleyen siyanür birikimi, metabolik asidoz ve tedaviye dirençli hipotansiyon ile karakterize ölümcül bir tablodur.",
            subtitle: "Belirtiler arasında aritmi, metabolik asidoz ve venöz kanın olması gerekenden daha parlak (yüksek O₂) olması yer alır",
            additionalInfo: "Tedavide öncelikle ilaç kesilmeli ve %100 oksijen desteği başlanmalıdır. Siyanürü bağlamak için sodyum tiyosülfat ve sodyum nitrat uygulanır. Şiddetli vakalarda metilen mavisi kullanımı da gerekebilir.",
          ),
          HypotensiveAgentsItem(
            title: "NİTROPRUSSİD ORGAN SİSTEM ETKİLERİ",
            description: "Preload ve afterload yükünü belirgin şekilde düşürürken, kafa içi basıncı artırma riski taşır.",
            additionalInfo: "• Kalp: Koroner çalma sendromuna yol açabilir (iskemik bölgeden kanın uzaklaşması).\n• Beyin: Serebral damarlarda genişleme yaparak kafa içi basıncını (ICP) artırır ve serebral otoregülasyonu bozabilir.\n• Akciğer: Pulmoner vazodilatasyon yaparak hipoksik pulmoner vazokonstriksiyon (HPV) yanıtını baskılar, bu da şant artışına ve hipoksiye neden olabilir.",
          ),
          HypotensiveAgentsItem(
            title: "NİTROGLİSERİN (VENÖZ VAZODİLATASYON VE İSKEMİ)",
            description: "Öncelikle venöz damarlar üzerinde etkili olan, nitrik oksit (NO) salınımıyla çalışan bir vazodilatördür.",
            subtitle: "Plastik (PVC) setlere yapışma özelliği nedeniyle mutlaka cam veya özel setlerle uygulanmalıdır",
            additionalInfo: "Miyokard iskemisi, akut kalp yetmezliği ve kontrollü hipotansiyon vakalarında kullanılır. Karaciğerdeki ve kandaki redüktaz enzimleri tarafından metabolize edilir; yüksek dozlarda methemoglobinemi (metHb) yapma riski vardır.",
          ),
          HypotensiveAgentsItem(
            title: "NİTROGLİSERİNİN KLİNİK AVANTAJLARI VE KULLANIMI",
            description: "Kalbin iş yükünü ve oksijen ihtiyacını azaltırken, koroner kan akımını iyileştirerek iskemiyi düzeltir.",
            additionalInfo: "• Koroner: Koroner spazmı çözer ve subendokardiyal kan dağılımını iyileştirir (çalma fenomeni yapmaz).\n• Uterus: Rahim düz kaslarını hızla gevşetir (50-100 mcg IV), bu özelliğiyle fetal başın kurtarılamadığı doğumlarda kullanılabilir.\n• Trombosit: Trombosit agregasyonunu (yapışmasını) azaltıcı etkisi vardır.",
          ),
          HypotensiveAgentsItem(
            title: "HİDRALAZİN (ARTERİYOLLER ÜZERİNDE ETKİ VE GEBELİK)",
            description: "Doğrudan arteriyol düz kaslarında gevşeme yaparak sistemik vasküler direnci düşüren uzun etkili bir ajandır.",
            subtitle: "Etki başlangıcı yavaş (15 dk) ancak süresi uzundur (2-4 saat)",
            additionalInfo: "Özellikle gebelik hipertansiyonu ve preeklampsi yönetiminde güvenle tercih edilir. Kan basıncındaki düşüşe yanıt olarak refleks taşikardi ve kalp debisinde artış gelişir. Kronik kalp yetmezliği olan hastalarda afterload yükünü azaltarak fayda sağlar.",
          ),
        ],
      ),
      HypotensiveAgentsCategory(
        categoryName: 'Non-Nitrovazodilatörler ve Diğer Ajanlar',
        items: [
          HypotensiveAgentsItem(
            title: "FENOLDOPAM (D1 AGONİSTİ VE RENAL KORUMA)",
            description: "Selektif dopamin-1 reseptör agonistidir; kan basıncını düşürürken böbrek kan akımını ve idrar çıkışını artırır.",
            subtitle: "Kontrast madde kullanımına bağlı nefropatiyi önlemede klinik endikasyonu mevcuttur",
            additionalInfo: "Malign hipertansiyon ve postoperatif tansiyon kontrolünde kullanılır. Karaciğerdeki inaktif metabolitleri nedeniyle organ yetmezliğinde doz ayarlamasına gerek duyulmaz. Yan etki olarak baş ağrısı, kızarıklık (flushing) ve hipokalemi görülebilir.",
          ),
          HypotensiveAgentsItem(
            title: "FENOLDOPAM SİSTEMİK ETKİLERİ VE GLOKOM RİSKİ",
            description: "Sistemik kan basıncını düşürürken göz içi basıncını artırabileceği için glokom hastalarında dikkatli olunmalıdır.",
            additionalInfo: "Glomerüler filtrasyon hızını (GFR) ve sodyum atılımını (natriürezi) artırır. Bu özellikleriyle hipertansiyona eşlik eden böbrek yetmezliği vakalarında nitroprussidden daha avantajlı bir profil sergiler.",
          ),
          HypotensiveAgentsItem(
            title: "KALSİYUM KANAL BLOKERLERİ (DİHİDROPİRİDİNLER)",
            description: "Vasküler L-tipi kalsiyum kanallarını bloke ederek özellikle damar düz kaslarında gevşeme ve tansiyon düşüşü sağlarlar.",
            subtitle: "Son eki -dipin olan (Nikardipin, Nimodipin vb.) dihidropiridin grubu ajanlar damar selektiftir",
            additionalInfo: "Kardiyak ileti (AV nod) üzerinde minimal etkileri vardır, bu yüzden kalp hızını baskılamazlar. Kardiyotorasik ve vasküler cerrahide rutin tansiyon kontrolünde yaygın olarak kullanılırlar.",
          ),
        ],
      ),
      HypotensiveAgentsCategory(
        categoryName: 'Klinik Özet Spotlar',
        items: [
          HypotensiveAgentsItem(
            title: "KLİNİK KARŞILAŞTIRMA VE ÖNEMLİ NOTLAR",
            description: "Hipotansif ajan seçiminde etki başlangıcı, toksisite riski ve organ koruma potansiyeli belirleyicidir.",
            additionalInfo: "• Sodyum Nitroprussid: En hızlı ve en güçlüdür ancak siyanür toksisitesine karşı 10 mcg/kg/dk dozu aşılmamalıdır.\n• Nitrogliserin: Venöz yatak ve koroner perfüzyon için idealdir; 'çalma' yapmaz.\n• Hidralazin: Gebelik HT yönetiminde yavaş ama kalıcı etki için tercih edilir.\n• Fenoldopam: Böbrekleri korumak istenen HT vakalarında ilk seçenektir.",
          ),
        ],
      ),
    ];
  }
}
