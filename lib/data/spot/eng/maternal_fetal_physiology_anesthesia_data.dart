import 'package:flutter/material.dart';

class MaternalFetalPhysiologyAnesthesiaItem {
  final String title;
  final String description;
  final String? subtitle;
  final String? additionalInfo;

  MaternalFetalPhysiologyAnesthesiaItem({
    required this.title,
    required this.description,
    this.subtitle,
    this.additionalInfo,
  });
}

class MaternalFetalPhysiologyAnesthesiaCategory {
  final String categoryName;
  final List<MaternalFetalPhysiologyAnesthesiaItem> items;

  MaternalFetalPhysiologyAnesthesiaCategory({
    required this.categoryName,
    required this.items,
  });
}

class MaternalFetalPhysiologyAnesthesiaData {
  static List<MaternalFetalPhysiologyAnesthesiaCategory> getMaternalFetalPhysiologyAnesthesiaData(BuildContext context) {
    return [
      MaternalFetalPhysiologyAnesthesiaCategory(
        categoryName: 'Physiological Changes in Pregnancy',
        items: [
          MaternalFetalPhysiologyAnesthesiaItem(
            title: 'CNS Changes',
            description: 'MAC ↓ ~40% (progesterone ↑)',
            subtitle: 'LA requirement in regional anesthesia ↓ ~30%',
            additionalInfo: 'Epidural venous engorgement → ↑ spread of block\nMLD50 (minimum local dose for 50% analgesia) ↓ by ~50%',
          ),
          MaternalFetalPhysiologyAnesthesiaItem(
            title: 'Respiratory Changes',
            description: 'O₂ consumption & minute ventilation ↑ (up to 50% at term)',
            subtitle: 'PaCO₂: 28–32 mmHg (compensated respiratory alkalosis)',
            additionalInfo: 'FRC ↓ 20% (returns to normal in 48 h postpartum)\nApnea → rapid desaturation\nMucosal edema → smaller ETT recommended',
          ),
          MaternalFetalPhysiologyAnesthesiaItem(
            title: 'Cardiovascular Changes',
            description: 'Blood volume ↑ 1000–1500 mL (Hb ~11 g/dL → dilutional anemia)',
            subtitle: 'CO ↑ 40% (HR ↑ 20%, SV ↑ 30%)',
            additionalInfo: 'Supine → vena cava compression → ↓ CO\nLeft lateral position preserves uterine perfusion\nPregnancy → venous stasis & hypercoagulability',
          ),
          MaternalFetalPhysiologyAnesthesiaItem(
            title: 'Renal & GI Changes',
            description: 'Creatinine: 0.5–0.6 mg/dL (lower)',
            subtitle: 'Mild proteinuria & glucosuria are normal',
            additionalInfo: 'Delayed gastric emptying, ↑ reflux\nLES tone ↓ with opioids & anticholinergics',
          ),
          MaternalFetalPhysiologyAnesthesiaItem(
            title: 'Hepatic Changes',
            description: 'ALP ↑ (placental origin)',
            subtitle: 'Albumin ↓',
            additionalInfo: 'Pseudocholinesterase ↓ 25–30% (returns to normal by 6th week postpartum)\nProgesterone → ↓ gallbladder emptying',
          ),
          MaternalFetalPhysiologyAnesthesiaItem(
            title: 'Hematologic Changes',
            description: 'Dilutional anemia',
            subtitle: 'Leukocytosis (up to 21,000)',
            additionalInfo: 'Platelets ↓ ~10%\nFibrinogen + clotting factors (VII, VIII, IX, X, XII) ↑ → hypercoagulable state',
          ),
          MaternalFetalPhysiologyAnesthesiaItem(
            title: 'Metabolic Changes',
            description: 'Diabetogenic state: ↑ fatty acids & ketones, ↓ glucose tolerance',
            subtitle: 'hCG & estrogen → thyroid enlargement, ↑ T3/T4 (free levels normal)',
            additionalInfo: 'Total Ca ↓ (ionized normal)',
          ),
          MaternalFetalPhysiologyAnesthesiaItem(
            title: 'Musculoskeletal Changes',
            description: 'Ligamentous laxity → ↑ back pain',
          ),
        ],
      ),
      MaternalFetalPhysiologyAnesthesiaCategory(
        categoryName: 'Uteroplacental Circulation',
        items: [
          MaternalFetalPhysiologyAnesthesiaItem(
            title: 'Normal Uterine Flow',
            description: '50 mL/min → 600–700 mL/min at term',
          ),
          MaternalFetalPhysiologyAnesthesiaItem(
            title: 'Characteristics',
            description: 'No autoregulation, maximally dilated',
            subtitle: 'High α-adrenergic sensitivity',
          ),
          MaternalFetalPhysiologyAnesthesiaItem(
            title: '↓ Uterine Blood Flow',
            description: 'Hypotension, VC, contractions',
          ),
          MaternalFetalPhysiologyAnesthesiaItem(
            title: 'Hypotension Treatment',
            description: 'Ephedrine, phenylephrine, metaraminol',
          ),
          MaternalFetalPhysiologyAnesthesiaItem(
            title: 'Placental Transfer - Diffusion',
            description: 'Gases & small ions',
          ),
          MaternalFetalPhysiologyAnesthesiaItem(
            title: 'Placental Transfer - Facilitated Diffusion',
            description: 'Glucose',
          ),
          MaternalFetalPhysiologyAnesthesiaItem(
            title: 'Placental Transfer - Active Transport',
            description: 'Amino acids, vitamins, Ca/Fe',
          ),
          MaternalFetalPhysiologyAnesthesiaItem(
            title: 'Placental Transfer - Vesicular Transport',
            description: 'Immunoglobulins',
            subtitle: 'Membrane defect → Rh incompatibility risk',
          ),
          MaternalFetalPhysiologyAnesthesiaItem(
            title: 'Gas Exchange',
            description: 'Fetal PaO₂: 30–35 mmHg',
            subtitle: 'Fetal Hb: 15 g/dL',
            additionalInfo: 'Fetal O₂ consumption: ~7 mL/kg/min\nFetus tolerates anoxia ~10 min',
          ),
          MaternalFetalPhysiologyAnesthesiaItem(
            title: 'Drug Transfer',
            description: 'IV & inhalational agents → cross easily',
            subtitle: 'Muscle relaxants → do not cross',
            additionalInfo: 'LA (weak bases) → cross placenta',
          ),
          MaternalFetalPhysiologyAnesthesiaItem(
            title: 'Uterine Blood Flow & Anesthetic Agents',
            description: 'Propofol/barbiturates: mild ↓',
            subtitle: 'Ketamine ≤1.5 mg/kg: no change',
            additionalInfo: 'Volatile agents: ↓, but minimal at <1 MAC\nN₂O alone: uterine VC\nLidocaine: uterine VC\nEpidural (preeclampsia): ↑ uterine flow',
          ),
        ],
      ),
      MaternalFetalPhysiologyAnesthesiaCategory(
        categoryName: 'Normal Labor & Anesthesia',
        items: [
          MaternalFetalPhysiologyAnesthesiaItem(
            title: 'Pain Effects',
            description: 'MV ↑ 300%, O₂ consumption ↑ 60%',
            subtitle: 'PaCO₂ may fall to 20 mmHg',
          ),
          MaternalFetalPhysiologyAnesthesiaItem(
            title: 'Contraction Effects',
            description: 'Each contraction → 300–500 mL blood autotransfusion',
            subtitle: 'Postpartum: CO ↑ 80%',
          ),
          MaternalFetalPhysiologyAnesthesiaItem(
            title: 'Agents - Volatile',
            description: 'Uterine relaxation; >0.75 MAC → atony risk',
          ),
          MaternalFetalPhysiologyAnesthesiaItem(
            title: 'Agents - Opioids',
            description: 'Prolong labor',
          ),
          MaternalFetalPhysiologyAnesthesiaItem(
            title: 'Agents - Epidural',
            description: 'Safe with low concentrations',
          ),
          MaternalFetalPhysiologyAnesthesiaItem(
            title: 'Vasopressors',
            description: 'α₁ → uterine contraction',
            subtitle: 'β₂ → uterine relaxation',
            additionalInfo: 'Phenylephrine <40 mcg → ↑ uterine flow\nEphedrine → minimal uterine contraction effect',
          ),
          MaternalFetalPhysiologyAnesthesiaItem(
            title: 'Uterotonics - Oxytocin',
            description: '0.5–8 mU/min; side effects → hypotension, tachycardia, hyperstimulation, water retention',
          ),
          MaternalFetalPhysiologyAnesthesiaItem(
            title: 'Uterotonics - Methylergometrine',
            description: '0.2 mg IM; strong contraction + HT',
          ),
          MaternalFetalPhysiologyAnesthesiaItem(
            title: 'Uterotonics - Carboprost',
            description: '0.25 mg IM (contraindicated in asthma)',
          ),
          MaternalFetalPhysiologyAnesthesiaItem(
            title: 'Uterotonics - MgSO₄',
            description: '4 g loading + 2 g/hr infusion (tocolysis, eclampsia)',
          ),
          MaternalFetalPhysiologyAnesthesiaItem(
            title: 'Uterotonics - β₂ Agonists',
            description: 'Ritodrine, terbutaline: inhibit preterm labor',
          ),
        ],
      ),
      MaternalFetalPhysiologyAnesthesiaCategory(
        categoryName: 'Fetal Circulation & Birth Transition',
        items: [
          MaternalFetalPhysiologyAnesthesiaItem(
            title: 'Oxygenated Blood Path',
            description: 'Placenta → IVC → RA → foramen ovale → LA → upper body',
          ),
          MaternalFetalPhysiologyAnesthesiaItem(
            title: 'Desaturated Blood Path',
            description: 'SVC → RV → ductus arteriosus → descending aorta + placenta',
          ),
          MaternalFetalPhysiologyAnesthesiaItem(
            title: 'Lung Maturity',
            description: 'Adequate surfactant = readiness',
          ),
          MaternalFetalPhysiologyAnesthesiaItem(
            title: 'After Birth',
            description: 'Lungs inflate, foramen ovale closes functionally',
            subtitle: 'Ductus arteriosus closes with PaO₂ ↑ (2–3 weeks)',
            additionalInfo: 'PDA → persistent pulmonary HT',
          ),
        ],
      ),
      MaternalFetalPhysiologyAnesthesiaCategory(
        categoryName: 'Key Exam Spots',
        items: [
          MaternalFetalPhysiologyAnesthesiaItem(
            title: 'SUMMARY SPOT QUESTIONS',
            description: 'MAC ↓ ~40% in pregnancy',
            subtitle: 'PaCO₂: 28–32 mmHg (compensated respiratory alkalosis)',
            additionalInfo: 'CO ↑ 40% (HR ↑ 20%, SV ↑ 30%)\nUterine flow: 50 mL/min → 600–700 mL/min at term\nFetal PaO₂: 30–35 mmHg, Hb: 15 g/dL\nEach contraction → 300–500 mL blood autotransfusion',
          ),
        ],
      ),
    ];
  }
}
