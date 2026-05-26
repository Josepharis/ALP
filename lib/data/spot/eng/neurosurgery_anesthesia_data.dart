import 'package:flutter/material.dart';

class NeurosurgeryAnesthesiaItem {
  final String title;
  final String description;
  final String? subtitle;
  final String? additionalInfo;

  NeurosurgeryAnesthesiaItem({
    required this.title,
    required this.description,
    this.subtitle,
    this.additionalInfo,
  });
}

class NeurosurgeryAnesthesiaCategory {
  final String categoryName;
  final List<NeurosurgeryAnesthesiaItem> items;

  NeurosurgeryAnesthesiaCategory({
    required this.categoryName,
    required this.items,
  });
}

class NeurosurgeryAnesthesiaData {
  static List<NeurosurgeryAnesthesiaCategory> getNeurosurgeryAnesthesiaData(
      BuildContext context) {
    return [
      NeurosurgeryAnesthesiaCategory(
        categoryName: 'Increased Intracranial Pressure (ICP / KİBAS)',
        items: [
          NeurosurgeryAnesthesiaItem(
            title: "NORMAL AND PATHOLOGICAL ICP VALUES",
            description: "An intracranial pressure (ICP) above 15 mmHg is considered pathological, and above 30 mmHg is considered life-threatening.",
            subtitle: "When ICP > 30 mmHg, cerebral blood flow (CBF) falls, brain edema increases, and a fatal vicious cycle begins",
            additionalInfo: "High ICP lowers cerebral perfusion pressure (CPP), causing the brain to remain ischemic. This condition is a surgical picture requiring emergency intervention.",
          ),
          NeurosurgeryAnesthesiaItem(
            title: "CUSHING'S TRIAD (HT + BRADYCARDIA + RESPIRATION)",
            description: "The classic clinical picture developing in response to severe increased intracranial pressure; includes hypertension, bradycardia, and irregular respiration.",
            additionalInfo: "Seeing this triad is a very late and critical finding indicating that brainstem herniation might have begun.",
          ),
          NeurosurgeryAnesthesiaItem(
            title: "CSF VOLUME AND DAILY PRODUCTION RATE",
            description: "The total volume of cerebrospinal fluid (CSF) is 150 mL, while the daily production amount is approximately 500 mL.",
            additionalInfo: "Imbalance between production and absorption (e.g., mass compression) can rapidly lead to increased ICP and hydrocephalus.",
          ),
          NeurosurgeryAnesthesiaItem(
            title: "PACO2 LEVEL AND ICP MANAGEMENT",
            description: "Lowering arterial carbon dioxide pressure (PaCO2) to the 30–33 mmHg level (mild hyperventilation) rapidly lowers ICP.",
            additionalInfo: "However, excessive hypocapnia (shunting) should be avoided due to the risk of vasoconstriction in patients with focal brain ischemia.",
          ),
          NeurosurgeryAnesthesiaItem(
            title: "MANNITOL USE AND DOSAGE",
            description: "Mannitol, an osmotic diuretic, reduces intracranial volume and pressure by drawing water from the brain parenchyma.",
            subtitle: "The standard dose is in the form of 0.25–0.5 g/kg IV bolus",
            additionalInfo: "Renal reserve and cardiac failure risks should be closely followed during use; it may cause electrolyte imbalance.",
          ),
          NeurosurgeryAnesthesiaItem(
            title: "FUROSEMIDE (LOOP DIURETIC) EFFECT",
            description: "Used to potentiate the effect of mannitol or to reduce CSF production in cases where mannitol is contraindicated.",
            additionalInfo: "Its effect usually begins 30 minutes after application and contributes to ICP management by reducing the systemic fluid load.",
          ),
          NeurosurgeryAnesthesiaItem(
            title: "STEROID THERAPY AND EDEMA TYPES",
            description: "Corticosteroids (Dexamethasone) are very effective in vasogenic edema developing due to specifically brain tumors.",
            additionalInfo: "However, clinical benefit of steroids has not been shown in cytotoxic edema developing due to trauma, and its routine use is not recommended.",
          ),
          NeurosurgeryAnesthesiaItem(
            title: "NEGATIVE EFFECTS OF HYPERGLYCEMIA",
            description: "High blood sugar exacerbates neuronal damage by increasing lactic acidosis in the ischemic brain tissue.",
            additionalInfo: "Maintaining glycemic levels empirically below 180 mg/dL in neurosurgery cases is vital for brain protection.",
          ),
        ],
      ),
      NeurosurgeryAnesthesiaCategory(
        categoryName: 'Mass Lesion & Craniotomy',
        items: [
          NeurosurgeryAnesthesiaItem(
            title: "SUPRATENTORIAL MASS SYMPTOMS",
            description: "Masses located above the tentorium usually lead to focal neurological losses such as epileptic seizures, hemiplegia (paralysis), and aphasia.",
            additionalInfo: "Airway safety and the speed of postoperative neurological assessment are at the forefront of the anesthesia plan.",
          ),
          NeurosurgeryAnesthesiaItem(
            title: "INFRATENTORIAL (POSTERIOR FOSSA) MASSES",
            description: "Masses located in the posterior fossa present with cerebellar dysfunction or brainstem compression findings.",
            additionalInfo: "The vital centers (respiration/circulation) may be at risk in case of brainstem involvement and can lead to sudden crises.",
          ),
          NeurosurgeryAnesthesiaItem(
            title: "PREOPERATIVE NEUROLOGICAL EXAM AND MEDICATIONS",
            description: "The patient's pre-operative basal neurological status, GCS score, and anticonvulsant drug levels must be recorded.",
            subtitle: "Anticonvulsant and corticosteroid therapy should continue on the morning of surgery",
            additionalInfo: "Heavy sedative premedication (due to the risk of increased ICP) should be avoided, especially in patients with mass effect.",
          ),
          NeurosurgeryAnesthesiaItem(
            title: "ANESTHESIA INDUCTION GOALS",
            description: "Reflex sympathetic responses that can develop during laryngoscopy and intubation should be prevented from increasing ICP.",
            subtitle: "The Propofol + Opioid + Mild Hyperventilation combination is one of the safest methods",
            additionalInfo: "Use of low-dose Sevoflurane (under 1 MAC) is suitable for maintenance as it maintains cerebral autoregulation.",
          ),
          NeurosurgeryAnesthesiaItem(
            title: "HEMODYNAMIC CONTROL WITH BETA-BLOCKERS",
            description: "Short-acting beta blockers (Esmolol, etc.) can be used to control blood pressure spikes (HT) in patients with high intracranial pressure.",
            additionalInfo: "The hemodynamic profile should be flat because pulsatile pressure increases can trigger the risk of intracranial hemorrhage.",
          ),
          NeurosurgeryAnesthesiaItem(
            title: "MAINTENANCE ANESTHESIA AND FLUID SELECTION",
            description: "TIVA (Propofol/Remifentanil) or low-dose volatile agents should be preferred in maintenance.",
            subtitle: "Target PaCO2: Should be maintained between 30–35 mmHg",
            additionalInfo: "Glucose-free isotonic solutions (0.9% NaCl) should be preferred in fluid therapy, and hypotonic fluids should CERTAINLY be avoided as they will increase brain edema.",
          ),
          NeurosurgeryAnesthesiaItem(
            title: "INTRAOPERATIVE GLYCEMIC CONTROL",
            description: "Elevation of blood sugar during surgery worsens the neurological prognosis.",
            additionalInfo: "Frequent glycemia follow-up should be done and the level should be kept <180 mg/dL, insulin perfusion should be started if necessary.",
          ),
          NeurosurgeryAnesthesiaItem(
            title: "EMERGENCE AND EXTUBATION STRATEGY",
            description: "Early and calm extubation is preferred in order to see the patient's neurological status immediately after craniotomy.",
            additionalInfo: "Excessive coughing and 'straining' (straining) during extubation can damage suture lines by spiking intracranial pressure; therefore, 'smooth emergence' techniques should be applied.",
          ),
        ],
      ),
      NeurosurgeryAnesthesiaCategory(
        categoryName: 'Posterior Fossa Surgery',
        items: [
          NeurosurgeryAnesthesiaItem(
            title: "OBSTRUCTIVE HYDROCEPHALUS AND VENTRICULOSTOMY",
            description: "Posterior fossa masses can block CSF flow; in these cases, emergency ventricular drainage may be required before anesthesia induction.",
            additionalInfo: "Rapid execution of drainage can cause herniation by creating relative pressure difference (brain shift); one should be careful.",
          ),
          NeurosurgeryAnesthesiaItem(
            title: "BRAINSTEM INJURY AND VITAL INSTABILITY",
            description: "Surgical maneuvers in the floor of the fourth ventricle stimulate respiratory and circulatory centers, leading to sudden blood pressure/pulse changes.",
            additionalInfo: "The surgeon should be informed at these critical moments and the operation should be paused for a temporary period.",
          ),
          NeurosurgeryAnesthesiaItem(
            title: "SITTING POSITION AND PNEUMOCEPHALUS RISK",
            description: "There is a risk of air filling inside (pneumocephalus) as a result of the head being open to atmospheric pressure in the sitting position.",
            subtitle: "Nitrous Oxide (N2O) should CERTAINLY NOT be used as it will cause increased ICP by increasing air volume",
            additionalInfo: "Furthermore, this position sets the stage for air embolism due to the pressure difference between the surgical field and the heart level.",
          ),
          NeurosurgeryAnesthesiaItem(
            title: "VENOUS AIR EMBOLISM (VAE) DIAGNOSIS",
            description: "The most sensitive diagnostic tool for air embolism that can develop in posterior fossa and craniotomy surgeries is TEE or Precordial Doppler.",
            subtitle: "Precordial doppler can catch even very small air bubbles like 0.25 mL as a 'millstone sound'",
            additionalInfo: "Sudden drop in end-tidal CO2 (EtCO2) value and increase in airway pressures also strengthen the suspicion of embolism.",
          ),
          NeurosurgeryAnesthesiaItem(
            title: "VAE EMERGENCY TREATMENT PROTOCOL",
            description: "When air embolism is detected, the surgical field should be wetted, 100% O2 should be switched to, and air should be aspirated from the CVP catheter.",
            subtitle: "Fluid and vasopressor support should be provided if there was hypotension, and compression should be applied to jugular veins",
            additionalInfo: "Although PEEP application increases venous pressure, if the patient has a patent foramen ovale (PFO), it can create a risk of paradoxical embolism by making a right-to-left shunt.",
          ),
        ],
      ),
      NeurosurgeryAnesthesiaCategory(
        categoryName: 'Stereotactic Surgery',
        items: [
          NeurosurgeryAnesthesiaItem(
            title: "STEREOTACTIC SURGERY INDICATIONS",
            description: "Used in the treatment of Parkinson's, epilepsy, and chronic pain for deep brain stimulation (DBS) or biopsy purposes.",
            additionalInfo: "The necessity of patient cooperation during surgery makes anesthesia depth management critical.",
          ),
          NeurosurgeryAnesthesiaItem(
            title: "SELECTION OF ANESTHETIC AGENTS (PROPOFOL / DEX)",
            description: "Conscious sedation, allowing for 'talking surgery', usually with propofol and dexmedetomidine infusion, is preferred.",
            additionalInfo: "Ideal anesthesia is a balanced approach that does not impair neurological monitoring but prevents the patient from feeling pain.",
          ),
          NeurosurgeryAnesthesiaItem(
            title: "FRAME USE AND AIRWAY DIFFICULTY",
            description: "The stereotactic frame fixed to the patient's head physically prevents airway intervention and creates a risk of difficult intubation.",
            additionalInfo: "In an emergency, it should be known beforehand how the frame will be removed and necessary equipment should be kept ready.",
          ),
        ],
      ),
      NeurosurgeryAnesthesiaCategory(
        categoryName: 'Head Trauma',
        items: [
          NeurosurgeryAnesthesiaItem(
            title: "GLASGOW COMA SCALE (GCS) AND MORTALITY",
            description: "A GCS score below 8 after trauma indicates serious brain damage and mortality is approximately 35%.",
            additionalInfo: "Patients with GCS ≤ 8 should be intubated without delay for airway safety.",
          ),
          NeurosurgeryAnesthesiaItem(
            title: "SYSTOLIC BLOOD PRESSURE (SBP) AND PROGNOSIS",
            description: "In head trauma, a drop in systolic blood pressure below 80 mmHg even once is associated with poor prognosis.",
            additionalInfo: "Aggressive maintenance of blood pressure is essential to prevent secondary brain injury.",
          ),
          NeurosurgeryAnesthesiaItem(
            title: "CAUSES OF SECONDARY BRAIN INJURY",
            description: "Hypoxia, hypercapnia, and hypotension developing after the initial blow exacerbate the damage by leaving the brain ischemic.",
            additionalInfo: "The primary duty of the anesthesiologist is to stop secondary injury by preventing this triad (hypoxia, hypercapnia, hypotension).",
          ),
          NeurosurgeryAnesthesiaItem(
            title: "INDUCTION AND STABILIZATION IN TRAUMA PATIENTS",
            description: "Cervical spine in-line stabilization should be performed while Applying Rapid Sequence Induction (RSI) due to possible gastric fullness.",
            subtitle: "Blind nasal intubation (due to the risk of the tube entering the brain) is CERTAINLY contraindicated in suspected basal skull fracture",
            additionalInfo: "Prior IV lidocaine or opioid support can be provided to prevent increased ICP during laryngoscopy.",
          ),
          NeurosurgeryAnesthesiaItem(
            title: "INTRAOPERATIVE CPP AND PACO2 GOALS",
            description: "Cerebral Perfusion Pressure (CPP) should be maintained in the 70–110 mmHg range in trauma patients.",
            subtitle: "Excessive PaCO2 drop (<30 mmHg) performed to lower ICP should be avoided as it would make the brain ischemic",
            additionalInfo: "Modern approach is to provide high perfusion pressure accompanied by normocarbia or mild hypocapnia.",
          ),
          NeurosurgeryAnesthesiaItem(
            title: "POST-TRAUMA SYSTEMIC COMPLICATIONS",
            description: "Disseminated Intravascular Coagulation (DIC), Diabetes Insipidus (DI), and stress ulcers can develop in serious head traumas.",
            additionalInfo: "The DI picture in patients receiving osmotic treatment (Mannitol) can rapidly lead to dehydration and electrolyte crisis; urine follow-up is vital.",
          ),
        ],
      ),
      NeurosurgeryAnesthesiaCategory(
        categoryName: 'Intracranial Aneurysm & AVM',
        items: [
          NeurosurgeryAnesthesiaItem(
            title: "ANEURYSM LOCATION AND CIRCLE OF WILLIS",
            description: "85% of intracranial aneurysms are located in the anterior segment of the circle of Willis.",
            subtitle: "Saccular (berry) aneurysms are the most common cause of non-traumatic subarachnoid hemorrhage (SAH)",
            additionalInfo: "Aneurysms usually do not give symptoms until they rupture, but they can cause cranial nerve compression according to their size.",
          ),
          NeurosurgeryAnesthesiaItem(
            title: "RUPTURE MORTALITY AND TIMING",
            description: "10% of patients die before reaching the hospital after aneurysm rupture, and 25% die within the first 3 months.",
            additionalInfo: "Early surgery (first 72 hours) is the current gold standard to reduce the risk of re-bleeding.",
          ),
          NeurosurgeryAnesthesiaItem(
            title: "CEREBRAL VASOSPASM AND TCD TRACKING",
            description: "Vasospasm developing after SAH (seen in 30%) is the most common cause of delayed ischemic damage and operation failure.",
            subtitle: "It usually peaks between days 4–14; TCD flow velocity >200 cm/sec means serious spasm",
            additionalInfo: "Lindegaard ratio (MCA/ICA) rising above 3 also supports the diagnosis. Brain tissue oxygen dropping below 20 mmHg registers ischemia.",
          ),
          NeurosurgeryAnesthesiaItem(
            title: "PROTECTION FROM VASOSPASM AND 3H THERAPY",
            description: "The 3H (Hypervolemia, Hemodilution, Hypertension) protocol is applied to increase perfusion in patients with vasospasm.",
            subtitle: "Standard use of oral Nimodipine as protective; hypothermia may provide neuroprotection",
            additionalInfo: "Invasive monitoring like CVP is recommended during 3H therapy due to the risk of heart failure and pulmonary edema.",
          ),
          NeurosurgeryAnesthesiaItem(
            title: "AVM PRESENTATION AND BLEEDING RISK",
            description: "Arteriovenous malformations (AVMs) most commonly present with severe headache and epileptic seizures.",
            subtitle: "The risk of major uncontrolled bleeding during surgery is high; at least two large-bore IV routes should be opened",
            additionalInfo: "After AVM removal, vessels in the surrounding 'steal' effect can suddenly be exposed to high pressure and cause edema (Normal pressure breakthrough).",
          ),
        ],
      ),
      NeurosurgeryAnesthesiaCategory(
        categoryName: 'Spinal Surgery',
        items: [
          NeurosurgeryAnesthesiaItem(
            title: "ANESTHETIC DIFFICULTIES OF THE PRONE POSITION",
            description: "In patients lying face down, both ventilation management is difficult and airway intervention is impossible in a possible crisis.",
            additionalInfo: "Chest and abdomen should be kept free, and compressions that would obstruct venous return should certainly be avoided.",
          ),
          NeurosurgeryAnesthesiaItem(
            title: "TRANSTHORACIC APPROACH AND ONE-LUNG VENTILATION",
            description: "One-lung ventilation may be required if an anterior approach (transthoracic) is applied in thoracic spine surgeries.",
            additionalInfo: "In this case, intraoperative lung isolation should be ensured with a double-lumen tube or bronchial blocker.",
          ),
          NeurosurgeryAnesthesiaItem(
            title: "POSITION-DEPENDENT EYE COMPLICATIONS (POVL)",
            description: "Vision loss (POVL) that can develop after prone position in long surgeries is an irreversible disaster.",
            subtitle: "Primary causes are ischemic optic neuropathy, retinal artery occlusion, and corneal damage",
            additionalInfo: "Eyes should be manually checked every 15 minutes that they are not compressing the pillow or frame.",
          ),
          NeurosurgeryAnesthesiaItem(
            title: "POVL RISK FACTORS AND PRECAUTIONS",
            description: "Surgeries longer than 6 hours, >1 liter blood loss, hypertension, DM and obesity dramatically increase POVL risk.",
            additionalInfo: "The patient's head should be kept higher than the heart level and systemic hypotension should CERTAINLY be avoided.",
          ),
          NeurosurgeryAnesthesiaItem(
            title: "MONITORING SAFETY BEFORE POSITIONING",
            description: "All invasive lines and monitoring should be fully operational before the patient is given the prone position.",
            additionalInfo: "After the position is given, tube placement and lung sounds MUST be re-confirmed.",
          ),
          NeurosurgeryAnesthesiaItem(
            title: "INTRAOPERATIVE EVOKED POTENTIAL TRACKING",
            description: "Motor (MEP) and Somatosensory (SSEP) evoked potentials are frequently used to prevent spinal cord damage.",
            additionalInfo: "During these follow-ups, volatile agent dose should be kept low (under 0.5 MAC) or completely switched to the TIVA method; otherwise signals disappear.",
          ),
        ],
      ),
      NeurosurgeryAnesthesiaCategory(
        categoryName: 'Quick reminder – Critical Neurosurgery Numbers',
        items: [
          NeurosurgeryAnesthesiaItem(
            title: "NORMAL, PATHOLOGICAL, AND CRITICAL ICP LIMITS",
            description: "Normal ICP: < 10 mmHg; Pathological ICP: > 15 mmHg; Critical ICP: > 30 mmHg.",
            additionalInfo: "As pressure increases, maintaining cerebral perfusion becomes more difficult and the risk of herniation folds.",
          ),
          NeurosurgeryAnesthesiaItem(
            title: "PACO2 TARGET RANGE",
            description: "The ideal target for neurosurgery is 30–35 mmHg.",
            additionalInfo: "This range both 'relaxes' the brain surgically and keeps the widespread ischemia risk at minimum.",
          ),
          NeurosurgeryAnesthesiaItem(
            title: "MANNITOL DOSAGE INFO",
            description: "Applied at 0.25–0.5 g/kg IV bolus dose.",
            additionalInfo: "Usually should be given 20–30 minutes before the surgeon starts the dural opening for its effect to peak.",
          ),
          NeurosurgeryAnesthesiaItem(
            title: "TCD VALUE IN VASOSPASM (>200)",
            description: "Flow velocity measured with TCD >200 cm/sec confirms serious cerebral vasospasm.",
            additionalInfo: "Brain tissue oxygen (PbtO2) falling below 20 mmHg shows that clinical ischemia has begun.",
          ),
          NeurosurgeryAnesthesiaItem(
            title: "CPP AND SBP CRITICAL GOALS",
            description: "CPP target in trauma patient is 70–110 mmHg, Systolic Blood Pressure (SBP) lower limit is 80 mmHg.",
            additionalInfo: "A drop in blood pressure even once below this limit directly adversely affects prognosis.",
          ),
          NeurosurgeryAnesthesiaItem(
            title: "GCS INTUBATION LIMIT",
            description: "Entubation is a must for emergency airway safety of all patients with Glasgow Coma Scale score 8 and below.",
            additionalInfo: "GCS < 8 is synonymous with loss of airway reflexes and risk of aspiration.",
          ),
        ],
      ),
    ];
  }
}
