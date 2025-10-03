import 'package:flutter/material.dart';

class PerioperativeCriticalCareNutritionItem {
  final String title;
  final String description;
  final String? subtitle;
  final String? additionalInfo;

  PerioperativeCriticalCareNutritionItem({
    required this.title,
    required this.description,
    this.subtitle,
    this.additionalInfo,
  });
}

class PerioperativeCriticalCareNutritionCategory {
  final String categoryName;
  final List<PerioperativeCriticalCareNutritionItem> items;

  PerioperativeCriticalCareNutritionCategory({
    required this.categoryName,
    required this.items,
  });
}

class PerioperativeCriticalCareNutritionData {
  static List<PerioperativeCriticalCareNutritionCategory> getPerioperativeCriticalCareNutritionData(BuildContext context) {
    return [
      PerioperativeCriticalCareNutritionCategory(
        categoryName: 'Nutrition Risk Assessment',
        items: [
          PerioperativeCriticalCareNutritionItem(
            title: 'Why Important?',
            description: 'Malnutrition → delayed wound healing, ↑ infection, ↑ ventilator days, longer LOS, ↑ mortality',
          ),
          PerioperativeCriticalCareNutritionItem(
            title: 'Screening',
            description: 'Within 24–48 h: NRS-2002, MUST; in ICU: NUTRIC/NRS',
          ),
          PerioperativeCriticalCareNutritionItem(
            title: 'Clinical Clues',
            description: '>10% weight loss/6 mo, BMI <18.5, muscle wasting/edema, poor intake (>5 d), catabolic state (sepsis/burn/multiple trauma)',
          ),
          PerioperativeCriticalCareNutritionItem(
            title: 'Laboratory Assessment',
            description: 'Albumin/prealbumin affected by acute phase; trends useful but not diagnostic alone',
            subtitle: 'Calorie measurement: Indirect calorimetry = gold standard; if unavailable → predictive formulas',
          ),
        ],
      ),
      PerioperativeCriticalCareNutritionCategory(
        categoryName: 'Energy & Protein Requirements',
        items: [
          PerioperativeCriticalCareNutritionItem(
            title: 'ICU Energy Requirements',
            description: '~25 kcal/kg/day (stable 20–25; hypercatabolic 25–30)',
          ),
          PerioperativeCriticalCareNutritionItem(
            title: 'Protein Requirements',
            description: '1.2–2.0 g/kg/day (surgical/ICU); burns/severe trauma >2.0 g/kg',
          ),
          PerioperativeCriticalCareNutritionItem(
            title: 'Obese Patients (Hypocaloric–High Protein)',
            description: 'Energy: 11–14 kcal/kg actual (BMI 30–50); 22–25 kcal/kg IBW (BMI >50)',
            subtitle: 'Protein: 2.0 g/kg IBW (BMI 30–40), 2.5 g/kg IBW (BMI >40)',
          ),
          PerioperativeCriticalCareNutritionItem(
            title: 'Special Cases',
            description: 'Burns: 40–60 kcal/kg + 2–3 g/kg protein; supplement C, A, zinc',
            subtitle: 'Sepsis/ARDS: avoid early overfeeding → normocaloric, high protein',
            additionalInfo: 'Renal: no RRT 0.8–1.2 g/kg; with RRT 1.5–2.5 g/kg\nHepatic: protein not permanently restricted; 1.0–1.5 g/kg, BCAA formulas may help\nCOPD/hypercapnia: excess carbs ↑ VCO₂; balanced/limited carbs',
          ),
        ],
      ),
      PerioperativeCriticalCareNutritionCategory(
        categoryName: 'Timing & Route – Enteral (EN) vs Parenteral (PN)',
        items: [
          PerioperativeCriticalCareNutritionItem(
            title: 'First Choice',
            description: 'EN (if gut works) → start within 24–48 h',
          ),
          PerioperativeCriticalCareNutritionItem(
            title: 'Contraindications EN',
            description: 'Bowel ischemia, unstable hemodynamics, obstruction, uncontrolled shock, severe GI bleed, perforation',
          ),
          PerioperativeCriticalCareNutritionItem(
            title: 'PN Indications',
            description: 'If EN fails or high malnutrition risk → consider PN',
            subtitle: 'Low-risk short-term NPO → avoid PN for first 7 days',
            additionalInfo: 'Severe malnutrition or EN impossible → early PN (≤3–5 d)',
          ),
        ],
      ),
      PerioperativeCriticalCareNutritionCategory(
        categoryName: 'Enteral Nutrition Practices',
        items: [
          PerioperativeCriticalCareNutritionItem(
            title: 'Initiation',
            description: 'Start trophic (10–20 mL/h) → advance if tolerated',
          ),
          PerioperativeCriticalCareNutritionItem(
            title: 'Reduce Aspiration Risk',
            description: 'Head-up 30–45°, post-pyloric tube, oral care',
          ),
          PerioperativeCriticalCareNutritionItem(
            title: 'Gastric Residuals',
            description: 'Not sole reason to stop; >500 mL + clinical signs = evaluate',
            subtitle: 'Prokinetics: metoclopramide/erythromycin',
          ),
          PerioperativeCriticalCareNutritionItem(
            title: 'Formulas',
            description: 'High protein; disease-specific (renal/hepatic/pulmonary)',
          ),
          PerioperativeCriticalCareNutritionItem(
            title: 'Immunonutrition',
            description: 'Surgical (GI/head–neck): arginine/ω-3/nucleotides beneficial',
            subtitle: 'Severe sepsis/general ICU: arginine/glutamine not routinely recommended',
          ),
        ],
      ),
      PerioperativeCriticalCareNutritionCategory(
        categoryName: 'Parenteral Nutrition Basics',
        items: [
          PerioperativeCriticalCareNutritionItem(
            title: 'Components',
            description: 'Dextrose, amino acids, lipid emulsion, electrolytes, trace elements, vitamins',
          ),
          PerioperativeCriticalCareNutritionItem(
            title: 'Lipids',
            description: '0.7–1.0 g/kg/day; limit in liver failure/cholestasis; fish oil-based ↓ cholestasis',
          ),
          PerioperativeCriticalCareNutritionItem(
            title: 'Complications',
            description: 'Catheter infection, hyperglycemia, PN-related liver dysfunction (steatosis/cholestasis), hyperTG, electrolyte imbalances, refeeding',
          ),
          PerioperativeCriticalCareNutritionItem(
            title: 'Monitoring',
            description: 'Daily glucose/electrolytes; weekly TG, LFTs; fluid balance',
            subtitle: 'Propofol calories: 1.1 kcal/mL (lipid load counted)',
          ),
        ],
      ),
      PerioperativeCriticalCareNutritionCategory(
        categoryName: 'Glycemic Control',
        items: [
          PerioperativeCriticalCareNutritionItem(
            title: 'Target Range',
            description: '140–180 mg/dL in most ICU/periop patients',
          ),
          PerioperativeCriticalCareNutritionItem(
            title: 'Tight Control Risk',
            description: 'Tight control (80–110) ↑ hypoglycemia risk → not advised',
          ),
          PerioperativeCriticalCareNutritionItem(
            title: 'Insulin Protocols',
            description: 'Regular insulin protocols in EN/PN patients',
          ),
        ],
      ),
      PerioperativeCriticalCareNutritionCategory(
        categoryName: 'Refeeding Syndrome (RFS)',
        items: [
          PerioperativeCriticalCareNutritionItem(
            title: 'Risk Factors',
            description: 'Prolonged starvation, alcoholism, cancer, >10% wt loss, very low BMI, diuretics/insulin use',
          ),
          PerioperativeCriticalCareNutritionItem(
            title: 'Pathophysiology',
            description: 'Insulin surge → P, K, Mg shift into cells → severe hypophosphatemia, arrhythmia, HF, respiratory weakness',
          ),
          PerioperativeCriticalCareNutritionItem(
            title: 'Prevention/Treatment',
            description: 'Start low: ~10 kcal/kg/day (5–10 in high risk), advance in 3–5 d',
            subtitle: 'Thiamine 100–200 mg before and 3–5 d after feeding',
            additionalInfo: 'Aggressive P, K, Mg replacement, frequent labs\nRestrict fluid/Na',
          ),
        ],
      ),
      PerioperativeCriticalCareNutritionCategory(
        categoryName: 'Nitrogen Balance & Monitoring',
        items: [
          PerioperativeCriticalCareNutritionItem(
            title: 'Nitrogen Balance Calculation',
            description: 'NB = intake (protein/6.25) – (UUN + 4)',
          ),
          PerioperativeCriticalCareNutritionItem(
            title: 'Negative Balance',
            description: 'If negative → ↑ protein/calories, treat catabolic causes',
          ),
          PerioperativeCriticalCareNutritionItem(
            title: 'Monitoring Tools',
            description: 'Use with anthropometry (grip strength, muscle circumference), functional measures, intake/output',
          ),
        ],
      ),
      PerioperativeCriticalCareNutritionCategory(
        categoryName: 'Special Clinical Scenarios',
        items: [
          PerioperativeCriticalCareNutritionItem(
            title: 'Pancreatitis',
            description: 'Early EN (jejunal/NG if tolerated) ↓ mortality/infections; avoid PN',
          ),
          PerioperativeCriticalCareNutritionItem(
            title: 'Short Bowel/Enterocutaneous Fistula',
            description: 'If distal absorption adequate → EN; otherwise PN',
          ),
          PerioperativeCriticalCareNutritionItem(
            title: 'Postop ERAS',
            description: 'Carb loading (if no gastroparesis/advanced DM), early oral/EN, avoid unnecessary NPO/NG',
          ),
          PerioperativeCriticalCareNutritionItem(
            title: 'Liver Transplant/Failure',
            description: 'Risk hypoglycemia; do not restrict protein, consider BCAA formulas',
          ),
          PerioperativeCriticalCareNutritionItem(
            title: 'Oncology',
            description: 'Check sarcopenic obesity; high protein crucial',
          ),
        ],
      ),
      PerioperativeCriticalCareNutritionCategory(
        categoryName: 'Electrolytes & Micronutrients',
        items: [
          PerioperativeCriticalCareNutritionItem(
            title: 'Phosphate',
            description: 'Critical for resp. muscle strength; often low in ICU',
          ),
          PerioperativeCriticalCareNutritionItem(
            title: 'Magnesium',
            description: 'Arrhythmias, hypocalcemia; aggressive replacement in RFS',
          ),
          PerioperativeCriticalCareNutritionItem(
            title: 'Trace Elements',
            description: 'Zinc, selenium, copper, manganese: supplement in long-term PN; beware Mn/Cu overload in cholestasis',
          ),
          PerioperativeCriticalCareNutritionItem(
            title: 'Vitamins',
            description: 'Daily PN multivitamin; thiamine essential in RFS/alcoholism',
          ),
        ],
      ),
      PerioperativeCriticalCareNutritionCategory(
        categoryName: 'Safety Pearls',
        items: [
          PerioperativeCriticalCareNutritionItem(
            title: 'SUMMARY SPOT QUESTIONS',
            description: '"If the gut works, use it" → EN > PN',
            subtitle: 'Start EN within 24–48 h; even trophic doses help',
            additionalInfo: 'Hypercaloric feeding → ↑ CO₂, steatosis, hyperglycemia → avoid\nHead-up 30–45° to ↓ aspiration/VAP\nCatheter care & asepsis vital in PN; suspect catheter sepsis\nImmunonutrition: useful in major elective surgery; not routine in sepsis\nGlutamine: selective use in surgical patients; not routine in MOF/severe sepsis',
          ),
        ],
      ),
    ];
  }
}
