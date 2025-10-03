import 'package:flutter/material.dart';

class RespiratoryDiseaseAnesthesiaItem {
  final String title;
  final String description;
  final String? subtitle;
  final String? additionalInfo;

  RespiratoryDiseaseAnesthesiaItem({
    required this.title,
    required this.description,
    this.subtitle,
    this.additionalInfo,
  });
}

class RespiratoryDiseaseAnesthesiaCategory {
  final String categoryName;
  final List<RespiratoryDiseaseAnesthesiaItem> items;

  RespiratoryDiseaseAnesthesiaCategory({
    required this.categoryName,
    required this.items,
  });
}

class RespiratoryDiseaseAnesthesiaData {
  static List<RespiratoryDiseaseAnesthesiaCategory> getRespiratoryDiseaseAnesthesiaData(BuildContext context) {
    return [
      RespiratoryDiseaseAnesthesiaCategory(
        categoryName: 'Pulmonary Risk Factors',
        items: [
          RespiratoryDiseaseAnesthesiaItem(
            title: 'Patient-related',
            description: 'Smoking 🚬, advanced age, obesity',
          ),
          RespiratoryDiseaseAnesthesiaItem(
            title: 'High-risk Surgeries',
            description: 'Thoracic + upper abdominal (marked ↓ FRC)',
          ),
          RespiratoryDiseaseAnesthesiaItem(
            title: 'Upper Abdominal Surgery',
            description: 'FRC ↓ greatest on postoperative day 1 – effect lasts 7–10 days',
          ),
        ],
      ),
      RespiratoryDiseaseAnesthesiaCategory(
        categoryName: 'Obstructive Lung Diseases',
        items: [
          RespiratoryDiseaseAnesthesiaItem(
            title: 'General',
            description: 'FEF25–75 <70%: early abnormality (normal >1.6 L/s in women, >2 L/s in men)',
            subtitle: 'Advanced: ↓ FEV1 + FEV1/FVC <70%',
            additionalInfo: 'Air trapping → ↑ RV + ↑ TLC',
          ),
          RespiratoryDiseaseAnesthesiaItem(
            title: 'Asthma - Pathophysiology',
            description: '↑ Parasympathetic tone, IgE–mast cell activation → histamine, bradykinin, LT-C/D/E, PGD2, PAF → bronchoconstriction',
            subtitle: 'Morning: bronchial tone ↑ (diurnal rhythm)',
            additionalInfo: 'Tachypnea → typical hypocapnia; PaCO₂ normal/↑ = respiratory failure ⚠️',
          ),
          RespiratoryDiseaseAnesthesiaItem(
            title: 'Asthma - Treatment',
            description: 'β2 agonists: most effective bronchodilators',
            subtitle: 'Methylxanthines: PDE inhibition → ↑ cAMP, diaphragmatic stimulation',
            additionalInfo: 'Glucocorticoids: anti-inflammatory (inhaled: beclomethasone, budesonide, fluticasone)\nAnticholinergics: relieve reflex bronchospasm',
          ),
          RespiratoryDiseaseAnesthesiaItem(
            title: 'Asthma - Anesthetic Approach',
            description: 'Critical: airway instrumentation 🚨',
            subtitle: 'Prefer mask ventilation/regional anesthesia',
            additionalInfo: 'Induction: sevoflurane is a good option\nLow-dose lidocaine → anti-irritant; inadequate dose → may cause bronchospasm\nExpiratory time should be prolonged → ↓ air trapping\nInhaled + higher volatile concentration = intraoperative bronchospasm treatment',
          ),
          RespiratoryDiseaseAnesthesiaItem(
            title: 'COPD - Chronic Bronchitis',
            description: '≥2 years, ≥3 months productive cough each year',
            subtitle: '"Blue bloater": hypercapnia + hypoxemia',
          ),
          RespiratoryDiseaseAnesthesiaItem(
            title: 'COPD - Emphysema',
            description: 'Distal airway/alveolar destruction (smoking: centrilobular; α1-antitrypsin deficiency: panlobular)',
            subtitle: 'V/Q mismatch + ↓ diffusion',
            additionalInfo: 'Pulmonary HT: mild, rarely >40 mmHg\n"Pink puffer" phenotype',
          ),
          RespiratoryDiseaseAnesthesiaItem(
            title: 'COPD - Treatment',
            description: 'Smoking cessation → slows disease progression',
            subtitle: 'Bronchodilators for symptom relief',
            additionalInfo: 'Hypoxemia (<55 mmHg): O₂ (1–2 L/min)\nCor pulmonale: diuretics',
          ),
          RespiratoryDiseaseAnesthesiaItem(
            title: 'COPD - Anesthetic Approach',
            description: 'FEV1 <50% → exertional dyspnea; <25% → dyspnea at minimal activity',
            subtitle: 'Preoxygenation is essential before induction',
            additionalInfo: 'Measures to reduce air trapping:\n• Prolong expiration\n• Permissive hypercapnia (PaCO₂ ~70 mmHg tolerated)\n• Low external PEEP\n• Avoid N₂O (bullae, PHT)\nPost-op ventilation risk: FEV1 <50% + thoracic/upper abdominal surgery',
          ),
        ],
      ),
      RespiratoryDiseaseAnesthesiaCategory(
        categoryName: 'Restrictive Lung Diseases',
        items: [
          RespiratoryDiseaseAnesthesiaItem(
            title: 'General',
            description: '↓ FEV1 & FVC, normal/↑ FEV1/FVC',
            subtitle: '↓ Compliance → rapid, shallow breathing',
            additionalInfo: 'Gas exchange usually normal until late stage',
          ),
        ],
      ),
      RespiratoryDiseaseAnesthesiaCategory(
        categoryName: 'Acute Intrinsic Lung Diseases',
        items: [
          RespiratoryDiseaseAnesthesiaItem(
            title: 'ARDS Ventilation Strategy',
            description: 'TV: 4–6 mL/kg',
            subtitle: 'f: 14–18/min',
            additionalInfo: 'Pplat: ≤30 cmH₂O\nPost-op ICU support required',
          ),
        ],
      ),
      RespiratoryDiseaseAnesthesiaCategory(
        categoryName: 'Chronic Intrinsic (Interstitial)',
        items: [
          RespiratoryDiseaseAnesthesiaItem(
            title: 'Severe Dysfunction',
            description: 'VC <15 mL/kg (normal ~70 mL/kg) → severe dysfunction',
            subtitle: 'Induction → high hypoxemia risk (↓ FRC)',
            additionalInfo: 'History of bleomycin: keep FiO₂ as low as possible (target SpO₂ 88–92%)\nIf necessary: I:E = 1:1 or inverse ratio ventilation',
          ),
        ],
      ),
      RespiratoryDiseaseAnesthesiaCategory(
        categoryName: 'Pulmonary Embolism',
        items: [
          RespiratoryDiseaseAnesthesiaItem(
            title: 'Pathophysiology',
            description: 'PaCO₂ usually ↑, but hypoxemia predominates',
            subtitle: 'V/Q mismatch → reflex vasoconstriction + bronchoconstriction',
            additionalInfo: '24–48 h → surfactant loss, atelectasis\nHealthy: 50% circulation obstruction → PHT; in diseased patients, less may suffice',
          ),
          RespiratoryDiseaseAnesthesiaItem(
            title: 'Diagnosis',
            description: 'Symptoms: sudden dyspnea, tachypnea, chest pain, hemoptysis',
            subtitle: 'ABG: respiratory alkalosis + hypoxemia',
            additionalInfo: 'ECG: right axis deviation, RBBB, peaked T waves\nCT angiography practical; gold standard = pulmonary angiography',
          ),
          RespiratoryDiseaseAnesthesiaItem(
            title: 'Treatment/Prevention',
            description: 'DVT prophylaxis: elastic stockings, pneumatic compression, mobilization',
            subtitle: 'Heparin → aPTT 1.5–2.5 × normal',
            additionalInfo: 'LMWH: start pre-op 12 h, post-op 12–24 h\nBridge: heparin + warfarin until therapeutic INR',
          ),
          RespiratoryDiseaseAnesthesiaItem(
            title: 'Anesthesia',
            description: 'Surgery 1 year after acute attack → low risk',
            subtitle: 'Intraop embolism signs: sudden hypotension + hypoxemia + bronchospasm + ↓ EtCO₂ 🚨',
          ),
        ],
      ),
      RespiratoryDiseaseAnesthesiaCategory(
        categoryName: 'Key Numbers',
        items: [
          RespiratoryDiseaseAnesthesiaItem(
            title: 'SUMMARY SPOT QUESTIONS',
            description: 'FRC ↓ post-upper abdominal surgery → maximal on day 1, lasts 7–10 days',
            subtitle: 'Normal FEF25–75: >1.6 L/s women, >2 L/s men',
            additionalInfo: 'COPD → PaCO₂ up to 70 mmHg tolerated\nPulmonary HT (emphysema) usually ≤40 mmHg\nRestrictive VC <15 mL/kg = severe dysfunction\nARDS: TV 4–6 mL/kg, Pplat ≤30 cmH₂O\nPE → Heparin aPTT 1.5–2.5× normal',
          ),
        ],
      ),
    ];
  }
}
