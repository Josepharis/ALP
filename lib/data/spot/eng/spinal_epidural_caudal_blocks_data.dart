import 'package:flutter/material.dart';

class SpinalEpiduralCaudalBlocksItem {
  final String title;
  final String description;
  final String? subtitle;
  final String? additionalInfo;

  SpinalEpiduralCaudalBlocksItem({
    required this.title,
    required this.description,
    this.subtitle,
    this.additionalInfo,
  });
}

class SpinalEpiduralCaudalBlocksCategory {
  final String categoryName;
  final List<SpinalEpiduralCaudalBlocksItem> items;

  SpinalEpiduralCaudalBlocksCategory({
    required this.categoryName,
    required this.items,
  });
}

class SpinalEpiduralCaudalBlocksData {
  static List<SpinalEpiduralCaudalBlocksCategory>
      getSpinalEpiduralCaudalBlocksData(BuildContext context) {
    return [
      SpinalEpiduralCaudalBlocksCategory(
        categoryName: 'Anatomy',
        items: [
          SpinalEpiduralCaudalBlocksItem(
            title: "VERTEBRAE COUNTS AND SPINAL ALIGNMENT (7C-12T-5L-5S)",
            description: "The human spine consists of 7 cervical, 12 thoracic, 5 lumbar, and 5 sacral vertebrae.",
            additionalInfo: "The L5-S1 space is one of the widest intervals for spinal needle entry due to the lumbosacral angle.",
          ),
          SpinalEpiduralCaudalBlocksItem(
            title: "ANATOMICAL LAYERS PASSED DURING NEEDLE ENTRY",
            description: "Skin, subcutaneous tissue, supraspinous ligament, interspinous ligament, ligamentum flavum, and epidural space are passed sequentially.",
            additionalInfo: "Entrance into the spinal space is confirmed by the arrival of CSF when the dura mater is passed.",
          ),
          SpinalEpiduralCaudalBlocksItem(
            title: "SPINAL CORD TERMINATION AND AGE-RELATED DIFFERENCES (L1-L3)",
            description: "The spinal cord (medulla spinalis) ends at the L1 level in adults and the L3 level in children.",
            additionalInfo: "Entry should be made below these levels (L3-L4 or L4-L5) to avoid needle trauma.",
          ),
          SpinalEpiduralCaudalBlocksItem(
            title: "DURAL SAC TERMINATION AND SACRAL ANATOMY (S2-S3)",
            description: "The dural sac ends at the S2 level in adults and the S3 level in children.",
            additionalInfo: "This distance should be kept in mind to avoid puncturing the dural pouch while performing a caudal block.",
          ),
          SpinalEpiduralCaudalBlocksItem(
            title: "ARTERIA RADICULARIS MAGNA (ADAMKIEWICZ) AND BLOOD SUPPLY",
            description: "The Artery of Adamkiewicz provides the main blood supply to the anterior lower 2/3 of the spinal cord.",
            additionalInfo: "It usually arises between the T9-L2 segments; its damage can lead to ischemia.",
          ),
        ],
      ),
      SpinalEpiduralCaudalBlocksCategory(
        categoryName: 'Mechanism of Action',
        items: [
          SpinalEpiduralCaudalBlocksItem(
            title: "DIFFERENTIAL BLOCK ORDER AND NERVE FIBER TYPES",
            description: "The order of blockade is sympathetic fibers (fastest), sensory fibers, and finally motor fibers.",
            additionalInfo: "The sympathetic block level occurs 2-6 segments above the sensory level.",
          ),
          SpinalEpiduralCaudalBlocksItem(
            title: "CARDIAC ACCELERATOR FIBERS (T1-T4) AND HEMODYNAMICS",
            description: "Blockade of sympathetic fibers arising from the T1-T4 segments causes bradycardia and a drop in blood pressure.",
            subtitle: "Fluid loading alone may be insufficient to prevent hypotension; agents like Ephedrine/Calcium may be required",
            additionalInfo: "These fibers increase ventricular contractility and heart rate.",
          ),
          SpinalEpiduralCaudalBlocksItem(
            title: "PHRENIC NERVE (C3-C5) AND RESPIRATORY EFFECTS IN HIGH BLOCK",
            description: "Elevation of blockade to C3-C5 levels involves the phrenic nerve, leading to diaphragmatic paralysis and respiratory failure.",
            additionalInfo: "This is a condition requiring emergency intubation and respiratory support.",
          ),
          SpinalEpiduralCaudalBlocksItem(
            title: "SYMPATHETIC BLOCK (T5-L1) AND GI MOTILITY RELATIONSHIP",
            description: "Sympathetic blockade between T5-L1 causes an increase in parasympathetic (vagal) tone and acceleration of bowel motility.",
            additionalInfo: "Increased vagal activity can sometimes be accompanied by bradycardia and nausea.",
          ),
          SpinalEpiduralCaudalBlocksItem(
            title: "SACRAL BLOCK (S2-S4) AND URINARY RETENTION MECHANISM",
            description: "Blockade of sacral S2-S4 fibers impairs bladder detrusor muscle function, leading to urinary retention.",
            additionalInfo: "Patients may lose the sensation of needing to urinate; this is an important criterion in recovery.",
          ),
          SpinalEpiduralCaudalBlocksItem(
            title: "SURGICAL STRESS RESPONSE AND REGIONAL ANESTHESIA EFFECT",
            description: "Spinal and epidural anesthesia significantly suppress the endocrine and metabolic stress response developing due to surgical trauma.",
            additionalInfo: "Cellular immunity is preserved and the risk of thromboembolic events decreases.",
          ),
        ],
      ),
      SpinalEpiduralCaudalBlocksCategory(
        categoryName: 'Contraindications',
        items: [
          SpinalEpiduralCaudalBlocksItem(
            title: "ABSOLUTE CONTRAINDICATIONS FOR REGIONAL ANESTHESIA",
            description: "Patient refusal, coagulopathy, infection at the entry site, untreated severe hypovolemia, and increased intracranial pressure.",
            additionalInfo: "Procedure should definitely be avoided due to the risk of hematoma in the presence of coagulopathy.",
          ),
          SpinalEpiduralCaudalBlocksItem(
            title: "RELATIVE CONTRAINDICATIONS AND CLINICAL RISK ANALYSIS",
            description: "Severe aortic or mitral stenosis, pre-existing neurological deficit, and demyelinating diseases (e.g., MS) can be counted.",
            additionalInfo: "Loss of preload in cardiac stenoses can lead to fatal hypotension.",
          ),
        ],
      ),
      SpinalEpiduralCaudalBlocksCategory(
        categoryName: 'Anticoagulant Drugs',
        items: [
          SpinalEpiduralCaudalBlocksItem(
            title: "WARFARIN USE AND INR MONITORING",
            description: "In patients using Warfarin, it must be confirmed that the INR is within normal limits before attempting a block.",
            additionalInfo: "Neuraxial block is not recommended at INR >1.4 values.",
          ),
          SpinalEpiduralCaudalBlocksItem(
            title: "RISK LEVEL OF ASPIRIN AND NSAID GROUP DRUGS",
            description: "Aspirin and NSAID use alone do not significantly increase the risk of epidural hematom; they do not pose an obstacle for the procedure.",
            additionalInfo: "However, the risk multiplies when combined with other anticoagulants.",
          ),
          SpinalEpiduralCaudalBlocksItem(
            title: "CLOPIDOGREL (7 DAYS) AND TICLOPIDINE (14 DAYS) WITHDRAWAL TIMES",
            description: "Clopidogrel (Plavix) must be stopped 7 days before and Ticlopidine 14 days before the intervention.",
            additionalInfo: "These are the minimum times required for platelet functions to return.",
          ),
          SpinalEpiduralCaudalBlocksItem(
            title: "UNFRACTIONATED HEPARIN (SC) AND MINIDOSE APPLICATION",
            description: "Administering 5000 units of subcutaneous heparin twice a day is not an obstacle for anesthesia application.",
            additionalInfo: "However, dural intervention should not be performed before 4-6 hours have passed since the last IV dose.",
          ),
          SpinalEpiduralCaudalBlocksItem(
            title: "LMWH (LOW MOLECULAR WEIGHT HEPARIN) AND CATHETER MANAGEMENT",
            description: "Procedure should be delayed for 24 hours in those taking therapeutic dose LMWH; catheter removal can be done 10-12 hours later according to the dose.",
            subtitle: "In case of a bloody intervention, the first postoperative LMWH dose should be delayed for 24 hours",
            additionalInfo: "A new dose of LMWH can be started 2 hours after the catheter is removed.",
          ),
          SpinalEpiduralCaudalBlocksItem(
            title: "ABSOLUTE OBSTACLE OF THROMBOLYTIC AND FIBRINOLYTIC AGENTS",
            description: "Neuraxial blockade is strictly contraindicated in patients receiving thrombolytics such as tissue plasminogen activator.",
            additionalInfo: "The risk of bleeding and uncontrolled hematoma is excessively high with these agents.",
          ),
        ],
      ),
      SpinalEpiduralCaudalBlocksCategory(
        categoryName: 'Technical Notes',
        items: [
          SpinalEpiduralCaudalBlocksItem(
            title: "SURFACE ANATOMY AND CRITICAL LANDMARKS (L4-L5, T7)",
            description: "C7 is the most prominent protrusion; the inferior point of the scapula shows T7, and the iliac crest line (Tuffier's line) shows the L4-L5 interval.",
            subtitle: "Posterior superior iliac spine (PSIS) level corresponds to S2",
            additionalInfo: "The L4-L5 line may shift slightly higher in pregnant women due to uterine size.",
          ),
          SpinalEpiduralCaudalBlocksItem(
            title: "POSITIONING TECHNIQUES AND PATIENT COMFORT",
            description: "Sitting position, lateral decubitus (lying on the side), and rarely jackknife positions are used.",
            additionalInfo: "Having the patient rest their chin on their chest to make a 'cat back' facilitates needle entry.",
          ),
          SpinalEpiduralCaudalBlocksItem(
            title: "DIFFERENCES BETWEEN PARAMEDIAN AND MIDLINE APPROACHES",
            description: "While midline goes through the ligaments; in the paramedian approach, the supraspinous and interspinous ligaments are bypassed.",
            additionalInfo: "In the elderly, if there is interspinous ligament calcification, the paramedian approach is life-saving.",
          ),
        ],
      ),
      SpinalEpiduralCaudalBlocksCategory(
        categoryName: 'Spinal Anesthesia',
        items: [
          SpinalEpiduralCaudalBlocksItem(
            title: "SPINAL NEEDLE TYPES: QUINCKE VS WHITACRE/SPROTTE",
            description: "Quincke tip needles cut the tissue while Whitacre and Sprotte tip needles advance by separating (non-cutting) the tissue.",
            additionalInfo: "PDPH risk is lower with pencil point needles.",
          ),
          SpinalEpiduralCaudalBlocksItem(
            title: "CSF BARICITY (1.003-1.008) AND DRUG DISTRIBUTION",
            description: "The density of the local anesthetic relative to CSF is defined as baricity; normal baricity is between 1.003-1.008.",
            subtitle: "Hyperbaric agent is obtained if dextrose is added, hypobaric agent if sterile water is added",
            additionalInfo: "Hyperbaric agents settle to lower levels with gravity.",
          ),
          SpinalEpiduralCaudalBlocksItem(
            title: "LOCAL ANESTHETIC SELECTION AND IMPORTANCE OF PRESERVATIVE-FREE AGENTS",
            description: "Preservative-free local anesthetics must definitely be chosen to prevent neurotoxicity.",
            subtitle: "High-concentration lidocaine (5%) is not preferred due to the risk of Cauda Equina Syndrome",
            additionalInfo: "Bupivacaine is the most frequently preferred agent in spinal use.",
          ),
          SpinalEpiduralCaudalBlocksItem(
            title: "EPINEPHRINE ADDITION AND PROLONGATION OF EFFECT DURATION",
            description: "Adding epinephrine to the local anesthetic slows down absorption by causing vasoconstriction and prolongs the duration of effect.",
            additionalInfo: "While this prolongation reaches 50% in Tetracaine, it is more limited in Bupivacaine.",
          ),
        ],
      ),
      SpinalEpiduralCaudalBlocksCategory(
        categoryName: 'Epidural Anesthesia',
        items: [
          SpinalEpiduralCaudalBlocksItem(
            title: "EPIDURAL NEEDLE TYPES: TUOHY AND CRAWFORD",
            description: "Tuohy needle facilitates catheter guidance with its curved tip; Crawford is thinner and sharper.",
            additionalInfo: "Epidural space is found with the 'Loss of Resistance' (LOR) method using air or saline.",
          ),
          SpinalEpiduralCaudalBlocksItem(
            title: "EPIDURAL CATHETER PLACEMENT AND ADVANCEMENT DISTANCE (2-6 CM)",
            description: "The epidural catheter should be advanced approximately 2-6 cm through the needle after reaching the space.",
            additionalInfo: "Advancing the catheter too much can lead to intravascular entry or unilateral block.",
          ),
          SpinalEpiduralCaudalBlocksItem(
            title: "SEGMENTAL DOSE CALCULATION AND VOLUME MANAGEMENT",
            description: "Approximately 1-2 mL of local anesthetic per segment is considered necessary for the desired block height.",
            additionalInfo: "For T10 block when entered from L2-L3, a volume of approximately 10-15 mL is required.",
          ),
          SpinalEpiduralCaudalBlocksItem(
            title: "SOLUTION PH BALANCING AND BICARBONATE ADDITION RESTRICTION",
            description: "pH can be raised by adding 1 mEq NaHCO3 to 10 mL LA; this accelerates the onset of the drug.",
            subtitle: "Bupivacaine precipitates due to crystallization when the pH goes above 6.8; bicarbonate should not be added",
            additionalInfo: "Lidocaine and chloroprocaine are suitable for alkalinization.",
          ),
        ],
      ),
      SpinalEpiduralCaudalBlocksCategory(
        categoryName: 'Caudal Anesthesia',
        items: [
          SpinalEpiduralCaudalBlocksItem(
            title: "CAUDAL BLOCK INDICATIONS AND PEDIATRIC USE",
            description: "It is the most popular regional method to provide postoperative analgesia in pediatric surgery.",
            additionalInfo: "Can also be used in adults in hemorrhoid surgery and sacral interventions.",
          ),
          SpinalEpiduralCaudalBlocksItem(
            title: "SACRAL HIATUS ENTRY AND TECHNICAL APPLICATION",
            description: "Entry into the sacral canal is made by puncturing the sacrococcygeal membrane; finding the sacral hiatus is the key.",
            additionalInfo: "A 'pop' sound and loss of resistance is felt during the puncture.",
          ),
        ],
      ),
      SpinalEpiduralCaudalBlocksCategory(
        categoryName: 'Complications',
        items: [
          SpinalEpiduralCaudalBlocksItem(
            title: "HIGH SPINAL AND TOTAL SPINAL CLINICAL PICTURE",
            description: "An emergency situation characterized by bradycardia, hypotension, and respiratory arrest.",
            additionalInfo: "It is named as total spinal if cranial nerve involvement (facial paralysis etc.) is added.",
          ),
          SpinalEpiduralCaudalBlocksItem(
            title: "URINARY RETENTION AND SACRAL NERVE BLOCKADE (S2-S4)",
            description: "Relaxation of the bladder detrusor muscle due to autonomic blockade leads to urinary retention.",
            additionalInfo: "Monitoring of patients is a must until the effect of the local anesthetic passes.",
          ),
          SpinalEpiduralCaudalBlocksItem(
            title: "POST-DURAL PUNCTURE HEADACHE AND BLOOD PATCH (15-20 ML)",
            description: "It is a headache in positional character resulting from brain sagging (traction) due to CSF leak.",
            subtitle: "Blood patch performed by giving 15-20 mL of autologous blood to the epidural space is the 'gold standard' treatment",
            additionalInfo: "Usually appears 12-72 hours after the procedure.",
          ),
          SpinalEpiduralCaudalBlocksItem(
            title: "SPINAL/EPIDURAL HEMATOMA AND EMERGENCY DECOMPRESSION (<=12 HRS)",
            description: "A surgical emergency manifesting with sudden onset back pain and progressive motor block.",
            subtitle: "Surgical decompression (laminectomy) within the first 8-12 hours is of vital importance to prevent permanent damage",
            additionalInfo: "The incidence in epidural (1:150,000) is slightly higher than in spinal.",
          ),
          SpinalEpiduralCaudalBlocksItem(
            title: "EPIDURAL ABSCESS AND MOST FREQUENT ENCOUNTERED PATHOGENS",
            description: "It is the picture developing as a result of catheter infection; the most frequent agents are S. aureus and S. epidermidis.",
            additionalInfo: "Meningitis can accompany; rapid antibiotherapy and surgical drainage may be required.",
          ),
          SpinalEpiduralCaudalBlocksItem(
            title: "TRANSIENT NEUROLOGICAL SYMPTOMS (TNS) AND LIDOCAINE RELATIONSHIP",
            description: "A picture occurring after the block is resolved, manifesting with pain in the thigh and buttock; most frequently seen with hyperbaric lidocaine.",
            additionalInfo: "Does not leave permanent damage but seriously disrupts patient comfort.",
          ),
          SpinalEpiduralCaudalBlocksItem(
            title: "LIDOCAINE NEUROTOXICITY AND BLADDER-BOWEL DYSFUNCTION",
            description: "Accumulation of the drug in high concentration, especially in catheter applications, can cause nerve damage (Cauda Equina Syndrome).",
            additionalInfo: "It is a severe complication that can lead to permanent loss of bladder/bowel control.",
          ),
        ],
      ),
    ];
  }
}
