import 'package:flutter/material.dart';

class OphthalmicSurgeryAnesthesiaItem {
  final String title;
  final String description;
  final String? subtitle;
  final String? additionalInfo;

  OphthalmicSurgeryAnesthesiaItem({
    required this.title,
    required this.description,
    this.subtitle,
    this.additionalInfo,
  });
}

class OphthalmicSurgeryAnesthesiaCategory {
  final String categoryName;
  final List<OphthalmicSurgeryAnesthesiaItem> items;

  OphthalmicSurgeryAnesthesiaCategory({
    required this.categoryName,
    required this.items,
  });
}

class OphthalmicSurgeryAnesthesiaData {
  static List<OphthalmicSurgeryAnesthesiaCategory>
      getOphthalmicSurgeryAnesthesiaData(BuildContext context) {
    return [
      OphthalmicSurgeryAnesthesiaCategory(
        categoryName: 'Intraocular Pressure (IOP) Dynamics',
        items: [
          OphthalmicSurgeryAnesthesiaItem(
            title: "NORMAL IOP VALUES AND RANGE (12-20 MMHG)",
            description: "In a healthy individual, intraocular pressure (IOP) normally remains stable between 12 and 20 mmHg.",
            additionalInfo: "Maintenance of this pressure is critical for retinal perfusion and the anatomical integrity of the eye.",
          ),
          OphthalmicSurgeryAnesthesiaItem(
            title: "EFFECT OF EYE MOVEMENTS ON IOP",
            description: "A simple blink increases pressure by +5 mmHg, while severe squinting or squeezing can raise it up to 50 mmHg.",
            additionalInfo: "Contraction of extraocular muscles directly increases pressure on the globe.",
          ),
          OphthalmicSurgeryAnesthesiaItem(
            title: "EFFECT OF VOLATILE AGENTS ON IOP",
            description: "Inhalational agents reduce IOP both by lowering systemic blood pressure and by relaxing extraocular muscles.",
            additionalInfo: "These agents are advantageous for providing low IOP during eye surgery.",
          ),
          OphthalmicSurgeryAnesthesiaItem(
            title: "IV AGENTS AND THE SPECIAL CASE OF KETAMINE",
            description: "While most intravenous anesthetics lower IOP, Ketamine may increase it due to sympathetic activation and increased eye muscle tone.",
            subtitle: "Caution should be exercised against pressure increases in inductions with Ketamine",
            additionalInfo: "Propofol, thiopental, and etomidate significantly lower IOP.",
          ),
          OphthalmicSurgeryAnesthesiaItem(
            title: "SUCCINYLCHOLINE AND IOP INCREASE (+5-10 MMHG)",
            description: "Following the use of Succinylcholine, an increase in pressure is observed for 5-10 minutes due to tonic contraction in extraocular muscles.",
            additionalInfo: "Extracellular calcium influx and choroidal vasodilation also play a role in this increase.",
          ),
          OphthalmicSurgeryAnesthesiaItem(
            title: "SAFETY OF NON-DEPOLARIZING NMB AGENTS",
            description: "Non-depolarizing neuromuscular blockers like Rocuronium and Vecuronium do not affect intraocular pressure.",
            additionalInfo: "They are preferred in open-eye injuries where pressure increase is undesirable.",
          ),
          OphthalmicSurgeryAnesthesiaItem(
            title: "TOPICAL ANTICHOLINERGICS AND GLAUCOMA RISK",
            description: "Atropine drops applied to the eye can cause mydriasis and raise pressure to dangerous levels in patients with closed-angle glaucoma.",
            additionalInfo: "They can trigger an acute glaucoma crisis by impairing the drainage of aqueous humor.",
          ),
          OphthalmicSurgeryAnesthesiaItem(
            title: "SYSTEMIC ANTICHOLINERGICS AND IOP RELATIONSHIP",
            description: "Systemic doses of agents like Atropine or Glycopyrrolate given intravenously have not been associated with an increase in IOP.",
            additionalInfo: "These agents can be safely used to protect against the oculocardiac reflex.",
          ),
        ],
      ),
      OphthalmicSurgeryAnesthesiaCategory(
        categoryName: 'Oculocardiac Reflex (OCR)',
        items: [
          OphthalmicSurgeryAnesthesiaItem(
            title: "OCR MECHANISM: TRIGEMINAL (AFF) - VAGAL (EFF)",
            description: "The afferent pathway of the reflex triggered by pressure on the globe or traction of extraocular muscles is Trigeminal (V1), and the efferent pathway is Vagus.",
            additionalInfo: "It creates a parasympathetic activation similar to the 'Bezold-Jarisch-like' reflex.",
          ),
          OphthalmicSurgeryAnesthesiaItem(
            title: "OPERATIONS WHERE OCR IS MOST COMMONLY SEEN (PEDIATRIC STRABISMUS)",
            description: "The reflex is most commonly seen in strabismus surgeries performed in the pediatric age group and during retrobulbar block applications.",
            additionalInfo: "Especially traction of the medial rectus muscle is the strongest trigger.",
          ),
          OphthalmicSurgeryAnesthesiaItem(
            title: "OCR CLINICAL FINDINGS AND ARRHYTHMIAS",
            description: "Its classic finding is bradycardia; it can also lead to AV block, ventricular ectopies, asystole, and other serious arrhythmias.",
            additionalInfo: "Continuous ECG monitoring is of vital importance in these surgeries.",
          ),
          OphthalmicSurgeryAnesthesiaItem(
            title: "PREVENTION OF OCR AND PREMEDICATION STRATEGIES",
            description: "Anticholinergic premedication (atropine), maintenance of deep anesthesia, and sometimes retrobulbar block can reduce the risk of OCR.",
            subtitle: "However, it should be remembered that the application of retrobulbar block itself can trigger OCR",
            additionalInfo: "IV Atropine can be used prophylactically at a dose of 10 mcg/kg.",
          ),
          OphthalmicSurgeryAnesthesiaItem(
            title: "OCR TREATMENT STEPS AND EMERGENCY INTERVENTION",
            description: "The first step when arrhythmia develops is immediate cessation of surgical manipulation and checking the patient's ventilation/oxygenation.",
            subtitle: "In resistant cases, IV Atropine and local anesthetic injection into the rectus muscle are applied",
            additionalInfo: "The surgeon should be warned to proceed carefully when arrhythmia stops; the reflex is fatiguable in nature.",
          ),
        ],
      ),
      OphthalmicSurgeryAnesthesiaCategory(
        categoryName: 'Intraocular Gas Expansion',
        items: [
          OphthalmicSurgeryAnesthesiaItem(
            title: "GAS INJECTION IN VITREORETINAL SURGERY",
            description: "In retinal detachment or vitreous surgeries, air or gases like SF6/C3F8 are injected into the globe for tamponade purposes.",
            additionalInfo: "These gases act as a bubble to keep retinal layers in place.",
          ),
          OphthalmicSurgeryAnesthesiaItem(
            title: "N2O (NITROUS OXIDE) AND GAS BUBBLE INTERACTION",
            description: "Nitrous oxide (N2O) diffuses rapidly into the gas bubble in the eye due to the gas pressure difference in the blood, increasing bubble volume.",
            subtitle: "In the case of 70% N2O use, the bubble volume triples within 30 minutes and increases IOP uncontrollably",
            additionalInfo: "This situation can lead to vision loss by impairing retinal perfusion.",
          ),
          OphthalmicSurgeryAnesthesiaItem(
            title: "N2O DISCONTINUATION TIME AND PRECAUTIONS (>=15 MIN)",
            description: "N2O must be stopped at least 15 minutes before intraocular gas injection and its use is contraindicated until the gas is absorbed in the postoperative period.",
            subtitle: "N2O should be avoided for 5 days for air, 10 days for SF6, and 30 days for C3F8",
            additionalInfo: "Attaching warning bracelets to patients regarding this issue is a safe approach.",
          ),
        ],
      ),
      OphthalmicSurgeryAnesthesiaCategory(
        categoryName: 'Systemic Effects of Ophthalmic Drugs',
        items: [
          OphthalmicSurgeryAnesthesiaItem(
            title: "PHENYLEPHRINE (2.5%) AND SYSTEMIC BLOOD PRESSURE EFFECT",
            description: "Topically applied Phenylephrine can cause severe hypertension, tachycardia, and arrhythmia, especially in children and the elderly.",
            additionalInfo: "Cardiac patients should be monitored closely due to its systemic vasoconstrictor effects.",
          ),
          OphthalmicSurgeryAnesthesiaItem(
            title: "ECHOTHIOPHATE AND PSEUDOCHOLINESTERASE INHIBITION",
            description: "Echothiophate, an irreversible cholinesterase inhibitor, causes severe pseudocholinesterase deficiency that can prolong the Succinylcholine effect up to 3-7 weeks.",
            additionalInfo: "The use of Succinylcholine in those using this drug prolongs apnea to a dangerous extent.",
          ),
          OphthalmicSurgeryAnesthesiaItem(
            title: "EPINEPHRINE DROPS AND DYSRHYTHMIA RISK",
            description: "There is a risk of hypertension, tachycardia, and dysrhythmia developing depending on systemic absorption in intraocular surgery.",
            additionalInfo: "Sensitivity to epinephrine may increase if halogenated anesthetics are used.",
          ),
          OphthalmicSurgeryAnesthesiaItem(
            title: "TIMOLOL AND BETA-BLOCKER SIDE EFFECTS (BRADYCARDIA)",
            description: "Systemic absorption of Timolol, used to lower eye pressure, can lead to cardiac complications like bradycardia and AV block.",
            additionalInfo: "It can also trigger bronchospasm in asthmatic patients.",
          ),
        ],
      ),
      OphthalmicSurgeryAnesthesiaCategory(
        categoryName: 'General Anesthesia for Ophthalmic Surgery',
        items: [
          OphthalmicSurgeryAnesthesiaItem(
            title: "PREOPERATIVE PREPARATION AND COMORBIDITY FOLLOW-UP",
            description: "Since patients undergoing eye surgery are usually in advanced age, their cardiac and diabetic status should be optimized beforehand.",
            additionalInfo: "Hypertension and coronary artery disease often accompany these patients.",
          ),
          OphthalmicSurgeryAnesthesiaItem(
            title: "IOP CONTROL DURING INDUCTION",
            description: "Intubation should be performed after deep anesthesia is provided to suppress the IOP increase created by laryngoscopy.",
            subtitle: "Although the use of sch in open-eye injuries is controversial, practically no vitreous loss is observed",
            additionalInfo: "Agents that lower IOP (Propofol etc.) should be preferred in induction.",
          ),
          OphthalmicSurgeryAnesthesiaItem(
            title: "INTRAOPERATIVE MONITORING AND DIFF. FROM MH",
            description: "While OCR follow-up is done with ECG, End-tidal CO2 follow-up is important against the possibility of Malignant Hyperthermia (MH).",
            additionalInfo: "Temperature monitoring should also be part of standard monitoring.",
          ),
          OphthalmicSurgeryAnesthesiaItem(
            title: "ANESTHESIA MAINTENANCE AND EYE AKINESIA",
            description: "For successful surgery, absolute immobility of the eye is targeted by providing sufficient NMB levels with volatile agents and opioids.",
            additionalInfo: "The 'upward gaze' of the eye during surgery (Bell's phenomenon) must be controlled.",
          ),
          OphthalmicSurgeryAnesthesiaItem(
            title: "PONV PROPHYLAXIS AND COMBINED TREATMENT",
            description: "The risk of Postoperative Nausea and Vomiting (PONV) is high in eye surgeries; 5-HT3 antagonists and dexamethasone are frequently used.",
            subtitle: "Ondansetron/Granisetron ± 8–10 mg Dexamethasone is standard prophylaxis",
            additionalInfo: "Nausea must absolutely be controlled to prevent secondary increase in intraocular pressure.",
          ),
          OphthalmicSurgeryAnesthesiaItem(
            title: "EXTUBATION MANAGEMENT AND USE OF LIDOCAINE",
            description: "Since coughing-straining (valsalva) increases IOP excessively, extubation should be done at intermediate depth and with lidocaine support.",
            subtitle: "Airway reflexes can be softened by giving 1.5 mg/kg lidocaine IV 1–2 minutes before extubation",
            additionalInfo: "A smooth emergence is critical for the stability of surgical sutures.",
          ),
        ],
      ),
      OphthalmicSurgeryAnesthesiaCategory(
        categoryName: 'Retrobulbar Block',
        items: [
          OphthalmicSurgeryAnesthesiaItem(
            title: "RETROBULBAR BLOCK TECHNIQUE AND APPLICATION (25G NEEDLE)",
            description: "2-5 mL of local anesthetic is injected starting from the lateral 1/3 of the lower eyelid to a depth of 3.5 cm with a 25G needle.",
            additionalInfo: "Local anesthetic is given into the muscle cone to provide sensory and motor block.",
          ),
          OphthalmicSurgeryAnesthesiaItem(
            title: "LOCAL ANESTHETICS PREFERRED IN THE BLOCK",
            description: "Usually combinations of 2% lidocaine and 0.75% bupivacaine are used; adrenaline can be added to slow down absorption.",
            additionalInfo: "Hyaluronidase can also be added to increase block quality.",
          ),
          OphthalmicSurgeryAnesthesiaItem(
            title: "SUCCESSFUL BLOCK CRITERIA AND AKINESIA",
            description: "Provision of complete motor akinesia in the eye and loss of oculocardiac reflex after the block indicate the success of the block.",
            additionalInfo: "Sense of pain is completely eliminated in the patient.",
          ),
          OphthalmicSurgeryAnesthesiaItem(
            title: "RETROBULBAR BLOCK COMPLICATIONS AND APNEA",
            description: "The most feared complications are nerve injury, intravascular injection, and late apnea that can develop after 20 minutes.",
            subtitle: "The apnea picture usually resolves spontaneously within 1 hour",
            additionalInfo: "Surgical canthotomy may be required in case of retrobulbar hemorrhage.",
          ),
          OphthalmicSurgeryAnesthesiaItem(
            title: "BLOCK CONTRAINDICATIONS AND MYOPIA RISK",
            description: "Block should be avoided in coagulopathy, advanced axial myopia (globe length is long), and open-eye injury.",
            additionalInfo: "Risk of globe perforation is significantly increased in those with myopia.",
          ),
        ],
      ),
      OphthalmicSurgeryAnesthesiaCategory(
        categoryName: 'Other Regional Techniques',
        items: [
          OphthalmicSurgeryAnesthesiaItem(
            title: "PERIBULBAR BLOCK AND SAFETY ADVANTAGE",
            description: "Since the needle is applied outside the muscle cone, the risk of optic nerve and vessel injury is lower compared to retrobulbar block.",
            additionalInfo: "It is considered a less invasive method.",
          ),
          OphthalmicSurgeryAnesthesiaItem(
            title: "DISADVANTAGE OF PERIBULBAR BLOCK (LATENT EFFECT)",
            description: "LA diffusion takes time due to injection outside the muscle cone and block effect starts later.",
            additionalInfo: "Usually requires higher volume of LA.",
          ),
          OphthalmicSurgeryAnesthesiaItem(
            title: "PERIBULBAR BLOCK APPLICATION LINE",
            description: "Application is done from the lateral canthus-limbus line; two separate injection points can be preferred.",
            additionalInfo: "Facial nerve blockade is usually provided together with this technique.",
          ),
          OphthalmicSurgeryAnesthesiaItem(
            title: "SUB-TENON (EPISCLERAL) BLOCK TECHNIQUE",
            description: "Administration of local anesthetic into the peribulbar space with the help of a blunt cannula placed under Tenon's fascia.",
            additionalInfo: "Applied by entering from under the conjunctiva.",
          ),
          OphthalmicSurgeryAnesthesiaItem(
            title: "ADVANTAGES OF SUB-TENON BLOCK",
            description: "It is considered one of the safest regional techniques as it does not carry a risk of needle perforation.",
            additionalInfo: "Ideal for minimally invasive surgeries.",
          ),
          OphthalmicSurgeryAnesthesiaItem(
            title: "FACIAL NERVE BLOCK AND LID AKINESIA",
            description: "Prevents sudden closure of the eyelid (blinking) during surgery by paralyzing the orbicularis oculi muscle.",
            additionalInfo: "Retrobulbar block alone may not stop lid movements.",
          ),
          OphthalmicSurgeryAnesthesiaItem(
            title: "NADBATH TECHNIQUE AND AIRWAY RISK",
            description: "A technique for blocking the facial nerve at its exit from the stylomastoid foramen; however, it carries a risk of glossopharyngeal and vagus nerve blockade.",
            additionalInfo: "Not frequently preferred due to the risk of airway obstruction.",
          ),
        ],
      ),
      OphthalmicSurgeryAnesthesiaCategory(
        categoryName: 'Topical and Sedation',
        items: [
          OphthalmicSurgeryAnesthesiaItem(
            title: "USES OF TOPICAL ANESTHESIA",
            description: "In non-invasive superficial procedures like cataract (phacoemulsification), anesthesia can be provided with drops dripped onto the cornea.",
            additionalInfo: "Patient cooperation is of vital importance in this technique.",
          ),
          OphthalmicSurgeryAnesthesiaItem(
            title: "RISKS OF DEEP SEDATION AND THINGS TO AVOID",
            description: "Deep sedation is not recommended in eye surgery due to sudden awakening, movement, or snoring (shakes the eye) of the patient.",
            additionalInfo: "Sudden movements in intraocular surgery can lead to permanent vision loss.",
          ),
          OphthalmicSurgeryAnesthesiaItem(
            title: "LIGHT SEDATION AND AGENT COMBINATIONS",
            description: "Midazolam 1-2 mg and low-dose opioid combinations (remifentanil etc.) can be preferred for comfort.",
            additionalInfo: "Light 'conscious sedation' techniques supported with Propofol or Etomidate can be applied.",
          ),
        ],
      ),
    ];
  }
}
