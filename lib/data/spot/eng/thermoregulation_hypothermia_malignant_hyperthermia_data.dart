import 'package:flutter/material.dart';

class ThermoregulationHypothermiaMalignantHyperthermiaItem {
  final String title;
  final String description;
  final String? subtitle;
  final String? additionalInfo;

  ThermoregulationHypothermiaMalignantHyperthermiaItem({
    required this.title,
    required this.description,
    this.subtitle,
    this.additionalInfo,
  });
}

class ThermoregulationHypothermiaMalignantHyperthermiaCategory {
  final String categoryName;
  final List<ThermoregulationHypothermiaMalignantHyperthermiaItem> items;

  ThermoregulationHypothermiaMalignantHyperthermiaCategory({
    required this.categoryName,
    required this.items,
  });
}

class ThermoregulationHypothermiaMalignantHyperthermiaData {
  static List<ThermoregulationHypothermiaMalignantHyperthermiaCategory> getThermoregulationHypothermiaMalignantHyperthermiaData(BuildContext context) {
    return [
      ThermoregulationHypothermiaMalignantHyperthermiaCategory(
        categoryName: 'Thermoregulation & Hypothermia',
        items: [
          ThermoregulationHypothermiaMalignantHyperthermiaItem(
            title: 'Definition',
            description: 'Hypothermia = <36 °C',
          ),
          ThermoregulationHypothermiaMalignantHyperthermiaItem(
            title: 'Phases of Heat Loss Under Anesthesia',
            description: 'Phase I: 1–2 °C fall in the first hour → redistribution from core to periphery due to vasodilation',
            subtitle: 'Phase II: Linear decline over 3–4 h → environmental heat loss predominates',
            additionalInfo: 'Phase III: Equilibrium → heat loss = metabolic production',
          ),
          ThermoregulationHypothermiaMalignantHyperthermiaItem(
            title: 'Anesthetic Effects',
            description: 'Suppress hypothalamic thermoregulation (sweating, shivering, VD/VC reflexes)',
          ),
          ThermoregulationHypothermiaMalignantHyperthermiaItem(
            title: 'Prevention',
            description: 'Preop: convective warming blanket → prevents Phase I loss',
            subtitle: 'Intraop: warming blanket, fluid warmers, warming inspired gases',
          ),
          ThermoregulationHypothermiaMalignantHyperthermiaItem(
            title: 'Postop Shivering',
            description: 'May also occur due to sepsis, transfusion reactions, drug effects',
            subtitle: '↑ O₂ consumption 5-fold → dangerous in low cardiac reserve',
            additionalInfo: 'Treatment: restore normothermia, meperidine 12.5–25 mg effective',
          ),
        ],
      ),
      ThermoregulationHypothermiaMalignantHyperthermiaCategory(
        categoryName: 'Malignant Hyperthermia (MH)',
        items: [
          ThermoregulationHypothermiaMalignantHyperthermiaItem(
            title: 'Incidence',
            description: 'Children 1:15,000; adults 1:40,000. More frequent in young males',
          ),
          ThermoregulationHypothermiaMalignantHyperthermiaItem(
            title: 'Triggers',
            description: 'Halogenated volatile anesthetics + succinylcholine',
          ),
          ThermoregulationHypothermiaMalignantHyperthermiaItem(
            title: 'Genetics',
            description: 'RYR1 mutation (chromosome 19) → ↑ Ca²⁺ release from SR',
            subtitle: 'Chromosome 17 Na⁺ channel anomalies',
            additionalInfo: 'Multigenic; 5 regions identified',
          ),
          ThermoregulationHypothermiaMalignantHyperthermiaItem(
            title: 'Clinical Signs',
            description: 'Early: masseter rigidity (after Sch), generalized rigidity, tachycardia, hypercarbia (most sensitive = ↑ ETCO₂)',
            subtitle: 'Late: hyperthermia (↑1 °C/5 min), mixed metabolic + respiratory acidosis, hyperkalemia, arrhythmias',
            additionalInfo: 'Labs: CK >20,000, LDH ↑, myoglobin ↑\nFever: latest and most inconsistent sign\nComplications: MOF, DIC, rhabdomyolysis',
          ),
        ],
      ),
      ThermoregulationHypothermiaMalignantHyperthermiaCategory(
        categoryName: 'Intraoperative Management',
        items: [
          ThermoregulationHypothermiaMalignantHyperthermiaItem(
            title: 'Immediate Actions',
            description: 'Stop triggering agents (machine washout: 10 L/min FGF ≥5 min, remove vaporizers)',
            subtitle: 'Ventilate with 100% O₂ (counteract hypercarbia & ↑ O₂ consumption)',
          ),
          ThermoregulationHypothermiaMalignantHyperthermiaItem(
            title: 'Dantrolene',
            description: 'Mechanism: inhibits Ca²⁺ release via RYR1',
            subtitle: 'Dose: 2.5 mg/kg IV, repeat q5 min (max 10 mg/kg)',
            additionalInfo: 'Half-life: 6 h\nMaintenance: 1 mg/kg q6h infusion for 24–48 h\nSide effects: generalized weakness, respiratory depression\nOther indications: NMS, thyroid storm',
          ),
          ThermoregulationHypothermiaMalignantHyperthermiaItem(
            title: 'Supportive Therapy',
            description: 'Acidosis: NaHCO₃',
            subtitle: 'Hyperkalemia: insulin + glucose, diuresis (avoid IV calcium)',
            additionalInfo: 'Hemodynamics: inotropes, vasopressors\nMyoglobinuria: mannitol (present in dantrolene solution) + diuresis\nActive cooling techniques',
          ),
          ThermoregulationHypothermiaMalignantHyperthermiaItem(
            title: 'Isolated Masseter Rigidity (MMR)',
            description: 'Seen in 15–30% of MH attacks',
            subtitle: 'Surgery may continue with safe agents',
            additionalInfo: 'Monitor CK (first 24 h)\nMay be linked with myopathy',
          ),
        ],
      ),
      ThermoregulationHypothermiaMalignantHyperthermiaCategory(
        categoryName: 'Postoperative Management',
        items: [
          ThermoregulationHypothermiaMalignantHyperthermiaItem(
            title: 'MH-Susceptible Patients',
            description: 'Patients with confirmed MH episode → considered MH-susceptible',
          ),
          ThermoregulationHypothermiaMalignantHyperthermiaItem(
            title: 'Gold Standard Diagnosis',
            description: 'Muscle biopsy + caffeine/halothane contracture test (false negative ~0)',
            subtitle: 'Baseline CK elevated in 50–70%, but not diagnostic',
          ),
          ThermoregulationHypothermiaMalignantHyperthermiaItem(
            title: 'Differential Diagnosis',
            description: 'CO₂ insufflation (laparoscopy)',
            subtitle: 'Thyroid storm (hypokalemia, usually postop)',
            additionalInfo: 'Pheochromocytoma (HT + tachycardia, but no CO₂/temp rise)\nSepsis (similar signs but identifiable source)\nSerotonin syndrome (MAOI + meperidine/SSRI)\nNMS (antidopaminergic drugs)',
          ),
          ThermoregulationHypothermiaMalignantHyperthermiaItem(
            title: 'Neuroleptic Malignant Syndrome (NMS)',
            description: 'Signs: hyperthermia, rigidity, altered consciousness, autonomic instability',
            subtitle: 'Mechanism: dopaminergic blockade or abrupt withdrawal',
            additionalInfo: 'CK ↑\nNot inherited\nTreatment: dopamine agonists (levodopa, amantadine) + dantrolene',
          ),
        ],
      ),
      ThermoregulationHypothermiaMalignantHyperthermiaCategory(
        categoryName: 'Prophylaxis & Discharge',
        items: [
          ThermoregulationHypothermiaMalignantHyperthermiaItem(
            title: 'Safe Agents',
            description: 'IV agents + non-depolarizing NMBs',
          ),
          ThermoregulationHypothermiaMalignantHyperthermiaItem(
            title: 'Dantrolene Availability',
            description: 'Must be available wherever GA is given',
            subtitle: 'Prophylactic dantrolene not indicated in suspected patients',
          ),
          ThermoregulationHypothermiaMalignantHyperthermiaItem(
            title: 'Anesthesia Machine Prep',
            description: 'Remove vaporizers, change circuits, flush with 10 L/min O₂ ≥5 min → volatile <1 ppm',
          ),
        ],
      ),
      ThermoregulationHypothermiaMalignantHyperthermiaCategory(
        categoryName: 'Critical Pearls',
        items: [
          ThermoregulationHypothermiaMalignantHyperthermiaItem(
            title: 'SUMMARY SPOT QUESTIONS',
            description: 'Hypothermia phases: Phase I (redistribution), Phase II (environmental), Phase III (equilibrium)',
            subtitle: 'Postop shivering → ↑ O₂ consumption 5-fold',
            additionalInfo: 'Most sensitive MH sign = ↑ ETCO₂\nDantrolene dose = 2.5 mg/kg (max 10 mg/kg)\nFever = latest, inconsistent MH sign\nMH differential: CO₂ insufflation, thyroid storm, NMS, sepsis',
          ),
        ],
      ),
    ];
  }
}
