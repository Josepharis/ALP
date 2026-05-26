import 'package:flutter/material.dart';

class ObstetricAnesthesiaItem {
  final String title;
  final String description;
  final String? subtitle;
  final String? additionalInfo;

  ObstetricAnesthesiaItem({
    required this.title,
    required this.description,
    this.subtitle,
    this.additionalInfo,
  });
}

class ObstetricAnesthesiaCategory {
  final String categoryName;
  final List<ObstetricAnesthesiaItem> items;

  ObstetricAnesthesiaCategory({
    required this.categoryName,
    required this.items,
  });
}

class ObstetricAnesthesiaData {
  static List<ObstetricAnesthesiaCategory> getObstetricAnesthesiaData(
    BuildContext context,
  ) {
    return [
      ObstetricAnesthesiaCategory(
        categoryName: 'General Approach to the Delivery Patient',
        items: [
          ObstetricAnesthesiaItem(
            title: "FULL STOMACH ASSUMPTION AND ASPIRATION RISKS",
            description: "Until proven otherwise, all pregnant patients should be considered 'full stomach' for aspiration risk.",
            additionalInfo: "Slowing of gastric emptying and increased intra-abdominal pressure are the main risk factors.",
          ),
          ObstetricAnesthesiaItem(
            title: "ASPIRATION PROPHYLAXIS AND ANTACID USE (15-30 ML)",
            description: "Before surgery, 15-30 mL of non-particulate antacid should be administered to raise gastric pH.",
            subtitle: "In high-risk cases, H2 blocker (Ranitidine 50 mg) and Metoclopramide (10 mg) IV should be added",
            additionalInfo: "Antacids reduce the severity of lung damage in case of aspiration.",
          ),
          ObstetricAnesthesiaItem(
            title: "LEFT LATERAL TILT POSITION AND AORTOKAVAL COMPRESSION",
            description: "To prevent aortocaval compression and preserve uterine flow, the patient must be tilted to the left.",
            additionalInfo: "Compression by the uterus on the vena cava and aorta can lead to sudden maternal hypotension and fetal distress.",
          ),
        ],
      ),
      ObstetricAnesthesiaCategory(
        categoryName: 'Anesthesia for Vaginal Delivery',
        items: [
          ObstetricAnesthesiaItem(
            title: "LABOR PAIN PATHWAYS: STAGE 1 (T10-L1)",
            description: "In the first stage of labor, pain originates from the uterus and cervix and is transmitted via T10-L1 segments.",
            additionalInfo: "It is visceral in character and usually cramping in nature.",
          ),
          ObstetricAnesthesiaItem(
            title: "LABOR PAIN PATHWAYS: STAGE 2 (S2-S4)",
            description: "In the second stage, somatic pain formed by stretching of the perineal region is transmitted via S2-S4 segments (Pudendal nerve).",
            additionalInfo: "At this stage, pain is felt more sharp and localized.",
          ),
        ],
      ),
      ObstetricAnesthesiaCategory(
        categoryName: 'Non-pharmacological Techniques',
        items: [
          ObstetricAnesthesiaItem(
            title: "LAMAZE TECHNIQUE AND CONTROLLED BREATHING",
            description: "The most popular natural birth method based on controlled breathing during contractions and psychoprophylaxis.",
            additionalInfo: "Relaxation techniques aim to raise the pain threshold.",
          ),
          ObstetricAnesthesiaItem(
            title: "OTHER NATURAL BIRTH TECHNIQUES (BRADLEY, LEBOYER, DOULA)",
            description: "Besides methods like Bradley, Dick-Read, and Leboyer, Doula support is also widely used to increase birth comfort.",
            additionalInfo: "In these methods, drug-free pain management and mother-baby bonding are at the forefront.",
          ),
        ],
      ),
      ObstetricAnesthesiaCategory(
        categoryName: 'Parenteral Analgesia',
        items: [
          ObstetricAnesthesiaItem(
            title: "MEPERIDINE USE AND TIMING (<=100 MG)",
            description: "Should be applied in doses under 100 mg; must be given at least 4 hours before delivery to prevent neonatal depression.",
            additionalInfo: "Its active metabolite normeperidine can accumulate in the fetus.",
          ),
          ObstetricAnesthesiaItem(
            title: "FENTANYL ADMINISTRATION AND RAPID ANALGESIA (25-100 MCG)",
            description: "Provides rapid onset and short-acting analgesia in 25-100 mcg doses; its neonatal effects are less than morphine.",
            additionalInfo: "Its short half-life makes it also suitable for procedures like episiotomy.",
          ),
          ObstetricAnesthesiaItem(
            title: "MORPHINE USE IN LABOR AND NEONATAL DEPRESSION RISK",
            description: "Not preferred due to its long duration of action and risk of severe respiratory depression in the newborn.",
            additionalInfo: "Passing the fetal blood-brain barrier easily is an advantage.",
          ),
          ObstetricAnesthesiaItem(
            title: "ANALGESIC DOSE OF KETAMINE AND APGAR SCORE (<=1 MG/KG)",
            description: "Provides safe analgesia in doses of 1 mg/kg and below; high doses can lead to low Apgar score.",
            additionalInfo: "Overdose can cause uterine hypertonus.",
          ),
          ObstetricAnesthesiaItem(
            title: "NSAIDS AND RISK OF DUCTUS ARTERIOSUS CLOSURE",
            description: "Contraindicated in pregnancy and labor as they can delay closure of the fetal ductus arteriosus.",
            additionalInfo: "Prostaglandin synthesis inhibition can also impair neonatal renal functions.",
          ),
          ObstetricAnesthesiaItem(
            title: "OPIOID AND BENZODIAZEPINE COMBINATIONS",
            description: "If necessary, low-dose Midazolam (<=2 mg) and Fentanyl (<=100 mcg) can be combined to provide sedoanalgesia.",
            additionalInfo: "Neonatal follow-up must be done meticulously in these combinations.",
          ),
        ],
      ),
      ObstetricAnesthesiaCategory(
        categoryName: 'Pudendal Nerve Block',
        items: [
          ObstetricAnesthesiaItem(
            title: "PUDENDAL NERVE BLOCK TECHNIQUE AND ISCHIAL SPINE",
            description: "Performed by giving 10 mL chloroprocaine 1-1.5 cm below the ischial spines using Koback or Iowa trumpet.",
            additionalInfo: "Pudendal nerve blockade only relieves perineal (Stage 2) pain.",
          ),
          ObstetricAnesthesiaItem(
            title: "PARACERVICAL BLOCK AND FETAL BRADYCARDIA RISK",
            description: "Carries fetal bradycardia risk due to application close to the uterine cervix, thus its use is limited.",
            additionalInfo: "Fetal heart rate monitoring is mandatory in this block.",
          ),
        ],
      ),
      ObstetricAnesthesiaCategory(
        categoryName: 'Opioids Alone',
        items: [
          ObstetricAnesthesiaItem(
            title: "REGIONAL ANESTHESIA CONTRAINDICATIONS AND OPIOID ANALGESIA",
            description: "Opioids are preferred over regional in those who cannot tolerate sympathectomy, such as aortic stenosis or Eisenmenger.",
            additionalInfo: "The main goal is to maintain hemodynamic stability.",
          ),
          ObstetricAnesthesiaItem(
            title: "INTRATHECAL MORPHINE AND FENTANYL SUPPORT",
            description: "Low-dose fentanyl/sufentanil added to analgesia provided with morphine (0.1-0.5 mg) provides rapid onset.",
            additionalInfo: "Pruritus (itching) is the most common side effect.",
          ),
          ObstetricAnesthesiaItem(
            title: "EPIDURAL MORPHINE AND COMBINATIONS (<=5 MG)",
            description: "Morphine (<=5 mg) administered via epidural route provides long-term maternal comfort by combining with fentanyl.",
            additionalInfo: "Requires follow-up for nausea, vomiting, and late respiratory depression.",
          ),
        ],
      ),
      ObstetricAnesthesiaCategory(
        categoryName: 'Epidural Analgezia',
        items: [
          ObstetricAnesthesiaItem(
            title: "EPIDURAL CATHETER PLACEMENT AND LOSS OF RESISTANCE",
            description: "Midline or paramedian approach is used in pregnancy; epidural space is detected by 'loss of resistance' method.",
            subtitle: "The depth we penetrate is around 5 cm on average; catheter should be advanced 4-6 cm",
            additionalInfo: "Multi-orifice catheters provide more homogeneous distribution than single-orifice ones.",
          ),
          ObstetricAnesthesiaItem(
            title: "EPIDURAL LA AND OPIOID COMBINATIONS",
            description: "Ideal combination is obtained by adding Fentanyl/Sufentanil next to Bupivacaine (0.0625-0.125%) or Ropivacaine (0.1-0.2%).",
            subtitle: "Test dose with lidocaine + epinephrine should be performed to exclude application to the wrong place",
            additionalInfo: "Sensory analgesia without motor block is targeted.",
          ),
          ObstetricAnesthesiaItem(
            title: "EPIDURAL ACTIVATION AND DOSE MANAGEMENT",
            description: "While 10 mL mix is sufficient in the first stage; dose may need to be increased up to 15 mL for perineal pain in the second stage.",
            additionalInfo: "Dose increases should be done gradually and slowly.",
          ),
        ],
      ),
      ObstetricAnesthesiaCategory(
        categoryName: 'Epidural Complications',
        items: [
          ObstetricAnesthesiaItem(
            title: "HYPOTENSION AFTER EPIDURAL AND VASOPRESSOR TREATMENT",
            description: "In developing hypotension, Ephedrine (5-15 mg) or Phenylephrine (25-50 mcg) should be preferred besides aggressive hydration.",
            additionalInfo: "Avoiding the supine position is the most important prevention method.",
          ),
          ObstetricAnesthesiaItem(
            title: "INTRAVASCULAR INJECTION AND SYSTEMIC TOXICITY (LAST)",
            description: "LA escape into the vessel can lead to maternal seizure and arrhythmias; therefore drugs should always be given in fractions.",
            additionalInfo: "Intralipid resuscitation must be ready in the room.",
          ),
          ObstetricAnesthesiaItem(
            title: "INTRATHECAL ESCAPE AND HIGH BLOCK MANAGEMENT",
            description: "Accidental passage to the spinal space can lead to respiratory arrest by causing 'total spinal'; intubation preparation must be complete.",
            additionalInfo: "A sudden rapid rise in the patient's sensory level should be alarming.",
          ),
          ObstetricAnesthesiaItem(
            title: "POST-DURAL PUNCTURE HEADACHE (PDPH) AND BLOOD PATCH (10-20 ML)",
            description: "If bed rest and caffeine are not sufficient in severe headache developing after dural puncture, 10-20 mL blood patch is performed.",
            additionalInfo: "Pain typically worsens in the sitting position.",
          ),
        ],
      ),
      ObstetricAnesthesiaCategory(
        categoryName: 'Regional Anesthesia for Cesarean Section',
        items: [
          ObstetricAnesthesiaItem(
            title: "TARGET BLOCK LEVEL IN CESAREAN SECTION (T4)",
            description: "The block level should be raised to T4 (nipple) so that surgical field and peritoneal pulling are not felt during the operation.",
            additionalInfo: "Insufficient block leads to severe nausea and restlessness in the mother.",
          ),
          ObstetricAnesthesiaItem(
            title: "FLUID PRELOAD BEFORE REGIONAL (1000-1500 ML RL)",
            description: "Immediately before the block, 1000-1500 mL RL loading should be performed to prevent hypotension due to sympathectomy.",
            additionalInfo: "Fluid loading preserves perfusion by supporting venous return.",
          ),
          ObstetricAnesthesiaItem(
            title: "SPINAL ANESTHESIA AND POSTOPERATIVE ANALGESIA (MORPHINE 0.1-0.3 MG)",
            description: "0.1-0.3 mg morphine added next to spinal bupivacaine provides comfort up to 24 hours after the operation.",
            additionalInfo: "Itching and respiratory depression risk should be monitored for 24 hours.",
          ),
          ObstetricAnesthesiaItem(
            title: "INSUFFICIENT BLOCK AND ADDITIONAL AGENTS IN EPIDURAL ANESTHESIA",
            description: "In case of insufficient block until the fetus is delivered, support can be provided with Ketamine (10-20 mg) or Midazolam (1-2 mg).",
            additionalInfo: "Decision to switch to GA should always be on the table.",
          ),
          ObstetricAnesthesiaItem(
            title: "ADVANTAGE OF COMBINED SPINAL-EPIDURAL (CSE) ANESTHESIA",
            description: "A very popular method for cesarean section, combining the rapid onset of spinal with the continuity of epidural.",
            additionalInfo: "It is possible to pull the block level higher via the catheter.",
          ),
        ],
      ),
      ObstetricAnesthesiaCategory(
        categoryName: 'General Anesthesia for Cesarean Section',
        items: [
          ObstetricAnesthesiaItem(
            title: "ASPIRATION PROPHYLAXIS BEFORE GENERAL ANESTHESIA",
            description: "Sodium citrate should be applied 30-45 min before the general anesthesia decision, ranitidine/metoclopramide should be added if necessary.",
            additionalInfo: "The induced gag reflex is always full in pregnant women.",
          ),
          ObstetricAnesthesiaItem(
            title: "RAPID SEQUENCE INDUCTION (RSI) AND CRICOID PRESSURE",
            description: "Rapid intubation is performed under cricoid pressure (Sellick maneuver) after administration of Succinylcholine after Propofol/Ketamine.",
            additionalInfo: "Difficult airway cart should be at an accessible distance.",
          ),
          ObstetricAnesthesiaItem(
            title: "GENERAL ANESTHESIA MAINTENANCE STRATEGY IN CESAREAN SECTION",
            description: "50% N2O and 0.75 MAC volatile agent are used until the baby is delivered, preserving uterine tone and fetal well-being.",
            additionalInfo: "High volatile concentration can lead to atony.",
          ),
          ObstetricAnesthesiaItem(
            title: "UTEROTONIC AND ANALGESIA MANAGEMENT AFTER FETUS DELIVERY",
            description: "Immediately after the baby is born, 20-80 U Oxytocin infusion is started and volatile concentration is reduced.",
            additionalInfo: "If uterus remains flaccid, Ergo or PGF2α options should be put into effect.",
          ),
          ObstetricAnesthesiaItem(
            title: "SAFE EXTUBATION AND AWAKE PATIENT CRITERION",
            description: "Pregnant patients should only be extubated when they are fully awake, airway protective reflexes are in place, and they are cooperative.",
            additionalInfo: "Aspiration risk continues until leaving the hospital.",
          ),
        ],
      ),
      ObstetricAnesthesiaCategory(
        categoryName: 'Anesthesia in Complicated Pregnancies',
        items: [
          ObstetricAnesthesiaItem(
            title: "CORD PROLAPSE AND URGENCY",
            description: "If the baby is alive, the cord should be pushed upward by hand until the cesarean starts to preserve fetal perfusion.",
            additionalInfo: "Switching to general anesthesia rapidly may be required.",
          ),
          ObstetricAnesthesiaItem(
            title: "BREECH PRESENTATION AND HEAD TRAPPING RISK",
            description: "Can be followed under epidural analgesia; however, if head is trapped, rapid general anesthesia for uterine relaxation is mandatory.",
            additionalInfo: "Nitroglycerin can also be used for uterine relaxation.",
          ),
          ObstetricAnesthesiaItem(
            title: "HEMODYNAMIC MANAGEMENT IN MULTIPLE PREGNANCIES",
            description: "Hypotension risk is much more than single pregnancies; epidural can be safely applied.",
            additionalInfo: "Emergency intervention may be required during the birth of the second baby.",
          ),
          ObstetricAnesthesiaItem(
            title: "PLACENTA PREVIA AND BLEEDING CONTROL",
            description: "In the presence of active bleeding or hemodynamic instability, General Anesthesia should be preferred directly over Regional.",
            additionalInfo: "Presence of large-bore IV lines is critical.",
          ),
          ObstetricAnesthesiaItem(
            title: "PLACENTAL ABRUPTION AND COAGULOPATHY RISK",
            description: "Massive transfusion may be required; a drop in fibrinogen below 150 mg/dL is alarming for coagulopathy.",
            additionalInfo: "DIC development risk exists.",
          ),
          ObstetricAnesthesiaItem(
            title: "UTERINE RUPTURE AND SUDDEN HEMODYNAMIC COLLAPSE",
            description: "Sudden severe abdominal pain and hypotension developing despite epidural analgesia should suggest uterine rupture.",
            additionalInfo: "Emergency surgical exploration is life-saving.",
          ),
          ObstetricAnesthesiaItem(
            title: "CHORIOAMNIONITIS AND SEPSIS RISK",
            description: "Regional anesthesia can be applied if there are no systemic sepsis or coagulopathy findings; otherwise contraindicated.",
            additionalInfo: "Control of the infection focus is priority.",
          ),
          ObstetricAnesthesiaItem(
            title: "DRUG INTERACTIONS IN PRETERM LABOR (KETAMINE/EPHEDRINE)",
            description: "Interaction of Ephedrine and Ketamine with tocolytics can impair fetal heart rate; careful dosing should be done.",
            additionalInfo: "Babies are very sensitive to the respiratory depressive effects of drugs.",
          ),
        ],
      ),
      ObstetricAnesthesiaCategory(
        categoryName: 'Preeclampsia',
        items: [
          ObstetricAnesthesiaItem(
            title: "PREECLAMPSIA PATHOPHYSIOLOGY AND ENDOTHELIAL DAMAGE",
            description: "In the clinical picture, TXA2 and Endothelin increase, while vasodilator PGI2 (Prostacyclin) decreases.",
            additionalInfo: "A multisystemic endothelial dysfunction is in question.",
          ),
          ObstetricAnesthesiaItem(
            title: "PREECLAMPSIA TREATMENT AND MGSO4 LEVEL (4-6 MEQ/L)",
            description: "MgSO4 is started to prevent seizures; therapeutic magnesium level should be maintained in the 4-6 mEq/L range.",
            additionalInfo: "In Mg toxicity, calcium gluconate is the antidote.",
          ),
          ObstetricAnesthesiaItem(
            title: "ANESTHESIA CHOICE IN PREECLAMPTIC PATIENT AND PLATELET COUNT (>70.000)",
            description: "Epidural anesthesia is the first choice if platelet count is over 70.000 and there is no coagulopathy in the patient.",
            additionalInfo: "Regional anesthesia improves uterine flow by resolving systemic vasospasm.",
          ),
        ],
      ),
      ObstetricAnesthesiaCategory(
        categoryName: 'Other Complicated Situations',
        items: [
          ObstetricAnesthesiaItem(
            title: "ANESTHESIA RESTRICTIONS IN PREGNANT WOMEN WITH HEART DISEASE",
            description: "Those with aortic stenosis and Eisenmenger syndrome cannot tolerate regional; opioid-weighted techniques or GA are preferred.",
            additionalInfo: "Preservation of SVR is critical in these patients.",
          ),
          ObstetricAnesthesiaItem(
            title: "AMNIOTIC FLUID EMBOLISM AND SHOCK MANAGEMENT",
            description: "Characterized by sudden cardiovascular shock and DIC; emergency resuscitation and cesarean section should be applied simultaneously.",
            additionalInfo: "Mortality rates are quite high.",
          ),
          ObstetricAnesthesiaItem(
            title: "POSTPARTUM HEMORRHAGE AND ANESTHETIC INTERVENTION",
            description: "Uterine relaxation under GA may be required for uterine massage or placental part debridement.",
            additionalInfo: "Resuscitation should be maintained until bleeding control is achieved.",
          ),
        ],
      ),
    ];
  }
}
