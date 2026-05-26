import 'package:flutter/material.dart';

class MaternalFetalPhysiologyAnesthesiaItem {
  final String title;
  final String description;
  final String? subtitle;
  final String? additionalInfo;

  MaternalFetalPhysiologyAnesthesiaItem({
    required this.title,
    required this.description,
    this.subtitle,
    this.additionalInfo,
  });
}

class MaternalFetalPhysiologyAnesthesiaCategory {
  final String categoryName;
  final List<MaternalFetalPhysiologyAnesthesiaItem> items;

  MaternalFetalPhysiologyAnesthesiaCategory({
    required this.categoryName,
    required this.items,
  });
}

class MaternalFetalPhysiologyAnesthesiaData {
  static List<MaternalFetalPhysiologyAnesthesiaCategory>
      getMaternalFetalPhysiologyAnesthesiaData(BuildContext context) {
    return [
      MaternalFetalPhysiologyAnesthesiaCategory(
        categoryName: 'CNS Changes',
        items: [
          MaternalFetalPhysiologyAnesthesiaItem(
            title: "MAC (MINIMUM ALVEOLAR CONCENTRATION) CHANGE (↓ 40%)",
            description: "Volatile anesthetic requirement decreases by 40% due to the increase in progesterone during pregnancy.",
            additionalInfo: "This condition makes pregnant women more sensitive to inhalation anesthetics.",
          ),
          MaternalFetalPhysiologyAnesthesiaItem(
            title: "REGIONAL ANESTHESIA AND LOCAL ANESTHETIC SENSITIVITY (↓ 30%)",
            description: "Local anesthetic requirement decreases by 30% in pregnancy; engorgement in epidural veins increases block spread.",
            subtitle: "MLAK = Effective local anesthetic dose providing 50% analgesia in pregnancy",
            additionalInfo: "CSF pressure and epidural space volume change under the influence of progesterone during lumbar puncture.",
          ),
        ],
      ),
      MaternalFetalPhysiologyAnesthesiaCategory(
        categoryName: 'Respiratory Changes',
        items: [
          MaternalFetalPhysiologyAnesthesiaItem(
            title: "OXYGEN CONSUMPTION AND VENTILATION INCREASE (↑ 50%)",
            description: "Basal metabolic rate and oxygen consumption show an increase of up to 50% in the term period of pregnancy.",
            additionalInfo: "The increase in minute ventilation is provided by increases in both respiratory rate and tidal volume.",
          ),
          MaternalFetalPhysiologyAnesthesiaItem(
            title: "PACO2 AND RESPIRATORY ALKALOSIS IN PREGNANCY (28-32 MMHG)",
            description: "PaCO2 drops to 28-32 mmHg levels due to increased alveolar ventilation; this is defined as compensated respiratory alkalosis.",
            additionalInfo: "Bicarbonate levels also drop proportionally to compensate for alkalosis.",
          ),
          MaternalFetalPhysiologyAnesthesiaItem(
            title: "FUNCTIONAL RESIDUAL CAPACITY (FRC) CHANGE (↓ 20%)",
            description: "FRC decreases by approximately 20% as a result of the uterus pushing the diaphragm upward.",
            additionalInfo: "This drop in FRC begins to return to normal 48 hours after delivery.",
          ),
          MaternalFetalPhysiologyAnesthesiaItem(
            title: "APNEA AND RAPID DESATURATION RISK IN PREGNANCY",
            description: "Due to increased O2 consumption and decreased FRC, pregnant women desaturate very quickly during apnea.",
            additionalInfo: "Pre-oxygenation is of vital importance in this group; reserves are limited in times of crisis.",
          ),
          MaternalFetalPhysiologyAnesthesiaItem(
            title: "AIRWAY MUCOSAL EDEMA AND INTUBATION STRATEGY",
            description: "Airway edema and increased vascularity caused by the effect of estrogen increase the risk of difficult intubation; smaller diameter ETTs (6.5-7.0) are recommended.",
            additionalInfo: "Nasal intubation is a method that should be avoided as much as possible due to the risk of bleeding.",
          ),
        ],
      ),
      MaternalFetalPhysiologyAnesthesiaCategory(
        categoryName: 'Cardiovascular Changes',
        items: [
          MaternalFetalPhysiologyAnesthesiaItem(
            title: "BLOOD VOLUME AND DILUTIONAL ANEMIA (↑ 1000-1500 ML)",
            description: "Blood volume increases by 1000-1500 mL; however, as the plasma increase is more than the erythrocyte increase, Hb drops to approximately 11 g/dL levels.",
            additionalInfo: "This condition is accepted as physiological anemia and improves perfusion by lowering blood viscosity.",
          ),
          MaternalFetalPhysiologyAnesthesiaItem(
            title: "CARDIAC OUTPUT (CO) AND STROKE VOLUME CHANGES (↑ 40%)",
            description: "Heart rate increases by 20%, stroke volume (SV) by 30%, while total cardiac output rises by 40%.",
            additionalInfo: "Systemic vascular resistance (SVR) shows a decrease throughout pregnancy due to the effect of pregnancy hormones.",
          ),
          MaternalFetalPhysiologyAnesthesiaItem(
            title: "SUPINE HYPOTENSION SYNDROME AND AORTOKAVAL COMPRESSION",
            description: "Compression of the inferior vena cava by the uterus in a pregnant woman lying on her back seriously reduces venous return and cardiac output.",
            subtitle: "To prevent hypotension, the pregnant woman must be placed in the left lateral position or the uterus must be pushed to the left",
            additionalInfo: "Supine position should be avoided to preserve uteroplacental blood flow.",
          ),
          MaternalFetalPhysiologyAnesthesiaItem(
            title: "VENOUS STASIS AND HYPERCOAGULABILITY IN PREGNANCY",
            description: "The tendency for thrombosis increases significantly during pregnancy due to venous stasis and the increase in coagulation factors.",
            additionalInfo: "Embolism risk continues in the early postpartum period.",
          ),
        ],
      ),
      MaternalFetalPhysiologyAnesthesiaCategory(
        categoryName: 'Renal & GI Changes',
        items: [
          MaternalFetalPhysiologyAnesthesiaItem(
            title: "RENAL FUNCTIONS AND CREATININE DROP (0.5-0.6 MG/DL)",
            description: "Renal blood flow and GFR increase; as a result, normal serum creatinine levels drop to 0.5-0.6 mg/dL levels.",
            additionalInfo: "Values that appear 'normal' like 0.8-0.9 mg/dL in a pregnant patient may suggest renal dysfunction.",
          ),
          MaternalFetalPhysiologyAnesthesiaItem(
            title: "PHYSIOLOGICAL PROTEINURIA AND GLUCOSURIA IN PREGNANCY",
            description: "Mild proteinuria and glucosuria can be accepted as physiological due to changes in GFR and tubular reabsorption capacity.",
            additionalInfo: "However, marked proteinuria should always be screened for preeclampsia.",
          ),
          MaternalFetalPhysiologyAnesthesiaItem(
            title: "GASTRIC EMPTYING AND REFLUX PATHOPHYSIOLOGY",
            description: "Gastric emptying rate decreases and lower esophageal sphincter (LES) pressure drops, increasing the risk of reflux.",
            subtitle: "Opioids and anticholinergics further reduce LES pressure, triggering the risk of aspiration",
            additionalInfo: "Labor pain and anxiety further delay gastric emptying.",
          ),
        ],
      ),
      MaternalFetalPhysiologyAnesthesiaCategory(
        categoryName: 'Hepatic Changes',
        items: [
          MaternalFetalPhysiologyAnesthesiaItem(
            title: "HEPATIC ENZYMES AND ALP INCREASE (PLACENTAL ORIGIN)",
            description: "Alkaline phosphatase (ALP) level increases significantly due to placental production.",
            additionalInfo: "No significant increase is expected in other liver enzymes (AST, ALT).",
          ),
          MaternalFetalPhysiologyAnesthesiaItem(
            title: "PLASMA ALBUMIN LEVELS IN PREGNANCY (↓)",
            description: "Albumin concentration drops slightly due to the dilutional increase in plasma volume.",
            additionalInfo: "This may lead to an increase in the free form of drugs that bind to proteins.",
          ),
          MaternalFetalPhysiologyAnesthesiaItem(
            title: "PSEUDOCHOLINESTERASE ACTIVITY (↓ 25-30%)",
            description: "Pseudocholinesterase level decreases by 25-30%; this condition returns to normal 6 weeks after delivery.",
            additionalInfo: "The effect of Succinylcholine may be slightly prolonged if the dosage is not adjusted.",
          ),
          MaternalFetalPhysiologyAnesthesiaItem(
            title: "GALLBLADDER DYNAMICS AND PROGESTERONE EFFECT",
            description: "Gallbladder emptying slows down due to the effect of progesterone; the tendency for gallstone formation increases.",
            additionalInfo: "Stasis is the main factor increasing cholecystitis risk in pregnant women.",
          ),
        ],
      ),
      MaternalFetalPhysiologyAnesthesiaCategory(
        categoryName: 'Hematologic Changes',
        items: [
          MaternalFetalPhysiologyAnesthesiaItem(
            title: "PREGNANCY ANEMIA AND PLASMA VOLUME INCREASE",
            description: "Dilutional anemia occurs as the 50% increase in plasma volume exceeds the increase in erythrocyte mass (20%).",
            additionalInfo: "Iron and folate needs become marked in this period.",
          ),
          MaternalFetalPhysiologyAnesthesiaItem(
            title: "PHYSIOLOGICAL LEUKOCYTOSIS IN PREGNANCY (21.000/MM3)",
            description: "Leukocyte count can rise to 21.000/mm3 levels during labor; this should not be confused with infection.",
            additionalInfo: "Leukocytosis is accepted as part of the stress response.",
          ),
          MaternalFetalPhysiologyAnesthesiaItem(
            title: "PLATELET COUNT AND MATERNAL CHANGES (↓ 10%)",
            description: "Platelet count can drop slightly (10%) during pregnancy but usually remains in the safe range.",
            additionalInfo: "'Gestational thrombocytopenia' towards the end of pregnancy is a common benign condition.",
          ),
          MaternalFetalPhysiologyAnesthesiaItem(
            title: "COAGULATION FACTORS AND HYPERCOAGULABILITY",
            description: "Fibrinogen and other clotting factors (VII-XII) increase; this puts pregnancy into a period of hypercoagulability.",
            additionalInfo: "The body activates the clotting system in preparation for bleeding during delivery.",
          ),
        ],
      ),
      MaternalFetalPhysiologyAnesthesiaCategory(
        categoryName: 'Metabolic Changes',
        items: [
          MaternalFetalPhysiologyAnesthesiaItem(
            title: "DIABETOGENIC STATE AND CARBOHYDRATE TOLERANCE IN PREGNANCY",
            description: "Fatty acid use increases and carbohydrate tolerance decreases under the influence of placental lactogen and cortisol.",
            additionalInfo: "Gestational diabetes risk is related to this hormone imbalance.",
          ),
          MaternalFetalPhysiologyAnesthesiaItem(
            title: "THYROID FUNCTIONS AND HCG EFFECT",
            description: "The thyroid gland enlarges slightly and T3-T4 increases due to the effect of HCG and estrogen, but 'free' hormone levels remain normal.",
            additionalInfo: "Pregnancy should continue as an euthyroid condition.",
          ),
          MaternalFetalPhysiologyAnesthesiaItem(
            title: "CALCIUM METABOLISM AND IONIZED CALCIUM",
            description: "Total calcium level decreases (due to albumin drop) but biologically active ionized calcium does not change.",
            additionalInfo: "Calcium homeostasis is sensitive due to active transport from mother to fetus.",
          ),
        ],
      ),
      MaternalFetalPhysiologyAnesthesiaCategory(
        categoryName: 'Musculoskeletal Changes',
        items: [
          MaternalFetalPhysiologyAnesthesiaItem(
            title: "LIGAMENTOUS LAXITY AND BACK PAIN",
            description: "Laxity occurs in ligaments due to the effect of relaxin hormone; back pain and pelvic instability risk increases.",
            additionalInfo: "Lordosis (increase in back curvature) is an adaptive condition that changes the center of balance.",
          ),
        ],
      ),
      MaternalFetalPhysiologyAnesthesiaCategory(
        categoryName: 'Uteroplacental Circulation',
        items: [
          MaternalFetalPhysiologyAnesthesiaItem(
            title: "UTERINE BLOOD FLOW AND TERM VALUES (600-700 ML/MIN)",
            description: "Flow, which is 50 mL/min in the non-pregnant uterus, rises to 600-700 mL/min (10-15% of cardiac output) at term.",
            subtitle: "There is no autoregulation in the uteroplacental bed; vessels are maximally dilated",
            additionalInfo: "Alpha-adrenergic receptor sensitivity of uterine arteries is increased in pregnancy; sensitive to vasoconstrictors.",
          ),
          MaternalFetalPhysiologyAnesthesiaItem(
            title: "CRITICAL FACTORS REDUCING UTERINE BLOOD FLOW",
            description: "Maternal hypotension, severe vasoconstriction, and uterine contractions interrupt blood flow.",
            additionalInfo: "Hypotension quickly puts both original mother and fetus at risk.",
          ),
          MaternalFetalPhysiologyAnesthesiaItem(
            title: "MATERNAL HYPOTENSION TREATMENT AND VASOPRESSORS",
            description: "Ephedrine, Phenylephrine, and Metaraminol can be used in treatment; the main goal is to maintain vascular pressure without impairing fetal perfusion.",
            additionalInfo: "Phenylephrine is frequently preferred in current practice due to lower fetal acidosis risk.",
          ),
        ],
      ),
      MaternalFetalPhysiologyAnesthesiaCategory(
        categoryName: 'Placental Exchange',
        items: [
          MaternalFetalPhysiologyAnesthesiaItem(
            title: "PLACENTAL DIFFUSION (GASES AND SMALL IONS)",
            description: "Oxygen, CO2, and small molecular ions pass the placenta by simple diffusion rules.",
            additionalInfo: "Diffusion rate depends on the concentration difference.",
          ),
          MaternalFetalPhysiologyAnesthesiaItem(
            title: "FACILITATED DIFFUSION AND GLUCOSE TRANSPORT",
            description: "Glucose passes the placental barrier through facilitated diffusion (carrier proteins).",
            additionalInfo: "Glucose passage is of vital continuity for energy needs.",
          ),
          MaternalFetalPhysiologyAnesthesiaItem(
            title: "ACTIVE TRANSPORT AND AMINO ACID PASSAGE",
            description: "Amino acids, vitamins, and ions like Calcium/Iron are transported to the fetus by spending energy (active transport).",
            additionalInfo: "The concentration of these minerals in the fetus is higher than in the mother.",
          ),
          MaternalFetalPhysiologyAnesthesiaItem(
            title: "VESICULAR TRANSPORT AND IMMUNOGLOBULINS (IG)",
            description: "Immunoglobulins (IgG) pass from mother to fetus by pinocytosis method (packed into vesicles) and provide passive immunity.",
            subtitle: "Defects in the placental membrane (bleeding etc.) give rise to Rh incompatibility risk",
            additionalInfo: "Large molecules can only pass by this method.",
          ),
        ],
      ),
      MaternalFetalPhysiologyAnesthesiaCategory(
        categoryName: 'Gas Exchange',
        items: [
          MaternalFetalPhysiologyAnesthesiaItem(
            title: "FETAL PAO2 AND OXYGENATION LEVEL (30-35 MMHG)",
            description: "Arterial oxygen pressure (PaO2) of the fetus is approximately 30-35 mmHg.",
            additionalInfo: "Fetal hemoglobin affinity is high despite low PaO2.",
          ),
          MaternalFetalPhysiologyAnesthesiaItem(
            title: "FETAL HEMOGLOBIN (HB) LEVEL (15 G/DL)",
            description: "Hemoglobin level in the fetus is approximately 15 g/dL, which is higher than in adults.",
            additionalInfo: "High Hb and high O2 affinity guarantee tissue nutrition.",
          ),
          MaternalFetalPhysiologyAnesthesiaItem(
            title: "FETAL OXYGEN CONSUMPTION (~7 ML/KG/MIN)",
            description: "Oxygen need of the fetus is approximately 2 times higher than in adults relative to body weight.",
            additionalInfo: "Basal metabolism is high for fetal development.",
          ),
          MaternalFetalPhysiologyAnesthesiaItem(
            title: "FETUS ANOXIA TOLERANCE CAPACITY (10 MIN)",
            description: "Fetal metabolism has the capacity to tolerate anoxia (lack of oxygen) for up to 10 minutes compared to adults.",
            additionalInfo: "However, permanent brain damage starts at the end of this period.",
          ),
        ],
      ),
      MaternalFetalPhysiologyAnesthesiaCategory(
        categoryName: 'Drug Transfer',
        items: [
          MaternalFetalPhysiologyAnesthesiaItem(
            title: "ANESTHETIC AGENTS THAT EASILY PASS THE PLACENTA",
            description: "Almost all IV induction agents and inhalation gases pass the placenta rapidly because they are lipophilic.",
            additionalInfo: "Fetal deposition depends on the maternal dose.",
          ),
          MaternalFetalPhysiologyAnesthesiaItem(
            title: "AGENTS THAT DO NOT PASS THE PLACENTA (MUSCLE RELAXANTS)",
            description: "Neuromuscular blockers (Sch, rocuronium etc.) do not pass the placenta due to their ionized structure (they do not cause fetal paralysis).",
            additionalInfo: "Use of muscle relaxants in the pregnant mother does not create a motor effect on the baby.",
          ),
          MaternalFetalPhysiologyAnesthesiaItem(
            title: "PLACENTAL PASSAGE OF LOCAL ANESTHETICS (LA)",
            description: "Local anesthetics pass the placenta because they are weak base in structure; there is a risk of 'ion trapping' in case of fetal acidosis.",
            additionalInfo: "Ion trapping causes the drug to be trapped and accumulate in the acidic fetal blood.",
          ),
        ],
      ),
      MaternalFetalPhysiologyAnesthesiaCategory(
        categoryName: 'Effects on Uterine Blood Flow',
        items: [
          MaternalFetalPhysiologyAnesthesiaItem(
            title: "EFFECT OF PROPOFOL AND BARBITURATES ON UTERINE FLOW",
            description: "In induction doses (Propofol, Thiopental), they slightly lower uterine blood flow.",
            additionalInfo: "Their short-term effects are generally tolerated clinically.",
          ),
          MaternalFetalPhysiologyAnesthesiaItem(
            title: "KETAMINE DOSE AND UTERINE BLOOD FLOW (<=1.5 MG/KG)",
            description: "Uterine flow does not change in doses of 1.5 mg/kg and below; however, high doses can reduce flow by causing hypertonus.",
            additionalInfo: "Dose limit is critical for fetal safety.",
          ),
          MaternalFetalPhysiologyAnesthesiaItem(
            title: "EFFECT OF VOLATILE ANESTHETICS ON UTERINE PERFUSION",
            description: "All volatile agents can reduce uterine flow by lowering blood pressure; however, the effect is minimal at concentrations below 1 MAC.",
            additionalInfo: "High concentrations cause uterine relaxation (risk of atony).",
          ),
          MaternalFetalPhysiologyAnesthesiaItem(
            title: "N2O (NITROUS OXIDE) AND UTERINE VASOCONSTRICTION",
            description: "When used alone, it can cause uterine vasoconstriction (narrowing) via sympathetic stimulation.",
            additionalInfo: "Usually used in combination with other agents.",
          ),
          MaternalFetalPhysiologyAnesthesiaItem(
            title: "EFFECT OF LIDOCAINE ON UTERINE VESSELS",
            description: "In high doses or intravascular (IV) escape, it directly causes spasm and vasoconstriction in uterine arteries.",
            additionalInfo: "Besides cardiac side effects, it can trigger fetal acidosis.",
          ),
          MaternalFetalPhysiologyAnesthesiaItem(
            title: "ADVANTAGE OF EPIDURAL ANESTHESIA IN PREECLAMPTIC PATIENT",
            description: "In preeclamptic patients, epidural anesthesia shows an effect of increasing uterine blood flow by resolving general vasospasm.",
            additionalInfo: "This condition supports well-being in preeclamptic fetuses.",
          ),
        ],
      ),
      MaternalFetalPhysiologyAnesthesiaCategory(
        categoryName: 'Normal Labor & Anesthesia',
        items: [
          MaternalFetalPhysiologyAnesthesiaItem(
            title: "EFFECT OF LABOR PAIN ON MATERNAL VENTILATION AND O2 CONSUMPTION",
            description: "Minute ventilation increases by 300% and oxygen consumption by 60% due to pain.",
            subtitle: "Maternal PaCO2 can drop to 20 mmHg with severe hyperventilation",
            additionalInfo: "Excessively dropping CO2 can lead to constriction in uterine blood vessels (hypoxia risk).",
          ),
          MaternalFetalPhysiologyAnesthesiaItem(
            title: "UTERINE CONTRACTIONS AND AUTO-TRANSFUSION EFFECT",
            description: "In each contraction, 300-500 mL of blood participates in the systemic circulation by the squeezing of the uterus.",
            subtitle: "Immediately after delivery (postpartum), cardiac output increases by 80% with auto-transfusion",
            additionalInfo: "This sudden increase in load is the most dangerous period for pregnant women with cardiac disease.",
          ),
        ],
      ),
      MaternalFetalPhysiologyAnesthesiaCategory(
        categoryName: 'Agents Used in Delivery',
        items: [
          MaternalFetalPhysiologyAnesthesiaItem(
            title: "EFFECT OF VOLATILE AGENTS ON UTERINE TONE (>0.75 MAC)",
            description: "Inhalation agents suppress the uterus; doses above 0.75 MAC increase the risk of postpartum atony (bleeding).",
            additionalInfo: "This effect is utilized in situations such as manual removal of the placenta.",
          ),
          MaternalFetalPhysiologyAnesthesiaItem(
            title: "EFFECT OF OPIOIDS ON LABOR DURATION",
            description: "Use of high-dose systemic opioids can prolong the duration of labor and cause respiratory depression in the newborn.",
            additionalInfo: "Short-acting ones like Fentanyl are safer.",
          ),
          MaternalFetalPhysiologyAnesthesiaItem(
            title: "USE OF EPIDURAL IN LABOR ANALGESIA",
            description: "Combinations of low-concentration local anesthetics and opioids (walking epidural) are the safest method.",
            additionalInfo: "Keeping motor block minimal facilitates the patient's participation.",
          ),
        ],
      ),
      MaternalFetalPhysiologyAnesthesiaCategory(
        categoryName: 'Vasopressors',
        items: [
          MaternalFetalPhysiologyAnesthesiaItem(
            title: "ALPHA-1 (α1) ADRENERGIC RECEPTORS AND CONTRACTION",
            description: "Alpha-1 stimulation causes uterine contraction and potential flow reduction by constricting uterine arteries.",
            additionalInfo: "Vasospasm should not lead to fetal distress.",
          ),
          MaternalFetalPhysiologyAnesthesiaItem(
            title: "BETA-2 (β2) ADRENERGIC RECEPTORS AND RELAXATION",
            description: "Beta-2 stimulation causes relaxation in uterine smooth muscles (tocolytic effect).",
            additionalInfo: "E.g.: Ritodrine, Terbutaline work through these receptors.",
          ),
          MaternalFetalPhysiologyAnesthesiaItem(
            title: "EFFECT OF PHENYLEPHRINE ON UTERINE FLOW (<40 MCG)",
            description: "Low-dose (below 40 mcg) Phenylephrine can paradoxically increase uterine blood flow by raising maternal pressure.",
            additionalInfo: "Phenylephrine is considered safer than Ephedrine in terms of fetal acidosis risk.",
          ),
          MaternalFetalPhysiologyAnesthesiaItem(
            title: "EFFECT OF EPHEDRINE ON UTERINE CONTRACTION",
            description: "Ephedrine raises maternal blood pressure without significant vasoconstriction (narrowing) on uterine vessels.",
            additionalInfo: "However, it can pass the placenta and cause fetal tachycardia.",
          ),
        ],
      ),
      MaternalFetalPhysiologyAnesthesiaCategory(
        categoryName: 'Uterotonics',
        items: [
          MaternalFetalPhysiologyAnesthesiaItem(
            title: "OXYTOCIN APPLICATION AND SIDE EFFECTS (0.5-8 MU/MIN)",
            description: "Provides uterine contraction; however, rapid administration can lead to sudden hypotension, tachycardia, rhythm disturbance, and water intoxication (ADH effect).",
            additionalInfo: "Water retention can cause edema and hyponatremia.",
          ),
          MaternalFetalPhysiologyAnesthesiaItem(
            title: "METHYLERGONOVINE (ERGO) AND HYPERTENSIVE EFFECT (0.2 MG IM)",
            description: "Used in the treatment of postpartum hemorrhage but is contraindicated in HT patients because it causes severe hypertension.",
            subtitle: "Rapid IV administration can trigger coronary spasm and cerebrovascular event",
            additionalInfo: "It does not stimulate erythrocyte breakdown (hyperbilirubinemia), it only contracts smooth muscle.",
          ),
          MaternalFetalPhysiologyAnesthesiaItem(
            title: "CARBOPROST (PGF2α) AND ASTHMA CONTRAINDICATION (0.25 MG IM)",
            description: "Carboprost is a strong uterotonic; however, it is risky to use in patients with asthma because it can cause bronchospasm.",
            additionalInfo: "It can also cause severe diarrhea and vomiting as side effects.",
          ),
        ],
      ),
      MaternalFetalPhysiologyAnesthesiaCategory(
        categoryName: 'Tocolytics',
        items: [
          MaternalFetalPhysiologyAnesthesiaItem(
            title: "MAGNESIUM SULFATE (MGSO4) APPLICATION AND TOCOLYSIS (4G/2G)",
            description: "It is used in the form of 4 g loading and 2 g/hour infusion to stop preterm labor and for eclampsia prophylaxis.",
            additionalInfo: "It potentializes the effect of muscle relaxants in the newborn (respiratory depression risk).",
          ),
          MaternalFetalPhysiologyAnesthesiaItem(
            title: "BETA-2 (β2) AGONISTS (RITODRINE, TERBUTALINE)",
            description: "They inhibit preterm labor by relaxing smooth muscles (tocolysis).",
            additionalInfo: "They can cause maternal tachycardia and hyperglycemia as side effects.",
          ),
        ],
      ),
      MaternalFetalPhysiologyAnesthesiaCategory(
        categoryName: 'Fetal Circulation',
        items: [
          MaternalFetalPhysiologyAnesthesiaItem(
            title: "CIRCULATION PATH OF FETAL OXYGENATED BLOOD",
            description: "Placenta → Inferior Vena Cava (IVC) → Right Atrium → Foramen Ovale → Left Atrium → Upper Body (Brain/Heart).",
            additionalInfo: "The blood richest in oxygen goes to the most vital organs.",
          ),
          MaternalFetalPhysiologyAnesthesiaItem(
            title: "CIRCULATION PATH OF FETAL DESATURATED BLOOD",
            description: "Superior Vena Cava (SVC) → Right Ventricle → Ductus Arteriosus → Descending Aorta → Lower Body and Placenta.",
            additionalInfo: "Blood goes to the placenta and is oxygenated again.",
          ),
        ],
      ),
      MaternalFetalPhysiologyAnesthesiaCategory(
        categoryName: 'Change at Birth',
        items: [
          MaternalFetalPhysiologyAnesthesiaItem(
            title: "FETAL SURFACTANT DEVELOPMENT AND LUNG MATURITY",
            description: "Surfactant reaches sufficient levels at 34-36 weeks; RDS risk is high in preterm labor due to this.",
            additionalInfo: "Surfactant production can be delayed in babies of diabetic mothers.",
          ),
          MaternalFetalPhysiologyAnesthesiaItem(
            title: "POST-NATAL CARDIORESPIRATORY ADAPTATION",
            description: "Lungs open with the first breath, resistance drops and foramen ovale closes functionally.",
            subtitle: "Ductus Arteriosus closes anatomically in approximately 2-3 weeks with the rise of PaO2 in the blood",
            additionalInfo: "Ductus remaining open (PDA) can lead to persistent pulmonary hypertension.",
          ),
        ],
      ),
    ];
  }
}
