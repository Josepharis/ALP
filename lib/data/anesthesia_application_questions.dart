import '../models/question.dart';

final anesthesiaApplicationQuestions = <Question>[
  Question(
    question:
        "Aşağıdakilerden hangisi \"anestezi\" terimini ilk kez, cerrahi sırasında ağrısızlığı tanımlamak amacıyla kullanan kişidir?",
    options: [
      "John Snow",
      "William Morton",
      "Oliver Wendell Holmes",
      "Joseph Clover",
      "Humphry Davy",
    ],
    correctAnswerIndex: 2,
    explanation:
        "1846'da Oliver Wendell Holmes, amnezi, analjezi ve narkozu içeren durumu tanımlamak için \"anestezi\" terimini önermiştir.",
    category: "Anestezi Uygulaması",
  ),

  Question(
    question:
        "Modern lokal anestezinin başlangıcı olarak kabul edilen, kokain ile ilk topikal göz anestezisini yapan kişi kimdir?",
    options: [
      "William Halsted",
      "August Bier",
      "Carl Koller",
      "John Snow",
      "Joseph Clover",
    ],
    correctAnswerIndex: 2,
    explanation:
        "Carl Koller, 1884'te kokain ile gözde topikal anestezi uygulamıştır.",
    category: "Anestezi Uygulaması",
  ),

  Question(
    question:
        "İlk başarılı halka açık genel anestezi uygulaması aşağıdaki ajanlardan hangisi ile yapılmıştır?",
    options: [
      "Kloroform",
      "Nitröz oksit",
      "Dietil eter",
      "Sevofluran",
      "Tiyopental",
    ],
    correctAnswerIndex: 2,
    explanation:
        "William T.G. Morton, 1846'da eter ile ilk genel anesteziyi halka açık şekilde uygulamıştır.",
    category: "Anestezi Uygulaması",
  ),

  Question(
    question:
        "Aşağıdaki ajanlardan hangisi hâlen klinik kullanımda olan, ilk geliştirilen inhalasyon anestezikleri arasındadır?",
    options: [
      "Kloroform",
      "Dietil eter",
      "Sevofluran",
      "Nitröz oksit",
      "Metoksifluran",
    ],
    correctAnswerIndex: 3,
    explanation:
        "Nitröz oksit, potensi düşük olsa da günümüzde hâlâ kullanılan en eski ajanlardan biridir.",
    category: "Anestezi Uygulaması",
  ),

  Question(
    question:
        "Spinal anesteziyi ilk uygulayan hekim kimdir?",
    options: [
      "Fidel Pages",
      "August Bier",
      "Heinrich Braun",
      "William Halsted",
      "Jean Sicard",
    ],
    correctAnswerIndex: 1,
    explanation:
        "August Bier, 1898 yılında ilk spinal anesteziyi uygulamıştır.",
    category: "Anestezi Uygulaması",
  ),

  Question(
    question:
        "İlk hipodermik şırınga ve iğnenin icadı kime aittir ve intravenöz anestezinin başlangıcı bu icatla mümkün olmuştur?",
    options: [
      "Albert Niemann",
      "Alexander Wood",
      "Ralph Waters",
      "Edmund Andrews",
      "Joseph Clover",
    ],
    correctAnswerIndex: 1,
    explanation:
        "Alexander Wood, 1855'te hipodermik şırıngayı icat etmiştir; bu, IV anestezinin temelidir.",
    category: "Anestezi Uygulaması",
  ),

  Question(
    question:
        "Aşağıdakilerden hangisi \"anestezi sırasında hastanın nabzını sürekli izlemeyi öneren\" ve çene itme manevrasını ilk kullanan kişidir?",
    options: [
      "Joseph Clover",
      "Ivan Magill",
      "John Snow",
      "William Halsted",
      "Sir Frederic Hewitt",
    ],
    correctAnswerIndex: 0,
    explanation:
        "Joseph Clover, modern havayolu yönetimi ve monitörizasyonun öncüsüdür.",
    category: "Anestezi Uygulaması",
  ),

  Question(
    question:
        "Aşağıdaki ajanlardan hangisi inhalasyon anestezisinin popülaritesini artıran ilk güçlü ajanlardan biridir?",
    options: ["Halotan", "Sevofluran", "Kloroform", "Propofol", "Ketamin"],
    correctAnswerIndex: 2,
    explanation:
        "Kloroform, özellikle 19. yüzyılda doğum ağrılarında kullanımıyla popülerlik kazanmıştır.",
    category: "Anestezi Uygulaması",
  ),

  Question(
    question:
        "Bier bloğu olarak bilinen intravenöz rejyonal anesteziyi ilk tanımlayan kişi kimdir?",
    options: ["Halsted", "Cathelin", "August Bier", "Dogliotti", "Sicard"],
    correctAnswerIndex: 2,
    explanation:
        "August Bier, hem ilk spinal anesteziyi hem de IV rejyonal anesteziyi tanımlamıştır.",
    category: "Anestezi Uygulaması",
  ),

  Question(
    question:
        "Aşağıdakilerden hangisi \"balans anestezi\" kavramını tanımlayan bileşenlerden biridir?",
    options: [
      "Sadece inhalasyon ajanı kullanımı",
      "Yalnızca opioid ile anestezi",
      "Tiyopental + opioid + nöromüsküler bloker",
      "Ketamin + lidokain + N2O",
      "Sadece rejyonal anestezi",
    ],
    correctAnswerIndex: 2,
    explanation:
        "Balans anestezide birden fazla ajan kombinasyonu ile farklı etkiler sağlanır (amnezi, analjezi, kas gevşemesi vb).",
    category: "Anestezi Uygulaması",
  ),

  Question(
    question:
        "İlk kez trakeal entübasyonu ameliyat sırasında uygulayan öncülerden biri aşağıdakilerden hangisidir?",
    options: [
      "John Snow",
      "Sir Ivan Magill",
      "Joseph O'Dwyer",
      "Ralph Waters",
      "F.H. McMechan",
    ],
    correctAnswerIndex: 2,
    explanation:
        "Joseph O'Dwyer, trakeal entübasyonu elektif olarak uygulayan öncülerdendir.",
    category: "Anestezi Uygulaması",
  ),

  Question(
    question:
        "Aşağıdaki lokal anestezik ajanlardan hangisi dental uygulamalarda yaygın olarak kullanılır ve kimyasal olarak benzersizdir?",
    options: ["Lidokain", "Bupivakain", "Prilokain", "Articain", "Ropivakain"],
    correctAnswerIndex: 3,
    explanation:
        "Articain, dental anestezide sık kullanılan, kimyasal yapısı farklı olan bir lokal anesteziktir.",
    category: "Anestezi Uygulaması",
  ),

  Question(
    question:
        "Anestezinin ilk kez genel anestezi için başarıyla kullanıldığı tarih nedir?",
    options: ["1846", "1865", "1900", "1920", "1800"],
    correctAnswerIndex: 0,
    explanation:
        "1846 yılında William T.G. Morton, etere dayalı ilk başarılı genel anesteziyi uygulamıştır, bu tarih modern anestezinin başlangıcı kabul edilir.",
    category: "Anestezi Uygulaması",
  ),

  Question(
    question: "Anestezi ilk kez kim tarafından uygulanmıştır?",
    options: [
      "Horace Wells",
      "William T.G. Morton",
      "James Simpson",
      "John Snow",
      "Edward Jenner",
    ],
    correctAnswerIndex: 0,
    explanation:
        "Horace Wells, nitrojen oksit gazını kullanarak ilk anesteziyi 1844 yılında uygulamıştır. Ancak ilk başarılı genel anesteziyi William T.G. Morton gerçekleştirmiştir.",
    category: "Anestezi Uygulaması",
  ),

  Question(
    question: "Lokal anesteziyi ilk uygulayan kişi kimdir?",
    options: [
      "William T.G. Morton",
      "Carl Koller",
      "James Simpson",
      "John Snow",
      "Edward Jenner",
    ],
    correctAnswerIndex: 1,
    explanation:
        "Carl Koller, 1884 yılında kokaini lokal anestezi olarak kullanarak ilk lokal anesteziyi gerçekleştirmiştir.",
    category: "Anestezi Uygulaması",
  ),

  Question(
    question: "John Snow anestezi tarihinde hangi önemli katkıyı yapmıştır?",
    options: [
      "Eterin genel anestezi olarak kullanımını başlatmıştır",
      "Modern anestezi cihazını icat etmiştir",
      "Ether ve chloroformun güvenli kullanımını araştırmıştır",
      "Lokal anesteziyi ilk kullanmıştır",
      "Anestezinin ilk tarihsel kaydını yazmıştır",
    ],
    correctAnswerIndex: 2,
    explanation:
        "John Snow, ether ve chloroform gibi anestezi ajanlarının güvenli kullanımı konusunda önemli araştırmalar yapmış ve özellikle kraliyet ailesinin anestezi yönetiminde kullanmıştır.",
    category: "Anestezi Uygulaması",
  ),

  Question(
    question:
        "Anestezi uygulamalarının yaygınlaşmasına büyük katkı sağlayan ilk ilaç hangisidir?",
    options: ["Eter", "Kloroform", "Propofol", "Midazolam", "Etomidat"],
    correctAnswerIndex: 0,
    explanation:
        "Ether, genel anestezi uygulamalarının yaygınlaşmasını sağlayan ilk önemli ilaçtır. 1846 yılında William T.G. Morton tarafından kullanılmıştır.",
    category: "Anestezi Uygulaması",
  ),

  Question(
    question:
        "Chloroformun anesteziye girmesinde hangi önemli rol oynanmıştır?",
    options: [
      "İlk anestezi ajanı olarak kullanılmıştır",
      "Daha az toksik olduğu için tercih edilmiştir",
      "Lokal anestezi olarak kullanılmıştır",
      "İlaçların etkinliğini artırmak için kullanılmıştır",
      "Daha hızlı iyileşme sağlamıştır",
    ],
    correctAnswerIndex: 1,
    explanation:
        "Chloroform, ether'e göre daha az toksik olduğu için daha güvenli bir seçenek olarak anestezi uygulamalarında kullanılmıştır, ancak daha sonra yan etkileri nedeniyle kullanımından kaçınılmıştır.",
    category: "Anestezi Uygulaması",
  ),

  Question(
    question: "James Simpson'un anestezi camiasına katkısı nedir?",
    options: [
      "İlk başarılı lokal anesteziyi uygulamıştır",
      "İlk anestezi cihazını icat etmiştir",
      "Chloroformu anestezi için kullanmaya başlamıştır",
      "Etherin yaygın kullanımını başlatmıştır",
      "Modern anestezi monitörizasyonunu geliştirmiştir",
    ],
    correctAnswerIndex: 2,
    explanation:
        "James Simpson, chloroformu anestezi ajanı olarak kullanmaya başlamış ve bu yöntem büyük bir devrim yaratmıştır.",
    category: "Anestezi Uygulaması",
  ),

  Question(
    question:
        "Aşağıdaki anestezi ajanlarından hangisi ilk kez 20. yüzyılda kullanılmaya başlanmıştır?",
    options: ["Eter", "Kloroform", "Halotan", "Sevofluran", "Propofol"],
    correctAnswerIndex: 2,
    explanation:
        "Halotan, 20. yüzyılın ortalarında kullanılan ilk halojenize anestezi ajanıdır ve uzun süre yaygın olarak kullanılmıştır.",
    category: "Anestezi Uygulaması",
  ),

  Question(
    question:
        "Etherin genel anestezi olarak kullanımı ilk olarak hangi tıp fakültesi hastanesinde gerçekleştirilmiştir?",
    options: [
      "Massachusetts General Hospital",
      "Johns Hopkins Hospital",
      "Cleveland Clinic",
      "London Hospital",
      "Paris Üniversitesi Tıp Fakültesi",
    ],
    correctAnswerIndex: 0,
    explanation:
        "1846'da Massachusetts General Hospital'da William T.G. Morton, ether kullanarak ilk başarılı genel anesteziyi uygulamıştır. Bu tarih, modern anestezinin başlangıcı kabul edilir.",
    category: "Anestezi Uygulaması",
  ),

  Question(
    question:
        "Anestezinin tarihsel gelişiminde ilk solunum yolunu koruyucu cihaz kim tarafından geliştirilmiştir?",
    options: [
      "William T.G. Morton",
      "John Snow",
      "Sir Robert Macintosh",
      "Charles S. Stanley",
      "William Osler",
    ],
    correctAnswerIndex: 1,
    explanation:
        "John Snow, ilk solunum yolunu koruyucu cihaz olan endotrakeal tüpün temel ilkelerini geliştirmiştir. Bu buluş, anesteziyi daha güvenli hale getirmiştir.",
    category: "Anestezi Uygulaması",
  ),

  Question(
    question:
        "Anestezinin gelişiminde ilk güvenli genel anestezi uygulaması kim tarafından gerçekleştirilmiştir?",
    options: [
      "Horace Wells",
      "William T.G. Morton",
      "James Simpson",
      "John Snow",
      "Edward Jenner",
    ],
    correctAnswerIndex: 1,
    explanation:
        "William T.G. Morton, ether ile yapılan ilk başarılı genel anesteziyi 1846 yılında Massachusetts General Hospital'da gerçekleştirmiştir. Bu, modern anestezinin temel taşlarını atmıştır.",
    category: "Anestezi Uygulaması",
  ),

  Question(
    question:
        "Genel anestezinin gelişiminde ilk sedasyon ajanı olarak hangi ilaç kullanılmıştır?",
    options: [
      "Eter",
      "Chloral hydrate",
      "Nitrous oxide",
      "Chloroform",
      "Propofol",
    ],
    correctAnswerIndex: 1,
    explanation:
        "Chloral hydrate, ilk sedasyon ajanı olarak 19. yüzyılın sonlarında kullanılmıştır. Bu ilaç, anestezi uygulamaları öncesinde hastayı sedate etmek için yaygın olarak kullanılmıştır.",
    category: "Anestezi Uygulaması",
  ),

  Question(
    question:
        "Anestezi tarihinde önemli bir dönüm noktası olan ilk kombi anestezi tekniği kim tarafından geliştirilmiştir?",
    options: [
      "William T.G. Morton",
      "John Snow",
      "James Simpson",
      "Horace Wells",
      "Edward Jenner",
    ],
    correctAnswerIndex: 1,
    explanation:
        "John Snow, ether ve chloroformu kombinleyerek ilk kombine anestezi tekniklerini geliştirmiştir. Bu, daha güvenli bir anestezi uygulaması sağlamıştır.",
    category: "Anestezi Uygulaması",
  ),

  Question(
    question:
        "Anestezi tarihinin önemli gelişmelerinden biri, ağrı kontrolü sağlamak için kullanılan ilk ilaç nedir?",
    options: [
      "Eter",
      "Chloroform",
      "Fentanil",
      "Kokain",
      "Halotan",
    ],
    correctAnswerIndex: 3,
    explanation:
        "Kokain, ilk kez ağrı kontrolü için kullanılan lokal anestezik ajandır. Ayrıca, lokal anestezi uygulamalarında analjezik etkisiyle devrim yaratmıştır.",
    category: "Anestezi Uygulaması",
  ),

  Question(
    question:
        "Anestezi tarihinin önemli figürlerinden olan Horace Wells neyi keşfetmiştir?",
    options: [
      "İlk güvenli genel anesteziyi uygulamıştır",
      "Lokal anesteziyi keşfetmiştir",
      "Nitrous oxide (gülme gazı) kullanarak ilk ağrısız işlemi gerçekleştirmiştir",
      "Chloroformu anestezi için kullanmaya başlamıştır",
      "İlk anestezi cihazını icat etmiştir",
    ],
    correctAnswerIndex: 2,
    explanation:
        "Horace Wells, nitrojen oksit (gülme gazı) kullanarak ilk ağrısız diş tedavisini 1844'te gerçekleştirmiştir. Bu, modern anestezi uygulamalarının ilk adımlarını atmıştır.",
    category: "Anestezi Uygulaması",
  ),

  Question(
    question:
        "Anestezi tarihinin önemli figürlerinden olan Sir Robert Macintosh hangi katkıyı yapmıştır?",
    options: [
      "İlk genel anesteziyi uygulamıştır",
      "Spinal anesteziyi keşfetmiştir",
      "Endotrakeal tüpün kullanımını yaygınlaştırmıştır",
      "Halotanı keşfetmiştir",
      "Anestezi monitörizasyonunu geliştirmiştir",
    ],
    correctAnswerIndex: 2,
    explanation:
        "Sir Robert Macintosh, endotrakeal tüpün kullanılmasını yaygınlaştırarak hava yolunun güvenliğini artırmış ve anestezi yönetimini güvenli hale getirmiştir.",
    category: "Anestezi Uygulaması",
  ),

  Question(
    question:
        "Modern anestezi cihazlarının ilk icadı hangi yıl gerçekleşmiştir?",
    options: [
      "1846",
      "1860",
      "1880",
      "1900",
      "1920",
    ],
    correctAnswerIndex: 1,
    explanation:
        "1860 yılında, William Morton ve John Snow, modern anestezi cihazlarını geliştirmeye başlamışlardır. Bu cihazlar, anestezinin daha kontrollü ve güvenli hale gelmesine olanak sağlamıştır.",
    category: "Anestezi Uygulaması",
  ),

  Question(
    question:
        "Anestezi tarihinin önemli buluşlarından biri, ilk güvenli genel anesteziyi uygulamak hangi hastalıkla mücadelede gerçekleştirilmiştir?",
    options: [
      "Diş çekimi",
      "Cilt cerrahisi",
      "Karaciğer ameliyatı",
      "Ameliyat sonrası komplikasyonlar",
      "Göz cerrahisi",
    ],
    correctAnswerIndex: 0,
    explanation:
        "William T.G. Morton, etheri kullanarak diş çekimi sırasında ilk güvenli genel anesteziyi uygulamıştır. Bu, modern anestezinin başlangıcıdır.",
    category: "Anestezi Uygulaması",
  ),

  Question(
    question:
        "Anestezi tarihindeki ilk büyük devrim, hangi aşamada yaşanmıştır?",
    options: [
      "Kokainin keşfi",
      "Halotan kullanımı",
      "Eterin güvenli kullanımı",
      "Spinal anestezi uygulaması",
      "Halojenize anesteziklerin bulunması",
    ],
    correctAnswerIndex: 2,
    explanation:
        "Ether'in ilk güvenli kullanımının keşfi, modern anestezinin başlangıcıdır ve cerrahilerin ağrısız yapılabilmesini mümkün kılmıştır.",
    category: "Anestezi Uygulaması",
  ),

  Question(
    question:
        "Anestezinin gelişiminde önemli bir buluş olan propofolun klinik kullanıma girmesi hangi yıl gerçekleşmiştir?",
    options: [
      "1980",
      "1985",
      "1990",
      "1995",
      "2000",
    ],
    correctAnswerIndex: 1,
    explanation:
        "Propofol, 1985 yılında klinik kullanım için onaylanmış ve günümüzde anestezi uygulamalarında yaygın olarak kullanılmaktadır. Bu, anestezinin gelişmesinde önemli bir adımdır.",
    category: "Anestezi Uygulaması",
  ),

];