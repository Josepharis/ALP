import '../../models/question.dart';

List<Question> anesthesiaCardiovascularSurgeryQuestions = [
  Question(
    id: 'anesthesia_cardiovascular_surgery_001',
    question: 'What is the most common hemodynamic complication during cardiopulmonary bypass (CPB)?',
    options: [
      'Hypertension',
      'Hypovolemia',
      'Hypotension',
      'Bradyarrhythmia',
      'Hypoxemia'
    ],
    correctAnswerIndex: 2,
    explanation: 'During CPB, hemodilution, systemic vasodilation, and cooling commonly cause hypotension.',
    category: 'Anesthesia for Cardiovascular Surgery',
    difficulty: 2
  ),
  Question(
    id: 'anesthesia_cardiovascular_surgery_002',
    question: 'In open-heart surgery, what does cross-clamp time represent?',
    options: [
      'Duration of cardiac arrest',
      'Duration of anesthesia induction',
      'Duration of cannulation',
      'Duration of aortic flow interruption',
      'Time CPB is initiated'
    ],
    correctAnswerIndex: 3,
    explanation: 'Cross-clamp time = period when the aorta is clamped, directly reflecting myocardial ischemia duration.',
    category: 'Anesthesia for Cardiovascular Surgery',
    difficulty: 2
  ),
  Question(
    id: 'anesthesia_cardiovascular_surgery_003',
    question: 'Most critical complication to avoid during cannulation in CPB?',
    options: [
      'Hypothermia',
      'Air embolism',
      'Hypotension',
      'Hyperkalemia',
      'Arrhythmia'
    ],
    correctAnswerIndex: 1,
    explanation: 'Venous or aortic cannulation carries a high risk of air embolism → requires careful de-airing.',
    category: 'Anesthesia for Cardiovascular Surgery',
    difficulty: 2
  ),
  Question(
    id: 'anesthesia_cardiovascular_surgery_004',
    question: 'Most commonly used method for cerebral perfusion monitoring during CPB?',
    options: [
      'EEG',
      'BIS monitor',
      'NIRS (Near-infrared spectroscopy)',
      'Entropy',
      'ETCO₂'
    ],
    correctAnswerIndex: 2,
    explanation: 'NIRS tracks cerebral oxygenation in the frontal cortex → detects hypoperfusion early.',
    category: 'Anesthesia for Cardiovascular Surgery',
    difficulty: 2
  ),
  Question(
    id: 'anesthesia_cardiovascular_surgery_005',
    question: 'Most common arrhythmia after open-heart surgery?',
    options: [
      'Ventricular tachycardia',
      'Atrial fibrillation',
      'Sinus arrest',
      'Ventricular fibrillation',
      'AV block'
    ],
    correctAnswerIndex: 1,
    explanation: 'Postoperative atrial fibrillation occurs most often in the first 2–3 days.',
    category: 'Anesthesia for Cardiovascular Surgery',
    difficulty: 2
  ),
  Question(
    id: 'anesthesia_cardiovascular_surgery_006',
    question: 'One of the most common early complications after CPB?',
    options: [
      'Aortic dissection',
      'Acute renal failure',
      'Hypertensive crisis',
      'Increased intracranial pressure',
      'Pancreatitis'
    ],
    correctAnswerIndex: 1,
    explanation: 'Due to low perfusion and inflammation, AKI is a frequent complication after CPB.',
    category: 'Anesthesia for Cardiovascular Surgery',
    difficulty: 2
  ),
  Question(
    id: 'anesthesia_cardiovascular_surgery_007',
    question: 'Which ion is present in high concentration in cold cardioplegia solution?',
    options: [
      'Sodium',
      'Magnesium',
      'Potassium',
      'Calcium',
      'Chloride'
    ],
    correctAnswerIndex: 2,
    explanation: 'High potassium induces depolarization block → arrests the heart.',
    category: 'Anesthesia for Cardiovascular Surgery',
    difficulty: 2
  ),
  Question(
    id: 'anesthesia_cardiovascular_surgery_008',
    question: 'Best test to detect insufficient heparinization during CPB?',
    options: [
      'INR',
      'ACT (Activated Clotting Time)',
      'aPTT',
      'TT',
      'Fibrinogen level'
    ],
    correctAnswerIndex: 1,
    explanation: 'ACT is used to monitor heparin effect; target >400–480 sec for CPB.',
    category: 'Anesthesia for Cardiovascular Surgery',
    difficulty: 2
  ),
  Question(
    id: 'anesthesia_cardiovascular_surgery_009',
    question: 'Most common complication after protamine administration?',
    options: [
      'Hyperglycemia',
      'Arrhythmia',
      'Hypotension',
      'Hypertension',
      'Renal dysfunction'
    ],
    correctAnswerIndex: 2,
    explanation: 'Rapid protamine → histamine release & vasodilation → hypotension.',
    category: 'Anesthesia for Cardiovascular Surgery',
    difficulty: 2
  ),
  Question(
    id: 'anesthesia_cardiovascular_surgery_010',
    question: 'Best treatment for vasoplegic syndrome after CPB?',
    options: [
      'Dopamine infusion',
      'High-volume fluid loading',
      'Methylene blue',
      'Epinephrine bolus',
      'Dexamethasone'
    ],
    correctAnswerIndex: 2,
    explanation: 'Vasoplegic syndrome = NO-mediated refractory hypotension → methylene blue blocks NO pathway.',
    category: 'Anesthesia for Cardiovascular Surgery',
    difficulty: 2
  ),
  Question(
    id: 'anesthesia_cardiovascular_surgery_011',
    question: 'Main cause of systemic inflammatory response during CPB?',
    options: [
      'Cooling',
      'Blood contact with artificial surfaces',
      'Cardioplegia',
      'Hypothermia',
      'Heparin use'
    ],
    correctAnswerIndex: 1,
    explanation: 'Blood–surface contact triggers cytokine release → SIRS-like response.',
    category: 'Anesthesia for Cardiovascular Surgery',
    difficulty: 2
  ),
  Question(
    id: 'anesthesia_cardiovascular_surgery_012',
    question: 'Most common cause of reintubation after cardiac surgery?',
    options: [
      'Hypoglycemia',
      'Hypothermia',
      'Respiratory depression & pulmonary edema',
      'Hypocalcemia',
      'Polycythemia'
    ],
    correctAnswerIndex: 2,
    explanation: 'Pulmonary edema + respiratory depression → main causes of reintubation.',
    category: 'Anesthesia for Cardiovascular Surgery',
    difficulty: 2
  ),
  Question(
    id: 'anesthesia_cardiovascular_surgery_013',
    question: 'One of the most common causes of brain injury after CPB?',
    options: [
      'Hyperkalemia',
      'Intraoperative hyperventilation',
      'Embolization',
      'Hypothermia',
      'Hypocapnia'
    ],
    correctAnswerIndex: 2,
    explanation: 'Air or thrombus emboli → neurological deficits.',
    category: 'Anesthesia for Cardiovascular Surgery',
    difficulty: 2
  ),
  Question(
    id: 'anesthesia_cardiovascular_surgery_014',
    question: 'Ideal hematocrit range during CPB?',
    options: [
      '20–25%',
      '25–30%',
      '30–35%',
      '35–40%',
      '40–45%'
    ],
    correctAnswerIndex: 1,
    explanation: 'Hct 25–30% balances oxygen delivery & viscosity.',
    category: 'Anesthesia for Cardiovascular Surgery',
    difficulty: 2
  ),
  Question(
    id: 'anesthesia_cardiovascular_surgery_015',
    question: 'Which substance in CPB has antioxidant & cell-protective properties?',
    options: [
      'Dopamine',
      'Glucose',
      'Mannitol',
      'Methylene blue',
      'Furosemide'
    ],
    correctAnswerIndex: 2,
    explanation: 'Mannitol = osmotic diuretic + free radical scavenger.',
    category: 'Anesthesia for Cardiovascular Surgery',
    difficulty: 2
  ),
  Question(
    id: 'anesthesia_cardiovascular_surgery_016',
    question: 'Purpose of cold blood perfusion during CPB?',
    options: [
      'Increase HR',
      'Increase vasodilation',
      'Slow metabolism',
      'Correct hypotension',
      'Enhance coagulation'
    ],
    correctAnswerIndex: 2,
    explanation: 'Hypothermia slows metabolism → reduces ischemic injury.',
    category: 'Anesthesia for Cardiovascular Surgery',
    difficulty: 2
  ),
  Question(
    id: 'anesthesia_cardiovascular_surgery_017',
    question: 'Which agent increases risk of protamine reaction?',
    options: [
      'Beta-blocker',
      'Nitric oxide',
      'NPH insulin',
      'Antibiotic',
      'Heparin'
    ],
    correctAnswerIndex: 2,
    explanation: 'NPH insulin contains protamine → sensitization risk.',
    category: 'Anesthesia for Cardiovascular Surgery',
    difficulty: 2
  ),
  Question(
    id: 'anesthesia_cardiovascular_surgery_018',
    question: 'Best way to prevent air embolism during CPB?',
    options: [
      'Trendelenburg position',
      'De-airing before arterial cannulation',
      'Anticoagulation',
      'Increasing O₂',
      'Hyperventilation'
    ],
    correctAnswerIndex: 1,
    explanation: 'Arterial lines must be de-aired before starting CPB.',
    category: 'Anesthesia for Cardiovascular Surgery',
    difficulty: 2
  ),
  Question(
    id: 'anesthesia_cardiovascular_surgery_019',
    question: 'Potential effect of hemodilution during CPB?',
    options: [
      'Hypercalcemia',
      'Increased viscosity',
      'Low oxygen-carrying capacity',
      'Reduced hypothermia tolerance',
      'Increased coagulation'
    ],
    correctAnswerIndex: 2,
    explanation: 'Hemodilution → ↓ Hb → ↓ O₂ carrying capacity.',
    category: 'Anesthesia for Cardiovascular Surgery',
    difficulty: 2
  ),
  Question(
    id: 'anesthesia_cardiovascular_surgery_020',
    question: 'First organ affected if perfusion pressure falls during CPB?',
    options: [
      'Skin',
      'Lungs',
      'Brain',
      'Liver',
      'Muscle'
    ],
    correctAnswerIndex: 2,
    explanation: 'Brain is most sensitive to perfusion drops.',
    category: 'Anesthesia for Cardiovascular Surgery',
    difficulty: 2
  ),
  Question(
    id: 'anesthesia_cardiovascular_surgery_021',
    question: 'Why monitor electrolytes during CPB?',
    options: [
      'Hypokalemia disrupts conduction',
      'Hypernatremia increases thrombosis',
      'Hypocalcemia accelerates clotting',
      'Hypomagnesemia prevents tachycardia',
      'Hypochloremia suppresses alkalosis'
    ],
    correctAnswerIndex: 0,
    explanation: 'Hypokalemia → ventricular arrhythmias.',
    category: 'Anesthesia for Cardiovascular Surgery',
    difficulty: 2
  ),
  Question(
    id: 'anesthesia_cardiovascular_surgery_022',
    question: 'First-line treatment for "low output syndrome" after CPB?',
    options: [
      'Vasodilator',
      'High-dose furosemide',
      'Inotropes',
      'Beta-blocker',
      'Nitric oxide'
    ],
    correctAnswerIndex: 2,
    explanation: 'Dobutamine or other inotropes are used.',
    category: 'Anesthesia for Cardiovascular Surgery',
    difficulty: 2
  ),
  Question(
    id: 'anesthesia_cardiovascular_surgery_023',
    question: 'Which is NOT in cardioplegia solution?',
    options: [
      'Potassium',
      'Sodium',
      'Magnesium',
      'Calcium',
      'Epinephrine'
    ],
    correctAnswerIndex: 4,
    explanation: 'Cardioplegia contains K⁺, Mg²⁺, low Ca²⁺, not epinephrine.',
    category: 'Anesthesia for Cardiovascular Surgery',
    difficulty: 2
  ),
  Question(
    id: 'anesthesia_cardiovascular_surgery_024',
    question: 'Risk factor for mediastinitis/sternal separation after CPB?',
    options: [
      'Hypothermia',
      'Smoking',
      'Preop aspirin',
      'Male sex',
      'Intraop hypertension'
    ],
    correctAnswerIndex: 1,
    explanation: 'Smoking impairs wound healing → ↑ infection.',
    category: 'Anesthesia for Cardiovascular Surgery',
    difficulty: 2
  ),
  Question(
    id: 'anesthesia_cardiovascular_surgery_025',
    question: 'Most common cause of prolonged ventilation after CPB?',
    options: [
      'Hypernatremia',
      'Preexisting pulmonary disease',
      'Intraop hypertension',
      'Hypoglycemia',
      'Hypercalcemia'
    ],
    correctAnswerIndex: 1,
    explanation: 'COPD or smoking history → prolonged intubation.',
    category: 'Anesthesia for Cardiovascular Surgery',
    difficulty: 2
  ),
  Question(
    id: 'anesthesia_cardiovascular_surgery_026',
    question: 'Most likely cause of metabolic acidosis post-CPB?',
    options: [
      'Respiratory depression',
      'Lactic acidosis',
      'Hypernatremia',
      'Hyperventilation',
      'Oxygen toxicity'
    ],
    correctAnswerIndex: 1,
    explanation: 'Hypoperfusion → anaerobic metabolism → lactate.',
    category: 'Anesthesia for Cardiovascular Surgery',
    difficulty: 2
  ),
  Question(
    id: 'anesthesia_cardiovascular_surgery_027',
    question: 'If ACT is not prolonged despite adequate heparin, first step?',
    options: [
      'Give protamine',
      'Replace ACT machine',
      'Increase heparin',
      'Check AT III levels',
      'Transfusion'
    ],
    correctAnswerIndex: 3,
    explanation: 'AT III deficiency → heparin resistance.',
    category: 'Anesthesia for Cardiovascular Surgery',
    difficulty: 2
  ),
  Question(
    id: 'anesthesia_cardiovascular_surgery_028',
    question: 'Which is NOT part of SIRS criteria after CPB?',
    options: [
      'Fever or hypothermia',
      'Tachypnea',
      'Leukocytosis/leukopenia',
      'Hypoglycemia',
      'Tachycardia'
    ],
    correctAnswerIndex: 3,
    explanation: 'Glucose not included; core criteria = T°, HR, RR, WBC.',
    category: 'Anesthesia for Cardiovascular Surgery',
    difficulty: 2
  ),
  Question(
    id: 'anesthesia_cardiovascular_surgery_029',
    question: 'If chest tube drainage >100 mL/hr post-CPB, first step?',
    options: [
      'Check sodium',
      'Check coagulation profile',
      'Check glucose',
      'Check electrolytes',
      'Check renal function'
    ],
    correctAnswerIndex: 1,
    explanation: 'Excess drainage → often coagulopathy → INR/aPTT/platelets.',
    category: 'Anesthesia for Cardiovascular Surgery',
    difficulty: 2
  ),
  Question(
    id: 'anesthesia_cardiovascular_surgery_030',
    question: 'Most affected organ by reperfusion injury after CPB?',
    options: [
      'Lungs',
      'Heart',
      'Liver',
      'Kidneys',
      'Spleen'
    ],
    correctAnswerIndex: 1,
    explanation: 'Heart is most vulnerable to reperfusion injury.',
    category: 'Anesthesia for Cardiovascular Surgery',
    difficulty: 2
  ),
  Question(
    id: 'anesthesia_cardiovascular_surgery_031',
    question: 'Strongest sign of protamine anaphylactoid reaction?',
    options: [
      'Tachycardia',
      'Hypertension',
      'Bradycardia',
      'Sudden hypotension + bronchospasm',
      'Fever'
    ],
    correctAnswerIndex: 3,
    explanation: 'Protamine allergy → severe hypotension + bronchospasm.',
    category: 'Anesthesia for Cardiovascular Surgery',
    difficulty: 2
  ),
  Question(
    id: 'anesthesia_cardiovascular_surgery_032',
    question: 'Why use blood warmers instead of nurse warming manually?',
    options: [
      'Reduce blood loss',
      'Allow rapid transfusion',
      'Maintain blood pH',
      'Prevent hypothermia',
      'Maintain electrolytes'
    ],
    correctAnswerIndex: 3,
    explanation: 'Cold blood products cause hypothermia → use blood warmer.',
    category: 'Anesthesia for Cardiovascular Surgery',
    difficulty: 2
  ),
  Question(
    id: 'anesthesia_cardiovascular_surgery_033',
    question: 'Most common electrolyte disturbance causing bradycardia post-CPB?',
    options: [
      'Hypokalemia',
      'Hyperkalemia',
      'Hypomagnesemia',
      'Hyponatremia',
      'Hypocalcemia'
    ],
    correctAnswerIndex: 1,
    explanation: 'Hyperkalemia depresses conduction → bradycardia.',
    category: 'Anesthesia for Cardiovascular Surgery',
    difficulty: 2
  ),
  Question(
    id: 'anesthesia_cardiovascular_surgery_034',
    question: 'Most critical criterion before extubation post-CPB?',
    options: [
      'Hematocrit level',
      'Arterial pressure',
      'Adequate spontaneous breathing',
      'Sinus rhythm',
      'Body temperature'
    ],
    correctAnswerIndex: 2,
    explanation: 'Extubation depends primarily on adequate spontaneous respiration.',
    category: 'Anesthesia for Cardiovascular Surgery',
    difficulty: 2
  ),
  Question(
    id: 'anesthesia_cardiovascular_surgery_035',
    question: 'If PCWP is elevated during CPB, what does it indicate?',
    options: [
      'RV dysfunction',
      'LV dysfunction',
      'Hypovolemia',
      'Pulmonary embolism',
      'Sepsis'
    ],
    correctAnswerIndex: 1,
    explanation: 'High PCWP = elevated LV filling pressure → LV dysfunction.',
    category: 'Anesthesia for Cardiovascular Surgery',
    difficulty: 2
  ),
  Question(
    id: 'anesthesia_cardiovascular_surgery_036',
    question: 'Strategy to minimize protamine reaction risk?',
    options: [
      'Slow infusion',
      'Glucocorticoid premedication',
      'Antihistamines',
      'High-dose saline',
      'Give with vasopressors'
    ],
    correctAnswerIndex: 0,
    explanation: 'Slow infusion reduces risk of hypotension/anaphylaxis.',
    category: 'Anesthesia for Cardiovascular Surgery',
    difficulty: 2
  ),
  Question(
    id: 'anesthesia_cardiovascular_surgery_037',
    question: 'Which is the latest complication after CPB?',
    options: [
      'Arrhythmia',
      'Reperfusion injury',
      'Mediastinitis',
      'Hypothermia',
      'Hypotension'
    ],
    correctAnswerIndex: 2,
    explanation: 'Mediastinitis develops postop day 4–10.',
    category: 'Anesthesia for Cardiovascular Surgery',
    difficulty: 2
  ),
  Question(
    id: 'anesthesia_cardiovascular_surgery_038',
    question: 'Best myocardial protection strategy during CPB?',
    options: [
      'Induce hyperkalemia',
      'Warm blood transfusion',
      'Cardioplegia',
      'Infuse adrenaline',
      'Hyperventilation'
    ],
    correctAnswerIndex: 2,
    explanation: 'Cardioplegia arrests and cools heart → ↓ O₂ demand.',
    category: 'Anesthesia for Cardiovascular Surgery',
    difficulty: 2
  ),
  Question(
    id: 'anesthesia_cardiovascular_surgery_039',
    question: 'Elevated serum lactate after CPB indicates?',
    options: [
      'Hyperventilation',
      'Hypoventilation',
      'Low tissue perfusion',
      'Metabolic alkalosis',
      'Fluid overload'
    ],
    correctAnswerIndex: 2,
    explanation: 'Lactate rise = anaerobic metabolism → hypoperfusion.',
    category: 'Anesthesia for Cardiovascular Surgery',
    difficulty: 2
  ),
  Question(
    id: 'anesthesia_cardiovascular_surgery_040',
    question: 'Most likely cause of hypotension post-CPB?',
    options: [
      'Hyperkalemia',
      'Hypoglycemia',
      'Vasodilation & ↓ SVR',
      'Hypervolemia',
      'Hypernatremia'
    ],
    correctAnswerIndex: 2,
    explanation: 'NO-mediated vasodilation → ↓ SVR → hypotension.',
    category: 'Anesthesia for Cardiovascular Surgery',
    difficulty: 2
  ),
  Question(
    id: 'anesthesia_cardiovascular_surgery_041',
    question: 'Most common hematological complication post-CPB?',
    options: [
      'Thrombocytopenia',
      'Erythrocytosis',
      'Polycythemia',
      'Hypofibrinogenemia',
      'Hypercoagulability'
    ],
    correctAnswerIndex: 0,
    explanation: 'Thrombocytopenia common due to heparin, hemodilution.',
    category: 'Anesthesia for Cardiovascular Surgery',
    difficulty: 2
  ),
  Question(
    id: 'anesthesia_cardiovascular_surgery_042',
    question: 'When is methylene blue indicated?',
    options: [
      'Hypercapnia',
      'Hypokalemia',
      'Refractory vasodilation (vasoplegia)',
      'Hyperglycemia',
      'Anemia'
    ],
    correctAnswerIndex: 2,
    explanation: 'Methylene blue treats NO-mediated refractory hypotension.',
    category: 'Anesthesia for Cardiovascular Surgery',
    difficulty: 2
  ),
  Question(
    id: 'anesthesia_cardiovascular_surgery_043',
    question: 'What type of pump is most commonly used in CPB?',
    options: [
      'Peristaltic',
      'Centrifugal',
      'Pneumatic',
      'Piston',
      'Laminar flow'
    ],
    correctAnswerIndex: 1,
    explanation: 'Centrifugal pumps → less hemolysis & embolism.',
    category: 'Anesthesia for Cardiovascular Surgery',
    difficulty: 2
  ),
  Question(
    id: 'anesthesia_cardiovascular_surgery_044',
    question: 'Most frequent complication during CPB?',
    options: [
      'Thrombosis',
      'Hyperthermia',
      'Hemolysis',
      'Hypercalcemia',
      'Hyperglycemia'
    ],
    correctAnswerIndex: 2,
    explanation: 'Blood–surface contact → hemolysis.',
    category: 'Anesthesia for Cardiovascular Surgery',
    difficulty: 2
  ),
  Question(
    id: 'anesthesia_cardiovascular_surgery_045',
    question: 'Most critical parameter when discontinuing CPB and restarting circulation?',
    options: [
      'Body temperature',
      'Oxygen saturation',
      'Blood glucose',
      'SVR',
      'Heart rhythm'
    ],
    correctAnswerIndex: 4,
    explanation: 'Must confirm rhythmic & effective cardiac function.',
    category: 'Anesthesia for Cardiovascular Surgery',
    difficulty: 2
  ),
  Question(
    id: 'anesthesia_cardiovascular_surgery_046',
    question: 'Below what hematocrit level does oxygen delivery become inadequate in CPB?',
    options: [
      '40%',
      '35%',
      '30%',
      '25%',
      '20%'
    ],
    correctAnswerIndex: 3,
    explanation: 'Hct <25% → inadequate oxygen transport.',
    category: 'Anesthesia for Cardiovascular Surgery',
    difficulty: 2
  ),
  Question(
    id: 'anesthesia_cardiovascular_surgery_047',
    question: 'Most common arrhythmia after cardiac surgery?',
    options: [
      'VT',
      'VF',
      'AF',
      'AV block',
      'Sinus bradycardia'
    ],
    correctAnswerIndex: 2,
    explanation: 'AF is most common, especially in first 48 hrs.',
    category: 'Anesthesia for Cardiovascular Surgery',
    difficulty: 2
  ),
  Question(
    id: 'anesthesia_cardiovascular_surgery_048',
    question: 'Which is NOT included in CPB prime solution?',
    options: [
      'Crystalloids',
      'Mannitol',
      'Heparin',
      'Isotonic glucose',
      'Dopamine'
    ],
    correctAnswerIndex: 4,
    explanation: 'Prime contains crystalloids, heparin, mannitol—not dopamine.',
    category: 'Anesthesia for Cardiovascular Surgery',
    difficulty: 2
  ),
  Question(
    id: 'anesthesia_cardiovascular_surgery_049',
    question: 'Most likely side effect of hypothermia during CPB?',
    options: [
      'Hypercalcemia',
      'Coagulopathy',
      'Hyperglycemia',
      'Arrhythmia',
      'Hypotension'
    ],
    correctAnswerIndex: 1,
    explanation: 'Hypothermia impairs coagulation → coagulopathy.',
    category: 'Anesthesia for Cardiovascular Surgery',
    difficulty: 2
  ),
  Question(
    id: 'anesthesia_cardiovascular_surgery_050',
    question: 'What is the target body temperature during rewarming before CPB termination?',
    options: [
      '30°C',
      '32°C',
      '34°C',
      '36°C',
      '38°C'
    ],
    correctAnswerIndex: 3,
    explanation: 'Before CPB termination, the patient\'s body temperature should be raised to approximately 36°C.',
    category: 'Anesthesia for Cardiovascular Surgery',
    difficulty: 2
  ),
  Question(
    id: 'anesthesia_cardiovascular_surgery_051',
    question: 'What is the most common cause of delayed awakening after CPB?',
    options: [
      'Residual hypnotic drugs',
      'Hypothermia',
      'Hyperglycemia',
      'Arrhythmia',
      'Anemia'
    ],
    correctAnswerIndex: 1,
    explanation: 'Hypothermia slows metabolism and can lead to delayed awakening.',
    category: 'Anesthesia for Cardiovascular Surgery',
    difficulty: 2
  ),
  Question(
    id: 'anesthesia_cardiovascular_surgery_052',
    question: 'What is the most common respiratory complication after cardiac surgery?',
    options: [
      'Bronchospasm',
      'Pulmonary embolism',
      'Atelectasis',
      'Pneumothorax',
      'ARDS'
    ],
    correctAnswerIndex: 2,
    explanation: 'Atelectasis is the most frequent pulmonary complication after CPB.',
    category: 'Anesthesia for Cardiovascular Surgery',
    difficulty: 2
  ),
  Question(
    id: 'anesthesia_cardiovascular_surgery_053',
    question: 'What is the most commonly used analgesic after cardiac surgery?',
    options: [
      'Paracetamol',
      'Morphine',
      'Ketamine',
      'Lidocaine',
      'Tramadol'
    ],
    correctAnswerIndex: 1,
    explanation: 'Morphine is frequently used due to its strong analgesic effect.',
    category: 'Anesthesia for Cardiovascular Surgery',
    difficulty: 2
  ),
  Question(
    id: 'anesthesia_cardiovascular_surgery_054',
    question: 'What is the most significant complication of intraoperative hypothermia during cardiovascular surgery?',
    options: [
      'Hypoglycemia',
      'Coagulopathy',
      'Bradycardia',
      'Hypertension',
      'Hypercapnia'
    ],
    correctAnswerIndex: 1,
    explanation: 'Hypothermia inhibits clotting factors and increases the risk of bleeding.',
    category: 'Anesthesia for Cardiovascular Surgery',
    difficulty: 2
  ),
  Question(
    id: 'anesthesia_cardiovascular_surgery_055',
    question: 'Which monitoring tool used in cardiac surgery directly measures cardiac output?',
    options: [
      'ECG',
      'Pulse oximetry',
      'Arterial pressure monitoring',
      'Swan-Ganz catheter',
      'NIBP monitor'
    ],
    correctAnswerIndex: 3,
    explanation: 'Swan-Ganz catheter measures CO directly via the thermodilution method.',
    category: 'Anesthesia for Cardiovascular Surgery',
    difficulty: 2
  ),
  Question(
    id: 'anesthesia_cardiovascular_surgery_056',
    question: 'CPB-related "pump head" syndrome is characterized by which condition?',
    options: [
      'Hypotension',
      'Neurocognitive dysfunction',
      'Arterial thrombosis',
      'Hyperthermia',
      'Sinus bradycardia'
    ],
    correctAnswerIndex: 1,
    explanation: '"Pump head" refers to temporary or permanent cognitive impairment after CPB.',
    category: 'Anesthesia for Cardiovascular Surgery',
    difficulty: 2
  ),
  Question(
    id: 'anesthesia_cardiovascular_surgery_057',
    question: 'What is the most common initial rhythm of the first spontaneous heartbeat after CPB?',
    options: [
      'Sinus rhythm',
      'Ventricular tachycardia',
      'Atrial fibrillation',
      'Ventricular fibrillation',
      'AV block'
    ],
    correctAnswerIndex: 3,
    explanation: 'When the heart restarts, it often enters ventricular fibrillation, requiring defibrillation.',
    category: 'Anesthesia for Cardiovascular Surgery',
    difficulty: 2
  ),
  Question(
    id: 'anesthesia_cardiovascular_surgery_058',
    question: 'What is intraoperative TEE most useful for evaluating during cardiac surgery?',
    options: [
      'Electrolyte balance',
      'Liver perfusion',
      'Left ventricular function',
      'Intraoperative blood loss',
      'CPB pressure'
    ],
    correctAnswerIndex: 2,
    explanation: 'TEE is most useful for assessing left ventricular function and valvular structures.',
    category: 'Anesthesia for Cardiovascular Surgery',
    difficulty: 2
  ),
  Question(
    id: 'anesthesia_cardiovascular_surgery_059',
    question: 'Which measure is least effective in reducing systemic inflammation during CPB?',
    options: [
      'Ultrafiltration',
      'Steroids',
      'Heparin-coated circuits',
      'Hypothermia',
      'IL-6 inhibitors'
    ],
    correctAnswerIndex: 3,
    explanation: 'Hypothermia does not reduce inflammation and may actually increase certain inflammatory processes.',
    category: 'Anesthesia for Cardiovascular Surgery',
    difficulty: 2
  ),
  Question(
    id: 'anesthesia_cardiovascular_surgery_060',
    question: 'What is the first-line agent for treating low cardiac output syndrome (LCOS) after CPB?',
    options: [
      'Dopamine',
      'Dobutamine',
      'Adrenaline',
      'Noradrenaline',
      'Furosemide'
    ],
    correctAnswerIndex: 1,
    explanation: 'Dobutamine is the preferred positive inotrope to restore cardiac output.',
    category: 'Anesthesia for Cardiovascular Surgery',
    difficulty: 2
  ),
  Question(
    id: 'anesthesia_cardiovascular_surgery_061',
    question: 'During blood transfusion after CPB, which parameter requires the most attention?',
    options: [
      'Blood glucose',
      'Calcium level',
      'Magnesium level',
      'Creatinine',
      'Potassium'
    ],
    correctAnswerIndex: 1,
    explanation: 'Citrated blood products bind calcium → risk of hypocalcemia.',
    category: 'Anesthesia for Cardiovascular Surgery',
    difficulty: 2
  ),
  Question(
    id: 'anesthesia_cardiovascular_surgery_062',
    question: 'What is the most common postoperative neurological complication after cardiac surgery?',
    options: [
      'Epileptic seizure',
      'Delirium',
      'Ischemic stroke',
      'Subarachnoid hemorrhage',
      'PRES'
    ],
    correctAnswerIndex: 1,
    explanation: 'Delirium is particularly common in elderly patients after CPB.',
    category: 'Anesthesia for Cardiovascular Surgery',
    difficulty: 2
  ),
  Question(
    id: 'anesthesia_cardiovascular_surgery_063',
    question: 'What is the most important factor directly affecting pulmonary artery pressure during CPB?',
    options: [
      'CVP',
      'Left atrial pressure',
      'Pulmonary vascular resistance (PVR)',
      'Cardiac output',
      'Hematocrit'
    ],
    correctAnswerIndex: 2,
    explanation: 'PVR is the key determinant of pulmonary artery pressure.',
    category: 'Anesthesia for Cardiovascular Surgery',
    difficulty: 2
  ),
  Question(
    id: 'anesthesia_cardiovascular_surgery_064',
    question: 'What is the minimum target temperature during CPB hypothermia?',
    options: [
      '28°C',
      '25°C',
      '30°C',
      '34°C',
      '36°C'
    ],
    correctAnswerIndex: 0,
    explanation: 'Moderate hypothermia at ~28°C provides myocardial protection.',
    category: 'Anesthesia for Cardiovascular Surgery',
    difficulty: 2
  ),
  Question(
    id: 'anesthesia_cardiovascular_surgery_065',
    question: 'During weaning from CPB, what is the first parameter that must be assessed?',
    options: [
      'Potassium',
      'Heart rhythm and output',
      'Body temperature',
      'Hematocrit',
      'Blood glucose'
    ],
    correctAnswerIndex: 1,
    explanation: 'The heart\'s ability to maintain adequate rhythm and output is most critical.',
    category: 'Anesthesia for Cardiovascular Surgery',
    difficulty: 2
  ),
  Question(
    id: 'anesthesia_cardiovascular_surgery_066',
    question: 'What is the most likely cause of pulmonary hypertension after CPB?',
    options: [
      'Hypothermia',
      'Pulmonary embolism',
      'Microthrombi',
      'Left ventricular dysfunction',
      'High-dose diuretics'
    ],
    correctAnswerIndex: 3,
    explanation: 'LV dysfunction leads to pulmonary congestion and secondary PH.',
    category: 'Anesthesia for Cardiovascular Surgery',
    difficulty: 2
  ),
  Question(
    id: 'anesthesia_cardiovascular_surgery_067',
    question: 'The intra-aortic balloon pump (IABP) used in cardiac surgery is primarily for supporting which function?',
    options: [
      'Postoperative analgesia',
      'Oxygen transport',
      'Cardiac output',
      'Neurological function',
      'Renal perfusion'
    ],
    correctAnswerIndex: 2,
    explanation: 'IABP reduces afterload and increases coronary perfusion, supporting CO.',
    category: 'Anesthesia for Cardiovascular Surgery',
    difficulty: 2
  ),
  Question(
    id: 'anesthesia_cardiovascular_surgery_068',
    question: 'What is the most common type of infection after cardiac surgery?',
    options: [
      'UTI',
      'Mediastinitis',
      'Catheter-related bacteremia',
      'Pneumonia',
      'Wound infection'
    ],
    correctAnswerIndex: 3,
    explanation: 'Pneumonia is most frequent due to mechanical ventilation, CPB, and immune suppression.',
    category: 'Anesthesia for Cardiovascular Surgery',
    difficulty: 2
  ),
  Question(
    id: 'anesthesia_cardiovascular_surgery_069',
    question: 'Which complication is most likely with hypomagnesemia after CPB?',
    options: [
      'Sinus tachycardia',
      'Ventricular arrhythmia',
      'Atrial fibrillation',
      'AV block',
      'Bradycardia'
    ],
    correctAnswerIndex: 1,
    explanation: 'Hypomagnesemia predisposes to ventricular arrhythmias.',
    category: 'Anesthesia for Cardiovascular Surgery',
    difficulty: 2
  ),
  Question(
    id: 'anesthesia_cardiovascular_surgery_070',
    question: 'What is the most common electrolyte disorder after CPB?',
    options: [
      'Hyperkalemia',
      'Hyponatremia',
      'Hypocalcemia',
      'Hypomagnesemia',
      'Hypophosphatemia'
    ],
    correctAnswerIndex: 2,
    explanation: 'Hypocalcemia is most common due to citrate in blood products, hemodilution, and parathyroid dysfunction.',
    category: 'Anesthesia for Cardiovascular Surgery',
    difficulty: 2
  ),
  Question(
    id: 'anesthesia_cardiovascular_surgery_071',
    question: 'What is the most likely cause of heparin resistance during cardiopulmonary bypass (CPB)?',
    options: [
      'Low antithrombin III levels',
      'High fibrinogen levels',
      'Thrombocytopenia',
      'Hyperkalemia',
      'Hypocalcemia'
    ],
    correctAnswerIndex: 0,
    explanation: 'Heparin exerts its anticoagulant effect through antithrombin III (AT-III). It forms a complex with AT-III, accelerating the inactivation of thrombin and factor Xa.',
    category: 'Anesthesia for Cardiovascular Surgery',
    difficulty: 2
  ),
  Question(
    id: 'anesthesia_cardiovascular_surgery_072',
    question: 'Discontinuation of which drug before coronary artery bypass grafting (CABG) surgery increases the risk of perioperative coronary spasm the most?',
    options: [
      'Metoprolol',
      'Clopidogrel',
      'Nitrates',
      'Diltiazem',
      'Statins'
    ],
    correctAnswerIndex: 2,
    explanation: 'Abrupt withdrawal of nitrates, especially in patients with coronary artery disease, significantly increases the risk of perioperative coronary spasm.',
    category: 'Anesthesia for Cardiovascular Surgery',
    difficulty: 2
  ),
  Question(
    id: 'anesthesia_cardiovascular_surgery_073',
    question: 'What is the most important goal during anesthetic induction in a patient with aortic dissection?',
    options: [
      'Rapid intubation',
      'Deep neuromuscular blockade',
      'Hemodynamic stabilization (avoid uncontrolled hypertension)',
      'High tidal volume ventilation',
      'Rapid fluid resuscitation'
    ],
    correctAnswerIndex: 2,
    explanation: 'During induction, the key objective is hemodynamic stability — avoiding uncontrolled hypertension and tachycardia.',
    category: 'Anesthesia for Cardiovascular Surgery',
    difficulty: 2
  ),
  Question(
    id: 'anesthesia_cardiovascular_surgery_074',
    question: 'What is the most important marker of severe systemic inflammatory response after CPB?',
    options: [
      'Leukopenia',
      'Elevated CRP',
      'Complement activation',
      'Hyperglycemia',
      'Hypernatremia'
    ],
    correctAnswerIndex: 2,
    explanation: 'Complement activation is the earliest and most important marker of systemic inflammatory response after CPB.',
    category: 'Anesthesia for Cardiovascular Surgery',
    difficulty: 2
  ),
  Question(
    id: 'anesthesia_cardiovascular_surgery_075',
    question: 'What is the most important principle in anesthetic management of a patient with aortic stenosis?',
    options: [
      'Maintaining rapid heart rate',
      'Decreasing systemic vascular resistance',
      'Preserving normovolemia and sinus rhythm',
      'High tidal volume ventilation',
      'Providing deep anesthesia'
    ],
    correctAnswerIndex: 2,
    explanation: 'In aortic stenosis, maintaining normovolemia and normal sinus rhythm is critical for adequate filling and perfusion of the left ventricle.',
    category: 'Anesthesia for Cardiovascular Surgery',
    difficulty: 2
  ),
  Question(
    id: 'anesthesia_cardiovascular_surgery_076',
    question: 'Which complication must be most avoided in a patient with mitral stenosis during the perioperative period?',
    options: [
      'Bradycardia',
      'Tachycardia',
      'Hypervolemia',
      'Hypoxia',
      'Hypercapnia'
    ],
    correctAnswerIndex: 1,
    explanation: 'Tachycardia reduces left ventricular filling time, leading to pulmonary congestion and heart failure.',
    category: 'Anesthesia for Cardiovascular Surgery',
    difficulty: 2
  ),
  Question(
    id: 'anesthesia_cardiovascular_surgery_077',
    question: 'During CPB, reduced pulmonary venous return leads to which condition?',
    options: [
      'Systemic hypotension',
      'Pulmonary hypertension',
      'Left ventricular distension',
      'Right ventricular failure',
      'Aortic regurgitation'
    ],
    correctAnswerIndex: 2,
    explanation: 'Decreased pulmonary venous return prevents the left ventricle from emptying, causing distension — a serious complication requiring urgent management.',
    category: 'Anesthesia for Cardiovascular Surgery',
    difficulty: 2
  ),
  Question(
    id: 'anesthesia_cardiovascular_surgery_078',
    question: 'What is the most commonly used method for spinal cord protection during aortic surgery?',
    options: [
      'High-dose heparin',
      'Distal aortic perfusion + hypothermia',
      'Deep hypothermia alone',
      'High-dose steroids',
      'Hyperbaric oxygen therapy'
    ],
    correctAnswerIndex: 1,
    explanation: 'The most effective strategy is distal aortic perfusion combined with hypothermia to extend ischemic tolerance.',
    category: 'Anesthesia for Cardiovascular Surgery',
    difficulty: 2
  ),
  Question(
    id: 'anesthesia_cardiovascular_surgery_079',
    question: 'Which of the following is NOT a feature of postperfusion syndrome after CPB?',
    options: [
      'Decreased lung compliance',
      'Increased systemic vascular resistance',
      'Neurological dysfunction',
      'Renal failure',
      'Coagulopathy'
    ],
    correctAnswerIndex: 1,
    explanation: 'Postperfusion syndrome is characterized by vasodilation and inflammation, not increased systemic vascular resistance.',
    category: 'Anesthesia for Cardiovascular Surgery',
    difficulty: 2
  ),
  Question(
    id: 'anesthesia_cardiovascular_surgery_080',
    question: 'Which condition should be avoided during anesthetic induction in aortic regurgitation?',
    options: [
      'Bradycardia',
      'Increased systemic vascular resistance',
      'Rapid heart rate',
      'High tidal volume',
      'Deep anesthesia'
    ],
    correctAnswerIndex: 0,
    explanation: 'Bradycardia prolongs diastole, increasing regurgitant volume and left ventricular overload.',
    category: 'Anesthesia for Cardiovascular Surgery',
    difficulty: 2
  ),
  Question(
    id: 'anesthesia_cardiovascular_surgery_081',
    question: 'What is the main disadvantage of non-pulsatile flow during CPB?',
    options: [
      'Impaired renal perfusion',
      'Cerebral hypoxia',
      'Myocardial ischemia',
      'Pulmonary edema',
      'Coagulopathy'
    ],
    correctAnswerIndex: 0,
    explanation: 'The most significant drawback is impaired renal perfusion.',
    category: 'Anesthesia for Cardiovascular Surgery',
    difficulty: 2
  ),
  Question(
    id: 'anesthesia_cardiovascular_surgery_082',
    question: 'In which situation is transesophageal echocardiography (TEE) most useful during cardiac surgery?',
    options: [
      'Detection of air embolism',
      'Blood glucose monitoring',
      'Liver perfusion assessment',
      'Renal blood flow measurement',
      'Neuromonitoring'
    ],
    correctAnswerIndex: 0,
    explanation: 'TEE is highly sensitive for detecting life-threatening complications like air embolism.',
    category: 'Anesthesia for Cardiovascular Surgery',
    difficulty: 2
  ),
  Question(
    id: 'anesthesia_cardiovascular_surgery_083',
    question: 'What is the ideal distal perfusion pressure for spinal cord protection during aortic surgery?',
    options: [
      '20–30 mmHg',
      '40–60 mmHg',
      '70–90 mmHg',
      '100–120 mmHg',
      '>120 mmHg'
    ],
    correctAnswerIndex: 1,
    explanation: 'Distal perfusion pressure should be maintained between 40–60 mmHg.',
    category: 'Anesthesia for Cardiovascular Surgery',
    difficulty: 2
  ),
  Question(
    id: 'anesthesia_cardiovascular_surgery_084',
    question: 'Which of the following is NOT part of the classic Beck\'s triad in cardiac tamponade?',
    options: [
      'Jugular venous distension',
      'Hypotension',
      'Tachycardia',
      'Muffled heart sounds',
      'Pulsus paradoxus'
    ],
    correctAnswerIndex: 2,
    explanation: 'Beck\'s triad: hypotension, jugular venous distension, muffled heart sounds.',
    category: 'Anesthesia for Cardiovascular Surgery',
    difficulty: 2
  ),
  Question(
    id: 'anesthesia_cardiovascular_surgery_085',
    question: 'Which lab test is used to diagnose heparin resistance during CPB?',
    options: [
      'ACT (Activated Clotting Time)',
      'INR',
      'aPTT',
      'Blood glucose',
      'Serum creatinine'
    ],
    correctAnswerIndex: 0,
    explanation: 'Failure to reach ACT >400–480 sec after standard heparin dosing indicates heparin resistance.',
    category: 'Anesthesia for Cardiovascular Surgery',
    difficulty: 2
  ),
  Question(
    id: 'anesthesia_cardiovascular_surgery_086',
    question: 'Which condition must be most avoided perioperatively in aortic regurgitation?',
    options: [
      'Rapid heart rate',
      'Decreased systemic vascular resistance',
      'Bradycardia',
      'Hypervolemia',
      'Hypocapnia'
    ],
    correctAnswerIndex: 2,
    explanation: 'Bradycardia prolongs diastole, worsening regurgitation and ventricular overload.',
    category: 'Anesthesia for Cardiovascular Surgery',
    difficulty: 2
  ),
  Question(
    id: 'anesthesia_cardiovascular_surgery_087',
    question: 'A patient scheduled for aortic valve replacement has pre-op EF of 30%. What is the most appropriate anesthetic management?',
    options: [
      'High-dose opioid-based anesthesia',
      'Deep anesthesia with volatile agents',
      'Spinal anesthesia',
      'Nitrous oxide use',
      'Hypertensive management targets'
    ],
    correctAnswerIndex: 0,
    explanation: 'Opioid-based anesthesia provides hemodynamic stability without myocardial depression.',
    category: 'Anesthesia for Cardiovascular Surgery',
    difficulty: 2
  ),
  Question(
    id: 'anesthesia_cardiovascular_surgery_088',
    question: 'Which is NOT a classic sign of cardiac tamponade?',
    options: [
      'Pulsus paradoxus',
      'Jugular venous distension',
      'Clear lung fields',
      'Systolic murmur',
      'Hypoxemia'
    ],
    correctAnswerIndex: 3,
    explanation: 'Classic findings: pulsus paradoxus, JVD, hypotension, muffled heart sounds, clear lungs, hypoxemia, equalized diastolic pressures.',
    category: 'Anesthesia for Cardiovascular Surgery',
    difficulty: 2
  ),
  Question(
    id: 'anesthesia_cardiovascular_surgery_089',
    question: 'What is the first-line treatment for severe pulmonary hypertension and right heart failure after mitral valve replacement?',
    options: [
      'Inotropes (Dobutamine)',
      'Pulmonary vasodilators (NO)',
      'Diuretics',
      'Beta blockers',
      'Calcium channel blockers'
    ],
    correctAnswerIndex: 1,
    explanation: 'Inhaled NO or other pulmonary vasodilators are first-line in this setting.',
    category: 'Anesthesia for Cardiovascular Surgery',
    difficulty: 2
  ),
  Question(
    id: 'anesthesia_cardiovascular_surgery_090',
    question: 'What is the main anesthetic goal during induction in emergency surgery for aortic dissection?',
    options: [
      'Rapid intubation',
      'Deep anesthesia',
      'Hemodynamic stability',
      'Muscle relaxants',
      'Avoid hypertension'
    ],
    correctAnswerIndex: 2,
    explanation: 'Hemodynamic stability with avoidance of pressure and rate fluctuations is key.',
    category: 'Anesthesia for Cardiovascular Surgery',
    difficulty: 2
  ),
  Question(
    id: 'anesthesia_cardiovascular_surgery_091',
    question: 'What is the main pathophysiological mechanism of "pump lung" after CPB?',
    options: [
      'Pulmonary embolism',
      'Neurogenic pulmonary edema',
      'Systemic inflammatory response',
      'Volume overload',
      'Atelectasis'
    ],
    correctAnswerIndex: 2,
    explanation: 'CPB triggers SIRS via complement, cytokines, neutrophils → increased capillary permeability and lung dysfunction.',
    category: 'Anesthesia for Cardiovascular Surgery',
    difficulty: 2
  ),
  Question(
    id: 'anesthesia_cardiovascular_surgery_092',
    question: 'What is the most important indication for shunt placement during carotid endarterectomy?',
    options: [
      'Contralateral carotid stenosis',
      'Intraoperative EEG changes',
      'Patient awake',
      'Prolonged surgery',
      'Hypertension'
    ],
    correctAnswerIndex: 1,
    explanation: 'EEG changes suggest cerebral ischemia → shunt required.',
    category: 'Anesthesia for Cardiovascular Surgery',
    difficulty: 2
  ),
  Question(
    id: 'anesthesia_cardiovascular_surgery_093',
    question: 'What is the most sensitive indicator of perioperative myocardial ischemia?',
    options: [
      'ST-segment depression',
      'Tachycardia',
      'Hypoxemia',
      'Hypertension',
      'Atrial fibrillation'
    ],
    correctAnswerIndex: 0,
    explanation: 'ST depression (>0.5 mm) is the earliest and most sensitive ischemic sign.',
    category: 'Anesthesia for Cardiovascular Surgery',
    difficulty: 2
  ),
  Question(
    id: 'anesthesia_cardiovascular_surgery_094',
    question: 'Which TEE finding indicates right ventricular dysfunction?',
    options: [
      'Septal paradoxical motion',
      'Mitral valve prolapse',
      'LV hypertrophy',
      'Aortic plaque',
      'ASD'
    ],
    correctAnswerIndex: 0,
    explanation: 'Paradoxical septal motion is a hallmark of RV dysfunction.',
    category: 'Anesthesia for Cardiovascular Surgery',
    difficulty: 2
  ),
  Question(
    id: 'anesthesia_cardiovascular_surgery_095',
    question: 'What is the most common arrhythmia after cardiac surgery?',
    options: [
      'Ventricular tachycardia',
      'Atrial fibrillation',
      'AV block',
      'Sinus bradycardia',
      'WPW'
    ],
    correctAnswerIndex: 1,
    explanation: 'Atrial fibrillation is the most frequent arrhythmia post-op.',
    category: 'Anesthesia for Cardiovascular Surgery',
    difficulty: 2
  ),
  Question(
    id: 'anesthesia_cardiovascular_surgery_096',
    question: 'Which is contraindicated in anesthetic management of aortic stenosis?',
    options: [
      'Rapid fluid loading',
      'Beta-blocker use',
      'Volatile anesthetics',
      'Vasodilator therapy',
      'Epidural anesthesia'
    ],
    correctAnswerIndex: 3,
    explanation: 'Vasodilators reduce SVR → critical perfusion drop in AS.',
    category: 'Anesthesia for Cardiovascular Surgery',
    difficulty: 2
  ),
  Question(
    id: 'anesthesia_cardiovascular_surgery_097',
    question: 'What is the most common neurological complication during CPB?',
    options: [
      'Stroke',
      'Delirium',
      'Peripheral neuropathy',
      'Retinal ischemia',
      'Cognitive dysfunction'
    ],
    correctAnswerIndex: 4,
    explanation: 'Postoperative cognitive dysfunction (POCD) is the most frequent neurological issue after CPB.',
    category: 'Anesthesia for Cardiovascular Surgery',
    difficulty: 2
  ),
  Question(
    id: 'anesthesia_cardiovascular_surgery_098',
    question: 'Which of the following is NOT a mechanical circulatory support device used in cardiogenic shock?',
    options: [
      'IABP',
      'ECMO',
      'LVAD',
      'CRRT',
      'Impella'
    ],
    correctAnswerIndex: 3,
    explanation: 'IABP, ECMO, LVAD, and Impella are MCS devices; CRRT is a renal replacement therapy, not cardiac support.',
    category: 'Anesthesia for Cardiovascular Surgery',
    difficulty: 2
  ),
];
