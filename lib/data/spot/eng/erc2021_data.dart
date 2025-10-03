import 'package:flutter/material.dart';

class Erc2021Item {
  final String title;
  final String description;
  final String? subtitle;
  final String? additionalInfo;

  Erc2021Item({
    required this.title,
    required this.description,
    this.subtitle,
    this.additionalInfo,
  });
}

class Erc2021Category {
  final String categoryName;
  final List<Erc2021Item> items;

  Erc2021Category({
    required this.categoryName,
    required this.items,
  });
}

class Erc2021Data {
  static List<Erc2021Category> getErc2021Data(BuildContext context) {
    return [
      Erc2021Category(
        categoryName: 'Basic Life Support (BLS)',
        items: [
          Erc2021Item(
            title: 'Diagnosis of Cardiac Arrest',
            description: 'Unresponsive + absent/abnormal breathing (including agonal)',
          ),
          Erc2021Item(
            title: 'Emergency Call',
            description: 'Activate help, use phone on speaker mode',
          ),
          Erc2021Item(
            title: 'Chest Compressions',
            description: 'Lower half of sternum, 100–120/min',
            subtitle: 'Depth: 5–6 cm',
            additionalInfo: 'Allow full recoil',
          ),
          Erc2021Item(
            title: 'Rescue Breaths',
            description: '30:2 ratio; if not possible → compression-only CPR',
          ),
          Erc2021Item(
            title: 'AED',
            description: 'Apply as soon as available',
            subtitle: 'Pads: anterolateral (alternative: anteroposterior)',
            additionalInfo: 'Continue CPR until defibrillator ready\nResume compressions immediately after shock',
          ),
        ],
      ),
      Erc2021Category(
        categoryName: 'Advanced Life Support (ALS)',
        items: [
          Erc2021Item(
            title: 'Rhythm Classification',
            description: 'Shockable rhythms: VF / pulseless VT',
            subtitle: 'Non-shockable rhythms: PEA / asystole',
          ),
          Erc2021Item(
            title: 'Adrenaline',
            description: 'Non-shockable → as soon as possible',
            subtitle: 'Shockable → after 3rd shock',
          ),
          Erc2021Item(
            title: 'Airway Management',
            description: 'Intubation only by experienced personnel',
          ),
          Erc2021Item(
            title: 'POCUS',
            description: 'May be used but should not interrupt compressions',
          ),
          Erc2021Item(
            title: 'Refractory VF',
            description: 'Use maximum energy, change pad position (anteroposterior)',
            subtitle: 'Anticipatory charging: reduces shock delay',
          ),
          Erc2021Item(
            title: 'Post-ROSC Care',
            description: 'Critical to search for reversible causes',
          ),
        ],
      ),
      Erc2021Category(
        categoryName: 'First Aid Principles',
        items: [
          Erc2021Item(
            title: 'Goals',
            description: 'Preserve life, relieve pain, prevent complications, accelerate recovery',
          ),
          Erc2021Item(
            title: 'Recovery Position',
            description: 'Lateral, head tilted back, ensure breathing',
          ),
          Erc2021Item(
            title: 'Shock',
            description: 'Supine, elevate legs if needed',
          ),
          Erc2021Item(
            title: 'Anaphylaxis',
            description: 'Epinephrine auto-injector; repeat after 5 min if no response',
          ),
          Erc2021Item(
            title: 'Hypoglycemia',
            description: '15–20 g glucose or equivalent; recheck after 15 min',
          ),
          Erc2021Item(
            title: 'Chest Pain',
            description: 'If non-traumatic and no contraindication → aspirin 150–300 mg',
          ),
          Erc2021Item(
            title: 'Heat Stroke',
            description: 'Rapid cooling, cold-water immersion if possible',
          ),
          Erc2021Item(
            title: 'Bleeding',
            description: 'Direct pressure first; tourniquet if necessary',
          ),
          Erc2021Item(
            title: 'Airway Obstruction',
            description: 'Encourage coughing → 5 back blows → 5 abdominal thrusts',
          ),
          Erc2021Item(
            title: 'Burns',
            description: 'Rinse with cold water ≥20 min, cover with sterile dressing',
          ),
        ],
      ),
      Erc2021Category(
        categoryName: 'Neonatal Resuscitation',
        items: [
          Erc2021Item(
            title: 'General Statistics',
            description: '85% breathe spontaneously',
            subtitle: '10% respond to drying, tactile stimulation, airway opening',
            additionalInfo: '5% need PPV\nIntubation: 0.4–2%',
          ),
          Erc2021Item(
            title: 'Temperature Control',
            description: 'Target 36.5–37.5 °C',
            subtitle: 'Delivery room: 23–25 °C (preterms >25 °C)',
            additionalInfo: 'Term: dry, warm towel, skin-to-skin\nPreterm ≤32 wks: polyethylene wrap + radiant warmer\nUse warmed/humidified gases for respiratory support',
          ),
          Erc2021Item(
            title: 'Umbilical Cord Management',
            description: 'Stable: clamp after ≥60 sec (preferably post-ventilation)',
            subtitle: 'If not possible: in >28 wks, consider cord milking',
          ),
          Erc2021Item(
            title: 'Initial Assessment',
            description: 'Evaluate tone, color, breathing, HR',
            subtitle: 'HR >100 = good adaptation',
            additionalInfo: 'HR 60–100 = moderate → ventilation support\nHR <60 = critical → ventilation + chest compressions',
          ),
          Erc2021Item(
            title: 'Tactile Stimulation',
            description: 'Rub soles and back',
            subtitle: 'Avoid aggressive stimulation',
          ),
          Erc2021Item(
            title: 'Airway Management',
            description: 'Neutral head position, jaw lift if needed',
            subtitle: 'Mask PPV: within first 60 sec',
            additionalInfo: 'Term: 30 cmH₂O, Preterm: 25 cmH₂O initial pressure\nCPAP: first choice in spontaneously breathing preterms\nPEEP ≥5–6 cmH₂O\nMeconium: no routine suction; do not delay ventilation',
          ),
          Erc2021Item(
            title: 'Alternative Airway',
            description: 'Laryngeal mask: ≥34 wks (~2000 g), if mask ventilation fails',
            subtitle: 'ETT: if ventilation inadequate, prolonged resus, chest compressions needed, or surfactant required',
          ),
          Erc2021Item(
            title: 'Chest Compressions',
            description: 'Indication: HR <60 despite 30 sec effective ventilation',
            subtitle: 'Ratio: 3:1 (≈120 events/min = 90 compressions + 30 ventilations)',
            additionalInfo: 'Two-thumb technique preferred\nUse 100% O₂',
          ),
          Erc2021Item(
            title: 'Vascular Access & Drugs',
            description: 'First-line: umbilical vein; alternative: IO',
            subtitle: 'Adrenaline: 10–30 µg/kg IV/IO; repeat q3–5 min if needed',
            additionalInfo: 'Glucose: if prolonged resus → 250 mg/kg (2.5 mL/kg of 10% dextrose)\nVolume: 10 mL/kg O Rh(-) blood or isotonic crystalloid\nSodium bicarbonate: 1–2 mmol/kg if prolonged, unresponsive resus\nNaloxone: 200 µg IM if maternal opioid use + persistent apnea',
          ),
          Erc2021Item(
            title: 'Prognosis',
            description: 'No response after 10–20 min of intensive resus → very poor outcome',
            subtitle: 'If reversible causes excluded → discuss termination with family/team',
          ),
        ],
      ),
    ];
  }
}
