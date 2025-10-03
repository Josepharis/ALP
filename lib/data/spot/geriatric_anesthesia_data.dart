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
  static List<GeriatricAnesthesiaCategory> getGeriatricAnesthesiaData(BuildContext context) {
    return [
      GeriatricAnesthesiaCategory(
        categoryName: 'Kardiyovasküler Sistem',
        items: [
          GeriatricAnesthesiaItem(
            title: 'Genel Değişiklikler',
            description: 'Kardiyak ve vasküler kompliyans ↓, kapaklarda kalsifikasyon ↑',
          ),
          GeriatricAnesthesiaItem(
            title: 'Maksimum Kalp Hızı',
            description: '50 yaş sonrası her yıl ~1/dk azalır',
          ),
          GeriatricAnesthesiaItem(
            title: 'Diyastolik Disfonksiyon',
            description: 'Sık (ama diyastolik yetmezlik ≠ disfonksiyon)',
            subtitle: 'E/é >15 → diyastolik disfonksiyon; <8 → normal',
          ),
        ],
      ),
      GeriatricAnesthesiaCategory(
        categoryName: 'Solunum Sistemi',
        items: [
          GeriatricAnesthesiaItem(
            title: 'Alveol Değişiklikleri',
            description: 'Alveol distansiyonu + küçük havayolu kollapsı → V/Q uyumsuzluğu',
          ),
          GeriatricAnesthesiaItem(
            title: 'Hacim Değişiklikleri',
            description: 'Rezidüel hacim (RV) ve FRK ↑, kapanma kapasitesi ↑',
          ),
          GeriatricAnesthesiaItem(
            title: 'PaO₂',
            description: 'Yılda 0.35 mmHg azalır',
          ),
          GeriatricAnesthesiaItem(
            title: 'Yönetim',
            description: 'Uzun preoksijenasyon, intraop yüksek FiO₂, PEEP, agresif pulmoner temizlik',
          ),
        ],
      ),
      GeriatricAnesthesiaCategory(
        categoryName: 'Metabolik & Endokrin',
        items: [
          GeriatricAnesthesiaItem(
            title: 'O₂ Tüketimi',
            description: '↓',
          ),
          GeriatricAnesthesiaItem(
            title: 'Kilo Kaybı',
            description: '60 yaş sonrası başlar',
          ),
          GeriatricAnesthesiaItem(
            title: 'Termoregülasyon',
            description: 'Bozulur → hipotermi riski ↑',
          ),
          GeriatricAnesthesiaItem(
            title: 'DM Prevalansı',
            description: '>70 yaşta %70',
          ),
        ],
      ),
      GeriatricAnesthesiaCategory(
        categoryName: 'Renal Fonksiyon',
        items: [
          GeriatricAnesthesiaItem(
            title: 'Kreatinin',
            description: 'Kas kitlesi ↓ → kreatinin normal ama BUN ↑',
          ),
          GeriatricAnesthesiaItem(
            title: 'Tübüler Fonksiyon',
            description: 'Dilüsyon/konsantrasyon, Na & glukoz reabsorbsiyonu bozulur',
          ),
          GeriatricAnesthesiaItem(
            title: 'Komplikasyonlar',
            description: 'AKI riski ↑, hipo-hiperkalemiye yatkın',
          ),
        ],
      ),
      GeriatricAnesthesiaCategory(
        categoryName: 'Gastrointestinal & Hepatik',
        items: [
          GeriatricAnesthesiaItem(
            title: 'Karaciğer',
            description: 'Kitlesi ↓, biyotransformasyon ↓',
          ),
          GeriatricAnesthesiaItem(
            title: 'Serum Albümini',
            description: '↓ → asidik ilaç bağlanması ↓',
          ),
        ],
      ),
      GeriatricAnesthesiaCategory(
        categoryName: 'Santral Sinir Sistemi',
        items: [
          GeriatricAnesthesiaItem(
            title: 'Otoregülasyon',
            description: 'Korunur ama beyin kan akımı %10–20 ↓',
          ),
          GeriatricAnesthesiaItem(
            title: 'Nöronal Kayıp',
            description: 'Duyusal eşik ↑',
          ),
          GeriatricAnesthesiaItem(
            title: 'Anestezik İhtiyacı',
            description: '↓ (hem genel hem lokal)',
          ),
          GeriatricAnesthesiaItem(
            title: 'Postop Davranışsal Bozukluk',
            description: '1 haftaya kadar ~%30',
          ),
        ],
      ),
      GeriatricAnesthesiaCategory(
        categoryName: 'Kas-İskelet & Cilt',
        items: [
          GeriatricAnesthesiaItem(
            title: 'Kas Kitlesi',
            description: '↓',
          ),
          GeriatricAnesthesiaItem(
            title: 'Cilt',
            description: 'Atrofisi → travmaya açık',
            subtitle: 'Frajil venler → iv girişim zor olabilir',
          ),
        ],
      ),
      GeriatricAnesthesiaCategory(
        categoryName: 'Yaşla İlgili Farmakolojik Değişiklikler',
        items: [
          GeriatricAnesthesiaItem(
            title: 'Vücut Kompozisyonu',
            description: 'Kas kitlesi ↓, yağ kitlesi ↑ → lipofilik ilaçların dağılım hacmi ↑, eliminasyon uzar',
          ),
          GeriatricAnesthesiaItem(
            title: 'Albümin',
            description: '↓ (asidik ilaç bağlanması ↓: benzodiazepin, barbitürat, opioid)',
          ),
          GeriatricAnesthesiaItem(
            title: 'α1-Asit Glikoprotein',
            description: '↑ (bazik ilaç bağlanması ↑: lokal anestezikler)',
          ),
        ],
      ),
      GeriatricAnesthesiaCategory(
        categoryName: 'İnhalasyon Ajanları',
        items: [
          GeriatricAnesthesiaItem(
            title: 'MAK',
            description: '40 yaş sonrası her 10 yılda %4 ↓',
          ),
          GeriatricAnesthesiaItem(
            title: 'Derlenme',
            description: 'Pulmoner gaz değişim bozukluğu → derlenme yavaş',
          ),
          GeriatricAnesthesiaItem(
            title: 'KC Fonksiyonu',
            description: 'Minimal etkilenir',
          ),
        ],
      ),
      GeriatricAnesthesiaCategory(
        categoryName: 'İV Ajanlar',
        items: [
          GeriatricAnesthesiaItem(
            title: 'Genel Özellikler',
            description: 'Duyarlılık ↑, doz gereksinimi ↓ (~%50)',
          ),
          GeriatricAnesthesiaItem(
            title: 'Doz Gereksinimi Azalanlar',
            description: 'Propofol, midazolam, alfentanil, fentanil',
          ),
          GeriatricAnesthesiaItem(
            title: 'Fentanil/Alfentanil/Sufentanil',
            description: 'Farmakokinetik stabil, fakat farmakodinamik değişmiş',
          ),
          GeriatricAnesthesiaItem(
            title: 'Remifentanil',
            description: 'Hem kinetik hem dinamik değişmiş',
          ),
        ],
      ),
      GeriatricAnesthesiaCategory(
        categoryName: 'Kas Gevşeticiler',
        items: [
          GeriatricAnesthesiaItem(
            title: 'NMB Yanıtı',
            description: 'Genelde değişmez',
            subtitle: 'Başlama süresi uzayabilir',
          ),
          GeriatricAnesthesiaItem(
            title: 'KC/Böbrek Eliminasyonlu Ajanlar',
            description: 'Roküronyum, veküronyum, panküronyum → etki süresi uzar',
          ),
          GeriatricAnesthesiaItem(
            title: 'Atrakurium/Sisatrakurium',
            description: 'Güvenli (organ bağımsız eliminasyon)',
          ),
        ],
      ),
      GeriatricAnesthesiaCategory(
        categoryName: 'Klinik Püf Noktalar',
        items: [
          GeriatricAnesthesiaItem(
            title: 'Anestezik Doz',
            description: 'Yaşlıda daha az doz anestezik → daha uzun etki',
          ),
          GeriatricAnesthesiaItem(
            title: 'Preoksijenasyon',
            description: 'Süresini uzat, PEEP uygula',
          ),
          GeriatricAnesthesiaItem(
            title: 'Risk Faktörleri',
            description: 'Hipotermi ve AKI riskine karşı önlem al',
            subtitle: 'Postop delirium/davranış değişiklikleri için yüksek risk',
          ),
          GeriatricAnesthesiaItem(
            title: 'Girişimler',
            description: 'Frajil damarlar ve cilt nedeniyle girişimler daha zor',
          ),
        ],
      ),
    ];
  }
}
