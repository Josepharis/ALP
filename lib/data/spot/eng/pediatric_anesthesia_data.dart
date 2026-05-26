import 'package:flutter/material.dart';

class PediatricAnesthesiaItem {
  final String title;
  final String description;
  final String? subtitle;
  final String? additionalInfo;

  PediatricAnesthesiaItem({
    required this.title,
    required this.description,
    this.subtitle,
    this.additionalInfo,
  });
}

class PediatricAnesthesiaCategory {
  final String categoryName;
  final List<PediatricAnesthesiaItem> items;

  PediatricAnesthesiaCategory({
    required this.categoryName,
    required this.items,
  });
}

class PediatricAnesthesiaData {
  static List<PediatricAnesthesiaCategory> getPediatricAnesthesiaData(
    BuildContext context,
  ) {
    return [
      PediatricAnesthesiaCategory(
        categoryName: 'Anatomical and Physiological Features',
        items: [
          PediatricAnesthesiaItem(
            title: "RESPIRATORY SYSTEM COMPLIANCE AND ALVEOLAR DEVELOPMENT (8 YEARS)",
            description: "Functional residual capacity (FRC) is limited in children due to low lung compliance and high chest wall compliance.",
            subtitle: "Full alveolar development is completed at approximately 8 years of age",
            additionalInfo: "The fact that the closing volume is within the tidal volume increases the tendency for atelectasis.",
          ),
          PediatricAnesthesiaItem(
            title: "PEDIATRIC LARYNX ANATOMY AND CRICOID NARROWING",
            description: "In children, the tongue is large, the larynx is higher (C4), and more anteriorly located; the narrowest point is the cricoid cartilage level.",
            subtitle: "Newborns are obligatory nasal breathers for the first 5 months",
            additionalInfo: "While the narrowest place in adults is the glottis, it is the cricoid level in children <5 years old; this is critical for tube selection.",
          ),
          PediatricAnesthesiaItem(
            title: "CARDIOVASCULAR OUTPUT AND HEART RATE DEPENDENCE",
            description: "Since ventricular compliance is low, cardiac output is directly dependent on heart rate (HR) rather than stroke volume.",
            subtitle: "When severe hypovolemia develops, sudden hypotension without tachycardia can be seen in children",
            additionalInfo: "Baroreceptor reflexes are immature; their tolerance for bradycardia is very low.",
          ),
          PediatricAnesthesiaItem(
            title: "METABOLISM, SURFACE AREA AND HYPOTHERMIA RISK",
            description: "The large ratio of body surface area to weight speeds up heat loss and increases the risk of hypothermia.",
            subtitle: "Brown fat metabolism, which provides heat production, is quite limited in preterms",
            additionalInfo: "Hypothermia leads to metabolic acidosis and delay in drug elimination in the pediatric patient.",
          ),
          PediatricAnesthesiaItem(
            title: "MATURATION PROCESS IN RENAL AND HEPATIC FUNCTIONS",
            description: "Renal functions (GFR) mature between 6 months and 2 years; drug filtration is limited in the newborn.",
            subtitle: "Drug elimination is slow because liver conjugation pathways are immature",
            additionalInfo: "Drug doses and intervals should be adjusted according to these physiological limitations, especially in the first months.",
          ),
          PediatricAnesthesiaItem(
            title: "GLYCOGEN STORES AND HYPOGLYCEMIA PRONENESS",
            description: "Lack of liver glycogen stores makes babies very sensitive to hypoglycemia in cases of long-term fasting.",
            additionalInfo: "Perioperative glucose monitoring should be a part of the routine approach in the pediatric patient.",
          ),
        ],
      ),
      PediatricAnesthesiaCategory(
        categoryName: 'Pharmacology',
        items: [
          PediatricAnesthesiaItem(
            title: "IDEAL BODY WEIGHT ESTIMATION [(AGE × 2) + 9]",
            description: "50th percentile weight in pediatric dose calculations can be quickly estimated with the (Age × 2) + 9 formula.",
            additionalInfo: "Incorrect weight estimation is the most common cause of drug overdose or insufficient dose.",
          ),
          PediatricAnesthesiaItem(
            title: "BODY WATER RATIO AND VOLUME OF DISTRIBUTION CHANGE",
            description: "The total body water ratio is higher in children; this increases the volume of distribution of water-soluble drugs (e.g., succinylcholine).",
            additionalInfo: "This is the main reason why higher doses are needed on an mg/kg basis.",
          ),
          PediatricAnesthesiaItem(
            title: "PLASMA PROTEIN BINDING AND FREE DRUG FRACTION",
            description: "Fewer drugs bind to proteins due to low protein levels, and the free (active) drug fraction increases.",
            additionalInfo: "This condition can increase both the effect and the risk of toxicity of drugs.",
          ),
        ],
      ),
      PediatricAnesthesiaCategory(
        categoryName: 'Inhalation Agents',
        items: [
          PediatricAnesthesiaItem(
            title: "INHALATION INDUCTION SPEED AND FRC/VENTILATION EFFECT",
            description: "Inhalation induction is much faster in children than in adults thanks to increased minute ventilation and decreased FRC.",
            subtitle: "Low blood/gas coefficient provides fast equilibrium while bringing the risk of overdose",
            additionalInfo: "Anesthesia depth can change within seconds.",
          ),
          PediatricAnesthesiaItem(
            title: "ROLE OF SEVOFLURANE IN PEDIATRIC ANESTHESIA",
            description: "It is the most frequently preferred agent in pediatrics due to less respiratory depression and rapid recovery features.",
            additionalInfo: "It is ideal for mask induction thanks to its pleasant smell.",
          ),
          PediatricAnesthesiaItem(
            title: "DESFLURANE AND POSTOPERATIVE AGITATION RISK",
            description: "The risk of postoperative delirium and agitation is high in pediatric patients due to unnecessarily fast recovery.",
            additionalInfo: "It is not used in mask induction due to its irritating smell.",
          ),
          PediatricAnesthesiaItem(
            title: "CARDIAC SENSITIVITY EFFECT OF HALOTHANE AND SEVOFLURANE",
            description: "They can trigger arrhythmia risk by increasing the sensitivity of the myocardium to catecholamines; this risk is highest in Halothane.",
            additionalInfo: "They can cause dose-dependent cardiac output drop in babies.",
          ),
        ],
      ),
      PediatricAnesthesiaCategory(
        categoryName: 'IV Agents',
        items: [
          PediatricAnesthesiaItem(
            title: "PROPOFOL DOSAGE AND INFUSION SYNDROME (250 MCG/KG/MIN)",
            description: "Maintenance dose is higher in children at around 250 mcg/kg/min due to high metabolic rate.",
            subtitle: "Risk of 'Propofol Infusion Syndrome' should be kept in mind in long-term high-dose infusions",
            additionalInfo: "Induction dose (3 mg/kg) is also higher than in adults.",
          ),
          PediatricAnesthesiaItem(
            title: "THIOPENTAL DOSE CHANGE BY AGE",
            description: "While 3-4 mg/kg dose is sufficient in the newborn, this dose rises to 5-6 mg/kg in the infancy period.",
            additionalInfo: "Change in clearance capacity determines the dose.",
          ),
          PediatricAnesthesiaItem(
            title: "PEDIATRIC OPIOID USE AND ELIMINATION PROCESS",
            description: "Morphine elimination (immature conjugation) is slow in newborns; risk of side effects is more.",
            subtitle: "Remifentanil is quite safe for pediatric use thanks to its high clearance",
            additionalInfo: "Sensitivity to respiratory depression is high in babies.",
          ),
          PediatricAnesthesiaItem(
            title: "HYPNOTIC RESISTANCE TO KETAMINE",
            description: "Sometimes resistance to the hypnotic effect of ketamine can be seen in pediatric patients; it should be carefully dosed for dissociative anesthesia.",
            additionalInfo: "Usually combined with atropine due to increasing salivation.",
          ),
          PediatricAnesthesiaItem(
            title: "MIDAZOLAM CLEARANCE AND NEWBORN (NB) DIFFERENCE",
            description: "Since midazolam clearance is low in the newborn, its effect can last much longer than normal.",
            additionalInfo: "Premedication dose is usually 0.5 mg/kg oral.",
          ),
        ],
      ),
      PediatricAnesthesiaCategory(
        categoryName: 'Muscle Relaxants',
        items: [
          PediatricAnesthesiaItem(
            title: "PEDIATRIC MUSCLE RELAXANT EFFECT ONSET SPEED",
            description: "Since circulation speed is high, the effect of neuromuscular blockers starts much faster in children.",
            additionalInfo: "It should not be forgotten that the diaphragm is the muscle affected most quickly.",
          ),
          PediatricAnesthesiaItem(
            title: "SUCCINYLCHOLINE USE RESTRICTIONS AND LARYNGOSPASM",
            description: "Routine use is limited due to myopathy risk; saved for 'full stomach' induction and crisis situations like laryngospasm.",
            additionalInfo: "Must be given with Atropine against bradycardia risk.",
          ),
          PediatricAnesthesiaItem(
            title: "SAFETY PROFILE OF ATRACURIUM AND CISATRACURIUM",
            description: "Quite safe in children and newborns thanks to organ-independent (Hofmann elimination) breakdown.",
            additionalInfo: "Although hypothermia prolongs the duration, elimination remains reliable.",
          ),
        ],
      ),
      PediatricAnesthesiaCategory(
        categoryName: 'Preoperative',
        items: [
          PediatricAnesthesiaItem(
            title: "UPPER RESPIRATORY INFECTION (URI) AND COMPLICATIONS",
            description: "URI within the last 2-4 weeks seriously increases the risk of bronchospasm and laryngospasm.",
            additionalInfo: "Delaying elective surgery for 4 weeks is recommended, but sometimes it can be done in 2 weeks with family factors.",
          ),
          PediatricAnesthesiaItem(
            title: "FASTING RULES: BREAST MILK (4 H) AND SOLID FOOD (6 H)",
            description: "Breast milk should be stopped 4 hours before, and formula and solid foods 6 hours before to reduce the risk of aspiration.",
            subtitle: "A 2-hour fasting period is sufficient for water and clear fluids",
            additionalInfo: "Excessive starvation leads to hypoglycemia and dehydration in babies.",
          ),
          PediatricAnesthesiaItem(
            title: "PREMEDICATION STRATEGIES AND BRADYCARDIA PROPHYLAXIS",
            description: "Oral midazolam is the most frequently used method for anxiety; Atropine can be routinely added against bradycardia in small babies.",
            additionalInfo: "Anxiety about separation from family can trigger surgical stress.",
          ),
        ],
      ),
      PediatricAnesthesiaCategory(
        categoryName: 'Monitoring',
        items: [
          PediatricAnesthesiaItem(
            title: "HYPOGLYCEMIA TREATMENT THRESHOLDS BY AGE (<30-60 MG/DL)",
            description: "Values below <30 mg/dL in the newborn, <40 mg/dL in the baby, and <60 mg/dL in the child are hypoglycemia requiring treatment.",
            additionalInfo: "Changing glucose level excessively fast can also lead to cerebral hemorrhage (in NB).",
          ),
          PediatricAnesthesiaItem(
            title: "PREDUCTAL SPO2 MEASUREMENT AND EARLOBE ANALYSIS",
            description: "The best SpO2 measurement site showing cerebral and upper body oxygenation is the right earlobe or right finger.",
            additionalInfo: "Postductal blood measurements can be misleading in the presence of patent ductus.",
          ),
          PediatricAnesthesiaItem(
            title: "INVASIVE MONITORING AND RIGHT RADIAL ARTERY SELECTION",
            description: "Right radial artery, showing preductal flow, is preferred in newborns for blood pressure follow-up when necessary.",
            additionalInfo: "Umbilical artery catheter is also an option in NB intensive care.",
          ),
        ],
      ),
      PediatricAnesthesiaCategory(
        categoryName: 'Induction and Airway',
        items: [
          PediatricAnesthesiaItem(
            title: "PEDIATRIC ANESTHESIA INDUCTION TECHNIQUES",
            description: "Mask inhalation induction is the most comfortable approach in children where cooperation cannot be provided.",
            additionalInfo: "IV line can be opened after induction (after falling asleep).",
          ),
          PediatricAnesthesiaItem(
            title: "ENDOTRACHEAL TUBE DIAMETER CALCULATION [4 + (AGE/4)]",
            description: "The formula is 4 + (age/4) for un-cuffed tubes; usually 0.5-1.0 mm smaller is chosen for cuffed tubes.",
            additionalInfo: "Correct tube size is vital for non-traumatic ventilation.",
          ),
          PediatricAnesthesiaItem(
            title: "ENDOTRACHEAL TUBE LENGTH CALCULATION [12 + (AGE/2)]",
            description: "Tube placement depth can be quickly calculated with the 12 + (Age/2) formula.",
            additionalInfo: "Endobronchial intubation risk is high in children (due to short trachea).",
          ),
          PediatricAnesthesiaItem(
            title: "CUFFED TUBE USE AND AIR LEAK TEST (15-20 CMH2O)",
            description: "Cuff pressure should be checked to prevent cricoid edema in cuffed tubes, and air leak should be heard at 15-20 cmH2O pressure.",
            subtitle: "10 cmH2O PEEP (continuous pressure) can be life-saving in case of laryngospasm",
            additionalInfo: "Lack of air leak indicates risk of subglottic edema.",
          ),
        ],
      ),
      PediatricAnesthesiaCategory(
        categoryName: 'Maintenance',
        items: [
          PediatricAnesthesiaItem(
            title: "PEDIATRIC VENTILATION PARAMETERS (PIP: 15-18 CMH2O)",
            description: "Pressure control ventilation (PIP 15-18 cmH2O) is safer in children under 10 kg to prevent lung damage.",
            subtitle: "Targeting 6-8 mL/kg values should be taken as tidal volume goal",
            additionalInfo: "Respiratory rate should be kept within physiological limits according to the child's age.",
          ),
          PediatricAnesthesiaItem(
            title: "STRATEGIES TO PREVENT POSTOPERATIVE DELIRIUM",
            description: "Switching maintenance to Isoflurane after Sevoflurane induction can reduce postoperative agitation.",
            additionalInfo: "Analgesia control in recovery minimizes agitation risk.",
          ),
        ],
      ),
      PediatricAnesthesiaCategory(
        categoryName: 'Fluid Management',
        items: [
          PediatricAnesthesiaItem(
            title: "4-2-1 RULE IN FLUID MAINTENANCE",
            description: "4 mL/kg/hour for the first 10 kg, +2 mL/kg/hour for the next 10 kg, and +1 mL/kg/hour for after.",
            additionalInfo: "Surgical trauma and bleeding losses should be added on top of this maintenance.",
          ),
          PediatricAnesthesiaItem(
            title: "GLUCOSE REQUIREMENT BY AGE (2-8 MG/KG/MIN)",
            description: "Basal glucose requirement (6-8 mg/kg/min) is quite high in small children and newborns.",
            additionalInfo: "This need drops to 2-3 mg/kg/min in older children.",
          ),
          PediatricAnesthesiaItem(
            title: "ESTIMATED BLOOD VOLUMES BY AGE (80-100 ML/KG)",
            description: "Blood volume is estimated as 100 mL/kg in preterms, 85-90 mL/kg in the newborn, and 80 mL/kg in babies.",
            additionalInfo: "Loss compensation should be proportioned according to these volumes.",
          ),
          PediatricAnesthesiaItem(
            title: "PEDIATRIC TARGET HEMATOCRIT (HCT) LEVEL",
            description: "While 40% Hct is targeted in newborns; 20-26% levels can be tolerated in stable older children.",
            additionalInfo: "Anemia increases the work load of the heart; this compensation capacity is limited in children.",
          ),
        ],
      ),
      PediatricAnesthesiaCategory(
        categoryName: 'Regional',
        items: [
          PediatricAnesthesiaItem(
            title: "CAUDAL BLOCK APPLICATION AND DOSAGE (2.5 MG/KG)",
            description: "Caudal block performed with Bupivacaine (0.125-0.25%) for postoperative analgesia is the most frequently used method.",
            subtitle: "0.5 mL/kg volume is required for sacral block, 1.25 mL/kg for mid-thoracic level",
            additionalInfo: "Caudal morphine (25 mcg/kg) prolongs the duration of analgesia.",
          ),
        ],
      ),
      PediatricAnesthesiaCategory(
        categoryName: 'Recovery',
        items: [
          PediatricAnesthesiaItem(
            title: "LARYNGOSPASM MANAGEMENT AND CRITICAL INTERVENTION",
            description: "Starts with CPAP application; if not resolved, IV Lidocaine (1-1.5 mg/kg) or low-dose Succinylcholine is given.",
            additionalInfo: "Risk of developing negative pressure pulmonary edema exists.",
          ),
          PediatricAnesthesiaItem(
            title: "POST-INTUBATION CROUP AND TREATMENT APPROACH",
            description: "Seen most frequently in the 1-4 age range; develops after traumatic intubation or use of large tubes.",
            subtitle: "IV dexamethasone and nebulized racemic epinephrine are applied in treatment",
            additionalInfo: "Inspiratory stridor is the most typical finding.",
          ),
          PediatricAnesthesiaItem(
            title: "PEDIATRIC POSTOPERATIVE PAIN CONTROL",
            description: "Acetaminophen, ketorolac, and PCA (Patient Controlled Analgesia) can be used above 6-7 years.",
            additionalInfo: "Opioid requirement should be minimized with regional blocks.",
          ),
        ],
      ),
      PediatricAnesthesiaCategory(
        categoryName: 'Specific Diseases',
        items: [
          PediatricAnesthesiaItem(
            title: "PRETERM BABIES AND POSTOPERATIVE APNEA RISK",
            description: "Postoperative central apnea risk is high in babies with postconceptual age below 60 weeks.",
            additionalInfo: "These patients should be monitored for at least 24 hours.",
          ),
          PediatricAnesthesiaItem(
            title: "CONGENITAL DIAPHRAGMATIC HERNIA (CDH) AND VENTILATION (PIP <30)",
            description: "Gentle ventilation (PIP <30 cmH2O) and permissive hypercapnia should be targeted due to lung hypoplasia.",
            additionalInfo: "NG decompression is mandatory to reduce intra-thoracic pressure.",
          ),
          PediatricAnesthesiaItem(
            title: "TETRALOGY OF FALLOT (TOF) AND ANESTHESIA APPROACH",
            description: "Maintaining SVR and avoiding PVR increase (positive pressure) is critical; light induction without NMB can be tried.",
            additionalInfo: "Knee-chest position and morphine are applied in hypercyanotic attacks (spells).",
          ),
          PediatricAnesthesiaItem(
            title: "OMPHALOCELE AND GASTROSCHISIS MANAGEMENT",
            description: "N2O is strictly contraindicated to prevent bowel distension.",
            subtitle: "There is a risk of loss of perfusion due to increased intra-abdominal pressure when PIP >35 cmH2O",
            additionalInfo: "Heat loss and fluid deficit are in huge dimensions in this group.",
          ),
          PediatricAnesthesiaItem(
            title: "PYLORIC STENOSIS AND FLUID-ELECTROLYTE BALANCE",
            description: "Fluid and hypochloremic alkalosis should be corrected first before surgery; then RSI should be performed with 'full stomach' protocol.",
            additionalInfo: "Pyloric stenosis is not a surgical, but a medical emergency.",
          ),
          PediatricAnesthesiaItem(
            title: "AIRWAY EMERGENCIES IN CROUP AND EPIGLOTTITIS",
            description: "Must be kept calm due to the risk of complete obstruction and controlled inhalation induction should be performed accompanied by ENT.",
            additionalInfo: "Epiglottitis is a bacterial infection and more dramatic.",
          ),
          PediatricAnesthesiaItem(
            title: "DOWN SYNDROME AND CARDIOPULMONARY RISKS",
            description: "Difficult airway, atlantoaxial instability, and accompanying cardiac anomalies such as AV canal defect should not be forgotten.",
            additionalInfo: "Macroglossia makes intubation difficult.",
          ),
          PediatricAnesthesiaItem(
            title: "SCOLIOSIS SURGERY AND NEUROMONITORING",
            description: "Volatile agent doses should be restricted for spinal cord monitoring (MEP/SEP); muscular dystrophies carrying MH risk should be screened.",
            additionalInfo: "It is a surgery where serious blood loss is expected.",
          ),
        ],
      ),
    ];
  }
}
