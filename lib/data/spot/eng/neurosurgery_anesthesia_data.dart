import 'package:flutter/material.dart';

class NeurosurgeryAnesthesiaItem {
  final String title;
  final String description;
  final String? subtitle;
  final String? additionalInfo;

  NeurosurgeryAnesthesiaItem({
    required this.title,
    required this.description,
    this.subtitle,
    this.additionalInfo,
  });
}

class NeurosurgeryAnesthesiaCategory {
  final String categoryName;
  final List<NeurosurgeryAnesthesiaItem> items;

  NeurosurgeryAnesthesiaCategory({
    required this.categoryName,
    required this.items,
  });
}

class NeurosurgeryAnesthesiaData {
  static List<NeurosurgeryAnesthesiaCategory> getNeurosurgeryAnesthesiaData(BuildContext context) {
    return [
      NeurosurgeryAnesthesiaCategory(
        categoryName: 'Increased Intracranial Pressure (ICP)',
        items: [
          NeurosurgeryAnesthesiaItem(
            title: 'ICP Thresholds',
            description: 'ICP > 15 mmHg → pathological',
            subtitle: 'ICP > 30 mmHg → ↓ CBF, ↑ edema, vicious cycle',
          ),
          NeurosurgeryAnesthesiaItem(
            title: 'Cushing\'s Triad',
            description: 'HT + bradycardia + irregular respiration',
          ),
          NeurosurgeryAnesthesiaItem(
            title: 'CSF Volume',
            description: '150 mL, normal production: 500 mL/day',
          ),
          NeurosurgeryAnesthesiaItem(
            title: 'PaCO₂ Management',
            description: '30–33 mmHg → acute ICP reduction (risky if focal ischemia present)',
          ),
          NeurosurgeryAnesthesiaItem(
            title: 'Mannitol',
            description: '0.25–0.5 g/kg IV bolus (caution: renal/cardiac failure)',
          ),
          NeurosurgeryAnesthesiaItem(
            title: 'Furosemide',
            description: 'Onset ~30 min',
          ),
          NeurosurgeryAnesthesiaItem(
            title: 'Steroids',
            description: 'Effective in vasogenic edema, ineffective in cytotoxic',
          ),
          NeurosurgeryAnesthesiaItem(
            title: 'Hyperglycemia',
            description: 'Should be avoided',
          ),
        ],
      ),
      NeurosurgeryAnesthesiaCategory(
        categoryName: 'Mass Lesion & Craniotomy',
        items: [
          NeurosurgeryAnesthesiaItem(
            title: 'Supratentorial Mass',
            description: '→ seizures, hemiplegia, aphasia',
          ),
          NeurosurgeryAnesthesiaItem(
            title: 'Infratentorial Mass',
            description: '→ cerebellar/brainstem dysfunction',
          ),
          NeurosurgeryAnesthesiaItem(
            title: 'Pre-op',
            description: 'Neurological exam is mandatory',
            subtitle: 'Anticonvulsant levels must be checked',
            additionalInfo: 'Corticosteroid + anticonvulsant therapy should continue',
          ),
          NeurosurgeryAnesthesiaItem(
            title: 'Induction',
            description: 'Goal: intubation without ↑ ICP',
            subtitle: 'Propofol + opioid + hyperventilation → most common method',
            additionalInfo: 'Sevoflurane at moderate dose → preserves CSF autoregulation\nβ₁ blockers → for HT control',
          ),
          NeurosurgeryAnesthesiaItem(
            title: 'Maintenance',
            description: 'TIVA or low-dose volatile agent',
            subtitle: 'PaCO₂: 30–35 mmHg',
            additionalInfo: 'Isotonic solutions preferred (glucose-containing avoided)\nHyperglycemia avoided',
          ),
          NeurosurgeryAnesthesiaItem(
            title: 'Emergence',
            description: 'Early extubation preferred',
          ),
        ],
      ),
      NeurosurgeryAnesthesiaCategory(
        categoryName: 'Posterior Fossa Surgery',
        items: [
          NeurosurgeryAnesthesiaItem(
            title: 'Obstructive Hydrocephalus',
            description: 'Ventriculostomy may be required before induction',
          ),
          NeurosurgeryAnesthesiaItem(
            title: 'Brainstem Injury',
            description: 'Circulation/respiratory centers → sudden instability',
          ),
          NeurosurgeryAnesthesiaItem(
            title: 'Sitting Position - Risks',
            description: 'Pneumocephalus risk (N₂O contraindicated)',
            subtitle: '↑ Risk of venous air embolism (VAE)',
          ),
          NeurosurgeryAnesthesiaItem(
            title: 'VAE Detection',
            description: 'TEE & precordial Doppler → most sensitive detection (as little as 0.25 mL air)',
          ),
          NeurosurgeryAnesthesiaItem(
            title: 'VAE Treatment',
            description: '100% O₂, air aspiration (via CVP catheter), fluids & vasopressors, jugular compression, PEEP (risky if PFO present)',
          ),
        ],
      ),
      NeurosurgeryAnesthesiaCategory(
        categoryName: 'Stereotactic Surgery',
        items: [
          NeurosurgeryAnesthesiaItem(
            title: 'Indications',
            description: 'Parkinson\'s, epilepsy, chronic pain',
          ),
          NeurosurgeryAnesthesiaItem(
            title: 'Anesthesia',
            description: 'Propofol + dexmedetomidine infusion',
          ),
          NeurosurgeryAnesthesiaItem(
            title: 'Airway',
            description: 'Difficulty possible due to frame',
          ),
        ],
      ),
      NeurosurgeryAnesthesiaCategory(
        categoryName: 'Head Trauma',
        items: [
          NeurosurgeryAnesthesiaItem(
            title: 'GCS < 8',
            description: '→ mortality 35%',
          ),
          NeurosurgeryAnesthesiaItem(
            title: 'SBP < 80 mmHg',
            description: '→ poor prognosis',
          ),
          NeurosurgeryAnesthesiaItem(
            title: 'Causes of Secondary Injury',
            description: 'Hypoxia, hypercapnia, hypotension',
          ),
          NeurosurgeryAnesthesiaItem(
            title: 'RSI',
            description: 'Should be applied',
          ),
          NeurosurgeryAnesthesiaItem(
            title: 'Cervical Trauma',
            description: 'Assume cervical trauma → in-line stabilization',
          ),
          NeurosurgeryAnesthesiaItem(
            title: 'Blind Nasal Intubation',
            description: 'Contraindicated in basal skull fracture',
          ),
          NeurosurgeryAnesthesiaItem(
            title: 'Intra-op - CPP Target',
            description: '70–110 mmHg',
          ),
          NeurosurgeryAnesthesiaItem(
            title: 'Intra-op - PaCO₂',
            description: '< 30 mmHg → contraindicated',
          ),
          NeurosurgeryAnesthesiaItem(
            title: 'Possible Complications',
            description: 'DIC, DI, stress ulcer',
          ),
        ],
      ),
      NeurosurgeryAnesthesiaCategory(
        categoryName: 'Intracranial Aneurysm & AVM',
        items: [
          NeurosurgeryAnesthesiaItem(
            title: 'Aneurysm - Location',
            description: 'Most common location: anterior circle of Willis',
          ),
          NeurosurgeryAnesthesiaItem(
            title: 'Aneurysm - Type',
            description: 'Saccular aneurysm → most frequent cause of SAH',
          ),
          NeurosurgeryAnesthesiaItem(
            title: 'Aneurysm - Rupture',
            description: '10% mortality immediately, 25% within 3 months',
          ),
          NeurosurgeryAnesthesiaItem(
            title: 'Vasospasm',
            description: '30%, most common cause of death, occurs days 4–14',
          ),
          NeurosurgeryAnesthesiaItem(
            title: 'TCD',
            description: '>200 cm/s → severe spasm; Lindegaard ratio >3',
          ),
          NeurosurgeryAnesthesiaItem(
            title: 'Brain Tissue O₂',
            description: '< 20 mmHg → ischemia',
          ),
          NeurosurgeryAnesthesiaItem(
            title: 'Treatment',
            description: 'Nimodipine + 3H therapy (hypervolemia, hemodilution, HT) if needed',
            subtitle: 'Hypothermia may be neuroprotective',
          ),
          NeurosurgeryAnesthesiaItem(
            title: 'AVM - Presentation',
            description: 'Most common presentation: headache, seizures',
          ),
          NeurosurgeryAnesthesiaItem(
            title: 'AVM - Risk',
            description: 'Risk of major bleeding → large-bore IV access required',
          ),
          NeurosurgeryAnesthesiaItem(
            title: 'AVM - Surrounding Tissue',
            description: 'Surrounding brain tissue: hyperemic, edematous',
          ),
        ],
      ),
      NeurosurgeryAnesthesiaCategory(
        categoryName: 'Spinal Surgery',
        items: [
          NeurosurgeryAnesthesiaItem(
            title: 'Prone Position',
            description: 'Complicates anesthesia',
          ),
          NeurosurgeryAnesthesiaItem(
            title: 'Transthoracic Approach',
            description: 'May require one-lung ventilation',
          ),
          NeurosurgeryAnesthesiaItem(
            title: 'Position Complications',
            description: 'Ocular compression, POVL (ischemic optic neuropathy, glaucoma, cortical embolism)',
          ),
          NeurosurgeryAnesthesiaItem(
            title: 'POVL Risk Factors',
            description: 'Long surgeries, massive blood loss, HT, DM, obesity, smoking',
          ),
          NeurosurgeryAnesthesiaItem(
            title: 'Monitoring',
            description: 'Must be complete before positioning',
          ),
          NeurosurgeryAnesthesiaItem(
            title: 'Intra-op Monitoring',
            description: 'Evoked potentials (motor, somatosensory) may be used',
          ),
        ],
      ),
      NeurosurgeryAnesthesiaCategory(
        categoryName: 'Quick Reference – Critical Numbers',
        items: [
          NeurosurgeryAnesthesiaItem(
            title: 'SUMMARY SPOT QUESTIONS',
            description: 'Normal ICP: < 10 mmHg',
            subtitle: 'Pathological ICP: > 15 mmHg\nCritical ICP: > 30 mmHg',
            additionalInfo: 'PaCO₂: 30–35 mmHg (↓ ICP but ischemia risk)\nMannitol: 0.25–0.5 g/kg IV\nTCD vasospasm: >200 cm/s\nCPP target (trauma): 70–110 mmHg\nPoor prognosis SBP: < 80 mmHg\nGCS < 8 → intubation, 35% mortality',
          ),
        ],
      ),
    ];
  }
}
