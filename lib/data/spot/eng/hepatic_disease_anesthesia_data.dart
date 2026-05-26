import 'package:flutter/material.dart';

class HepaticDiseaseAnesthesiaItem {
  final String title;
  final String description;
  final String? subtitle;
  final String? additionalInfo;

  HepaticDiseaseAnesthesiaItem({
    required this.title,
    required this.description,
    this.subtitle,
    this.additionalInfo,
  });
}

class HepaticDiseaseAnesthesiaCategory {
  final String categoryName;
  final List<HepaticDiseaseAnesthesiaItem> items;

  HepaticDiseaseAnesthesiaCategory({
    required this.categoryName,
    required this.items,
  });
}

class HepaticDiseaseAnesthesiaData {
  static List<HepaticDiseaseAnesthesiaCategory> getHepaticDiseaseAnesthesiaData(
    BuildContext context,
  ) {
    return [
      HepaticDiseaseAnesthesiaCategory(
        categoryName: 'Acute Hepatitis',
        items: [
          HepaticDiseaseAnesthesiaItem(
            title: "VIRAL HEPATITIS ETIOLOGY (A, B, C, D, E)",
            description: "While HAV and HEV are transmitted via the fecal-oral route; HBV, HCV, and HDV spread through blood or body fluids.",
            additionalInfo: "Presence of HBV (HBsAg positivity) is absolutely required for HDV to cause an infection.",
          ),
          HepaticDiseaseAnesthesiaItem(
            title: "OTHER VIRAL AND INFECTIOUS CAUSES",
            description: "Liver inflammation is not limited only to hepatitis viruses; it can also be triggered by agents like EBV, CMV, and HSV.",
            additionalInfo: "Hepatic involvement and enzyme elevations can be seen during systemic viral infections.",
          ),
          HepaticDiseaseAnesthesiaItem(
            title: "CLINICAL COURSE AND STAGES IN ACUTE HEPATITIS",
            description: "The disease follows a 1–2 week prodromal period (fatigue, nausea, fever) followed by a 2–12 week jaundice (icterus) phase.",
            subtitle: "Full recovery can generally take as long as 4 months",
            additionalInfo: "In this process, patients' metabolic capacities and synthesis functions are seriously restricted.",
          ),
          HepaticDiseaseAnesthesiaItem(
            title: "CHRONICITY RISKS AND RATES",
            description: "After acute infection, 3–10% of HBV cases and 50% of HCV cases show a tendency towards chronicity.",
            additionalInfo: "Chronic cases are the main risk group for cirrhosis and hepatocellular carcinoma (HCC).",
          ),
          HepaticDiseaseAnesthesiaItem(
            title: "PROPHYLAXIS AND IMMUNITY MANAGEMENT",
            description: "While post-exposure immunoglobulin prophylaxis shows high efficacy for HBV, a similar protection method is ineffective for HCV.",
            additionalInfo: "HBV vaccination and antibody follow-up are of vital importance for healthcare personnel.",
          ),
          HepaticDiseaseAnesthesiaItem(
            title: "DRUG-INDUCED HEPATITIS AND TOXICITY (ACETAMINOPHEN)",
            description: "Alcohol use leads to fatty hepatomegaly, and acetaminophen intakes over 25 grams lead to fulminant hepatitis.",
            subtitle: "Chlorpromazine and oral contraceptives (OCPs) can typically cause cholestasis",
            additionalInfo: "Drug-induced damages are determinant for drug dose adjustments in anesthesia practice.",
          ),
          HepaticDiseaseAnesthesiaItem(
            title: "ANESTHESIA APPROACH IN ACUTE HEPATITIS",
            description: "General drug sensitivity is increased in patients with viral hepatitis, and tolerance to anesthetics can develop in alcoholics.",
            subtitle: "Inhalation agents like isoflurane or sevoflurane that best preserve perfusion should be preferred",
            additionalInfo: "Elective surgeries must be postponed until full recovery is achieved in the acute hepatitis picture.",
          ),
          HepaticDiseaseAnesthesiaItem(
            title: "PRESERVATION OF HEPATIC PERFUSION AND THINGS TO AVOID",
            description: "Hypotension, sympathetic activation, and high airway pressures (PEEP) that will impair liver flow should be meticulously avoided.",
            additionalInfo: "Maintenance of organ blood flow is critical to prevent acute damage from turning into chronic failure.",
          ),
        ],
      ),
      HepaticDiseaseAnesthesiaCategory(
        categoryName: 'Chronic Hepatitis',
        items: [
          HepaticDiseaseAnesthesiaItem(
            title: "DEFINITION OF CHRONIC HEPATITIS AND DURATION (6 MONTHS)",
            description: "Occurrence of inflammation and necrosis findings in the liver for longer than 6 months clinically is defined as 'Chronic Hepatitis'.",
            additionalInfo: "Inflammation showing continuity prepares the ground for fibrosis.",
          ),
          HepaticDiseaseAnesthesiaItem(
            title: "CLASSIFICATION AND TYPES OF CHRONIC HEPATITIS",
            description: "It is classified in three main headings morphologically as Persistent, Lobular, and Active chronic hepatitis.",
            additionalInfo: "The surgical risk scale and anesthesia management of each type differ.",
          ),
          HepaticDiseaseAnesthesiaItem(
            title: "ETIOLOGICAL FACTORS IN CHRONIC HEPATITIS",
            description: "The most commonly encountered causes of chronic hepatitis across the world are HBV and HCV infections.",
            additionalInfo: "Alcohol and autoimmune diseases are other important components.",
          ),
          HepaticDiseaseAnesthesiaItem(
            title: "ANESTHESIA AND STEROID MANAGEMENT IN CHRONIC HEPATITIS",
            description: "Persistent and lobular types should be managed like acute hepatitis; active chronic hepatitis like cirrhosis protocol.",
            subtitle: "Long-term steroid side effects and additional autoimmune complications should be considered in those with autoimmune active hepatitis",
            additionalInfo: "Adrenal suppression risk should also be evaluated in patients using corticosteroids.",
          ),
        ],
      ),
      HepaticDiseaseAnesthesiaCategory(
        categoryName: 'Cirrhosis',
        items: [
          HepaticDiseaseAnesthesiaItem(
            title: "ROLE OF ALCOHOL IN CIRRHOSIS ETIOLOGY",
            description: "The most common etiological cause of liver cirrhosis worldwide is chronic alcohol use.",
            additionalInfo: "Non-alcoholic fatty liver disease (NASH) is also an increasingly common cause.",
          ),
          HepaticDiseaseAnesthesiaItem(
            title: "CIRRHOSIS PATHOPHYSIOLOGY AND FIBROSIS",
            description: "It is an end-stage picture characterized by widespread fibrosis following hepatocyte necrosis and nodular regeneration of the parenchyma.",
            additionalInfo: "This structural defect leads to portal hypertension by increasing blood flow resistance.",
          ),
          HepaticDiseaseAnesthesiaItem(
            title: "PORTAL HT AND VARICEAL COMPLICATIONS IN CIRRHOSIS",
            description: "The most feared complications of cirrhosis are ascites, esophageal variceal bleedings, and encephalopathy developing depending on portal hypertension.",
            subtitle: "Disease progression can prepare the ground for hepatocellular carcinoma (HCC) development",
            additionalInfo: "Variceal bleedings are a high-mortality emergency in anesthesia management.",
          ),
        ],
      ),
      HepaticDiseaseAnesthesiaCategory(
        categoryName: 'Preoperative Considerations',
        items: [
          HepaticDiseaseAnesthesiaItem(
            title: "GASTROINTESTINAL SYSTEM AND ENCEPHALOPATHY RISK",
            description: "Increase of nitrogen load in the intestine during variceal bleedings caused by portal HT can trigger encephalopathy crises.",
            additionalInfo: "High protein diet and intra-intestinal blood increase this risk.",
          ),
          HepaticDiseaseAnesthesiaItem(
            title: "HEMATOLOGICAL PICTURE AND PLATELET THRESHOLD (<75,000)",
            description: "Anemia, thrombocytopenia, and coagulopathy depending on synthesis disturbance are typical in cirrhosis; replacement should be considered in values below 75,000/µL.",
            additionalInfo: "Splenomegaly (hypersplenism) is responsible for the sequestration of platelets.",
          ),
          HepaticDiseaseAnesthesiaItem(
            title: "CARDIAC STATUS AND HYPERDYNAMICS",
            description: "Cirrhotic patients are usually in a 'Hyperdynamic Circulation' with high cardiac output and low vascular resistance.",
            subtitle: "Screening should be done for cirrhotic cardiomyopathy (CMP) and coronary artery disease (CAD) in patients over 50 years of age",
            additionalInfo: "Vasodilation can make systemic blood pressure follow-up difficult.",
          ),
          HepaticDiseaseAnesthesiaItem(
            title: "PULMONARY CHANGES AND SHUNT INCREASE",
            description: "Chronic hypoxia picture is seen due to increase of intrapulmonary shunts, diaphragmatic pressure, and atelectases.",
            additionalInfo: "Hepatopulmoner syndrome (HPS) can develop with this mechanism.",
          ),
          HepaticDiseaseAnesthesiaItem(
            title: "PORTOPULMONARY HYPERTENSION (PAP >25 MMHG)",
            description: "PAH >25 mmHg, PVR >240 dyn·s/cm⁵, and transpulmonary gradient >12 mmHg leads to portopulmonary HT diagnosis.",
            subtitle: "Surgical and transplant mortality rises to an extreme level when PAP >45 mmHg",
            additionalInfo: "This picture also brings along right heart failure risk.",
          ),
          HepaticDiseaseAnesthesiaItem(
            title: "RENAL FUNCTIONS AND HEPATORENAL SYNDROME",
            description: "Dilutional hyponatremia, hypokalemia, and irreversible renal vasoconstriction (Hepatorenal Syndrome) can be seen with the development of ascites.",
            additionalInfo: "Fluid management should be done very sensitively to protect renal perfüzyon.",
          ),
          HepaticDiseaseAnesthesiaItem(
            title: "FLUID AND VOLUME BALANCE (DAILY WEIGHT FOLLOW-UP)",
            description: "Diuretics should be given such that daily weight loss does not exceed 1 kg in those with ascites and edema; and 0.5 kg in those only with ascites.",
            additionalInfo: "Rapid weight loss triggers prerenal kidney failure.",
          ),
          HepaticDiseaseAnesthesiaItem(
            title: "CENTRAL NERVOUS SYSTEM AND LACTULOSE TREATMENT",
            description: "Lactulose (30–50 mL / 8 hours) and neomycin (500 mg / 6 hours) are fundamental treatments in encephalopathy management.",
            additionalInfo: "Intestinal acidification and bacterial suppression are targeted for ammonia clearance.",
          ),
        ],
      ),
      HepaticDiseaseAnesthesiaCategory(
        categoryName: 'Intraoperative Management',
        items: [
          HepaticDiseaseAnesthesiaItem(
            title: "DRUG RESPONSE AND PSEUDOCHOLINESTERASE CHANGE",
            description: "As the synthetic function of the liver is disturbed, pseudocholinesterase levels drop and this can prolong the Succinylcholine effect.",
            additionalInfo: "Phase I and Phase II metabolism capacities are seriously restricted.",
          ),
          HepaticDiseaseAnesthesiaItem(
            title: "ANESTHESIA TECHNIQUE AND COAGULOPATHY RISK",
            description: "Liver flow depends largely on the artery; regional techniques carry risk due to coagulopathy and thrombocytopenia.",
            additionalInfo: "Clotting parameters (PT, INR) and platelet count must absolutely be evaluated before axial block.",
          ),
          HepaticDiseaseAnesthesiaItem(
            title: "MAINTENANCE ANESTHESIA AND OPIOID ELIMINATION",
            description: "While maintenance is done with isoflurane or sevoflurane after propofol induction; it should not be forgotten that the half-life of long-acting opioids is prolonged.",
            additionalInfo: "Opioid accumulation increases the risk of postoperative respiratory depression.",
          ),
          HepaticDiseaseAnesthesiaItem(
            title: "INTRAOPERATIVE MONITORING AND ECHO",
            description: "Invasive arterial blood pressure follow-up and frequent blood gas analysis are standard; use of echo is recommended in volume evaluation.",
            subtitle: "PEEP can be used carefully in severe hypoxemia by monitoring venous return",
            additionalInfo: "Hemodynamic reserves of cirrhotic patients are low.",
          ),
          HepaticDiseaseAnesthesiaItem(
            title: "FLUID REPLACEMENT AND CITRATE TOXICITY",
            description: "Colloids should be used to prevent sudden hypotension after intraoperative ascites drainage and calcium support should be given in massive transfusion.",
            subtitle: "Inability to break down citrate in erythrocyte suspensions in the liver leads to hypocalcemia",
            additionalInfo: "Ionized calcium levels should be followed closely.",
          ),
        ],
      ),
      HepaticDiseaseAnesthesiaCategory(
        categoryName: 'Hepatic Surgery',
        items: [
          HepaticDiseaseAnesthesiaItem(
            title: "TECHNICAL REQUIREMENTS IN HEPATIC SURGERY",
            description: "Wide IV paths, CVP follow-up, invasive artery, and effective warming systems are mandatory for operation success.",
            additionalInfo: "Ischemic damages that can develop during Pringle maneuver (hepatic pedicle clamp) should be kept in mind.",
          ),
          HepaticDiseaseAnesthesiaItem(
            title: "ROLE OF DOPPLER AND ECHO IN MONITORING",
            description: "Transesophageal echo or doppler should be used since CVP may remain insufficient alone in evaluating venous load.",
            additionalInfo: "Clarification of volume status reduces current load on the heart.",
          ),
          HepaticDiseaseAnesthesiaItem(
            title: "HYPOTENSION AND ANTIFIBRINOLYTIC USE",
            description: "Tranexamic acid or e-aminocaproic acid support may be required in cases where fibrinolysis develops along with hepatic dysfunction.",
            additionalInfo: "Systemic homeostasis should be provided for control of bleeding.",
          ),
          HepaticDiseaseAnesthesiaItem(
            title: "HYDATID CYST AND ANAPHYLAXIS RISK",
            description: "It should not be forgotten that a severe anaphylactic shock picture can develop in case of cyst content spreading to the peritoneum.",
            additionalInfo: "Adrenovascular preparation should be complete during the operation.",
          ),
        ],
      ),
      HepaticDiseaseAnesthesiaCategory(
        categoryName: 'Liver Transplantation',
        items: [
          HepaticDiseaseAnesthesiaItem(
            title: "PREOPERATIVE MELD SCORE AND MORTALITY",
            description: "MELD score based on bilirubin, INR, and Creatinine values is the gold standard in predicting surgical and postoperative mortality.",
            subtitle: "CVVH (continuous venovenous hemodiafiltration) may be required during the operation in patients on the renal limit",
            additionalInfo: "A low MELD score reflects a better survival probability.",
          ),
          HepaticDiseaseAnesthesiaItem(
            title: "DISSECTION PHASE AND ELECTROLYTE BALANCE",
            description: "Severe hyponatremia can be seen in this phase where major vessels are manipulated; but electrolyte corrections should not be done too rapidly.",
            additionalInfo: "Rapid Na correction can lead to central pontine myelinolysis.",
          ),
          HepaticDiseaseAnesthesiaItem(
            title: "ANHEPATIC PHASE AND VENOVENOUS BYPASS",
            description: "Venovenous bypass can be preferred to protect preload in this period where inflow and outflow to the liver are completely cut off.",
            additionalInfo: "It is the period where cardiac output drops the most.",
          ),
          HepaticDiseaseAnesthesiaItem(
            title: "NEOHEPATIC PHASE AND REPERFUSION SYNDROME",
            description: "Reperfusion syndrome developing with unclamping of the portal vein; proceeds with sudden hypotension, hyperkalemia, and acidosis.",
            subtitle: "CaCl (Calcium chloride) and NaHCO₃ (Sodium bicarbonate) should be kept ready to prevent cardiac depression",
            additionalInfo: "It is one of the most risky and fatal phases.",
          ),
          HepaticDiseaseAnesthesiaItem(
            title: "POSTOPERATIVE FOLLOW-UP AND IMMUNOSUPPRESSION",
            description: "Hepatic arterial flow, immunosuppressive drug levels, and multisystemic functions are followed closely after the surgery.",
            subtitle: "Early extubation is possible in appropriate cases if lung functions allow",
            additionalInfo: "Rejection findings should be monitored carefully clinically.",
          ),
        ],
      ),
    ];
  }
}
