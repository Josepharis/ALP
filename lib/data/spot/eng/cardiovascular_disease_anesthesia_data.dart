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
  static List<CardiovascularDiseaseAnesthesiaCategory>
      getCardiovascularDiseaseAnesthesiaData(BuildContext context) {
    return [
      CardiovascularDiseaseAnesthesiaCategory(
        categoryName: 'Hypertension (HT)',
        items: [
          CardiovascularDiseaseAnesthesiaItem(
            title: "RISK ASSESSMENT AND CRITICAL THRESHOLDS",
            description: "A blood pressure above 180/110 mmHg increases the risk of serious cardiovascular events during surgery.",
            subtitle: "Malignant HT: BP >210/120 mmHg accompanied by papilledema and encephalopathy",
            additionalInfo: "Uncontrolled hypertension sets the stage for myocardial ischemia, arrhythmias, and severe blood pressure fluctuations (labile tension) during the intraoperative period.",
          ),
          CardiovascularDiseaseAnesthesiaItem(
            title: "PATHOPHYSIOLOGY AND ORGAN DAMAGE",
            description: "85–95% of hypertension cases are essential and lead to left ventricular hypertrophy (LVH) in the long term.",
            additionalInfo: "Vascular hypertrophy, hyperinsulinemia, and increased intracellular calcium and sodium play roles in the pathophysiological process. These patients may respond more severely with hypotension to anesthesia induction.",
          ),
          CardiovascularDiseaseAnesthesiaItem(
            title: "PREOPERATIVE PREPARATION AND MEDICATION MANAGEMENT",
            description: "Management of antihypertensive drugs in the preoperative period is vital for intraoperative stability.",
            subtitle: "ACE inhibitors and ARBs should be withheld on the morning of surgery due to the risk of severe post-induction hypotension",
            additionalInfo: "Other chronic antihypertensives (beta-blockers, calcium channel blockers, etc.) should continue to be taken on the morning of surgery with a sip of water.",
          ),
          CardiovascularDiseaseAnesthesiaItem(
            title: "INTRAOPERATIVE TARGET BLOOD PRESSURE",
            description: "The general goal is to maintain blood pressure within ±20% of preoperative baseline values.",
            additionalInfo: "In high-risk patients with a baseline pressure >180/120 mmHg, the target is to gradually lower it to the 140–150 / 80–90 mmHg level intraoperatively.",
          ),
          CardiovascularDiseaseAnesthesiaItem(
            title: "INDUCTION PRINCIPLES AND APPLICATION",
            description: "The sympathetic response to laryngoscopy must be well suppressed during anesthesia induction in hypertensive patients.",
            additionalInfo: "Opioids, lidocaine, or short-acting beta-blockers (esmolol) can be used before laryngoscopy to prevent sudden spikes in blood pressure.",
          ),
          CardiovascularDiseaseAnesthesiaItem(
            title: "POSTOPERATIVE COMPLICATIONS",
            description: "Poorly controlled hypertension can lead to serious consequences such as postoperative myocardial infarction and suture line bleeding.",
            additionalInfo: "Additionally, acute heart failure (CHF), hematoma formation, and resulting suture dehiscence are common in at-risk patients during the postoperative period.",
          ),
        ],
      ),
      CardiovascularDiseaseAnesthesiaCategory(
        categoryName: 'Ischemic Heart Disease (IHD)',
        items: [
          CardiovascularDiseaseAnesthesiaItem(
            title: "RISK FACTORS AND ETIOLOGY",
            description: "Atherosclerotic processes that impair myocardial perfusion are accelerated by diabetes, smoking, hypertension, and genetic factors.",
            additionalInfo: "Age and male sex are non-modifiable risk factors. These patients should always be considered at risk during the perioperative period.",
          ),
          CardiovascularDiseaseAnesthesiaItem(
            title: "STABLE ANGINA AND SYMPTOM THRESHOLD",
            description: "Refers to a condition usually triggered by physical exertion and symptomatic when there is 50–75% blockage in the vessel lumen.",
            additionalInfo: "The exercise tolerance of patients with stable angina is one of the most important criteria in the anesthesiologist's risk analysis.",
          ),
          CardiovascularDiseaseAnesthesiaItem(
            title: "UNSTABLE ANGINA AND PRE-MI STATE",
            description: "More than 3 attacks per day, pain at rest, or new-onset severe angina is a pre-infarction (pre-MI) state.",
            additionalInfo: "The narrowing in the vessel lumen is over 80%. These cases must be stabilized except in emergency surgery situations.",
          ),
          CardiovascularDiseaseAnesthesiaItem(
            title: "TREATMENT AND PHARMACOLOGICAL CONTROL",
            description: "The cornerstones of medical treatment are beta-blockers, nitrates, and aspirin, which keep the heart rate in the 50–60/min range.",
            additionalInfo: "ACE inhibitors, statins, and calcium channel blockers (CCBs) are also used to reduce the heart's workload and oxygen demand.",
          ),
          CardiovascularDiseaseAnesthesiaItem(
            title: "PREOPERATIVE CLINICAL PREPARATION",
            description: "Beta-blocker and statin treatment should never be interrupted on the day of surgery; chest pain and dyspnea should be queried.",
            additionalInfo: "Low exercise tolerance (e.g., inability to climb two flights of stairs) is the most important clinical sign of high perioperative risk.",
          ),
          CardiovascularDiseaseAnesthesiaItem(
            title: "MONITORING AND DIAGNOSTIC CRITERIA",
            description: "ST-segment changes on ECG and blood troponin levels are the most sensitive parameters for detecting ischemia.",
            additionalInfo: "QTc duration, arrhythmia risk, and signs of congestion on chest X-ray must be evaluated in the preoperative period.",
          ),
          CardiovascularDiseaseAnesthesiaItem(
            title: "INTRAOPERATIVE MYOCARDIAL PROTECTION GOALS",
            description: "The fundamental principle is to increase myocardial oxygen supply (DBP > 50 mmHg) and decrease oxygen demand.",
            additionalInfo: "The supply/demand ratio should be optimized by avoiding tachycardia (which increases oxygen demand) and excessive hypotension (which lowers coronary filling pressure).",
          ),
        ],
      ),
      CardiovascularDiseaseAnesthesiaCategory(
        categoryName: 'Valvular Heart Disease',
        items: [
          CardiovascularDiseaseAnesthesiaItem(
            title: "MITRAL STENOSIS (MS) AND SYMPTOM MANAGEMENT",
            description: "Exertional shortness of breath begins when the valve orifice area drops below 1.5 cm².",
            subtitle: "Sinus rhythm should be maintained, and tachycardia and hypotension should be strictly avoided in the intraoperative period",
            additionalInfo: "In symptomatic cases with severe stenosis, surgery or balloon valvuloplasty should be considered before anesthesia.",
          ),
          CardiovascularDiseaseAnesthesiaItem(
            title: "MITRAL REGURGITATION (MR) AND AFTERLOAD REDUCTION",
            description: "Afterload-reducing (SVR) strategies are preferred to reduce the load on the myocardium.",
            subtitle: "Intraoperative target: Heart rate between 80-100/min, a slightly tachycardic and vasodilated state",
            additionalInfo: "Regurgitation is severe when the flow reaches over 60%; fluid management and anesthetic depth monitoring are of critical importance.",
          ),
          CardiovascularDiseaseAnesthesiaItem(
            title: "AORTIC STENOSIS (AS) AND CLINICAL TRIAD",
            description: "The triad of dyspnea, angina, and syncope (fainting) is seen when the critical valve area is <0.7 cm².",
            subtitle: "Heart rate should be kept between 60-90/min, and preservation of atrial systole (atrial kick) is vital",
            additionalInfo: "If hypotension develops, direct-acting vasoconstrictors (phenylephrine) should be preferred to maintain coronary perfusion.",
          ),
          CardiovascularDiseaseAnesthesiaItem(
            title: "AORTIC REGURGITATION (AR) AND VENTRICULAR HYPERTROPHY",
            description: "In chronic cases, severe dilation and eccentric hypertrophy of the left ventricle develop.",
            subtitle: "Heart rate should be maintained at 80-100/min to avoid bradycardia and high afterload during anesthesia",
            additionalInfo: "In acute aortic regurgitation, pulmonary congestion and edema can develop rapidly as the LV has not yet dilated.",
          ),
        ],
      ),
      CardiovascularDiseaseAnesthesiaCategory(
        categoryName: 'Congenital Heart Disease (CHD)',
        items: [
          CardiovascularDiseaseAnesthesiaItem(
            title: "GENERAL INFORMATION AND PREVALANCE",
            description: "Congenital heart defects occur in less than 1% of all live births.",
            additionalInfo: "When these patients present for non-cardiac surgery, the direction and hemodynamic effects of their shunt must be analyzed.",
          ),
          CardiovascularDiseaseAnesthesiaItem(
            title: "CYANOTIC PATIENTS AND HYPERVISCOSITY",
            description: "Polycythemia (Hct > 65%) due to chronic hypoxia increases the risk of thrombosis by impairing blood fluidity.",
            additionalInfo: "Fluid management and coagulation control are critical in cyanotic patients showing symptoms of hyperviscosity.",
          ),
          CardiovascularDiseaseAnesthesiaItem(
            title: "LEFT-TO-RIGHT SHUNT AND QP/QS RATIO",
            description: "A ratio of lung blood flow (Qp) to systemic blood flow (Qs) greater than 1 indicates a left-to-right shunt.",
            additionalInfo: "This situation creates a risk of excessive lung perfusion and pulmonary hypertension.",
          ),
          CardiovascularDiseaseAnesthesiaItem(
            title: "RIGHT-TO-LEFT SHUNT AND VASCULAR RESISTANCE",
            description: "The magnitude of the shunt depends on the balance between systemic vascular resistance (SVR) and pulmonary vascular resistance (PVR).",
            additionalInfo: "If SVR drops, the right-to-left shunt increases, and the patient's oxygen saturation falls rapidly.",
          ),
          CardiovascularDiseaseAnesthesiaItem(
            title: "TETRALOGY OF FALLOT AND HYPERCYANOTIC SPELL",
            description: "The most common cyanotic congenital disease; Ketamine is preferred to maintain SVR during anesthesia.",
            subtitle: "In the event of a hypercyanotic spell (tet spell), SVR should be increased using phenylephrine (5 mcg/kg)",
            additionalInfo: "The knee-chest position, oxygen, and deepened anesthesia are also applied during a spell.",
          ),
        ],
      ),
      CardiovascularDiseaseAnesthesiaCategory(
        categoryName: 'Heart Transplant Patients',
        items: [
          CardiovascularDiseaseAnesthesiaItem(
            title: "TRANSPLANTED HEART CHARACTERISTICS AND DENERVATION",
            description: "The transplanted heart no longer has neural control; the resting heart rate is fixed between 100-120/min.",
            subtitle: "Does not respond to vagal stimulation or atropine, but its response to circulating catecholamines is normal/increased",
            additionalInfo: "Cardiac output primarily changes based on the Frank-Starling mechanism (the amount of blood return).",
          ),
          CardiovascularDiseaseAnesthesiaItem(
            title: "INTRAOPERATIVE CAUTION AND DRUG RESPONSE",
            description: "Indirectly acting sympathomimetics may be ineffective; preload should always be kept normal or slightly high.",
            additionalInfo: "Patients should be managed with attention to maintaining sterility and without interrupting immunosuppressive drugs.",
          ),
        ],
      ),
      CardiovascularDiseaseAnesthesiaCategory(
        categoryName: 'Arrhythmias and ICD/Pacemaker',
        items: [
          CardiovascularDiseaseAnesthesiaItem(
            title: "SUPRAVENTRICULAR TACHYCARDIA (SVT) MANAGEMENT",
            description: "For SVT cases creating hemodynamic instability, synchronized cardioversion should be applied immediately.",
            additionalInfo: "In stable cases, vagal maneuvers or medical treatments such as adenosine are priority.",
          ),
          CardiovascularDiseaseAnesthesiaItem(
            title: "WOLFF-PARKINSON-WHITE (WPW) SYNDROME",
            description: "Procainamide or amiodarone are the preferred agents for these arrhythmias using an accessory pathway.",
            additionalInfo: "Digoxin and non-dihydropyridine calcium channel blockers are strictly contraindicated as they may accelerate the accessory pathway.",
          ),
          CardiovascularDiseaseAnesthesiaItem(
            title: "ATRIAL FIBRILLATION (AF) AND ANTICOAGULATION",
            description: "If AF lasts longer than 48 hours, a total of 7 weeks of anticoagulation is required before and after the operation.",
            additionalInfo: "Beta-blockers or amiodarone are used for rate control.",
          ),
          CardiovascularDiseaseAnesthesiaItem(
            title: "VENTRICULAR TACHYCARDIA (VT) AND INTERVENTION",
            description: "For stable ischemic cases, beta-blockers are used; otherwise, amiodarone or procainamide.",
            subtitle: "Emergency cardioversion is applied if there is hemodynamic instability",
            additionalInfo: "Sustained VT requires very close monitoring as it can evolve into an arrest (pulseless VT) state.",
          ),
          CardiovascularDiseaseAnesthesiaItem(
            title: "TORSADES DE POINTES (TdP) AND MAGNESIUM",
            description: "Magnesium sulfate is the first choice for this dangerous rhythm disorder developing due to QT prolongation.",
            additionalInfo: "Isoproterenol or temporary pacing can be applied to increase the heart rate where necessary.",
          ),
        ],
      ),
      CardiovascularDiseaseAnesthesiaCategory(
        categoryName: 'Endocarditis Prophylaxis',
        items: [
          CardiovascularDiseaseAnesthesiaItem(
            title: "PROPHYLAXIS INDICATIONS AND CRITICAL CASES",
            description: "Prophylaxis is mandatory for those with a prosthetic heart valve, a history of endocarditis, or unrepaired cyanotic CHD.",
            additionalInfo: "Patch/material repairs within the first 6 months post-surgery and valvular diseases developing in a transplanted heart also require prophylaxis.",
          ),
        ],
      ),
    ];
  }
}
