import '../../models/question.dart';

List<Question> nutritionPerioperativeCriticalCareQuestions = [
  Question(
    id: 'nutrition_perioperative_critical_care_001',
    question: 'Which patient group requires initiation of perioperative nutritional support?',
    options: [
      'Patients who lost 5% of body weight within 1 week before surgery',
      'Patients with mild hypoproteinemia but good oral intake',
      'ICU patients with 2 days of oral feeding',
      'Well-nourished patient undergoing elective surgery',
      'Stable patient who fasted for 1 day'
    ],
    correctAnswerIndex: 0,
    explanation: 'Significant recent weight loss indicates malnutrition → perioperative nutritional support is required.',
    category: 'Nutrition in Perioperative & Critical Care',
    difficulty: 2
  ),
  Question(
    id: 'nutrition_perioperative_critical_care_002',
    question: 'What is the most likely complication of prolonged NPO (nothing by mouth)?',
    options: [
      'Hypertension',
      'Hyperglycemia',
      'Intestinal mucosal atrophy',
      'Pulmonary embolism',
      'Hypokalemia'
    ],
    correctAnswerIndex: 2,
    explanation: 'Prolonged NPO causes intestinal barrier weakening and mucosal atrophy.',
    category: 'Nutrition in Perioperative & Critical Care',
    difficulty: 2
  ),
  Question(
    id: 'nutrition_perioperative_critical_care_003',
    question: 'Which parameter is the most reliable for monitoring nutritional status?',
    options: [
      'BMI',
      'Albumin',
      'Prealbumin',
      'Total protein',
      'Hemoglobin'
    ],
    correctAnswerIndex: 2,
    explanation: 'Prealbumin reflects acute nutritional status best due to its short half-life.',
    category: 'Nutrition in Perioperative & Critical Care',
    difficulty: 2
  ),
  Question(
    id: 'nutrition_perioperative_critical_care_004',
    question: 'Which method provides the most accurate calculation of caloric needs?',
    options: [
      'Estimation based on body weight',
      'Height-weight index',
      'Harris-Benedict formula',
      'Indirect calorimetry',
      'Nitrogen balance method'
    ],
    correctAnswerIndex: 3,
    explanation: 'Indirect calorimetry, based on oxygen consumption and CO₂ production, is the most accurate method for energy requirement calculation.',
    category: 'Nutrition in Perioperative & Critical Care',
    difficulty: 2
  ),
  Question(
    id: 'nutrition_perioperative_critical_care_005',
    question: 'What is the most common complication of parenteral nutrition?',
    options: [
      'Hyponatremia',
      'Hypoglycemia',
      'Infection',
      'Protein deficiency',
      'Hypokalemia'
    ],
    correctAnswerIndex: 2,
    explanation: 'Central line requirement → catheter-related sepsis is most common.',
    category: 'Nutrition in Perioperative & Critical Care',
    difficulty: 2
  ),
  Question(
    id: 'nutrition_perioperative_critical_care_006',
    question: 'Which electrolyte disturbance is most common in refeeding syndrome?',
    options: [
      'Hyperkalemia',
      'Hyponatremia',
      'Hypophosphatemia',
      'Hypercalcemia',
      'Hypochloremia'
    ],
    correctAnswerIndex: 2,
    explanation: 'In refeeding syndrome, glucose uptake increases → ATP production consumes phosphate → hypophosphatemia develops.',
    category: 'Nutrition in Perioperative & Critical Care',
    difficulty: 2
  ),
  Question(
    id: 'nutrition_perioperative_critical_care_007',
    question: 'Which is a contraindication for enteral nutrition?',
    options: [
      'Intact GI tract',
      'Minimal bowel motility',
      'Shock',
      'Prolonged NPO',
      'Perioperative period'
    ],
    correctAnswerIndex: 2,
    explanation: 'Enteral feeding not recommended when perfusion is impaired (shock).',
    category: 'Nutrition in Perioperative & Critical Care',
    difficulty: 2
  ),
  Question(
    id: 'nutrition_perioperative_critical_care_008',
    question: 'Which clinical condition is associated with high protein requirements?',
    options: [
      'Stroke',
      'Chronic kidney disease',
      'Burns',
      'Alzheimer\'s disease',
      'Parkinson\'s disease'
    ],
    correctAnswerIndex: 2,
    explanation: 'Burn patients develop hypermetabolism → protein catabolism increases → require high protein intake.',
    category: 'Nutrition in Perioperative & Critical Care',
    difficulty: 2
  ),
  Question(
    id: 'nutrition_perioperative_critical_care_009',
    question: 'What is the daily protein requirement in high-demand patients?',
    options: [
      '0.5–0.8 g/kg',
      '1.0 g/kg',
      '1.2–2.0 g/kg',
      '2.5–3.0 g/kg',
      '>3.5 g/kg'
    ],
    correctAnswerIndex: 2,
    explanation: 'Critically ill patients require ~1.2–2.0 g/kg/day protein.',
    category: 'Nutrition in Perioperative & Critical Care',
    difficulty: 2
  ),
  Question(
    id: 'nutrition_perioperative_critical_care_010',
    question: 'Which is NOT a complication of total parenteral nutrition (TPN)?',
    options: [
      'Hyperglycemia',
      'Hypophosphatemia',
      'Liver dysfunction',
      'Catheter sepsis',
      'Hyperkalemia'
    ],
    correctAnswerIndex: 4,
    explanation: 'TPN usually causes hypokalemia rather than hyperkalemia.',
    category: 'Nutrition in Perioperative & Critical Care',
    difficulty: 2
  ),
  Question(
    id: 'nutrition_perioperative_critical_care_011',
    question: 'Which laboratory parameter is NOT used in nutritional assessment?',
    options: [
      'Albumin',
      'Prealbumin',
      'Transferrin',
      'CRP',
      'Hematocrit'
    ],
    correctAnswerIndex: 4,
    explanation: 'Hematocrit reflects blood loss and fluid status, not nutritional state. Others are nutritional markers.',
    category: 'Nutrition in Perioperative & Critical Care',
    difficulty: 2
  ),
  Question(
    id: 'nutrition_perioperative_critical_care_012',
    question: 'What is the purpose of using amino acids like glutamine and arginine in stressed patients?',
    options: [
      'Lower cholesterol',
      'Increase hydration',
      'Prevent nitrogen-related liver injury',
      'Support the immune system and accelerate recovery',
      'Stop protein breakdown'
    ],
    correctAnswerIndex: 3,
    explanation: 'These amino acids strengthen immune response, support gut barrier → especially useful in critically ill patients.',
    category: 'Nutrition in Perioperative & Critical Care',
    difficulty: 2
  ),
  Question(
    id: 'nutrition_perioperative_critical_care_013',
    question: 'Which route allows safe long-term enteral nutrition?',
    options: [
      'Oral intake',
      'Nasogastric tube',
      'Nasojejunal tube',
      'Gastrostomy tube',
      'Rectal feeding'
    ],
    correctAnswerIndex: 3,
    explanation: 'Gastrostomy is preferred for >4 weeks → more comfortable and stable.',
    category: 'Nutrition in Perioperative & Critical Care',
    difficulty: 2
  ),
  Question(
    id: 'nutrition_perioperative_critical_care_014',
    question: 'Which is correct regarding lipid emulsions in total parenteral nutrition (TPN)?',
    options: [
      'Provide 10% of daily calories',
      'Lipid administration is not mandatory',
      'Do not contain essential fatty acids',
      'Have lower caloric density than carbohydrates',
      'Reduce infection risk'
    ],
    correctAnswerIndex: 1,
    explanation: 'Short-term TPN can be given without lipids; however, in long-term use, essential fatty acid deficiency may develop.',
    category: 'Nutrition in Perioperative & Critical Care',
    difficulty: 2
  ),
  Question(
    id: 'nutrition_perioperative_critical_care_015',
    question: 'Which is a liver complication of parenteral nutrition?',
    options: [
      'Hypoglycemia',
      'Hepatic steatosis (fatty liver)',
      'Gallstones',
      'Portal hypertension',
      'Thrombocytopenia'
    ],
    correctAnswerIndex: 1,
    explanation: 'Long-term TPN, especially glucose-heavy formulas, can cause liver steatosis and dysfunction.',
    category: 'Nutrition in Perioperative & Critical Care',
    difficulty: 2
  ),
  Question(
    id: 'nutrition_perioperative_critical_care_016',
    question: 'In a patient with negative nitrogen balance, which statement is true?',
    options: [
      'Anabolic processes are increased',
      'Muscle breakdown is reduced',
      'Protein intake is sufficient',
      'Catabolic processes dominate',
      'Energy requirement is decreased'
    ],
    correctAnswerIndex: 3,
    explanation: 'Negative nitrogen balance means protein breakdown exceeds intake → catabolism predominates.',
    category: 'Nutrition in Perioperative & Critical Care',
    difficulty: 2
  ),
  Question(
    id: 'nutrition_perioperative_critical_care_017',
    question: 'Which is NOT a direct result of malnutrition in at-risk patients?',
    options: [
      'Increased infection risk',
      'Delayed wound healing',
      'Respiratory muscle weakness',
      'Hypothermia',
      'Hypovolemia'
    ],
    correctAnswerIndex: 4,
    explanation: 'Malnutrition causes muscle weakness, infections, poor healing, but not hypovolemia directly.',
    category: 'Nutrition in Perioperative & Critical Care',
    difficulty: 2
  ),
  Question(
    id: 'nutrition_perioperative_critical_care_018',
    question: 'In which condition is a positive nitrogen balance expected?',
    options: [
      'Post-trauma period',
      'Sepsis',
      'Burns',
      'Postoperative catabolic period',
      'Pregnancy'
    ],
    correctAnswerIndex: 4,
    explanation: 'Pregnancy and growth → anabolic state → positive nitrogen balance.',
    category: 'Nutrition in Perioperative & Critical Care',
    difficulty: 2
  ),
  Question(
    id: 'nutrition_perioperative_critical_care_019',
    question: 'Most likely cause of diarrhea in enteral nutrition?',
    options: [
      'Inadequate fluid intake',
      'High-protein formula',
      'Drugs with laxative effect',
      'GI fistula',
      'Respiratory infection'
    ],
    correctAnswerIndex: 2,
    explanation: 'Medications, especially antibiotics and laxatives, commonly cause diarrhea with enteral feeding.',
    category: 'Nutrition in Perioperative & Critical Care',
    difficulty: 2
  ),
  Question(
    id: 'nutrition_perioperative_critical_care_020',
    question: 'Which formula is more accurate for calculating calorie needs in obese patients?',
    options: [
      'Harris-Benedict',
      'Mifflin-St. Jeor',
      'Broca formula',
      'BMI × 20',
      'Basal energy × 1.2'
    ],
    correctAnswerIndex: 1,
    explanation: 'Mifflin-St. Jeor formula is more accurate and modern for obesity and critical care patients.',
    category: 'Nutrition in Perioperative & Critical Care',
    difficulty: 2
  ),
  Question(
    id: 'nutrition_perioperative_critical_care_021',
    question: 'Which is an objective marker of gastrointestinal intolerance?',
    options: [
      'Hunger',
      'Nausea',
      'Gastric residual volume >250 mL',
      'Hypoglycemia',
      'Constipation'
    ],
    correctAnswerIndex: 2,
    explanation: 'GRV >250–500 mL indicates GI intolerance → requires feeding adjustment.',
    category: 'Nutrition in Perioperative & Critical Care',
    difficulty: 2
  ),
  Question(
    id: 'nutrition_perioperative_critical_care_022',
    question: 'In a patient on TPN with elevated liver enzymes, the most likely cause is:',
    options: [
      'Protein deficiency',
      'Vitamin A toxicity',
      'High-lipid solutions',
      'Zinc deficiency',
      'Magnesium overload'
    ],
    correctAnswerIndex: 2,
    explanation: 'Prolonged lipid-heavy TPN can cause hepatic steatosis and cholestasis.',
    category: 'Nutrition in Perioperative & Critical Care',
    difficulty: 2
  ),
  Question(
    id: 'nutrition_perioperative_critical_care_023',
    question: 'Which feeding route carries the lowest aspiration risk?',
    options: [
      'Oral feeding',
      'Nasogastric tube',
      'Gastrostomy',
      'Nasojejunal tube',
      'IV fluids'
    ],
    correctAnswerIndex: 3,
    explanation: 'Jejunal feeding bypasses the stomach → lowest aspiration risk.',
    category: 'Nutrition in Perioperative & Critical Care',
    difficulty: 2
  ),
  Question(
    id: 'nutrition_perioperative_critical_care_024',
    question: 'Which nutritional product has anti-inflammatory effects in ICU patients?',
    options: [
      'D-lactate',
      'Omega-3 fatty acids',
      'Trans fats',
      'Cholesterol',
      'Lactose'
    ],
    correctAnswerIndex: 1,
    explanation: 'Omega-3 fatty acids modulate eicosanoid synthesis → anti-inflammatory.',
    category: 'Nutrition in Perioperative & Critical Care',
    difficulty: 2
  ),
  Question(
    id: 'nutrition_perioperative_critical_care_025',
    question: 'Which is NOT expected in ICU malnutrition?',
    options: [
      'Low prealbumin',
      'Negative nitrogen balance',
      'Lymphopenia',
      'Hypoproteinemia',
      'Hypernatremia'
    ],
    correctAnswerIndex: 4,
    explanation: 'Malnutrition lowers protein and lymphocytes, but hypernatremia is not directly related.',
    category: 'Nutrition in Perioperative & Critical Care',
    difficulty: 2
  ),
  Question(
    id: 'nutrition_perioperative_critical_care_026',
    question: 'Which patients benefit most from high-protein enteral formulas?',
    options: [
      'Parkinson\'s',
      'Type 2 diabetes',
      'Sepsis',
      'COPD',
      'Osteoarthritis'
    ],
    correctAnswerIndex: 2,
    explanation: 'Sepsis causes high protein catabolism → high-protein formulas required.',
    category: 'Nutrition in Perioperative & Critical Care',
    difficulty: 2
  ),
  Question(
    id: 'nutrition_perioperative_critical_care_027',
    question: 'Which is a mechanical complication of enteral nutrition?',
    options: [
      'Aspiration pneumonia',
      'Hyperglycemia',
      'Tube obstruction',
      'Diarrhea',
      'Hypophosphatemia'
    ],
    correctAnswerIndex: 2,
    explanation: 'Tube obstruction is a mechanical issue; others are metabolic or GI-related.',
    category: 'Nutrition in Perioperative & Critical Care',
    difficulty: 2
  ),
  Question(
    id: 'nutrition_perioperative_critical_care_028',
    question: 'Which is NOT a metabolic complication of TPN?',
    options: [
      'Hyperglycemia',
      'Hypokalemia',
      'Hypophosphatemia',
      'Hypertriglyceridemia',
      'Hyponatremia'
    ],
    correctAnswerIndex: 4,
    explanation: 'TPN usually contains sodium → hyponatremia is rare.',
    category: 'Nutrition in Perioperative & Critical Care',
    difficulty: 2
  ),
  Question(
    id: 'nutrition_perioperative_critical_care_029',
    question: 'Which statement about immunonutrition in ICU patients is correct?',
    options: [
      'Increases mortality',
      'Delays bowel transit',
      'May reduce infection rates',
      'Causes liver damage',
      'Worsens enteral intolerance'
    ],
    correctAnswerIndex: 2,
    explanation: 'Immunonutrition supports immunity and reduces infections.',
    category: 'Nutrition in Perioperative & Critical Care',
    difficulty: 2
  ),
  Question(
    id: 'nutrition_perioperative_critical_care_030',
    question: 'Low prealbumin is most indicative of:',
    options: [
      'Acute kidney injury',
      'Chronic hypovolemia',
      'Short-term malnutrition',
      'Anemia syndrome',
      'Hypocalcemia'
    ],
    correctAnswerIndex: 2,
    explanation: 'Prealbumin (short half-life) reflects acute nutritional status.',
    category: 'Nutrition in Perioperative & Critical Care',
    difficulty: 2
  ),
  Question(
    id: 'nutrition_perioperative_critical_care_031',
    question: 'Which condition carries the highest risk of negative nitrogen balance?',
    options: [
      'Pregnancy',
      'Burns',
      'Hypothyroidism',
      'Alzheimer\'s disease',
      'Stable COPD'
    ],
    correctAnswerIndex: 1,
    explanation: 'Burns cause extreme protein catabolism → negative nitrogen balance.',
    category: 'Nutrition in Perioperative & Critical Care',
    difficulty: 2
  ),
  Question(
    id: 'nutrition_perioperative_critical_care_032',
    question: 'Best approach to TPN-induced hyperglycemia?',
    options: [
      'Increase glucose concentration',
      'Increase lipids',
      'IV insulin infusion',
      'Stop TPN and switch to enteral',
      'Dilute with dextrose'
    ],
    correctAnswerIndex: 2,
    explanation: 'Insulin infusion is the recommended treatment.',
    category: 'Nutrition in Perioperative & Critical Care',
    difficulty: 2
  ),
  Question(
    id: 'nutrition_perioperative_critical_care_033',
    question: 'Which is a direct example of glutamine supplementation?',
    options: [
      'Medium-chain fatty acids',
      'Essential amino acid mixtures',
      'Non-essential amino acid glutamine supplementation',
      'Fructose mixtures',
      'Serine- and threonine-rich formulas'
    ],
    correctAnswerIndex: 2,
    explanation: 'Glutamine supports gut mucosa and immunity.',
    category: 'Nutrition in Perioperative & Critical Care',
    difficulty: 2
  ),
  Question(
    id: 'nutrition_perioperative_critical_care_034',
    question: 'Which is NOT used for immunomodulation in critical illness?',
    options: [
      'Arginine',
      'Omega-3 fatty acids',
      'Glutamine',
      'D-lactate',
      'Nucleotides'
    ],
    correctAnswerIndex: 3,
    explanation: 'D-lactate is a bacterial metabolite, toxic → not used for nutrition.',
    category: 'Nutrition in Perioperative & Critical Care',
    difficulty: 2
  ),
  Question(
    id: 'nutrition_perioperative_critical_care_035',
    question: 'Most likely cause of cholestasis in long-term TPN?',
    options: [
      'Hyperproteinemia',
      'Low calories',
      'Lack of enteral stimulation (bile stasis)',
      'Hypokalemia',
      'Excess B12'
    ],
    correctAnswerIndex: 2,
    explanation: 'Absence of enteral feeding reduces bile flow → cholestasis develops.',
    category: 'Nutrition in Perioperative & Critical Care',
    difficulty: 2
  ),
  Question(
    id: 'nutrition_perioperative_critical_care_036',
    question: 'Which is the most dangerous but hardest to detect TPN complication?',
    options: [
      'Hypoglycemia',
      'Hypermagnesemia',
      'Refeeding syndrome',
      'Hypernatremia',
      'Leukopenia'
    ],
    correctAnswerIndex: 2,
    explanation: 'Refeeding syndrome (hypophosphatemia, arrhythmias) is life-threatening in malnourished patients.',
    category: 'Nutrition in Perioperative & Critical Care',
    difficulty: 2
  ),
  Question(
    id: 'nutrition_perioperative_critical_care_037',
    question: 'In which condition is glutamine supplementation NOT recommended?',
    options: [
      'ARDS',
      'Sepsis',
      'Renal failure',
      'Burns',
      'Cancer patients'
    ],
    correctAnswerIndex: 2,
    explanation: 'In renal failure, glutamine metabolism is impaired → nitrogen load may worsen.',
    category: 'Nutrition in Perioperative & Critical Care',
    difficulty: 2
  ),
  Question(
    id: 'nutrition_perioperative_critical_care_038',
    question: 'Advantage of medium-chain triglycerides (MCTs) in enteral nutrition?',
    options: [
      'Absorbed without digestion',
      'Increases hepatic glycogen synthesis',
      'Raises hypoglycemia risk',
      'Requires pancreatic enzymes',
      'Raises cholesterol'
    ],
    correctAnswerIndex: 0,
    explanation: 'MCTs are absorbed directly without pancreatic lipase → useful in malabsorption.',
    category: 'Nutrition in Perioperative & Critical Care',
    difficulty: 2
  ),
  Question(
    id: 'nutrition_perioperative_critical_care_039',
    question: 'Which is NOT used for immune support in ICU nutrition?',
    options: [
      'Glutamine',
      'Arginine',
      'Omega-3',
      'Lactulose',
      'Nucleotides'
    ],
    correctAnswerIndex: 3,
    explanation: 'Lactulose is a laxative, not an immune-support agent.',
    category: 'Nutrition in Perioperative & Critical Care',
    difficulty: 2
  ),
  Question(
    id: 'nutrition_perioperative_critical_care_040',
    question: 'When should parenteral nutrition be initiated if enteral feeding fails?',
    options: [
      'Nausea',
      'Mild distension',
      'If <60% of needs met after 5 days',
      'Only if sodium high',
      'In obesity'
    ],
    correctAnswerIndex: 2,
    explanation: 'If <60% of requirements are met within 5–7 days, PN should be started.',
    category: 'Nutrition in Perioperative & Critical Care',
    difficulty: 2
  ),
  Question(
    id: 'nutrition_perioperative_critical_care_041',
    question: 'What is the main goal of perioperative nutritional support?',
    options: [
      'Weight gain',
      'Increase muscle mass',
      'Achieve positive nitrogen balance',
      'Reduce fluid load',
      'Increase electrolyte loss'
    ],
    correctAnswerIndex: 2,
    explanation: 'The goal is to halt catabolism and achieve positive nitrogen balance.',
    category: 'Nutrition in Perioperative & Critical Care',
    difficulty: 2
  ),
  Question(
    id: 'nutrition_perioperative_critical_care_042',
    question: 'Which is a metabolic complication of TPN?',
    options: [
      'Hypervolemia',
      'Hyponatremia',
      'Hypoglycemia',
      'Hyperglycemia',
      'Hypotension'
    ],
    correctAnswerIndex: 3,
    explanation: 'TPN, especially when glucose content is high, may cause hyperglycemia.',
    category: 'Nutrition in Perioperative & Critical Care',
    difficulty: 2
  ),
  Question(
    id: 'nutrition_perioperative_critical_care_043',
    question: 'In a patient on TPN with elevated triglyceride levels, first step is:',
    options: [
      'Stop lipid infusion',
      'Increase dextrose ratio',
      'Start insulin infusion',
      'Give albumin',
      'Stop TPN completely'
    ],
    correctAnswerIndex: 0,
    explanation: 'If triglycerides are high, first stop lipid infusion.',
    category: 'Nutrition in Perioperative & Critical Care',
    difficulty: 2
  ),
  Question(
    id: 'nutrition_perioperative_critical_care_044',
    question: 'Why is a central venous catheter preferred for parenteral nutrition?',
    options: [
      'Lowers infection risk',
      'Provides fast access',
      'Hyperosmolar solutions irritate peripheral veins',
      'Reduces electrolyte loss',
      'Easier to place'
    ],
    correctAnswerIndex: 2,
    explanation: 'TPN solutions are hyperosmolar → cause phlebitis peripherally → central veins are preferred.',
    category: 'Nutrition in Perioperative & Critical Care',
    difficulty: 2
  ),
  Question(
    id: 'nutrition_perioperative_critical_care_045',
    question: 'Low prealbumin levels best indicate:',
    options: [
      'Chronic liver disease',
      'Glucose intolerance',
      'Short-term protein deficiency',
      'Hyponatremia',
      'Malabsorption syndrome'
    ],
    correctAnswerIndex: 2,
    explanation: 'Prealbumin has a short half-life → reflects acute protein deficiency.',
    category: 'Nutrition in Perioperative & Critical Care',
    difficulty: 2
  ),
  Question(
    id: 'nutrition_perioperative_critical_care_046',
    question: 'Most important complication to monitor in the first 24h after initiating nutrition support?',
    options: [
      'Infection',
      'Hypokalemia',
      'Hypophosphatemia',
      'Hypotension',
      'Leukocytosis'
    ],
    correctAnswerIndex: 2,
    explanation: 'Refeeding syndrome is common in malnourished patients → hypophosphatemia within 24h.',
    category: 'Nutrition in Perioperative & Critical Care',
    difficulty: 2
  ),
  Question(
    id: 'nutrition_perioperative_critical_care_047',
    question: 'If abdominal distension and gastric residuals increase after starting enteral nutrition in ICU, first step?',
    options: [
      'Switch to TPN',
      'Stop enteral feeding immediately',
      'Reduce feeding rate',
      'Start dialysis',
      'Increase analgesic dose'
    ],
    correctAnswerIndex: 2,
    explanation: 'First reduce infusion rate; if still intolerant, temporarily stop feeding.',
    category: 'Nutrition in Perioperative & Critical Care',
    difficulty: 2
  ),
  Question(
    id: 'nutrition_perioperative_critical_care_048',
    question: 'High-fiber enteral formulas are most useful in:',
    options: [
      'Sepsis',
      'Diarrhea',
      'Constipation',
      'Acute pancreatitis',
      'Hyperglycemia'
    ],
    correctAnswerIndex: 2,
    explanation: 'Fiber promotes bowel motility and prevents constipation.',
    category: 'Nutrition in Perioperative & Critical Care',
    difficulty: 2
  ),
  Question(
    id: 'nutrition_perioperative_critical_care_049',
    question: 'Most likely cause of hypoglycemia in TPN patient?',
    options: [
      'Improper TPN preparation',
      'Catheter infection',
      'Abrupt discontinuation of TPN',
      'Low albumin',
      'Low fluid intake'
    ],
    correctAnswerIndex: 2,
    explanation: 'If TPN is suddenly stopped, pancreatic insulin continues → hypoglycemia occurs.',
    category: 'Nutrition in Perioperative & Critical Care',
    difficulty: 2
  ),
  Question(
    id: 'nutrition_perioperative_critical_care_050',
    question: 'Which ICU patients have highest risk of refeeding syndrome?',
    options: [
      'Post-bariatric surgery patients',
      'Pregnant women',
      'Alcoholic and malnourished patients',
      'Trauma patients',
      'Hypertensive patients'
    ],
    correctAnswerIndex: 2,
    explanation: 'Chronic malnutrition and alcoholism → highest refeeding risk.',
    category: 'Nutrition in Perioperative & Critical Care',
    difficulty: 2
  ),
  Question(
    id: 'nutrition_perioperative_critical_care_051',
    question: 'Which indicates feeding intolerance?',
    options: [
      'Low hematocrit',
      'High prealbumin',
      'High gastric residual volume',
      'High creatinine',
      'Low glucose'
    ],
    correctAnswerIndex: 2,
    explanation: 'High gastric residuals = enteral feeding intolerance.',
    category: 'Nutrition in Perioperative & Critical Care',
    difficulty: 2
  ),
  Question(
    id: 'nutrition_perioperative_critical_care_052',
    question: 'Time to reach target feeding rate in enteral nutrition?',
    options: [
      '1–2 hours',
      '4–6 hours',
      '24–48 hours',
      '72 hours',
      '5 days'
    ],
    correctAnswerIndex: 2,
    explanation: 'Target feeding rate is usually reached within 24–48h.',
    category: 'Nutrition in Perioperative & Critical Care',
    difficulty: 2
  ),
  Question(
    id: 'nutrition_perioperative_critical_care_053',
    question: 'How to reduce hepatic complications of TPN?',
    options: [
      'Use glucose only',
      'Continuous 24h TPN',
      'Increase insulin',
      'Cyclic TPN (e.g., overnight)',
      'Increase lipids'
    ],
    correctAnswerIndex: 3,
    explanation: 'Cyclic TPN reduces hepatic overload.',
    category: 'Nutrition in Perioperative & Critical Care',
    difficulty: 2
  ),
  Question(
    id: 'nutrition_perioperative_critical_care_054',
    question: 'Most common metabolic disturbance in TPN?',
    options: [
      'Hyponatremia',
      'Hyperkalemia',
      'Hyperglycemia',
      'Hypocalcemia',
      'Hypophosphatemia'
    ],
    correctAnswerIndex: 2,
    explanation: 'High glucose content → hyperglycemia common.',
    category: 'Nutrition in Perioperative & Critical Care',
    difficulty: 2
  ),
  Question(
    id: 'nutrition_perioperative_critical_care_055',
    question: 'Which is NOT a contraindication for enteral nutrition?',
    options: [
      'Ischemic bowel',
      'Active GI bleeding',
      'Severe hemodynamic instability',
      'Short bowel syndrome',
      'Mechanical ileus'
    ],
    correctAnswerIndex: 3,
    explanation: 'If some bowel function remains, even in short bowel syndrome, enteral feeding can be attempted.',
    category: 'Nutrition in Perioperative & Critical Care',
    difficulty: 2
  ),
  Question(
    id: 'nutrition_perioperative_critical_care_056',
    question: 'Effect of feed osmolality in enteral nutrition?',
    options: [
      'Protein ratio',
      'Infection risk',
      'Gastric emptying rate',
      'Hyperkalemia frequency',
      'Hypophosphatemia risk'
    ],
    correctAnswerIndex: 2,
    explanation: 'High osmolality → delayed gastric emptying → intolerance risk.',
    category: 'Nutrition in Perioperative & Critical Care',
    difficulty: 2
  ),
  Question(
    id: 'nutrition_perioperative_critical_care_057',
    question: 'Most likely cause of death in refeeding syndrome?',
    options: [
      'Liver failure',
      'Respiratory failure',
      'Hyperkalemia',
      'Malabsorption',
      'Cardiac arrhythmia'
    ],
    correctAnswerIndex: 4,
    explanation: 'Hypophosphatemia → arrhythmias → fatal in refeeding syndrome.',
    category: 'Nutrition in Perioperative & Critical Care',
    difficulty: 2
  ),
  Question(
    id: 'nutrition_perioperative_critical_care_058',
    question: 'Key determinant for feeding advancement in enteral nutrition?',
    options: [
      'Creatinine',
      'Urine output',
      'Gastric residual volume',
      'Albumin',
      'Glucose'
    ],
    correctAnswerIndex: 2,
    explanation: 'GRV is one of the best indicators of tolerance.',
    category: 'Nutrition in Perioperative & Critical Care',
    difficulty: 2
  ),
  Question(
    id: 'nutrition_perioperative_critical_care_059',
    question: 'Most commonly used nutrient in enteral formulas?',
    options: [
      'Lipids',
      'Amino acids',
      'Glucose',
      'Glutamine',
      'Essential fatty acids'
    ],
    correctAnswerIndex: 2,
    explanation: 'Carbohydrates (mainly glucose) are primary energy source in formulas.',
    category: 'Nutrition in Perioperative & Critical Care',
    difficulty: 2
  ),
  Question(
    id: 'nutrition_perioperative_critical_care_060',
    question: 'Excess glucose in TPN most often causes:',
    options: [
      'Hyponatremia',
      'Non-alcoholic hepatic steatosis',
      'Hypophosphatemia',
      'Hypocalcemia',
      'Hemolysis'
    ],
    correctAnswerIndex: 1,
    explanation: 'Excess glucose → liver fat deposition → steatosis.',
    category: 'Nutrition in Perioperative & Critical Care',
    difficulty: 2
  ),
  Question(
    id: 'nutrition_perioperative_critical_care_061',
    question: 'Hyperglycemia during TPN is linked to:',
    options: [
      'Hypothermia',
      'Low cortisol',
      'Increased insulin resistance',
      'Hypokalemia',
      'Hyponatremia'
    ],
    correctAnswerIndex: 2,
    explanation: 'Stress and glucose load → insulin resistance → hyperglycemia.',
    category: 'Nutrition in Perioperative & Critical Care',
    difficulty: 2
  ),
  Question(
    id: 'nutrition_perioperative_critical_care_062',
    question: 'Most commonly used screening system for nutritional risk?',
    options: [
      'NRS-2002',
      'MUST',
      'SGA',
      'APACHE II',
      'SOFA'
    ],
    correctAnswerIndex: 0,
    explanation: 'NRS-2002 is the standard perioperative nutritional risk screening tool (≥3 = at risk).',
    category: 'Nutrition in Perioperative & Critical Care',
    difficulty: 2
  ),
  Question(
    id: 'nutrition_perioperative_critical_care_063',
    question: 'When should elective surgery be postponed in severe malnutrition?',
    options: [
      'Albumin <2.5 g/dL',
      'Prealbumin <10 mg/dL',
      'BMI <18.5 kg/m²',
      'All of the above',
      'None'
    ],
    correctAnswerIndex: 3,
    explanation: 'All indicate severe malnutrition → surgery should be delayed 7–10 days for nutrition support.',
    category: 'Nutrition in Perioperative & Critical Care',
    difficulty: 2
  ),
  Question(
    id: 'nutrition_perioperative_critical_care_064',
    question: 'Which nutrients are included in immunonutrition formulas?',
    options: [
      'Arginine',
      'Omega-3 fatty acids',
      'Glutamine',
      'All of the above',
      'None'
    ],
    correctAnswerIndex: 3,
    explanation: 'Immunonutrition includes arginine, omega-3, and glutamine (especially for cancer & major surgery patients).',
    category: 'Nutrition in Perioperative & Critical Care',
    difficulty: 2
  ),
  Question(
    id: 'nutrition_perioperative_critical_care_065',
    question: 'Preferred route for enteral nutrition in ICU?',
    options: [
      'Nasogastric tube',
      'Nasojejunal tube',
      'PEG',
      'All',
      'None'
    ],
    correctAnswerIndex: 1,
    explanation: 'Post-pyloric (nasojejunal) feeding reduces aspiration risk in ICU.',
    category: 'Nutrition in Perioperative & Critical Care',
    difficulty: 2
  ),
  Question(
    id: 'nutrition_perioperative_critical_care_066',
    question: 'In which condition is glutamine contraindicated?',
    options: [
      'Sepsis',
      'Liver failure',
      'Renal failure',
      'All',
      'None'
    ],
    correctAnswerIndex: 0,
    explanation: 'Glutamine increases mortality in sepsis (REDOXS trial).',
    category: 'Nutrition in Perioperative & Critical Care',
    difficulty: 2
  ),
  Question(
    id: 'nutrition_perioperative_critical_care_067',
    question: 'Which anthropometric measures are used in nutritional assessment?',
    options: [
      'Triceps skinfold thickness',
      'Mid-arm circumference',
      'BMI',
      'All',
      'None'
    ],
    correctAnswerIndex: 3,
    explanation: 'All are used to assess malnutrition (BMI <18.5 = malnutrition).',
    category: 'Nutrition in Perioperative & Critical Care',
    difficulty: 2
  ),
  Question(
    id: 'nutrition_perioperative_critical_care_068',
    question: 'Which nutrients reduce free radical damage?',
    options: [
      'Selenium',
      'Zinc',
      'Vitamin C',
      'All',
      'None'
    ],
    correctAnswerIndex: 3,
    explanation: 'Selenium, zinc, and vitamin C act as antioxidants, especially in ICU.',
    category: 'Nutrition in Perioperative & Critical Care',
    difficulty: 2
  ),
  Question(
    id: 'nutrition_perioperative_critical_care_069',
    question: 'Bioelectrical impedance analysis does NOT measure:',
    options: [
      'Body fat percentage',
      'Extracellular fluid volume',
      'Serum albumin level',
      'Fat-free mass',
      'None'
    ],
    correctAnswerIndex: 2,
    explanation: 'BIA measures body composition, not serum albumin.',
    category: 'Nutrition in Perioperative & Critical Care',
    difficulty: 2
  ),
  Question(
    id: 'nutrition_perioperative_critical_care_070',
    question: 'Advantages of dipeptide formulas?',
    options: [
      'Easier absorption',
      'Less diarrhea',
      'Contain glutamine & arginine',
      'All',
      'None'
    ],
    correctAnswerIndex: 3,
    explanation: 'Dipeptide formulas (e.g., alanine-glutamine) improve stability, absorption, and tolerance.',
    category: 'Nutrition in Perioperative & Critical Care',
    difficulty: 2
  ),
  Question(
    id: 'nutrition_perioperative_critical_care_071',
    question: 'Most sensitive nutritional marker?',
    options: [
      'Albumin',
      'Prealbumin',
      'Transferrin',
      'Retinol-binding protein',
      'None'
    ],
    correctAnswerIndex: 1,
    explanation: 'Prealbumin (short half-life, ~2 days) is the most sensitive nutritional marker.',
    category: 'Nutrition in Perioperative & Critical Care',
    difficulty: 2
  ),
  Question(
    id: 'nutrition_perioperative_critical_care_072',
    question: 'In severe malnutrition (albumin <2.5), elective surgery should be delayed for:',
    options: [
      '24h',
      '48h',
      '7–10 days',
      '3 weeks',
      'Not delayed'
    ],
    correctAnswerIndex: 2,
    explanation: '7–10 days of pre-op nutritional support reduces postop complications by ~50%.',
    category: 'Nutrition in Perioperative & Critical Care',
    difficulty: 2
  ),
  Question(
    id: 'nutrition_perioperative_critical_care_073',
    question: 'Most sensitive marker of nutritional status?',
    options: [
      'Albumin',
      'Prealbumin',
      'Transferrin',
      'Lymphocyte count',
      'BMI'
    ],
    correctAnswerIndex: 1,
    explanation: 'Prealbumin (half-life 2 days) is more sensitive than albumin (20 days).',
    category: 'Nutrition in Perioperative & Critical Care',
    difficulty: 2
  ),
  Question(
    id: 'nutrition_perioperative_critical_care_074',
    question: 'Advantages of dipeptide formulas?',
    options: [
      'Glutamine stability',
      'Better tolerance',
      'Less diarrhea',
      'All',
      'None'
    ],
    correctAnswerIndex: 3,
    explanation: 'Alanyl-glutamine dipeptide increases stability, improves absorption and tolerance.',
    category: 'Nutrition in Perioperative & Critical Care',
    difficulty: 2
  ),
  Question(
    id: 'nutrition_perioperative_critical_care_075',
    question: 'Which antioxidant reduces free radical injury?',
    options: [
      'Selenium',
      'Zinc',
      'Vitamin C',
      'All',
      'None'
    ],
    correctAnswerIndex: 3,
    explanation: 'Selenium, zinc, and vitamin C decrease oxidative stress. Selenium reduces mortality in sepsis.',
    category: 'Nutrition in Perioperative & Critical Care',
    difficulty: 2
  ),
  Question(
    id: 'nutrition_perioperative_critical_care_076',
    question: 'Members of a nutritional support team?',
    options: [
      'Physician',
      'Dietitian',
      'Nurse',
      'Pharmacist',
      'All'
    ],
    correctAnswerIndex: 4,
    explanation: 'Multidisciplinary nutrition teams improve outcomes by ~30% and reduce complications.',
    category: 'Nutrition in Perioperative & Critical Care',
    difficulty: 2
  ),
];
