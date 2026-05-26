import 'package:flutter/material.dart';

class RenalPhysiologyAnesthesiaItem {
  final String title;
  final String description;
  final String? subtitle;
  final String? additionalInfo;

  RenalPhysiologyAnesthesiaItem({
    required this.title,
    required this.description,
    this.subtitle,
    this.additionalInfo,
  });
}

class RenalPhysiologyAnesthesiaCategory {
  final String categoryName;
  final List<RenalPhysiologyAnesthesiaItem> items;

  RenalPhysiologyAnesthesiaCategory({
    required this.categoryName,
    required this.items,
  });
}

class RenalPhysiologyAnesthesiaData {
  static List<RenalPhysiologyAnesthesiaCategory>
  getRenalPhysiologyAnesthesiaData(BuildContext context) {
    return [
      RenalPhysiologyAnesthesiaCategory(
        categoryName: 'Nephron Structure and Functions',
        items: [
          RenalPhysiologyAnesthesiaItem(
            title: "RENAL CORPUSCLE STRUCTURE",
            description:
                "The renal corpuscle, the initial part of the nephron, consists of the glomerular capillary tuft and the surrounding Bowman's capsule.",
            additionalInfo:
                "This is the anatomical region where blood is first filtered and ultrafiltrate is formed.",
          ),
          RenalPhysiologyAnesthesiaItem(
            title: "GLOMERULAR FILTRATION PRESSURE (60 MMHG)",
            description:
                "The hydrostatic pressure within the glomerular capillaries is approximately 60 mmHg, which corresponds to 60% of the mean arterial pressure.",
            subtitle:
                "Net filtration pressure is calculated as 10 mmHg by subtracting oncotic (25 mmHg) and interstitial (10 mmHg) pressures from hydrostatic pressure",
            additionalInfo:
                "Approximately 20% of the plasma reaching the kidneys (filtration fraction) is filtered into the Bowman's space thanks to this pressure difference.",
          ),
          RenalPhysiologyAnesthesiaItem(
            title: "PROXIMAL TUBULE AND ISOTONIC REABSORPTION",
            description:
                "65–75% of the ultrafiltrate coming from Bowman's capsule is reabsorbed isotonically in the proximal tubule.",
            subtitle:
                "The Na⁺-K⁺-ATPase pump, the main fuel for this process, is located in the basolateral membrane of the tubule",
            additionalInfo:
                "Water is reabsorbed osmotically and passively along with sodium.",
          ),
          RenalPhysiologyAnesthesiaItem(
            title: "PROXIMAL TUBULE ELECTROLYTE TRANSPORT",
            description:
                "The proximal tubule regulates acid-base balance by performing sodium reabsorption simultaneously with hydrogen secretion.",
            subtitle:
                "Angiotensin II and Norepinephrine increase reabsorption, while Dopamine and Fenoldopam decrease it",
            additionalInfo:
                "This region has extremely high permeability for water thanks to Aquaporin I channels.",
          ),
          RenalPhysiologyAnesthesiaItem(
            title: "LOOP OF HENLE AND NA REABSORPTION",
            description:
                "15–20% of sodium reabsorption occurs at the level of the loop of Henle; the descending limb is permeable to water, and the thick ascending limb is permeable to electrolytes.",
            subtitle:
                "While active NaCl reabsorption is performed in the thick ascending limb, water passage is prevented",
            additionalInfo:
                "This segment is also a critical region for calcium and magnesium management.",
          ),
          RenalPhysiologyAnesthesiaItem(
            title: "COUNTERCURRENT MECHANISM (VASA RECTA)",
            description:
                "The countercurrent mechanism, which ensures the kidney medulla remains hypertonic, is managed by the loop of Henle and accompanying vasa recta vessels.",
            additionalInfo:
                "This mechanism makes it possible to concentrate urine (retention of water).",
          ),
          RenalPhysiologyAnesthesiaItem(
            title: "DISTAL TUBULE AND CALCIUM REABSORPTION",
            description:
                "The distal tubule, where approximately 5% of sodium reabsorption is performed, is the primary reabsorption site for calcium under the influence of parathyroid hormone (PTH).",
            additionalInfo:
                "The target region for thiazide-type diuretics is this tubule segment.",
          ),
          RenalPhysiologyAnesthesiaItem(
            title: "COLLECTING DUCT AND P/I CELLS",
            description:
                "P cells in cortical collecting ducts are responsible for Na reabsorption and K secretion, while I cells perform H+ secretion.",
            subtitle:
                "Transport mechanisms on these cells are directly Aldosterone dependent",
            additionalInfo:
                "The final adjustment of potassium balance is carried out in this region.",
          ),
          RenalPhysiologyAnesthesiaItem(
            title: "MEDULLARY DUCT AND ADH EFFECT",
            description:
                "With the effect of Antidiuretic Hormone (ADH), aquaporin-2 channels increase and water permeability rises dramatically.",
            subtitle:
                "Urea reabsorption also contributes to maintaining medullary hypertonicity",
            additionalInfo:
                "Urine takes its final form while passing through here according to the body's water balance need.",
          ),
          RenalPhysiologyAnesthesiaItem(
            title: "JUXTAGLOMERULAR APPARATUS (JGA)",
            description:
                "The structure consisting of granular cells in the afferent arteriole and macula densa is the main pressure and volume sensor of the body.",
            subtitle:
                "Renin is synthesized with Beta-1 stimulation, activating the RAAS (Renin-Angiotensin-Aldosterone) system",
            additionalInfo:
                "JGA is the production center of hormones balancing both systemic blood pressure and glomerular filtration rate.",
          ),
        ],
      ),
      RenalPhysiologyAnesthesiaCategory(
        categoryName: 'Renal Circulation',
        items: [
          RenalPhysiologyAnesthesiaItem(
            title: "RENAL BLOOD FLOW (20-25% OF CARDIAC OUTPUT)",
            description:
                "Although kidneys constitute a small portion of body weight, they receive approximately one-fourth of the cardiac output.",
            additionalInfo:
                "This huge flow is required not only for the kidney's metabolic needs but for its filtration duty.",
          ),
          RenalPhysiologyAnesthesiaItem(
            title: "KIDNEY OXYGEN PRESSURES (CORTEX-MEDULLA)",
            description:
                "While PaO2 is approximately 50 mmHg in the cortex region of the kidney, this value can drop to 15 mmHg in the medulla.",
            subtitle:
                "Medulla is the region most sensitive to ischemia and hypoxia due to low oxygen pressure",
            additionalInfo:
                "The metabolic rate of the medulla is high (due to active transport), and blood supply is relatively low.",
          ),
          RenalPhysiologyAnesthesiaItem(
            title: "RENAL FLOW AND FILTRATION VALUES",
            description:
                "The amount of blood passing through the kidney in one minute is 1200 mL, plasma amount is 660 mL, and the filtered amount (GFR) is 120 mL in males.",
            subtitle:
                "The GFR value in females is around an average of 95 mL/min",
            additionalInfo:
                "Drops in these values are the most fundamental indicators of loss of kidney function (RF).",
          ),
          RenalPhysiologyAnesthesiaItem(
            title: "RENAL BLOOD FLOW AUTOREGULATION (80-180 MMHG)",
            description:
                "The kidney can keep its blood flow and GFR constant while mean arterial pressure (MAP) is between 80 and 180 mmHg.",
            subtitle:
                "Filtration completely stops when MAP drops below 40–50 mmHg",
            additionalInfo:
                "Thanks to autoregulation, the filtration rate is not affected by fluctuations in body blood pressure.",
          ),
          RenalPhysiologyAnesthesiaItem(
            title: "TUBULOGLOMERULAR FEEDBACK MECHANISM",
            description:
                "Macula densa regulates GFR by sensing the amount of NaCl in tubular fluid and changing afferent arteriole tone.",
            additionalInfo:
                "When high flow is detected, sodium load increases and macula densa sends signals reducing filtration.",
          ),
          RenalPhysiologyAnesthesiaItem(
            title: "HORMONAL CONTROL AND PROSTAGLANDINS",
            description:
                "Angiotensin II tries to prevent GFR from dropping even in difficult conditions by constricting the efferent arteriole.",
            subtitle:
                "Prostoglandins like PGE2 and PGI2 are kidney protective; NSAID use can trigger damage by destroying this protection",
            additionalInfo:
                "ANP, on the other hand, increases sodium excretion and urine amount by causing vasodilation.",
          ),
          RenalPhysiologyAnesthesiaItem(
            title: "NEURONAL AND PARACRINE CONTROL",
            description:
                "While Beta-1 receptors increase renin synthesis, Alpha-1 receptor stimulation leads to severe renal vasoconstriction.",
            subtitle:
                "Dopaminergic D1 and D2 receptor stimulation causes vasodilation in kidney vessels",
            additionalInfo:
                "Sympathetic system discharge is the main factor reducing urine output at times of stress.",
          ),
        ],
      ),
      RenalPhysiologyAnesthesiaCategory(
        categoryName: 'Anesthesia and the Kidney',
        items: [
          RenalPhysiologyAnesthesiaItem(
            title: "PERIOPERATIVE ACUTE KIDNEY INJURY (AKI)",
            description:
                "Incidence of seeing perioperative acute kidney injury after surgery in patients undergoing surgery is between 1% and 5%.",
            additionalInfo:
                "This risk is much more serious in elderly patients with low kidney reserve.",
          ),
          RenalPhysiologyAnesthesiaItem(
            title: "INDIRECT RENAL EFFECTS OF ANESTHESIA",
            description:
                "Most anesthetics reduce renal blood flow (RBF) by causing cardiopulmonary depression and stimulate endocrine responses.",
            subtitle:
                "Increased sympathetic activity reduces RBF and GFR; ADH, RAAS, and catecholamines suppress urine output",
            additionalInfo:
                "Adequate preoperative hydration is key in minimizing these effects.",
          ),
          RenalPhysiologyAnesthesiaItem(
            title: "VOLATILE AGENTS AND RENAL VASODILATION",
            description:
                "Although inhalation agents cause some vasodilation in kidney vessels, simultaneous blood pressure drop can impair net flow.",
            subtitle:
                "Sevoflurane can form Compound A at low flow but this does not create a clinically significant nephrotoxicity",
            additionalInfo:
                "Rise in molecular fluorine ion was also a concern in the past (it is clinically insignificant except for Methoxyflurane).",
          ),
          RenalPhysiologyAnesthesiaItem(
            title: "INTRAVENOUS ANESTHETIC AGENTS",
            description:
                "The effect of IV agents on kidney functions is minimal; ketamine can be protective in hypovolemia with its compensating effect.",
            additionalInfo:
                "Renal clearance of propofol and opioids usually follows a stable course.",
          ),
          RenalPhysiologyAnesthesiaItem(
            title: "NSAIDS AND RENAL RISKS",
            description:
                "Non-steroidal anti-inflammatory drugs significantly increase AKI risk by suppressing vasodilator prostaglandin synthesis.",
            additionalInfo:
                "NSAID use leaves the kidney defenseless particularly in hypovolemic and dehydrated patients.",
          ),
          RenalPhysiologyAnesthesiaItem(
            title: "ACE INHIBITORS AND GFR INTERACTION",
            description:
                "ACE inhibitors or ARB group drugs prevent the mechanism that protects GFR at low pressure by relaxing the efferent arteriole.",
            additionalInfo:
                "Therefore, they can increase the risk of kidney failure in patients with renal artery stenosis or who enter severe hypotension.",
          ),
          RenalPhysiologyAnesthesiaItem(
            title: "SURGICAL EFFECTS AND LAPAROSCOPY",
            description:
                "Pneumoperitoneum (increase in IAP) created during laparoscopy reduces urine output by increasing renal venous pressure and impairing perfusion.",
            additionalInfo:
                "Surgical manipulation itself also restricts renal flow via stress response.",
          ),
        ],
      ),
      RenalPhysiologyAnesthesiaCategory(
        categoryName: 'Osmotic Diuretics (Mannitol)',
        items: [
          RenalPhysiologyAnesthesiaItem(
            title: "MANNITOL MECHANISM OF ACTION",
            description:
                "Mannitol keeps water in the proximal tubule and loop of Henle by creating a non-reabsorbable osmotic load.",
            additionalInfo:
                "According to laws of osmosis, water is drawn towards the lumen where mannitol is located.",
          ),
          RenalPhysiologyAnesthesiaItem(
            title: "MANNITOL DOSAGE AND ADMINISTRATION (0.25-1 G/KG)",
            description:
                "Mannitol is usually applied intravenously in doses of 0.25–1 g/kg in the clinic.",
            additionalInfo:
                "Attention should be paid to transient volume overloading during rapid infusion.",
          ),
          RenalPhysiologyAnesthesiaItem(
            title: "MANNITOL AREAS OF USE AND PROPHYLAXIS",
            description:
                "It is used for acute kidney injury prophylaxis, reducing intracranial pressure (cerebral edema), and lowering intraocular pressure.",
            subtitle:
                "Can be useful in the diagnosis of acute oliguria (functional-structural differentiation)",
            additionalInfo:
                "It is the gold standard for 'relaxing the brain' particularly in neurosurgery.",
          ),
          RenalPhysiologyAnesthesiaItem(
            title: "MANNITOL SIDE EFFECT PROFILE",
            description:
                "While it can trigger hypervolemia and heart failure in the early period, it causes dehydration and hyponatremia in the late period.",
            subtitle:
                "Excessive use can lead to rebound (recurring) edema formation and nephrotoxicity",
            additionalInfo:
                "Caution should be exercised in patients with low cardiac reserve due to pulmonary edema risk.",
          ),
        ],
      ),
      RenalPhysiologyAnesthesiaCategory(
        categoryName: 'Loop Diuretics',
        items: [
          RenalPhysiologyAnesthesiaItem(
            title: "LOOP DIURETICS MECHANISM OF ACTION",
            description:
                "They provide a very strong diuresis by inhibiting the Na-K-2Cl cotransport system in the thick ascending limb of the loop of Henle.",
            additionalInfo:
                "Since they block one of the highest sodium absorption regions of the kidney, their 'ceiling effect' is high.",
          ),
          RenalPhysiologyAnesthesiaItem(
            title: "FUROSEMIDE DOSAGE AND ADMINISTRATION",
            description:
                "Furosemide (Lasix), the most commonly used agent in the clinic, is usually applied IV in doses of 20–100 mg.",
            additionalInfo:
                "Its effect starts within minutes and lasts approximately 2–6 hours.",
          ),
          RenalPhysiologyAnesthesiaItem(
            title: "LOOP DIURETICS AREAS OF USE",
            description:
                "They are used in the treatment of heart failure edema, cirrhosis ascites, nephrotic syndrome, HT, and hypercalcemia.",
            subtitle:
                "Facilitates fluid management by converting oliguric kidney failure to non-oliguric",
            additionalInfo:
                "However, there is no definitive proof that it improves mortality, it only helps manage the situation.",
          ),
          RenalPhysiologyAnesthesiaItem(
            title: "LOOP DIURETICS AND ELECTROLYTE SIDE EFFECTS",
            description:
                "Hypokalemia, metabolic alkalosis, hypocalcemia, and hypomagnesemia are their most typical side effects.",
            subtitle:
                "They can cause permanent or transient ototoxicity (hearing loss) in high doses",
            additionalInfo:
                "K+ follow-up is the most critical point in terms of anesthesia (arrhythmia risk).",
          ),
        ],
      ),
      RenalPhysiologyAnesthesiaCategory(
        categoryName: 'Thiazide Diuretics',
        items: [
          RenalPhysiologyAnesthesiaItem(
            title: "THIAZIDE MECHANISM OF ACTION",
            description:
                "They reduce sodium and water reabsorption by inhibiting the Na-Cl cotransporter at the beginning of the distal tubule.",
            additionalInfo:
                "Paradoxically, they increase reabsorption of calcium within the lumen.",
          ),
          RenalPhysiologyAnesthesiaItem(
            title: "THIAZIDE AREAS OF USE AND HYPERTENSION",
            description:
                "It is usually the first choice drug group in long-term medical treatment of essential hypertension.",
            subtitle:
                "Helpful also in treatment of Nephrogenic Diabetes Insipidus and hypercalciuria (stone formation)",
            additionalInfo:
                "Usually not discontinued on the morning of surgery but electrolyte profile should be checked.",
          ),
          RenalPhysiologyAnesthesiaItem(
            title: "THIAZIDE SIDE EFFECTS AND METABOLIC CHANGES",
            description:
                "Besides hypokalemia and alkalosis; they can cause hyperuricemia (gout attack), hyperglycemia, and hypercalcemia.",
            subtitle: "Also reported to be associated with hyperlipidemia",
            additionalInfo:
                "Rise in blood sugar requires attention in diabetic surgical patients.",
          ),
        ],
      ),
      RenalPhysiologyAnesthesiaCategory(
        categoryName: 'Potassium-Sparing Diuretics',
        items: [
          RenalPhysiologyAnesthesiaItem(
            title: "ALDOSTERONE ANTAGONISTS (SPIRONOLAKTONE)",
            description:
                "Blocks aldosterone receptors in collecting ducts, preventing Na reabsorption and stopping K+ loss.",
            subtitle:
                "Improves prognosis in liver ascites and severe heart failure (with Eplerenone)",
            additionalInfo:
                "Hormonal side effects like gynecomastia can be seen in long-term use of spironolactone.",
          ),
          RenalPhysiologyAnesthesiaItem(
            title: "SODIUM CHANNEL BLOCKERS (AMILORIDE)",
            description:
                "Primary potassium-sparing agents acting by directly blocking luminal sodium channels (ENaC) (Amiloride, Triamterene).",
            subtitle:
                "Nephrotoxicity risk shows a significant increase when used together with NSAIDs",
            additionalInfo:
                "Hyperkalemia and metabolic acidosis are their most important risks.",
          ),
        ],
      ),
      RenalPhysiologyAnesthesiaCategory(
        categoryName: 'Carbonic Anhydrase Inhibitors',
        items: [
          RenalPhysiologyAnesthesiaItem(
            title: "ACETAZOLAMIDE MECHANISM OF ACTION AND DOSAGE",
            description:
                "Suppresses bicarbonate reabsorption by inhibiting carbonic anhydrase in the proximal tubule; effective in alkalosis treatment.",
            subtitle: "Can be applied IV in doses of 250–500 mg in the clinic",
            additionalInfo:
                "Acetazolamide use creates an effect that acidifies the blood (metabolic acidosis) while alkalinizing the urine.",
          ),
          RenalPhysiologyAnesthesiaItem(
            title: "CARBONIC ANHİDRASE INHIBITORS AREAS OF USE",
            description:
                "Used in correction of metabolic alkalosis, lowering intraocular pressure, and prophylaxis of mountain sickness (acute altitude sickness).",
            additionalInfo:
                "Since its diuretic effect is weak, it cannot find a place in primary edema treatment.",
          ),
          RenalPhysiologyAnesthesiaItem(
            title: "ACETAZOLAMIDE SIDE EFFECTS",
            description:
                "Hypochloremic metabolic acidosis is its most fundamental side effect; can also cause paresthesia (numbness) and drowsiness.",
            additionalInfo:
                "Caution should be exercised in those with allergy to this group since it is a sulfonamide derivative.",
          ),
        ],
      ),
      RenalPhysiologyAnesthesiaCategory(
        categoryName: 'Critical Nephro-Physiological Data',
        items: [
          RenalPhysiologyAnesthesiaItem(
            title: "SUMMARY FLOW AND PRESSURE VALUES",
            description:
                "RBF: 1200 mL/min; GFR: 120 mL/min; Autoregulation: 80-180 mmHg MAP.",
            additionalInfo:
                "These values represent the normal functional capacity of the kidney.",
          ),
          RenalPhysiologyAnesthesiaItem(
            title: "OXYGEN CONSUMPTION AND SENSITIVITY",
            description:
                "Kidneys receive 20-25% of CO; Medulla PaO2 ≈ 15 mmHg is the most sensitive zone to hypoxia.",
            additionalInfo:
                "Ischemic damage usually starts in the medullary region.",
          ),
          RenalPhysiologyAnesthesiaItem(
            title: "REABSORPTION BY REGIONS",
            description: "Proximal: 65-75%; Henle: 15-20%; Distal: 5%.",
            additionalInfo:
                "The proximal tubule is the most active transport segment.",
          ),
          RenalPhysiologyAnesthesiaItem(
            title: "DIURETIC QUICK TABLE",
            description:
                "Mannitol (Osmotic), Furosemide (Loop), Thiazide (Distal), Spironolactone (K-sparing), Acetazolamide (Carbonic Anhydrase).",
            additionalInfo:
                "Each group acts on a specific segment and transport system.",
          ),
          RenalPhysiologyAnesthesiaItem(
            title: "PERIOPERATIVE AKI RISK",
            description:
                "Incidence is 1-5%; NSAIDs, ACEi, and hypovolemia are the main triggers.",
            additionalInfo:
                "Fluid management is the primary prevention strategy.",
          ),
        ],
      ),
    ];
  }
}
