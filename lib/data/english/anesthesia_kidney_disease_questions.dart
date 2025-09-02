import '../../models/question.dart';

List<Question> anesthesiaKidneyDiseaseQuestions = [
  Question(
    id: 'anesthesia_kidney_disease_001',
    question: 'What is the most common type of anemia in patients with chronic kidney disease (CKD)?',
    options: [
      'Microcytic, hypochromic anemia',
      'Macrocytic anemia',
      'Normocytic, normochromic anemia',
      'Hemolytic anemia',
      'Megaloblastic anemia'
    ],
    correctAnswerIndex: 2,
    explanation: 'Erythropoietin deficiency in CKD causes normocytic normochromic anemia.',
    category: 'Anesthesia for Patients with Kidney Disease',
    difficulty: 2
  ),
  Question(
    id: 'anesthesia_kidney_disease_002',
    question: 'If anesthesia is to be administered to a patient with CKD, which opioid is the safest choice?',
    options: [
      'Morphine',
      'Meperidine',
      'Codeine',
      'Fentanyl',
      'Hydromorphone'
    ],
    correctAnswerIndex: 3,
    explanation: 'Fentanyl is hepatically metabolized, has minimal renal elimination, and thus carries a low risk of accumulation.',
    category: 'Anesthesia for Patients with Kidney Disease',
    difficulty: 2
  ),
  Question(
    id: 'anesthesia_kidney_disease_003',
    question: 'Which agent may cause neurotoxicity when used in CKD patients?',
    options: [
      'Propofol',
      'Meperidine',
      'Ketamine',
      'Dexmedetomidine',
      'Fentanyl'
    ],
    correctAnswerIndex: 1,
    explanation: 'Normeperidine, the metabolite of meperidine, accumulates in renal failure and carries a seizure risk.',
    category: 'Anesthesia for Patients with Kidney Disease',
    difficulty: 2
  ),
  Question(
    id: 'anesthesia_kidney_disease_004',
    question: 'In a patient with a history of peritoneal dialysis undergoing laparoscopic surgery, which factor requires special attention?',
    options: [
      'Pneumoperitoneum pressure',
      'Respiratory rate',
      'Type of laparotomy incision',
      'Oxygen saturation',
      'FiO₂ level'
    ],
    correctAnswerIndex: 0,
    explanation: 'Due to peritoneal adhesions and existing catheters, intra-abdominal pressure must be carefully controlled.',
    category: 'Anesthesia for Patients with Kidney Disease',
    difficulty: 2
  ),
  Question(
    id: 'anesthesia_kidney_disease_005',
    question: 'Which is more commonly seen intraoperatively in patients with CKD?',
    options: [
      'Hypercapnia',
      'Hypoglycemia',
      'Metabolic acidosis',
      'Hypothermia',
      'Respiratory alkalosis'
    ],
    correctAnswerIndex: 2,
    explanation: 'In CKD, impaired acid excretion leads to metabolic acidosis.',
    category: 'Anesthesia for Patients with Kidney Disease',
    difficulty: 2
  ),
  Question(
    id: 'anesthesia_kidney_disease_006',
    question: 'After renal transplantation, which drug group is most frequently used and poses interaction risks with anesthetic agents?',
    options: [
      'Statins',
      'Calcineurin inhibitors',
      'ACE inhibitors',
      'Beta blockers',
      'Anticoagulants'
    ],
    correctAnswerIndex: 1,
    explanation: 'Calcineurin inhibitors (e.g., tacrolimus, cyclosporine) are widely used immunosuppressants and interact with many anesthetics, especially neuromuscular blockers.',
    category: 'Anesthesia for Patients with Kidney Disease',
    difficulty: 2
  ),
  Question(
    id: 'anesthesia_kidney_disease_007',
    question: 'Which inhalation agent is most suitable in CKD patients in terms of renal safety profile?',
    options: [
      'Halothane',
      'Isoflurane',
      'Sevoflurane',
      'Desflurane',
      'Methoxyflurane'
    ],
    correctAnswerIndex: 3,
    explanation: 'Desflurane undergoes minimal metabolism, produces no fluoride ions, and is among the safest for the kidneys.',
    category: 'Anesthesia for Patients with Kidney Disease',
    difficulty: 2
  ),
  Question(
    id: 'anesthesia_kidney_disease_008',
    question: 'In intravenous fluid therapy for CKD patients, which solution should be used cautiously due to hyperkalemia risk?',
    options: [
      'Isotonic saline (0.9% NaCl)',
      'D5W',
      'Ringer\'s lactate',
      'Sodium bicarbonate',
      'Hypotonic saline'
    ],
    correctAnswerIndex: 2,
    explanation: 'Ringer\'s lactate contains ~4 mEq/L of potassium, which may worsen hyperkalemia.',
    category: 'Anesthesia for Patients with Kidney Disease',
    difficulty: 2
  ),
  Question(
    id: 'anesthesia_kidney_disease_009',
    question: 'What is the most common cardiovascular complication in CKD patients?',
    options: [
      'Pericarditis',
      'Arrhythmia',
      'Hypotension',
      'Left ventricular hypertrophy',
      'Myocardial infarction'
    ],
    correctAnswerIndex: 3,
    explanation: 'Long-term hypertension and volume overload lead to left ventricular hypertrophy, a frequent complication in CKD.',
    category: 'Anesthesia for Patients with Kidney Disease',
    difficulty: 2
  ),
  Question(
    id: 'anesthesia_kidney_disease_010',
    question: 'Which drug interaction requires particular attention in CKD patients?',
    options: [
      'Midazolam + furosemide',
      'Fentanyl + spironolactone',
      'Vecuronium + cyclosporine',
      'Atracurium + ASA',
      'Propofol + ranitidine'
    ],
    correctAnswerIndex: 2,
    explanation: 'Cyclosporine prolongs vecuronium\'s action; TOF monitoring is important.',
    category: 'Anesthesia for Patients with Kidney Disease',
    difficulty: 2
  ),
  Question(
    id: 'anesthesia_kidney_disease_011',
    question: 'What is the main cause of increased bleeding risk in CKD?',
    options: [
      'Shortened prothrombin time',
      'Excess fibrinogen',
      'Platelet dysfunction',
      'Elevated hematocrit',
      'Antithrombin III deficiency'
    ],
    correctAnswerIndex: 2,
    explanation: 'Uremic toxins impair platelet function, causing bleeding tendency despite normal platelet counts.',
    category: 'Anesthesia for Patients with Kidney Disease',
    difficulty: 2
  ),
  Question(
    id: 'anesthesia_kidney_disease_012',
    question: 'In the first week after renal transplantation, what should be suspected in a patient who develops acute graft dysfunction?',
    options: [
      'Chronic rejection',
      'Acute rejection',
      'Drug toxicity',
      'Urinary tract infection',
      'Nephrolithiasis'
    ],
    correctAnswerIndex: 1,
    explanation: 'Acute rejection is one of the most common early complications after transplantation.',
    category: 'Anesthesia for Patients with Kidney Disease',
    difficulty: 2
  ),
  Question(
    id: 'anesthesia_kidney_disease_013',
    question: 'What is the most common acid–base disorder in CKD patients?',
    options: [
      'Metabolic alkalosis',
      'Respiratory acidosis',
      'Metabolic acidosis',
      'Respiratory alkalosis',
      'Mixed type'
    ],
    correctAnswerIndex: 2,
    explanation: 'Reduced acid excretion leads to metabolic acidosis in CKD.',
    category: 'Anesthesia for Patients with Kidney Disease',
    difficulty: 2
  ),
  Question(
    id: 'anesthesia_kidney_disease_014',
    question: 'Which is the earliest lab finding indicating impaired graft function after renal transplantation?',
    options: [
      'Decreased urine osmolality',
      'Increased serum creatinine',
      'Decreased hematocrit',
      'Low serum calcium',
      'Leukocytosis'
    ],
    correctAnswerIndex: 1,
    explanation: 'Rising serum creatinine is the earliest indicator of graft dysfunction.',
    category: 'Anesthesia for Patients with Kidney Disease',
    difficulty: 2
  ),
  Question(
    id: 'anesthesia_kidney_disease_015',
    question: 'Which statement about muscle relaxant use in renal transplant patients is correct?',
    options: [
      'All muscle relaxants can be safely used',
      'Atracurium impairs graft function',
      'Vecuronium\'s effect may be prolonged with cyclosporine',
      'Succinylcholine is preferred',
      'TOF monitoring is unnecessary'
    ],
    correctAnswerIndex: 2,
    explanation: 'Cyclosporine prolongs vecuronium\'s neuromuscular block, requiring close monitoring.',
    category: 'Anesthesia for Patients with Kidney Disease',
    difficulty: 2
  ),
  Question(
    id: 'anesthesia_kidney_disease_016',
    question: 'What is the most likely risk factor for postoperative mental confusion in CKD patients?',
    options: [
      'High hematocrit',
      'Hypervolemia',
      'Sedative accumulation',
      'Hypoglycemia',
      'Nephrectomy'
    ],
    correctAnswerIndex: 2,
    explanation: 'Renally excreted sedatives (e.g., midazolam) may accumulate, leading to confusion and prolonged sedation.',
    category: 'Anesthesia for Patients with Kidney Disease',
    difficulty: 2
  ),
  Question(
    id: 'anesthesia_kidney_disease_017',
    question: 'In the early postoperative period after renal transplantation, which parameter is most practical for monitoring graft function?',
    options: [
      'Blood urea',
      'Serum albumin',
      'Urine output',
      'Hematocrit',
      'Serum phosphorus'
    ],
    correctAnswerIndex: 2,
    explanation: 'Urine output is the fastest and simplest indicator of graft function in the early period.',
    category: 'Anesthesia for Patients with Kidney Disease',
    difficulty: 2
  ),
  Question(
    id: 'anesthesia_kidney_disease_018',
    question: 'Due to increased risk of acidosis, which agent is preferred in CKD patients?',
    options: [
      'Sevoflurane',
      'Desflurane',
      'Halothane',
      'Ketamine',
      'Midazolam'
    ],
    correctAnswerIndex: 1,
    explanation: 'Desflurane has minimal metabolism, produces very little inorganic fluoride, and has minimal effect on acid–base balance.',
    category: 'Anesthesia for Patients with Kidney Disease',
    difficulty: 2
  ),
  Question(
    id: 'anesthesia_kidney_disease_019',
    question: 'On the day of surgery in a hemodialysis patient, what is the best approach?',
    options: [
      'Perform dialysis immediately after surgery',
      'Perform dialysis on the morning of surgery',
      'Dialysis should not be performed on surgery morning',
      'Dialysis is unnecessary',
      'In emergencies, dialysis should be postponed'
    ],
    correctAnswerIndex: 1,
    explanation: 'Dialysis on the morning of surgery optimizes fluid–electrolyte balance and reduces hyperkalemia risk.',
    category: 'Anesthesia for Patients with Kidney Disease',
    difficulty: 2
  ),
  Question(
    id: 'anesthesia_kidney_disease_020',
    question: 'What is the most likely cause of hypocalcemia in CKD patients?',
    options: [
      'Low vitamin D',
      'High magnesium',
      'Hypoparathyroidism',
      'Hypoproteinemia',
      'Hyperventilation'
    ],
    correctAnswerIndex: 0,
    explanation: 'Reduced activation of vitamin D in CKD → impaired calcium absorption → hypocalcemia.',
    category: 'Anesthesia for Patients with Kidney Disease',
    difficulty: 2
  ),
  Question(
    id: 'anesthesia_kidney_disease_021',
    question: 'Which electrolyte disturbance is most likely to cause intraoperative sudden bradycardia in CKD patients?',
    options: [
      'Hypokalemia',
      'Hypocalcemia',
      'Hypermagnesemia',
      'Hyponatremia',
      'Hyperglycemia'
    ],
    correctAnswerIndex: 2,
    explanation: 'Hypermagnesemia depresses cardiac conduction, leading to bradycardia and blocks.',
    category: 'Anesthesia for Patients with Kidney Disease',
    difficulty: 2
  ),
  Question(
    id: 'anesthesia_kidney_disease_022',
    question: 'Which drug should be avoided or carefully titrated in renal failure patients?',
    options: [
      'Fentanyl',
      'Ketamine',
      'Morphine',
      'Propofol',
      'Sevoflurane'
    ],
    correctAnswerIndex: 2,
    explanation: 'Morphine has active metabolites eliminated renally, which may accumulate and cause prolonged respiratory depression.',
    category: 'Anesthesia for Patients with Kidney Disease',
    difficulty: 2
  ),
  Question(
    id: 'anesthesia_kidney_disease_023',
    question: 'Which intravenous fluid is least preferred in CKD patients?',
    options: [
      '0.9% NaCl',
      'Plasma-Lyte',
      'Ringer\'s lactate',
      'Sterile water',
      'Isotonic glucose'
    ],
    correctAnswerIndex: 2,
    explanation: 'Ringer\'s lactate contains potassium, so it must be used cautiously in patients at risk of hyperkalemia.',
    category: 'Anesthesia for Patients with Kidney Disease',
    difficulty: 2
  ),
  Question(
    id: 'anesthesia_kidney_disease_024',
    question: 'Which drug must be used cautiously in CKD patients due to side effects such as bradycardia, hypotension, and vasodilation?',
    options: [
      'Dexmedetomidine',
      'Fentanyl',
      'Midazolam',
      'Ketamine',
      'Etomidate'
    ],
    correctAnswerIndex: 0,
    explanation: 'Dexmedetomidine, an α₂-agonist, causes bradycardia and hypotension; these effects are more pronounced in renal patients.',
    category: 'Anesthesia for Patients with Kidney Disease',
    difficulty: 2
  ),
  Question(
    id: 'anesthesia_kidney_disease_025',
    question: 'In uremic patients with pericarditis, which anesthetic approach is most appropriate?',
    options: [
      'Deep sedation',
      'Hyperventilation',
      'Excessive fluid loading',
      'Vigilance for signs of cardiac tamponade',
      'IV nitroglycerin administration'
    ],
    correctAnswerIndex: 3,
    explanation: 'Uremic pericarditis may progress to tamponade, so careful monitoring for hemodynamic collapse is essential.',
    category: 'Anesthesia for Patients with Kidney Disease',
    difficulty: 2
  ),
  Question(
    id: 'anesthesia_kidney_disease_026',
    question: 'In CKD patients, what is the leading cause of postoperative mortality?',
    options: [
      'Bleeding',
      'Drug interactions',
      'Cardiac complications',
      'Electrolyte disturbances',
      'Infections'
    ],
    correctAnswerIndex: 2,
    explanation: 'Cardiovascular disease is the primary cause of mortality in CKD, especially due to LV hypertrophy and arrhythmias.',
    category: 'Anesthesia for Patients with Kidney Disease',
    difficulty: 2
  ),
  Question(
    id: 'anesthesia_kidney_disease_027',
    question: 'What is the most important pre-anesthetic evaluation parameter in hemodialysis patients?',
    options: [
      'Serum calcium',
      'Timing of last dialysis',
      'Hematocrit',
      'Sodium level',
      'Urine output'
    ],
    correctAnswerIndex: 1,
    explanation: 'The timing of the last dialysis determines potassium and volume status.',
    category: 'Anesthesia for Patients with Kidney Disease',
    difficulty: 2
  ),
  Question(
    id: 'anesthesia_kidney_disease_028',
    question: 'Which inhalation agent should be least preferred in CKD?',
    options: [
      'Sevoflurane',
      'Desflurane',
      'Isoflurane',
      'Halothane',
      'Methoxyflurane'
    ],
    correctAnswerIndex: 4,
    explanation: 'Methoxyflurane produces the highest fluoride ion levels and is strongly nephrotoxic.',
    category: 'Anesthesia for Patients with Kidney Disease',
    difficulty: 2
  ),
  Question(
    id: 'anesthesia_kidney_disease_029',
    question: 'What is the most common cardiac complication in hemodialysis patients?',
    options: [
      'Hypotension',
      'Bradycardia',
      'Ventricular tachycardia',
      'Atrial fibrillation',
      'QT prolongation'
    ],
    correctAnswerIndex: 0,
    explanation: 'During dialysis, intravascular volume decreases, frequently causing hypotension.',
    category: 'Anesthesia for Patients with Kidney Disease',
    difficulty: 2
  ),
  Question(
    id: 'anesthesia_kidney_disease_030',
    question: 'During anesthesia in a renal patient, what is the first step if hyperkalemia develops?',
    options: [
      'Administer salbutamol',
      'Start low-potassium fluids',
      'Administer calcium gluconate',
      'Initiate dialysis',
      'Administer furosemide'
    ],
    correctAnswerIndex: 2,
    explanation: 'Calcium gluconate stabilizes cardiac membranes and is the first step in emergency hyperkalemia management.',
    category: 'Anesthesia for Patients with Kidney Disease',
    difficulty: 2
  ),
  Question(
    id: 'anesthesia_kidney_disease_031',
    question: 'Which sedative is safer in CKD patients?',
    options: [
      'Diazepam',
      'Lorazepam',
      'Midazolam',
      'Propofol',
      'Ketamine'
    ],
    correctAnswerIndex: 3,
    explanation: 'Propofol is short-acting, hepatically metabolized, and has no active metabolites, making it safer.',
    category: 'Anesthesia for Patients with Kidney Disease',
    difficulty: 2
  ),
  Question(
    id: 'anesthesia_kidney_disease_032',
    question: 'What is the most common complication after intubation in dialysis patients?',
    options: [
      'Hypertension',
      'Laryngospasm',
      'Hypoventilation',
      'Pulmonary edema',
      'Hypoxemia'
    ],
    correctAnswerIndex: 3,
    explanation: 'Dialysis patients are prone to volume overload, increasing the risk of pulmonary edema.',
    category: 'Anesthesia for Patients with Kidney Disease',
    difficulty: 2
  ),
  Question(
    id: 'anesthesia_kidney_disease_033',
    question: 'Which factor most contributes to increased cardiovascular risk in CKD?',
    options: [
      'Hyponatremia',
      'Anemia',
      'Hypocalcemia',
      'Hyperphosphatemia',
      'Hypercholesterolemia'
    ],
    correctAnswerIndex: 1,
    explanation: 'Anemia reduces oxygen delivery, increasing cardiac workload.',
    category: 'Anesthesia for Patients with Kidney Disease',
    difficulty: 2
  ),
  Question(
    id: 'anesthesia_kidney_disease_034',
    question: 'Which drug group carries the highest nephrotoxic potential in CKD?',
    options: [
      'Beta blockers',
      'Proton pump inhibitors',
      'Aminoglycosides',
      'Anticoagulants',
      'Corticosteroids'
    ],
    correctAnswerIndex: 2,
    explanation: 'Aminoglycosides can cause tubular necrosis and must be used cautiously.',
    category: 'Anesthesia for Patients with Kidney Disease',
    difficulty: 2
  ),
  Question(
    id: 'anesthesia_kidney_disease_035',
    question: 'What is the most common mineral abnormality in CKD?',
    options: [
      'Hypernatremia',
      'Hyperchloremia',
      'Hyperphosphatemia',
      'Hypomagnesemia',
      'Hyponatremia'
    ],
    correctAnswerIndex: 2,
    explanation: 'Phosphate retention occurs as renal function declines, leading to hyperphosphatemia.',
    category: 'Anesthesia for Patients with Kidney Disease',
    difficulty: 2
  ),
  Question(
    id: 'anesthesia_kidney_disease_036',
    question: 'When should elective surgery ideally be scheduled in hemodialysis patients?',
    options: [
      'Before dialysis',
      'Morning of dialysis',
      'Within 24 hours after dialysis',
      'Immediately before dialysis',
      'Three days after dialysis'
    ],
    correctAnswerIndex: 2,
    explanation: 'Elective surgery is best scheduled within 24 hours post-dialysis, when fluid–electrolyte balance is optimal.',
    category: 'Anesthesia for Patients with Kidney Disease',
    difficulty: 2
  ),
  Question(
    id: 'anesthesia_kidney_disease_037',
    question: 'Why are intramuscular injections generally avoided in dialysis patients?',
    options: [
      'Risk of infection',
      'Rapid absorption',
      'Painful procedure',
      'Muscle atrophy',
      'Risk of hematoma'
    ],
    correctAnswerIndex: 4,
    explanation: 'Due to anticoagulant use, intramuscular injections increase hematoma risk.',
    category: 'Anesthesia for Patients with Kidney Disease',
    difficulty: 2
  ),
  Question(
    id: 'anesthesia_kidney_disease_038',
    question: 'Which antihypertensive drug increases intraoperative hypotension risk in CKD?',
    options: [
      'Beta blockers',
      'ACE inhibitors',
      'Calcium channel blockers',
      'Diuretics',
      'Alpha blockers'
    ],
    correctAnswerIndex: 1,
    explanation: 'ACE inhibitors combined with anesthesia can cause profound hypotension.',
    category: 'Anesthesia for Patients with Kidney Disease',
    difficulty: 2
  ),
  Question(
    id: 'anesthesia_kidney_disease_039',
    question: 'Which inhalation anesthetic should be least preferred in dialysis patients?',
    options: [
      'Desflurane',
      'Halothane',
      'Isoflurane',
      'Sevoflurane',
      'Nitrous oxide'
    ],
    correctAnswerIndex: 1,
    explanation: 'Halothane metabolites are hepatotoxic and may also negatively affect renal function.',
    category: 'Anesthesia for Patients with Kidney Disease',
    difficulty: 2
  ),
  Question(
    id: 'anesthesia_kidney_disease_040',
    question: 'Which non-opioid analgesic is the safest in renal failure patients?',
    options: [
      'Diclofenac',
      'Paracetamol',
      'Metamizole',
      'Ibuprofen',
      'Naproxen'
    ],
    correctAnswerIndex: 1,
    explanation: 'Paracetamol is the safest non-opioid analgesic in terms of renal toxicity.',
    category: 'Anesthesia for Patients with Kidney Disease',
    difficulty: 2
  ),
  Question(
    id: 'anesthesia_kidney_disease_041',
    question: 'What is the name of the bone disease commonly seen in CKD patients?',
    options: [
      'Osteosarcoma',
      'Osteomalacia',
      'Renal osteodystrophy',
      'Osteopetrosis',
      'Paget\'s disease'
    ],
    correctAnswerIndex: 2,
    explanation: 'CKD leads to mineral and bone disorders collectively termed renal osteodystrophy.',
    category: 'Anesthesia for Patients with Kidney Disease',
    difficulty: 2
  ),
  Question(
    id: 'anesthesia_kidney_disease_042',
    question: 'What is the most appropriate treatment approach for calcium–phosphorus imbalance in CKD?',
    options: [
      'Vitamin D supplementation',
      'Use of phosphate binders',
      'Hydration with hypotonic fluids',
      'Increased protein intake',
      'Starting calcium-raising medications'
    ],
    correctAnswerIndex: 1,
    explanation: 'Phosphate binders help control serum phosphorus levels in CKD.',
    category: 'Anesthesia for Patients with Kidney Disease',
    difficulty: 2
  ),
  Question(
    id: 'anesthesia_kidney_disease_043',
    question: 'According to KDIGO criteria, which is NOT used in the diagnosis of acute kidney injury (AKI)?',
    options: [
      'Urine output <0.1 mL/kg/h (24 hours)',
      'Serum creatinine increase ≥0.3 mg/dL in 48 hours',
      'Serum creatinine ≥1.5× baseline within 7 days',
      'GFR decrease ≥40% in 7 days',
      'Urine output <0.5 mL/kg/h (6 hours)'
    ],
    correctAnswerIndex: 0,
    explanation: 'KDIGO defines oliguria as <0.5 mL/kg/h for 6 hours; <0.1 mL/kg/h is not a criterion.',
    category: 'Anesthesia for Patients with Kidney Disease',
    difficulty: 2
  ),
  Question(
    id: 'anesthesia_kidney_disease_044',
    question: 'Which fluid is contraindicated in perioperative fluid replacement for CKD patients?',
    options: [
      'Ringer\'s lactate',
      '0.9% NaCl',
      'Isotonic bicarbonate',
      '5% Dextrose',
      'Hydroxyethyl starch'
    ],
    correctAnswerIndex: 0,
    explanation: 'Due to hyperkalemia risk, since RL contains potassium.',
    category: 'Anesthesia for Patients with Kidney Disease',
    difficulty: 2
  ),
  Question(
    id: 'anesthesia_kidney_disease_045',
    question: 'When should the last dialysis session ideally be performed before surgery?',
    options: [
      '24 hours before surgery',
      'On the morning of surgery',
      'One week before surgery',
      'Immediately after surgery',
      'During surgery'
    ],
    correctAnswerIndex: 0,
    explanation: 'Dialysis 24 hours prior reduces hypotension risk and ensures potassium control. In urgent cases, morning dialysis may also be done.',
    category: 'Anesthesia for Patients with Kidney Disease',
    difficulty: 2
  ),
  Question(
    id: 'anesthesia_kidney_disease_046',
    question: 'In CKD patients, which local anesthetic dose should be reduced?',
    options: [
      'Bupivacaine',
      'Lidocaine',
      'Prilocaine',
      'Mepivacaine',
      'Ropivacaine'
    ],
    correctAnswerIndex: 0,
    explanation: 'Due to high protein binding, the free fraction of bupivacaine increases in CKD; ropivacaine is safer.',
    category: 'Anesthesia for Patients with Kidney Disease',
    difficulty: 2
  ),
  Question(
    id: 'anesthesia_kidney_disease_047',
    question: 'Which measure is NOT effective in reducing contrast-induced nephropathy risk?',
    options: [
      'Hydroxyethyl starch infusion',
      'N-acetylcysteine',
      'Isotonic fluid hydration',
      'Low/iso-osmolar contrast',
      'Withholding metformin'
    ],
    correctAnswerIndex: 0,
    explanation: 'HES is nephrotoxic; hydration is best done with NaCl.',
    category: 'Anesthesia for Patients with Kidney Disease',
    difficulty: 2
  ),
  Question(
    id: 'anesthesia_kidney_disease_048',
    question: 'Which anesthetic agent\'s elimination is unaffected in CKD?',
    options: [
      'Sevoflurane',
      'Propofol',
      'Thiopental',
      'Etomidate',
      'Dexmedetomidine'
    ],
    correctAnswerIndex: 0,
    explanation: 'Sevoflurane is eliminated by the lungs; others rely on hepatic/renal clearance.',
    category: 'Anesthesia for Patients with Kidney Disease',
    difficulty: 2
  ),
  Question(
    id: 'anesthesia_kidney_disease_049',
    question: 'Which drug is used in the treatment of restless legs syndrome in CKD?',
    options: [
      'Gabapentin',
      'Morphine',
      'Ketamine',
      'Midazolam',
      'Neostigmine'
    ],
    correctAnswerIndex: 0,
    explanation: 'Gabapentin and dopamine agonists (e.g., pramipexole) are effective; opioids carry risks.',
    category: 'Anesthesia for Patients with Kidney Disease',
    difficulty: 2
  ),
  Question(
    id: 'anesthesia_kidney_disease_050',
    question: 'Which finding is typical in the diagnosis of CKD-related pericarditis?',
    options: [
      'Pericardial friction rub',
      'Pulsus paradoxus',
      'Jugular venous distension',
      'Hepatomegaly',
      'Peripheral edema'
    ],
    correctAnswerIndex: 0,
    explanation: 'Pericardial friction rub is pathognomonic for uremic pericarditis; dialysis is the treatment.',
    category: 'Anesthesia for Patients with Kidney Disease',
    difficulty: 2
  ),
  Question(
    id: 'anesthesia_kidney_disease_051',
    question: 'Which antihypertensive drug is contraindicated in CKD?',
    options: [
      'ACE inhibitors (due to risk of AKI)',
      'Calcium channel blockers',
      'Beta blockers',
      'Diuretics',
      'Alpha blockers'
    ],
    correctAnswerIndex: 0,
    explanation: 'ACE inhibitors can precipitate acute renal failure in bilateral renal artery stenosis.',
    category: 'Anesthesia for Patients with Kidney Disease',
    difficulty: 2
  ),
  Question(
    id: 'anesthesia_kidney_disease_052',
    question: 'Which intravenous fluid is most suitable in CKD?',
    options: [
      '0.9% NaCl',
      'Ringer\'s lactate',
      '5% Dextrose',
      'Hydroxyethyl starch',
      'Mannitol'
    ],
    correctAnswerIndex: 0,
    explanation: 'Potassium-free fluids such as normal saline are preferred to avoid hyperkalemia.',
    category: 'Anesthesia for Patients with Kidney Disease',
    difficulty: 2
  ),
  Question(
    id: 'anesthesia_kidney_disease_053',
    question: 'Which antibiotic can be used in CKD without dose adjustment?',
    options: [
      'Cefepime',
      'Vancomycin',
      'Gentamicin',
      'Ampicillin',
      'Ciprofloxacin'
    ],
    correctAnswerIndex: 0,
    explanation: 'Cefepime is metabolized via the liver; others require dose adjustment or are nephrotoxic.',
    category: 'Anesthesia for Patients with Kidney Disease',
    difficulty: 2
  ),
  Question(
    id: 'anesthesia_kidney_disease_054',
    question: 'What is correct about metformin use in CKD?',
    options: [
      'It should be discontinued 48 hours before surgery',
      'Its dose should be increased perioperatively',
      'It should be given before contrast administration',
      'There is no risk of lactic acidosis',
      'It cannot be removed by dialysis'
    ],
    correctAnswerIndex: 0,
    explanation: 'It must be stopped 48h before surgery or contrast exposure due to lactic acidosis risk.',
    category: 'Anesthesia for Patients with Kidney Disease',
    difficulty: 2
  ),
  Question(
    id: 'anesthesia_kidney_disease_055',
    question: 'Which is NOT used in the treatment of hyperphosphatemia in CKD?',
    options: [
      'Potassium-binding resins',
      'Phosphate binders',
      'Low-phosphate diet',
      'Dialysis',
      'Calcium acetate'
    ],
    correctAnswerIndex: 0,
    explanation: 'Potassium resins are used in hyperkalemia, not hyperphosphatemia.',
    category: 'Anesthesia for Patients with Kidney Disease',
    difficulty: 2
  ),
  Question(
    id: 'anesthesia_kidney_disease_056',
    question: 'What is a complication of chronic acidosis in CKD?',
    options: [
      'Bone demineralization',
      'Hypertension',
      'Hyperglycemia',
      'Hypokalemia',
      'Thrombocytosis'
    ],
    correctAnswerIndex: 0,
    explanation: 'Acidosis mobilizes calcium from bone, leading to renal osteodystrophy.',
    category: 'Anesthesia for Patients with Kidney Disease',
    difficulty: 2
  ),
  Question(
    id: 'anesthesia_kidney_disease_057',
    question: 'Which treatment is effective for uremic pruritus?',
    options: [
      'Gabapentin',
      'Morphine',
      'Ketamine',
      'Midazolam',
      'Neostigmine'
    ],
    correctAnswerIndex: 0,
    explanation: 'Gabapentin is more effective than antihistamines; UV phototherapy is another option.',
    category: 'Anesthesia for Patients with Kidney Disease',
    difficulty: 2
  ),
  Question(
    id: 'anesthesia_kidney_disease_058',
    question: 'Which drug is used in the treatment of hypermagnesemia?',
    options: [
      'Calcium gluconate',
      'Insulin + dextrose',
      'Sodium bicarbonate',
      'Beta-2 agonists',
      'Diuretics'
    ],
    correctAnswerIndex: 0,
    explanation: 'Calcium gluconate antagonizes the cardiac toxicity of magnesium; dialysis is definitive.',
    category: 'Anesthesia for Patients with Kidney Disease',
    difficulty: 2
  ),
  Question(
    id: 'anesthesia_kidney_disease_059',
    question: 'Which lab finding indicates malnutrition in CKD?',
    options: [
      'Low albumin',
      'High transferrin',
      'Increased prealbumin',
      'High cholesterol',
      'Increased lymphocytes'
    ],
    correctAnswerIndex: 0,
    explanation: 'Albumin <3.5 g/dL suggests significant protein–energy malnutrition.',
    category: 'Anesthesia for Patients with Kidney Disease',
    difficulty: 2
  ),
  Question(
    id: 'anesthesia_kidney_disease_060',
    question: 'What is the most important cause of increased cardiovascular risk in CKD?',
    options: [
      'Calcific atherosclerosis',
      'Hypertension',
      'Hyperlipidemia',
      'Diabetes mellitus',
      'Smoking'
    ],
    correctAnswerIndex: 0,
    explanation: 'Disturbed Ca–P balance and chronic inflammation accelerate vascular calcification.',
    category: 'Anesthesia for Patients with Kidney Disease',
    difficulty: 2
  ),
  Question(
    id: 'anesthesia_kidney_disease_061',
    question: 'What is the most common type of neuropathy in CKD?',
    options: [
      'Peripheral sensory neuropathy',
      'Motor neuropathy',
      'Autonomic neuropathy',
      'Cranial nerve involvement',
      'Central neuropathy'
    ],
    correctAnswerIndex: 0,
    explanation: 'A "glove–stocking" distribution sensory neuropathy occurs due to uremic toxin accumulation.',
    category: 'Anesthesia for Patients with Kidney Disease',
    difficulty: 2
  ),
];
