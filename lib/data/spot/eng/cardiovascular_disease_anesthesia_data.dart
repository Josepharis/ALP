import 'package:flutter/material.dart';

class CardiovascularDiseaseAnesthesiaItem {
  final String title;
  final String description;
  final String? subtitle;
  final String? additionalInfo;

  CardiovascularDiseaseAnesthesiaItem({
    required this.title,
    required this.description,
    this.subtitle,
    this.additionalInfo,
  });
}

class CardiovascularDiseaseAnesthesiaCategory {
  final String categoryName;
  final List<CardiovascularDiseaseAnesthesiaItem> items;

  CardiovascularDiseaseAnesthesiaCategory({
    required this.categoryName,
    required this.items,
  });
}

class CardiovascularDiseaseAnesthesiaData {
  static List<CardiovascularDiseaseAnesthesiaCategory> getCardiovascularDiseaseAnesthesiaData(BuildContext context) {
    return [
      CardiovascularDiseaseAnesthesiaCategory(
        categoryName: 'Hypertension (HT)',
        items: [
          CardiovascularDiseaseAnesthesiaItem(
            title: 'Risk',
            description: 'BP >180/110 → ↑ intraoperative complications (MI, arrhythmia, hypotension)',
          ),
          CardiovascularDiseaseAnesthesiaItem(
            title: 'Malignant HT',
            description: '>210/120 + papilledema + encephalopathy',
          ),
          CardiovascularDiseaseAnesthesiaItem(
            title: 'Pathophysiology',
            description: '85–95% essential HT; long-term → LVH & diastolic dysfunction; vascular hypertrophy, hyperinsulinemia, ↑ intracellular Ca & Na',
          ),
          CardiovascularDiseaseAnesthesiaItem(
            title: 'Preop',
            description: 'Moderate HT risk uncertain; poorly controlled HT ↑ intraop risk. ACE inhibitors and ARBs should be withheld on morning of surgery',
          ),
          CardiovascularDiseaseAnesthesiaItem(
            title: 'Intraop Target',
            description: 'BP within ±20% of baseline; if >180/120 → aim for 140–150/90–80 mmHg',
          ),
          CardiovascularDiseaseAnesthesiaItem(
            title: 'Induction',
            description: 'Risk of both hypo- & hypertension; opioids & lidocaine may help; β-blockers before laryngoscopy',
          ),
          CardiovascularDiseaseAnesthesiaItem(
            title: 'Postop',
            description: 'Poorly controlled HT → MI, CHF, hematoma, suture dehiscence',
          ),
        ],
      ),
      CardiovascularDiseaseAnesthesiaCategory(
        categoryName: 'Ischemic Heart Disease (IHD)',
        items: [
          CardiovascularDiseaseAnesthesiaItem(
            title: 'Risk Factors',
            description: 'HT, DM, smoking, hyperlipidemia, age, male sex, family history',
          ),
          CardiovascularDiseaseAnesthesiaItem(
            title: 'Stable Angina',
            description: 'Triggered by exertion; ≥50–75% stenosis symptomatic',
          ),
          CardiovascularDiseaseAnesthesiaItem(
            title: 'Unstable Angina',
            description: '≥3 attacks/day, new onset, >80% stenosis → pre-MI state',
          ),
          CardiovascularDiseaseAnesthesiaItem(
            title: 'Treatment',
            description: 'β-blocker (HR 50–60/min), CCB, nitrates, ACE inhibitors, statins, aspirin',
          ),
          CardiovascularDiseaseAnesthesiaItem(
            title: 'Preop',
            description: 'Continue β-blockers & statins. History: chest pain, dyspnea, low exercise tolerance',
          ),
          CardiovascularDiseaseAnesthesiaItem(
            title: 'Monitoring',
            description: 'ECG, ST changes, QTc, troponin, chest X-ray',
          ),
          CardiovascularDiseaseAnesthesiaItem(
            title: 'Intraop',
            description: 'Maintain DBP >50 mmHg; optimize myocardial O₂ supply/demand ratio',
          ),
        ],
      ),
      CardiovascularDiseaseAnesthesiaCategory(
        categoryName: 'Valvular Heart Disease',
        items: [
          CardiovascularDiseaseAnesthesiaItem(
            title: 'Mitral Stenosis (MS)',
            description: 'Valve area <1.5 cm² → exertional dyspnea',
            subtitle: 'Symptomatic → surgery or percutaneous transseptal valvuloplasty',
            additionalInfo: 'Intraop: Maintain sinus rhythm; avoid tachycardia & hypotension',
          ),
          CardiovascularDiseaseAnesthesiaItem(
            title: 'Mitral Regurgitation (MR)',
            description: 'Regurgitant flow 30–60% = moderate; >60% = severe',
            subtitle: 'Treatment: ↓ SVR & afterload; moderate-severe cases → surgery',
            additionalInfo: 'Intraop: HR 80–100/min, careful anesthetic depth & fluid management',
          ),
          CardiovascularDiseaseAnesthesiaItem(
            title: 'Aortic Stenosis (AS)',
            description: 'Critical valve area <0.7 cm²; triad: dyspnea, angina, syncope',
            subtitle: 'Intraop: HR 60–90/min, preserve atrial systole, treat hypotension with phenylephrine',
          ),
          CardiovascularDiseaseAnesthesiaItem(
            title: 'Aortic Regurgitation (AR)',
            description: 'Acute: pulmonary congestion; chronic: LV dilatation & eccentric hypertrophy',
            subtitle: 'Intraop: HR 80–100/min; avoid bradycardia & ↑ afterload',
          ),
        ],
      ),
      CardiovascularDiseaseAnesthesiaCategory(
        categoryName: 'Congenital Heart Disease (CHD)',
        items: [
          CardiovascularDiseaseAnesthesiaItem(
            title: 'Incidence',
            description: '<1% of births',
          ),
          CardiovascularDiseaseAnesthesiaItem(
            title: 'Cyanotic Patients',
            description: 'Hyperviscosity (Hct >65%)',
          ),
          CardiovascularDiseaseAnesthesiaItem(
            title: 'L→R Shunt',
            description: 'Qp/Qs >1',
          ),
          CardiovascularDiseaseAnesthesiaItem(
            title: 'R→L Shunt',
            description: 'Direction & size depend on SVR/PVR',
          ),
          CardiovascularDiseaseAnesthesiaItem(
            title: 'Tetralogy of Fallot',
            description: 'Maintain SVR; ketamine preferred; hypercyanotic spell → phenylephrine 5 mcg/kg',
          ),
        ],
      ),
      CardiovascularDiseaseAnesthesiaCategory(
        categoryName: 'Heart Transplant Patients',
        items: [
          CardiovascularDiseaseAnesthesiaItem(
            title: 'Denervated Heart',
            description: 'Resting HR 100–120/min',
          ),
          CardiovascularDiseaseAnesthesiaItem(
            title: 'Response to Catecholamines',
            description: 'Normal or increased',
          ),
          CardiovascularDiseaseAnesthesiaItem(
            title: 'Intraop',
            description: 'Preload normal/high; indirect agents less effective',
          ),
        ],
      ),
      CardiovascularDiseaseAnesthesiaCategory(
        categoryName: 'Arrhythmias & ICD/Pacemaker',
        items: [
          CardiovascularDiseaseAnesthesiaItem(
            title: 'Hemodynamically Unstable SVT',
            description: 'Synchronized cardioversion',
          ),
          CardiovascularDiseaseAnesthesiaItem(
            title: 'WPW',
            description: 'Procainamide/amiodarone; digoxin & non-DHP CCBs contraindicated',
          ),
          CardiovascularDiseaseAnesthesiaItem(
            title: 'AF',
            description: 'β-blocker or amiodarone; if >48 h → anticoagulation 3 weeks pre-op & 4 weeks post-op',
          ),
          CardiovascularDiseaseAnesthesiaItem(
            title: 'VT',
            description: 'Amiodarone/procainamide; ischemic → β-blocker; if unstable → cardioversion',
          ),
          CardiovascularDiseaseAnesthesiaItem(
            title: 'TdP',
            description: 'Mg sulfate + isoproterenol',
          ),
        ],
      ),
      CardiovascularDiseaseAnesthesiaCategory(
        categoryName: 'Endocarditis Prophylaxis',
        items: [
          CardiovascularDiseaseAnesthesiaItem(
            title: 'Indications',
            description: 'Prosthetic valve/material, history of endocarditis, residual defect post-repair, congenital heart disease, transplant',
          ),
        ],
      ),
      CardiovascularDiseaseAnesthesiaCategory(
        categoryName: 'Key Exam Spots',
        items: [
          CardiovascularDiseaseAnesthesiaItem(
            title: 'SUMMARY SPOT QUESTIONS',
            description: 'HT risk: BP >180/110 → ↑ complications',
            subtitle: 'Malignant HT: >210/120 + papilledema + encephalopathy',
            additionalInfo: 'IHD: β-blocker HR 50–60/min\nMS: valve area <1.5 cm²\nAS: critical valve area <0.7 cm²\nTetralogy: maintain SVR, ketamine preferred',
          ),
        ],
      ),
    ];
  }
}
