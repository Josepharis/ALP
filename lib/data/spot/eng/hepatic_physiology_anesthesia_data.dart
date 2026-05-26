import 'package:flutter/material.dart';

class HepaticPhysiologyAnesthesiaItem {
  final String title;
  final String description;
  final String? subtitle;
  final String? additionalInfo;

  HepaticPhysiologyAnesthesiaItem({
    required this.title,
    required this.description,
    this.subtitle,
    this.additionalInfo,
  });
}

class HepaticPhysiologyAnesthesiaCategory {
  final String categoryName;
  final List<HepaticPhysiologyAnesthesiaItem> items;

  HepaticPhysiologyAnesthesiaCategory({
    required this.categoryName,
    required this.items,
  });
}

class HepaticPhysiologyAnesthesiaData {
  static List<HepaticPhysiologyAnesthesiaCategory>
      getHepaticPhysiologyAnesthesiaData(BuildContext context) {
    return [
      HepaticPhysiologyAnesthesiaCategory(
        categoryName: 'Functional Anatomy',
        items: [
          HepaticPhysiologyAnesthesiaItem(
            title: "LIVER WEIGHT AND IMPORTANCE",
            description: "The liver is the heaviest solid organ of the body, with an average of 1500 grams in an adult human.",
            additionalInfo: "This weight reflects the organ's huge metabolic capacity and blood supply.",
          ),
          HepaticPhysiologyAnesthesiaItem(
            title: "LIVER LOBULAR STRUCTURE",
            description: "The organ is functionally divided into between 50,000 and 100,000 small lobules.",
            additionalInfo: "Each lobule consists of hepatocyte cords arranged around a central vein.",
          ),
          HepaticPhysiologyAnesthesiaItem(
            title: "ACINUS ZONES AND OXYGENATION (ZONES 1-3)",
            description: "Zone 1 is closest to the portal system and receives the most oxygen, while Zone 3 is around the central vein and is the least oxygenated region.",
            subtitle: "Zone 3, the centrilobular area, is the region most sensitive to hypoxia and ischemic damage",
            additionalInfo: "Damage usually starts from Zone 3 and spreads towards the center.",
          ),
          HepaticPhysiologyAnesthesiaItem(
            title: "KUPFFER CELLS (MACROPHAGES)",
            description: "Kupffer cells lining the sinusoids constitute the largest part of the entire body macrophage system.",
            additionalInfo: "The main line of defense clearing bacteria, toxins, and particles coming from portal blood.",
          ),
          HepaticPhysiologyAnesthesiaItem(
            title: "LIVER INNERVATION (T6-T11)",
            description: "The liver is innervated by sympathetic, vagus (parasympathetic) from T6–T11 spinal segments, and the right phrenic nerve.",
            additionalInfo: "This innervation regulates vessel tone and metabolic processes.",
          ),
        ],
      ),
      HepaticPhysiologyAnesthesiaCategory(
        categoryName: 'Hepatic Blood Flow',
        items: [
          HepaticPhysiologyAnesthesiaItem(
            title: "HEPATIC BLOOD FLOW AND CARDIAC OUTPUT (25-30%)",
            description: "The liver is a high-flow organ receiving approximately 25-30% (1500 mL/min) of cardiac output at rest.",
            additionalInfo: "This high flow rate is a fundamental requirement for both metabolism and filtration functions.",
          ),
          HepaticPhysiologyAnesthesiaItem(
            title: "OXYGEN NEED AND SUPPLY (ARTERIAL-PORTAL)",
            description: "Half of the liver's total oxygen need is met from the hepatic artery, and the other half from the portal vein.",
            subtitle: "The hepatic artery provides 45–55% of oxygen, while the portal vein offers 50–55%",
            additionalInfo: "Although portal vein flow is greater, its oxygen content is lower compared to the artery.",
          ),
          HepaticPhysiologyAnesthesiaItem(
            title: "HEPATIC RECEPTORS (ALPHA, BETA, DOPAMINE)",
            description: "Alpha-1 (vasoconstriction), beta-2, and D1 (vasodilation) receptors are actively found in the hepatic artery.",
            subtitle: "In the portal vein, only alpha-1 and D1 receptor stimulation is seen",
            additionalInfo: "Receptor distribution determines how organ flow will be directed at times of systemic stress.",
          ),
          HepaticPhysiologyAnesthesiaItem(
            title: "SYMPATHETIC ACTIVATION AND CLINICAL EFFECTS",
            description: "While severe sympathetic activation reduces hepatic blood flow; beta blockers reduce both flow and portal pressure.",
            additionalInfo: "Surgical stress can reduce hepatic perfusion as sympathetic discharge suppresses urine output.",
          ),
        ],
      ),
      HepaticPhysiologyAnesthesiaCategory(
        categoryName: 'Reservoir Function',
        items: [
          HepaticPhysiologyAnesthesiaItem(
            title: "PORTAL VEIN PRESSURE (7-10 MMHG)",
            description: "Normal portal vein pressure is between 7 and 10 mmHg and is a low-resistance system.",
            additionalInfo: "Pressure rising above 10-12 mmHg is defined as portal hypertension (PHT).",
          ),
          HepaticPhysiologyAnesthesiaItem(
            title: "HEPATIC BLOOD RESERVOIR AND CVP MANAGEMENT",
            description: "The liver undertakes a giant blood reservoir duty that can tolerate fluctuations in blood volume.",
            subtitle: "If central venous pressure (CVP) is kept low during surgery (CVP <5), liver-derived bleeding decreases significantly",
            additionalInfo: "Controlled hypovolemia/hypotension strategies can be used for control of bleeding.",
          ),
        ],
      ),
      HepaticPhysiologyAnesthesiaCategory(
        categoryName: 'Metabolic Functions',
        items: [
          HepaticPhysiologyAnesthesiaItem(
            title: "GLUCOSE METABOLISM AND GLYCOGEN STORES",
            description: "There is a 70 gram glycogen store in the liver to meet the body's daily 150 gram glucose consumption.",
            subtitle: "The brain uses glucose as main fuel but adapts to liver-derived ketone bodies during prolonged fasting",
            additionalInfo: "Keeping glucose level in a narrow band (euglycemia) is the fundamental duty.",
          ),
          HepaticPhysiologyAnesthesiaItem(
            title: "PROTEIN SYNTHESIS AND PLASMA PROTEINS",
            description: "Except for immunoglobulins (lymphatic/plasma cells), almost all plasma proteins are synthesized in hepatocytes.",
            additionalInfo: "Albumin constitutes the largest part of these proteins.",
          ),
          HepaticPhysiologyAnesthesiaItem(
            title: "COAGULATION FACTOR SYNTHESIS (EXCEPT VIII AND VWF)",
            description: "All clotting factors except Factor VIII and vWF (vessel endothelium/platelet) are produced in the liver.",
            additionalInfo: "Severe bleeding tendency is observed in advanced liver damage as factor synthesis decreases.",
          ),
          HepaticPhysiologyAnesthesiaItem(
            title: "HORMONE METABOLISM AND T4-T3 CONVERSION",
            description: "Conversion of thyroid hormone T4 to active form T3 and breakdown of insulin, glucagon, steroids, and ADH are done in the liver.",
            additionalInfo: "Clinical pictures like gynecomastia depending on estrogen accumulation can develop in case of insufficiency.",
          ),
        ],
      ),
      HepaticPhysiologyAnesthesiaCategory(
        categoryName: 'Drug Metabolism',
        items: [
          HepaticPhysiologyAnesthesiaItem(
            title: "PHASE I METABOLISM (OXIDATION-P450)",
            description: "Oxidation, reduction, and hydrolysis reactions are carried out over the cytochrome P450 system.",
            subtitle: "Barbiturates and benzodiazepines are inactivated with Phase I reactions",
            additionalInfo: "Most drugs are made more polar (water-integratable) at this stage.",
          ),
          HepaticPhysiologyAnesthesiaItem(
            title: "PHASE II METABOLISM (CONJUGATION)",
            description: "It is the stage of making drugs completely water-soluble and excretable with glucuronidation, sulfation, or acetylation.",
            additionalInfo: "Molecules passing or not passing Phase I enter here.",
          ),
          HepaticPhysiologyAnesthesiaItem(
            title: "P450 ENZYME INDUCING AGENTS",
            description: "Ethanol, barbiturates, ketamine, and benzodiazepines accelerate drug breakdown by inducing P450 enzymes in chronic use.",
            additionalInfo: "In this case durations of effect of other drugs can shorten (tolerance development).",
          ),
          HepaticPhysiologyAnesthesiaItem(
            title: "HIGH-EXTRACTION AND FLOW-DEPENDENT DRUGS",
            description: "Clearance of drugs like lidocaine, morphine, and verapamil depends directly on hepatic blood flow.",
            subtitle: "Elimination rate of these agents is limited by the amount of blood coming to the organ rather than enzyme capacity",
            additionalInfo: "Toxicity risk of these drugs increases when blood flow decreases (anesthesia/shock).",
          ),
        ],
      ),
      HepaticPhysiologyAnesthesiaCategory(
        categoryName: 'Bile Physiology',
        items: [
          HepaticPhysiologyAnesthesiaItem(
            title: "BILE PRODUCTION AND COMPOSITION",
            description: "Bile synthesized from hepatocytes consists of bile salts, cholesterol, phospholipids, and conjugated bilirubin.",
            additionalInfo: "Produced bile is concentrated by being stored in the gallbladder.",
          ),
          HepaticPhysiologyAnesthesiaItem(
            title: "BILE DEFICIENCY AND VITAMIN REABSORPTION",
            description: "Cessation of bile flow (cholestasis) leads to absorption disturbance of fat-soluble ADEK vitamins.",
            subtitle: "Vitamin K deficiency impairs clotting by lowering Prothrombin and factor VII, IX, and X levels",
            additionalInfo: "This situation is detected in laboratory environment with PT (prothrombin time) prolongation.",
          ),
        ],
      ),
      HepaticPhysiologyAnesthesiaCategory(
        categoryName: 'Liver Function Tests',
        items: [
          HepaticPhysiologyAnesthesiaItem(
            title: "TOTAL BILIRUBIN AND JAUNDICE THRESHOLD (>3)",
            description: "Normal total bilirubin in blood is <1.5 mg/dL, and jaundice (icterus) becomes clinically visible when the value exceeds 3 mg/dL.",
            additionalInfo: "Yellowing in the whites of eyes (sclera) is the first prominent clinical finding.",
          ),
          HepaticPhysiologyAnesthesiaItem(
            title: "CONJUGATED (DIRECT) BILIRUBIN INCREASE",
            description: "Direct bilirubin elevation usually indicates hepatocyte function disturbance, cholestasis, or bile duct obstruction.",
            additionalInfo: "Dark-colored appearance of urine accompanies this picture.",
          ),
          HepaticPhysiologyAnesthesiaItem(
            title: "UNCONJUGATED (INDIRECT) BILIRUBIN INCREASE",
            description: "Elevation of bilirubin in the blood before entering the liver or before being conjugated suggests excessive hemolysis or genetic conjugation defects.",
            additionalInfo: "Bilirubin has not yet become water-soluble.",
          ),
          HepaticPhysiologyAnesthesiaItem(
            title: "AMINOTRANSFERASES (AST/ALT) AND CELL DAMAGE",
            description: "AST and ALT are the most sensitive enzymes indicating that the integrity of hepatocytes is disturbed and there is active cell damage.",
            additionalInfo: "They are fundamental tests in following hepatitis or toxic damage.",
          ),
          HepaticPhysiologyAnesthesiaItem(
            title: "ALKALINE PHOSPHATASE (ALP) AND OBSTRUCTION",
            description: "Alkaline phosphatase is normally between 25–85 IU/L; it rises rapidly in bile duct obstructions.",
            additionalInfo: "Also can be detected high in bone diseases.",
          ),
          HepaticPhysiologyAnesthesiaItem(
            title: "SERUM ALBUMIN LEVEL AND HALF-LIFE (2-3 WEEKS)",
            description: "Serum albumin (3.5–5.5 g/dL) reflects the chronic synthetic capacity of the liver.",
            subtitle: "Albumin's half-life being 2–3 weeks causes the level not to drop immediately in acute liver damage",
            additionalInfo: "Low albumin in chronic liver failure leads to ascites and edema by lowering plasma oncotic pressure.",
          ),
          HepaticPhysiologyAnesthesiaItem(
            title: "BLOOD AMMONIA AND ENCEPHALOPATHY RISK",
            description: "Elevation of ammonia, which is normally 47–65 µmol/L, is the main trigger of hepatic encephalopathy development.",
            additionalInfo: "Ammonia creates neural toxicity by crossing the blood-brain barrier.",
          ),
          HepaticPhysiologyAnesthesiaItem(
            title: "PROTHROMBIN TIME (PT) AND INSUFFICIENCY",
            description: "Prolongation of PT, which lasts 11–14 seconds, is the most sensitive and earliest synthetic indicator of acute liver failure.",
            additionalInfo: "Unlike albumin, it is immediately affected by acute damage as the half-life of coagulation factors is short.",
          ),
          HepaticPhysiologyAnesthesiaItem(
            title: "VISCOELASTIC COAGULATION TESTS (TEG/ROTEM)",
            description: "TEG (Thromboelastography) and ROTEM facilitate bleeding management by analyzing clot formation and stability in real-time.",
            additionalInfo: "It is a standard monitoring piece particularly in liver transplant surgeries.",
          ),
        ],
      ),
      HepaticPhysiologyAnesthesiaCategory(
        categoryName: 'Effects of Anesthesia on the Liver',
        items: [
          HepaticPhysiologyAnesthesiaItem(
            title: "ANESTHETIC EFFECTS ON BLOOD FLOW",
            description: "General and regional anesthesia methods generally reduce hepatic blood flow over cardiovascular effects.",
            subtitle: "Particularly high airway pressure ventilation and major liver surgery can reduce flow at a rate of 60%",
            additionalInfo: "Positive end-expiratory pressure (PEEP) restricts portal flow by preventing venous return.",
          ),
          HepaticPhysiologyAnesthesiaItem(
            title: "SURGICAL STRESS AND METABOLIC RESPONSE (HYPERGLYCEMIA)",
            description: "Catecholamine, glucagon, and cortisol increasing in response to surgical trauma lead to a severe hyperglycemia picture.",
            subtitle: "Deep general anesthesia or effective sympathetic blockade (regional) can suppress this hyperglycemic response",
            additionalInfo: "Control of stress in the patient is important for metabolic stability.",
          ),
          HepaticPhysiologyAnesthesiaItem(
            title: "OPIOIDS AND SPHINCTER OF ODDI SPASM",
            description: "Many opioids can lead to spasm in the sphincter of Oddi; this clinical picture can be reversed with glucagon or naloxone.",
            additionalInfo: "Increase in bile duct pressure can cause abdominal pain.",
          ),
          HepaticPhysiologyAnesthesiaItem(
            title: "POSTOPERATIVE JAUNDICE ETIOLOGY",
            description: "The most common cause of jaundice developing after surgery is not enzyme deficiency, but excessive RBC breakdown or resorption of large hematomas.",
            additionalInfo: "Intraoperative blood transfusions can also increase bilirubin load.",
          ),
        ],
      ),
      HepaticPhysiologyAnesthesiaCategory(
        categoryName: 'Key Exam Spots',
        items: [
          HepaticPhysiologyAnesthesiaItem(
            title: "SUMMARY FLOW AND PRESSURE VALUES",
            description: "Liver receives 25-30% of CO (1500 mL/min); portal pressure: 7-10 mmHg.",
            additionalInfo: "These values represent the normal vascular capacity of the liver.",
          ),
          HepaticPhysiologyAnesthesiaItem(
            title: "OXYGENATION AND ACINUS ZONES",
            description: "Artery meets 45-55% of O2; Zone 3 (centrilobular) is most sensitive to hypoxia.",
            additionalInfo: "Zone 1 is the most metabolic and best-oxygenated zone.",
          ),
          HepaticPhysiologyAnesthesiaItem(
            title: "METABOLIC QUICK REMINDERS",
            description: "Daily glucose: 150g; Albumin half-life: 2-3 weeks; PT: earliest indicator of failure.",
            additionalInfo: "Coagulation factors (except VIII/vWF) are liver-derived.",
          ),
          HepaticPhysiologyAnesthesiaItem(
            title: "DRUG CLEARANCE PRINCIPLES",
            description: "High extraction: flow-dependent (Morphine, Lidocaine); Low extraction: capacity-dependent.",
            additionalInfo: "Clearance logic determines toxicity risk in shock/anesthesia.",
          ),
          HepaticPhysiologyAnesthesiaItem(
            title: "PERIOPERATIVE JAUNDICE",
            description: "Threshold >3 mg/dL; post-op usually due to transfusion/hematoma breakdown.",
            additionalInfo: "Check conjugated vs unconjugated levels for differential diagnosis.",
          ),
        ],
      ),
    ];
  }
}
