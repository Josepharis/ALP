import 'package:flutter/material.dart';

class NeuromuscularBlockingAgentsItem {
  final String title;
  final String description;
  final String? subtitle;
  final String? additionalInfo;

  NeuromuscularBlockingAgentsItem({
    required this.title,
    required this.description,
    this.subtitle,
    this.additionalInfo,
  });
}

class NeuromuscularBlockingAgentsCategory {
  final String categoryName;
  final List<NeuromuscularBlockingAgentsItem> items;

  NeuromuscularBlockingAgentsCategory({
    required this.categoryName,
    required this.items,
  });
}

class NeuromuscularBlockingAgentsData {
  static List<NeuromuscularBlockingAgentsCategory> getNeuromuscularBlockingAgentsData(BuildContext context) {
    return [
      NeuromuscularBlockingAgentsCategory(
        categoryName: 'Nöromüsküler İletim',
        items: [
          NeuromuscularBlockingAgentsItem(
            title: 'Aksiyon Potansiyeli ve Ach Salınımı',
            description: 'Aksiyon potansiyeli → motor uç plak → Ach salınımı.',
            subtitle: 'Ach, nikotinik reseptör (%10 bağlanma yeterli) → depolarizasyon.',
          ),
          NeuromuscularBlockingAgentsItem(
            title: 'Reseptör Yapısı',
            description: 'Reseptör: 2α + β + δ + ε (fetal: ε yerine γ).',
            subtitle: 'Ach sadece iki α alt ünitesine bağlanınca kasılma olur.',
          ),
          NeuromuscularBlockingAgentsItem(
            title: 'Kuantum Teorisi',
            description: '1 kuantum ≈ 10⁴ Ach; bir uyarıda ≈ 200 kuantum salınır.',
            subtitle: '[Ca²⁺] artışı → Ach salınımı artar.',
          ),
          NeuromuscularBlockingAgentsItem(
            title: 'Patolojik Durumlar',
            description: 'Eaton-Lambert: Ach salınımı az.',
            subtitle: 'Myastenia gravis: reseptör az.',
            additionalInfo: 'Ach → AchE ile yıkılır.',
          ),
        ],
      ),
      NeuromuscularBlockingAgentsCategory(
        categoryName: 'Depolarizan vs Nondepolarizan Blok',
        items: [
          NeuromuscularBlockingAgentsItem(
            title: 'Temel Farklar',
            description: 'Hepsi kuarterner amonyum bileşikleri.',
            subtitle: 'Depolarizan (SC): Ach gibi davranır → sürekli depolarizasyon → Faz I blok. Uzarsa Faz II blok.',
            additionalInfo: 'Nondepolarizan: α alt ünitesini bloke eder (yarışmalı antagonizma).',
          ),
          NeuromuscularBlockingAgentsItem(
            title: 'Denervasyon Etkisi',
            description: 'Denervasyon → reseptör ↑ → depolarizan aşırı yanıt, nondepolarizan direnç.',
          ),
          NeuromuscularBlockingAgentsItem(
            title: 'Kanal Blokları',
            description: 'Kapalı kanal bloğu → kanal tıkalı.',
            subtitle: 'Açık kanal bloğu → kullanım bağımlı.',
            additionalInfo: 'Neostigmin, antibiyotikler, kokain, kinidin → kanal blok.',
          ),
          NeuromuscularBlockingAgentsItem(
            title: 'Antagonizma',
            description: 'Nondepolarizan blok geri dönüş: AChE inhibitörleri, sugammadeks (steroid yapılıları bağlar).',
            subtitle: 'SC ve mivaküryum → psödokolinesteraz ile yıkılır.',
          ),
        ],
      ),
      NeuromuscularBlockingAgentsCategory(
        categoryName: 'Periferik Sinir Stimülasyonu',
        items: [
          NeuromuscularBlockingAgentsItem(
            title: 'TOF (Train of Four)',
            description: '4 uyarı (fade → nondepolarizan / Faz II blok).',
          ),
          NeuromuscularBlockingAgentsItem(
            title: 'Tetani ve Diğer Yöntemler',
            description: 'Tetani (50-100 Hz, 5 sn), DBS, ST.',
            subtitle: 'Posttetanik potansiyasyon: nondepolarizan blokta görülür.',
            additionalInfo: 'En duyarlı yöntem: DBS / tetani.',
          ),
        ],
      ),
      NeuromuscularBlockingAgentsCategory(
        categoryName: 'Depolarizan Kas Gevşeticiler',
        items: [
          NeuromuscularBlockingAgentsItem(
            title: 'Süksinilkolin',
            description: 'Yapı: diacetilkolin.',
            subtitle: 'Başlangıç: 30-40 sn, süre: ~10 dk.',
            additionalInfo: 'Yıkım: psödokolinesteraz.',
          ),
          NeuromuscularBlockingAgentsItem(
            title: 'Dibukain Sayısı',
            description: 'Normal: %80 (5-10 dk)',
            subtitle: 'Heterozigot: %40-60 (10-20 dk)',
            additionalInfo: 'Homozigot: %20 (4-6 saat)',
          ),
          NeuromuscularBlockingAgentsItem(
            title: 'Klinik Avantajlar',
            description: 'Entübasyon kolaylığı, hızlı etki, kısa süre.',
          ),
          NeuromuscularBlockingAgentsItem(
            title: 'Kardiyovasküler Yan Etkiler',
            description: 'KVS: düşük doz → bradikardi, yüksek doz → taşikardi.',
          ),
          NeuromuscularBlockingAgentsItem(
            title: 'Diğer Yan Etkiler',
            description: 'Fasikülasyon + kas ağrısı.',
            subtitle: 'Hiperkalemi: yanık, travma, nörolojik bozukluk (7-10. günden sonra en riskli).',
            additionalInfo: 'İntraoküler basınç ↑ → göz travmasında kontrendike.\nMassetter spazm → MH belirtisi olabilir.\nMH tetikleyici.\nUzatılmış paralizi: psödokolinesteraz defekti.\nHistamin salınımı hafif.',
          ),
          NeuromuscularBlockingAgentsItem(
            title: 'Kontrendikasyonlar',
            description: 'Çocuk/adölesan rutin kullanım, tok hasta (aspirasyon riski), MH şüphesi.',
          ),
        ],
      ),
      NeuromuscularBlockingAgentsCategory(
        categoryName: 'Nondepolarizan Kas Gevşeticiler',
        items: [
          NeuromuscularBlockingAgentsItem(
            title: 'Genel Özellikler',
            description: 'Steroid yapı: vagolitik (özellikle panküronyum).',
            subtitle: 'İzokinolin yapı: histamin salınımı (atraküryum, mivaküryum).',
            additionalInfo: 'Potent ajan → etki başlangıcı yavaş.',
          ),
          NeuromuscularBlockingAgentsItem(
            title: 'Etki Güçlendirici Faktörler',
            description: 'İnhalasyon anestezikleri bloğu güçlendirir (Des>Sevo>İso>En>Halotan).',
            subtitle: 'Hipokalemi, hipokalsemi, hipermagnezemi → bloğu güçlendirir.',
          ),
          NeuromuscularBlockingAgentsItem(
            title: 'Özel Durumlar',
            description: 'Yenidoğan: duyarlılık ↑ (reseptör immatür), doz azaltmaya gerek yok.',
            subtitle: 'Glottik yapılar bloğa dirençli.',
            additionalInfo: 'Entübasyon değerlendirmesi: orbicularis oculi.',
          ),
        ],
      ),
      NeuromuscularBlockingAgentsCategory(
        categoryName: 'Ajanlara Özel',
        items: [
          NeuromuscularBlockingAgentsItem(
            title: 'Atrakurium',
            description: 'Metabolizma: Hoffman eliminasyonu + ester hidrolizi.',
            subtitle: 'Yan etki: histamin salınımı, laudanozin → nöbet.',
            additionalInfo: 'Asidoz/hipotermide etkisi uzar.',
          ),
          NeuromuscularBlockingAgentsItem(
            title: 'Sisatrakurium',
            description: 'Atrakuriumun daha potent formu, histamin salınımı çok az.',
          ),
          NeuromuscularBlockingAgentsItem(
            title: 'Panküronyum',
            description: 'Steroid yapı, vagolitik → taşikardi, aritmi.',
            subtitle: 'Böbrekten atılır.',
          ),
          NeuromuscularBlockingAgentsItem(
            title: 'Veküronyum',
            description: 'Safra ile atılır.',
            subtitle: 'Aktif metabolit → uzun süreli kullanımda BY\'de birikir.',
            additionalInfo: 'Kadınlar daha duyarlı (%30).',
          ),
          NeuromuscularBlockingAgentsItem(
            title: 'Roküronyum',
            description: 'Hızlı başlangıç, entübasyonda avantajlı.',
            subtitle: 'Metabolize olmaz, safra+böbrek atılımı.',
            additionalInfo: '60-90 sn\'de entübasyon olanağı.',
          ),
          NeuromuscularBlockingAgentsItem(
            title: 'Gantakurium',
            description: 'Yeni ajan, 1-2 dk başlangıç, 5-10 dk etki.',
            subtitle: 'Yıkım: sistein ile indirgenme + ester hidrolizi.',
          ),
        ],
      ),
      NeuromuscularBlockingAgentsCategory(
        categoryName: 'Özet',
        items: [
          NeuromuscularBlockingAgentsItem(
            title: 'Depolarizan (SC)',
            description: 'Hızlı, kısa, yan etkili.',
          ),
          NeuromuscularBlockingAgentsItem(
            title: 'Nondepolarizan',
            description: 'Güvenli, uzun/orta etki, yan etkiler ajana özgü.',
          ),
          NeuromuscularBlockingAgentsItem(
            title: 'Özel Metabolizma',
            description: 'Atrakurium/sisatrakurium: Hoffman eliminasyonu → KC/BY\'den bağımsız.',
            subtitle: 'Panküronyum: taşikardi.',
            additionalInfo: 'Roküronyum: hızlı etki, sugammadeks ile antagonize.',
          ),
        ],
      ),
    ];
  }
}
