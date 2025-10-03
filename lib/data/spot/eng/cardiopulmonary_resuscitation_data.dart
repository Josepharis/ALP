import 'package:flutter/material.dart';

class CardiopulmonaryResuscitationItem {
  final String title;
  final String description;
  final String? subtitle;
  final String? additionalInfo;

  CardiopulmonaryResuscitationItem({
    required this.title,
    required this.description,
    this.subtitle,
    this.additionalInfo,
  });
}

class CardiopulmonaryResuscitationCategory {
  final String categoryName;
  final List<CardiopulmonaryResuscitationItem> items;

  CardiopulmonaryResuscitationCategory({
    required this.categoryName,
    required this.items,
  });
}

class CardiopulmonaryResuscitationData {
  static List<CardiopulmonaryResuscitationCategory> getCardiopulmonaryResuscitationData(BuildContext context) {
    return [
      CardiopulmonaryResuscitationCategory(
        categoryName: 'General Principles',
        items: [
          CardiopulmonaryResuscitationItem(
            title: 'Definition',
            description: 'CPR = basic and advanced life support applications to maintain circulation and oxygenation during cardiac arrest',
          ),
          CardiopulmonaryResuscitationItem(
            title: 'Goal',
            description: 'Early recognition, early basic life support, rapid defibrillation, advanced resuscitation, and post-resuscitation care',
          ),
          CardiopulmonaryResuscitationItem(
            title: 'Most Critical for Success',
            description: 'Early defibrillation and high-quality chest compressions',
          ),
        ],
      ),
      CardiopulmonaryResuscitationCategory(
        categoryName: 'Diagnosis of Cardiac Arrest',
        items: [
          CardiopulmonaryResuscitationItem(
            title: 'Clinical Signs',
            description: 'Unconsciousness, absent breathing or agonal breathing, pulselessness',
          ),
          CardiopulmonaryResuscitationItem(
            title: 'Pulse Check',
            description: '≤10 sec (carotid/femoral)',
          ),
          CardiopulmonaryResuscitationItem(
            title: 'Monitor Rhythm Analysis',
            description: 'VF/VT, asystole, pulseless electrical activity (PEA)',
          ),
        ],
      ),
      CardiopulmonaryResuscitationCategory(
        categoryName: 'Basic Life Support (BLS)',
        items: [
          CardiopulmonaryResuscitationItem(
            title: 'Sequence',
            description: 'CAB (Circulation, Airway, Breathing)',
          ),
          CardiopulmonaryResuscitationItem(
            title: 'Chest Compressions',
            description: 'Depth: adult 5–6 cm; child = 1/3 chest diameter',
            subtitle: 'Rate: 100–120/min',
            additionalInfo: 'Ratio: adult 30:2 (single or two rescuers); child/infant 30:2 (single rescuer), 15:2 (two rescuers)\nMinimize interruptions; ensure full chest recoil',
          ),
          CardiopulmonaryResuscitationItem(
            title: 'Oxygen',
            description: 'Use 100% O₂ if possible',
          ),
        ],
      ),
      CardiopulmonaryResuscitationCategory(
        categoryName: 'Advanced Cardiac Life Support (ACLS)',
        items: [
          CardiopulmonaryResuscitationItem(
            title: 'Defibrillation',
            description: 'Shockable rhythms: VF and pulseless VT',
            subtitle: 'Monophasic: 360 J; Biphasic: 120–200 J',
            additionalInfo: 'Resume CPR immediately after shock (no pause for rhythm check)',
          ),
          CardiopulmonaryResuscitationItem(
            title: 'Drugs',
            description: 'Epinephrine: 1 mg IV/IO every 3–5 min',
            subtitle: 'Amiodarone: 300 mg IV bolus; additional 150 mg if needed',
            additionalInfo: 'Alternative: Lidocaine 1–1.5 mg/kg\nMagnesium: 1–2 g IV for torsades de pointes',
          ),
          CardiopulmonaryResuscitationItem(
            title: 'PEA/Asystole',
            description: 'Epinephrine + CPR',
            subtitle: 'No shock',
            additionalInfo: 'Reversible causes (5H–5T) must be investigated',
          ),
        ],
      ),
      CardiopulmonaryResuscitationCategory(
        categoryName: 'Reversible Causes (5H–5T)',
        items: [
          CardiopulmonaryResuscitationItem(
            title: '5H',
            description: 'Hypovolemia, Hypoxia, Hydrogen ion (acidosis), Hypo-/Hyperkalemia, Hypothermia',
          ),
          CardiopulmonaryResuscitationItem(
            title: '5T',
            description: 'Tension pneumothorax, Tamponade, Toxins, Thrombosis (coronary), Thrombosis (pulmonary)',
          ),
        ],
      ),
      CardiopulmonaryResuscitationCategory(
        categoryName: 'Airway Management',
        items: [
          CardiopulmonaryResuscitationItem(
            title: 'Airway Options',
            description: 'Bag-mask, supraglottic airway, endotracheal intubation',
          ),
          CardiopulmonaryResuscitationItem(
            title: 'Intubated Patients',
            description: 'Chest compressions should not be interrupted; ventilation = 10 breaths/min',
          ),
          CardiopulmonaryResuscitationItem(
            title: 'Capnography (ETCO₂)',
            description: 'Indicator of CPR quality; <10 mmHg = poor prognosis',
          ),
        ],
      ),
      CardiopulmonaryResuscitationCategory(
        categoryName: 'Post-Resuscitation Care',
        items: [
          CardiopulmonaryResuscitationItem(
            title: 'Hemodynamics',
            description: 'MAP ≥65 mmHg',
          ),
          CardiopulmonaryResuscitationItem(
            title: 'Oxygenation',
            description: 'SpO₂ 94–98%',
          ),
          CardiopulmonaryResuscitationItem(
            title: 'Targeted Temperature Management (TTM)',
            description: '32–36 °C, at least 24 h',
          ),
          CardiopulmonaryResuscitationItem(
            title: 'Neurological Monitoring',
            description: 'In comatose patients: EEG/neurological monitoring',
          ),
          CardiopulmonaryResuscitationItem(
            title: 'Correct Underlying Cause',
            description: 'E.g., coronary reperfusion, electrolyte imbalance',
          ),
        ],
      ),
      CardiopulmonaryResuscitationCategory(
        categoryName: 'Special Situations',
        items: [
          CardiopulmonaryResuscitationItem(
            title: 'Pregnancy',
            description: 'Fundus >20 weeks → manual left uterine displacement to reduce compression',
          ),
          CardiopulmonaryResuscitationItem(
            title: 'Hypothermia',
            description: '<30 °C → decreased defibrillation/drug efficacy; rewarming required',
          ),
          CardiopulmonaryResuscitationItem(
            title: 'Trauma',
            description: 'Priority = airway control + massive hemorrhage management',
          ),
          CardiopulmonaryResuscitationItem(
            title: 'Asthma/Obstruction',
            description: 'Prolonged expiration, bronchodilators',
          ),
        ],
      ),
      CardiopulmonaryResuscitationCategory(
        categoryName: 'Clinical Practice Pearls',
        items: [
          CardiopulmonaryResuscitationItem(
            title: 'SUMMARY SPOT QUESTIONS',
            description: 'CPR success ↑ most with early defibrillation + high-quality compressions',
            subtitle: 'Epinephrine for all rhythms; Amiodarone only for VF/VT',
            additionalInfo: 'ETCO₂ <10 mmHg = poor prognosis; >20 mmHg = high chance of ROSC\nAfter ROSC → targeted temperature, hemodynamic stabilization, reperfusion strategy',
          ),
        ],
      ),
    ];
  }
}
