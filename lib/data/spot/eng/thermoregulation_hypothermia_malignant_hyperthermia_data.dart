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
  static List<ThermoregulationHypothermiaMalignantHyperthermiaCategory>
  getThermoregulationHypothermiaMalignantHyperthermiaData(
    BuildContext context,
  ) {
    return [
      ThermoregulationHypothermiaMalignantHyperthermiaCategory(
        categoryName: 'Thermoregulation & Hypothermia',
        items: [
          ThermoregulationHypothermiaMalignantHyperthermiaItem(
            title: 'DEFINITION OF HYPOTHERMIA (<36 °C)',
            description:
                'Defined as a core body temperature falling below 36 °C.',
            additionalInfo:
                'Hypothermia is the most common perioperative thermal disturbance.',
          ),
          ThermoregulationHypothermiaMalignantHyperthermiaItem(
            title: 'PHASES OF HEAT LOSS UNDER ANESTHESIA',
            description:
                'Occurs in three distinct phases: initial redistribution, linear decline, and final equilibrium.',
            subtitle:
                'Phase I: core-to-periphery redistribution (first hour); Phase II: environmental loss (3–4 h)',
            additionalInfo:
                'Phase III reached when metabolic heat production equals heat loss to the environment.',
          ),
          ThermoregulationHypothermiaMalignantHyperthermiaItem(
            title: 'ANESTHETIC EFFECTS ON THERMOREGULATION',
            description:
                'Anesthetic agents significantly suppress hypothalamic defenses, including sweating, shivering, and vascular reflexes.',
            additionalInfo:
                'This impairment leaves the patient vulnerable to ambient operating room temperatures.',
          ),
          ThermoregulationHypothermiaMalignantHyperthermiaItem(
            title: 'PREVENTION OF PERIOPERATİVE HEAT LOSS',
            description:
                'Pre-warming with convective blankets is the most effective way to prevent Phase I redistribution loss.',
            subtitle:
                'Intraoperative warming uses blankets, fluid warmers, and humidified inspired gases',
            additionalInfo:
                'Proactive thermal management reduces postoperative complications like surgical site infection.',
          ),
          ThermoregulationHypothermiaMalignantHyperthermiaItem(
            title: 'POSTOPERATİVE SHIVERING AND OXYGEN CONSUMPTION',
            description:
                'Shivering can increase metabolic oxygen consumption up to five-fold (500%).',
            subtitle:
                'Meperidine 12.5–25 mg is highly effective in terminating shivering episodes',
            additionalInfo:
                'In patients with limited cardiac reserve, shivering-induced oxygen demand can trigger myocardial ischemia.',
          ),
        ],
      ),
      ThermoregulationHypothermiaMalignantHyperthermiaCategory(
        categoryName: 'Malignant Hyperthermia (MH)',
        items: [
          ThermoregulationHypothermiaMalignantHyperthermiaItem(
            title: 'INCIDENCE AND RISK GROUPS',
            description:
                'Found in 1:15,000 children and 1:40,000 adults, with a higher frequency in young males.',
            additionalInfo:
                'A rare but life-threatening pharmacogenetic disorder of skeletal muscle.',
          ),
          ThermoregulationHypothermiaMalignantHyperthermiaItem(
            title: 'TRIGGERING AGENTS',
            description:
                'Potent halogenated volatile anesthetics and the depolarizing muscle relaxant succinylcholine.',
            additionalInfo:
                'Strict avoidance of these triggers is mandatory in susceptible patients.',
          ),
          ThermoregulationHypothermiaMalignantHyperthermiaItem(
            title: 'GENETICS OF MALIGNANT HYPERTHERMIA',
            description:
                'Linked primarily to RYR1 gene mutations on chromosome 19, causing excessive Ca²⁺ release from the SR.',
            subtitle:
                'Also associated with chromosome 17 sodium channel anomalies',
            additionalInfo:
                'It is a multigenic disorder with at least five high-risk genetic regions identified.',
          ),
          ThermoregulationHypothermiaMalignantHyperthermiaItem(
            title: 'CLINICAL SIGNS OF AN MH EPISODE',
            description:
                'Characterized by early tachycardia, masseter rigidity, and a rapid rise in ETCO₂.',
            subtitle:
                'Late signs: hyperthermia (1 °C/5 min), mixed acidosis, hyperkalemia, and arrhythmias',
            additionalInfo:
                'Elevated CK (>20,000), LDH, and myoglobin are typical; fever is often the latest and most inconsistent sign.',
          ),
        ],
      ),
      ThermoregulationHypothermiaMalignantHyperthermiaCategory(
        categoryName: 'Intraoperative Management',
        items: [
          ThermoregulationHypothermiaMalignantHyperthermiaItem(
            title: 'IMMEDIATE ACTIONS DURING MH CRISIS',
            description:
                'Immediately stop triggers, remove vaporizers, and flush the system with 10 L/min FGF for at least 5 minutes.',
            subtitle:
                'Aggressive ventilation with 100% O₂ is required to manage hypercarbia',
            additionalInfo:
                'Early recognition and intervention significantly reduce mortality rates.',
          ),
          ThermoregulationHypothermiaMalignantHyperthermiaItem(
            title: 'DANTROLENE ADMINISTRATION AND MONITORING',
            description:
                'Acts by inhibiting calcium release via RYR1; administered at an initial dose of 2.5 mg/kg IV.',
            subtitle:
                'Dose can be repeated every 5 minutes until symptoms resolve (maximum 10 mg/kg cumulative)',
            additionalInfo:
                'Requires maintenance for 24–48 hours at 1 mg/kg q6h. Broad muscle weakness is a common side effect.',
          ),
          ThermoregulationHypothermiaMalignantHyperthermiaItem(
            title: 'SUPPORTIVE THERAPY AND STABILIZATION',
            description:
                'Involves managing acidosis with NaHCO₃ and treating hyperkalemia with insulin/glucose.',
            subtitle:
                'Intravenous calcium should be avoided during the peak of an MH crisis',
            additionalInfo:
                'Hemodynamic support via inotropes and aggressive diuresis to manage myoglobinuria are vital.',
          ),
          ThermoregulationHypothermiaMalignantHyperthermiaItem(
            title: 'ISOLATED MASSETER RIGIDITY (MMR) MANAGEMENT',
            description:
                'A phenomenon seen in 15–30% of MH attacks; involves jaw-locking after succinylcholine.',
            subtitle:
                'CK levels must be monitored for the first 24 hours even if the episode resolves',
            additionalInfo:
                'Surgery may proceed with non-triggering agents if the patient remains stable.',
          ),
        ],
      ),
      ThermoregulationHypothermiaMalignantHyperthermiaCategory(
        categoryName: 'Postoperative Management',
        items: [
          ThermoregulationHypothermiaMalignantHyperthermiaItem(
            title: 'MH-SUSCEPTIBLE PATIENT IDENTIFICATION',
            description:
                'Any patient with a confirmed previous MH episode must be permanently labeled as MH-susceptible.',
            additionalInfo:
                'Counseling and Medic-Alert identification for future procedures are mandatory.',
          ),
          ThermoregulationHypothermiaMalignantHyperthermiaItem(
            title: 'GOLD STANDARD DIAGNOSIS: CONTRACTURE TEST',
            description:
                'Muscle biopsy followed by caffeine/halothane contracture test is the definitive gold standard.',
            subtitle:
                'False-negative rates for the contracture test are close to zero',
            additionalInfo:
                'Baseline CK may be elevated in 50–70% of susceptible individuals, but is not diagnostic.',
          ),
          ThermoregulationHypothermiaMalignantHyperthermiaItem(
            title: 'DIFFERENTIAL DIAGNOSIS OF HYPERTHERMIA',
            description:
                'Consider CO₂ insufflation, thyroid storm, pheochromocytoma, and sepsis as potential mimickers.',
            subtitle:
                'Serotonin syndrome and Neuroleptic Malignant Syndrome (NMS) are key pharmaceutical differentials',
            additionalInfo:
                'Pheochromocytoma typically presents without the significant ETCO₂ or temperature rise seen in MH.',
          ),
          ThermoregulationHypothermiaMalignantHyperthermiaItem(
            title: 'NEUROLEPTIC MALIGNANT SYNDROME (NMS)',
            description:
                'An idiosyncratic reaction to antidopaminergic drugs characterized by rigidity and autonomic instability.',
            subtitle:
                'Unlike MH, NMS is not inherited and triggered by dopaminergic blockade',
            additionalInfo:
                'Treated with dopamine agonists (levodopa, amantadine) in addition to dantrolene.',
          ),
        ],
      ),
      ThermoregulationHypothermiaMalignantHyperthermiaCategory(
        categoryName: 'Prophylaxis & Discharge',
        items: [
          ThermoregulationHypothermiaMalignantHyperthermiaItem(
            title: 'SAFE ANESTHETIC AGENTS FOR MH-SUSCEPTIBLE PATIENTS',
            description:
                'Total Intravenous Anesthesia (TIVA) using IV sedatives and non-depolarizing NMBs is entirely safe.',
            additionalInfo:
                'Nerve blocks and spinal/epidural anesthesia are also safe alternatives.',
          ),
          ThermoregulationHypothermiaMalignantHyperthermiaItem(
            title: 'DANTROLENE AVAILABILITY AND PROPHYLAXIS',
            description:
                'Dantrolene must be stored and readily available in all facilities where general anesthesia is administered.',
            subtitle:
                'Routine prophylactic dantrolene is not indicated in susceptible patients',
            additionalInfo:
                'Instead, ensure machine preparation and utilize non-triggering agents.',
          ),
          ThermoregulationHypothermiaMalignantHyperthermiaItem(
            title: 'ANESTHESIA MACHINE PREPARATION PROTOCOL',
            description:
                'Vaporizers removed, circuits changed, and FGF at 10 L/min for ≥5 min to achieve <1 ppm volatile levels.',
            additionalInfo:
                'Modern charcoal filters can drastically reduce the time needed for successful washout.',
          ),
        ],
      ),
      ThermoregulationHypothermiaMalignantHyperthermiaCategory(
        categoryName: 'Critical Pearls',
        items: [
          ThermoregulationHypothermiaMalignantHyperthermiaItem(
            title: 'SUMMARY SPOT QUESTIONS',
            description:
                'Core markers: Phase I redistribution, 500% O₂ shivering cost, and ETCO₂ sensitivity.',
            subtitle:
                'Dantrolene 2.5 mg/kg; Fever is the latest sign; 10 L/min O₂ washout',
            additionalInfo:
                'Differential: Sepsis, NMS, Thyroid storm, Laparoscopic CO₂. Avoid IV calcium during crisis.',
          ),
        ],
      ),
    ];
  }
}
