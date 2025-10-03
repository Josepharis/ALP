import 'package:flutter/material.dart';

class OperatingRoomItem {
  final String title;
  final String description;
  final String? subtitle;
  final String? additionalInfo;

  OperatingRoomItem({
    required this.title,
    required this.description,
    this.subtitle,
    this.additionalInfo,
  });
}

class OperatingRoomCategory {
  final String categoryName;
  final List<OperatingRoomItem> items;

  OperatingRoomCategory({
    required this.categoryName,
    required this.items,
  });
}

class OperatingRoomData {
  static List<OperatingRoomCategory> getOperatingRoomData(BuildContext context) {
    return [
      OperatingRoomCategory(
        categoryName: 'Medical Gas Sources',
        items: [
          OperatingRoomItem(
            title: 'O₂ H-cylinder',
            description: '2000 psi → reduced to 55 ±5 psi',
          ),
          OperatingRoomItem(
            title: 'O₂ E-cylinder',
            description: '2000 psi = 660 L (at 20 °C)',
          ),
          OperatingRoomItem(
            title: 'Liquid O₂',
            description: 'Critical temperature –119 °C',
          ),
          OperatingRoomItem(
            title: 'Pin Index System',
            description: 'Prevents incorrect cylinder connections',
          ),
          OperatingRoomItem(
            title: 'N₂O',
            description: 'Critical temperature 36.5 °C',
            subtitle: 'Stored in liquid form in H/E cylinders',
            additionalInfo: 'Remaining volume cannot be estimated from pressure → must be weighed\nWhen pressure drops, ≈400 L remain\nFrosting may occur during vaporization',
          ),
          OperatingRoomItem(
            title: 'Medical Air',
            description: 'O₂ + N₂ mixture, critical temperature –140.6 °C',
          ),
          OperatingRoomItem(
            title: 'N₂',
            description: 'Used in medical devices',
          ),
          OperatingRoomItem(
            title: 'CO₂',
            description: 'Colorless, odorless, non-flammable, slightly acidic',
            subtitle: 'Used for insufflation in laparoscopy & robotic surgery',
            additionalInfo: 'M and LK cylinders',
          ),
        ],
      ),
      OperatingRoomCategory(
        categoryName: 'Distribution of Medical Gases',
        items: [
          OperatingRoomItem(
            title: 'Pipeline Pressure',
            description: 'Difference: ≤5 psi',
          ),
          OperatingRoomItem(
            title: 'Pipe Material',
            description: 'Seamless, welded copper pipes',
          ),
          OperatingRoomItem(
            title: 'Safety Systems',
            description: 'Diameter index + color coding: prevents misconnection',
          ),
        ],
      ),
      OperatingRoomCategory(
        categoryName: 'Environmental Factors in the Operating Room',
        items: [
          OperatingRoomItem(
            title: 'Temperature',
            description: 'Should be 20–24 °C',
            subtitle: 'Hypothermia → increased infection, blood loss, hospital stay',
          ),
          OperatingRoomItem(
            title: 'Humidity',
            description: 'Optimal: at 37 °C → 50–55% = 28–30 mg H₂O/L',
            subtitle: 'Room air: <10 mg H₂O/L; alveoli: 44 mg H₂O/L',
            additionalInfo: 'High humidity → barrier drapes deteriorate\nLow humidity → increased particle movement, infection risk ↑',
          ),
          OperatingRoomItem(
            title: 'Ventilation',
            description: 'High airflow → contamination ↓',
            subtitle: 'Slight positive pressure',
            additionalInfo: 'Ceiling-to-floor airflow\n25 air exchanges/hour\n90% filtration, HEPA not mandatory',
          ),
          OperatingRoomItem(
            title: 'Noise',
            description: 'Average 70 dB',
          ),
        ],
      ),
      OperatingRoomCategory(
        categoryName: 'Radiation Safety',
        items: [
          OperatingRoomItem(
            title: 'Dose Units',
            description: 'Absorbed dose = Gray (Gy), Rad',
            subtitle: 'Biological equivalent dose = Sievert (Sv), REM',
          ),
          OperatingRoomItem(
            title: 'Monitoring Requirements',
            description: 'Required if >40 REM exposure',
            subtitle: 'Most common measurement: film dosimeter',
          ),
          OperatingRoomItem(
            title: 'ALARP Principle',
            description: 'As Low As Reasonably Practicable',
          ),
          OperatingRoomItem(
            title: 'Inverse Square Law',
            description: 'Intensity ∝ 1/d²',
          ),
          OperatingRoomItem(
            title: 'Highest Risk',
            description: 'Fluoroscopy use',
          ),
        ],
      ),
      OperatingRoomCategory(
        categoryName: 'Electrical Safety',
        items: [
          OperatingRoomItem(
            title: 'Max Allowable Leakage',
            description: '10 μA',
          ),
          OperatingRoomItem(
            title: 'Safe Current Levels',
            description: 'Up to 5 mA usually harmless',
            subtitle: '100 μA reaching the heart → VF, fatal',
            additionalInfo: '100 mA → lowest macroshock threshold for VF',
          ),
          OperatingRoomItem(
            title: 'Macroshock',
            description: '>1 mA, 60 Hz',
          ),
          OperatingRoomItem(
            title: 'Microshock',
            description: '>0.1 mA (risky with catheters, pacing wires, PA catheters)',
          ),
          OperatingRoomItem(
            title: 'Protection Systems',
            description: 'Isolation transformer: patient-to-ground isolation',
            subtitle: 'Line isolation monitor: detects leakage current',
            additionalInfo: 'Grounding failure → 117 V potential difference',
          ),
        ],
      ),
      OperatingRoomCategory(
        categoryName: 'Surgical Diathermy',
        items: [
          OperatingRoomItem(
            title: 'Monopolar',
            description: 'Grounding plate placed as close as possible to surgical field',
          ),
          OperatingRoomItem(
            title: 'Cardiac Patients',
            description: 'Bipolar preferred',
          ),
        ],
      ),
      OperatingRoomCategory(
        categoryName: 'Fire Safety',
        items: [
          OperatingRoomItem(
            title: 'Fire Triangle',
            description: 'Fuel + oxidizer + heat',
          ),
          OperatingRoomItem(
            title: 'CO₂ Extinguisher',
            description: 'No thermal injury, disperses quickly',
          ),
          OperatingRoomItem(
            title: 'Class A Extinguisher',
            description: 'Water-based → not suitable for electrical devices',
          ),
          OperatingRoomItem(
            title: 'AC Class Extinguisher',
            description: 'Water mist → safe',
          ),
          OperatingRoomItem(
            title: 'Halon',
            description: 'Very effective but banned (ozone depletion + hypoxia risk)',
          ),
        ],
      ),
      OperatingRoomCategory(
        categoryName: 'Key Exam Spots',
        items: [
          OperatingRoomItem(
            title: 'SUMMARY SPOT QUESTIONS',
            description: 'O₂ E-cylinder: 2000 psi = 660 L',
            subtitle: 'N₂O: Critical temp 36.5°C, must be weighed',
            additionalInfo: 'OR Temperature: 20–24°C\nHumidity: 50–55% at 37°C\nMax leakage: 10 μA\nMicroshock: >0.1 mA',
          ),
        ],
      ),
    ];
  }
}
