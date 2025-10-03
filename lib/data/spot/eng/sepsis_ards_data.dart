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
            title: 'Definition & Risk Stratification',
            description: 'Sepsis: infection (suspected/confirmed) with organ dysfunction (SOFA increase ≥2)',
            subtitle: 'Septic shock: vasopressor requirement (to maintain MAP ≥65 mmHg) + lactate >2 mmol/L despite fluids',
            additionalInfo: 'Screening: do not use qSOFA alone; prefer NEWS/MEWS or SIRS + clinical assessment',
          ),
          SepsisArdsItem(
            title: 'Hour-1 Bundle',
            description: 'Measure lactate (remeasure if elevated)',
            subtitle: 'Blood cultures before antibiotics',
            additionalInfo: 'Broad-spectrum antibiotics within the first hour\n30 mL/kg isotonic crystalloids (ideal weight) if hypotension or lactate ≥4 mmol/L\nVasopressor (NE first-line) if MAP <65 after fluids',
          ),
          SepsisArdsItem(
            title: 'Antimicrobial Therapy',
            description: 'Early broad-spectrum, narrow/de-escalate in 48–72 h per cultures',
            subtitle: 'Avoid unnecessary combinations',
          ),
          SepsisArdsItem(
            title: 'Fluids, Vasopressors, Hemodynamics',
            description: 'Balanced crystalloids preferred. Albumin if high fluid requirement. Avoid HES',
            subtitle: 'MAP goal: ≥65 mmHg',
            additionalInfo: 'NE = first-line; vasopressin (0.03 U/min) as adjunct; epinephrine for refractory cases\nDopamine not recommended\nDynamic measures (passive leg raise, SVV/PPV, stroke volume variation) superior to static (CVP)\nUrine output ≥0.5 mL/kg/h; lactate clearance = perfusion marker',
          ),
          SepsisArdsItem(
            title: 'Source Control',
            description: 'Drainage/debridement ideally within 6–12 h; delays ↑ mortality',
          ),
          SepsisArdsItem(
            title: 'Corticosteroids',
            description: 'Refractory septic shock → low-dose hydrocortisone (≈200 mg/day)',
            subtitle: 'Routine steroids in sepsis without shock not advised',
          ),
          SepsisArdsItem(
            title: 'Transfusion, Glycemia, RRT',
            description: 'RBC transfusion: Hb <7 g/dL unless ischemia/severe hypoxemia',
            subtitle: 'Glycemia: 140–180 mg/dL target',
            additionalInfo: 'RRT: intermittent or CRRT; no strong evidence for early/intensive dialysis',
          ),
          SepsisArdsItem(
            title: 'Ventilation in Sepsis-induced ARDS',
            description: 'Low VT (≈6 mL/kg PBW), plateau <30 cmH₂O, adequate PEEP',
            subtitle: 'Prone positioning and NM blockade in severe cases',
          ),
        ],
      ),
      SepsisArdsCategory(
        categoryName: 'ARDS (ATS 2023 & ESICM 2023)',
        items: [
          SepsisArdsItem(
            title: 'Definition & Classification (Berlin)',
            description: 'Onset ≤1 week, bilateral opacities, not fully explained by cardiac failure',
            subtitle: 'PaO₂/FiO₂ (PEEP ≥5):',
            additionalInfo: 'Mild 200–300\nModerate 100–200\nSevere ≤100',
          ),
          SepsisArdsItem(
            title: 'Mechanical Ventilation – Key',
            description: 'Low tidal volume (≈6 mL/kg PBW)',
            subtitle: 'Plateau pressure <30 cmH₂O',
            additionalInfo: 'Driving pressure (ΔP = Pplat – PEEP) kept as low as possible',
          ),
          SepsisArdsItem(
            title: 'PEEP',
            description: 'Higher PEEP for moderate–severe ARDS',
            subtitle: 'Avoid routine aggressive recruitment maneuvers',
          ),
          SepsisArdsItem(
            title: 'Prone Positioning',
            description: 'Strong recommendation in moderate–severe ARDS',
            subtitle: 'Duration: 12–16 h/day',
            additionalInfo: 'Improves oxygenation & reduces mortality',
          ),
          SepsisArdsItem(
            title: 'Neuromuscular Blockade (NMB)',
            description: 'Not for routine early continuous infusion',
            subtitle: 'Short-term use in severe hypoxemia, asynchrony, or during proning',
          ),
          SepsisArdsItem(
            title: 'High-frequency Oscillation Ventilation',
            description: 'Not recommended (harm > benefit)',
          ),
          SepsisArdsItem(
            title: 'Oxygenation & Non-invasive Support',
            description: 'HFNC or NIV may be used in mild–moderate hypoxemia',
            subtitle: 'If ARDS progresses/workload high → early intubation',
          ),
          SepsisArdsItem(
            title: 'Fluid & Sedation Strategy',
            description: 'Conservative fluids after stabilization',
            subtitle: 'Light sedation; avoid unnecessary deep sedation',
            additionalInfo: 'Early mobilization if feasible',
          ),
          SepsisArdsItem(
            title: 'Corticosteroids',
            description: 'Conditional recommendation in moderate–severe ARDS (dexamethasone regimens possible)',
            subtitle: 'Not for mild ARDS',
          ),
          SepsisArdsItem(
            title: 'ECMO',
            description: 'Conditional recommendation in refractory hypoxemia/hypercapnia despite optimized ventilation + prone + NMB',
            subtitle: 'Only in experienced centers, selected patients',
          ),
          SepsisArdsItem(
            title: 'Other Therapies',
            description: 'Inhaled NO = rescue (temporary O₂ improvement, no survival benefit)',
            subtitle: 'No strong evidence for statins, routine prostacyclin, inert gases',
          ),
        ],
      ),
      SepsisArdsCategory(
        categoryName: 'Quick Recall Card',
        items: [
          SepsisArdsItem(
            title: 'SUMMARY SPOT QUESTIONS',
            description: 'Sepsis (Hour-1): Lactate → Cultures → Antibiotics → 30 mL/kg crystalloids → NE to MAP ≥65',
            subtitle: 'ARDS: VT 6 mL/kg, Pplat <30, appropriate PEEP, prone 12–16 h/day, conservative fluids, conditional steroids, ECMO in refractory',
          ),
        ],
      ),
    ];
  }
}
