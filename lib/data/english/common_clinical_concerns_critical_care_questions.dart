import '../../models/question.dart';

List<Question> commonClinicalConcernsCriticalCareQuestions = [
  Question(
    id: 'common_clinical_concerns_critical_care_001',
    question: 'Which organ failure is most commonly observed in the intensive care unit (ICU)?',
    options: [
      'Liver failure',
      'Renal failure',
      'Cardiac failure',
      'Respiratory failure',
      'Hematologic failure'
    ],
    correctAnswerIndex: 3,
    explanation: 'Acute respiratory failure is the most common cause of organ dysfunction in ICU patients.',
    category: 'Common Clinical Concerns in Critical Care Medicine',
    difficulty: 2
  ),
  Question(
    id: 'common_clinical_concerns_critical_care_002',
    question: 'What is the most common type of hospital-acquired infection in ICU patients?',
    options: [
      'Surgical site infection',
      'Catheter-associated urinary tract infection',
      'Ventilator-associated pneumonia (VAP)',
      'Transfusion-related infection',
      'Skin and soft tissue infections'
    ],
    correctAnswerIndex: 2,
    explanation: 'VAP is among the most frequently observed nosocomial infections in the ICU.',
    category: 'Common Clinical Concerns in Critical Care Medicine',
    difficulty: 2
  ),
  Question(
    id: 'common_clinical_concerns_critical_care_003',
    question: 'Which of the following is the strongest risk factor for delirium in the ICU?',
    options: [
      'No sedation used',
      'Younger age',
      'Use of broad-spectrum antibiotics',
      'Prolonged intubation',
      'History of hypertension'
    ],
    correctAnswerIndex: 3,
    explanation: 'Prolonged intubation, especially >48 hours, is strongly associated with delirium.',
    category: 'Common Clinical Concerns in Critical Care Medicine',
    difficulty: 2
  ),
  Question(
    id: 'common_clinical_concerns_critical_care_004',
    question: 'What is the term for prolonged muscle weakness after neuromuscular blocker use in an ICU patient?',
    options: [
      'Malignant hyperthermia',
      'Myasthenic crisis',
      'Iatrogenic neuromyopathy',
      'Guillain–Barré syndrome',
      'Conversion disorder'
    ],
    correctAnswerIndex: 2,
    explanation: 'Long-term NMB use—especially with steroids—can lead to critical illness neuromyopathy.',
    category: 'Common Clinical Concerns in Critical Care Medicine',
    difficulty: 2
  ),
  Question(
    id: 'common_clinical_concerns_critical_care_005',
    question: 'Which antibiotic carries one of the highest risks of nephrotoxicity in the ICU?',
    options: [
      'Ceftriaxone',
      'Metronidazole',
      'Amikacin',
      'Clindamycin',
      'Linezolid'
    ],
    correctAnswerIndex: 2,
    explanation: 'Aminoglycosides, particularly amikacin, are nephrotoxic → close monitoring is needed.',
    category: 'Common Clinical Concerns in Critical Care Medicine',
    difficulty: 2
  ),
  Question(
    id: 'common_clinical_concerns_critical_care_006',
    question: 'What is the most appropriate initial intervention for stridor developing after intubation in the ICU?',
    options: [
      'IV salbutamol',
      'Corticosteroid and humidified oxygen',
      'Atropine',
      'Midazolam',
      'Ipratropium inhaler'
    ],
    correctAnswerIndex: 1,
    explanation: 'Post-extubation stridor is usually due to laryngeal edema → start steroids + humidified O₂.',
    category: 'Common Clinical Concerns in Critical Care Medicine',
    difficulty: 2
  ),
  Question(
    id: 'common_clinical_concerns_critical_care_007',
    question: 'Which drug is among the most effective for reducing delirium in the ICU?',
    options: [
      'Dexamethasone',
      'Midazolam',
      'Haloperidol',
      'Morphine',
      'Atropine'
    ],
    correctAnswerIndex: 2,
    explanation: 'Haloperidol is commonly used at low doses for delirium treatment.',
    category: 'Common Clinical Concerns in Critical Care Medicine',
    difficulty: 2
  ),
  Question(
    id: 'common_clinical_concerns_critical_care_008',
    question: 'What is the recommended time window for tracheostomy in ICU patients?',
    options: [
      'First 24 hours',
      'Days 1–3',
      'Days 5–7',
      'Days 7–10',
      '>14 days'
    ],
    correctAnswerIndex: 3,
    explanation: 'Tracheostomy is generally considered on days 7–10 as an alternative to prolonged intubation.',
    category: 'Common Clinical Concerns in Critical Care Medicine',
    difficulty: 2
  ),
  Question(
    id: 'common_clinical_concerns_critical_care_009',
    question: 'Which of the following is least helpful for diagnosing ventilator-associated pneumonia (VAP) in the ICU?',
    options: [
      'Increased sputum',
      'Fever >38 °C',
      'Decrease in PaO₂/FiO₂ ratio',
      'New infiltrate',
      'Leukopenia <2000/mm³'
    ],
    correctAnswerIndex: 4,
    explanation: 'Fever, new infiltrate, increased secretions, and oxygenation impairment are core criteria; leukopenia suggests immunosuppression but is not diagnostic.',
    category: 'Common Clinical Concerns in Critical Care Medicine',
    difficulty: 2
  ),
  Question(
    id: 'common_clinical_concerns_critical_care_010',
    question: 'Which scale is most commonly used to monitor sedation level in the ICU?',
    options: [
      'APGAR score',
      'Aldrete score',
      'Richmond Agitation–Sedation Scale (RASS)',
      'CAM-ICU',
      'SOFA score'
    ],
    correctAnswerIndex: 2,
    explanation: 'RASS is widely used to assess depth of sedation from agitation to deep sedation.',
    category: 'Common Clinical Concerns in Critical Care Medicine',
    difficulty: 2
  ),
  Question(
    id: 'common_clinical_concerns_critical_care_011',
    question: 'After fluid loading in the ICU, which parameter most reliably indicates pulmonary edema?',
    options: [
      'Pulmonary artery pressure',
      'Lung auscultation',
      'PaO₂/FiO₂ ratio',
      'Hematocrit',
      'B-type natriuretic peptide (BNP)'
    ],
    correctAnswerIndex: 2,
    explanation: 'A fall in PaO₂/FiO₂ is an objective, commonly used indicator of parenchymal fluid accumulation.',
    category: 'Common Clinical Concerns in Critical Care Medicine',
    difficulty: 2
  ),
  Question(
    id: 'common_clinical_concerns_critical_care_012',
    question: 'Which is among the most frequent complications after intubation in ICU patients?',
    options: [
      'Tracheal stenosis',
      'Oropharyngeal bleeding',
      'Post-intubation laryngeal edema',
      'Pneumothorax',
      'Development of a glottic tumor'
    ],
    correctAnswerIndex: 2,
    explanation: 'Laryngeal edema is common after prolonged or traumatic intubation.',
    category: 'Common Clinical Concerns in Critical Care Medicine',
    difficulty: 2
  ),
  Question(
    id: 'common_clinical_concerns_critical_care_013',
    question: 'Which condition must be excluded in the differential diagnosis of ICU delirium?',
    options: [
      'Hypothyroidism',
      'Sedative use',
      'Hypoglycemia',
      'Anemia',
      'Urinary retention'
    ],
    correctAnswerIndex: 2,
    explanation: 'Hypoglycemia is life-threatening, can mimic delirium, and must be corrected promptly.',
    category: 'Common Clinical Concerns in Critical Care Medicine',
    difficulty: 2
  ),
  Question(
    id: 'common_clinical_concerns_critical_care_014',
    question: 'Which practice reduces the risk of VAP in mechanically ventilated patients?',
    options: [
      'Supine positioning',
      'Increasing endotracheal tube cuff pressure',
      'Daily sedation interruption',
      'Broad-spectrum antibiotic prophylaxis',
      'Daily bronchoscopy'
    ],
    correctAnswerIndex: 2,
    explanation: 'Sedation vacations and early mobilization shorten ventilation duration and reduce VAP risk.',
    category: 'Common Clinical Concerns in Critical Care Medicine',
    difficulty: 2
  ),
  Question(
    id: 'common_clinical_concerns_critical_care_015',
    question: 'Which parameter is used to predict mortality in ICU patients with sepsis?',
    options: [
      'Aldrete score',
      'GCS',
      'SOFA score',
      'CAM-ICU',
      'Braden score'
    ],
    correctAnswerIndex: 2,
    explanation: 'SOFA is the most widely used score for multiple organ dysfunction and sepsis prognosis.',
    category: 'Common Clinical Concerns in Critical Care Medicine',
    difficulty: 2
  ),
  Question(
    id: 'common_clinical_concerns_critical_care_016',
    question: 'Which of the following is the earliest laboratory finding of refeeding syndrome in ICU patients?',
    options: [
      'Hypernatremia',
      'Hypokalemia',
      'Hypercalcemia',
      'Hypoglycemia',
      'Hypomagnesemia'
    ],
    correctAnswerIndex: 1,
    explanation: 'After feeding is initiated, refeeding syndrome presents with hypophosphatemia, hypokalemia, and hypomagnesemia. Hypokalemia is often detected first.',
    category: 'Common Clinical Concerns in Critical Care Medicine',
    difficulty: 2
  ),
  Question(
    id: 'common_clinical_concerns_critical_care_017',
    question: 'Which of the following is an important complication that may develop after glucocorticoid use in ICU patients?',
    options: [
      'Hypercalcemia',
      'Hypoglycemia',
      'Adrenal insufficiency',
      'Leukopenia',
      'Hemolysis'
    ],
    correctAnswerIndex: 2,
    explanation: 'Prolonged steroid use can suppress the adrenal axis → abrupt cessation in critically ill patients may lead to adrenal insufficiency.',
    category: 'Common Clinical Concerns in Critical Care Medicine',
    difficulty: 2
  ),
  Question(
    id: 'common_clinical_concerns_critical_care_018',
    question: 'In an ICU patient, which condition is characterized by hypotension + jugular venous distension + muffled heart sounds?',
    options: [
      'Septic shock',
      'Pericardial tamponade',
      'Anaphylactic shock',
      'Tension pneumothorax',
      'Pulmonary embolism'
    ],
    correctAnswerIndex: 1,
    explanation: 'This Beck\'s triad is characteristic of pericardial tamponade.',
    category: 'Common Clinical Concerns in Critical Care Medicine',
    difficulty: 2
  ),
  Question(
    id: 'common_clinical_concerns_critical_care_019',
    question: 'Which of the following is not recommended to prevent refeeding syndrome in critically ill patients?',
    options: [
      'Gradual increase in feeding',
      'Daily electrolyte monitoring',
      'Thiamine supplementation',
      'Starting with high carbohydrates',
      'Monitoring serum phosphate'
    ],
    correctAnswerIndex: 3,
    explanation: 'High carbohydrate intake increases insulin release and raises the risk of hypophosphatemia. Carbohydrates should be low at the start.',
    category: 'Common Clinical Concerns in Critical Care Medicine',
    difficulty: 2
  ),
  Question(
    id: 'common_clinical_concerns_critical_care_020',
    question: 'Which of the following is among the most important risk factors for pressure ulcer development in the ICU?',
    options: [
      'Fever',
      'Hypokalemia',
      'Low albumin level',
      'Leukocytosis',
      'Hyperhydration'
    ],
    correctAnswerIndex: 2,
    explanation: 'Hypoalbuminemia impairs nutrition and tissue healing capacity → increases pressure ulcer risk.',
    category: 'Common Clinical Concerns in Critical Care Medicine',
    difficulty: 2
  ),
  Question(
    id: 'common_clinical_concerns_critical_care_021',
    question: 'In an ICU patient, which is the most important criterion in the differential diagnosis of SIADH (syndrome of inappropriate antidiuretic hormone secretion)?',
    options: [
      'Hypernatremia',
      'High urine osmolality',
      'Increased hematocrit',
      'Hypoglycemia',
      'Decreased urine sodium'
    ],
    correctAnswerIndex: 1,
    explanation: 'In SIADH, water retention leads to increased urine osmolality; urine sodium is high and hyponatremia is observed.',
    category: 'Common Clinical Concerns in Critical Care Medicine',
    difficulty: 2
  ),
  Question(
    id: 'common_clinical_concerns_critical_care_022',
    question: 'Which of the following is a common cause of hypomagnesemia in ICU patients?',
    options: [
      'Metabolic alkalosis',
      'Enteral feeding',
      'Diuretic use',
      'Hypercalcemia',
      'Sepsis'
    ],
    correctAnswerIndex: 2,
    explanation: 'Loop and thiazide diuretics cause magnesium loss → hypomagnesemia may develop.',
    category: 'Common Clinical Concerns in Critical Care Medicine',
    difficulty: 2
  ),
  Question(
    id: 'common_clinical_concerns_critical_care_023',
    question: 'Which laboratory finding most strongly suggests adrenal insufficiency in an ICU patient?',
    options: [
      'Hypernatremia',
      'Hyperchloremia',
      'Hypoglycemia',
      'Leukocytosis',
      'Increased hematocrit'
    ],
    correctAnswerIndex: 2,
    explanation: 'Cortisol deficiency leads to hypoglycemia and hypotension → a sudden drop in glucose in a critically ill patient is suggestive.',
    category: 'Common Clinical Concerns in Critical Care Medicine',
    difficulty: 2
  ),
  Question(
    id: 'common_clinical_concerns_critical_care_024',
    question: 'Which complication may develop due to increased spontaneous breathing efforts during mechanical ventilation in an ICU patient?',
    options: [
      'Barotrauma',
      'Pendelluft effect',
      'Tidal hypocapnia',
      'Auto-traction',
      'Atelectasis'
    ],
    correctAnswerIndex: 1,
    explanation: 'Pendelluft occurs with asynchronous spontaneous effort, causing over-ventilation in some lung regions and under-ventilation in others.',
    category: 'Common Clinical Concerns in Critical Care Medicine',
    difficulty: 2
  ),
  Question(
    id: 'common_clinical_concerns_critical_care_025',
    question: 'Which antibiotic most commonly causes thrombocytopenia in ICU patients?',
    options: [
      'Piperacillin–tazobactam',
      'Vancomycin',
      'Linezolid',
      'Meropenem',
      'Amikacin'
    ],
    correctAnswerIndex: 2,
    explanation: 'With prolonged use, linezolid is associated with bone marrow suppression and thrombocytopenia.',
    category: 'Common Clinical Concerns in Critical Care Medicine',
    difficulty: 2
  ),
  Question(
    id: 'common_clinical_concerns_critical_care_026',
    question: 'Which of the following is most likely when tachypnea, hypoxia, normotension, and right ventricular dilation develop in the ICU?',
    options: [
      'Pulmonary embolism',
      'Cardiogenic shock',
      'Septic shock',
      'Hypovolemic shock',
      'Metabolic acidosis'
    ],
    correctAnswerIndex: 0,
    explanation: 'PE is typical with right ventricular strain, sudden dyspnea, and oxygenation impairment.',
    category: 'Common Clinical Concerns in Critical Care Medicine',
    difficulty: 2
  ),
  Question(
    id: 'common_clinical_concerns_critical_care_027',
    question: 'Which is the most up-to-date clinical score used for sepsis diagnosis?',
    options: [
      'APACHE II',
      'qSOFA',
      'RASS',
      'GCS',
      'Glasgow Outcome Score'
    ],
    correctAnswerIndex: 1,
    explanation: 'qSOFA (quick SOFA) is a rapid screening tool used in sepsis assessment.',
    category: 'Common Clinical Concerns in Critical Care Medicine',
    difficulty: 2
  ),
  Question(
    id: 'common_clinical_concerns_critical_care_028',
    question: 'In an ICU patient with sudden change in consciousness + high urea/creatinine ratio, which condition is most likely?',
    options: [
      'Sepsis',
      'Renal failure',
      'Hypoglycemia',
      'Delirium',
      'Hyponatremia'
    ],
    correctAnswerIndex: 1,
    explanation: 'Elevated urea and creatinine suggest acute renal failure.',
    category: 'Common Clinical Concerns in Critical Care Medicine',
    difficulty: 2
  ),
  Question(
    id: 'common_clinical_concerns_critical_care_029',
    question: 'If hemodynamic instability develops in an ICU patient, what should be assessed first?',
    options: [
      'Serum creatinine',
      'Body temperature',
      'Central venous pressure',
      'Pulse and blood pressure',
      'SpO₂'
    ],
    correctAnswerIndex: 3,
    explanation: 'Initial hemodynamic evaluation prioritizes pulse and blood pressure.',
    category: 'Common Clinical Concerns in Critical Care Medicine',
    difficulty: 2
  ),
  Question(
    id: 'common_clinical_concerns_critical_care_030',
    question: 'What is the most important measure to minimize the development of decubitus ulcers in the ICU?',
    options: [
      'Changing position once daily',
      'High-dose steroids',
      'Antibiotic prophylaxis',
      'Routine skin assessment and regular repositioning',
      'Inserting a urinary catheter'
    ],
    correctAnswerIndex: 3,
    explanation: 'The most effective strategy is regular repositioning and skin checks.',
    category: 'Common Clinical Concerns in Critical Care Medicine',
    difficulty: 2
  ),
  Question(
    id: 'common_clinical_concerns_critical_care_031',
    question: 'Which laboratory test is most critical for establishing sepsis?',
    options: [
      'Lactate level',
      'Urea',
      'Hct',
      'ALT',
      'Na⁺'
    ],
    correctAnswerIndex: 0,
    explanation: 'Lactate reflects tissue hypoperfusion and helps gauge sepsis severity.',
    category: 'Common Clinical Concerns in Critical Care Medicine',
    difficulty: 2
  ),
  Question(
    id: 'common_clinical_concerns_critical_care_032',
    question: 'The widely used RASS scale in ICU patients is used to measure what?',
    options: [
      'Level of delirium',
      'Pain score',
      'Degree of sedation and agitation',
      'Level of oxygenation',
      'Degree of neurologic deficit'
    ],
    correctAnswerIndex: 2,
    explanation: 'RASS (Richmond Agitation–Sedation Scale) evaluates sedation depth and agitation.',
    category: 'Common Clinical Concerns in Critical Care Medicine',
    difficulty: 2
  ),
  Question(
    id: 'common_clinical_concerns_critical_care_033',
    question: 'Which most strongly activates the renin–angiotensin system?',
    options: [
      'Hyperkalemia',
      'Hypoglycemia',
      'Hyponatremia',
      'Hypotension',
      'Hypercalcemia'
    ],
    correctAnswerIndex: 3,
    explanation: 'Hypotension → stimulates renal renin release → activates the RAS.',
    category: 'Common Clinical Concerns in Critical Care Medicine',
    difficulty: 2
  ),
  Question(
    id: 'common_clinical_concerns_critical_care_034',
    question: 'In an ICU patient with refractory hypotension, which is the most appropriate first vasopressor?',
    options: [
      'Dopamine',
      'Dobutamine',
      'Phenylephrine',
      'Noradrenaline (norepinephrine)',
      'Adrenaline (epinephrine)'
    ],
    correctAnswerIndex: 3,
    explanation: 'Norepinephrine is first-line in sepsis-related hypotension.',
    category: 'Common Clinical Concerns in Critical Care Medicine',
    difficulty: 2
  ),
  Question(
    id: 'common_clinical_concerns_critical_care_035',
    question: 'Which ventilator mode supports spontaneous breathing in ICU patients?',
    options: [
      'SIMV',
      'AC (assist-control)',
      'PSV (pressure support ventilation)',
      'IMV',
      'APRV'
    ],
    correctAnswerIndex: 2,
    explanation: 'PSV augments the patient\'s own spontaneous breaths.',
    category: 'Common Clinical Concerns in Critical Care Medicine',
    difficulty: 2
  ),
  Question(
    id: 'common_clinical_concerns_critical_care_036',
    question: 'In an ICU patient, if CVP is elevated with jugular venous distention and tachypnea, what should be considered first?',
    options: [
      'Hypovolemia',
      'Pulmonary embolism',
      'Cardiogenic shock',
      'Air embolism',
      'Volume overload'
    ],
    correctAnswerIndex: 2,
    explanation: 'High CVP + JVD points to right heart dysfunction/cardiogenic shock.',
    category: 'Common Clinical Concerns in Critical Care Medicine',
    difficulty: 2
  ),
  Question(
    id: 'common_clinical_concerns_critical_care_037',
    question: 'For monitoring renal function in ICU patients, which parameter is most specific?',
    options: [
      'Urea',
      'Creatinine',
      'Creatinine clearance',
      'Serum potassium',
      'GFR'
    ],
    correctAnswerIndex: 2,
    explanation: 'Creatinine clearance best reflects glomerular filtration rate (GFR).',
    category: 'Common Clinical Concerns in Critical Care Medicine',
    difficulty: 2
  ),
  Question(
    id: 'common_clinical_concerns_critical_care_038',
    question: 'What is the purpose of the CAM-ICU score?',
    options: [
      'Sedation depth',
      'Degree of respiratory failure',
      'Delirium screening',
      'Neuromuscular blockade monitoring',
      'Sepsis diagnosis'
    ],
    correctAnswerIndex: 2,
    explanation: 'CAM-ICU is used to assess delirium in ICU patients.',
    category: 'Common Clinical Concerns in Critical Care Medicine',
    difficulty: 2
  ),
  Question(
    id: 'common_clinical_concerns_critical_care_039',
    question: 'In the ICU, what is the first-line treatment for delirium tremens?',
    options: [
      'Haloperidol',
      'Propofol',
      'Diazepam',
      'Ketamine',
      'Dexmedetomidine'
    ],
    correctAnswerIndex: 2,
    explanation: 'Benzodiazepines (especially diazepam) are first-line for alcohol withdrawal.',
    category: 'Common Clinical Concerns in Critical Care Medicine',
    difficulty: 2
  ),
  Question(
    id: 'common_clinical_concerns_critical_care_040',
    question: 'In stage 4 pressure ulcer classification in ICU patients, which finding is characteristic?',
    options: [
      'Erythematous skin',
      'Epidermal loss',
      'Deep ulcer + involvement of muscle/fascia',
      'Serous vesicle with discharge',
      'Separation between intact epidermis and dermis'
    ],
    correctAnswerIndex: 2,
    explanation: 'Stage 4 involves deep tissue loss extending to muscle, fascia, or bone.',
    category: 'Common Clinical Concerns in Critical Care Medicine',
    difficulty: 2
  ),
  Question(
    id: 'common_clinical_concerns_critical_care_041',
    question: 'For pain assessment in the ICU, which scale is used for unconscious patients?',
    options: [
      'RASS',
      'CAM-ICU',
      'CPOT (Critical-Care Pain Observation Tool)',
      'APACHE II',
      'VAS'
    ],
    correctAnswerIndex: 2,
    explanation: 'CPOT evaluates behavioral responses to pain in non-communicative patients.',
    category: 'Common Clinical Concerns in Critical Care Medicine',
    difficulty: 2
  ),
  Question(
    id: 'common_clinical_concerns_critical_care_042',
    question: 'What is the most typical finding of TRALI (transfusion-related acute lung injury) in the ICU?',
    options: [
      'Hypertension',
      'Leukopenia',
      'Sudden-onset noncardiogenic pulmonary edema',
      'Hemolysis',
      'Thrombocytopenia'
    ],
    correctAnswerIndex: 2,
    explanation: 'TRALI is characterized by rapid-onset, noncardiogenic pulmonary edema after transfusion.',
    category: 'Common Clinical Concerns in Critical Care Medicine',
    difficulty: 2
  ),
  Question(
    id: 'common_clinical_concerns_critical_care_043',
    question: 'What is the most important risk factor for ventilator-associated pneumonia (VAP)?',
    options: [
      'Endotracheal intubation',
      'Use of high PEEP',
      'Hypotension',
      'Young age',
      'Diabetes mellitus'
    ],
    correctAnswerIndex: 0,
    explanation: 'Intubation disrupts airway defenses and facilitates bacterial colonization, making it the key risk factor for VAP.',
    category: 'Common Clinical Concerns in Critical Care Medicine',
    difficulty: 2
  ),
  Question(
    id: 'common_clinical_concerns_critical_care_044',
    question: 'Which type of acute kidney injury (AKI) is most common?',
    options: [
      'Prerenal',
      'Intrinsic renal',
      'Postrenal',
      'Glomerular',
      'Tubulointerstitial'
    ],
    correctAnswerIndex: 1,
    explanation: 'In the ICU, the most common AKI is intrinsic, typically acute tubular necrosis due to ischemia or nephrotoxicity.',
    category: 'Common Clinical Concerns in Critical Care Medicine',
    difficulty: 2
  ),
  Question(
    id: 'common_clinical_concerns_critical_care_045',
    question: 'Which intervention is the only evidence-based method proven to reduce mortality in ARDS treatment?',
    options: [
      'High-dose steroids',
      'Low tidal volume ventilation',
      'High PEEP',
      'Inhaled nitric oxide',
      'Prone positioning'
    ],
    correctAnswerIndex: 1,
    explanation: 'ARDSNet showed 6 mL/kg ideal body weight tidal volumes reduce mortality.',
    category: 'Common Clinical Concerns in Critical Care Medicine',
    difficulty: 2
  ),
  Question(
    id: 'common_clinical_concerns_critical_care_046',
    question: 'Which of the following is not an immediate complication after intubation?',
    options: [
      'Ventilator-associated pneumonia',
      'Esophageal intubation',
      'Dental trauma',
      'Hypotension',
      'Laryngospasm'
    ],
    correctAnswerIndex: 0,
    explanation: 'VAP typically develops ≥48 hours after intubation; the others can occur immediately.',
    category: 'Common Clinical Concerns in Critical Care Medicine',
    difficulty: 2
  ),
  Question(
    id: 'common_clinical_concerns_critical_care_047',
    question: 'What is the most common electrolyte disturbance in the ICU?',
    options: [
      'Hypernatremia',
      'Hyponatremia',
      'Hyperkalemia',
      'Hypocalcemia',
      'Hypermagnesemia'
    ],
    correctAnswerIndex: 1,
    explanation: 'Hyponatremia (≈15–30%) is most frequent due to fluid retention, SIADH, and diuretic use.',
    category: 'Common Clinical Concerns in Critical Care Medicine',
    difficulty: 2
  ),
  Question(
    id: 'common_clinical_concerns_critical_care_048',
    question: 'Which parameter is used to distinguish acute lung injury (ALI) from ARDS?',
    options: [
      'PaO₂/FiO₂ ratio',
      'PEEP level',
      'Lung compliance',
      'Respiratory rate',
      'PaCO₂ level'
    ],
    correctAnswerIndex: 0,
    explanation: 'ALI: PaO₂/FiO₂ 200–300 mmHg; ARDS: <200 mmHg.',
    category: 'Common Clinical Concerns in Critical Care Medicine',
    difficulty: 2
  ),
  Question(
    id: 'common_clinical_concerns_critical_care_049',
    question: 'Which is not a risk factor for TRALI?',
    options: [
      'Packed red blood cell transfusion',
      'Multiple transfusions',
      'Female donor plasma',
      'Donor with multiple pregnancies',
      'Presence of HLA antibodies'
    ],
    correctAnswerIndex: 0,
    explanation: 'TRALI is more often linked to plasma-containing products (FFP, platelets), not PRBCs.',
    category: 'Common Clinical Concerns in Critical Care Medicine',
    difficulty: 2
  ),
  Question(
    id: 'common_clinical_concerns_critical_care_050',
    question: 'What is the mechanism of action of prone positioning in ARDS treatment?',
    options: [
      'Re-expansion of posterior alveoli',
      'Increasing cardiac output',
      'Reducing pulmonary vascular resistance',
      'Increasing respiratory muscle strength',
      'Reducing bronchial secretions'
    ],
    correctAnswerIndex: 0,
    explanation: 'Prone improves V/Q matching by reopening dependent (posterior) alveoli.',
    category: 'Common Clinical Concerns in Critical Care Medicine',
    difficulty: 2
  ),
  Question(
    id: 'common_clinical_concerns_critical_care_051',
    question: 'Which of the following is not used as a vasopressor?',
    options: [
      'Milrinone',
      'Norepinephrine',
      'Dopamine',
      'Epinephrine',
      'Vasopressin'
    ],
    correctAnswerIndex: 0,
    explanation: 'Milrinone is a phosphodiesterase inhibitor with inotropic effects, not a vasopressor. The others are vasopressors.',
    category: 'Common Clinical Concerns in Critical Care Medicine',
    difficulty: 2
  ),
  Question(
    id: 'common_clinical_concerns_critical_care_052',
    question: 'What is the most common cause of weaning failure from the ventilator?',
    options: [
      'Ventilator-induced diaphragmatic dysfunction',
      'Cardiac failure',
      'Electrolyte disturbances',
      'Malnutrition',
      'Pain'
    ],
    correctAnswerIndex: 0,
    explanation: 'Prolonged mechanical ventilation leads to diaphragmatic atrophy/dysfunction, the leading cause of weaning failure.',
    category: 'Common Clinical Concerns in Critical Care Medicine',
    difficulty: 2
  ),
];
