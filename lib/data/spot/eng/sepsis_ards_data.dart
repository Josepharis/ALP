import 'package:flutter/material.dart';

class SepsisArdsItem {
  final String title;
  final String description;
  final String? subtitle;
  final String? additionalInfo;

  SepsisArdsItem({
    required this.title,
    required this.description,
    this.subtitle,
    this.additionalInfo,
  });
}

class SepsisArdsCategory {
  final String categoryName;
  final List<SepsisArdsItem> items;

  SepsisArdsCategory({
    required this.categoryName,
    required this.items,
  });
}

class SepsisArdsData {
  static List<SepsisArdsCategory> getSepsisArdsData(BuildContext context) {
    return [
      SepsisArdsCategory(
        categoryName: 'Sepsis (SSC 2021)',
        items: [
          SepsisArdsItem(
            title: 'CLINICAL DEFINITION AND RISK STRATIFICATION',
            description: 'Defined as life-threatening organ dysfunction (SOFA increase ≥2) caused by a dysregulated host response to infection.',
            subtitle: 'Septic shock: vasopressor need for MAP ≥65 and lactate >2 mmol/L despite adequate fluids',
            additionalInfo: 'Do not use qSOFA alone for screening; utilize NEWS/MEWS or SIRS plus clinical judgment.',
          ),
          SepsisArdsItem(
            title: 'THE HOUR-1 BUNDLE PROTOCOL',
            description: 'Immediate actions include lactate measurement, obtaining blood cultures, and administering broad-spectrum antibiotics.',
            subtitle: '30 mL/kg isotonic crystalloid for hypotension or lactate ≥4 mmol/L',
            additionalInfo: 'Initiate norepinephrine as first-line vasopressor if MAP remains <65 mmHg after initial fluids.',
          ),
          SepsisArdsItem(
            title: 'ANTIMICROBIAL STEWARDSHIP AND DE-ESCALATION',
            description: 'Start early broad-spectrum therapy based on high suspicion; narrow treatment within 48–72 hours based on culture results.',
            subtitle: 'Avoid prolonged, unnecessary combination therapy unless clinically indicated',
            additionalInfo: 'Source control should be pursued as soon as possible.',
          ),
          SepsisArdsItem(
            title: 'FLUIDS, VASOPRESSORS, AND HEMODYNAMIC TARGETS',
            description: 'Balanced crystalloids are preferred; albumin may be considered for patients requiring large volumes of crystalloid.',
            subtitle: 'MAP goal is ≥65 mmHg; norepinephrine is the primary agent',
            additionalInfo: 'Use dynamic measures (e.g., passive leg raise, SVV/PPV) to assess fluid responsiveness rather than static CVP.',
          ),
          SepsisArdsItem(
            title: 'SOURCE CONTROL AND URGENT INTERVENTION',
            description: 'Identifying and managing the source of infection (drainage, debridement) is critical and should ideally be completed within 6–12 hours.',
            additionalInfo: 'Delayed source control is directly associated with increased mortality.',
          ),
          SepsisArdsItem(
            title: 'CORTICOSTEROIDS IN REFRACTORY SEPTIC SHOCK',
            description: 'Suggested for patients with septic shock and an ongoing requirement for vasopressor therapy despite adequate fluid resuscitation.',
            subtitle: 'Standard regimen: low-dose hydrocortisone (approximately 200 mg/day)',
            additionalInfo: 'Routine use in sepsis without shock is not recommended.',
          ),
          SepsisArdsItem(
            title: 'TRANSFUSION, GLYCEMIC CONTROL, AND RRT',
            description: 'RBC transfusion is indicated for Hb <7 g/dL in hemodynamically stable patients without active hemorrhage or ischemia.',
            subtitle: 'Glycemic target: 140–180 mg/dL; avoid strict control due to hypoglycemia risks',
            additionalInfo: 'Indication for RRT is based on clinical markers (hyperkalemia, acidosis) rather than timing.',
          ),
          SepsisArdsItem(
            title: 'VENTILATION IN SEPSIS-INDUCED ARDS',
            description: 'Focuses on lung-protective strategies including low tidal volume (6 mL/kg PBW) and plateau pressure monitoring <30 cmH2O.',
            subtitle: 'Moderate-to-severe cases benefit from high PEEP and prone positioning',
            additionalInfo: 'NMB should be reserved for severe cases with ventilator asynchrony.',
          ),
        ],
      ),
      SepsisArdsCategory(
        categoryName: 'ARDS (ESICM & ESICM 2023)',
        items: [
          SepsisArdsItem(
            title: 'BERLIN DEFINITION AND SEVERITY CLASSIFICATION',
            description: 'Acute onset within 1 week, bilateral opacities on imaging, and respiratory failure not fully explained by cardiac dysfunction.',
            subtitle: 'PaO₂/FiO₂: Mild (200–300), Moderate (100–200), Severe (≤100) on PEEP ≥5',
            additionalInfo: 'A standardized clinical framework used globally for ARDS management.',
          ),
          SepsisArdsItem(
            title: 'CORE MECHANICAL VENTILATION STRATEGIES',
            description: 'The use of low tidal volumes (6 mL/kg PBW) is mandatory to prevent Ventilator-Induced Lung Injury (VILI).',
            subtitle: 'Maintain plateau pressure <30 cmH₂O; driving pressure should be minimized',
            additionalInfo: 'Reducing driving pressure is a key factor in improving survival.',
          ),
          SepsisArdsItem(
            title: 'PEEP OPTIMIZATION IN ARDS',
            description: 'Higher PEEP strategies are recommended for moderate-to-severe ARDS to enhance recruitment and oxygenation.',
            subtitle: 'Routine aggressive recruitment maneuvers are no longer routinely advised',
            additionalInfo: 'PEEP titration should balance oxygenation gains against cardiac output compromise.',
          ),
          SepsisArdsItem(
            title: 'PRONE POSITIONING IN MODERATE-SEVERE ARDS',
            description: 'Strongly recommended for patients with P/F ratios <150; should be maintained for at least 12–16 hours per day.',
            subtitle: 'Improves ventilation-perfusion matching and reduces mortality',
            additionalInfo: 'Requires specialized nursing care to prevent pressure ulcers and line disconnection.',
          ),
          SepsisArdsItem(
            title: 'NEUROMUSCULAR BLOCKADE (NMB) CONSIDERATIONS',
            description: 'Continuous infusions are not for routine early use; consider short courses for refractory hypoxemia or severe asynchrony.',
            additionalInfo: 'Long-term use is associated with ICU-acquired weakness.',
          ),
          SepsisArdsItem(
            title: 'HIGH-FREQUENCY OSCILLATORY VENTILATION (HFOV)',
            description: 'HFOV is generally not recommended for adult ARDS due to potential harm and Lack of survival benefit.',
            additionalInfo: 'Conventional lung-protective ventilation remains the gold standard.',
          ),
          SepsisArdsItem(
            title: 'NON-INVASIVE SUPPORT AND OXYGENATION',
            description: 'High-Flow Nasal Cannula (HFNC) or NIV may be tried in mild cases, but early intubation should not be delayed if effort is high.',
            additionalInfo: 'Delayed intubation in ARDS is linked to increased mortality.',
          ),
          SepsisArdsItem(
            title: 'CONSERVATIVE FLUID AND SEDATION STRATEGIES',
            description: 'A conservative fluid approach is recommended after initial hemodynamic stabilization (keeping the lungs "dry").',
            subtitle: 'Target light sedation to facilitate early mobilization and weaning',
            additionalInfo: 'Reduces the duration of mechanical ventilation.',
          ),
          SepsisArdsItem(
            title: 'CORTICOSTEROIDS IN MODERATE-SEVERE ARDS',
            description: 'Conditional recommendation for the use of glucocorticoids (e.g., dexamethasone) to reduce inflammation.',
            subtitle: 'Not recommended for routine use in mild ARDS cases',
            additionalInfo: 'Timing and dosing vary between clinical guidelines.',
          ),
          SepsisArdsItem(
            title: 'ECMO FOR REFRACTORY LUNG FAILURE',
            description: 'Veno-venous ECMO is considered in centers of excellence for refractory hypoxemia despite optimized ventilation and proning.',
            additionalInfo: 'A rescue therapy for the most severe forms of resuscitated respiratory failure.',
          ),
          SepsisArdsItem(
            title: 'RESCUE THERAPIES AND INHALED NITRATES',
            description: 'Inhaled Nitric Oxide (NO) or prostacyclins can serve as a temporary bridge to improve oxygenation but do not improve survival.',
            additionalInfo: 'Statins and inert gases are not routinely recommended due to insufficient evidence.',
          ),
        ],
      ),
      SepsisArdsCategory(
        categoryName: 'Quick Recall Card',
        items: [
          SepsisArdsItem(
            title: 'SUMMARY SPOT QUESTIONS',
            description: 'Sepsis (Hour-1): Lactate → Cultures → Antibiotics → 30 mL/kg fluids → NE to MAP ≥65. ARDS: VT 6, Pplat <30, Prone 12-16h.',
            additionalInfo: 'Target HB >7, Glucose 140-180. Avoid HES. Conservative fluids in ARDS once stable.',
          ),
        ],
      ),
    ];
  }
}
