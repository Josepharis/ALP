import 'package:flutter/material.dart';

class AirwayManagementItem {
  final String title;
  final String description;
  final String? subtitle;
  final String? additionalInfo;

  AirwayManagementItem({
    required this.title,
    required this.description,
    this.subtitle,
    this.additionalInfo,
  });
}

class AirwayManagementCategory {
  final String categoryName;
  final List<AirwayManagementItem> items;

  AirwayManagementCategory({
    required this.categoryName,
    required this.items,
  });
}

class AirwayManagementData {
  static List<AirwayManagementCategory> getAirwayManagementData(BuildContext context) {
    return [
      AirwayManagementCategory(
        categoryName: 'Basic Airway Management',
        items: [
          AirwayManagementItem(
            title: 'Airway Assessment',
            description: 'Evaluation of airway anatomy and potential difficulties before anesthesia.',
            subtitle: 'Essential for safe anesthesia',
            additionalInfo: 'Includes Mallampati score, thyromental distance, and neck mobility assessment.',
          ),
        ],
      ),
    ];
  }
}
