import 'package:flutter/material.dart';

class NoncardiovascularMonitoringItem {
  final String title;
  final String description;
  final String? subtitle;
  final String? additionalInfo;

  NoncardiovascularMonitoringItem({
    required this.title,
    required this.description,
    this.subtitle,
    this.additionalInfo,
  });
}

class NoncardiovascularMonitoringCategory {
  final String categoryName;
  final List<NoncardiovascularMonitoringItem> items;

  NoncardiovascularMonitoringCategory({
    required this.categoryName,
    required this.items,
  });
}

class NoncardiovascularMonitoringData {
  static List<NoncardiovascularMonitoringCategory> getNoncardiovascularMonitoringData(BuildContext context) {
    return [
      NoncardiovascularMonitoringCategory(
        categoryName: 'Respiratory Gas Exchange Monitors',
        items: [
          NoncardiovascularMonitoringItem(
            title: 'Precordial and Esophageal Stethoscope - Indication',
            description: 'If no gas monitor is available; follow-up of intubation with ETCO₂',
          ),
          NoncardiovascularMonitoringItem(
            title: 'Precordial and Esophageal Stethoscope - Contraindication',
            description: 'Esophageal stricture, varices',
          ),
          NoncardiovascularMonitoringItem(
            title: 'Precordial Technique',
            description: 'Placed on the chest or suprasternal notch',
          ),
          NoncardiovascularMonitoringItem(
            title: 'Esophageal Technique',
            description: 'Ballooned plastic catheter (8–24F)',
          ),
          NoncardiovascularMonitoringItem(
            title: 'Clinical Use',
            description: 'Assessment of breath sounds and heart rhythm',
          ),
          NoncardiovascularMonitoringItem(
            title: 'Pulse Oximeter - Indication',
            description: 'Should be applied to every anesthesia patient',
          ),
          NoncardiovascularMonitoringItem(
            title: 'Pulse Oximeter - Technique',
            description: 'Light source + sensor + detector; Lambert–Beer\'s law',
          ),
          NoncardiovascularMonitoringItem(
            title: 'Pulse Oximeter - Wavelengths',
            description: 'OxyHb 940 nm, DeoxyHb 660 nm',
          ),
          NoncardiovascularMonitoringItem(
            title: 'Pulse Oximeter - False Readings',
            description: 'COHb, MetHb, low PaO₂, motion, low perfusion, optical shunt, methylene blue, etc.',
          ),
          NoncardiovascularMonitoringItem(
            title: 'Pulse Oximeter - Normal Values',
            description: 'SpO₂ ~90% → PaO₂ 65 mmHg',
          ),
          NoncardiovascularMonitoringItem(
            title: 'Pulse Oximeter - Other Applications',
            description: 'SjvO₂ via jugular bulb and NIRS for cerebral oxygen monitoring',
            subtitle: 'Normal rSO₂ ≈ 70%',
          ),
          NoncardiovascularMonitoringItem(
            title: 'Capnography - Indication',
            description: 'General anesthesia',
          ),
          NoncardiovascularMonitoringItem(
            title: 'Capnography - Contraindication',
            description: 'None',
          ),
          NoncardiovascularMonitoringItem(
            title: 'Capnography - Technique',
            description: 'Infrared light absorption by CO₂',
          ),
          NoncardiovascularMonitoringItem(
            title: 'Capnography - Non-diverting',
            description: 'Measured directly from the breathing circuit',
          ),
          NoncardiovascularMonitoringItem(
            title: 'Capnography - Diverting',
            description: 'Sample aspirated from the system',
          ),
          NoncardiovascularMonitoringItem(
            title: 'Capnography - Clinical Use',
            description: 'Malignant hyperthermia → ETCO₂ increases',
            subtitle: 'Alveolar dead space: PaCO₂ – ETCO₂ = 2–5 mmHg',
            additionalInfo: 'Pressure–time waveform: Phases I–IV\nVolume–time waveform: Alveolar dead space, PEEP optimization',
          ),
          NoncardiovascularMonitoringItem(
            title: 'Anesthetic Gas Analysis - Techniques',
            description: 'Infrared spectrophotometry, piezoelectric oscillation, galvanic cell, paramagnetic analysis',
          ),
          NoncardiovascularMonitoringItem(
            title: 'Anesthetic Gas Analysis - O₂ and N₂',
            description: 'Do not absorb IR',
          ),
          NoncardiovascularMonitoringItem(
            title: 'Anesthetic Gas Analysis - Piezoelectric',
            description: 'Cannot differentiate anesthetics',
          ),
          NoncardiovascularMonitoringItem(
            title: 'Anesthetic Gas Analysis - Galvanic',
            description: 'Consumes oxygen; placed in inspiratory limb',
          ),
          NoncardiovascularMonitoringItem(
            title: 'Anesthetic Gas Analysis - Paramagnetic',
            description: 'Relies on oxygen paramagnetism; measures expansion',
          ),
          NoncardiovascularMonitoringItem(
            title: 'Spirometry',
            description: 'Flow–volume–pressure measurement to evaluate lung function',
          ),
        ],
      ),
      NoncardiovascularMonitoringCategory(
        categoryName: 'Neurological Monitors',
        items: [
          NoncardiovascularMonitoringItem(
            title: 'EEG (Electroencephalography) - Indication',
            description: 'Monitoring cerebral oxygenation and activity',
          ),
          NoncardiovascularMonitoringItem(
            title: 'EEG - Technique',
            description: 'Records 1–30 Hz electrical potentials',
          ),
          NoncardiovascularMonitoringItem(
            title: 'EEG Wave Types - α',
            description: '8–13 Hz → rest',
          ),
          NoncardiovascularMonitoringItem(
            title: 'EEG Wave Types - β',
            description: '13–30 Hz → concentration/anesthesia',
          ),
          NoncardiovascularMonitoringItem(
            title: 'EEG Wave Types - δ',
            description: '0.5–4 Hz → deep sleep/anesthesia',
          ),
          NoncardiovascularMonitoringItem(
            title: 'EEG Wave Types - θ',
            description: '4–7 Hz → sleep/anesthesia',
          ),
          NoncardiovascularMonitoringItem(
            title: 'EEG Derived Values - BIS',
            description: '40–65 → general anesthesia; 65–85 → sedation',
          ),
          NoncardiovascularMonitoringItem(
            title: 'EEG Derived Values - Entropy',
            description: 'SE (EEG), RE (EMG)',
          ),
          NoncardiovascularMonitoringItem(
            title: 'Evoked Potentials (EP) - SEP',
            description: 'Sensory stimulation → cortical potential',
          ),
          NoncardiovascularMonitoringItem(
            title: 'Evoked Potentials (EP) - MEP',
            description: 'Cortical stimulation → muscle potential',
          ),
          NoncardiovascularMonitoringItem(
            title: 'Evoked Potentials (EP) - Contraindications',
            description: 'MEP contraindicated with skull defects, implanted devices, major cerebral lesions',
          ),
          NoncardiovascularMonitoringItem(
            title: 'Anesthetic Effects on EP',
            description: 'Volatile agents → ↓ amplitude, ↑ latency',
            subtitle: 'Barbiturates → ↓ amplitude, ↑ latency',
            additionalInfo: 'Propofol → ↓ amplitude, ↑ latency\nKetamine → ↑ amplitude or unchanged\nOpioids → slight ↓ amplitude\nNeuromuscular blockers → no significant effect',
          ),
          NoncardiovascularMonitoringItem(
            title: 'Cerebral Oximetry (NIRS)',
            description: 'Focuses on venous Hb absorption, no pulsatile component',
            subtitle: 'rSO₂ <40% or >25% decrease from baseline → neurological injury risk',
            additionalInfo: 'Jugular venous oxygen used to estimate cerebral oxygenation\nTissue O₂ pressure <20 mmHg → SBP ↑ 60 mmHg, ICP ↓ 20 mmHg',
          ),
        ],
      ),
      NoncardiovascularMonitoringCategory(
        categoryName: 'Other Monitors',
        items: [
          NoncardiovascularMonitoringItem(
            title: 'Temperature Monitoring - Phase I',
            description: 'Redistribution (central → peripheral)',
          ),
          NoncardiovascularMonitoringItem(
            title: 'Temperature Monitoring - Phase II',
            description: 'Linear heat loss > metabolic production',
          ),
          NoncardiovascularMonitoringItem(
            title: 'Temperature Monitoring - Phase III',
            description: 'Balance (heat loss = metabolic production)',
          ),
          NoncardiovascularMonitoringItem(
            title: 'Temperature Monitoring - Measurement',
            description: 'Thermistor/thermocouple; tympanic, rectal, nasopharyngeal, esophageal, bladder, skin',
          ),
          NoncardiovascularMonitoringItem(
            title: 'Urine Output - Indication',
            description: 'Renal perfusion, fluid status',
          ),
          NoncardiovascularMonitoringItem(
            title: 'Urine Output - Oliguria',
            description: '<0.5 mL/kg/hr → oliguria',
          ),
          NoncardiovascularMonitoringItem(
            title: 'Urine Output - Technique',
            description: 'Foley catheter',
          ),
          NoncardiovascularMonitoringItem(
            title: 'Urine Output - Complications',
            description: 'UTI, urethral trauma',
          ),
          NoncardiovascularMonitoringItem(
            title: 'Peripheral Nerve Stimulation - Indication',
            description: 'Monitoring neuromuscular blockade (NMB)',
          ),
          NoncardiovascularMonitoringItem(
            title: 'Peripheral Nerve Stimulation - Technique',
            description: '60–80 mA stimulus; applied to adductor pollicis/ulnar nerve or orbicularis oculi',
          ),
          NoncardiovascularMonitoringItem(
            title: 'TOF (Train-of-Four)',
            description: '4 stimuli in 2 seconds. With non-depolarizing block → progressively decreasing responses',
            subtitle: '4th twitch at 75% → blockade 75–95%',
          ),
          NoncardiovascularMonitoringItem(
            title: 'DBS (Double-Burst Stimulation)',
            description: 'More sensitive than TOF',
          ),
          NoncardiovascularMonitoringItem(
            title: 'Clinical Reversal',
            description: 'TOF ratio >0.7 → adequate muscle function',
          ),
        ],
      ),
      NoncardiovascularMonitoringCategory(
        categoryName: 'Key Exam Spots',
        items: [
          NoncardiovascularMonitoringItem(
            title: 'SUMMARY SPOT QUESTIONS',
            description: 'Pulse oximeter: OxyHb 940 nm, DeoxyHb 660 nm',
            subtitle: 'SpO₂ ~90% → PaO₂ 65 mmHg',
            additionalInfo: 'Alveolar dead space: PaCO₂ – ETCO₂ = 2–5 mmHg\nBIS: 40–65 general anesthesia\nrSO₂ <40% → neurological injury risk\nOliguria: <0.5 mL/kg/hr',
          ),
        ],
      ),
    ];
  }
}
