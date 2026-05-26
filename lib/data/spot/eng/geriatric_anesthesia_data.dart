import 'package:flutter/material.dart';

class GeriatricAnesthesiaItem {
  final String title;
  final String description;
  final String? subtitle;
  final String? additionalInfo;

  GeriatricAnesthesiaItem({
    required this.title,
    required this.description,
    this.subtitle,
    this.additionalInfo,
  });
}

class GeriatricAnesthesiaCategory {
  final String categoryName;
  final List<GeriatricAnesthesiaItem> items;

  GeriatricAnesthesiaCategory({
    required this.categoryName,
    required this.items,
  });
}

class GeriatricAnesthesiaData {
  static List<GeriatricAnesthesiaCategory> getGeriatricAnesthesiaData(
    BuildContext context,
  ) {
    return [
      GeriatricAnesthesiaCategory(
        categoryName: 'Cardiovascular System',
        items: [
          GeriatricAnesthesiaItem(
            title: "AGE-RELATED CHANGES IN CARDIAC AND VASCULAR COMPLIANCE",
            description:
                "With aging, vessel walls stiffen, cardiac and vascular compliance decreases while valvular calcification increases.",
            additionalInfo:
                "This situation leads to an increase in systolic blood pressure and left ventricular hypertrophy.",
          ),
          GeriatricAnesthesiaItem(
            title: "MAXIMUM HEART RATE AND AGING EFFECT (AFTER AGE 50)",
            description:
                "Maximum heart rate shows a decrease of approximately 1 bpm per year after the age of 50.",
            additionalInfo:
                "The tachycardia response given to exercise and stress weakens along with the decrease in sympathetic response.",
          ),
          GeriatricAnesthesiaItem(
            title: "DIASTOLIC DYSFUNCTION AND E/e' RATIOS (>15 VS <8)",
            description:
                "Impaired diastolic filling (diastolic dysfunction) is a very common finding in the elderly.",
            subtitle:
                "E/e' ratio >15 indicates diastolic dysfunction; <8 is considered normal",
            additionalInfo:
                "Diastolic dysfunction alone does not mean 'heart failure' but creates risk in acute loadings.",
          ),
        ],
      ),
      GeriatricAnesthesiaCategory(
        categoryName: 'Respiratory System',
        items: [
          GeriatricAnesthesiaItem(
            title: "ALVEOLAR DISTENSION AND V/Q MISMATCH",
            description:
                "Expansion of alveoli with loss of elasticity and small airway collapse causes a significant V/Q mismatch.",
            additionalInfo:
                "This increase in shunt amount creates a risk of rapid desaturation during surgery.",
          ),
          GeriatricAnesthesiaItem(
            title: "CHANGES IN RESPIRATORY VOLUMES (↑ RV, FRC, CC)",
            description:
                "Residual volume (RV), functional residual capacity (FRC), and closing capacity (CC) increase with age.",
            additionalInfo:
                "However, vital capacity (VC) and forced expiratory volumes tend to decrease.",
          ),
          GeriatricAnesthesiaItem(
            title: "ARTERIAL OXYGEN PRESSURE (PAO2) DECLINE (0.35 MMHG/YEAR)",
            description:
                "Arterial oxygen partial pressure (PaO2) shows a decrease of approximately 0.35 mmHg per year after age 20.",
            additionalInfo:
                "The decrease in gas exchange surface area is the main reason for this decline.",
          ),
          GeriatricAnesthesiaItem(
            title: "GERIATRIC RESPIRATORY MANAGEMENT AND PEEP APPLICATION",
            description:
                "Prolonged preoxygenation, use of high FiO2 and PEEP during operation are critical for airway stability.",
            additionalInfo:
                "Aggressive pulmonary toilet and postoperative physiotherapy reduce pulmonary complications (atelectasis etc.).",
          ),
        ],
      ),
      GeriatricAnesthesiaCategory(
        categoryName: 'Metabolic & Endocrine',
        items: [
          GeriatricAnesthesiaItem(
            title: "CHANGE IN BASAL OXYGEN CONSUMPTION (VO2) IN OLD AGE",
            description:
                "Basal metabolic rate and accordingly oxygen consumption (VO2) show a decrease with age.",
            additionalInfo:
                "Tissue perfusion and cellular energy needs adapt to this change.",
          ),
          GeriatricAnesthesiaItem(
            title: "BODY WEIGHT AND WEIGHT LOSS (AFTER AGE 60)",
            description:
                "Physiological weight loss usually starts after age 60 and is characterized by a decrease in lean body mass.",
            additionalInfo:
                "When combined with sarcopenia, the frailty score increases.",
          ),
          GeriatricAnesthesiaItem(
            title: "THERMOREGULATION DISORDER AND HYPOTHERMIA RISK",
            description:
                "The ability to maintain body temperature weakens; the elderly are much more sensitive to intraoperative hypothermia.",
            additionalInfo:
                "Hypothermia increases the risk of surgical site infection and cardiovascular events.",
          ),
          GeriatricAnesthesiaItem(
            title:
                "DIABETES (DM) PREVALENCE IN GERIATRIC POPULATION (>70 YEARS)",
            description:
                "Glucose intolerance or diabetes is detected in approximately 70% of patients over 70 years of age.",
            additionalInfo:
                "Peroperative blood sugar regulation is essential due to the risk of silent ischemia.",
          ),
        ],
      ),
      GeriatricAnesthesiaCategory(
        categoryName: 'Renal Function',
        items: [
          GeriatricAnesthesiaItem(
            title: "MISLEADING CONDITION IN SERUM CREATININE AND BUN LEVELS",
            description:
                "Serum creatinine level may appear normal due to the decrease in muscle mass; however, actual GFR has dropped dramatically.",
            additionalInfo:
                "BUN levels usually show an increase with protein breakdown and decreased renal clearance.",
          ),
          GeriatricAnesthesiaItem(
            title: "IMPAIRMENT IN TUBULAR FUNCTIONS AND ELECTROLYTE BALANCE",
            description:
                "Tubular functions such as diluting, concentrating urine, and sodium/glucose reabsorption are impaired.",
            additionalInfo:
                "This condition increases the risk of dehydration when combined with the loss of the sensation of thirst.",
          ),
          GeriatricAnesthesiaItem(
            title: "RISK OF ACUTE KIDNEY INJURY (AKI) AND POTASSIUM IMBALANCE",
            description:
                "The risk of developing AKI in the perioperative period is high; proneness to hypo- and hyperkalemia is marked.",
            additionalInfo:
                "Kidneys cannot tolerate potassium load when clearance decreases.",
          ),
        ],
      ),
      GeriatricAnesthesiaCategory(
        categoryName: 'Gastrointestinal & Hepatic',
        items: [
          GeriatricAnesthesiaItem(
            title: "LIVER MASS AND BIOTRANSFORMATION CAPACITY",
            description:
                "Liver volume and biotransformation (enzymatic breakdown) rate decrease with age.",
            additionalInfo:
                "The slowing in Phase 1 and Phase 2 reactions prolongs drug effect duration.",
          ),
          GeriatricAnesthesiaItem(
            title: "SERUM ALBUMIN LEVEL AND DRUG BINDING EFFECT",
            description:
                "Plasma albumin amount decreases; this situation increases the free fraction of acidic drugs (opioid, benzo etc.) binding to albumin.",
            additionalInfo:
                "The increase in the free drug form brings the risk of toxicity.",
          ),
        ],
      ),
      GeriatricAnesthesiaCategory(
        categoryName: 'Central Nervous System',
        items: [
          GeriatricAnesthesiaItem(
            title:
                "CEREBRAL BLOOD FLOW (CBF) AND AUTOREGULATION PRESERVATION (10-20%)",
            description:
                "Although cerebral blood flow decreases by 10-20%, cerebral autoregulation is usually preserved in healthy elderly.",
            additionalInfo:
                "Still, sudden blood pressure drops can quickly jeopardize cerebral perfusion.",
          ),
          GeriatricAnesthesiaItem(
            title: "NEURONAL LOSS AND CHANGES IN SENSORY THRESHOLD",
            description:
                "Sensory thresholds rise due to the decrease in neuron count; pain perception and response may change.",
            additionalInfo:
                "Volumetric decrease (atrophy) in brain tissue also affects epidural/spinal spaces.",
          ),
          GeriatricAnesthesiaItem(
            title:
                "DECREASE IN ANESTHETIC REQUIREMENT IN THE ELDERLY (GENERAL/LOCAL)",
            description:
                "The amount of dose required for both general and local anesthesia drops significantly with age.",
            additionalInfo:
                "The increase in the sensitivity of the target organ causes deep anesthesia with a low dose.",
          ),
          GeriatricAnesthesiaItem(
            title: "POSTOPERATIVE BEHAVIORAL DISORDER AND DELIRIUM (30%)",
            description:
                "Delirium or behavioral changes are observed in approximately 30% of elderly patients in the first week postoperatively.",
            additionalInfo:
                "Postoperative cognitive dysfunction (POCD) is a picture requiring long-term follow-up.",
          ),
        ],
      ),
      GeriatricAnesthesiaCategory(
        categoryName: 'Musculoskeletal & Skin',
        items: [
          GeriatricAnesthesiaItem(
            title: "MUSCLE MASS AND SARCOPENIA CHANGES",
            description:
                "Fat tissue increases while muscle mass (lean mass) decreases with aging.",
            additionalInfo:
                "This situation also directly affects the basal metabolic rate.",
          ),
          GeriatricAnesthesiaItem(
            title: "SKIN ATROPHY AND FRAGILE VEIN STRUCTURE",
            description:
                "Skin atrophy (thinning) causes lack of resistance against traumas; fragile veins cause difficulties in vascular access interventions.",
            subtitle:
                "Risk of rupture of the vein during IV interventions is high",
            additionalInfo:
                "Adhesive tapes and monitor electrodes should be chosen in a way that will not harm the skin.",
          ),
        ],
      ),
      GeriatricAnesthesiaCategory(
        categoryName: 'Age-Related Pharmacologic Changes',
        items: [
          GeriatricAnesthesiaItem(
            title:
                "BODY COMPOSITION AND VOLUME OF DISTRIBUTION OF LIPOPHILIC DRUGS",
            description:
                "The increase in fat mass increases the volume of distribution of lipophilic drugs (e.g., fentanyl, propofol) and prolongs elimination.",
            additionalInfo:
                "Drug accumulation (cumulative effect) in repeated doses is more frequent.",
          ),
          GeriatricAnesthesiaItem(
            title: "ALBUMIN DECREASE AND FREE FRACTION OF ACIDIC DRUGS",
            description:
                "The drop in albumin level increases the free form of acidic drugs such as benzodiazepines, barbiturates and opioids.",
            additionalInfo: "Drug doses should be reduced by 30-50%.",
          ),
          GeriatricAnesthesiaItem(
            title: "ALPHA-1 ACID GLYCOPROTEIN INCREASE AND BASIC DRUG BINDING",
            description:
                "Unlike albumin, alpha-1 acid glycoprotein, which shows an increase with age, changes the binding (and effect) of basic drugs such as local anesthetics.",
            additionalInfo: "This situation can also affect toxicity limits.",
          ),
        ],
      ),
      GeriatricAnesthesiaCategory(
        categoryName: 'Inhalation Agents',
        items: [
          GeriatricAnesthesiaItem(
            title:
                "MAC (MINIMUM ALVEOLAR CONCENTRATION) DECREASE (4% / 10 YEARS)",
            description:
                "MAC value decreases by approximately 4% every ten years after the age of 40.",
            additionalInfo:
                "Volatile agent need in an 80-year-old patient is approximately 15-20% less than a young person.",
          ),
          GeriatricAnesthesiaItem(
            title: "RECOVERY PROCESS FROM ANESTHESIA IN GERIATRIC PATIENT",
            description:
                "The recovery period is significantly prolonged due to impairment in pulmonary gas exchange and drugs accumulating in fat tissue.",
            additionalInfo: "Return of vigilance may take hours.",
          ),
          GeriatricAnesthesiaItem(
            title: "EFFECT OF INHALATION AGENTS ON LIVER FUNCTIONS",
            description:
                "Generally, liver functions are minimally affected by volatile anesthesia agents.",
            additionalInfo: "Still, preserving hepatic perfusion is essential.",
          ),
        ],
      ),
      GeriatricAnesthesiaCategory(
        categoryName: 'IV Agents',
        items: [
          GeriatricAnesthesiaItem(
            title: "INCREASED SENSITIVITY TO IV ANESTHETICS AND DOSE ( ~50%)",
            description:
                "Since central nervous system sensitivity increases, dose requirement decreases by approximately 50% compared to adults.",
            additionalInfo:
                "Severe hypotension and prolonged apnea (respiratory arrest) are inevitable in high doses.",
          ),
          GeriatricAnesthesiaItem(
            title: "AGENTS WITH SIGNIFICANTLY REDUCED DOSE REQUIREMENT",
            description:
                "Propofol, Midazolam, Alfentanil, and Fentanyl must be started in lower doses in the elderly.",
            additionalInfo: "'Start low, go slow' is the golden rule.",
          ),
          GeriatricAnesthesiaItem(
            title: "PHARMACODYNAMIC CHANGES IN FENTANYL AND DERIVATIVES",
            description:
                "While the pharmacokinetics of Fentanyl, Alfentanil, and Sufentanil remain relatively stable, target organ sensitivity (pharmacodynamics) has increased.",
            additionalInfo:
                "The sensitivity of brain receptors to opiates is marked.",
          ),
          GeriatricAnesthesiaItem(
            title: "PHARMACOKINETIC AND DYNAMIC FEATURES OF REMIFENTANIL",
            description:
                "Remifentanil is an agent that shows changes both kinetically and dynamically in the elderly; it should be carefully dosed.",
            additionalInfo:
                "Although breakdown rate with plasma esterases slows down a little, it is still the shortest acting.",
          ),
        ],
      ),
      GeriatricAnesthesiaCategory(
        categoryName: 'Muscle Relaxants',
        items: [
          GeriatricAnesthesiaItem(
            title: "NEUROMUSCULAR BLOCKER (NMB) RESPONSE AND ONSET TIME",
            description:
                "Although the response of the neuromuscular junction generally remains the same, the onset time of the effect may be prolonged due to low cardiac output.",
            additionalInfo:
                "The arrival of drugs at the site of action is delayed.",
          ),
          GeriatricAnesthesiaItem(
            title:
                "PROLONGATION OF EFFECT IN AGENTS WITH ORGAN-DEPENDENT ELIMINATION",
            description:
                "The effect durations of agents excreted by the liver/kidney such as Rocuronium and Vecuronium prolong with clinical clearance decrease.",
            additionalInfo:
                "The risk of postoperative residual curarization (inability to relax) is high.",
          ),
          GeriatricAnesthesiaItem(
            title: "SAFE USE OF ATRACURIUM AND CISATRACURIUM",
            description:
                "Since their elimination is independent of liver and kidney (Hofmann), they are the safest options in the elderly.",
            additionalInfo:
                "It is the best option in patients with poor viability.",
          ),
        ],
      ),
      GeriatricAnesthesiaCategory(
        categoryName: 'Clinical Pearls',
        items: [
          GeriatricAnesthesiaItem(
            title:
                "RELATIONSHIP BETWEEN ANESTHETIC DOSE AND DURATION IN THE ELDERLY",
            description:
                "Longer duration of effect and possible side effects should be expected with less dose of anesthesia.",
            additionalInfo:
                "The limitation of physiological reserves should not be forgotten.",
          ),
          GeriatricAnesthesiaItem(
            title: "PREOXYGENATION AND VENTILATION STRATEGIES",
            description:
                "Preoxygenation period should be prolonged in the elderly, PEEP should be applied to prevent lung atelectasis during the operation.",
            additionalInfo:
                "Positive pressure ventilation can shake hemodynamics (blood pressure) more.",
          ),
          GeriatricAnesthesiaItem(
            title: "GERIATRIC RISK FACTORS (HYPOTHERMIA, AKI, DELIRIUM)",
            description:
                "They carry high risk factors for hypothermia, Acute Kidney Injury (AKI), and postoperative behavioral changes.",
            additionalInfo:
                "These risks should be minimized with a multimodal approach.",
          ),
          GeriatricAnesthesiaItem(
            title:
                "INTERVENTIONAL DIFFICULTIES FOR SKIN AND VASCULAR STRUCTURE",
            description:
                "Every kind of intervention (IV, monitoring) requires patience and care because vessels are fragile and skin is thin like paper.",
            additionalInfo: "It is a group sensitive to iatrogenic injuries.",
          ),
        ],
      ),
    ];
  }
}
