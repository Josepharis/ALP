import 'package:flutter/material.dart';

class AnesthesiaHistoryItem {
  final String title;
  final String description;
  final String? subtitle;
  final String? additionalInfo;

  AnesthesiaHistoryItem({
    required this.title,
    required this.description,
    this.subtitle,
    this.additionalInfo,
  });
}

class AnesthesiaHistoryCategory {
  final String categoryName;
  final List<AnesthesiaHistoryItem> items;

  AnesthesiaHistoryCategory({
    required this.categoryName,
    required this.items,
  });
}

class AnesthesiaHistoryData {
  static List<AnesthesiaHistoryCategory> getAnesthesiaHistoryData(BuildContext context) {
    return [
      AnesthesiaHistoryCategory(
        categoryName: "Birth of Modern Anesthesia and Pioneers",
        items: [
          AnesthesiaHistoryItem(
            title: "WILLIAM MORTON",
            description: "Provided the birth of modern anesthesia by performing the first successful public ether anesthesia.",
            additionalInfo: "On October 16, 1846, at the 'Ether Dome' amphitheater in Boston, he enabled surgeon John Warren to perform a painless tumor surgery, opening a new era in medical history.",
          ),
          AnesthesiaHistoryItem(
            title: "HORACE WELLS",
            description: "The first pioneer to use Nitrous Oxide (N₂O) gas for tooth extraction.",
            additionalInfo: "Although he had his own tooth extracted painlessly, his public demonstration in Boston was considered unsuccessful because the patient groaned; however, he served as an inspiration for Morton.",
          ),
          AnesthesiaHistoryItem(
            title: "JOHN SNOW",
            description: "The first specialist doctor to place anesthesia on scientific foundations and administer chloroform for Queen Victoria's deliveries.",
            additionalInfo: "By proving the dosage and safety of anesthesia, he ensured its social acceptance and also laid the foundations of modern epidemiology.",
          ),
          AnesthesiaHistoryItem(
            title: "OLIVER WENDELL HOLMES",
            description: "Used the term 'Anesthesia' for the first time to define the state of painless surgery.",
            additionalInfo: "In a letter written to William Morton in 1846, he suggested this word (meaning numbness/insensitivity) derived from Greek.",
          ),
          AnesthesiaHistoryItem(
            title: "JAMES YOUNG SIMPSON",
            description: "Discovered chloroform and used it specifically to relieve labor pains, initiating analgesia in obstetrics.",
            additionalInfo: "He began using chloroform, which is stronger and faster-acting than ether, in 1847, and waged a scientific struggle against the conservative circles of the time.",
          ),
        ],
      ),
      AnesthesiaHistoryCategory(
        categoryName: "Development of Local and Regional Anesthesia",
        items: [
          AnesthesiaHistoryItem(
            title: "CARL KOLLER",
            description: "Laid the foundation of local anesthesia by discovering the effect of cocaine on the eye (1884).",
            additionalInfo: "This discovery created a revolution not only in ophthalmic surgery but also in all regional anesthesia techniques and fundamentally changed surgical practice.",
          ),
          AnesthesiaHistoryItem(
            title: "AUGUST BIER",
            description: "Performed the first successful spinal anesthesia in the world (1898).",
            additionalInfo: "He tested this application using cocaine on himself and his assistant, thus determining the limits of regional anesthesia.",
          ),
          AnesthesiaHistoryItem(
            title: "ALEXANDER WOOD",
            description: "Paved the way for intravenous (IV) anesthesia by inventing the hypodermic syringe (1855).",
            additionalInfo: "This invention, which allowed drugs to be delivered directly into the tissue and blood circulation, forms the technical infrastructure of most modern anesthesia methods today.",
          ),
        ],
      ),
      AnesthesiaHistoryCategory(
        categoryName: "Modern Techniques and Drug Developments",
        items: [
          AnesthesiaHistoryItem(
            title: "JOHN LUNDY",
            description: "Introduced the concept of 'Balanced Anesthesia,' where drugs with different purposes are used together instead of a single drug.",
            additionalInfo: "With this principle developed in 1926, side effects were reduced and anesthesia safety was maximized.",
          ),
          AnesthesiaHistoryItem(
            title: "ROBERT MACINTOSH",
            description: "Developed laryngoscope blades and techniques that made airway management safe.",
            additionalInfo: "The curved laryngoscope blade (Macintosh blade) he designed in the 1940s is still the most standard airway equipment in the world today.",
          ),
          AnesthesiaHistoryItem(
            title: "GRIFFITH AND JOHNSON",
            description: "Included the use of Curare in anesthesia to provide complete muscle relaxation (1942).",
            additionalInfo: "As a result, surgeries requiring deep muscle relaxation, such as intra-abdominal and chest surgeries, have become much safer and easier to perform.",
          ),
        ],
      ),
    ];
  }
}
