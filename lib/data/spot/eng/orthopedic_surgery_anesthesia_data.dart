import 'package:flutter/material.dart';

class OrthopedicSurgeryAnesthesiaItem {
  final String title;
  final String description;
  final String? subtitle;
  final String? additionalInfo;

  OrthopedicSurgeryAnesthesiaItem({
    required this.title,
    required this.description,
    this.subtitle,
    this.additionalInfo,
  });
}

class OrthopedicSurgeryAnesthesiaCategory {
  final String categoryName;
  final List<OrthopedicSurgeryAnesthesiaItem> items;

  OrthopedicSurgeryAnesthesiaCategory({
    required this.categoryName,
    required this.items,
  });
}

class OrthopedicSurgeryAnesthesiaData {
  static List<OrthopedicSurgeryAnesthesiaCategory> getOrthopedicSurgeryAnesthesiaData(BuildContext context) {
    return [
      OrthopedicSurgeryAnesthesiaCategory(
        categoryName: 'Bone Cement (PMMA)',
        items: [
          OrthopedicSurgeryAnesthesiaItem(
            title: 'Polymethylmethacrylate',
            description: 'Intramedullary pressure >500 mmHg',
          ),
          OrthopedicSurgeryAnesthesiaItem(
            title: 'Embolism Risk',
            description: 'Fat, bone marrow, cement, air → may enter venous circulation',
          ),
          OrthopedicSurgeryAnesthesiaItem(
            title: 'Systemic Absorption',
            description: 'Vasodilation + thromboplastin release',
          ),
          OrthopedicSurgeryAnesthesiaItem(
            title: 'Bone Cement Implantation Syndrome',
            description: 'Hypoxia, hypotension, arrhythmia, pulmonary HT, ↓ cardiac output',
            subtitle: 'Most common after hip arthroplasty',
          ),
          OrthopedicSurgeryAnesthesiaItem(
            title: 'Prevention',
            description: '↑ FiO₂, normovolemia, femoral shaft cleaning, distal femur venting, cementless components if possible',
          ),
          OrthopedicSurgeryAnesthesiaItem(
            title: 'Long-term Complication',
            description: 'Prosthesis loosening',
          ),
          OrthopedicSurgeryAnesthesiaItem(
            title: 'Preferred In',
            description: 'Elderly, osteoporotic, low-activity patients',
          ),
        ],
      ),
      OrthopedicSurgeryAnesthesiaCategory(
        categoryName: 'Tourniquet Use',
        items: [
          OrthopedicSurgeryAnesthesiaItem(
            title: 'Pressure',
            description: 'SBP +100 mmHg (e.g., SBP 120 → 220 mmHg)',
          ),
          OrthopedicSurgeryAnesthesiaItem(
            title: 'Duration',
            description: '>2 h → muscle dysfunction, nerve injury, rhabdomyolysis',
          ),
          OrthopedicSurgeryAnesthesiaItem(
            title: 'Esmarch Bandage',
            description: 'Bilateral → marked ↑ in CVP & ABP',
          ),
          OrthopedicSurgeryAnesthesiaItem(
            title: 'Tourniquet Pain',
            description: 'Sympathetic activation ↑ even under GA/RA',
          ),
          OrthopedicSurgeryAnesthesiaItem(
            title: 'Release Effects',
            description: 'Hypertension, pain relief, metabolites enter circulation → arrhythmias, ↑ ventilation need',
            subtitle: 'Risk: massive PE',
          ),
        ],
      ),
      OrthopedicSurgeryAnesthesiaCategory(
        categoryName: 'Fat Embolism Syndrome',
        items: [
          OrthopedicSurgeryAnesthesiaItem(
            title: 'Mortality',
            description: '10–20%',
          ),
          OrthopedicSurgeryAnesthesiaItem(
            title: 'Most Common',
            description: 'Long bone/pelvic fractures → within 72 h',
          ),
          OrthopedicSurgeryAnesthesiaItem(
            title: 'Triad',
            description: 'Dyspnea + confusion + petechiae',
          ),
          OrthopedicSurgeryAnesthesiaItem(
            title: 'Mechanism',
            description: 'Fat particles + ↑ free fatty acids → ARDS',
          ),
          OrthopedicSurgeryAnesthesiaItem(
            title: 'Petechiae Location',
            description: 'Chest, upper extremities, axilla, conjunctiva',
          ),
          OrthopedicSurgeryAnesthesiaItem(
            title: 'Labs',
            description: 'Thrombocytopenia, coagulopathy',
          ),
          OrthopedicSurgeryAnesthesiaItem(
            title: 'During Anesthesia',
            description: '↓ ETCO₂, ↑ PAP, ST changes',
          ),
          OrthopedicSurgeryAnesthesiaItem(
            title: 'Treatment',
            description: 'Early fracture stabilization, oxygen/CPAP, vasodilators',
          ),
        ],
      ),
      OrthopedicSurgeryAnesthesiaCategory(
        categoryName: 'DVT / Thromboembolism',
        items: [
          OrthopedicSurgeryAnesthesiaItem(
            title: 'Risk Factors',
            description: '>60 yrs, >30 min surgery, lower extremity fracture, tourniquet, immobilization >4 days',
          ),
          OrthopedicSurgeryAnesthesiaItem(
            title: 'Hip/Knee Surgery Risk',
            description: 'DVT 40–80%, PE 20%, fatal PE 1–3%',
          ),
          OrthopedicSurgeryAnesthesiaItem(
            title: 'Prophylaxis - Mechanical',
            description: 'All patients',
          ),
          OrthopedicSurgeryAnesthesiaItem(
            title: 'Prophylaxis - Medical',
            description: 'Low-dose anticoagulant if bleeding risk low',
            subtitle: 'High bleeding risk: mechanical only',
          ),
          OrthopedicSurgeryAnesthesiaItem(
            title: 'RA Techniques',
            description: 'Alone or with GA → ↓ complications',
            subtitle: 'RA timing critical in anticoagulated patients',
          ),
        ],
      ),
      OrthopedicSurgeryAnesthesiaCategory(
        categoryName: 'Hip Surgery',
        items: [
          OrthopedicSurgeryAnesthesiaItem(
            title: 'Hip Fracture - Pre-op',
            description: 'Elderly, comorbidities, dehydration, occult blood loss, hypoxia common',
          ),
          OrthopedicSurgeryAnesthesiaItem(
            title: 'Hip Fracture - Intra-op',
            description: 'RA (spinal/epidural) superior to GA short-term',
            subtitle: 'Iso/hypobaric agents may be used',
            additionalInfo: 'Morphine → long analgesia but risk of late respiratory depression\nWide-bore IV necessary',
          ),
          OrthopedicSurgeryAnesthesiaItem(
            title: 'Total Hip Arthroplasty (THA) - Indications',
            description: 'OA, RA, avascular necrosis',
          ),
          OrthopedicSurgeryAnesthesiaItem(
            title: 'THA - RA Considerations',
            description: 'Vertebral/TMJ involvement → difficult intubation',
            subtitle: 'Atlantoaxial instability → in-line stabilization',
            additionalInfo: 'RA therapy → GI bleeding, platelet dysfunction risk',
          ),
          OrthopedicSurgeryAnesthesiaItem(
            title: 'THA - Complications',
            description: 'BCIS, bleeding, VTE',
            subtitle: 'Invasive arterial monitoring may be required',
          ),
          OrthopedicSurgeryAnesthesiaItem(
            title: 'THA - RA Benefits',
            description: 'RA techniques reduce bleeding in revision surgery',
            subtitle: 'Bilateral cases: if instability after first, postpone second',
          ),
          OrthopedicSurgeryAnesthesiaItem(
            title: 'Hip Dislocation Reduction',
            description: 'Short GA sufficient',
            subtitle: 'Sch may be used for relaxation',
          ),
        ],
      ),
      OrthopedicSurgeryAnesthesiaCategory(
        categoryName: 'Knee Surgery',
        items: [
          OrthopedicSurgeryAnesthesiaItem(
            title: 'Arthroscopy',
            description: 'Usually young patients, but elderly possible',
            subtitle: 'Tourniquet used',
            additionalInfo: 'RA vs GA → no superiority\nOutpatient surgery → RA delays discharge',
          ),
          OrthopedicSurgeryAnesthesiaItem(
            title: 'Arthroscopy - Post-op Analgesia',
            description: 'Intraarticular LA (short), NSAIDs, gabapentin, nerve blocks; avoid high-dose opioids',
          ),
          OrthopedicSurgeryAnesthesiaItem(
            title: 'Total Knee Replacement (TKR)',
            description: 'Comorbidities similar to THA',
            subtitle: 'Tourniquet reduces bleeding',
            additionalInfo: 'BCIS less common',
          ),
          OrthopedicSurgeryAnesthesiaItem(
            title: 'TKR - Post-op Analgesia',
            description: 'Epidural best; femoral perineural catheter → fewer side effects, faster discharge; fall-prevention protocol required',
          ),
        ],
      ),
      OrthopedicSurgeryAnesthesiaCategory(
        categoryName: 'Upper Extremity Surgery',
        items: [
          OrthopedicSurgeryAnesthesiaItem(
            title: 'Shoulder Surgery - Beach Chair Position',
            description: '↓ Cerebral perfusion',
            subtitle: 'Measure arterial pressure at external meatus level',
          ),
          OrthopedicSurgeryAnesthesiaItem(
            title: 'Shoulder Surgery - Interscalene Block',
            description: 'Adequate anesthesia',
            subtitle: 'Interscalene catheter → postop analgesia',
          ),
          OrthopedicSurgeryAnesthesiaItem(
            title: 'Shoulder Surgery - Intraarticular Bupivacaine',
            description: 'Chondrolysis risk',
          ),
          OrthopedicSurgeryAnesthesiaItem(
            title: 'Distal Upper Extremity',
            description: 'IVRA (Bier block) applicable',
            subtitle: 'Alternative: brachial plexus block',
            additionalInfo: 'Tourniquet time must be carefully managed',
          ),
        ],
      ),
      OrthopedicSurgeryAnesthesiaCategory(
        categoryName: 'Key Exam Spots',
        items: [
          OrthopedicSurgeryAnesthesiaItem(
            title: 'SUMMARY SPOT QUESTIONS',
            description: 'PMMA → intramedullary pressure >500 mmHg',
            subtitle: 'BCIS: hypoxia, hypotension, arrhythmia, pulmonary HT',
            additionalInfo: 'Tourniquet pressure: SBP +100 mmHg\nFat embolism triad: dyspnea + confusion + petechiae\nHip/knee surgery: DVT 40–80%, PE 20%\nBeach chair position → ↓ cerebral perfusion',
          ),
        ],
      ),
    ];
  }
}
