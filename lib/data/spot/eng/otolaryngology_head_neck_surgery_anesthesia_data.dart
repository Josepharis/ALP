import 'package:flutter/material.dart';

class OtolaryngologyHeadNeckSurgeryAnesthesiaItem {
  final String title;
  final String description;
  final String? subtitle;
  final String? additionalInfo;

  OtolaryngologyHeadNeckSurgeryAnesthesiaItem({
    required this.title,
    required this.description,
    this.subtitle,
    this.additionalInfo,
  });
}

class OtolaryngologyHeadNeckSurgeryAnesthesiaCategory {
  final String categoryName;
  final List<OtolaryngologyHeadNeckSurgeryAnesthesiaItem> items;

  OtolaryngologyHeadNeckSurgeryAnesthesiaCategory({
    required this.categoryName,
    required this.items,
  });
}

class OtolaryngologyHeadNeckSurgeryAnesthesiaData {
  static List<OtolaryngologyHeadNeckSurgeryAnesthesiaCategory> getOtolaryngologyHeadNeckSurgeryAnesthesiaData(BuildContext context) {
    return [
      OtolaryngologyHeadNeckSurgeryAnesthesiaCategory(
        categoryName: 'Endoscopy',
        items: [
          OtolaryngologyHeadNeckSurgeryAnesthesiaItem(
            title: 'Pre-op - Airway Assessment',
            description: 'Airway pathology → imaging + indirect laryngoscopy',
            subtitle: 'Difficult airway → prepare appropriate equipment',
          ),
          OtolaryngologyHeadNeckSurgeryAnesthesiaItem(
            title: 'Pre-op - Premedication',
            description: 'Sedative premedication avoided',
            subtitle: 'Glycopyrrolate (1 h before) → ↓ secretions',
          ),
          OtolaryngologyHeadNeckSurgeryAnesthesiaItem(
            title: 'Muscle Relaxation',
            description: 'Sch + intermediate NMB may be used',
            subtitle: 'Deep block delays extubation',
          ),
          OtolaryngologyHeadNeckSurgeryAnesthesiaItem(
            title: 'Ventilation Techniques',
            description: 'Small ETT (may obstruct surgical view)',
            subtitle: 'Tracheal cannula (short use, inadequate long term)',
            additionalInfo: 'Intermittent apnea (2–3 min surgery, then ventilation)\nJet ventilation: 30–50 psi, 1–2 s inspiration, 4–6 s passive expiration → risk of barotrauma/air trapping\nModified jet: small cannula 80–300/min',
          ),
          OtolaryngologyHeadNeckSurgeryAnesthesiaItem(
            title: 'Hemodynamics',
            description: 'Laryngoscopy → HTN/hypotension episodes',
            subtitle: 'Controlled with short-acting drugs',
            additionalInfo: 'Nerve blocks: glossopharyngeal + superior laryngeal blocks may be used',
          ),
          OtolaryngologyHeadNeckSurgeryAnesthesiaItem(
            title: 'Laser Precautions',
            description: 'CO₂ laser: long wavelength, absorbed in water, low penetration',
            subtitle: 'YAG laser: short wavelength, higher penetration',
            additionalInfo: 'FiO₂ minimal, no N₂O (supports combustion)\nTube cuff filled with saline, saline-soaked packs in airway\nSaline syringe (60 mL) must be ready\nMost serious complication: airway fire',
          ),
        ],
      ),
      OtolaryngologyHeadNeckSurgeryAnesthesiaCategory(
        categoryName: 'Nasal & Sinus Surgery',
        items: [
          OtolaryngologyHeadNeckSurgeryAnesthesiaItem(
            title: 'Pre-op Considerations',
            description: 'Nasal obstruction → difficult mask ventilation',
            subtitle: 'Nasal polyps → NSAIDs contraindicated (allergic reactions)',
            additionalInfo: 'Ask about bleeding history/anticoagulants',
          ),
          OtolaryngologyHeadNeckSurgeryAnesthesiaItem(
            title: 'Intra-op Management',
            description: 'Topical + submucosal LA',
            subtitle: 'After GA induction, airway secured',
            additionalInfo: 'RAE/spiral tubes preferred\nEndoscope close to eye → watch ocular movement\nEyes protected (corneal abrasion risk)\nNMB required (to prevent neuro/ophthalmic complications)',
          ),
          OtolaryngologyHeadNeckSurgeryAnesthesiaItem(
            title: 'Extubation',
            description: 'No coughing/straining, awake enough to prevent aspiration',
          ),
        ],
      ),
      OtolaryngologyHeadNeckSurgeryAnesthesiaCategory(
        categoryName: 'Head & Neck Cancer Surgery',
        items: [
          OtolaryngologyHeadNeckSurgeryAnesthesiaItem(
            title: 'Pre-op Considerations',
            description: 'COPD, CAD, poor lifestyle common',
            subtitle: 'Anticipate difficult airway → fiberoptic intubation or inhalational induction',
          ),
          OtolaryngologyHeadNeckSurgeryAnesthesiaItem(
            title: 'Intra-op Monitoring',
            description: 'A-line + CVP, prevent hypothermia',
            subtitle: 'Nerve monitoring tubes may be required',
          ),
          OtolaryngologyHeadNeckSurgeryAnesthesiaItem(
            title: 'During Tracheostomy',
            description: 'Deflate cuff, FiO₂ <30%',
          ),
          OtolaryngologyHeadNeckSurgeryAnesthesiaItem(
            title: 'Maintenance',
            description: 'No NMB (for nerve monitoring)',
            subtitle: 'In flap surgery → avoid vasopressors',
            additionalInfo: 'Transfusion threshold: Hct 27–30%',
          ),
          OtolaryngologyHeadNeckSurgeryAnesthesiaItem(
            title: 'CV Instability',
            description: 'Carotid sinus/stellate ganglion manipulation → fluctuations',
            subtitle: 'Bilateral neck dissection → HTN + loss of hypoxic drive',
          ),
        ],
      ),
      OtolaryngologyHeadNeckSurgeryAnesthesiaCategory(
        categoryName: 'Maxillofacial Reconstruction / Orthognathic Surgery',
        items: [
          OtolaryngologyHeadNeckSurgeryAnesthesiaItem(
            title: 'Pre-op - Airway',
            description: 'Severe airway issues → prepare difficult airway equipment',
            subtitle: 'Nasal intubation required; risky in Le Fort II–III fractures',
          ),
          OtolaryngologyHeadNeckSurgeryAnesthesiaItem(
            title: 'Intra-op Management',
            description: 'Controlled hypotension + packing → ↓ bleeding',
            subtitle: 'Wide-bore IV, arterial line monitoring',
            additionalInfo: 'Monitor airway pressure + ETCO₂',
          ),
          OtolaryngologyHeadNeckSurgeryAnesthesiaItem(
            title: 'Before Extubation',
            description: 'Remove packs + suction',
          ),
          OtolaryngologyHeadNeckSurgeryAnesthesiaItem(
            title: 'Post-op',
            description: 'Be prepared for airway complications',
          ),
        ],
      ),
      OtolaryngologyHeadNeckSurgeryAnesthesiaCategory(
        categoryName: 'Ear Surgery',
        items: [
          OtolaryngologyHeadNeckSurgeryAnesthesiaItem(
            title: 'N₂O Avoidance',
            description: 'N₂O avoided (↑ middle ear pressure)',
            subtitle: 'Stop N₂O 15–30 min before tympanoplasty graft placement',
          ),
          OtolaryngologyHeadNeckSurgeryAnesthesiaItem(
            title: 'Hemostasis',
            description: 'Head elevation + epinephrine solution',
            subtitle: 'Controlled hypotension may be used',
          ),
          OtolaryngologyHeadNeckSurgeryAnesthesiaItem(
            title: 'Facial Nerve Monitoring',
            description: 'No NMBs',
          ),
          OtolaryngologyHeadNeckSurgeryAnesthesiaItem(
            title: 'Post-op Complications',
            description: 'Vertigo',
            subtitle: 'PONV → reduced with propofol induction; ondansetron + 5-HT3 antagonist helpful',
          ),
        ],
      ),
      OtolaryngologyHeadNeckSurgeryAnesthesiaCategory(
        categoryName: 'Oral Surgery',
        items: [
          OtolaryngologyHeadNeckSurgeryAnesthesiaItem(
            title: 'Local Anesthesia',
            description: 'Usually LA block sufficient',
          ),
          OtolaryngologyHeadNeckSurgeryAnesthesiaItem(
            title: 'Sedation',
            description: 'Low-dose opioid + midazolam',
          ),
          OtolaryngologyHeadNeckSurgeryAnesthesiaItem(
            title: 'Epinephrine-containing Solutions',
            description: 'Avoid toxic doses',
            subtitle: '2% lidocaine 1/100,000 → max 12 mL',
            additionalInfo: '0.5% bupivacaine 1/200,000 → max 8 mL',
          ),
        ],
      ),
      OtolaryngologyHeadNeckSurgeryAnesthesiaCategory(
        categoryName: 'Key Exam Spots',
        items: [
          OtolaryngologyHeadNeckSurgeryAnesthesiaItem(
            title: 'SUMMARY SPOT QUESTIONS',
            description: 'Jet ventilation: 30–50 psi, 1–2 s inspiration, 4–6 s passive expiration',
            subtitle: 'Most serious laser complication: airway fire',
            additionalInfo: 'N₂O avoided in ear surgery (↑ middle ear pressure)\nStop N₂O 15–30 min before tympanoplasty\nFacial nerve monitoring: no NMBs\nTransfusion threshold in head/neck cancer: Hct 27–30%',
          ),
        ],
      ),
    ];
  }
}
