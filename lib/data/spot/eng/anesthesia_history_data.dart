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
        categoryName: 'Milestones in General Anesthesia',
        items: [
          AnesthesiaHistoryItem(
            title: 'William Morton (1846)',
            description: 'First successful ether anesthesia',
            subtitle: 'Considered the beginning of modern anesthesia',
          ),
          AnesthesiaHistoryItem(
            title: 'Horace Wells (1844)',
            description: 'First attempted N₂O use for tooth extraction',
            subtitle: 'Considered unsuccessful',
          ),
          AnesthesiaHistoryItem(
            title: 'Oliver Wendell Holmes (1846)',
            description: 'First to use the term "Anesthesia"',
          ),
          AnesthesiaHistoryItem(
            title: 'Ether',
            description: 'First widely used general anesthetic',
          ),
          AnesthesiaHistoryItem(
            title: 'James Simpson',
            description: 'Introduced chloroform for obstetric analgesia',
          ),
          AnesthesiaHistoryItem(
            title: 'John Snow',
            description: 'Pioneered the safe use of ether and chloroform',
            subtitle: 'Administered anesthesia to the Royal Family',
            additionalInfo: 'Developed the first principles of endotracheal intubation',
          ),
        ],
      ),
      AnesthesiaHistoryCategory(
        categoryName: 'Drugs and First Uses',
        items: [
          AnesthesiaHistoryItem(
            title: 'Nitrous Oxide (N₂O)',
            description: '1800 → Humphry Davy described its analgesic effect',
            subtitle: '1844 → Wells/Colton used it in dentistry',
          ),
          AnesthesiaHistoryItem(
            title: 'Cocaine',
            description: '1884 → Carl Koller, topical use in eye surgery',
            subtitle: '1884 → William Halsted, used for nerve block/infiltration',
          ),
          AnesthesiaHistoryItem(
            title: 'Chloral Hydrate',
            description: 'First sedative, late 19th century',
          ),
          AnesthesiaHistoryItem(
            title: 'Barbiturates',
            description: 'First: Hexobarbital (1927)',
          ),
          AnesthesiaHistoryItem(
            title: 'Pure Opioid Anesthesia',
            description: 'Lowenstein, 1969',
          ),
        ],
      ),
      AnesthesiaHistoryCategory(
        categoryName: 'Regional Anesthesia – Highlights',
        items: [
          AnesthesiaHistoryItem(
            title: 'Spinal Anesthesia',
            description: 'August Bier, 1898',
          ),
          AnesthesiaHistoryItem(
            title: 'IV Regional (Bier Block)',
            description: '1908',
          ),
          AnesthesiaHistoryItem(
            title: 'Caudal Epidural',
            description: 'Cathelin & Sicard',
          ),
          AnesthesiaHistoryItem(
            title: 'Lumbar Epidural',
            description: 'Fidel Pagés (1921), Dogliotti (1931)',
          ),
        ],
      ),
      AnesthesiaHistoryCategory(
        categoryName: 'Technological / Practical Developments',
        items: [
          AnesthesiaHistoryItem(
            title: 'Alexander Wood (1855)',
            description: 'Hypodermic syringe → foundation of IV anesthesia',
          ),
          AnesthesiaHistoryItem(
            title: 'Joseph Clover',
            description: 'Pioneer of modern airway management & monitoring',
          ),
          AnesthesiaHistoryItem(
            title: 'Joseph O\'Dwyer',
            description: 'Elective tracheal intubation',
          ),
          AnesthesiaHistoryItem(
            title: 'Sir Robert Macintosh',
            description: 'Popularized endotracheal tube use (safer airway)',
          ),
          AnesthesiaHistoryItem(
            title: 'Lundy (1926)',
            description: 'Defined balanced anesthesia',
          ),
        ],
      ),
      AnesthesiaHistoryCategory(
        categoryName: 'Key Exam Spots',
        items: [
          AnesthesiaHistoryItem(
            title: 'SUMMARY SPOT QUESTIONS',
            description: '1846: Morton - First successful ether anesthesia',
            subtitle: '1844: Wells - First N₂O attempt (unsuccessful)',
            additionalInfo: '1898: Bier - Spinal anesthesia\n1908: Bier Block\n1921: Pagés - Lumbar epidural\n1926: Lundy - Balanced anesthesia',
          ),
        ],
      ),
    ];
  }
}
