import 'package:flutter/material.dart';

class CardiovascularPhysiologyItem {
  final String title;
  final String description;
  final String? subtitle;
  final String? additionalInfo;

  CardiovascularPhysiologyItem({
    required this.title,
    required this.description,
    this.subtitle,
    this.additionalInfo,
  });
}

class CardiovascularPhysiologyCategory {
  final String categoryName;
  final List<CardiovascularPhysiologyItem> items;

  CardiovascularPhysiologyCategory({
    required this.categoryName,
    required this.items,
  });
}

class CardiovascularPhysiologyData {
  static List<CardiovascularPhysiologyCategory> getCardiovascularPhysiologyData(BuildContext context) {
    return [
      CardiovascularPhysiologyCategory(
        categoryName: 'Cardiac Action Potential',
        items: [
          CardiovascularPhysiologyItem(
            title: 'Resting Potential',
            description: '–80/–90 mV',
          ),
          CardiovascularPhysiologyItem(
            title: 'Phase 0',
            description: 'Na⁺ influx (rapid depolarization)',
          ),
          CardiovascularPhysiologyItem(
            title: 'Phase 1',
            description: 'Na⁺ inactivation',
          ),
          CardiovascularPhysiologyItem(
            title: 'Phase 2',
            description: 'Ca²⁺ influx (plateau)',
          ),
          CardiovascularPhysiologyItem(
            title: 'Phase 3',
            description: 'K⁺ efflux (repolarization)',
          ),
          CardiovascularPhysiologyItem(
            title: 'Phase 4',
            description: 'Return to resting potential',
          ),
          CardiovascularPhysiologyItem(
            title: 'Refractory Period',
            description: 'Until Phase IV',
          ),
        ],
      ),
      CardiovascularPhysiologyCategory(
        categoryName: 'Cardiac Conduction System',
        items: [
          CardiovascularPhysiologyItem(
            title: 'SA Node',
            description: 'Primary pacemaker, intrinsic rate 90–100/min',
          ),
          CardiovascularPhysiologyItem(
            title: 'AV Node',
            description: 'Conduction delay (0.11 s), rate 40–60/min',
          ),
          CardiovascularPhysiologyItem(
            title: 'His–Purkinje',
            description: 'Fastest conduction → simultaneous ventricular activation (0.03 s)',
          ),
          CardiovascularPhysiologyItem(
            title: 'Potent Inhalation Agents',
            description: 'Suppress SA node > AV node (moderate) > Purkinje fibers (complex)',
          ),
          CardiovascularPhysiologyItem(
            title: 'Opioids',
            description: 'Prolong AP duration',
          ),
          CardiovascularPhysiologyItem(
            title: 'Local Anesthetics (High Dose)',
            description: 'Block Na⁺ channels',
          ),
        ],
      ),
      CardiovascularPhysiologyCategory(
        categoryName: 'Cardiac Innervation',
        items: [
          CardiovascularPhysiologyItem(
            title: 'Parasympathetic (M2)',
            description: 'Negative chronotropy, dromotropy, inotropy',
          ),
          CardiovascularPhysiologyItem(
            title: 'Sympathetic (β1)',
            description: 'Positive chronotropy, dromotropy, inotropy',
          ),
          CardiovascularPhysiologyItem(
            title: 'Right Vagus/Sympathetic',
            description: '→ SA node',
          ),
          CardiovascularPhysiologyItem(
            title: 'Left Vagus/Sympathetic',
            description: '→ AV node',
          ),
        ],
      ),
      CardiovascularPhysiologyCategory(
        categoryName: 'Cardiac Cycle',
        items: [
          CardiovascularPhysiologyItem(
            title: 'Atrial Contraction',
            description: 'Contributes 20–30% to ventricular filling',
          ),
          CardiovascularPhysiologyItem(
            title: 'a Wave',
            description: 'Atrial systole',
          ),
          CardiovascularPhysiologyItem(
            title: 'c Wave',
            description: 'Ventricular systole',
          ),
          CardiovascularPhysiologyItem(
            title: 'v Wave',
            description: 'Atrial filling',
          ),
        ],
      ),
      CardiovascularPhysiologyCategory(
        categoryName: 'Ventricular Performance',
        items: [
          CardiovascularPhysiologyItem(
            title: 'Cardiac Output',
            description: 'CO = SV × HR',
          ),
          CardiovascularPhysiologyItem(
            title: 'Cardiac Index',
            description: 'CI = CO / BSA (2.5–4.2 L/min/m²)',
          ),
          CardiovascularPhysiologyItem(
            title: 'Ejection Fraction',
            description: 'EF = (EDV–ESV)/EDV → normal 67% ± 8',
          ),
          CardiovascularPhysiologyItem(
            title: 'Mixed Venous Saturation',
            description: 'Indicator of tissue perfusion',
          ),
          CardiovascularPhysiologyItem(
            title: 'Preload - EDV',
            description: 'Indicator of preload',
          ),
          CardiovascularPhysiologyItem(
            title: 'Frank–Starling',
            description: '↑ volume → ↑ CO',
            subtitle: 'Excess volume → CO unchanged/decreased',
            additionalInfo: 'HR >120/min → impaired filling',
          ),
          CardiovascularPhysiologyItem(
            title: 'Afterload - Wall Tension',
            description: 'Wall tension = (P × R) / (2 × H) (Laplace\'s law)',
          ),
          CardiovascularPhysiologyItem(
            title: 'SVR',
            description: '900–1500 dyn·s·cm⁻⁵',
          ),
          CardiovascularPhysiologyItem(
            title: 'PVR',
            description: '50–150 dyn·s·cm⁻⁵',
          ),
          CardiovascularPhysiologyItem(
            title: 'Contractility - Positive Effect',
            description: 'Strongest positive effect: sympathetic system',
          ),
          CardiovascularPhysiologyItem(
            title: 'Contractility - Negative Effects',
            description: 'Anoxia, acidosis, ischemia, catecholamine depletion',
          ),
        ],
      ),
      CardiovascularPhysiologyCategory(
        categoryName: 'Systemic Circulation',
        items: [
          CardiovascularPhysiologyItem(
            title: 'MAP',
            description: 'MAP = DBP + 1/3 PP',
          ),
          CardiovascularPhysiologyItem(
            title: 'Pulse Pressure',
            description: 'Directly proportional to SV, inversely to arterial compliance',
          ),
          CardiovascularPhysiologyItem(
            title: 'Arterioles',
            description: 'Greatest pressure drop (determine SVR)',
          ),
          CardiovascularPhysiologyItem(
            title: 'Pressure Control Mechanisms - Early',
            description: 'Baroreflex (carotid > aortic)',
          ),
          CardiovascularPhysiologyItem(
            title: 'Pressure Control Mechanisms - Intermediate',
            description: 'RAAS, AVP',
          ),
          CardiovascularPhysiologyItem(
            title: 'Pressure Control Mechanisms - Long-term',
            description: 'Renal Na–water balance',
          ),
        ],
      ),
      CardiovascularPhysiologyCategory(
        categoryName: 'Coronary Circulation',
        items: [
          CardiovascularPhysiologyItem(
            title: 'RCA',
            description: '→ RA, RV, inferior LV',
          ),
          CardiovascularPhysiologyItem(
            title: 'LCA',
            description: '→ LA, septum, anterior–lateral LV',
          ),
          CardiovascularPhysiologyItem(
            title: 'Coronary Perfusion Pressure',
            description: 'DBP – LVEDP',
          ),
          CardiovascularPhysiologyItem(
            title: 'Coronary Blood Flow',
            description: '≈ 250 mL/min',
          ),
          CardiovascularPhysiologyItem(
            title: 'Coronary Sinus Saturation',
            description: '≈ 30%',
          ),
          CardiovascularPhysiologyItem(
            title: 'O₂ Consumption',
            description: 'Pressure work 64%',
          ),
        ],
      ),
      CardiovascularPhysiologyCategory(
        categoryName: 'Effects of Anesthetics',
        items: [
          CardiovascularPhysiologyItem(
            title: 'Volatile Agents',
            description: 'Coronary vasodilation, ↓ MVO₂, reperfusion protection (ATP-sensitive K⁺ channels)',
          ),
          CardiovascularPhysiologyItem(
            title: 'Sevoflurane',
            description: 'Does not cause coronary steal',
          ),
        ],
      ),
      CardiovascularPhysiologyCategory(
        categoryName: 'Heart Failure',
        items: [
          CardiovascularPhysiologyItem(
            title: 'Most Common Cause',
            description: 'CAD',
          ),
          CardiovascularPhysiologyItem(
            title: 'Diastolic Dysfunction',
            description: 'HTN, CAD, HCM',
          ),
          CardiovascularPhysiologyItem(
            title: 'Compensatory Mechanisms',
            description: '↑ preload, ↑ sympathetic tone, ventricular hypertrophy',
          ),
        ],
      ),
      CardiovascularPhysiologyCategory(
        categoryName: 'Key Exam Spots',
        items: [
          CardiovascularPhysiologyItem(
            title: 'SUMMARY SPOT QUESTIONS',
            description: 'CO = SV × HR, CI = 2.5–4.2 L/min/m²',
            subtitle: 'EF normal = 67% ± 8',
            additionalInfo: 'SVR = 900–1500 dyn·s·cm⁻⁵\nPVR = 50–150 dyn·s·cm⁻⁵\nCoronary perfusion pressure = DBP – LVEDP\nMAP = DBP + 1/3 PP',
          ),
        ],
      ),
    ];
  }
}
