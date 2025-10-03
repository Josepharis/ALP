import 'package:flutter/material.dart';

class GenitourinarySurgeryAnesthesiaItem {
  final String title;
  final String description;
  final String? subtitle;
  final String? additionalInfo;

  GenitourinarySurgeryAnesthesiaItem({
    required this.title,
    required this.description,
    this.subtitle,
    this.additionalInfo,
  });
}

class GenitourinarySurgeryAnesthesiaCategory {
  final String categoryName;
  final List<GenitourinarySurgeryAnesthesiaItem> items;

  GenitourinarySurgeryAnesthesiaCategory({
    required this.categoryName,
    required this.items,
  });
}

class GenitourinarySurgeryAnesthesiaData {
  static List<GenitourinarySurgeryAnesthesiaCategory> getGenitourinarySurgeryAnesthesiaData(BuildContext context) {
    return [
      GenitourinarySurgeryAnesthesiaCategory(
        categoryName: 'Cystoscopy',
        items: [
          GenitourinarySurgeryAnesthesiaItem(
            title: 'Pre-op',
            description: 'Children → GA',
            subtitle: 'Women (diagnostic) → topical lidocaine sufficient',
            additionalInfo: 'Men and interventional procedures → GA or RA',
          ),
          GenitourinarySurgeryAnesthesiaItem(
            title: 'Position - Lithotomy',
            description: 'Most common complication: lumbosacral plexus injury',
            subtitle: 'Common peroneal nerve (loss of dorsiflexion), saphenous nerve (medial thigh sensation), obturator/femoral/sciatic nerve injury',
            additionalInfo: 'Prolonged lithotomy → rhabdomyolysis, compartment syndrome\n↓ FRC, worsens with Trendelenburg',
          ),
          GenitourinarySurgeryAnesthesiaItem(
            title: 'Anesthesia',
            description: 'Anxious patient → GA (LMA may be used)',
            subtitle: 'Spinal block onset <5 min; epidural 15–20 min',
            additionalInfo: 'T10 level block sufficient',
          ),
        ],
      ),
      GenitourinarySurgeryAnesthesiaCategory(
        categoryName: 'TURP (Transurethral Resection of the Prostate)',
        items: [
          GenitourinarySurgeryAnesthesiaItem(
            title: 'Pre-op',
            description: 'Elderly, comorbid patients → careful evaluation',
            subtitle: 'Complications: bleeding, infection, perforation, TURP syndrome, DIC, sepsis',
          ),
          GenitourinarySurgeryAnesthesiaItem(
            title: 'TURP Syndrome',
            description: '~2 L fluid absorption',
            subtitle: 'Irrigation fluid: nonelectrolyte (glycine, sorbitol, mannitol) → avg 20 mL/min absorption',
            additionalInfo: 'Serum Na <120 mEq/L → symptomatic\nGlycine → hyperglycinemia, ↑ ammonia\nSorbitol/dextrose → hyperglycemia (risk in DM)\nMannitol → volume overload',
          ),
          GenitourinarySurgeryAnesthesiaItem(
            title: 'TURP Syndrome - Clinical',
            description: 'Hyponatremia, confusion, seizures',
            subtitle: 'Treatment: hypertonic Na (≤100 mL/hr), symptomatic → low-dose midazolam',
          ),
          GenitourinarySurgeryAnesthesiaItem(
            title: 'Other Complications',
            description: 'Hypothermia (fluids must be warmed)',
            subtitle: 'Bladder perforation (<1%, vagal bradycardia + hemodynamic changes)',
            additionalInfo: 'Coagulopathy (tissue thromboplastin → subclinical DIC, dilutional thrombocytopenia)\nSepsis (antibiotic prophylaxis essential)',
          ),
          GenitourinarySurgeryAnesthesiaItem(
            title: 'Anesthesia',
            description: 'T10 block ideal',
            subtitle: 'RA relatively contraindicated if metastasis suspected',
          ),
          GenitourinarySurgeryAnesthesiaItem(
            title: 'Monitoring',
            description: 'Consciousness (early TURP syndrome diagnosis)',
            subtitle: 'ECG (ischemia 18%)',
            additionalInfo: 'Temperature\nBlood loss: 3–5 mL/min\n90 min or >45 g tissue resected → transfusion indicated',
          ),
        ],
      ),
      GenitourinarySurgeryAnesthesiaCategory(
        categoryName: 'Lithotripsy',
        items: [
          GenitourinarySurgeryAnesthesiaItem(
            title: 'ESWL and Others',
            description: 'Pacemaker/ICD → arrhythmia risk → R-wave synchronization',
            subtitle: 'Early: vasodilation + hypotension; later: ↑ SVR, ↓ FRC 30–60%',
          ),
          GenitourinarySurgeryAnesthesiaItem(
            title: 'Anesthesia',
            description: 'New low-energy techniques → light sedation sufficient',
            subtitle: 'Old water-bath technique → RA (T6 block) or GA',
            additionalInfo: 'Epidural catheter insertion with saline, not air\nBradycardia → treat with glycopyrrolate',
          ),
          GenitourinarySurgeryAnesthesiaItem(
            title: 'Monitoring',
            description: 'ECG + O₂ sat + temperature',
            subtitle: 'SVT may occur even with R synchronization',
          ),
          GenitourinarySurgeryAnesthesiaItem(
            title: 'Fluids',
            description: 'Volume loading to maintain urine output',
            subtitle: 'Initial bolus + 1000–2000 mL RL + low-dose furosemide',
          ),
        ],
      ),
      GenitourinarySurgeryAnesthesiaCategory(
        categoryName: 'Non-oncologic Upper Ureter and Kidney Surgery',
        items: [
          GenitourinarySurgeryAnesthesiaItem(
            title: 'Position',
            description: 'Lateral flexed position → axillary roll to protect brachial plexus',
            subtitle: 'After positioning, ETT placement must be checked',
            additionalInfo: '↓ FRC, ↑ dead space, ↑ atelectasis risk\nInvasive arterial monitoring + wide-bore IV access',
          ),
        ],
      ),
      GenitourinarySurgeryAnesthesiaCategory(
        categoryName: 'Urologic Malignancy Surgeries',
        items: [
          GenitourinarySurgeryAnesthesiaItem(
            title: 'Prostate Cancer - Radical Retropubic Prostatectomy',
            description: 'High bleeding risk → invasive arterial line, CVP, wide-bore IV',
            subtitle: 'RA not tolerated due to position + surgery',
            additionalInfo: 'Epidural for postop analgesia',
          ),
          GenitourinarySurgeryAnesthesiaItem(
            title: 'Prostate Cancer - Robotic Radical Prostatectomy',
            description: 'Deep Trendelenburg → upper airway edema, pulmonary complications',
          ),
          GenitourinarySurgeryAnesthesiaItem(
            title: 'Prostate Cancer - Bilateral Orchiectomy',
            description: 'GA or RA',
          ),
          GenitourinarySurgeryAnesthesiaItem(
            title: 'Bladder Cancer - TURBT',
            description: 'Obturator nerve stimulation → leg adduction → GA + muscle relaxation mandatory',
          ),
          GenitourinarySurgeryAnesthesiaItem(
            title: 'Bladder Cancer - Radical Cystectomy',
            description: 'Major blood loss, hypotensive anesthesia may be preferred',
            subtitle: 'Invasive arterial monitoring required',
          ),
          GenitourinarySurgeryAnesthesiaItem(
            title: 'Bladder Cancer - Urinary Diversion',
            description: 'Goal: adequate hydration + active urine output',
            subtitle: 'Jejunal conduit → hyponatremia, hypochloremia, hyperkalemia, metabolic acidosis',
            additionalInfo: 'Colon/ileal conduit → hyperchloremic acidosis',
          ),
          GenitourinarySurgeryAnesthesiaItem(
            title: 'Testicular Cancer',
            description: 'Young patients; chemotherapy complications must be considered',
            subtitle: 'Cisplatin → nephrotoxicity',
            additionalInfo: 'Bleomycin → pulmonary fibrosis\nVincristine → neuropathy',
          ),
          GenitourinarySurgeryAnesthesiaItem(
            title: 'Testicular Cancer - Radical Orchiectomy',
            description: 'Spermatic cord traction → bradycardia',
          ),
          GenitourinarySurgeryAnesthesiaItem(
            title: 'Testicular Cancer - Retroperitoneal Dissection',
            description: 'Maintain urine output ≥0.5 mL/kg/hr',
            subtitle: 'Hydration: 1:2–1:3 colloid/crystalloid',
            additionalInfo: 'Intercostal artery ligation → paraplegia risk',
          ),
          GenitourinarySurgeryAnesthesiaItem(
            title: 'Renal Cancer - Pre-op',
            description: 'RCC may present with erythrocytosis, hypercalcemia, HT, hepatic dysfunction',
            subtitle: 'Hb ≥10 g/dL required',
          ),
          GenitourinarySurgeryAnesthesiaItem(
            title: 'Renal Cancer - Radical Nephrectomy',
            description: 'GA + epidural combination appropriate',
            subtitle: 'Monitoring: IABP, CVP, TEE',
            additionalInfo: 'Maintain urine output ≥0.5 mL/kg/hr',
          ),
          GenitourinarySurgeryAnesthesiaItem(
            title: 'Renal Cancer - Tumor Thrombus',
            description: 'May extend to IVC; CPB may be required',
            subtitle: 'CVP catheter placed without mobilizing thrombus',
            additionalInfo: 'High embolism risk',
          ),
          GenitourinarySurgeryAnesthesiaItem(
            title: 'Renal Transplant - Pre-op',
            description: 'Recipient → K <5.5 mEq/L, dialysis within last 24–48 h',
          ),
          GenitourinarySurgeryAnesthesiaItem(
            title: 'Renal Transplant - Intra-op',
            description: 'GA preferred',
            subtitle: 'Monitoring: IABP, CVP',
            additionalInfo: 'After clamp release, oliguria → diuretics may be given\nMonitor for hyperkalemia + ECG changes\nDonor kidney flushed with iced RL',
          ),
        ],
      ),
      GenitourinarySurgeryAnesthesiaCategory(
        categoryName: 'Key Exam Spots',
        items: [
          GenitourinarySurgeryAnesthesiaItem(
            title: 'SUMMARY SPOT QUESTIONS',
            description: 'TURP syndrome: ~2 L fluid absorption, Na <120 mEq/L symptomatic',
            subtitle: 'TURP irrigation: avg 20 mL/min absorption',
            additionalInfo: 'Lithotomy: T10 block sufficient\nTURP monitoring: consciousness, ECG (ischemia 18%)\nLithotripsy: R-wave synchronization for pacemaker\nRadical prostatectomy: high bleeding risk\nTURBT: GA + muscle relaxation mandatory',
          ),
        ],
      ),
    ];
  }
}
