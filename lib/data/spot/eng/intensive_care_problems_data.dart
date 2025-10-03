import 'package:flutter/material.dart';

class IntensiveCareProblemsItem {
  final String title;
  final String description;
  final String? subtitle;
  final String? additionalInfo;

  IntensiveCareProblemsItem({
    required this.title,
    required this.description,
    this.subtitle,
    this.additionalInfo,
  });
}

class IntensiveCareProblemsCategory {
  final String categoryName;
  final List<IntensiveCareProblemsItem> items;

  IntensiveCareProblemsCategory({
    required this.categoryName,
    required this.items,
  });
}

class IntensiveCareProblemsData {
  static List<IntensiveCareProblemsCategory> getIntensiveCareProblemsData(BuildContext context) {
    return [
      IntensiveCareProblemsCategory(
        categoryName: 'General Principles',
        items: [
          IntensiveCareProblemsItem(
            title: 'ICU Patient Risk',
            description: 'ICU patients carry a high risk of multisystem dysfunction',
          ),
          IntensiveCareProblemsItem(
            title: 'Anesthesiologist\'s Role',
            description: 'Mechanical ventilation, circulatory support, fluid–electrolyte balance, nutrition, infection and complication management',
          ),
          IntensiveCareProblemsItem(
            title: 'Essential Requirements',
            description: 'Continuous monitoring and a multidisciplinary approach are essential',
          ),
        ],
      ),
      IntensiveCareProblemsCategory(
        categoryName: 'Respiratory System Problems',
        items: [
          IntensiveCareProblemsItem(
            title: 'Hypoxemia',
            description: 'Most common issue → atelectasis, ARDS, pneumonia, pulmonary embolism',
            subtitle: 'Dx: ↓ SpO₂, PaO₂ <60 mmHg',
            additionalInfo: 'Tx: ↑ FiO₂, PEEP, recruitment maneuvers',
          ),
          IntensiveCareProblemsItem(
            title: 'Hypercapnia',
            description: 'Hypoventilation, obstruction, sedative/opioid effect',
          ),
          IntensiveCareProblemsItem(
            title: 'ARDS',
            description: 'Dx: acute onset, bilateral infiltrates, PaO₂/FiO₂ ≤300, cardiac cause excluded',
            subtitle: 'Tx: low tidal volume (6 mL/kg), plateau pressure <30 cmH₂O, optimal PEEP, prone if needed',
          ),
        ],
      ),
      IntensiveCareProblemsCategory(
        categoryName: 'Cardiovascular Problems',
        items: [
          IntensiveCareProblemsItem(
            title: 'Hypotension',
            description: 'Hypovolemia, sepsis, cardiogenic shock, drug effect',
            subtitle: 'Tx: fluid resuscitation, vasopressor (norepinephrine first-line)',
          ),
          IntensiveCareProblemsItem(
            title: 'Hypertension',
            description: 'Pain, anxiety, ↑ ICP',
          ),
          IntensiveCareProblemsItem(
            title: 'Arrhythmias',
            description: 'Electrolyte disorders, hypoxia, catecholamine therapy',
            subtitle: 'Tx: correct cause, antiarrhythmics, cardioversion',
          ),
        ],
      ),
      IntensiveCareProblemsCategory(
        categoryName: 'Neurological Problems',
        items: [
          IntensiveCareProblemsItem(
            title: 'Delirium & Agitation',
            description: 'Hypoxia, sepsis, withdrawal, electrolyte disorders',
          ),
          IntensiveCareProblemsItem(
            title: 'Coma/Delayed Awakening',
            description: 'Residual anesthetics, metabolic encephalopathy, stroke, hypoglycemia',
          ),
          IntensiveCareProblemsItem(
            title: 'Monitoring',
            description: 'GCS, pupillary reflexes, EEG, imaging',
          ),
        ],
      ),
      IntensiveCareProblemsCategory(
        categoryName: 'Renal Problems',
        items: [
          IntensiveCareProblemsItem(
            title: 'AKI',
            description: 'Hypoperfusion, sepsis, nephrotoxic drugs',
            subtitle: 'Oliguria <0.5 mL/kg/h',
            additionalInfo: 'Tx: fluid balance, avoid nephrotoxins, RRT (CRRT, HD) if needed',
          ),
          IntensiveCareProblemsItem(
            title: 'Electrolyte Disorders',
            description: 'Hyperkalemia (most urgent), hyponatremia, hypocalcemia → arrhythmia risk',
          ),
        ],
      ),
      IntensiveCareProblemsCategory(
        categoryName: 'Gastrointestinal & Nutrition',
        items: [
          IntensiveCareProblemsItem(
            title: 'Stress Ulcer',
            description: 'Prophylaxis with PPI or H₂ blocker',
          ),
          IntensiveCareProblemsItem(
            title: 'Ileus',
            description: 'Opioids, electrolyte imbalance, sepsis',
          ),
          IntensiveCareProblemsItem(
            title: 'Feeding Strategy',
            description: 'Preferred feeding: enteral (preserves gut integrity)',
            subtitle: 'TPN: risk of sepsis, hyperglycemia',
          ),
        ],
      ),
      IntensiveCareProblemsCategory(
        categoryName: 'Infection & Sepsis',
        items: [
          IntensiveCareProblemsItem(
            title: 'Leading Cause of Mortality',
            description: 'Sepsis & septic shock',
          ),
          IntensiveCareProblemsItem(
            title: 'Diagnosis',
            description: 'Fever/hypothermia, leukocytosis/leukopenia, tachycardia, hypotension, organ dysfunction',
          ),
          IntensiveCareProblemsItem(
            title: 'Treatment',
            description: 'Early broad-spectrum antibiotics, fluid resuscitation, norepinephrine, source control',
            subtitle: 'Risk factors: catheters, intubation, surgical wounds',
          ),
        ],
      ),
      IntensiveCareProblemsCategory(
        categoryName: 'Hematological Problems',
        items: [
          IntensiveCareProblemsItem(
            title: 'Thrombocytopenia',
            description: 'Sepsis, drugs, DIC, HIT',
          ),
          IntensiveCareProblemsItem(
            title: 'DIC',
            description: 'Sepsis, trauma, obstetric complications → consumption of coagulation factors & platelets',
            subtitle: 'Tx: treat underlying cause, support with FFP/platelets',
          ),
        ],
      ),
      IntensiveCareProblemsCategory(
        categoryName: 'Metabolic & Endocrine Problems',
        items: [
          IntensiveCareProblemsItem(
            title: 'Hyperglycemia',
            description: 'Stress response, TPN, steroids → ↑ mortality',
            subtitle: 'Tx: insulin infusion, target 140–180 mg/dL',
          ),
          IntensiveCareProblemsItem(
            title: 'Hypoglycemia',
            description: 'Insulin therapy, sepsis',
          ),
          IntensiveCareProblemsItem(
            title: 'Endocrine Emergencies',
            description: 'Thyroid storm, adrenal insufficiency may occur in critical illness → stress-dose steroids may be required',
          ),
        ],
      ),
      IntensiveCareProblemsCategory(
        categoryName: 'Neuromuscular Problems',
        items: [
          IntensiveCareProblemsItem(
            title: 'Prolonged Neuromuscular Block',
            description: 'Residual drug, hypermagnesemia, acidosis',
          ),
          IntensiveCareProblemsItem(
            title: 'Critical Illness Polyneuropathy/Myopathy',
            description: 'Prolonged ICU stay, steroids, sepsis',
            subtitle: 'Clinical: weakness, weaning difficulty',
          ),
        ],
      ),
      IntensiveCareProblemsCategory(
        categoryName: 'Special ICU Situations',
        items: [
          IntensiveCareProblemsItem(
            title: 'Sepsis',
            description: 'Early antibiotics, 30 mL/kg crystalloids, vasopressors',
          ),
          IntensiveCareProblemsItem(
            title: 'Acute Coronary Syndrome',
            description: 'Aspirin, heparin, β-blockers, PCI if needed',
          ),
          IntensiveCareProblemsItem(
            title: 'Pulmonary Embolism',
            description: 'Anticoagulation, thrombolysis',
          ),
          IntensiveCareProblemsItem(
            title: 'Status Epilepticus',
            description: 'Benzodiazepine, propofol, antiepileptic drugs',
          ),
        ],
      ),
      IntensiveCareProblemsCategory(
        categoryName: 'Spot Notes',
        items: [
          IntensiveCareProblemsItem(
            title: 'SUMMARY SPOT QUESTIONS',
            description: 'Leading ICU cause of death: sepsis/MOF',
            subtitle: 'ARDS goal: tidal volume 6 mL/kg, plateau <30 cmH₂O',
            additionalInfo: 'Septic shock first-line vasopressor: norepinephrine\nOliguria unresponsive to fluids in AKI → dialysis\nMost common complication of prolonged intubation: pneumonia',
          ),
        ],
      ),
    ];
  }
}
