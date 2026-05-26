import 'package:cloud_firestore/cloud_firestore.dart';

class SpotItem {
  final String id;
  final String title;
  final String description;
  final String? subtitle;
  final String? additionalInfo;
  final String categoryName;
  final String? unitName; // For explicit grouping by sections/units
  final String language; // 'tr' or 'en'
  final DateTime createdAt;

  SpotItem({
    required this.id,
    required this.title,
    required this.description,
    this.subtitle,
    this.additionalInfo,
    required this.categoryName,
    this.unitName,
    required this.language,
    required this.createdAt,
  });

  factory SpotItem.fromMap(String id, Map<String, dynamic> map) {
    return SpotItem(
      id: id,
      title: map['title'] ?? '',
      description: map['description'] ?? '',
      subtitle: map['subtitle'],
      additionalInfo: map['additionalInfo'],
      categoryName: map['categoryName'] ?? 'Genel',
      unitName: map['unitName'],
      language: map['language'] ?? 'tr',
      createdAt: (map['createdAt'] as Timestamp?)?.toDate() ?? DateTime.now(),
    );
  }

  Map<String, dynamic> toMap() {
    return {
      'title': title,
      'description': description,
      'subtitle': subtitle,
      'additionalInfo': additionalInfo,
      'categoryName': categoryName,
      'unitName': unitName,
      'language': language,
      'createdAt': Timestamp.fromDate(createdAt),
    };
  }
}

class SpotCategory {
  final String name;
  final List<SpotItem> items;

  SpotCategory({
    required this.name,
    required this.items,
  });
}
