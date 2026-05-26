import 'package:flutter/material.dart';

class RenalDiseaseAnesthesiaItem {
  final String title;
  final String description;
  final String? subtitle;
  final String? additionalInfo;

  RenalDiseaseAnesthesiaItem({
    required this.title,
    required this.description,
    this.subtitle,
    this.additionalInfo,
  });
}

class RenalDiseaseAnesthesiaCategory {
  final String categoryName;
  final List<RenalDiseaseAnesthesiaItem> items;

  RenalDiseaseAnesthesiaCategory({
    required this.categoryName,
    required this.items,
  });
}

class RenalDiseaseAnesthesiaData {
  static List<RenalDiseaseAnesthesiaCategory> getRenalDiseaseAnesthesiaData(
    BuildContext context,
  ) {
    return [
      RenalDiseaseAnesthesiaCategory(
        categoryName: 'Evaluation of Renal Function',
        items: [
          RenalDiseaseAnesthesiaItem(
            title: "BUN (BLOOD UREA NITROGEN) AND PROTEIN CATABOLISM",
            description: "BUN reflects the level of urea in the blood, which is synthesized in the liver as a result of protein catabolism.",
            subtitle: "BUN levels are directly proportional to protein breakdown and inversely proportional to GFR (Glomerular Filtration Rate)",
            additionalInfo: "Since 40–50% of the ultrafiltrate is reabsorbed, it is not reliable as a standalone GFR measurement; it is affected by nutrition and hydration.",
          ),
          RenalDiseaseAnesthesiaItem(
            title: "BUN NORMAL VALUES AND CONTROL THRESHOLD",
            description: "Normal BUN level in the blood is between 10–20 mg/dL; values above 50 mg/dL indicate serious renal impairment.",
            subtitle: "BUN levels rise rapidly in cases of hypovolemia (dehydration) because tubular reabsorption increases",
            additionalInfo: "A BUN level above 50 mg/dL usually indicates that GFR has significantly decreased.",
          ),
          RenalDiseaseAnesthesiaItem(
            title: "SERUM CREATININE AND GFR RELATIONSHIP",
            description: "Creatinine, a product of muscle breakdown, is the most reliable routine indicator for GFR in individuals with stable muscle mass.",
            subtitle: "Normal range is 0.8–1.3 mg/dL in Men and 0.6–1 mg/dL in Women",
            additionalInfo: "After age 20, GFR physiologically decreases by approximately 5% every 10 years.",
          ),
          RenalDiseaseAnesthesiaItem(
            title: "PHARMACOLOGICAL FACTORS AFFECTING CREATININE LEVEL",
            description: "Some drugs can increase serum levels of creatinine by reducing its tubular secretion without any kidney damage.",
            subtitle: "Cimetidine use can create a false elevation by suppressing creatinine secretion",
            additionalInfo: "Such interactions should be considered when evaluating drug history.",
          ),
          RenalDiseaseAnesthesiaItem(
            title: "CREATININE CLEARANCE AND STAGES OF INSUFFICIENCY",
            description: "Clearance values are the gold standard in determining the degree of renal failure: Mild (40–60), Moderate (25–40), and Severe (<25 mL/min).",
            additionalInfo: "Particularly values below 25 mL/min are critical in the diagnosis of chronic renal failure.",
          ),
          RenalDiseaseAnesthesiaItem(
            title: "BUN/CREATININE RATIO AND CLINICAL MEANING",
            description: "Normally this ratio is between 10–15/1; the ratio rising above 15/1 suggests extra-renal (prerenal) causes.",
            subtitle: "High ratios can be an indicator of hypovolemia, heart failure, cirrhosis, or nephrotic syndrome",
            additionalInfo: "This ratio is valuable in differential diagnosis in cases where blood flow to the kidney is reduced.",
          ),
          RenalDiseaseAnesthesiaItem(
            title: "URINALYSIS AND PH VALUES",
            description: "Detection of urine pH above 7 in the presence of systemic acidosis indicates renal tubular acidosis (RTA).",
            subtitle: "Urine specific gravity of 1.010 corresponds to an osmolality of approximately 290 mOsm/kg (iso-osmolar with plasma)",
            additionalInfo: "Normal renal function expects the urine to be concentrated to 1.018 and above.",
          ),
          RenalDiseaseAnesthesiaItem(
            title: "URINE ABNORMALITIES AND THRESHOLD VALUES (GLUCOSE/PROTEIN)",
            description: "Glucosuria is detected when blood sugar exceeds 180 mg/dL, and proteinuria when daily protein excretion exceeds 150 mg.",
            additionalInfo: "24-hour urine collection is required for gold standard proteinuria measurement.",
          ),
        ],
      ),
      RenalDiseaseAnesthesiaCategory(
        categoryName: 'Intravenous Agents',
        items: [
          RenalDiseaseAnesthesiaItem(
            title: "PROPOFOL AND ETOMIDATE USE",
            description: "Pharmacokinetics of these agents do not change significantly in renal failure; however, hypoalbuminemia can increase the free drug level.",
            subtitle: "Etomidate can show a stronger effect in patients with low albumin due to the increase in free fraction",
            additionalInfo: "Propofol is safe as extra-renal mechanisms (lungs) are dominant in its clearance.",
          ),
          RenalDiseaseAnesthesiaItem(
            title: "BARBITURATES AND ACIDOSIS INTERACTION",
            description: "Basic pharmacokinetics of barbiturates are not affected, but the non-ionized fraction increases in the presence of metabolic acidosis.",
            subtitle: "More non-ionized drug passes into the brain faster, accelerating and deepening induction",
            additionalInfo: "The patient's pH status must absolutely be taken into account when making dose adjustments.",
          ),
          RenalDiseaseAnesthesiaItem(
            title: "KETAMINE AND METABOLITE ACCUMULATION",
            description: "While the main pharmacokinetics of ketamine do not change, its active metabolite norketamine can accumulate depending on the kidney.",
            additionalInfo: "This situation can set the stage for the effect to last longer than expected, especially in repetitive doses.",
          ),
          RenalDiseaseAnesthesiaItem(
            title: "BENZODIAZEPINES AND INCREASE IN FREE FRACTION",
            description: "Free fraction increases due to hypoalbuminemia, and the effect intensifies because protein binding rates drop.",
            subtitle: "Attention should be paid to accumulation risk during the use of diazepam and midazolam, which have active metabolites",
            additionalInfo: "Short-acting ones should be preferred and doses should be kept low.",
          ),
          RenalDiseaseAnesthesiaItem(
            title: "OPIOIDS AND ACTIVE METABOLITE RISKS (MORPHINE/MEPERIDINE)",
            description: "Although many opioids are broken down in the liver; active metabolites of Morphine (M6G) and Meperidine (Normeperidine) are excreted by the kidney.",
            subtitle: "Morphine and meperidine are objectionable due to respiratory depression and seizure risk depending on metabolite accumulation",
            additionalInfo: "Remifentanil is the safest opioid option in renal patients thanks to its organ-independent elimination.",
          ),
          RenalDiseaseAnesthesiaItem(
            title: "ANTICHOLINERGICS AND ACCUMULATION RISK",
            description: "Atropine and glycopyrrolate are well tolerated in a single dose; however, they can lead to anticholinergic side effects by accumulating in repetitive doses.",
            additionalInfo: "Tachycardia and dry mouth can be observed more prominently in these patients.",
          ),
          RenalDiseaseAnesthesiaItem(
            title: "ANTIEMETICS AND H2 BLOCKER MANAGEMENT",
            description: "Metoclopramide is objectionable due to accumulation risk, and the dose of H2 blockers should be reduced; PPIs and 5-HT3 antagonists are safe.",
            additionalInfo: "Ondansetron (5-HT3) is an ideal antiemetic not requiring dose adjustment in renal failure.",
          ),
        ],
      ),
      RenalDiseaseAnesthesiaCategory(
        categoryName: 'Inhalation Agents',
        items: [
          RenalDiseaseAnesthesiaItem(
            title: "VOLATILE AGENTS AND SEVOFLURANE APPROACH",
            description: "Modern volatile agents are ideal for renal patients; theoretical Compound A risk of Sevoflurane is considered clinically insignificant.",
            additionalInfo: "All volatile agents can be used as long as regular urine output and stable hemodynamics are provided.",
          ),
          RenalDiseaseAnesthesiaItem(
            title: "N2O (NITROUS OXIDE) AND ANEMIA CONTRAINDICATION",
            description: "Use of nitrous oxide should be avoided in patients with renal failure and hemoglobin levels below 7 g/dL.",
            additionalInfo: "Can deepen tissue hypoxia by restricting intracellular oxygen delivery.",
          ),
        ],
      ),
      RenalDiseaseAnesthesiaCategory(
        categoryName: 'Muscle Relaxants',
        items: [
          RenalDiseaseAnesthesiaItem(
            title: "SUCCINYLCHOLINE AND POTASSIUM LIMIT (K+ <5)",
            description: "Succinylcholine is safe in renal patients who receive dialysis regularly and have potassium (K+) levels below 5 mEq/L.",
            additionalInfo: "In hyperkalemic (K >5.5) cases, Succinylcholine can trigger arrhythmia and arrest risk.",
          ),
          RenalDiseaseAnesthesiaItem(
            title: "CISATRACURIUM AND ATRACURIUM SAFETY",
            description: "They are the safest relaxants independent of renal function as they are metabolized by Hofmann elimination in plasma.",
            additionalInfo: "These agents offer a clearance profile unaffected by organ failure.",
          ),
          RenalDiseaseAnesthesiaItem(
            title: "VECURONIUM AND RENAL EXCRETION RATE",
            description: "Approximately 20% of vecuronium is excreted via the renal route; duration of effect can show a slight prolongation in failure cases.",
            additionalInfo: "Can be used in low doses in non-exceptional cases.",
          ),
          RenalDiseaseAnesthesiaItem(
            title: "ROCURONIUM AND ELIMINATION ROUTE",
            description: "Rocuronium is a relatively safe agent in renal failure as it is mainly eliminated from the liver.",
            additionalInfo: "Still, return times after deep block should be monitored.",
          ),
          RenalDiseaseAnesthesiaItem(
            title: "CURARE AND PROLONGED EFFECT RISK",
            description: "Since curare is excreted via real route at a rate of 40–60%, it causes significantly prolonged neuromuscular blockade in renal patients.",
            additionalInfo: "It is not preferred as it increases the risk of postoperative respiratory failure.",
          ),
          RenalDiseaseAnesthesiaItem(
            title: "PANCURONIUM AND HIGH RENAL ELIMINATION",
            description: "60–90% of pancuronium is excreted from kidneys; its effect in failure can last for hours and d-curarization (reversal) is difficult.",
            additionalInfo: "It is risky enough to be considered absolutely contraindicated in renal insufficiency.",
          ),
          RenalDiseaseAnesthesiaItem(
            title: "REVERSAL AGENTS AND RENAL ELIMINATION DURATION",
            description: "Durations of effect of neostigmine and other anticholinesterases naturally lengthen as their renal excretion is impaired.",
            additionalInfo: "This situation is a protective factor reducing 'recurarization' (re-paralysis) risk in renal patients where the effect of the muscle relaxant also lasts.",
          ),
        ],
      ),
      RenalDiseaseAnesthesiaCategory(
        categoryName: 'Clinical Findings in Renal Failure',
        items: [
          RenalDiseaseAnesthesiaItem(
            title: "METABOLIC AND ELECTROLYTE FINDINGS",
            description: "Besides metabolic acidosis, hyperkalemia, hyperphosphatemia, and hypocalcemia are the most typical electrolyte disturbances.",
            subtitle: "Hypermagnesemia and hyperuricemia also frequently accompany the picture",
            additionalInfo: "These imbalances increase intraoperative cardiac irritability (arrhythmia).",
          ),
          RenalDiseaseAnesthesiaItem(
            title: "HEMATOLOGICAL FINDINGS AND ANEMIA (HB 6-8)",
            description: "Hemoglobin level is usually in the 6–8 g/dL band as a result of normochromic normocytic anemia developing due to erythropoietin deficiency.",
            subtitle: "In addition to anemia, platelet dysfunction (adhesion disorder due to uremia) increases risk of bleeding",
            additionalInfo: "Patients have adapted chronically to these low Hb levels.",
          ),
          RenalDiseaseAnesthesiaItem(
            title: "CARDIOVASCULAR SYSTEM FINDINGS",
            description: "Hypertension, left ventricular hypertrophy (LVH), heart failure, and tendency to arrhythmia are most common CVS problems.",
            additionalInfo: "Heart load is always high due to both anemia and fluid loading.",
          ),
          RenalDiseaseAnesthesiaItem(
            title: "PULMONARY FINDINGS AND ACIDOSIS RESPONSE",
            description: "Patients hyperventilate to compensate for metabolic acidosis; fluid loading sets the stage for pulmonary edema.",
            additionalInfo: "Pulmonary compliance is reduced and ventilation management requires sensitivity.",
          ),
          RenalDiseaseAnesthesiaItem(
            title: "ENDOCRINE FINDINGS AND DM RELATIONSHIP",
            description: "Type 2 Diabetes is frequently seen in patients; additional disturbances like secondary hyperparathyroidism and hypertriglyceridemia can be observed.",
            additionalInfo: "Glucose management can become difficult due to insulin resistance.",
          ),
          RenalDiseaseAnesthesiaItem(
            title: "NEUROLOGICAL FINDINGS AND UREMIC ENCEPHALOPATHY",
            description: "The clinical picture can range from mild confusion to coma; peripheral sensory neuropathies are also widely detected.",
            additionalInfo: "In patients, 'restless leg syndrome' and muscle cramps can disturb comfort after surgery.",
          ),
        ],
      ),
      RenalDiseaseAnesthesiaCategory(
        categoryName: 'Anesthesia Approach in Renal Failure',
        items: [
          RenalDiseaseAnesthesiaItem(
            title: "PREOPERATIVE PREPARATION AND DIALYSIS TIMING",
            description: "Ideally, the last dialysis before surgery should have been done within the last 24 hours before the operation.",
            subtitle: "Potassium, acid-base, and hematological values should be optimized with dialysis",
            additionalInfo: "If regional anesthesia (RA) is planned, coagulation values and platelet function must absolutely be evaluated.",
          ),
          RenalDiseaseAnesthesiaItem(
            title: "INTRAOPERATIVE MONITORING AND FISTULA PROTECTION",
            description: "Arterial catheterization is a must in major surgeries; NIBP measurement must absolutely be done from the arm without AV fistula.",
            additionalInfo: "Protection of the fistula is of vital importance as it is the patient's lifeline.",
          ),
          RenalDiseaseAnesthesiaItem(
            title: "INDUCTION AGENTS AND HT CONTROL",
            description: "Propofol and etomidate are safe options in induction; short-acting beta blockers like Esmolol should be kept ready for sudden blood pressure spikes.",
            additionalInfo: "Hypertensive attacks can create risk of brain hemorrhage.",
          ),
          RenalDiseaseAnesthesiaItem(
            title: "MAINTENANCE ANESTHESIA AND MUSCLE RELAXANT SELECTION",
            description: "Volatile agents, propofol, and organ-independent opioids (Remifentanil) are ideal for maintenance.",
            subtitle: "Use of Atracurium or Cisatracurium as muscle relaxant is standard",
            additionalInfo: "Block depth must absolutely be monitored periodically.",
          ),
          RenalDiseaseAnesthesiaItem(
            title: "FLUID MANAGEMENT AND TRANSFUSION STRATEGY",
            description: "Solutions containing potassium and glucose should be avoided; fluid deficit should be replaced with PRBCs or colloids.",
            subtitle: "It is argued that allogeneic transfusion reduces rejection risk after kidney transplant",
            additionalInfo: "Risk of heart failure due to volume loading should be observed at every stage.",
          ),
        ],
      ),
      RenalDiseaseAnesthesiaCategory(
        categoryName: 'Anesthesia in Mild–Moderate Renal Dysfunction',
        items: [
          RenalDiseaseAnesthesiaItem(
            title: "MILD RENAL DYSFUNCTION AND PROTECTIVE APPROACH",
            description: "In patients with GFR range of 40–60 mL/min, the main goal is to protect perfusion of current renal tissue.",
            additionalInfo: "These patients are usually clinically asymptomatic but 'renal reserve' is low.",
          ),
          RenalDiseaseAnesthesiaItem(
            title: "MODERATE RENAL DYSFUNCTION AND AZOTEMIA MANAGEMENT",
            description: "Azotemia, anemia, and HT are added to the picture in the GFR range of 25–40 mL/min; risk of acute kidney injury (AKI) is high.",
            subtitle: "Postoperative hypovolemia can be a trigger for irreversible kidney damage in these patients",
            additionalInfo: "Critical stage where drug eliminations begin to slow down.",
          ),
          RenalDiseaseAnesthesiaItem(
            title: "MONITORING AND URINE OUTPUT GOAL (0.5 ML/KG/HOUR)",
            description: "In major surgeries, invasive arterial follow-up should be made and hourly urine output should be targeted above 0.5 mL/kg.",
            additionalInfo: "When oliguria (low urine) develops, hydration and if necessary diuretic support should be considered rapidly.",
          ),
          RenalDiseaseAnesthesiaItem(
            title: "PROTECTION OF RENAL PERFUSION DURING INDUCTION",
            description: "Normovolemia and blood pressure balance should be maintained during induction as severe hypotension will impair renal perfusion pressure.",
            additionalInfo: "Direct-acting agents can be selected if vasopressor support is required.",
          ),
          RenalDiseaseAnesthesiaItem(
            title: "MAINTENANCE ANESTHESIA AND SEVOFLURANE FLOW MANAGEMENT",
            description: "All agents can be used safely in moderate failure, except for low-flow sevoflurane (due to Compound A risk).",
            additionalInfo: "Fresh gas flow should be kept at an appropriate level with modern anesthesia devices.",
          ),
          RenalDiseaseAnesthesiaItem(
            title: "FLUID THERAPY AND NORMOVOLEMIA GOAL",
            description: "Targeting normovolemia or mild hypervolemia (volume excess) is usually a protective approach to protect the kidney.",
            additionalInfo: "Ischemia risk is reduced when kidneys are kept 'wet'.",
          ),
        ],
      ),
    ];
  }
}
