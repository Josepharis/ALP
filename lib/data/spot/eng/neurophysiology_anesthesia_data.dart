import 'package:flutter/material.dart';

class NeurophysiologyAnesthesiaItem {
  final String title;
  final String description;
  final String? subtitle;
  final String? additionalInfo;

  NeurophysiologyAnesthesiaItem({
    required this.title,
    required this.description,
    this.subtitle,
    this.additionalInfo,
  });
}

class NeurophysiologyAnesthesiaCategory {
  final String categoryName;
  final List<NeurophysiologyAnesthesiaItem> items;

  NeurophysiologyAnesthesiaCategory({
    required this.categoryName,
    required this.items,
  });
}

class NeurophysiologyAnesthesiaData {
  static List<NeurophysiologyAnesthesiaCategory> getNeurophysiologyAnesthesiaData(BuildContext context) {
    return [
      NeurophysiologyAnesthesiaCategory(
        categoryName: 'Brain Metabolism',
        items: [
          NeurophysiologyAnesthesiaItem(
            title: 'Brain O₂ Consumption',
            description: '20% of total body O₂',
          ),
          NeurophysiologyAnesthesiaItem(
            title: 'CMRO₂',
            description: '3–3.8 mL/100 g/min (adult) → 60% for electrical activity',
          ),
          NeurophysiologyAnesthesiaItem(
            title: 'PaO₂ < 30 mmHg',
            description: 'Loss of consciousness in 10 s, irreversible damage in 3–8 min',
          ),
          NeurophysiologyAnesthesiaItem(
            title: 'Glucose Consumption',
            description: '5 mg/100 g/min',
          ),
        ],
      ),
      NeurophysiologyAnesthesiaCategory(
        categoryName: 'Cerebral Blood Flow (CBF)',
        items: [
          NeurophysiologyAnesthesiaItem(
            title: 'Normal CBF',
            description: '50 mL/100 g/min (~750 mL/min)',
            subtitle: 'Gray matter: 80 mL/100 g/min; white matter: 20 mL/100 g/min',
          ),
          NeurophysiologyAnesthesiaItem(
            title: 'Critical Thresholds',
            description: '<20–25 mL: EEG slowing',
            subtitle: '15–20 mL: EEG flattening',
            additionalInfo: '<10 mL: irreversible damage',
          ),
          NeurophysiologyAnesthesiaItem(
            title: 'Monitoring Methods - TCD',
            description: 'MCA flow normal 55 cm/s; >120 cm/s → vasospasm/hemorrhage',
          ),
          NeurophysiologyAnesthesiaItem(
            title: 'Monitoring Methods - Brain Tissue Oximetry',
            description: 'Normal 20–50 mmHg; <20 → intervene; <10 → ischemia',
          ),
          NeurophysiologyAnesthesiaItem(
            title: 'Monitoring Methods - Microdialysis',
            description: 'Lactate/pyruvate ↑ → ischemia',
          ),
        ],
      ),
      NeurophysiologyAnesthesiaCategory(
        categoryName: 'Regulation of CBF',
        items: [
          NeurophysiologyAnesthesiaItem(
            title: 'Cerebral Perfusion Pressure (CPP)',
            description: 'CPP = MAP – ICP',
            subtitle: 'Normal ICP: <10 mmHg',
            additionalInfo: 'Critical values:\nCPP < 50 mmHg → EEG slowing\nCPP 25–40 mmHg → EEG flattening\nCPP < 25 mmHg → permanent damage',
          ),
          NeurophysiologyAnesthesiaItem(
            title: 'Autoregulation',
            description: 'Normal range: MAP 60–160 mmHg',
            subtitle: 'Hypertension → upper limit shifts upward',
            additionalInfo: 'Mechanisms: myogenic, metabolic',
          ),
          NeurophysiologyAnesthesiaItem(
            title: 'Effect of PaCO₂',
            description: 'Between 20–80 mmHg, CBF proportional to PaCO₂',
            subtitle: 'Every 1 mmHg PaCO₂ change → CBF changes 1–2 mL/100 g/min',
            additionalInfo: 'Effect diminishes after 24–48 h due to CSF HCO₃ adaptation',
          ),
          NeurophysiologyAnesthesiaItem(
            title: 'Effect of PaO₂',
            description: 'PaO₂ < 50 mmHg → CBF ↑',
            subtitle: 'Hyperoxia → CBF ↓ by 10%',
          ),
          NeurophysiologyAnesthesiaItem(
            title: 'Temperature',
            description: '1°C change → CBF changes 5–7%',
            subtitle: '10°C drop → CMRO₂ ↓ 50%',
            additionalInfo: 'At 20°C → isoelectric EEG',
          ),
          NeurophysiologyAnesthesiaItem(
            title: 'Viscosity',
            description: 'Main determinant: hematocrit',
            subtitle: 'Optimal O₂ delivery at Hct ~30%',
          ),
        ],
      ),
      NeurophysiologyAnesthesiaCategory(
        categoryName: 'Blood–Brain Barrier (BBB)',
        items: [
          NeurophysiologyAnesthesiaItem(
            title: 'Permeability',
            description: 'Lipid-soluble molecules cross; ionized/large ones cannot',
            subtitle: 'Water crosses → osmotic shifts in electrolyte imbalance',
            additionalInfo: 'If BBB disrupted → fluid moves with hydrostatic pressure difference',
          ),
        ],
      ),
      NeurophysiologyAnesthesiaCategory(
        categoryName: 'Cerebrospinal Fluid (CSF)',
        items: [
          NeurophysiologyAnesthesiaItem(
            title: 'Production',
            description: '500 mL/day (21 mL/h)',
            subtitle: 'Volume: 150 mL',
          ),
          NeurophysiologyAnesthesiaItem(
            title: 'Pathway',
            description: 'Choroid plexus → Lateral ventricles → Foramen of Monro → 3rd ventricle → Aqueduct of Sylvius → 4th ventricle → For. Magendie/Luschka → Cisterna Magna',
          ),
          NeurophysiologyAnesthesiaItem(
            title: '↓ CSF Production',
            description: 'Acetazolamide, steroids, spironolactone, furosemide, isoflurane, vasoconstrictors',
          ),
          NeurophysiologyAnesthesiaItem(
            title: 'Composition',
            description: 'Isotonic (formed by Na secretion)',
          ),
        ],
      ),
      NeurophysiologyAnesthesiaCategory(
        categoryName: 'Intracranial Pressure (ICP)',
        items: [
          NeurophysiologyAnesthesiaItem(
            title: 'Normal ICP',
            description: '<10 mmHg',
          ),
          NeurophysiologyAnesthesiaItem(
            title: 'Content',
            description: '80% brain, 12% blood, 8% CSF',
            subtitle: 'Increase → limited elastance → herniation risk',
          ),
        ],
      ),
      NeurophysiologyAnesthesiaCategory(
        categoryName: 'Effects of Anesthetic Agents',
        items: [
          NeurophysiologyAnesthesiaItem(
            title: 'Volatile Agents - CMRO₂',
            description: '↓ CMRO₂ (most: isoflurane; least: halothane)',
          ),
          NeurophysiologyAnesthesiaItem(
            title: 'Volatile Agents - CBF',
            description: '↑ CBF (halothane 200%, isoflurane 20%, sevoflurane least)',
          ),
          NeurophysiologyAnesthesiaItem(
            title: 'Volatile Agents - Autoregulation',
            description: 'Impaired (strongest with halothane)',
            subtitle: 'Luxury perfusion (↓ CMRO₂ + ↑ CBF)',
          ),
          NeurophysiologyAnesthesiaItem(
            title: 'Volatile Agents - CSF',
            description: 'Isoflurane (↑ absorption), halothane (↓ production/absorption), desflurane (↑ production, ↓ absorption)',
          ),
          NeurophysiologyAnesthesiaItem(
            title: 'N₂O',
            description: 'Minimal effect on CMRO₂, CBF, ICP',
            subtitle: 'Alone → VD + ↑ ICP',
          ),
          NeurophysiologyAnesthesiaItem(
            title: 'IV Agents - Barbiturates',
            description: '↓ CMRO₂, ↓ CBF, ↑ CSF absorption, Robin Hood phenomenon',
          ),
          NeurophysiologyAnesthesiaItem(
            title: 'IV Agents - Opioids',
            description: 'Minimal effect (if PaCO₂ not ↑); hypotension → ↓ CPP',
          ),
          NeurophysiologyAnesthesiaItem(
            title: 'IV Agents - Etomidate',
            description: '↓ CMRO₂, ↓ CSF production, may provoke epileptic foci',
          ),
          NeurophysiologyAnesthesiaItem(
            title: 'IV Agents - Propofol',
            description: '↓ CMRO₂, ↓ CBF, ↓ ICP (ideal for neuroanesthesia)',
          ),
          NeurophysiologyAnesthesiaItem(
            title: 'IV Agents - Benzodiazepines',
            description: 'Mild effect, CPP ↓ in unstable patients',
          ),
          NeurophysiologyAnesthesiaItem(
            title: 'IV Agents - Ketamine',
            description: '↑ CBF 50–60%, CMRO₂ unchanged, ↓ CSF absorption, NMDA blockade → neuroprotection',
          ),
          NeurophysiologyAnesthesiaItem(
            title: 'IV Agents - Lidocaine',
            description: 'Mild ↓ CMRO₂, CBF, ICP; neuroprotective',
          ),
          NeurophysiologyAnesthesiaItem(
            title: 'IV Agents - Droperidol',
            description: 'QT prolongation → obsolete',
          ),
          NeurophysiologyAnesthesiaItem(
            title: 'Vasopressors',
            description: 'If autoregulation intact → CBF unchanged',
            subtitle: 'β1 agonists → ↑ CMR/CBF (if BBB disrupted)',
            additionalInfo: 'α2 agonists → cerebral vasoconstriction',
          ),
          NeurophysiologyAnesthesiaItem(
            title: 'Vasodilators',
            description: '↑ CBF, ↑ ICP',
          ),
          NeurophysiologyAnesthesiaItem(
            title: 'NMB Agents',
            description: 'No direct effect',
            subtitle: 'Histamine release → ↑ ICP',
            additionalInfo: 'Succinylcholine fasciculations → ↑ CBF (preventable)',
          ),
        ],
      ),
      NeurophysiologyAnesthesiaCategory(
        categoryName: 'Brain Protection',
        items: [
          NeurophysiologyAnesthesiaItem(
            title: 'Hypothermia',
            description: 'Most effective; 10°C ↓ → CMRO₂ ↓ 50%',
          ),
          NeurophysiologyAnesthesiaItem(
            title: 'Anesthetics',
            description: 'Barbiturates, propofol, etomidate, isoflurane induce electrical silence',
          ),
          NeurophysiologyAnesthesiaItem(
            title: 'Ketamine',
            description: 'NMDA blockade → neuroprotection',
          ),
          NeurophysiologyAnesthesiaItem(
            title: 'Nimodipine',
            description: 'For vasospasm in SAH',
          ),
          NeurophysiologyAnesthesiaItem(
            title: 'General Measures',
            description: 'Maintain normal/↑ CPP',
            subtitle: 'Avoid ↑ venous pressure/ICP',
            additionalInfo: 'Keep glucose <180 mg/dL\nNormocarbia',
          ),
        ],
      ),
      NeurophysiologyAnesthesiaCategory(
        categoryName: 'EEG & Evoked Potentials',
        items: [
          NeurophysiologyAnesthesiaItem(
            title: 'Most Anesthetics',
            description: '↑ dose → initial activation, then depression',
          ),
          NeurophysiologyAnesthesiaItem(
            title: 'Isoflurane',
            description: '→ isoelectric EEG',
          ),
          NeurophysiologyAnesthesiaItem(
            title: 'Sevo/Des',
            description: '→ burst-suppression',
          ),
          NeurophysiologyAnesthesiaItem(
            title: 'Opioids',
            description: '→ dose-dependent depression',
          ),
          NeurophysiologyAnesthesiaItem(
            title: 'Ketamine',
            description: '→ high-amplitude theta/gamma, low beta',
          ),
          NeurophysiologyAnesthesiaItem(
            title: 'Evoked Potentials',
            description: 'Short-latency → brainstem/nerve',
            subtitle: 'Medium–long latency → cortex',
          ),
        ],
      ),
      NeurophysiologyAnesthesiaCategory(
        categoryName: 'Key Exam Spots',
        items: [
          NeurophysiologyAnesthesiaItem(
            title: 'SUMMARY SPOT QUESTIONS',
            description: 'Brain O₂ consumption: 20% of total body O₂',
            subtitle: 'CMRO₂: 3–3.8 mL/100 g/min',
            additionalInfo: 'Normal CBF: 50 mL/100 g/min\nCPP = MAP – ICP\nNormal ICP: <10 mmHg\nAutoregulation: MAP 60–160 mmHg\nCSF production: 500 mL/day',
          ),
        ],
      ),
    ];
  }
}
