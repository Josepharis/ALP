import 'package:flutter/material.dart';

class RespiratorySystemsItem {
  final String title;
  final String description;
  final String? subtitle;
  final String? additionalInfo;

  RespiratorySystemsItem({
    required this.title,
    required this.description,
    this.subtitle,
    this.additionalInfo,
  });
}

class RespiratorySystemsCategory {
  final String categoryName;
  final List<RespiratorySystemsItem> items;

  RespiratorySystemsCategory({
    required this.categoryName,
    required this.items,
  });
}

class RespiratorySystemsData {
  static List<RespiratorySystemsCategory> getRespiratorySystemsData(BuildContext context) {
    return [
      RespiratorySystemsCategory(
        categoryName: 'Insufflation',
        items: [
          RespiratorySystemsItem(
            title: 'Definition',
            description: 'Blowing anesthetic gases onto the patient\'s face',
          ),
          RespiratorySystemsItem(
            title: 'Flow Requirements',
            description: 'Flow >10 L/min → prevents CO₂ accumulation',
            subtitle: 'No rebreathing',
          ),
          RespiratorySystemsItem(
            title: 'Usage',
            description: 'Blowing to face: pediatric patient, face-covered local procedures',
            subtitle: 'Blowing into lungs: into trachea during bronchoscopy',
          ),
          RespiratorySystemsItem(
            title: 'Nasal Cannula',
            description: 'Up to 6 L/min, FiO₂ increases by ~4% per 1 L (max ≈ 44%)',
          ),
          RespiratorySystemsItem(
            title: 'Venturi Mask',
            description: 'FiO₂ 24–40%, independent of minute ventilation and inspiratory flow rate',
          ),
        ],
      ),
      RespiratorySystemsCategory(
        categoryName: 'Open-Drop Anesthesia',
        items: [
          RespiratorySystemsItem(
            title: 'Method',
            description: 'Using Schimmel-Busch mask',
            subtitle: 'Historical method',
          ),
        ],
      ),
      RespiratorySystemsCategory(
        categoryName: 'Draw-Over Anesthesia',
        items: [
          RespiratorySystemsItem(
            title: 'Carrier Gas',
            description: 'Atmospheric air ± O₂',
          ),
          RespiratorySystemsItem(
            title: 'Components',
            description: 'Hose ≈ 400 mL, non-rebreathing valve + PEEP valve present',
            subtitle: 'IPPV, CPAP, and PEEP can be applied',
          ),
          RespiratorySystemsItem(
            title: 'Disadvantages',
            description: 'Difficulty in pediatric and head–neck surgery',
            subtitle: 'Environmental pollution from waste gas',
            additionalInfo: 'Potent halogenated agents can be used',
          ),
          RespiratorySystemsItem(
            title: 'O₂ Support',
            description: '1 L/min → FiO₂ 30–40%',
            subtitle: '4 L/min → FiO₂ 60–80%',
            additionalInfo: 'Risk if SpO₂ <90%!',
          ),
        ],
      ),
      RespiratorySystemsCategory(
        categoryName: 'Mapleson Circuits',
        items: [
          RespiratorySystemsItem(
            title: 'General Components',
            description: 'Hose + fresh gas inlet + APL valve + reservoir bag',
          ),
          RespiratorySystemsItem(
            title: 'A (Magill)',
            description: 'Best for spontaneous breathing',
            subtitle: 'Not suitable for controlled ventilation',
          ),
          RespiratorySystemsItem(
            title: 'B',
            description: 'Bag–Hose–Fresh gas–APL–Mask',
          ),
          RespiratorySystemsItem(
            title: 'C (Waters to-and-fro)',
            description: 'Shortened form of B',
          ),
          RespiratorySystemsItem(
            title: 'D (Bain)',
            description: 'Most suitable for controlled ventilation',
            subtitle: 'Fresh gas tube runs inside (risk of kinking)',
          ),
          RespiratorySystemsItem(
            title: 'E (Ayre T)',
            description: 'D – (bag + APL); non-rebreathing',
          ),
          RespiratorySystemsItem(
            title: 'F (Jackson-Rees)',
            description: 'D – APL; frequently used in pediatrics',
          ),
          RespiratorySystemsItem(
            title: 'Components Details',
            description: 'Hoses: 22 mm diameter, volume ≥ tidal volume',
            subtitle: 'Fresh gas inlet: determines performance',
            additionalInfo: 'APL valve: pressure-controlled outflow\nReservoir bag: storage + positive pressure; larger volume = ↑compliance, ↓barotrauma',
          ),
          RespiratorySystemsItem(
            title: 'Performance',
            description: 'Adequate fresh gas flow is required to prevent rebreathing',
          ),
        ],
      ),
      RespiratorySystemsCategory(
        categoryName: 'Circle System',
        items: [
          RespiratorySystemsItem(
            title: 'CO₂ Absorbents',
            description: 'Soda lime, barium hydroxide lime, amsorb',
            subtitle: 'Final products: heat + water + CaCO₃',
          ),
          RespiratorySystemsItem(
            title: 'Indicator',
            description: 'Ethyl violet (color change 50–70% → should be replaced)',
          ),
          RespiratorySystemsItem(
            title: 'CO Risk',
            description: 'Dry absorbent, high temperature, desflurane/sevoflurane',
          ),
          RespiratorySystemsItem(
            title: 'Compound A',
            description: 'Sevoflurane degradation product',
          ),
          RespiratorySystemsItem(
            title: 'Absorbent Efficiency',
            description: 'Tidal volume ≥ half of absorbent volume',
            subtitle: 'Soda lime > Baralyme capacity',
          ),
          RespiratorySystemsItem(
            title: 'Unidirectional Valves',
            description: 'Provide forward flow, prevent backflow',
          ),
          RespiratorySystemsItem(
            title: 'Placement',
            description: 'Fresh gas inlet between absorber–inspiratory valve',
            subtitle: 'APL valve between expiratory valve–absorber',
            additionalInfo: 'Bag between expiratory valve–absorber',
          ),
          RespiratorySystemsItem(
            title: 'Performance Features',
            description: 'Fresh gas >5 L/min → absorber unnecessary',
            subtitle: 'Dead space: unaffected by hose length',
            additionalInfo: 'Resistance: ↑ due to valves + absorber\nHeat/humidity: absorber granules are important source\nBacterial risk → filter can be added at Y-connector or inspiratory/expiratory limb',
          ),
          RespiratorySystemsItem(
            title: 'Disadvantages',
            description: 'Large and complex structure',
            subtitle: 'Absorbent + low-flow = unpredictable complications',
          ),
        ],
      ),
      RespiratorySystemsCategory(
        categoryName: 'Other Systems',
        items: [
          RespiratorySystemsItem(
            title: 'Jet Ventilation',
            description: 'High-pressure air jet via 22G cannula → fresh gas reaches alveoli',
          ),
          RespiratorySystemsItem(
            title: 'Closed System',
            description: 'All exhaled gas is CO₂ absorbed and rebreathed',
          ),
          RespiratorySystemsItem(
            title: 'Semi-Closed System',
            description: 'Part of exhaled gas is rebreathed (most commonly used)',
          ),
        ],
      ),
      RespiratorySystemsCategory(
        categoryName: 'Key Exam Spots',
        items: [
          RespiratorySystemsItem(
            title: 'SUMMARY SPOT QUESTIONS',
            description: 'Insufflation: >10 L/min prevents CO₂ accumulation',
            subtitle: 'Nasal cannula: max 6 L/min, FiO₂ ~44%',
            additionalInfo: 'Mapleson A: Best for spontaneous breathing\nMapleson D (Bain): Best for controlled ventilation\nCircle system: Fresh gas >5 L/min → absorber unnecessary',
          ),
        ],
      ),
    ];
  }
}
