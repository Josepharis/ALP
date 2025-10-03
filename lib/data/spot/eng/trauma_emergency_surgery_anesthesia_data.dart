import 'package:flutter/material.dart';

class TraumaEmergencySurgeryAnesthesiaItem {
  final String title;
  final String description;
  final String? subtitle;
  final String? additionalInfo;

  TraumaEmergencySurgeryAnesthesiaItem({
    required this.title,
    required this.description,
    this.subtitle,
    this.additionalInfo,
  });
}

class TraumaEmergencySurgeryAnesthesiaCategory {
  final String categoryName;
  final List<TraumaEmergencySurgeryAnesthesiaItem> items;

  TraumaEmergencySurgeryAnesthesiaCategory({
    required this.categoryName,
    required this.items,
  });
}

class TraumaEmergencySurgeryAnesthesiaData {
  static List<TraumaEmergencySurgeryAnesthesiaCategory> getTraumaEmergencySurgeryAnesthesiaData(BuildContext context) {
    return [
      TraumaEmergencySurgeryAnesthesiaCategory(
        categoryName: 'Primary Survey (ABCDE)',
        items: [
          TraumaEmergencySurgeryAnesthesiaItem(
            title: 'Airway',
            description: 'All trauma patients are considered to have a "full stomach."',
            subtitle: 'Cervical spine injury is assumed until proven otherwise.',
            additionalInfo: 'Always be prepared for failed intubation.',
          ),
          TraumaEmergencySurgeryAnesthesiaItem(
            title: 'Breathing',
            description: 'Sudden instability after mechanical ventilation → suspect tension pneumothorax → bilateral needle thoracostomy (2nd ICS, midclavicular line) + chest tube.',
            subtitle: 'Start 100% O₂.',
          ),
          TraumaEmergencySurgeryAnesthesiaItem(
            title: 'Circulation',
            description: 'No pulse + penetrating chest trauma → bilateral chest tubes + 500–1000 mL rapid fluid.',
            subtitle: 'Emergency thoracotomy only if indicated.',
          ),
          TraumaEmergencySurgeryAnesthesiaItem(
            title: 'Neurological Function',
            description: 'Unconscious patient → CNS injury assumed after excluding metabolic/drug causes.',
          ),
          TraumaEmergencySurgeryAnesthesiaItem(
            title: 'Exposure',
            description: 'Complete exposure and examination.',
            subtitle: 'Use warmers and warm fluids to prevent hypothermia.',
          ),
        ],
      ),
      TraumaEmergencySurgeryAnesthesiaCategory(
        categoryName: 'Resuscitation',
        items: [
          TraumaEmergencySurgeryAnesthesiaItem(
            title: 'Hemorrhage Classification - Class I',
            description: '<15%, stable → no fluids.',
          ),
          TraumaEmergencySurgeryAnesthesiaItem(
            title: 'Hemorrhage Classification - Class II',
            description: '15–30%, tachycardia + ↑ DBP → crystalloids/colloids, prepare blood.',
          ),
          TraumaEmergencySurgeryAnesthesiaItem(
            title: 'Hemorrhage Classification - Class III',
            description: '30–40%, hypotension, acidosis → transient response to fluids, deteriorates again.',
          ),
          TraumaEmergencySurgeryAnesthesiaItem(
            title: 'Hemorrhage Classification - Class IV',
            description: '>40%, life-threatening → massive transfusion + damage control resuscitation.',
          ),
          TraumaEmergencySurgeryAnesthesiaItem(
            title: 'Trauma Coagulopathy',
            description: 'Present in ~25% of major trauma patients.',
            subtitle: 'Base deficit >6 → 20% risk.',
            additionalInfo: 'Pathophysiology: hypoperfusion → ↑ thrombomodulin, ↓ fibrin formation, ↑ protein C, hyperfibrinolysis.',
          ),
          TraumaEmergencySurgeryAnesthesiaItem(
            title: 'TXA',
            description: 'Within 3 h → 1 g bolus + 1 g/8 h infusion → ↓ mortality.',
          ),
          TraumaEmergencySurgeryAnesthesiaItem(
            title: 'Hemostatic Resuscitation',
            description: 'Goal: 1:1:1 (RBC:FFP:platelet) mimics whole blood.',
            subtitle: 'TEG guided: FFP ↓, antifibrinolytics ↑.',
            additionalInfo: 'If >8 U uncrossmatched transfused → continue with group O.',
          ),
          TraumaEmergencySurgeryAnesthesiaItem(
            title: 'Massive Transfusion Protocol (MTP)',
            description: 'Not for all, only selected cases.',
            subtitle: 'Benefits: ↓ mortality, ↓ organ failure.',
            additionalInfo: 'ABC score ≥2 predicts MTP need:\nPenetrating trauma\nSBP <90\nHR >120\nFAST (+)',
          ),
        ],
      ),
      TraumaEmergencySurgeryAnesthesiaCategory(
        categoryName: 'Anesthetic Management',
        items: [
          TraumaEmergencySurgeryAnesthesiaItem(
            title: 'General Principles',
            description: 'All trauma patients = cervical spine injury + full stomach until proven otherwise.',
          ),
          TraumaEmergencySurgeryAnesthesiaItem(
            title: 'Induction',
            description: 'Etomidate or ketamine for unstable patients; scopolamine 0.4 mg may be added.',
          ),
          TraumaEmergencySurgeryAnesthesiaItem(
            title: 'Monitoring',
            description: 'Invasive arterial BP monitoring useful but should not delay surgery.',
          ),
          TraumaEmergencySurgeryAnesthesiaItem(
            title: 'Damage Control Surgery',
            description: 'Rapid exploration + hemorrhage control.',
          ),
        ],
      ),
      TraumaEmergencySurgeryAnesthesiaCategory(
        categoryName: 'Traumatic Brain Injury (TBI)',
        items: [
          TraumaEmergencySurgeryAnesthesiaItem(
            title: 'Acute Subdural Hematoma',
            description: 'Bridging veins, high mortality.',
          ),
          TraumaEmergencySurgeryAnesthesiaItem(
            title: 'Epidural Hematoma',
            description: 'MCA injury, better prognosis; surgical indication: supratentorial >30 mL, infratentorial >10 mL.',
          ),
          TraumaEmergencySurgeryAnesthesiaItem(
            title: 'Intraparenchymal',
            description: 'Frontal/temporal, ↑ ICP → decompression if needed.',
          ),
          TraumaEmergencySurgeryAnesthesiaItem(
            title: 'Diffuse Axonal Injury',
            description: 'Severe deceleration, poor prognosis.',
          ),
          TraumaEmergencySurgeryAnesthesiaItem(
            title: 'ICP Management',
            description: 'Normal: ~10 mmHg, should be <20.',
            subtitle: 'CPP target: 50–70 mmHg.',
            additionalInfo: 'Hyperventilation → temporary ICP reduction but ↑ ischemia risk\nMannitol: 0.25–1 g/kg (monitor osmolality & electrolytes)\nBarbiturate coma → ↓ cerebral O₂ consumption',
          ),
        ],
      ),
      TraumaEmergencySurgeryAnesthesiaCategory(
        categoryName: 'Spinal Cord Injury',
        items: [
          TraumaEmergencySurgeryAnesthesiaItem(
            title: 'Spine Stability',
            description: 'Spine = 3 columns (anterior, middle, posterior) → ≥2 column injury = unstable.',
          ),
          TraumaEmergencySurgeryAnesthesiaItem(
            title: 'Cervical Fractures',
            description: '10–15% have additional spinal injuries.',
          ),
          TraumaEmergencySurgeryAnesthesiaItem(
            title: 'Thoracolumbar (T11–L3)',
            description: 'Second fracture risk 40%.',
          ),
          TraumaEmergencySurgeryAnesthesiaItem(
            title: 'Surgical Indication',
            description: 'Vertebral body height loss >50% or canal narrowing >30%.',
          ),
        ],
      ),
      TraumaEmergencySurgeryAnesthesiaCategory(
        categoryName: 'Burns',
        items: [
          TraumaEmergencySurgeryAnesthesiaItem(
            title: 'Burn Center Referral',
            description: '20% (2nd–3rd degree) → burn center referral.',
          ),
          TraumaEmergencySurgeryAnesthesiaItem(
            title: '1st Degree',
            description: 'Epidermis only, no fluids needed.',
          ),
          TraumaEmergencySurgeryAnesthesiaItem(
            title: '2nd Degree',
            description: 'Epidermis + partial dermis; if >20% → fluid replacement.',
          ),
          TraumaEmergencySurgeryAnesthesiaItem(
            title: '3rd Degree',
            description: 'Full dermis, insensate, requires graft.',
          ),
          TraumaEmergencySurgeryAnesthesiaItem(
            title: 'Hemodynamics',
            description: 'Burn shock → ↓ CO 50%, hypoperfusion; corrected within 48 h with adequate fluids.',
          ),
          TraumaEmergencySurgeryAnesthesiaItem(
            title: 'Fluid Therapy - Parkland',
            description: '4 mL/kg/%TBSA (½ in first 8 h).',
          ),
          TraumaEmergencySurgeryAnesthesiaItem(
            title: 'Fluid Therapy - Brook',
            description: '2 mL/kg/%TBSA.',
          ),
          TraumaEmergencySurgeryAnesthesiaItem(
            title: 'Urine Output Targets',
            description: 'Adults: 0.5–1 mL/kg/h',
            subtitle: '<30 kg child: 1 mL/kg/h (+5% dextrose)',
            additionalInfo: '<1 yr: 1–2 mL/kg/h',
          ),
          TraumaEmergencySurgeryAnesthesiaItem(
            title: 'Complications - Abdominal Compartment Syndrome',
            description: '>6 mL/kg/%TBSA, pediatric, abdominal burns → risk.',
          ),
          TraumaEmergencySurgeryAnesthesiaItem(
            title: 'Complications - CO Poisoning',
            description: 'Unreliable SpO₂; HbCO >20% → intubation/MV; HbCO >60% → fatal.',
          ),
          TraumaEmergencySurgeryAnesthesiaItem(
            title: 'Complications - Pulmonary',
            description: 'Pneumonia, inhalation injury.',
          ),
          TraumaEmergencySurgeryAnesthesiaItem(
            title: 'Anesthesia',
            description: 'Difficult airway risk → emergency protocol ready.',
            subtitle: 'Sch contraindicated after 48 h (risk of hyperkalemia).',
            additionalInfo: 'Adequate analgesia mandatory.',
          ),
        ],
      ),
      TraumaEmergencySurgeryAnesthesiaCategory(
        categoryName: 'Key Exam Spots',
        items: [
          TraumaEmergencySurgeryAnesthesiaItem(
            title: 'SUMMARY SPOT QUESTIONS',
            description: 'All trauma patients = cervical spine injury + full stomach',
            subtitle: 'TXA: within 3 h → 1 g bolus + 1 g/8 h infusion',
            additionalInfo: 'Hemostatic resuscitation: 1:1:1 (RBC:FFP:platelet)\nICP target: <20 mmHg, CPP: 50–70 mmHg\nParkland formula: 4 mL/kg/%TBSA\nSch contraindicated after 48 h in burns',
          ),
        ],
      ),
    ];
  }
}
