import 'package:flutter/material.dart';

class ThoracicSurgeryAnesthesiaItem {
  final String title;
  final String description;
  final String? subtitle;
  final String? additionalInfo;

  ThoracicSurgeryAnesthesiaItem({
    required this.title,
    required this.description,
    this.subtitle,
    this.additionalInfo,
  });
}

class ThoracicSurgeryAnesthesiaCategory {
  final String categoryName;
  final List<ThoracicSurgeryAnesthesiaItem> items;

  ThoracicSurgeryAnesthesiaCategory({
    required this.categoryName,
    required this.items,
  });
}

class ThoracicSurgeryAnesthesiaData {
  static List<ThoracicSurgeryAnesthesiaCategory> getThoracicSurgeryAnesthesiaData(BuildContext context) {
    return [
      ThoracicSurgeryAnesthesiaCategory(
        categoryName: 'Lateral Decubitus Position',
        items: [
          ThoracicSurgeryAnesthesiaItem(
            title: 'Awake Spontaneous Breathing',
            description: 'V/Q preserved → dependent lung better ventilated & perfused',
          ),
          ThoracicSurgeryAnesthesiaItem(
            title: 'General Anesthesia + Muscle Relaxant + PPV',
            description: 'Ventilation shifts to nondependent lung, perfusion remains dependent → V/Q mismatch → hypoxemia risk',
            subtitle: 'Factors worsening hypoxemia: pillow position, thoracotomy on upper side, anesthetic depth',
          ),
        ],
      ),
      ThoracicSurgeryAnesthesiaCategory(
        categoryName: 'Open Pneumothorax',
        items: [
          ThoracicSurgeryAnesthesiaItem(
            title: 'Paradoxical Breathing',
            description: 'Inspiration → air into open lung, closed lung collapses',
            subtitle: 'Expiration → opposite',
            additionalInfo: 'Mediastinal shift: decreases with inspiration, increases with expiration',
          ),
        ],
      ),
      ThoracicSurgeryAnesthesiaCategory(
        categoryName: 'One-Lung Ventilation (OLV)',
        items: [
          ThoracicSurgeryAnesthesiaItem(
            title: 'Intrapulmonary Shunt',
            description: '20–30%',
          ),
          ThoracicSurgeryAnesthesiaItem(
            title: 'HPV Inhibition Factors',
            description: 'Very low/high PAP, hypocapnia, very low/high PaO₂, vasodilators, pulmonary infection, high-dose inhalation agents',
          ),
          ThoracicSurgeryAnesthesiaItem(
            title: 'Factors Reducing Dependent Lung Perfusion',
            description: 'High PEEP/pressure, inadequate expiration → auto-PEEP, vasoconstrictors',
          ),
          ThoracicSurgeryAnesthesiaItem(
            title: 'CO₂ Elimination',
            description: 'Usually unaffected',
          ),
        ],
      ),
      ThoracicSurgeryAnesthesiaCategory(
        categoryName: 'Double-Lumen Tube (DLT)',
        items: [
          ThoracicSurgeryAnesthesiaItem(
            title: 'Sizes',
            description: '35F (female), 37/39/41F (male)',
          ),
          ThoracicSurgeryAnesthesiaItem(
            title: 'Trachea Length',
            description: '11–13 cm',
          ),
          ThoracicSurgeryAnesthesiaItem(
            title: 'Placement',
            description: 'Cricoid (C6) → carina (T5)',
          ),
          ThoracicSurgeryAnesthesiaItem(
            title: 'Right DLT',
            description: 'Requires extra lumen for upper lobe ventilation',
          ),
          ThoracicSurgeryAnesthesiaItem(
            title: 'Left DLT Contraindications',
            description: 'Left bronchial compression (aneurysm, mass), left pneumonectomy, left lung transplantation, left bronchial resection',
          ),
          ThoracicSurgeryAnesthesiaItem(
            title: 'Complications',
            description: 'Hypoxemia (misplacement, obstruction, venous admixture), traumatic laryngitis/bronchial rupture, surgical suturing to tube',
          ),
        ],
      ),
      ThoracicSurgeryAnesthesiaCategory(
        categoryName: 'Bronchial Blocker',
        items: [
          ThoracicSurgeryAnesthesiaItem(
            title: 'Advantage',
            description: 'No need to change DLT if postop intubation required',
          ),
          ThoracicSurgeryAnesthesiaItem(
            title: 'Disadvantage',
            description: 'Slower lung collapse',
          ),
        ],
      ),
      ThoracicSurgeryAnesthesiaCategory(
        categoryName: 'Lung Resection – Preop Evaluation',
        items: [
          ThoracicSurgeryAnesthesiaItem(
            title: 'Benign',
            description: '90% hamartoma',
          ),
          ThoracicSurgeryAnesthesiaItem(
            title: 'Malignant',
            description: 'Central → squamous, small cell; peripheral → adeno, large cell',
          ),
          ThoracicSurgeryAnesthesiaItem(
            title: 'Postop FEV₁',
            description: 'Preop FEV₁ × % remaining lung tissue',
            subtitle: 'Postop FEV₁ <40% → ↑ morbidity/mortality; <30% → difficult weaning',
          ),
          ThoracicSurgeryAnesthesiaItem(
            title: 'DLCO',
            description: '<40% → ↑ complication risk',
          ),
          ThoracicSurgeryAnesthesiaItem(
            title: 'Gas Exchange',
            description: 'Adequate: PaO₂ >60, PaCO₂ <45',
          ),
          ThoracicSurgeryAnesthesiaItem(
            title: 'VO₂max',
            description: '<20 mL/kg/min → ↑ risk',
          ),
        ],
      ),
      ThoracicSurgeryAnesthesiaCategory(
        categoryName: 'Intraoperative Ventilation (during OLV)',
        items: [
          ThoracicSurgeryAnesthesiaItem(
            title: 'TV',
            description: '6–8 mL/kg',
          ),
          ThoracicSurgeryAnesthesiaItem(
            title: 'PEEP',
            description: '5–10 cmH₂O',
          ),
          ThoracicSurgeryAnesthesiaItem(
            title: 'FiO₂',
            description: '50–80%',
          ),
          ThoracicSurgeryAnesthesiaItem(
            title: 'Pressure Limits',
            description: 'Pplat <25 cmH₂O, Ppeak <35 cmH₂O',
          ),
          ThoracicSurgeryAnesthesiaItem(
            title: 'Recruitment Maneuver',
            description: '30 cmH₂O',
          ),
          ThoracicSurgeryAnesthesiaItem(
            title: 'Fluids',
            description: 'Restricted → prevent dependent lung syndrome',
          ),
          ThoracicSurgeryAnesthesiaItem(
            title: 'Stump Leak Test',
            description: '30 cmH₂O underwater',
          ),
        ],
      ),
      ThoracicSurgeryAnesthesiaCategory(
        categoryName: 'Hypoxia Management (during OLV)',
        items: [
          ThoracicSurgeryAnesthesiaItem(
            title: 'Check DLT Position',
            description: 'First step in hypoxia management',
          ),
          ThoracicSurgeryAnesthesiaItem(
            title: 'FiO₂',
            description: '= 1.0',
          ),
          ThoracicSurgeryAnesthesiaItem(
            title: 'Recruitment',
            description: 'Of dependent lung',
          ),
          ThoracicSurgeryAnesthesiaItem(
            title: 'Optimize PEEP',
            description: 'Adjust PEEP levels',
          ),
          ThoracicSurgeryAnesthesiaItem(
            title: 'Increase CO & O₂ Delivery',
            description: 'Improve cardiac output and oxygen delivery',
          ),
          ThoracicSurgeryAnesthesiaItem(
            title: 'If Persistent',
            description: 'CPAP to operated lung or return to bilateral ventilation ± pulmonary artery clamp',
          ),
        ],
      ),
      ThoracicSurgeryAnesthesiaCategory(
        categoryName: 'Postop Complications',
        items: [
          ThoracicSurgeryAnesthesiaItem(
            title: 'Common',
            description: 'Hypoxemia, resp. acidosis, supraventricular tachycardia',
          ),
          ThoracicSurgeryAnesthesiaItem(
            title: 'Analgesia',
            description: 'Thoracic epidural > opioids',
          ),
          ThoracicSurgeryAnesthesiaItem(
            title: 'Early Extubation',
            description: 'Barotrauma/pneumothorax risk',
          ),
          ThoracicSurgeryAnesthesiaItem(
            title: 'Specific',
            description: 'Atelectasis (plug/secretions), air leak, late pneumothorax, lung torsion, mediastinal shift, nerve injury (phrenic, vagus, recurrent laryngeal), paraplegia',
          ),
        ],
      ),
      ThoracicSurgeryAnesthesiaCategory(
        categoryName: 'Special Situations',
        items: [
          ThoracicSurgeryAnesthesiaItem(
            title: 'Massive Hemoptysis',
            description: '>500–600 mL/24h → mortality >20%',
          ),
          ThoracicSurgeryAnesthesiaItem(
            title: 'Lung Cyst/Bulla',
            description: 'N₂O contraindicated; prefer spontaneous intubation',
          ),
          ThoracicSurgeryAnesthesiaItem(
            title: 'Lung Abscess',
            description: 'Serial intubation + DLT to protect healthy lung',
          ),
          ThoracicSurgeryAnesthesiaItem(
            title: 'Bronchopleural Fistula',
            description: 'PPV contraindicated (major leak risk)',
          ),
        ],
      ),
      ThoracicSurgeryAnesthesiaCategory(
        categoryName: 'Tracheal Resection',
        items: [
          ThoracicSurgeryAnesthesiaItem(
            title: 'Premedication',
            description: 'No premedication',
          ),
          ThoracicSurgeryAnesthesiaItem(
            title: 'Breathing',
            description: 'Maintain spontaneous breathing (avoid NMB)',
          ),
          ThoracicSurgeryAnesthesiaItem(
            title: 'Induction',
            description: 'Lidocaine 1–2 mg/kg to deepen anesthesia',
          ),
        ],
      ),
      ThoracicSurgeryAnesthesiaCategory(
        categoryName: 'Diagnostic Procedures',
        items: [
          ThoracicSurgeryAnesthesiaItem(
            title: 'Bronchoscopy',
            description: 'Apneic O₂, side-stream ventilation, or jet ventilation',
          ),
          ThoracicSurgeryAnesthesiaItem(
            title: 'Mediastinoscopy',
            description: 'BP measured from left arm; risk of innominate artery compression',
          ),
          ThoracicSurgeryAnesthesiaItem(
            title: 'BAL',
            description: 'DLT + 10–20 L warm saline',
          ),
        ],
      ),
      ThoracicSurgeryAnesthesiaCategory(
        categoryName: 'Lung Transplantation',
        items: [
          ThoracicSurgeryAnesthesiaItem(
            title: 'Single-lung (IPF)',
            description: 'Often no CPB needed',
          ),
          ThoracicSurgeryAnesthesiaItem(
            title: 'Double-lung',
            description: 'Usually with CPB',
          ),
          ThoracicSurgeryAnesthesiaItem(
            title: 'Hypotension',
            description: 'Treat with vasopressors (not fluids)',
          ),
          ThoracicSurgeryAnesthesiaItem(
            title: 'HPV',
            description: 'Preserved, but cough reflex lost',
          ),
          ThoracicSurgeryAnesthesiaItem(
            title: 'Postop',
            description: 'Early extubation, fluid restriction',
          ),
        ],
      ),
      ThoracicSurgeryAnesthesiaCategory(
        categoryName: 'Esophageal Surgery',
        items: [
          ThoracicSurgeryAnesthesiaItem(
            title: 'Main Risk',
            description: 'Aspiration',
          ),
          ThoracicSurgeryAnesthesiaItem(
            title: 'Induction',
            description: 'Rapid sequence mandatory',
          ),
          ThoracicSurgeryAnesthesiaItem(
            title: 'Tube',
            description: 'DLT if thoracotomy',
          ),
          ThoracicSurgeryAnesthesiaItem(
            title: 'Complications',
            description: 'Impaired cardiac filling, vagal stimulation',
          ),
          ThoracicSurgeryAnesthesiaItem(
            title: 'Postop',
            description: 'Frequent need for mechanical ventilation',
          ),
        ],
      ),
      ThoracicSurgeryAnesthesiaCategory(
        categoryName: 'Key Exam Spots',
        items: [
          ThoracicSurgeryAnesthesiaItem(
            title: 'SUMMARY SPOT QUESTIONS',
            description: 'OLV shunt: 20–30%',
            subtitle: 'DLT sizes: 35F (female), 37/39/41F (male)',
            additionalInfo: 'Postop FEV₁ <40% → ↑ morbidity/mortality\nOLV: TV 6–8 mL/kg, PEEP 5–10 cmH₂O\nRecruitment: 30 cmH₂O\nStump leak test: 30 cmH₂O underwater',
          ),
        ],
      ),
    ];
  }
}
