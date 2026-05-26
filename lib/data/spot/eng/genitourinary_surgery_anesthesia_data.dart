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
  static List<GenitourinarySurgeryAnesthesiaCategory>
      getGenitourinarySurgeryAnesthesiaData(BuildContext context) {
    return [
      GenitourinarySurgeryAnesthesiaCategory(
        categoryName: 'Cystoscopy',
        items: [
          GenitourinarySurgeryAnesthesiaItem(
            title: "CYSTOSCOPY PREOPERATIVE EVALUATION",
            description: "While general anesthesia (GA) is always required in children, topical lidocaine can be used for diagnostic procedures in adult women.",
            additionalInfo: "Male patients and all interventional cystoscopic procedures usually require GA or regional anesthesia (RA).",
          ),
          GenitourinarySurgeryAnesthesiaItem(
            title: "LITHOTOMY POSITION AND NERVE INJURIES",
            description: "The most common neurological complication of the lithotomy position used in cystoscopy is lumbosacral plexus injury.",
            subtitle: "Common peroneal nerve injury leads to loss of foot dorsiflexion, and saphenous nerve injury leads to sensory loss in the medial thigh",
            additionalInfo: "Additionally, obturator, femoral, and sciatic nerves can also be under pressure as a result of incorrect positioning.",
          ),
          GenitourinarySurgeryAnesthesiaItem(
            title: "PROLONGED LITHOTOMY AND COMPARTMENT SYNDROME",
            description: "Procedures exceeding 2-3 hours in the lithotomy position increase the risk of rhabdomyolysis and compartment syndrome in the extremity.",
            subtitle: "Functional Residual Capacity (FRC) decreases depending on position; adding Trendelenburg deepens this restriction",
            additionalInfo: "Close follow-up of patients for postoperative leg pain and sensory defect is a must.",
          ),
          GenitourinarySurgeryAnesthesiaItem(
            title: "ANESTHESIA METHOD AND BLOCK LEVEL (T10)",
            description: "While general anesthesia (including LMA) can be preferred in anxious patients, spinal anesthesia offers the advantage of rapid onset.",
            subtitle: "A sensory block at the T10 level is usually sufficient for diagnostic and interventional cystoscopies",
            additionalInfo: "While the spinal block settles in less than 5 minutes, 15-20 minutes may be required for epidural anesthesia.",
          ),
        ],
      ),
      GenitourinarySurgeryAnesthesiaCategory(
        categoryName: 'TURP (Transurethral Resection of the Prostate)',
        items: [
          GenitourinarySurgeryAnesthesiaItem(
            title: "TURP PREOPERATIVE RISK ANALYSIS",
            description: "TURP patients are usually an elderly group with cardiovascular and pulmonary comorbid diseases.",
            additionalInfo: "This situation increases the risk of hemodynamic instability in the perioperative period.",
          ),
          GenitourinarySurgeryAnesthesiaItem(
            title: "TURP SURGICAL COMPLICATIONS AND SEPSIS",
            description: "Severe bleeding, perforation, DIC (Disseminated Intravascular Coagulation), and sepsis can develop during the process.",
            additionalInfo: "Infection can spread rapidly from prostatic venous sinuses to the systemic circulation.",
          ),
          GenitourinarySurgeryAnesthesiaItem(
            title: "TURP SYNDROME PATHOPHYSIOLOGY (FLUID ABSORPTION)",
            description: "It occurs with the absorption of a large amount (average 2L) of electrolyte-free irrigation fluid from opened venous sinuses.",
            subtitle: "Fluid absorption rate is around approximately 20 mL/min",
            additionalInfo: "Serum sodium level falling below 120 mEq/L makes symptoms prominent.",
          ),
          GenitourinarySurgeryAnesthesiaItem(
            title: "IRRIGATION FLUIDS USED IN TURP SYNDROME",
            description: "Different metabolic side effects can develop when electrolyte-free solutions containing glycine, sorbitol, or mannitol are used.",
            subtitle: "While glycine increases ammonia level; sorbitol can lead to hyperglycemia in diabetics, and mannitol to volume overload",
            additionalInfo: "The ideal fluid should be iso-osmotic but electrolyte-free (for flow safety).",
          ),
          GenitourinarySurgeryAnesthesiaItem(
            title: "TURP SYNDROME CLINICAL AND HYPONATREMIA TREATMENT",
            description: "Severe hyponatremia can cause confusion, seizures, visual disturbances, and coma.",
            subtitle: "In treatment, hypertonic NaCl (3%) infusion (≤100 mL/hour) is given to symptomatic patients",
            additionalInfo: "Low-dose midazolam or similar anticonvulsants can be used for seizure control.",
          ),
          GenitourinarySurgeryAnesthesiaItem(
            title: "HYPOTHERMIA AND BLADDER PERFORATION",
            description: "Since cold irrigation fluid passage through a large surface area triggers hypothermia, all fluids must be warmed.",
            subtitle: "Severe vagal bradycardia and abdominal pain are typical in bladder perforation (<1%) cases",
            additionalInfo: "Perforation is usually seen in stages where surgical manipulation deepens.",
          ),
          GenitourinarySurgeryAnesthesiaItem(
            title: "SEPTICEMIA AND ANTIBIOTIC PROPHYLAXIS",
            description: "Applying appropriate antibiotic prophylaxis before TURP surgeries is a must to reduce septicemia risk.",
            additionalInfo: "It is recommended to sterilize urine before the procedure in patients with urinary tract infection.",
          ),
          GenitourinarySurgeryAnesthesiaItem(
            title: "ANESTHESIA FOR TURP AND BLOCK LEVEL (T10)",
            description: "Regional anesthesia (T10 block) ensures early recognition of TURP syndrome symptoms by keeping the patient's consciousness clear.",
            subtitle: "Spinal anesthesia is relatively contraindicated in case of suspected metastatic prostate cancer",
            additionalInfo: "Bladder fullness can be stimulated with pain in the patient during spinal anesthesia.",
          ),
          GenitourinarySurgeryAnesthesiaItem(
            title: "MONITORING AND BLOOD LOSS FOLLOW-UP",
            description: "Consciousness follow-up and ECG monitoring (myocardial ischemia risk 18%) are of vital importance in TURP surgeries.",
            subtitle: "Blood loss is an average of 3–5 mL/min; transfusion may be required in surgeries exceeding 90 minutes or in tissues larger than 45 grams",
            additionalInfo: "Hypotension can be a late sign of both blood loss and TURP syndrome.",
          ),
        ],
      ),
      GenitourinarySurgeryAnesthesiaCategory(
        categoryName: 'Lithotripsy',
        items: [
          GenitourinarySurgeryAnesthesiaItem(
            title: "ESWL (STONE CRUSHING) AND ARRHYTHMIA RISK",
            description: "Shock waves increase arrhythmia risk by affecting pacemakers and ICD devices; therefore waves must be synchronized with the R-wave.",
            subtitle: "While systemic vascular resistance (SVR) increases during the procedure, FRC can decrease at a rate of 30–60%",
            additionalInfo: "SVT (Supraventricular Tachycardia) development risk continues in patients despite R-wave synchronization.",
          ),
          GenitourinarySurgeryAnesthesiaItem(
            title: "LITHOTRIPSY ANESTHESIA SELECTION AND SEDATION",
            description: "While light sedation is sufficient in modern low-energy techniques; old water bath techniques require RA or GA at the T6 level.",
            subtitle: "Saline should be used instead of air to not deflect ultrasound waves when placing an epidural catheter",
            additionalInfo: "The anesthesia level should prevent severe pain that can occur during sand passing.",
          ),
          GenitourinarySurgeryAnesthesiaItem(
            title: "BRADYCARDIA MANAGEMENT AND GLYCOPYRROLATE",
            description: "Bradycardias developing during the procedure are treated with anticholinergic agents (especially glycopyrrolate).",
            additionalInfo: "Vagal stimulation is a frequent finding during stone crushing.",
          ),
          GenitourinarySurgeryAnesthesiaItem(
            title: "LITHOTRIPSY MONITORING STANDARDS",
            description: "Continuous ECG, oxygen saturation, and temperature follow-up are standard in all lithotripsy patients.",
            additionalInfo: "Arrhythmia follow-up should be maintained meticulously via the monitor.",
          ),
          GenitourinarySurgeryAnesthesiaItem(
            title: "FLUID MANAGEMENT AND DIURETIC SUPPORT",
            description: "Active fluid loading is applied in the operation to accelerate the passage of sand and stone pieces.",
            subtitle: "1000–2000 mL RL and low-dose furosemide support can be given after initial bolus",
            additionalInfo: "Maintaining hydration is also protective for renal perfusion.",
          ),
        ],
      ),
      GenitourinarySurgeryAnesthesiaCategory(
        categoryName: 'Non-oncologic Upper Ureter and Kidney Surgery',
        items: [
          GenitourinarySurgeryAnesthesiaItem(
            title: "LATERAL FLEXION (KIDNEY) POSITION",
            description: "An axillary roll must absolutely be placed to protect the brachial plexus and the position of the head should be kept neutral.",
            subtitle: "It should be checked whether the endotracheal tube is displaced after lateral flexion is given",
            additionalInfo: "This position is risky for the patient's comfort and nerve safety while providing access to the surgical field.",
          ),
          GenitourinarySurgeryAnesthesiaItem(
            title: "POSITION-DEPENDENT RESPIRATORY CHANGES",
            description: "In the lateral flexion position FRC decreases, dead space increases, and atelectasis risk rises significantly.",
            additionalInfo: "Attention should be paid to increases in airway pressures during mechanical ventilation.",
          ),
          GenitourinarySurgeryAnesthesiaItem(
            title: "SURGICAL MONITORING AND ACCESS",
            description: "Wide venous paths and invasive arterial monitoring are standard in major kidney surgeries.",
            additionalInfo: "Blood preparation should be made for unexpected major vessel injuries.",
          ),
        ],
      ),
      GenitourinarySurgeryAnesthesiaCategory(
        categoryName: 'Prostate Cancer',
        items: [
          GenitourinarySurgeryAnesthesiaItem(
            title: "RADICAL RETROPUBIC PROSTATEKTOMY (RRP)",
            description: "As it carries a large potential for bleeding, invasive arterial, CVP, and wide IV access are absolute requirements.",
            subtitle: "Hypotensive anesthesia can be chosen to reduce blood loss",
            additionalInfo: "Epidural catheter combination is usually preferred for postoperative analgesia.",
          ),
          GenitourinarySurgeryAnesthesiaItem(
            title: "ROBOTIC RADICAL PROSTATEKTOMY AND TRENDELENBURG",
            description: "Deep Trendelenburg position can cause upper airway edema and serious pulmonary complications (ventilation difficulty, etc.).",
            additionalInfo: "Robotic surgery taking a long time intensifies the side effects of the position.",
          ),
          GenitourinarySurgeryAnesthesiaItem(
            title: "BILATERAL ORCHIECTOMY ANESTHESIA",
            description: "Orchiectomy cases can be safely performed under GA or spinal anesthesia according to the patient's preference.",
            additionalInfo: "Generally they are short-term procedures with low risk of complications.",
          ),
        ],
      ),
      GenitourinarySurgeryAnesthesiaCategory(
        categoryName: 'Bladder Cancer',
        items: [
          GenitourinarySurgeryAnesthesiaItem(
            title: "TURBT AND OBTURATOR NERVE STIMULATION",
            description: "Cautery current stimulating the obturator nerve can lead to sudden adduction in the leg and bladder perforation.",
            subtitle: "Use of deep muscle paralysis starting with general anesthesia (GA) is a must to prevent this risk",
            additionalInfo: "This reflex cannot be suppressed in regional anesthesias where the block level is insufficient.",
          ),
          GenitourinarySurgeryAnesthesiaItem(
            title: "RADICAL CYSTECTOMY AND BLOOD LOSS MANAGEMENT",
            description: "Major blood loss is expected due to the wide surgical field and major vessels; invasive monitoring is of vital importance.",
            subtitle: "Hypotensive anesthesia techniques can be an option to take bleeding under control",
            additionalInfo: "Patients may have postoperative surgical intensive care needs.",
          ),
          GenitourinarySurgeryAnesthesiaItem(
            title: "URINARY DIVERSION AND ELECTROLYTE DISTURBANCES",
            description: "Directing urine into bowel segments leads to serious electrolyte and acid-base fluctuations.",
            subtitle: "While jejunal diversion causes hyponatremia and hyperkalemia; ileal/colon diversion causes hyperchloremic metabolic acidosis",
            additionalInfo: "Intestinal mucosa absorption features are the determinant of the metabolic picture.",
          ),
        ],
      ),
      GenitourinarySurgeryAnesthesiaCategory(
        categoryName: 'Testicular Cancer',
        items: [
          GenitourinarySurgeryAnesthesiaItem(
            title: "TESTICULAR CANCER AND CHEMOTHERAPY COMPLICATIONS",
            description: "In the young patient group, attention should be paid to the toxic effects of the chemotherapeutic agents used on organ functions.",
            additionalInfo: "Particularly nephrotoxicity and lung damage are the most risky situations.",
          ),
          GenitourinarySurgeryAnesthesiaItem(
            title: "ORGAN TOXICITY OF CHEMOTHERAPEUTIC AGENTS",
            description: "Cisplatin can cause nephrotoxicity, Bleomycin pulmonary fibrosis, and Vincristine peripheral neuropathy.",
            subtitle: "High FiO2 application in patients receiving Bleomycin can trigger lung damage",
            additionalInfo: "Preoperative chest X-ray and kidney tests must absolutely be checked.",
          ),
          GenitourinarySurgeryAnesthesiaItem(
            title: "RADICAL ORCHIECTOMY AND VAGAL REFLEXES",
            description: "Surgical pulling of the spermatic cord can lead to sudden bradycardia (reflex) by making strong vagal warning.",
            additionalInfo: "One should be alert against transient asystole risk.",
          ),
          GenitourinarySurgeryAnesthesiaItem(
            title: "RETROPERITONEAL LYMPH NODE DISSECTION (RPLND)",
            description: "Ligation of intercostal arteries during the operation carries a rare risk of paraplegia (spinal cord damage).",
            subtitle: "Keeping urine output at the level of 0.5 mL/kg/hour is required for renal protection",
            additionalInfo: "Volume replacement should be made with crystalloid/colloid at a rate of 1:2 or 1:3.",
          ),
        ],
      ),
      GenitourinarySurgeryAnesthesiaCategory(
        categoryName: 'Renal Cancer',
        items: [
          GenitourinarySurgeryAnesthesiaItem(
            title: "RCC (RENAL CELL CARCINOMA) PREOP PICTURE",
            description: "Erythrocytosis, hypercalcemia, HT, and liver dysfunction can be seen paraneoplastically in RCC patients.",
            subtitle: "Hemoglobin level should be targeted as 10 g/dL and above",
            additionalInfo: "Stauffer syndrome (dysfunction without liver involvement) can be detected.",
          ),
          GenitourinarySurgeryAnesthesiaItem(
            title: "RADICAL NEPHRECTOMY AND ANESTHESIA COMBINATION",
            description: "Epidural blockade added to general anesthesia both reduces intraoperative bleeding and provides excellent postoperative analgesia.",
            subtitle: "Use of IAFP, CVP, and TEE (in case of suspected thrombosis) is appropriate in monitoring",
            additionalInfo: "Urine output should be recorded periodically.",
          ),
          GenitourinarySurgeryAnesthesiaItem(
            title: "TUMOR THROMBUS AND VENA CAVA INVASION",
            description: "RCC tumor thrombus can extend to the Vena Cava Inferior (IVC); in this case major emboli risk and CPB requirement may occur.",
            subtitle: "Maximum care should be shown so that the thrombus is not mobilized while placing the CVP catheter",
            additionalInfo: "One should be prepared for severe hypotension that can develop during IVC clamping.",
          ),
        ],
      ),
      GenitourinarySurgeryAnesthesiaCategory(
        categoryName: 'Renal Transplant',
        items: [
          GenitourinarySurgeryAnesthesiaItem(
            title: "RENAL TRANSPLANT PREOPERATIVE PREPARATION (K <5.5)",
            description: "Recipient patients are wanted to have potassium (K) level below 5.5 mEq/L and have received dialysis in the last 24-48 hours.",
            additionalInfo: "The patient's 'dry weight' status and edema should be checked after dialysis.",
          ),
          GenitourinarySurgeryAnesthesiaItem(
            title: "INTRAOPERATIVE MANAGEMENT AND POST-CLAMP DIURESIS",
            description: "Diuretic (mannitol/furosemide) support can be given if urine output is not seen in the new kidney when vascular clamps are opened.",
            subtitle: "Wide venous path, IABP, and CVP follow-up is the gold standard in monitoring",
            additionalInfo: "General anesthesia is always the first choice in these cases.",
          ),
          GenitourinarySurgeryAnesthesiaItem(
            title: "HYPERKALEMIA CONTROL AND DONOR KIDNEY PROTECTION",
            description: "Potassium fluctuations should be monitored via ECG throughout the operation; the donor kidney should be preserved with iced RL.",
            additionalInfo: "Keeping ischemia time at minimum is critical for protection of the kidney.",
          ),
        ],
      ),
    ];
  }
}
