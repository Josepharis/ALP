import '../../models/question.dart';

List<Question> sepsisArdsCriticalCareQuestions = [
  Question(
    id: 'sepsis_ards_001',
    question: 'Which of the following is not one of the qSOFA criteria?',
    options: [
      'Respiratory rate ≥22/min',
      'Altered mentation',
      'Fever >38°C',
      'Systolic blood pressure ≤100 mmHg',
      '—'
    ],
    correctAnswerIndex: 2,
    explanation: 'qSOFA criteria include: RR ≥22, altered mental status, SBP ≤100. Fever is not part of qSOFA scoring.',
    category: 'Sepsis & ARDS Critical Care',
    difficulty: 2
  ),
  Question(
    id: 'sepsis_ards_002',
    question: 'Which scoring system is recommended as the most practical for early sepsis recognition?',
    options: [
      'SOFA',
      'MELD',
      'qSOFA',
      'APACHE II',
      'SAPS II'
    ],
    correctAnswerIndex: 2,
    explanation: 'qSOFA is used for quick sepsis screening in the field and on the wards due to its simplicity and rapid assessment capability.',
    category: 'Sepsis & ARDS Critical Care',
    difficulty: 2
  ),
  Question(
    id: 'sepsis_ards_003',
    question: 'What is the most important mechanism in the pathophysiology of septic shock?',
    options: [
      'Hypervolemia',
      'Increased capillary permeability',
      'Hematopoietic suppression',
      'Hyperkalemia',
      'Increased parasympathetic activity'
    ],
    correctAnswerIndex: 1,
    explanation: 'Systemic inflammation leads to capillary leak, which is the key mechanism in septic shock pathophysiology.',
    category: 'Sepsis & ARDS Critical Care',
    difficulty: 2
  ),
  Question(
    id: 'sepsis_ards_004',
    question: 'Which scoring system is used for sepsis-associated acute kidney injury?',
    options: [
      'Ranson',
      'KDIGO',
      'CHA2DS2-VASc',
      'MELD',
      'Wells'
    ],
    correctAnswerIndex: 1,
    explanation: 'KDIGO (Kidney Disease: Improving Global Outcomes) is used to classify acute kidney injury severity.',
    category: 'Sepsis & ARDS Critical Care',
    difficulty: 2
  ),
  Question(
    id: 'sepsis_ards_005',
    question: 'What best monitors sepsis-associated liver dysfunction?',
    options: [
      'AST',
      'ALT',
      'GGT',
      'Total bilirubin',
      'Albumin'
    ],
    correctAnswerIndex: 3,
    explanation: 'In SOFA scoring, total bilirubin represents liver dysfunction assessment.',
    category: 'Sepsis & ARDS Critical Care',
    difficulty: 2
  ),
  Question(
    id: 'sepsis_ards_006',
    question: 'In a septic patient who is febrile but leukopenic, what should be considered?',
    options: [
      'Viral infection excluded',
      'Immunosuppression',
      'Malignancy',
      'Parasitic infection',
      'Antibiotic allergy'
    ],
    correctAnswerIndex: 1,
    explanation: 'Sepsis with leukopenia suggests a suppressed immune system, which is a significant concern in septic patients.',
    category: 'Sepsis & ARDS Critical Care',
    difficulty: 2
  ),
  Question(
    id: 'sepsis_ards_007',
    question: 'According to the Berlin definition, within what timeframe should ARDS develop?',
    options: [
      '24 hours',
      '72 hours',
      'Within 1 week',
      '10 days',
      '2 weeks'
    ],
    correctAnswerIndex: 2,
    explanation: 'ARDS should develop within 1 week of a known clinical insult according to the Berlin definition.',
    category: 'Sepsis & ARDS Critical Care',
    difficulty: 2
  ),
  Question(
    id: 'sepsis_ards_008',
    question: 'In an ARDS patient on a ventilator, what is the purpose of keeping plateau pressure <30 cmH₂O?',
    options: [
      'Increase hypercapnia',
      'Reduce volutrauma',
      'Promote barotrauma',
      'Speed CO₂ elimination',
      'Increase tidal volume'
    ],
    correctAnswerIndex: 1,
    explanation: 'Limiting plateau pressure helps prevent ventilator-induced lung injury and volutrauma.',
    category: 'Sepsis & ARDS Critical Care',
    difficulty: 2
  ),
  Question(
    id: 'sepsis_ards_009',
    question: 'What is the optimal daily duration for prone positioning in ARDS?',
    options: [
      '2 hours',
      '6 hours',
      '8–16 hours/day',
      'Nighttime only',
      'Continuous 24 hours'
    ],
    correctAnswerIndex: 2,
    explanation: 'Typically 12–16 hours per day are recommended for prone positioning in ARDS patients.',
    category: 'Sepsis & ARDS Critical Care',
    difficulty: 2
  ),
  Question(
    id: 'sepsis_ards_010',
    question: 'Which structure plays the primary role in ARDS inflammation?',
    options: [
      'Alveolar macrophage',
      'Bronchial epithelium',
      'Pleura',
      'Trachea',
      'Diaphragm'
    ],
    correctAnswerIndex: 0,
    explanation: 'Alveolar macrophages drive cytokine storm and inflammatory cascades in ARDS.',
    category: 'Sepsis & ARDS Critical Care',
    difficulty: 2
  ),
  Question(
    id: 'sepsis_ards_011',
    question: 'What is the fundamental fluid strategy in ARDS management?',
    options: [
      'Aggressive fluid loading',
      'Dry strategy – conservative fluids',
      'Large-volume fluids',
      'Hypotonic fluids',
      'Dextrose-heavy therapy'
    ],
    correctAnswerIndex: 1,
    explanation: 'Conservative fluids reduce pulmonary edema risk in ARDS management.',
    category: 'Sepsis & ARDS Critical Care',
    difficulty: 2
  ),
  Question(
    id: 'sepsis_ards_012',
    question: 'In an ARDS patient with no improvement in oxygenation despite prone positioning, what is the next step?',
    options: [
      'Increase antibiotic dose',
      'Give extra PEEP',
      'Evaluate for ECMO',
      'Administer fluid bolus',
      'Decrease FiO₂'
    ],
    correctAnswerIndex: 2,
    explanation: 'Consider ECMO when prone positioning and conventional measures fail to improve oxygenation.',
    category: 'Sepsis & ARDS Critical Care',
    difficulty: 2
  ),
  Question(
    id: 'sepsis_ards_013',
    question: 'Which of the following is one of the changes in the ARDS definition per the ESICM 2023 guideline?',
    options: [
      'Removal of the requirement for PEEP ≥5 cmH₂O',
      'Replacing PaO₂/FiO₂ with PaCO₂/FiO₂',
      'Making chest CT mandatory',
      'Restricting the definition to only invasively ventilated patients',
      'Limiting ARDS to COVID-19–related cases'
    ],
    correctAnswerIndex: 0,
    explanation: 'In the 2023 guideline, the PEEP ≥5 cmH₂O requirement was removed, allowing a broader group of patients to be classified as ARDS.',
    category: 'Sepsis & ARDS Critical Care',
    difficulty: 2
  ),
  Question(
    id: 'sepsis_ards_014',
    question: 'According to ESICM 2023, what tidal volume range is recommended for invasively ventilated ARDS patients?',
    options: [
      '10–12 mL/kg (ideal body weight)',
      '8–10 mL/kg (actual body weight)',
      '4–8 mL/kg (ideal body weight)',
      '4–6 mL/kg (actual body weight)',
      'Fixed 500 mL in all cases'
    ],
    correctAnswerIndex: 2,
    explanation: 'Low tidal volume ventilation (around 6–8 mL/kg ideal body weight) is central to lung-protective strategy.',
    category: 'Sepsis & ARDS Critical Care',
    difficulty: 2
  ),
  Question(
    id: 'sepsis_ards_015',
    question: 'Per ESICM 2023, what is the recommended minimum duration for prone positioning in ARDS?',
    options: [
      '1 hour',
      '4 hours',
      '8 hours',
      '12–16 hours',
      '24 hours'
    ],
    correctAnswerIndex: 3,
    explanation: 'For hypoxemic ARDS, prone ventilation should be applied for at least 12–16 hours.',
    category: 'Sepsis & ARDS Critical Care',
    difficulty: 2
  ),
  Question(
    id: 'sepsis_ards_016',
    question: 'Which is a target of low tidal volume ventilation per ESICM 2023?',
    options: [
      'Completely preventing hypercapnia',
      'Keeping plateau pressure <35 cmH₂O',
      'Keeping driving pressure <15 cmH₂O',
      'Keeping PEEP <5 cmH₂O',
      'Fixing minute ventilation'
    ],
    correctAnswerIndex: 2,
    explanation: 'Driving pressure (plateau pressure − PEEP) correlates with lung injury; keeping it <15 cmH₂O is advised.',
    category: 'Sepsis & ARDS Critical Care',
    difficulty: 2
  ),
  Question(
    id: 'sepsis_ards_017',
    question: 'Regarding high-flow nasal oxygen (HFNO) in ESICM 2023, which is most accurate?',
    options: [
      'Only for severe ARDS',
      'Recommended to replace invasive ventilation',
      'May delay/avoid intubation in mild–moderate ARDS',
      'Has no PEEP effect',
      'Suitable for out-of-hospital use'
    ],
    correctAnswerIndex: 2,
    explanation: 'HFNO can be used in mild–moderate ARDS to avoid intubation, with close monitoring and no delay if it fails.',
    category: 'Sepsis & ARDS Critical Care',
    difficulty: 2
  ),
  Question(
    id: 'sepsis_ards_018',
    question: 'What does ESICM 2023 say about recruitment maneuvers?',
    options: [
      'Routinely apply to all ARDS patients',
      'Always use a paralytic first',
      'May be considered cautiously in severe refractory hypoxemia',
      'They reduce mortality',
      'No contraindications'
    ],
    correctAnswerIndex: 2,
    explanation: 'Not recommended routinely; can be tried carefully in profound hypoxemia.',
    category: 'Sepsis & ARDS Critical Care',
    difficulty: 2
  ),
  Question(
    id: 'sepsis_ards_019',
    question: 'Most important factor for reducing ventilator-induced lung injury during invasive ventilation?',
    options: [
      'High FiO₂',
      'Increasing tidal volume',
      'Raising alveolar ventilation',
      'Limiting driving pressure',
      'Fixing respiratory rate'
    ],
    correctAnswerIndex: 3,
    explanation: 'Driving pressure is strongly linked to VILI; limiting it is key to preventing ventilator-induced lung injury.',
    category: 'Sepsis & ARDS Critical Care',
    difficulty: 2
  ),
  Question(
    id: 'sepsis_ards_020',
    question: 'In whom does prone positioning provide the greatest benefit per ESICM 2023?',
    options: [
      'Mild ARDS, cooperative patients',
      'Moderate–severe ARDS with PaO₂/FiO₂ <150 mmHg',
      'Acute asthma exacerbations',
      'ARDS with left ventricular failure',
      'Postoperative hypoxemia'
    ],
    correctAnswerIndex: 1,
    explanation: 'Strongly recommended when PaO₂/FiO₂ <150 mmHg in moderate to severe ARDS.',
    category: 'Sepsis & ARDS Critical Care',
    difficulty: 2
  ),
  Question(
    id: 'sepsis_ards_021',
    question: 'What is the most accurate statement about corticosteroid use in ARDS (ESICM 2023)?',
    options: [
      'Routine steroids for all ARDS',
      'Only in COVID-19 ARDS',
      'Consider carefully in moderate–severe ARDS',
      'Steroids lower VAP risk',
      'Low-dose steroids are strictly contraindicated'
    ],
    correctAnswerIndex: 2,
    explanation: 'May be individualized for moderate–severe ARDS, especially when inflammation predominates.',
    category: 'Sepsis & ARDS Critical Care',
    difficulty: 2
  ),
  Question(
    id: 'sepsis_ards_022',
    question: 'What does the guideline say about lung ultrasound (LUS) in ARDS diagnosis?',
    options: [
      'Inadequate and should not be used',
      'Only for effusion detection',
      'Superior to chest CT',
      'Useful at the bedside as an adjunct',
      'Ultrasound findings are the basis of the definition'
    ],
    correctAnswerIndex: 3,
    explanation: 'LUS assists bedside assessment (effusion, consolidation, aeration) but is not the primary diagnostic basis.',
    category: 'Sepsis & ARDS Critical Care',
    difficulty: 2
  ),
  Question(
    id: 'sepsis_ards_023',
    question: 'Which is true about "driving pressure" per ESICM 2023?',
    options: [
      'Used only in volume modes',
      'FiO₂ is used in its calculation',
      'Calculated as plateau pressure − PEEP',
      'Should be kept <25 cmH₂O',
      'High values relate to oxygenation only, not prognosis'
    ],
    correctAnswerIndex: 2,
    explanation: 'Target <15 cmH₂O when possible; higher values are linked to worse outcomes.',
    category: 'Sepsis & ARDS Critical Care',
    difficulty: 2
  ),
  Question(
    id: 'sepsis_ards_024',
    question: 'Target PaO₂ range during ventilation per ESICM 2023?',
    options: [
      '40–60 mmHg',
      '55–80 mmHg',
      '70–100 mmHg',
      '80–110 mmHg',
      '100–120 mmHg'
    ],
    correctAnswerIndex: 1,
    explanation: 'Balances adequate oxygenation with limiting oxygen toxicity risk.',
    category: 'Sepsis & ARDS Critical Care',
    difficulty: 2
  ),
  Question(
    id: 'sepsis_ards_025',
    question: 'Most accurate statement about a high-PEEP strategy per ESICM 2023?',
    options: [
      'Mandatory for all ARDS',
      'Prefer high PEEP in mild ARDS',
      'May be individualized in moderate–severe ARDS',
      'Always increases mortality',
      'PEEP is set solely by FiO₂ need'
    ],
    correctAnswerIndex: 2,
    explanation: 'Supported as a personalized approach in moderate–severe ARDS; assess response and tolerance.',
    category: 'Sepsis & ARDS Critical Care',
    difficulty: 2
  ),
  Question(
    id: 'sepsis_ards_026',
    question: 'Recommendation on neuromuscular blocking agents (NMBAs) per ESICM 2023?',
    options: [
      'Continuous infusion for all ARDS',
      'Not recommended; increases mortality',
      'Short-term use may be considered in severe ARDS',
      'Routine in mild ARDS',
      'Contraindicated in prone patients'
    ],
    correctAnswerIndex: 2,
    explanation: 'Short courses (up to ~48 h) can help in severe ARDS with dyssynchrony; prolonged use offers limited benefit.',
    category: 'Sepsis & ARDS Critical Care',
    difficulty: 2
  ),
  Question(
    id: 'sepsis_ards_027',
    question: 'Best approach to NIV use per ESICM 2023?',
    options: [
      'First-line for all ARDS',
      'May be tried in selected mild–moderate ARDS',
      'Apply aggressively to reduce mortality',
      'Contraindicated when PEEP is needed',
      'More effective with FiO₂ >0.8'
    ],
    correctAnswerIndex: 1,
    explanation: 'Consider in carefully selected patients, with close monitoring and readiness to intubate if failing.',
    category: 'Sepsis & ARDS Critical Care',
    difficulty: 2
  ),
  Question(
    id: 'sepsis_ards_028',
    question: 'Which is NOT a ventilator parameter emphasized in ESICM 2023 ARDS management?',
    options: [
      'Driving pressure',
      'Plateau pressure',
      'PEEP',
      'Vital capacity',
      'Tidal volume'
    ],
    correctAnswerIndex: 3,
    explanation: 'Vital capacity assesses spontaneous lung function, not a primary ventilator setting; the others are central in ARDS.',
    category: 'Sepsis & ARDS Critical Care',
    difficulty: 2
  ),
  Question(
    id: 'sepsis_ards_029',
    question: 'Which medication is NOT supported in ESICM 2023 for ARDS?',
    options: [
      'Corticosteroids',
      'NMBAs',
      'Vasopressors',
      'Nebulized beta-agonists',
      'Antibiotics'
    ],
    correctAnswerIndex: 3,
    explanation: 'Routine beta-agonist use is not recommended; other agents are used for specific indications.',
    category: 'Sepsis & ARDS Critical Care',
    difficulty: 2
  ),
  Question(
    id: 'sepsis_ards_030',
    question: 'Recommended core fluid strategy per ESICM 2023?',
    options: [
      'Liberal fluids',
      'Hyperhydration',
      'Fluid restriction aiming for a negative balance',
      'Intermittent hypervolemic infusions',
      'Routine albumin use'
    ],
    correctAnswerIndex: 2,
    explanation: 'A conservative/negative-balance approach helps limit pulmonary edema and improve oxygenation.',
    category: 'Sepsis & ARDS Critical Care',
    difficulty: 2
  ),
  Question(
    id: 'sepsis_ards_031',
    question: 'Which statement about "ultraprotective" ventilation is correct?',
    options: [
      'Tidal volume >10 mL/kg is recommended',
      'Keep PEEP at a minimum',
      'With ECMO, tidal volume can be reduced further',
      'This strategy increases mortality',
      'Used only in spontaneously breathing patients'
    ],
    correctAnswerIndex: 2,
    explanation: 'On ECMO, Vt can be lowered (even <4 mL/kg) to minimize VILI.',
    category: 'Sepsis & ARDS Critical Care',
    difficulty: 2
  ),
  Question(
    id: 'sepsis_ards_032',
    question: 'Primary criterion to guide intubation in hypoxemic respiratory failure per ESICM 2023?',
    options: [
      'PaO₂ alone',
      'Patient age and weight',
      'Hemodynamic stability',
      'Overall clinical status and response to oxygenation',
      'PaCO₂ level'
    ],
    correctAnswerIndex: 3,
    explanation: 'Decision is based on the full clinical picture—work of breathing, trajectory, and oxygenation response—not PaO₂ alone.',
    category: 'Sepsis & ARDS Critical Care',
    difficulty: 2
  ),
  Question(
    id: 'sepsis_ards_033',
    question: 'Which is considered a "rescue therapy" per ESICM 2023?',
    options: [
      'Parenteral nutrition',
      'High-dose diuretics',
      'Prone positioning',
      'Nebulized steroids',
      'Early tracheostomy'
    ],
    correctAnswerIndex: 2,
    explanation: 'Prone positioning (and ECMO) are rescue strategies in severe ARDS to improve oxygenation.',
    category: 'Sepsis & ARDS Critical Care',
    difficulty: 2
  ),
  Question(
    id: 'sepsis_ards_034',
    question: 'What plateau pressure target is recommended under invasive ventilation?',
    options: [
      '<20 cmH₂O',
      '<25 cmH₂O',
      '<28–30 cmH₂O',
      '>30 cmH₂O',
      '35–40 cmH₂O'
    ],
    correctAnswerIndex: 2,
    explanation: 'Keeping plateau pressure below ~28–30 cmH₂O reduces risk of lung injury.',
    category: 'Sepsis & ARDS Critical Care',
    difficulty: 2
  ),
  Question(
    id: 'sepsis_ards_035',
    question: 'Which statement about diuretics in ARDS management is correct?',
    options: [
      'Give to all ARDS patients routinely',
      'Only in hemodynamically unstable patients',
      'Use alongside a fluid-restriction strategy',
      'They are the cornerstone of ARDS therapy',
      'Never use diuretics'
    ],
    correctAnswerIndex: 2,
    explanation: 'When hemodynamics allow, diuretics complement conservative fluid management.',
    category: 'Sepsis & ARDS Critical Care',
    difficulty: 2
  ),
  Question(
    id: 'sepsis_ards_036',
    question: 'Which statement about sedation in ARDS per ESICM 2023 is correct?',
    options: [
      'Sedation depth should be individualized to patient needs',
      'Routine deep sedation for all patients',
      'Sedation depth must be reduced immediately after intubation in everyone',
      'Manage only with agonistic effects',
      'Sedation depth should strictly mirror ARDS severity'
    ],
    correctAnswerIndex: 0,
    explanation: 'Avoid unnecessary sedation; tailor depth to optimize comfort and ventilator synchrony.',
    category: 'Sepsis & ARDS Critical Care',
    difficulty: 2
  ),
  Question(
    id: 'sepsis_ards_037',
    question: 'Which of the following is one of the core components in the definition of sepsis?',
    options: [
      'Presence of bacteremia',
      'Hypotension and tachycardia',
      'Dysregulated host response to infection',
      'Leukocytosis and fever',
      'Positive bacterial cultures'
    ],
    correctAnswerIndex: 2,
    explanation: 'Sepsis is life-threatening organ dysfunction caused by a dysregulated host response to infection. The definition goes beyond the presence of infection and explicitly includes the host response.',
    category: 'Sepsis & ARDS Critical Care',
    difficulty: 2
  ),
  Question(
    id: 'sepsis_ards_038',
    question: 'Which is the correct approach regarding the use of the qSOFA score for sepsis screening?',
    options: [
      'qSOFA alone is recommended for screening',
      'qSOFA is more sensitive than SIRS',
      'It has been shown superior to NEWS and MEWS',
      'We do not recommend using qSOFA alone for screening',
      'It is the gold standard for diagnosing septic shock'
    ],
    correctAnswerIndex: 3,
    explanation: 'Compared with systems like SIRS, NEWS, and MEWS, guidelines do not recommend qSOFA as a stand-alone screening tool (strong recommendation, moderate-quality evidence).',
    category: 'Sepsis & ARDS Critical Care',
    difficulty: 2
  ),
  Question(
    id: 'sepsis_ards_039',
    question: 'In the initial assessment of a patient with suspected sepsis, which of the following is recommended?',
    options: [
      'Procalcitonin (PCT) measurement',
      'MR imaging',
      'Measurement of serum lactate level',
      'Bronchoscopy',
      'Colonoscopy'
    ],
    correctAnswerIndex: 2,
    explanation: 'If sepsis is suspected, checking serum lactate helps identify hypoperfusion and can guide resuscitation.',
    category: 'Sepsis & ARDS Critical Care',
    difficulty: 2
  ),
  Question(
    id: 'sepsis_ards_040',
    question: 'In which situation is administration of albumin recommended?',
    options: [
      'During the initial fluid resuscitation',
      'In non-septic hypovolemia',
      'In septic shock after inadequate response to crystalloids',
      'In mild sepsis',
      'For the treatment of anemia'
    ],
    correctAnswerIndex: 2,
    explanation: 'For septic shock patients who do not adequately respond to crystalloids, adding albumin can be considered (weak recommendation, low-quality evidence).',
    category: 'Sepsis & ARDS Critical Care',
    difficulty: 2
  ),
  Question(
    id: 'sepsis_ards_041',
    question: 'Which vasopressor is recommended as first-line?',
    options: [
      'Dopamine',
      'Epinephrine',
      'Phenylephrine',
      'Norepinephrine',
      'Vasopressin'
    ],
    correctAnswerIndex: 3,
    explanation: 'Norepinephrine is the first-choice vasopressor in septic shock (strong recommendation). Dopamine is not preferred due to arrhythmia risk.',
    category: 'Sepsis & ARDS Critical Care',
    difficulty: 2
  ),
  Question(
    id: 'sepsis_ards_042',
    question: 'In a patient with inadequate response to norepinephrine, which agent is recommended to add as a second vasopressor?',
    options: [
      'Dopamine',
      'Epinephrine',
      'Vasopressin',
      'Phenylephrine',
      'Milrinone'
    ],
    correctAnswerIndex: 2,
    explanation: 'Adding vasopressin at 0.03 U/min can support MAP targets as an adjunct vasoconstrictor.',
    category: 'Sepsis & ARDS Critical Care',
    difficulty: 2
  ),
  Question(
    id: 'sepsis_ards_043',
    question: 'When vasopressor therapy is required in septic shock, how should it preferably be administered?',
    options: [
      'Peripheral IV bolus',
      'Intramuscular injection',
      'Intraosseous route',
      'Continuous infusion via a central venous line',
      'Subcutaneous infusion'
    ],
    correctAnswerIndex: 3,
    explanation: 'Vasopressors should be infused continuously through a central line. Peripheral administration may be used briefly until central access is established.',
    category: 'Sepsis & ARDS Critical Care',
    difficulty: 2
  ),
  Question(
    id: 'sepsis_ards_044',
    question: 'Which vasopressor is not recommended in septic patients?',
    options: [
      'Norepinephrine',
      'Vasopressin',
      'Epinephrine',
      'Dopamine',
      'Phenylephrine'
    ],
    correctAnswerIndex: 3,
    explanation: 'Dopamine increases arrhythmias and has been associated with worse outcomes; it is not recommended as first- or second-line. Prefer norepinephrine.',
    category: 'Sepsis & ARDS Critical Care',
    difficulty: 2
  ),
  Question(
    id: 'sepsis_ards_045',
    question: 'Which is the most accurate approach to source control in sepsis?',
    options: [
      'Source control can be delayed',
      'Plan source control within 48 hours',
      'Consider source control only if surgery is required',
      'If clinically feasible, perform within the first 12 hours',
      'Undertake source control only after imaging'
    ],
    correctAnswerIndex: 3,
    explanation: 'Interventions targeting the infection focus (drainage, debridement, etc.) should be done as soon as possible, ideally within 12 hours, to reduce mortality.',
    category: 'Sepsis & ARDS Critical Care',
    difficulty: 2
  ),
  Question(
    id: 'sepsis_ards_046',
    question: 'Which statement about steroid use in septic patients is most accurate?',
    options: [
      'Routinely given to all patients',
      'First-line in septic shock',
      'Hydrocortisone only if hyperglycemia is present',
      'Consider in refractory hypotension despite norepinephrine',
      'Start based on SIRS criteria'
    ],
    correctAnswerIndex: 3,
    explanation: 'In vasopressor-refractory septic shock, hydrocortisone totaling 200 mg/day may be used. Not recommended routinely (weak recommendation).',
    category: 'Sepsis & ARDS Critical Care',
    difficulty: 2
  ),
  Question(
    id: 'sepsis_ards_047',
    question: 'Which statement about DVT prophylaxis in sepsis is correct?',
    options: [
      'No DVT prophylaxis is needed',
      'Only surgical patients require it',
      'Pharmacologic prophylaxis is preferred',
      'Recommend only if prior pulmonary embolism',
      'Start LMWH routinely even with bleeding risk'
    ],
    correctAnswerIndex: 2,
    explanation: 'Septic critically ill patients have high VTE risk. Pharmacologic prophylaxis (e.g., LMWH) is first-line; consider mechanical methods if bleeding risk is high.',
    category: 'Sepsis & ARDS Critical Care',
    difficulty: 2
  ),
  Question(
    id: 'sepsis_ards_048',
    question: 'Which statement about renal replacement therapy (RRT) in a septic patient is correct?',
    options: [
      'RRT should be delayed as long as possible',
      'Start RRT early in sepsis (prophylactically)',
      'Start when life-threatening complications occur',
      'Only if creatinine >4 mg/dL',
      'Not recommended in chronic kidney disease'
    ],
    correctAnswerIndex: 2,
    explanation: 'Initiate RRT for life-threatening issues such as fluid overload, hyperkalemia, or acidosis. Prophylactic early initiation is not recommended (weak recommendation).',
    category: 'Sepsis & ARDS Critical Care',
    difficulty: 2
  ),
  Question(
    id: 'sepsis_ards_049',
    question: 'Which is true regarding high-dose vitamin therapy?',
    options: [
      'Routine use is recommended',
      'Consider only in pediatric patients',
      'Efficacy is proven; it\'s standard care',
      'Use only within clinical research',
      'Give only if hypoglycemia is present'
    ],
    correctAnswerIndex: 3,
    explanation: 'High-dose vitamin C and similar combinations are not recommended in routine practice; consider only under research protocols.',
    category: 'Sepsis & ARDS Critical Care',
    difficulty: 2
  ),
  Question(
    id: 'sepsis_ards_050',
    question: 'Which statement about early warning systems in sepsis is correct?',
    options: [
      'qSOFA is ideal for screening in all settings',
      'SIRS is the most reliable for mortality prediction',
      'NEWS can be used for screening in emergency departments',
      'MEWS is not recommended outside the ICU',
      'Screening systems are only necessary in ICUs'
    ],
    correctAnswerIndex: 2,
    explanation: 'NEWS (National Early Warning Score) is recommended in EDs and wards for sepsis screening. qSOFA is better for out-of-hospital mortality prediction and is not advised as a screening tool.',
    category: 'Sepsis & ARDS Critical Care',
    difficulty: 2
  ),
  Question(
    id: 'sepsis_ards_051',
    question: 'Which is true about sedation in septic patients?',
    options: [
      'Deep sedation is recommended for all',
      'Prolonged paralysis is preferred',
      'If needed, NMBs should be continuous',
      'Targeted, as-light-as-possible sedation is recommended',
      'Sedation should completely abolish spontaneous effort'
    ],
    correctAnswerIndex: 3,
    explanation: 'Light, goal-directed sedation supports earlier weaning and shorter ICU stays. Avoid unnecessary deep sedation.',
    category: 'Sepsis & ARDS Critical Care',
    difficulty: 2
  ),
  Question(
    id: 'sepsis_ards_052',
    question: 'When is corticosteroid use recommended in septic shock?',
    options: [
      'Routinely in all patients',
      'Immediately after the first fluid bolus',
      'If refractory hypotension is present',
      'If lactate >4 mmol/L',
      'With low CRP'
    ],
    correctAnswerIndex: 2,
    explanation: 'In shock persisting despite vasopressors like norepinephrine, consider hydrocortisone 200 mg/day (weak recommendation).',
    category: 'Sepsis & ARDS Critical Care',
    difficulty: 2
  ),
  Question(
    id: 'sepsis_ards_053',
    question: 'Which of the following is not included among resuscitation targets in sepsis management?',
    options: [
      'Serum lactate levels',
      'ScvO₂',
      'MAP (mean arterial pressure)',
      'CVP (central venous pressure)',
      'PaO₂/FiO₂ ratio'
    ],
    correctAnswerIndex: 4,
    explanation: 'PaO₂/FiO₂ is important for ARDS/respiratory monitoring, not hemodynamic resuscitation. Typical targets include MAP, lactate, ScvO₂, and CVP.',
    category: 'Sepsis & ARDS Critical Care',
    difficulty: 2
  ),
  Question(
    id: 'sepsis_ards_054',
    question: 'Agents acting on the renin–angiotensin system (RAS) are suggested in sepsis primarily for what purpose?',
    options: [
      'Correct hypokalemia',
      'Reduce inflammation',
      'Prevent fluid retention',
      'Serve as an alternative vasopressor',
      'Overcome insulin resistance'
    ],
    correctAnswerIndex: 3,
    explanation: 'Angiotensin II has been proposed as an alternative vasopressor in refractory septic shock, typically as a second- or third-line agent.',
    category: 'Sepsis & ARDS Critical Care',
    difficulty: 2
  ),
  Question(
    id: 'sepsis_ards_055',
    question: 'Which of the following is not a parameter tracked to achieve hemodynamic goals in sepsis?',
    options: [
      'MAP ≥65 mmHg',
      'Normalized lactate',
      'ScvO₂ >70%',
      'CVP 8–12 mmHg',
      'PaCO₂/PaO₂ ratio >200'
    ],
    correctAnswerIndex: 4,
    explanation: 'The PaCO₂/PaO₂ ratio pertains to respiratory status and is not a hemodynamic goal in sepsis; the others guide fluid responsiveness and perfusion.',
    category: 'Sepsis & ARDS Critical Care',
    difficulty: 2
  ),
  Question(
    id: 'sepsis_ards_056',
    question: 'Which criterion is not mandatory for the diagnosis of sepsis?',
    options: [
      'Suspected infection',
      'Organ dysfunction',
      'Lactate >2 mmol/L',
      'Dysregulated host response',
      'Increase in SOFA score'
    ],
    correctAnswerIndex: 2,
    explanation: 'Lactate >2 mmol/L features in septic shock criteria, not required for sepsis. Sepsis is infection plus an increase in SOFA ≥2.',
    category: 'Sepsis & ARDS Critical Care',
    difficulty: 2
  ),
  Question(
    id: 'sepsis_ards_057',
    question: 'What is the main aim of de-escalation in antibiotic therapy?',
    options: [
      'Suppress resistant bacteria',
      'Increase cost',
      'Prolong use of broad-spectrum agents',
      'Increase side effects',
      'Promote early resistance'
    ],
    correctAnswerIndex: 0,
    explanation: 'After empiric treatment, narrowing therapy based on cultures/susceptibilities (de-escalation) reduces resistance, side effects, and optimizes duration.',
    category: 'Sepsis & ARDS Critical Care',
    difficulty: 2
  ),
  Question(
    id: 'sepsis_ards_058',
    question: 'In a septic patient with normal serum lactate but persistent hypotension, which interpretation is most appropriate?',
    options: [
      'Septic shock is excluded',
      'Treatment can be delayed',
      'Loss of vascular tone is present—shock may still exist',
      'Antibiotics should not be given',
      'Fluid resuscitation is contraindicated'
    ],
    correctAnswerIndex: 2,
    explanation: 'Even with normal lactate, persistent hypotension suggests vasodilatory septic shock and still requires urgent management.',
    category: 'Sepsis & ARDS Critical Care',
    difficulty: 2
  ),
  Question(
    id: 'sepsis_ards_059',
    question: 'In patients with possible sepsis but without shock, when should antimicrobials be started?',
    options: [
      'Immediately',
      'Within 1 hour',
      'Within 3 hours',
      'Within 6 hours',
      'Within 24 hours'
    ],
    correctAnswerIndex: 2,
    explanation: 'For non-shock patients with possible sepsis, after rapid assessment, if suspicion persists, start antimicrobials within the first 3 hours of recognizing sepsis.',
    category: 'Sepsis & ARDS Critical Care',
    difficulty: 2
  ),
];
