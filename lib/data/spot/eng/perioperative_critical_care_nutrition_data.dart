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
            title: 'CLINICAL SIGNIFICANCE OF MALNUTRITION',
            description: 'Unaddressed malnutrition leads to delayed wound healing, increased infection rates, and prolonged ventilator dependency.',
            additionalInfo: 'Ultimately results in longer hospital stays (LOS) and significantly higher mortality.',
          ),
          PerioperativeCriticalCareNutritionItem(
            title: 'NUTRITION SCREENING TOOLS',
            description: 'Screening should occur within 24–48 hours using NRS-2002 or MUST; for ICU patients, use NUTRIC/NRS scoring.',
            additionalInfo: 'Early identification is the cornerstone of effective metabolic support.',
          ),
          PerioperativeCriticalCareNutritionItem(
            title: 'CLINICAL INDICATORS OF NUTRITIONAL RISK',
            description: 'Includes >10% weight loss over 6 months, BMI <18.5, and overt muscle wasting or refractory edema.',
            additionalInfo: 'A poor intake for >5 days or hypercatabolic states (sepsis, burns, trauma) further elevate the risk.',
          ),
          PerioperativeCriticalCareNutritionItem(
            title: 'LABORATORY ASSESSMENT AND CALORIMETRY',
            description: 'Albumin and prealbumin levels are influenced by the acute phase response and are more useful for monitoring trends than for diagnosis.',
            subtitle: 'Indirect calorimetry is the gold standard for measuring calorie needs; use predictive formulas if unavailable',
            additionalInfo: 'Accurate energy assessment prevents complications like overfeeding or severe caloric deficit.',
          ),
        ],
      ),
      PerioperativeCriticalCareNutritionCategory(
        categoryName: 'Energy & Protein Requirements',
        items: [
          PerioperativeCriticalCareNutritionItem(
            title: 'ICU ENERGY TARGETS',
            description: 'Aimed at ~25 kcal/kg/day (20–25 for stable patients and 25–30 for hypercatabolic states).',
            additionalInfo: 'Precise dosing is required to avoid metabolic stress and respiratory load.',
          ),
          PerioperativeCriticalCareNutritionItem(
            title: 'PROTEIN REQUIREMENTS IN CRITICAL CARE',
            description: 'Target 1.2–2.0 g/kg/day for surgical and ICU patients; >2.0 g/kg is necessary for severe burns or trauma.',
            additionalInfo: 'Protein is essential to attenuate lean body mass loss during severe inflammation.',
          ),
          PerioperativeCriticalCareNutritionItem(
            title: 'NUTRITION IN OBESITY (HYPOCALORIC HIGH PROTEIN)',
            description: 'Primary strategy involves low energy (11–14 kcal/kg actual or 22–25 kcal/kg IBW) combined with high protein support.',
            subtitle: 'Protein goals: 2.0 g/kg IBW (BMI 30–40) to 2.5 g/kg IBW (BMI >40)',
            additionalInfo: 'This approach promotes fat oxidation while preserving muscle mass.',
          ),
          PerioperativeCriticalCareNutritionItem(
            title: 'NUTRITION FOR SPECIAL CLINICAL CASES',
            description: 'Burn patients require massive energy (40–60 kcal/kg) and supplements; Sepsis/ARDS patients need normocaloric titration.',
            subtitle: 'Renal (0.8–2.5 g/kg protein), Hepatic (protein kısıtlı değil), and COPD (limited carbs) plans vary',
            additionalInfo: 'Each condition requires specific adjustments for macronutrients and trace elements like zinc, vitamin C, and A.',
          ),
        ],
      ),
      PerioperativeCriticalCareNutritionCategory(
        categoryName: 'Timing & Route – Enteral (EN) vs Parenteral (PN)',
        items: [
          PerioperativeCriticalCareNutritionItem(
            title: 'PRIMARY FEEDING ROUTE: ENTERAL (EN)',
            description: 'Enteral nutrition should always be the first choice if the GI tract is functional, starting within 24–48 hours.',
            additionalInfo: 'EN maintains gut integrity and reduces bacterial translocation.',
          ),
          PerioperativeCriticalCareNutritionItem(
            title: 'CONTRAINDICATIONS TO ENTERAL NUTRITION',
            description: 'Includes bowel ischemia, unstable hemodynamics (shock), mechanical obstruction, perforation, or severe GI bleeding.',
            additionalInfo: 'In these cases, the risk of mesenteric ischemia outweighs the benefit of EN.',
          ),
          PerioperativeCriticalCareNutritionItem(
            title: 'INDICATIONS FOR PARENTERAL NUTRITION (PN)',
            description: 'Considered when EN fails or if there is a high malnutrition risk combined with impossible enteral access.',
            subtitle: 'Avoid PN for the first 7 days in low-risk, previously well-nourished patients',
            additionalInfo: 'Early PN (≤3–5 days) may be considered in cases of severe pre-existing malnutrition.',
          ),
        ],
      ),
      PerioperativeCriticalCareNutritionCategory(
        categoryName: 'Enteral Nutrition Practices',
        items: [
          PerioperativeCriticalCareNutritionItem(
            title: 'INITIATION AND TROPHIC DOSING',
            description: 'Feeding is often started at trophic rates (10–20 mL/h) and advanced as patient tolerance permits.',
            additionalInfo: 'Even minimal EN provides significant trophic benefits to the intestinal mucosa.',
          ),
          PerioperativeCriticalCareNutritionItem(
            title: 'ASPIRATION RISK REDUCTION STRATEGIES',
            description: 'Maintain the head-of-bed at 30–45°, consider post-pyloric feeding tubes, and ensure meticulous oral care.',
            additionalInfo: 'These steps are critical for preventing Ventilator-Associated Pneumonia (VAP).',
          ),
          PerioperativeCriticalCareNutritionItem(
            title: 'GASTRIC RESIDUAL VOLUME (GRV) MONITORING',
            description: 'Residuals are not the sole indicator for stopping feeds; evaluate only if >500 mL or clinical signs of intolerance persist.',
            subtitle: 'Prokinetics like metoclopramide or erythromycin can manage delayed gastric emptying',
            additionalInfo: 'Clinical assessment of the abdomen is more reliable than GRV alone.',
          ),
          PerioperativeCriticalCareNutritionItem(
            title: 'ENTERAL FORMULA SELECTION',
            description: 'Generally high-protein; specialized formulas are available for renal, hepatic, or pulmonary dysfunction.',
            additionalInfo: 'Selection should match the metabolic needs of the patient’s primary disease.',
          ),
          PerioperativeCriticalCareNutritionItem(
            title: 'IMMUNONUTRITION IN SURGICAL PATIENTS',
            description: 'Arginine, omega-3 fatty acids, and nucleotides are beneficial in major GI and head-neck surgeries.',
            subtitle: 'Routine use is not recommended for severe sepsis or generalized ICU populations',
            additionalInfo: 'Preoperative and postoperative administration can significantly improve outcomes.',
          ),
        ],
      ),
      PerioperativeCriticalCareNutritionCategory(
        categoryName: 'Parenteral Nutrition Basics',
        items: [
          PerioperativeCriticalCareNutritionItem(
            title: 'PN COMPONENTS: DEXTROSE, AMINO ACIDS, AND LIPIDS',
            description: 'Supplies energy via dextrose and lipids, while amino acids provide the building blocks for protein synthesis.',
            additionalInfo: 'Must incorporate balanced electrolytes, trace elements, and vitamins for total support.',
          ),
          PerioperativeCriticalCareNutritionItem(
            title: 'LIPID EMULSIONS AND CHOLESTASIS MANAGEMENT',
            description: 'Administered at 0.7–1.0 g/kg/day; limits are necessary in liver failure or chronic cholestasis.',
            additionalInfo: 'Fish oil-based emulsions may reduce the cholestatic load compared to traditional lipid sources.',
          ),
          PerioperativeCriticalCareNutritionItem(
            title: 'COMPLICATIONS OF PARENTERAL NUTRITION',
            description: 'Key risks include catheter-related sepsis, hyperglycemia, hypertriglyceridemia, and liver dysfunction (steatosis).',
            additionalInfo: 'Refeeding syndrome is a critical metabolic complication during initial PN phases.',
          ),
          PerioperativeCriticalCareNutritionItem(
            title: 'MONITORING FOR THE PATIENT ON PN',
            description: 'Requires daily monitoring of glucose and electrolytes, with weekly LFTs and triglycerides.',
            subtitle: 'Propofol sedation provides 1.1 kcal/mL of lipid load which must be accounted for',
            additionalInfo: 'Strict fluid balance and catheter site assessment are daily tasks.',
          ),
        ],
      ),
      PerioperativeCriticalCareNutritionCategory(
        categoryName: 'Glycemic Control',
        items: [
          PerioperativeCriticalCareNutritionItem(
            title: 'GLYCEMIC TARGET RANGE (140–180 MG/DL)',
            description: 'Recommended for most ICU and perioperative patients to optimize recovery and prevent infection.',
            additionalInfo: 'Hyperglycemia impairs immune function and increases postoperative complications.',
          ),
          PerioperativeCriticalCareNutritionItem(
            title: 'RISKS OF OVERLY TIGHT GLYCEMIC CONTROL',
            description: 'Maintaining 80–110 mg/dL is no longer advised due to a significant increase in life-threatening hypoglycemia.',
            additionalInfo: 'Moderate control (140-180) is consistently safer in mixed ICU populations.',
          ),
          PerioperativeCriticalCareNutritionItem(
            title: 'INSULIN PROTOCOLS DURING FEEDING',
            description: 'Standardized insulin protocols should be utilized for patients receiving continuous EN or PN support.',
            additionalInfo: 'Regular monitoring ensures stability against caloric delivery changes.',
          ),
        ],
      ),
      PerioperativeCriticalCareNutritionCategory(
        categoryName: 'Refeeding Syndrome (RFS)',
        items: [
          PerioperativeCriticalCareNutritionItem(
            title: 'RFS RISK FACTORS',
            description: 'Prolonged starvation, chronic alcoholism, cancer cachexia, very low BMI, and significant weight loss.',
            additionalInfo: 'Also exacerbated by chronic use of diuretics or exogenous insulin.',
          ),
          PerioperativeCriticalCareNutritionItem(
            title: 'PATHOPHYSIOLOGY OF REFEEDING',
            description: 'An insulin surge causes phosphorus (P), potassium (K), and magnesium (Mg) to shift intracellularly.',
            additionalInfo: 'Results in severe hypophosphatemia, cardiac arrhythmias, and respiratory muscle failure.',
          ),
          PerioperativeCriticalCareNutritionItem(
            title: 'PREVENTION AND MANAGEMENT STRATEGIES',
            description: 'Start feeding low (~10 kcal/kg/day) and advance slowly over 3–5 days to reach target goals.',
            subtitle: 'Administer Thiamine 100–200 mg before and during the first few days of refeeding',
            additionalInfo: 'Aggressively replace P, K, and Mg while monitoring labs frequently and restricting sodium/fluid.',
          ),
        ],
      ),
      PerioperativeCriticalCareNutritionCategory(
        categoryName: 'Nitrogen Balance & Monitoring',
        items: [
          PerioperativeCriticalCareNutritionItem(
            title: 'NITROGEN BALANCE CALCULATION',
            description: 'Calculated using: NB = Protein Intake / 6.25 – [24h UUN + 4].',
            additionalInfo: 'Helps determine whether the patient is in an anabolic, catabolic, or equilibrium state.',
          ),
          PerioperativeCriticalCareNutritionItem(
            title: 'MANAGEMENT OF NEGATIVE NITROGEN BALANCE',
            description: 'Requires increasing protein and calorie targets while concurrently treating the underlying catabolic state.',
            additionalInfo: 'Persistent negative balance leads to severe atrophy and poor outcomes.',
          ),
          PerioperativeCriticalCareNutritionItem(
            title: 'MONITORING TOOLS AND FUNCTIONAL MEASURES',
            description: 'Clinical assessment should combine anthropometry (grip strength, circumference) with metabolic input/output data.',
            additionalInfo: 'Functional status is a more dynamic indicator of nutritional success than weight alone.',
          ),
        ],
      ),
      PerioperativeCriticalCareNutritionCategory(
        categoryName: 'Special Clinical Scenarios',
        items: [
          PerioperativeCriticalCareNutritionItem(
            title: 'NUTRITION IN PANCREATITIS',
            description: 'Early EN (nasogastric or jejunal if tolerated) reduces mortality and infectious complications; PN is avoided.',
            additionalInfo: 'Gut-based nutrition minimizes pancreatic stimulation compared to IV routes.',
          ),
          PerioperativeCriticalCareNutritionItem(
            title: 'SHORT BOWEL AND ENTEROCUTANEOUS FISTULA',
            description: 'Use EN if distal absorption is adequate; transition to PN if the fistula output is high or gut length insufficient.',
            additionalInfo: 'Metabolic management depends heavily on fistula drainage volumes.',
          ),
          PerioperativeCriticalCareNutritionItem(
            title: 'POSTOPERATIVE ERAS PROTOCOLS',
            description: 'Includes preoperative carbohydrate loading and the earliest possible postoperative oral or enteral intake.',
            additionalInfo: 'Avoiding unnecessary NPO status or prolonged NG tube decompression speeds recovery.',
          ),
          PerioperativeCriticalCareNutritionItem(
            title: 'LIVER TRANSPLANT AND FAILURE',
            description: 'Primary risks are hypoglycemia and muscle wasting; high protein support and BCAA formulas are often necessary.',
            additionalInfo: 'Protein should not be permanently restricted even in encephalopathy.',
          ),
          PerioperativeCriticalCareNutritionItem(
            title: 'ONCOLOGY AND SARCOPENIC OBESITY',
            description: 'Screen for muscle wasting hidden by weight; high protein intake is crucial for tolerance to cancer therapies.',
            additionalInfo: 'Protein turnover is significantly higher in metastatic malignancies.',
          ),
        ],
      ),
      PerioperativeCriticalCareNutritionCategory(
        categoryName: 'Electrolytes & Micronutrients',
        items: [
          PerioperativeCriticalCareNutritionItem(
            title: 'PHOSPHATE AND RESPIRATORY FAILURE',
            description: 'Phosphate is critical for respiratory muscle strength; depletion leads to weaning failure in the ICU.',
            additionalInfo: 'Often clinical levels drop precipitously after starting nutrition.',
          ),
          PerioperativeCriticalCareNutritionItem(
            title: 'MAGNESIUM, ARRHYTHMIAS, AND CALCIUM',
            description: 'Hypomagnesemia predisposes to cardiac arrhythmias and refractory hypocalcemia.',
            additionalInfo: 'Aggressive replacement is required, especially in refeeding syndromes.',
          ),
          PerioperativeCriticalCareNutritionItem(
            title: 'TRACE ELEMENT SUPPLEMENTATION',
            description: 'Zinc, selenium, copper, and manganese must be supplemented in any long-term PN course.',
            additionalInfo: 'Care is needed for Mn and Cu in patients with significant cholestasis due to metabolic accumulation.',
          ),
          PerioperativeCriticalCareNutritionItem(
            title: 'VITAMINS AND THIAMINE IMPORTANCE',
            description: 'Daily multivitamin addition to PN is standard; thiamine is essential for high-risk and alcoholic patients.',
            additionalInfo: 'Thiamine prevents Wernicke-Korsakoff during metabolic replenishment.',
          ),
        ],
      ),
      PerioperativeCriticalCareNutritionCategory(
        categoryName: 'Safety Pearls',
        items: [
          PerioperativeCriticalCareNutritionItem(
            title: 'SUMMARY SPOT QUESTIONS',
            description: 'Key principles: "If the gut works, use it" (EN > PN) and early initiation within 24–48 hours.',
            subtitle: 'Avoid hypercaloric feeding to prevent increased CO₂ and steatosis',
            additionalInfo: 'Head-up 30–45° prevents aspiration/VAP. Proper catheter care is vital for PN safety. Selective use of immunonutrition in major surgery and glutamine in specific surgical cases.',
          ),
        ],
      ),
    ];
  }
}
