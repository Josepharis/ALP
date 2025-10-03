import 'package:flutter/material.dart';

class InhalationAnestheticsItem {
  final String title;
  final String description;
  final String? subtitle;
  final String? additionalInfo;

  InhalationAnestheticsItem({
    required this.title,
    required this.description,
    this.subtitle,
    this.additionalInfo,
  });
}

class InhalationAnestheticsCategory {
  final String categoryName;
  final List<InhalationAnestheticsItem> items;

  InhalationAnestheticsCategory({
    required this.categoryName,
    required this.items,
  });
}

class InhalationAnestheticsData {
  static List<InhalationAnestheticsCategory> getInhalationAnestheticsData(BuildContext context) {
    return [
      InhalationAnestheticsCategory(
        categoryName: 'Farmakokinetik',
        items: [
          InhalationAnestheticsItem(
            title: 'Fi (İnspirasyon Konsantrasyonu)',
            description: 'Yüksek Fi, küçük solunum sistemi, düşük devre absorbsiyonu → hızlı indüksiyon/derlenme.',
          ),
          InhalationAnestheticsItem(
            title: 'FA (Alveoler Konsantrasyon)',
            description: 'Uptake ↑ → indüksiyon yavaş.',
            subtitle: 'Kan/gaz partisyon katsayısı ↑ → çözünürlük ↑ → indüksiyon yavaş.',
            additionalInfo: 'Doku uptake sırası: damardan zengin > kas > yağ > damardan fakir.\n\nVentilasyon: Özellikle iyi çözünen ajanlarda FA/Fi yükselmesini hızlandırır.',
          ),
          InhalationAnestheticsItem(
            title: 'Konsantrasyon ve İkinci Gaz Etkisi',
            description: 'Konsantrasyon etkisi: Fi ↑ → alveolde daha çok gaz kalır.',
            subtitle: 'İkinci gaz etkisi: N₂O, diğer ajan uptake\'ini ↑.',
          ),
          InhalationAnestheticsItem(
            title: 'Arteriyel Konsantrasyon (Fa)',
            description: 'V/Q uyumsuzluğu → indüksiyon yavaş.',
          ),
          InhalationAnestheticsItem(
            title: 'Eliminasyon',
            description: 'CYP2E1 metabolizması; indüksiyonu hızlandıran faktörler derlenmeyi de hızlandırır.',
            subtitle: 'N₂O difüzyon hipoksisi: >5 dk %100 O₂ ver.',
            additionalInfo: 'Derlenme genelde indüksiyondan hızlıdır, süreye bağlıdır.',
          ),
        ],
      ),
      InhalationAnestheticsCategory(
        categoryName: 'Farmakodinamik',
        items: [
          InhalationAnestheticsItem(
            title: 'Etki Teorileri',
            description: 'N₂O, Xenon → NMDA antagonisti.\nGABA ve nikotinik Ach reseptörleri etkilenir.',
            subtitle: 'Korteks → amnezi, Spinal kord → analjezi.',
          ),
          InhalationAnestheticsItem(
            title: 'Meyer-Overton Kuralı',
            description: 'Yağda çözünürlük ↑ → etki ↑ (artık geçerli değil).',
            subtitle: 'Kritik hacim hipotezi: Membran genişlemesi ile etki.',
          ),
          InhalationAnestheticsItem(
            title: 'Nörotoksisite ve Koruma',
            description: 'İzofluran → nöronal apoptoz ↑ (deneysel).',
            subtitle: 'Nöral koruma/kardiyak preconditioning: NMDA antagonistleri nöroprotektif.',
          ),
          InhalationAnestheticsItem(
            title: 'MAK (Minimum Alveoler Konsantrasyon)',
            description: '1 atm\'de %50 hastada cerrahi uyarıya yanıtı engelleyen alveolar kons.',
            subtitle: 'MAK = ED50\n1,3×MAK = ED95',
            additionalInfo: 'Her 10 yılda %6 ↓',
          ),
        ],
      ),
      InhalationAnestheticsCategory(
        categoryName: 'Ajanlara Özel Spotlar',
        items: [
          InhalationAnestheticsItem(
            title: 'N₂O (Nitröz Oksit)',
            description: 'Patlayıcı değil, yanmayı destekler.',
            subtitle: 'KVS: Katekolamin stimülasyonu.',
            additionalInfo: 'Solunum: SS ↑, TV ↓, hipoksik drive baskılanır.\nBeyin: İKB ve CMRO₂ ↑.\nGIS: POBK ↑.\n\nToksisite: B12 inhibisyonu → DNA ve miyelin sentezi bozulur.\n\nKE: Hava embolisi, barsak distansiyonu, pnömotoraks, timpanik greft.\n\n%65 N₂O → diğer ajan MAK ↓ %50.',
          ),
          InhalationAnestheticsItem(
            title: 'Halotan',
            description: 'Halojenli alkan; kehribar şişede saklanır.',
            subtitle: 'KVS: SKB ↓, CO ↓, barorefleks baskılı. Epinefrin ≤1,5 mcg/kg.',
            additionalInfo: 'Solunum: Vent ↓, bronkodilatör, mukosiliyer fonksiyon bozar.\nBeyin: SKA ↑, CMRO₂ ↓.\nNMB potansiyelize eder, MH tetikler.\n\nHepatotoksik: Halotan hepatiti (1/35000, orta yaş-kadın-obezite risk).\n\nKE: MH öyküsü, hepatit öyküsü.\nİlaç etkileşimi: Aminofilin → ciddi aritmi.',
          ),
          InhalationAnestheticsItem(
            title: 'İzofluran',
            description: 'Eter benzeri.',
            subtitle: 'KVS: Minimal depresyon, "coronary steal phenomenon" yapabilir.',
            additionalInfo: 'Beyin: SKA ↑, CMRO₂ ↓, EEG\'de burst-supresyon.\nNMB potansiyelize eder.\nMetabolizma düşük (TFA metaboliti).\n\nKE: MH öyküsü.',
          ),
          InhalationAnestheticsItem(
            title: 'Desfluran',
            description: 'Iso → Cl yerine F.',
            subtitle: 'Çok düşük çözünürlük → hızlı uyanma.',
            additionalInfo: 'İritan → indüksiyonda dikkat.\nHızlı konsantrasyon artışı → katekolamin deşarjı.\nCO çıkışı: kuru absorbanda (özellikle BaOH₂, NaOH, KOH).\n\nKE: MH öyküsü.\nPediatriklerde post-op deliryum.',
          ),
          InhalationAnestheticsItem(
            title: 'Sevofluran',
            description: 'Yumuşak kokulu, pediatri için uygun.',
            subtitle: 'KVS: QT uzatır, CO korunmaz.',
            additionalInfo: 'Beyin: SKA ↑, 1,5 MAK\'da otoregülasyon bozulur.\nNefrotoksik metabolit: Compound A (↓2 L/dk taze gaz).\nF düzeyi ↑ (50 mmol/L).\nCam şişede HF oluşabilir.\n\nKE: MH öyküsü.',
          ),
          InhalationAnestheticsItem(
            title: 'Xenon',
            description: 'MAK 0,71 – çok potent.',
            subtitle: 'Kan/gaz 0,115 → en hızlı indüksiyon.',
            additionalInfo: 'NMDA antagonisti.\nPahalı.',
          ),
        ],
      ),
    ];
  }
}
