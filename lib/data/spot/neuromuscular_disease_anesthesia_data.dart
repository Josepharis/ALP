import 'package:flutter/material.dart';

class NeuromuscularDiseaseAnesthesiaItem {
  final String title;
  final String description;
  final String? subtitle;
  final String? additionalInfo;

  NeuromuscularDiseaseAnesthesiaItem({
    required this.title,
    required this.description,
    this.subtitle,
    this.additionalInfo,
  });
}

class NeuromuscularDiseaseAnesthesiaCategory {
  final String categoryName;
  final List<NeuromuscularDiseaseAnesthesiaItem> items;

  NeuromuscularDiseaseAnesthesiaCategory({
    required this.categoryName,
    required this.items,
  });
}

class NeuromuscularDiseaseAnesthesiaData {
  static List<NeuromuscularDiseaseAnesthesiaCategory>
      getNeuromuscularDiseaseAnesthesiaData(BuildContext context) {
    return [
      NeuromuscularDiseaseAnesthesiaCategory(
        categoryName: 'Myastenia Gravis (MG)',
        items: [
          NeuromuscularDiseaseAnesthesiaItem(
            title: "MG İNSİDANSI VE DEMOGRAFİK ÖZELLİKLER",
            description: "Myastenia Gravis, nöromüsküler kavşaktaki nikotinik asetilkolin reseptörlerine (AChR) karşı gelişen otoantikorlarla seyreden kronik bir hastalıktır.",
            subtitle: "Kadınlarda genellikle 20'li yaşlarda (3. dekad), erkeklerde ise 30-60 yaş aralığında (3-6. dekad) pik yapar",
            additionalInfo: "Hastalığın patofizyolojisi, ACh reseptörlerinin yıkılması sonucu kaslarda ilerleyici güçsüzlükle karakterizedir.",
          ),
          NeuromuscularDiseaseAnesthesiaItem(
            title: "MG KLİNİK TİPLERİ VE TUTULUM ORANLARI",
            description: "MG hastalarının büyük çoğunluğu (%85-90) genel tipte seyrederken, bir kısmı sadece göz kaslarıyla sınırlı (%50-70 oküler) kalır.",
            additionalInfo: "Oküler MG'si olan hastaların bir kısmı zamanla genel MG formuna dönüşebilir.",
          ),
          NeuromuscularDiseaseAnesthesiaItem(
            title: "TİMİK HASTALIK VE TİMOMA İLİŞKİSİ",
            description: "MG hastalarının %70'inde timik hiperplazi, %10-15'inde ise timoma (timus tümörü) saptanır.",
            additionalInfo: "Timusun cerrahi olarak çıkarılması (timektomi), antikor seviyelerini düşürerek hastalığın cerrahi tedavisinde önemli bir yer tutar.",
          ),
          NeuromuscularDiseaseAnesthesiaItem(
            title: "KAS GRUBU TUTULUMU VE KLİNİK BELİRTİLER",
            description: "Belirtiler tutulan kas grubuna göre değişmekle birlikte; pitozis, diplopi ve çiğneme zorluğu en sık başlangıç semptomlarıdır.",
            additionalInfo: "Tutulum ilerledikçe ekstremitelerde güçsüzlük ve en tehlikelisi olan solunum kası yetmezliği gelişebilir.",
          ),
          NeuromuscularDiseaseAnesthesiaItem(
            title: "PRİDOSTİGMİN TEDAVİSİ VE ETKİ SÜRESİ",
            description: "MG'nin temel tıbbi tedavisinde kullanılan bir antikolinesteraz olan pridostigminin oral etkisi 2–4 saat sürer.",
            subtitle: "İlaç dozunun gereğinden fazla artırılması 'kolinerjik kriz' tablosuna yol açabilir",
            additionalInfo: "Dozerin ayarlanması, kas gücünü maksimize ederken yan etkileri minimalde tutmayı hedefler.",
          ),
          NeuromuscularDiseaseAnesthesiaItem(
            title: "EDROFONYUM (TENSILON) TESTİ VE KRİZ AYIRIMI",
            description: "Miyastenik kriz ile kolinerjik kriz arasındaki ayırımı yapmak için ultra kısa etkili edrofonyum testi kullanılır.",
            subtitle: "Eğer edrofonyum sonrası kas güçsüzlüğü artıyorsa, bu bir kolinerjik krizdir ve ilaç dozunun fazlalığını gösterir",
            additionalInfo: "Test sırasında kas gücünde iyileşme görülmesi ise miyastenik krizi (ilaç yetersizliğini) teyit eder.",
          ),
          NeuromuscularDiseaseAnesthesiaItem(
            title: "PREOPERATİF HAZIRLIK VE PLAZMAFEREZ İHTİYACI",
            description: "MG'li hastalar ameliyat öncesi mutlaka optimum klinik durumda olmalı, solunum kapasiteleri netleştirilmelidir.",
            subtitle: "Şiddetli solunum veya orofaringeal kas zayıflığı olan hastalarda IV Ig veya plazmaferez ile hazırlık gerekebilir",
            additionalInfo: "Hedef, postoperatif mekanik ventilasyon ihtiyacını en aza indirmektir.",
          ),
          NeuromuscularDiseaseAnesthesiaItem(
            title: "KOLİNESTERAZ İNHİBİTÖRLERİNDE IV DOZAJ",
            description: "Ameliyat öncesi oral alımı kesilen hastalarda, mevcut dozun 1/30'u intravenöz (IV) yolla idame ettirilebilir.",
            additionalInfo: "Doz dönüşümü yapılırken hastanın yanıtı klinik olarak yakından izlenmelidir.",
          ),
          NeuromuscularDiseaseAnesthesiaItem(
            title: "ESTER TİPİ LOKAL ANESTEZİKLER VE SCH ETKİSİ",
            description: "Kolinesteraz inhibitörleri, plazma kolinesterazını da baskılayarak ester tipi lokal anesteziklerin ve süksinilkolinin (Sch) yarı ömrünü belirgin şekilde uzatır.",
            additionalInfo: "Bu durumda Sch'nin klinik etkisi çok daha uzun sürebilir; nöromüsküler monitörizasyon şarttır.",
          ),
          NeuromuscularDiseaseAnesthesiaItem(
            title: "BARBİTÜRAT VE OPİOİD KULLANIMI",
            description: "MG hastalarında orta dozlardaki barbitüratlar ve opioidler bile kas güçsüzlüğünü derinleştirerek solunum depresyonuna yol açabilir.",
            additionalInfo: "Bu ajanlar kullanılırken çok dikkatli doz ayarı yapılmalı ve hasta solunum açısından yakından takip edilmelidir.",
          ),
          NeuromuscularDiseaseAnesthesiaItem(
            title: "VOLATİL ANESTEZİKLERLE GENEL ANESTEZİ TERCİHİ",
            description: "MG vakalarında, kas gevşetici kullanımını minimize ettiği için volatil anestezik ajanlarla sürdürülen genel anestezi genellikle tercih edilen yöntemdir.",
            additionalInfo: "Volatil ajanlar kendiliğinden bir miktar nöromüsküler blokaj sağlar, bu da entübasyon için yeterli gevşemeyi sunabilir.",
          ),
          NeuromuscularDiseaseAnesthesiaItem(
            title: "POSTOPERATİF MEKANİK VENTİLASYON KRİTERLERİ (MG >6 YIL)",
            description: "Miyasteni gravis süresi 6 yıldan fazla olan hastaların ameliyat sonrası ventilatörden ayrılması zor olabilir.",
            subtitle: "Eşlik eden akciğer hastalığı olması durumunda risk daha da katlanır",
            additionalInfo: "Tepe inspiratuvar basıncın 25 cmH2O'nun altında olması da weaning (ayrılma) zorluğunu gösteren bir kriterdir.",
          ),
          NeuromuscularDiseaseAnesthesiaItem(
            title: "SOLUNUMSAL VENTİLASYON KRİTERLERİ (VC <4 ML/KG)",
            description: "Hastanın vital kapasitesinin (VC) 4 mL/kg'ın altında olması veya günlük pridostigmin ihtiyacının 750 mg'ı aşması ventilasyon ihtiyacını artırır.",
            additionalInfo: "Bu parametreler, hastanın ameliyat sonrasında yoğun bakımda ne kadar süre kalması gerektiğini belirlemede yardımcıdır.",
          ),
          NeuromuscularDiseaseAnesthesiaItem(
            title: "GEBELİK VE NEONATAL MYASTENİA GRAVİS",
            description: "MG'li gebelerde özellikle son trimester ve postpartum (doğum sonrası) evre klinik ağırlaşmanın en sık görüldüğü dönemlerdir.",
            subtitle: "Ağrı kontrolü ve stres minimizasyonu için epidural anestezi güvenle tercih edilebilir",
            additionalInfo: "Annelerden geçen antikorlar nedeniyle doğan bebeklerin %12-20'sinde ilk 1–3 hafta süren geçici 'neonatal MG' tablosu gelişebilir.",
          ),
        ],
      ),
      NeuromuscularDiseaseAnesthesiaCategory(
        categoryName: 'Paraneoplastik Nöromüsküler Sendromlar',
        items: [
          NeuromuscularDiseaseAnesthesiaItem(
            title: "LAMBERT-EATON MYASTENİK SENDROMU (LEMS)",
            description: "Genellikle Küçük Hücreli Akciğer Kanseriyle ilişkili olan bu sendromda, ana bulgu proksimal kas (özellikle alt ekstremite) güçsüzlüğüdür.",
            subtitle: "Patofizyolojide voltaj kapılı Kalsiyum kanallarına karşı antikor gelişimi söz konusudur",
            additionalInfo: "ACh salınımının yetersizliği, tipik bir presinaptik bozukluk yaratır.",
          ),
          NeuromuscularDiseaseAnesthesiaItem(
            title: "LEMS KLİNİK ÖZELLİKLERİ VE TEDAVİ YANITI",
            description: "MG'nin aksine, LEMS hastalarında kas gücü efor ve aktivite ile geçici de olsa düzelme eğilimi gösterir.",
            subtitle: "Antikolinesterazların (pridostigmin) etkisi bu hastalarda çok sınırlıdır",
            additionalInfo: "Tedavide Ach salınımını artıran 3–4 diaminopiridin gibi ajanlar daha etkili sonuçlar verir.",
          ),
          NeuromuscularDiseaseAnesthesiaItem(
            title: "LİMBİK ENSEFALİT VE PARANEOPLASTİK İLİŞKİ",
            description: "Halüsinasyon, nöbet, otonomik disfonksiyon ve demansla seyreden bu tablonun %60'ı paraneoplastik kökenlidir.",
            subtitle: "Sıklıkla küçük hücreli akciğer kanseri (KHAK) ile ilişkilidir",
            additionalInfo: "Asimetrik duyu kaybı tanı koydurucu önemli bir ek bulgu olabilir.",
          ),
          NeuromuscularDiseaseAnesthesiaItem(
            title: "NÖROMİYOTONİ (BAG OF WORM) BELİRTİLERİ",
            description: "Sürekli ve istemsiz 'solucan torbası' (bag of worm) görünümündeki kas hareketleri ve kramplarla karakterize bir durumdur.",
            subtitle: "Hiperhidroz (aşırı terleme) ve kas hipertrofisi eşlik eden önemli klinik göstergelerdir",
            additionalInfo: "Tedavisinde plazmaferez, İV Ig ve antikonvülzan ilaçlar (fenitoin, karbamazepin) kullanılır.",
          ),
          NeuromuscularDiseaseAnesthesiaItem(
            title: "STIFF PERSON SENDROMU VE RİJİDİTE",
            description: "Gövde ve proksimal ekstremite kaslarında gelişen aşırı rijidite nedeniyle spinal deformiteler ve sık düşmelerle sonuçlanan nadir bir sendromdur.",
            additionalInfo: "Özellikle paraspinal kasların rijiditesi sırtın tahta gibi sert olmasına neden olur.",
          ),
          NeuromuscularDiseaseAnesthesiaItem(
            title: "POLİMİYOSİT VE ASPİRASYON RİSKİ",
            description: "Üst ekstremitelerde daha belirgin olan kas güçsüzlüğü ve kolay yorulma ile seyreden inflamatuar bir kas hastalığıdır.",
            subtitle: "Yutma kaslarının etkilenmesi nedeniyle aspirasyon pnömonisi riski belirgin şekilde yüksektir",
            additionalInfo: "Hastalarda genel bitkinlik ve kas ağrıları klinik tabloya eşlik eder.",
          ),
          NeuromuscularDiseaseAnesthesiaItem(
            title: "PARANEOPLASTİK SENDROMLARDA ANESTEZİ YAKLAŞIMI",
            description: "Bu gruptaki tüm hastalar nöromüsküler blokerlere (NMB) karşı aşırı derecede duyarlıdır; doza çok dikkat edilmelidir.",
            subtitle: "Volatil anesteziklerin kas gevşetici etkisi entübasyonu kolaylaştırmak için kullanılabilir",
            additionalInfo: "Benzodiazepin, opioid ve diğer sedatiflerin kullanımı sırasında derinleşebilecek solunum yetmezliğine karşı uyanık olunmalıdır.",
          ),
        ],
      ),
      NeuromuscularDiseaseAnesthesiaCategory(
        categoryName: 'Müsküler Distrofiler',
        items: [
          NeuromuscularDiseaseAnesthesiaItem(
            title: "DUCHENE MÜSKÜLER DİSTROFİSİ (DMD) VE BAŞLANGIÇ",
            description: "X'e bağlı resesif geçişli olan DMD, her 10.000 erkek çocuktan yaklaşık 1-3'ünde 3-5 yaşları arasında ortaya çıkar.",
            subtitle: "Simetrik proksimal kas güçsüzlüğü ve psödohipertrofi (özellikle baldırlarda yalancı şişme) karakteristiktir",
            additionalInfo: "Hastalık hızla ilerler ve çocuklar genellikle 12 yaşına kadar tekerlekli sandalyeye bağımlı hale gelirler.",
          ),
          NeuromuscularDiseaseAnesthesiaItem(
            title: "DUCHENE LABORATUVAR BULGULARI (CK ARTIŞI)",
            description: "DMD hastalarında kas hasarının en net göstergesi olan Kreatin Kinaz (CK) seviyeleri normalin 10–100 katına kadar çıkabilir.",
            additionalInfo: "Bu yüksek düzeyler hastalığın çok aktif ve yıkıcı bir evrede olduğunu gösterir.",
          ),
          NeuromuscularDiseaseAnesthesiaItem(
            title: "DUCHENE PULMONER KOMPLİKASYONLAR",
            description: "Öksürme refleksinin kaybı ve sekresyonların birikmesi sonucu tekrarlayan pnömoniler en tehlikeli solunumsal krizlerdir.",
            additionalInfo: "Solunum kaslarının zayıflaması zamanla mekanik ventilasyon ihtiyacını kaçınılmaz kılar.",
          ),
          NeuromuscularDiseaseAnesthesiaItem(
            title: "DUCHENE KARDİYAK TUTULUM VE HKMP",
            description: "DMD'li hastaların büyük kısmında Hipertrofik Kardiyomiyopati (HKMP) ve atrial fibrilasyon (AF) gibi aritmiler izlenir.",
            additionalInfo: "Kardiyak yetmezlik, bu hastalarda yaşam süresini belirleyen ana faktörlerden biridir.",
          ),
          NeuromuscularDiseaseAnesthesiaItem(
            title: "BECKER MÜSKÜLER DİSTROFİSİ",
            description: "Duchenne benzeri bir tablo sergilemekle birlikte daha geç yaşta başlar ve klinik seyri daha yavaştır.",
            subtitle: "Ölüm nedeni sıklıkla solunumsal komplikasyonlardır",
            additionalInfo: "Distrofin proteininin kısmi üretimi olması sayesinde DMD'ye göre daha selim bir tablodur.",
          ),
          NeuromuscularDiseaseAnesthesiaItem(
            title: "MİYOTONİK DİSTROFİ VE MULTİSİSTEMİK TUTULUM",
            description: "Otozomal dominant geçişli bu hastalıkta, kas kontraksiyonu sonrası gevşemenin çok yavaş olması karakteristiktir.",
            subtitle: "Sadece kasları değil; endokrin sistemi, GİS hareketlerini ve kalbi de tutan multisistemik bir hastalıktır",
            additionalInfo: "En sık görülen müsküler distrofi türlerinden biridir ve multiendokrinopatilere yol açar.",
          ),
          NeuromuscularDiseaseAnesthesiaItem(
            title: "MİYOTONİK DİSTROFİ LABORATUVAR TAKİBİ",
            description: "Miyotonik distrofi hastalarında plazma CK seviyeleri genellikle normaldir veya çok hafif bir artış gösterir.",
            additionalInfo: "Bu durum, DMD/Becker gibi yıkıcı distrofilerden ayrımında yardımcı olabilir.",
          ),
          NeuromuscularDiseaseAnesthesiaItem(
            title: "FASİOSKAPULOHUMERAL DİSTROFİ",
            description: "Genellikle 2. veya 3. dekadda başlayan, yüz ve omuz kaslarını etkileyen otozomal dominant bir hastalıktır.",
            subtitle: "Kadınlar sıklıkla asemptomatik taşıyıcı olabilir; CK seviyesi genellikle normaldir",
            additionalInfo: "Yüz ifadelerinin kaybı (maske yüz) ve omuz kuşağı zayıflığı tipik fiziksel bulgudur.",
          ),
          NeuromuscularDiseaseAnesthesiaItem(
            title: "LIMB-GIRDLE (HAMİAL-KUŞAK) DİSTROFİSİ",
            description: "Çocukluk çağında başlayan otozomal resesif bir hastalıktır; omuz ve kalça kuşağı kaslarını öncelikli etkiler.",
            subtitle: "Hipoventilasyon ve tekrarlayan pnömoni atakları klinik seyrin önemli bir parçasıdır",
            additionalInfo: "Laboratuvarda CK seviyesinin normal olması tanıda ayırt edicidir.",
          ),
          NeuromuscularDiseaseAnesthesiaItem(
            title: "DUCHENE/BECKER HASTALARINDA ANESTEZİ RİSKLERİ",
            description: "Bu hastalarda Malign Hipertermi (MH) ve Süksinilkolin sonrası ani ölümcül hiperkalemi riski son derece yüksektir.",
            subtitle: "Ayrıca NMB'ye karşı aşırı duyarlılık ve derin kardiyopulmoner komplikasyonlara meyillidirler",
            additionalInfo: "Anestezi planı MH şüphesi varmış gibi son derece titiz yürütülmelidir.",
          ),
          NeuromuscularDiseaseAnesthesiaItem(
            title: "MİYOTONİK DİSTROFİDE ANESTEZİ VE REVERS AJANLAR",
            description: "Postoperatif dönemde titreme veya miyotonik spazmlardan kaçınmak için hastalar çok yakın izlenmelidir.",
            subtitle: "NMB'yi geri döndüren revers ajanlar (neostigmin vb.) paradoxal olarak miyotonik kasılmaları tetikleyebilir",
            additionalInfo: "Ağır premedikasyondan solunum depresyonu riski nedeniyle kaçınılmalıdır.",
          ),
          NeuromuscularDiseaseAnesthesiaItem(
            title: "DİĞER DİSTROFİLERDE ANESTEZİ YANITI",
            description: "Fasioskapulohumeral ve Limb-girdle distrofilerinde anesteziye verilen yanıt genellikle normal popülasyona yakındır.",
            additionalInfo: "Yine de hastaların operasyon öncesi pulmoner rezervleri netleştirilmelidir.",
          ),
        ],
      ),
      NeuromuscularDiseaseAnesthesiaCategory(
        categoryName: 'Myotoniler',
        items: [
          NeuromuscularDiseaseAnesthesiaItem(
            title: "KONJENİTA VE PARAMİYOTONİ ÖZELLİKLERİ",
            description: "Kaslarda güçsüzlük minimal olsa da, soğuk ve eforla tetiklenen miyotonik ataklarla karakterizedir.",
            subtitle: "Ataklar sırasında serum potasyum seviyeleri yükselebilir (hiperkalemik tip)",
            additionalInfo: "Otozomal dominant veya resesif tipleri mevcuttur; iyon kanalı defektlerinden kaynaklanır.",
          ),
          NeuromuscularDiseaseAnesthesiaItem(
            title: "NMB YANITI VE MYOTONİK ALEVLENME",
            description: "Süksinilkolin kullanımı bu hastalarda anormal ve şiddetli miyotonik yanıtlara yol açabilir.",
            subtitle: "Non-depolarizan gevşeticiler bazen spazmı tetikleyebilir; operasyon sırasında miyotoni aniden alevlenebilir",
            additionalInfo: "Sıcak tutma ve kalsiyum blokerleri miyotonik kriz yönetiminde yardımcı olabilir.",
          ),
        ],
      ),
      NeuromuscularDiseaseAnesthesiaCategory(
        categoryName: 'Periyodik Paraliziler',
        items: [
          NeuromuscularDiseaseAnesthesiaItem(
            title: "PERİYODİK PARALİZİ GENEL ÖZELLİKLERİ",
            description: "Ani gelişen kas güçsüzlüğü ve paralizi ataklarıyla seyreden iyon kanalı hastalıklarıdır.",
            subtitle: "Hipotermi ve aşırı karbonhidrat tüketimi atakları şiddetle tetikleyebilir",
            additionalInfo: "Ataklar dışında hastaların potasyum değerleri genellikle normal sınırlardadır.",
          ),
          NeuromuscularDiseaseAnesthesiaItem(
            title: "ANESTEZİNİN ANA HEDEFİ: ATAK ÖNLENMESİ",
            description: "Perioperatif yönetimdeki en büyük hedef, hastanın operasyon stresi veya ısı kaybıyla paralizi atağına girmesini önlemektir.",
            additionalInfo: "Hastaların ameliyat öncesi elektrolit dengesi (K+, Ca++, Na+) mükemmelleştirilmelidir.",
          ),
          NeuromuscularDiseaseAnesthesiaItem(
            title: "İNTRAOPERATİF K+ VE EKG MONİTÖRİZASYONU",
            description: "Potasyum seviyelerindeki dalgalanmaları (hipokalemi/hiperkalemi) yakalamak için sık kan gazı ve EKG takibi şarttır.",
            additionalInfo: "Nöromüsküler monitorizasyon da bloker ihtiyacı için kritik rol oynar.",
          ),
          NeuromuscularDiseaseAnesthesiaItem(
            title: "SIVI YÖNETİMİ VE GLUKOZ KISITLAMASI",
            description: "Hipokalemik tipte, glukoz içeren sıvılar insülin salınımını artırarak potasyumu hücre içine sokar ve atağı tetikler; bu yüzden kaçınılmalıdır.",
            additionalInfo: "İdeal olan, sodyum laktat veya düz %0.9 NaCl kullanılmasıdır.",
          ),
          NeuromuscularDiseaseAnesthesiaItem(
            title: "PERİYODİK PARALİZİDE NMB DUYARLILIĞI",
            description: "Özellikle hipokalemik tipte nöromüsküler blokerlere karşı aşırı duyarlılık söz konusudur; Süksinilkolin KESİNLİKLE kontrendikedir.",
            additionalInfo: "Gevşetici dozları minimal tutulmalı ve her doz etkisi monitörize edilmelidir.",
          ),
          NeuromuscularDiseaseAnesthesiaItem(
            title: "ISI KONTROLÜ VE HİPOTERMİDEN KAÇINMA",
            description: "Operasyon boyunca hastanın ısısı 36.5°C civarında sabit tutulmalıdır; ısı kaybı atakların en güçlü tetikleyicisidir.",
            additionalInfo: "Isıtıcılı battaniyeler ve sıvı ısıtıcıları rutin olarak kullanılmalıdır.",
          ),
        ],
      ),
      NeuromuscularDiseaseAnesthesiaCategory(
        categoryName: 'Kritik Noktalar / Hızlı Hatırlatma',
        items: [
          NeuromuscularDiseaseAnesthesiaItem(
            title: "MG KRİTİK VENTİLASYON PARAMETRELERİ",
            description: "Post-op ventilasyon riskleri: MG > 6 yıl, VC < 4 mL/kg, Pridostigmin > 750 mg/gün ve Tepe İnspiratuvar Basınç < 25 cmH2O.",
            additionalInfo: "Bu değerler varsa hastanın yoğun bakım hazırlığı önceden yapılmalıdır.",
          ),
          NeuromuscularDiseaseAnesthesiaItem(
            title: "LEMS VE EFOR İLİŞKİSİ",
            description: "Lambert-Eaton hastalarında kas gücü eforla düzelir, antikolinesteraz tedavisine yanıtı ise oldukça sınırlıdır.",
            additionalInfo: "Bu özelliği ile klasik MG'den klinik olarak ayrılır.",
          ),
          NeuromuscularDiseaseAnesthesiaItem(
            title: "DUCHENE VE CK SEVİYELERİ",
            description: "DMD'de CK seviyeleri normalin 10-100 katına çıkar; bu hastalar tipik olarak 12 yaş civarı tekerlekli sandalyeye bağımlı hale gelirler.",
            additionalInfo: "Kreatin kinaz takibi hastalığın aktivite belirtecidir.",
          ),
          NeuromuscularDiseaseAnesthesiaItem(
            title: "MİYOTONİK DİSTROFİ VE PREMEDİKASYON",
            description: "Bu hastalarda premedikasyondan kaçınmalı, revers ajanların kasılmaları artırabileceği unutulmamalıdır.",
            additionalInfo: "Solunum depresyonu riski çok hassastır.",
          ),
          NeuromuscularDiseaseAnesthesiaItem(
            title: "PERİYODİK PARALİZİ VE POTASYUM TAKİBİ",
            description: "Hipotermi atakları tetikler, Süksinilkolin kontrendikedir ve sık potasyum takibi hayatidir.",
            additionalInfo: "Vücut ısısı korunmalıdır.",
          ),
        ],
      ),
    ];
  }
}
