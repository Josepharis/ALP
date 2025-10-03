import 'package:flutter/material.dart';

class PostoperativeCareInhalationItem {
  final String title;
  final String description;
  final String? subtitle;
  final String? additionalInfo;

  PostoperativeCareInhalationItem({
    required this.title,
    required this.description,
    this.subtitle,
    this.additionalInfo,
  });
}

class PostoperativeCareInhalationCategory {
  final String categoryName;
  final List<PostoperativeCareInhalationItem> items;

  PostoperativeCareInhalationCategory({
    required this.categoryName,
    required this.items,
  });
}

class PostoperativeCareInhalationData {
  static List<PostoperativeCareInhalationCategory> getPostoperativeCareInhalationData(BuildContext context) {
    return [
      PostoperativeCareInhalationCategory(
        categoryName: 'General Principles',
        items: [
          PostoperativeCareInhalationItem(
            title: 'Role in PACU and ICU',
            description: 'Mechanical ventilation and inhalation therapies play a critical role in PACU and ICU',
          ),
          PostoperativeCareInhalationItem(
            title: 'Goals',
            description: 'Optimize oxygenation, ventilation, acid–base balance, lung-protective strategies, and prevent complications',
          ),
        ],
      ),
      PostoperativeCareInhalationCategory(
        categoryName: 'Oxygen Therapy',
        items: [
          PostoperativeCareInhalationItem(
            title: 'Routine Oxygen in PACU',
            description: 'Reduces hypoxemia risk',
          ),
          PostoperativeCareInhalationItem(
            title: 'Causes of Hypoxemia',
            description: 'Residual anesthetics, atelectasis, obstruction, hypoventilation',
          ),
          PostoperativeCareInhalationItem(
            title: 'Oxygen Delivery Devices',
            description: 'Nasal cannula: 1–6 L/min (FiO₂ ~24–44%)',
            subtitle: 'Simple mask: 6–10 L/min (FiO₂ ~35–60%)',
            additionalInfo: 'Venturi mask: fixed FiO₂ (24–50%)\nReservoir mask: FiO₂ 60–90%',
          ),
        ],
      ),
      PostoperativeCareInhalationCategory(
        categoryName: 'Humidification & Inhalation Therapy',
        items: [
          PostoperativeCareInhalationItem(
            title: 'Mechanical Ventilation Requirements',
            description: 'Absolute humidity ≥30 mg/L, temperature ~37 °C',
          ),
          PostoperativeCareInhalationItem(
            title: 'Humidification Methods',
            description: 'HME filters → practical, short-term',
            subtitle: 'Active humidifiers → preferred in ICU, more effective',
          ),
          PostoperativeCareInhalationItem(
            title: 'Inhalation Drugs',
            description: 'Bronchodilators (β₂-agonists, anticholinergics), mucolytics, antibiotics',
            subtitle: 'Nebulization can be integrated into the ventilator circuit',
          ),
        ],
      ),
      PostoperativeCareInhalationCategory(
        categoryName: 'Indications for Mechanical Ventilation',
        items: [
          PostoperativeCareInhalationItem(
            title: 'Hypoxemia',
            description: 'PaO₂ <60 mmHg with FiO₂ >0.5',
          ),
          PostoperativeCareInhalationItem(
            title: 'Hypercapnia',
            description: 'PaCO₂ >50 mmHg, pH <7.25',
          ),
          PostoperativeCareInhalationItem(
            title: 'Other Indications',
            description: 'Respiratory muscle fatigue, apnea',
            subtitle: 'Hemodynamic instability, altered consciousness, aspiration risk',
          ),
        ],
      ),
      PostoperativeCareInhalationCategory(
        categoryName: 'Ventilation Modes',
        items: [
          PostoperativeCareInhalationItem(
            title: 'CMV (Controlled)',
            description: 'No patient effort',
          ),
          PostoperativeCareInhalationItem(
            title: 'Assist–Control (AC)',
            description: 'Ventilator supports every breath',
          ),
          PostoperativeCareInhalationItem(
            title: 'SIMV',
            description: 'Combination of spontaneous + mechanical breaths',
          ),
          PostoperativeCareInhalationItem(
            title: 'PSV',
            description: 'Supports spontaneous breaths',
          ),
          PostoperativeCareInhalationItem(
            title: 'PEEP',
            description: 'Prevents atelectasis, improves oxygenation',
          ),
        ],
      ),
      PostoperativeCareInhalationCategory(
        categoryName: 'Ventilation Parameters',
        items: [
          PostoperativeCareInhalationItem(
            title: 'Tidal Volume',
            description: '6–8 mL/kg (ARDS: 6 mL/kg)',
          ),
          PostoperativeCareInhalationItem(
            title: 'Respiratory Rate',
            description: '10–14/min (adjusted by PaCO₂)',
          ),
          PostoperativeCareInhalationItem(
            title: 'FiO₂',
            description: 'Lowest effective level',
          ),
          PostoperativeCareInhalationItem(
            title: 'PEEP',
            description: '5 cmH₂O (initial); ARDS 10–20 cmH₂O',
          ),
          PostoperativeCareInhalationItem(
            title: 'Pressure Limits',
            description: 'Plateau pressure <30 cmH₂O',
            subtitle: 'PIP <35–40 cmH₂O',
          ),
        ],
      ),
      PostoperativeCareInhalationCategory(
        categoryName: 'Noninvasive Ventilation (NIV)',
        items: [
          PostoperativeCareInhalationItem(
            title: 'CPAP',
            description: 'Continuous positive pressure, ↑ oxygenation',
          ),
          PostoperativeCareInhalationItem(
            title: 'BiPAP',
            description: 'Different pressures in inspiration/expiration',
          ),
          PostoperativeCareInhalationItem(
            title: 'Indications',
            description: 'COPD exacerbation, cardiogenic pulmonary edema, mild–moderate ARDS',
          ),
          PostoperativeCareInhalationItem(
            title: 'Contraindications',
            description: 'Impaired consciousness, aspiration risk, hemodynamic instability',
          ),
        ],
      ),
      PostoperativeCareInhalationCategory(
        categoryName: 'Complications',
        items: [
          PostoperativeCareInhalationItem(
            title: 'Barotrauma',
            description: 'Pneumothorax, pneumomediastinum',
          ),
          PostoperativeCareInhalationItem(
            title: 'Volutrauma',
            description: 'Excessive tidal volume',
          ),
          PostoperativeCareInhalationItem(
            title: 'Oxygen Toxicity',
            description: 'FiO₂ >0.6 prolonged → absorptive atelectasis, free radical injury',
          ),
          PostoperativeCareInhalationItem(
            title: 'Hemodynamic Effects',
            description: 'High PEEP → ↓ venous return, hypotension',
          ),
          PostoperativeCareInhalationItem(
            title: 'VAP',
            description: 'Most common infectious complication',
          ),
        ],
      ),
      PostoperativeCareInhalationCategory(
        categoryName: 'Weaning (Extubation Readiness)',
        items: [
          PostoperativeCareInhalationItem(
            title: 'SpO₂ Requirements',
            description: 'SpO₂ >90% (FiO₂ ≤0.4, PEEP ≤5)',
          ),
          PostoperativeCareInhalationItem(
            title: 'Hemodynamic Stability',
            description: 'Must be maintained',
          ),
          PostoperativeCareInhalationItem(
            title: 'PaO₂/FiO₂ Ratio',
            description: 'PaO₂/FiO₂ >150–200',
          ),
          PostoperativeCareInhalationItem(
            title: 'Spontaneous Breathing Trial',
            description: '≥30 min',
          ),
          PostoperativeCareInhalationItem(
            title: 'RSBI',
            description: 'RSBI <105 = successful weaning prediction',
          ),
        ],
      ),
      PostoperativeCareInhalationCategory(
        categoryName: 'PACU Spot Notes',
        items: [
          PostoperativeCareInhalationItem(
            title: 'SUMMARY SPOT QUESTIONS',
            description: 'Hypoxemia = most common issue → treat with O₂, positioning, CPAP',
            subtitle: 'Residual NMB & opioids → hypoventilation risk',
            additionalInfo: 'Shivering → ↑ O₂ consumption, may need ventilatory support\nMost common complication of mechanical ventilation: pneumonia\nFiO₂ >0.6 long-term → oxygen toxicity risk',
          ),
        ],
      ),
    ];
  }
}
