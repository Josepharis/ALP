import '../../models/question.dart';

List<Question> postanesthesiaCareQuestions = [
  Question(
    id: 'postanesthesia_care_001',
    question: 'Which of the following is one of the most common complications observed in patients admitted to the Post-Anesthesia Care Unit (PACU)?',
    options: [
      'Hyperglycemia',
      'Respiratory depression',
      'Hypocalcemia',
      'Epistaxis',
      'Acute renal failure'
    ],
    correctAnswerIndex: 1,
    explanation: 'Due to the effects of opioids, sedatives, and residual neuromuscular blockers, respiratory depression is one of the most common complications in the PACU.',
    category: 'Postanesthesia Care',
    difficulty: 2
  ),
  Question(
    id: 'postanesthesia_care_002',
    question: 'Which of the following is most likely to occur within the first 30 minutes of the post-anesthetic period?',
    options: [
      'Hypothermia',
      'Nausea and vomiting',
      'Bleeding',
      'Agitation and delirium',
      'Airway obstruction'
    ],
    correctAnswerIndex: 4,
    explanation: 'In the early minutes, the most critical complication is airway obstruction. This is often caused by tongue fall-back or loss of pharyngeal tone.',
    category: 'Postanesthesia Care',
    difficulty: 2
  ),
  Question(
    id: 'postanesthesia_care_003',
    question: 'Which of the following best defines adequate spontaneous respiration in the PACU?',
    options: [
      'Respiratory rate >16/min',
      'Tidal volume ≥ 5 mL/kg',
      'SpO₂ >85%',
      'Abdominal breathing',
      'Minute ventilation >4 L/min'
    ],
    correctAnswerIndex: 1,
    explanation: 'Tidal volume is one of the best indicators of adequate ventilation. A tidal volume ≥5 mL/kg is considered sufficient.',
    category: 'Postanesthesia Care',
    difficulty: 2
  ),
  Question(
    id: 'postanesthesia_care_004',
    question: 'Which of the following is not a discharge criterion from the PACU?',
    options: [
      'Oxygen saturation above 90%',
      'Stable vital signs',
      'Adequate consciousness',
      '10 minutes of observation after extubation',
      'Adequate postoperative pain control'
    ],
    correctAnswerIndex: 3,
    explanation: 'There is no fixed mandatory observation time. The criteria are stable vitals, consciousness, breathing, and pain control.',
    category: 'Postanesthesia Care',
    difficulty: 2
  ),
  Question(
    id: 'postanesthesia_care_005',
    question: 'Which of the following is the most common cardiovascular complication in the postoperative period?',
    options: [
      'Ventricular tachycardia',
      'Atrial fibrillation',
      'Myocardial infarction',
      'Sinus tachycardia',
      'Pulmonary embolism'
    ],
    correctAnswerIndex: 3,
    explanation: 'Sinus tachycardia is the most common postoperative arrhythmia, usually due to pain, hypovolemia, anxiety, or hypoxia.',
    category: 'Postanesthesia Care',
    difficulty: 2
  ),
  Question(
    id: 'postanesthesia_care_006',
    question: 'Which agent carries the highest risk of emergence agitation in the postoperative period?',
    options: [
      'Propofol',
      'Sevoflurane',
      'Ketamine',
      'Desflurane',
      'Etomidate'
    ],
    correctAnswerIndex: 1,
    explanation: 'Sevoflurane is particularly associated with emergence agitation/delirium in children.',
    category: 'Postanesthesia Care',
    difficulty: 2
  ),
  Question(
    id: 'postanesthesia_care_007',
    question: 'Which of the following is not a possible consequence of postoperative shivering?',
    options: [
      'Increases oxygen consumption',
      'Exacerbates pain',
      'Causes hypotension',
      'Increases heat production',
      'May cause metabolic acidosis'
    ],
    correctAnswerIndex: 2,
    explanation: 'Shivering typically does not cause hypotension. In fact, sympathetic activation can increase blood pressure.',
    category: 'Postanesthesia Care',
    difficulty: 2
  ),
  Question(
    id: 'postanesthesia_care_008',
    question: 'Which of the following drugs is used to treat postoperative urinary retention?',
    options: [
      'Ondansetron',
      'Neostigmine',
      'Atropine',
      'Dexamethasone',
      'Ketamine'
    ],
    correctAnswerIndex: 1,
    explanation: 'Neostigmine increases parasympathetic activity, stimulating the detrusor muscle and relieving urinary retention.',
    category: 'Postanesthesia Care',
    difficulty: 2
  ),
  Question(
    id: 'postanesthesia_care_009',
    question: 'Which of the following parameters is not included in the Aldrete score?',
    options: [
      'Respiration',
      'Circulation',
      'Activity',
      'Body temperature',
      'Consciousness'
    ],
    correctAnswerIndex: 3,
    explanation: 'The Aldrete score assesses respiration, circulation, activity, consciousness, and oxygen saturation. Body temperature is not included.',
    category: 'Postanesthesia Care',
    difficulty: 2
  ),
  Question(
    id: 'postanesthesia_care_010',
    question: 'Which of the following is a valid discharge criterion from the PACU?',
    options: [
      'SpO₂ ≥ 90% in room air',
      'Persistent confusion',
      'Blood pressure at 60% of preoperative baseline',
      'Ongoing IV analgesic requirement',
      'SpO₂ ≥ 90% with supplemental oxygen'
    ],
    correctAnswerIndex: 0,
    explanation: 'If SpO₂ ≥90% in room air, the patient can maintain oxygenation without supplemental oxygen → discharge is acceptable.',
    category: 'Postanesthesia Care',
    difficulty: 2
  ),
  Question(
    id: 'postanesthesia_care_011',
    question: 'Which of the following is least effective in preventing postoperative nausea and vomiting (PONV)?',
    options: [
      'Dexamethasone administration',
      'Propofol anesthesia',
      'Anticholinergic drug use',
      'Multimodal antiemetic use',
      'Limiting opioid use'
    ],
    correctAnswerIndex: 2,
    explanation: 'Anticholinergics are weak antiemetics; other strategies are evidence-based.',
    category: 'Postanesthesia Care',
    difficulty: 2
  ),
  Question(
    id: 'postanesthesia_care_012',
    question: 'Which respiratory complication is most likely to occur earliest after discharge from the PACU?',
    options: [
      'Pulmonary embolism',
      'Atelectasis',
      'Bronchospasm',
      'Aspiration pneumonia',
      'Air embolism'
    ],
    correctAnswerIndex: 1,
    explanation: 'Atelectasis is the most common and earliest occurring silent respiratory complication.',
    category: 'Postanesthesia Care',
    difficulty: 2
  ),
  Question(
    id: 'postanesthesia_care_013',
    question: 'Which is the most common metabolic disorder in the postoperative period?',
    options: [
      'Hypoglycemia',
      'Hyperkalemia',
      'Hypothermia',
      'Hypocalcemia',
      'Hyponatremia'
    ],
    correctAnswerIndex: 2,
    explanation: 'Heat loss during anesthesia is frequent; hypothermia is the most common metabolic disorder postoperatively.',
    category: 'Postanesthesia Care',
    difficulty: 2
  ),
  Question(
    id: 'postanesthesia_care_014',
    question: 'Which of the following scoring systems is used for consciousness assessment in the PACU?',
    options: [
      'Glasgow Coma Scale',
      'Aldrete score',
      'ASA score',
      'Braden score (pressure ulcer)',
      'SOFA score'
    ],
    correctAnswerIndex: 1,
    explanation: 'The Aldrete score evaluates consciousness, respiration, circulation, activity, and oxygen saturation.',
    category: 'Postanesthesia Care',
    difficulty: 2
  ),
  Question(
    id: 'postanesthesia_care_015',
    question: 'Which of the following is least associated with postoperative hypothermia?',
    options: [
      'Increased infection risk',
      'Coagulopathy',
      'Prolonged muscle relaxant effect',
      'Sinus tachycardia',
      'Hypoglycemia'
    ],
    correctAnswerIndex: 3,
    explanation: 'Hypothermia usually causes bradycardia. The other options are well-known complications.',
    category: 'Postanesthesia Care',
    difficulty: 2
  ),
  Question(
    id: 'postanesthesia_care_016',
    question: 'What is the first-line treatment for postoperative bronchospasm?',
    options: [
      'Epinephrine',
      'Salbutamol inhalation',
      'Antibiotics',
      'Corticosteroids',
      'Atropine'
    ],
    correctAnswerIndex: 1,
    explanation: 'Inhaled beta-2 agonists (e.g., salbutamol) are first-line therapy.',
    category: 'Postanesthesia Care',
    difficulty: 2
  ),
  Question(
    id: 'postanesthesia_care_017',
    question: 'Which of the following complications is most likely due to hypoxia in the postoperative period?',
    options: [
      'Metabolic alkalosis',
      'Hyperthermia',
      'Cardiac arrhythmias',
      'Hypokalemia',
      'Thrombosis'
    ],
    correctAnswerIndex: 2,
    explanation: 'Hypoxia increases myocardial irritability and can trigger arrhythmias.',
    category: 'Postanesthesia Care',
    difficulty: 2
  ),
  Question(
    id: 'postanesthesia_care_018',
    question: 'Which of the following is not part of the Aldrete score criteria in the PACU?',
    options: [
      'Respiration',
      'Consciousness',
      'Oxygen saturation (color/SpO₂)',
      'Muscle tone',
      'Circulation'
    ],
    correctAnswerIndex: 3,
    explanation: 'Muscle tone is not included. The Aldrete score assesses activity, respiration, circulation, consciousness, and oxygen saturation.',
    category: 'Postanesthesia Care',
    difficulty: 2
  ),
  Question(
    id: 'postanesthesia_care_019',
    question: 'Which of the following is among the first-line agents for treating acute hypertensive crisis in the PACU?',
    options: [
      'Dexamethasone',
      'Labetalol',
      'Epinephrine',
      'Ondansetron',
      'Diazepam'
    ],
    correctAnswerIndex: 1,
    explanation: 'Labetalol provides both alpha- and beta-blockade, reducing blood pressure in a controlled manner.',
    category: 'Postanesthesia Care',
    difficulty: 2
  ),
  Question(
    id: 'postanesthesia_care_020',
    question: 'What is the first treatment step for aspiration pneumonia in the PACU?',
    options: [
      'Broad-spectrum antibiotics',
      'Bronchodilator',
      'Endotracheal intubation and suctioning',
      'Nebulized epinephrine',
      'Sodium bicarbonate'
    ],
    correctAnswerIndex: 2,
    explanation: 'Clearing the airway is the first and most critical step in aspiration management.',
    category: 'Postanesthesia Care',
    difficulty: 2
  ),
  Question(
    id: 'postanesthesia_care_021',
    question: 'Which postoperative complication presents with increased muscle tone and hypertension?',
    options: [
      'Rebound pain',
      'Delirium',
      'Malignant hyperthermia',
      'Allergic reaction',
      'Post-dural puncture headache'
    ],
    correctAnswerIndex: 2,
    explanation: 'Malignant hyperthermia is characterized by rigidity, hypercarbia, hyperthermia, and hemodynamic instability.',
    category: 'Postanesthesia Care',
    difficulty: 2
  ),
  Question(
    id: 'postanesthesia_care_022',
    question: 'What is the Aldrete score used to assess?',
    options: [
      'Need for intubation',
      'Adequacy of emergence from anesthesia',
      'Diagnosis of respiratory failure',
      'Presence of arrhythmia',
      'Neuromuscular blocker antagonism'
    ],
    correctAnswerIndex: 1,
    explanation: 'The Aldrete score evaluates emergence from anesthesia based on respiration, circulation, consciousness, activity, and oxygen saturation.',
    category: 'Postanesthesia Care',
    difficulty: 2
  ),
  Question(
    id: 'postanesthesia_care_023',
    question: 'In which of the following situations should discharge from the PACU be delayed?',
    options: [
      'Aldrete score ≥9',
      'Stable vital signs',
      'Patient is alert',
      'Pain is not adequately controlled',
      'No nausea or vomiting'
    ],
    correctAnswerIndex: 3,
    explanation: 'The patient should not leave the PACU until pain is adequately controlled.',
    category: 'Postanesthesia Care',
    difficulty: 2
  ),
  Question(
    id: 'postanesthesia_care_024',
    question: 'Which drug class most commonly causes postoperative urinary retention?',
    options: [
      'Antibiotics',
      'Anticholinergics',
      'Anticoagulants',
      'Antipyretics',
      'Antihypertensives'
    ],
    correctAnswerIndex: 1,
    explanation: 'Anticholinergics inhibit the detrusor muscle → difficulty urinating.',
    category: 'Postanesthesia Care',
    difficulty: 2
  ),
  Question(
    id: 'postanesthesia_care_025',
    question: 'Which drug class is most effective for managing nausea and vomiting in post-anesthesia care?',
    options: [
      'NSAIDs',
      'Antihypertensives',
      '5-HT3 antagonists (ondansetron)',
      'Anticoagulants',
      'Antibiotics'
    ],
    correctAnswerIndex: 2,
    explanation: '5-HT3 antagonists like ondansetron are first-line for PONV.',
    category: 'Postanesthesia Care',
    difficulty: 2
  ),
  Question(
    id: 'postanesthesia_care_026',
    question: 'What is the usual observation time in the PACU?',
    options: [
      '15 minutes',
      '30 minutes',
      '1 hour',
      '2–4 hours',
      '6–8 hours'
    ],
    correctAnswerIndex: 3,
    explanation: 'Average PACU observation is 2–4 hours; the patient is transferred when stable.',
    category: 'Postanesthesia Care',
    difficulty: 2
  ),
  Question(
    id: 'postanesthesia_care_027',
    question: 'Which of the following is NOT a common cause of postoperative hypertension in the PACU?',
    options: [
      'Pain',
      'Hypervolemia',
      'Anxiety',
      'Hypothermia',
      'Hypoxia'
    ],
    correctAnswerIndex: 3,
    explanation: 'Hypothermia typically presents with bradycardia and hypotension, not hypertension.',
    category: 'Postanesthesia Care',
    difficulty: 2
  ),
  Question(
    id: 'postanesthesia_care_028',
    question: 'What is the minimum Aldrete score required for transfer from the PACU?',
    options: [
      '5',
      '6',
      '7',
      '8',
      '9'
    ],
    correctAnswerIndex: 4,
    explanation: 'The Aldrete score is out of 10; transfer generally requires ≥9 points.',
    category: 'Postanesthesia Care',
    difficulty: 2
  ),
  Question(
    id: 'postanesthesia_care_029',
    question: 'In a postoperative patient with tachycardia + tachypnea + chest pain, what should be considered first?',
    options: [
      'Atelectasis',
      'Bronchospasm',
      'Pulmonary embolism',
      'Hypothermia',
      'Hypercapnia'
    ],
    correctAnswerIndex: 2,
    explanation: 'When chest pain, tachypnea, and tachycardia coexist, PE must be in the differential.',
    category: 'Postanesthesia Care',
    difficulty: 2
  ),
  Question(
    id: 'postanesthesia_care_030',
    question: 'In a PACU patient who develops dyspnea and stridor, what should be considered first?',
    options: [
      'Atelectasis',
      'Aspiration',
      'Upper airway obstruction',
      'Pulmonary embolism',
      'Bronchospasm'
    ],
    correctAnswerIndex: 2,
    explanation: 'Stridor is typical of upper airway narrowing; the most common cause is posterior tongue displacement.',
    category: 'Postanesthesia Care',
    difficulty: 2
  ),
  Question(
    id: 'postanesthesia_care_031',
    question: 'In the PACU, with tachycardia + hypertension + agitation, what parameter should be assessed first?',
    options: [
      'Fundoscopy',
      'Blood glucose',
      'Aldrete score',
      'Pain level',
      'Pupillary reflex'
    ],
    correctAnswerIndex: 3,
    explanation: 'Pain is a frequent cause of hemodynamic changes and agitation; assess it first.',
    category: 'Postanesthesia Care',
    difficulty: 2
  ),
  Question(
    id: 'postanesthesia_care_032',
    question: 'What is the most likely cause of bradycardia developing in the PACU?',
    options: [
      'Hypothermia',
      'Excess fluid loading',
      'Hypoxemia',
      'Laryngospasm',
      'Pain'
    ],
    correctAnswerIndex: 0,
    explanation: 'Hypothermia increases parasympathetic activity → bradycardia.',
    category: 'Postanesthesia Care',
    difficulty: 2
  ),
  Question(
    id: 'postanesthesia_care_033',
    question: 'In postoperative agitation, what should be assessed first?',
    options: [
      'Pupillary response',
      'Presence of pain and hypoxia',
      'Electrolyte levels',
      'Respiratory rate',
      'Urine output'
    ],
    correctAnswerIndex: 1,
    explanation: 'The most common causes of agitation are pain and hypoxia; assess these first.',
    category: 'Postanesthesia Care',
    difficulty: 2
  ),
  Question(
    id: 'postanesthesia_care_034',
    question: 'In the PACU, the patient is hemodynamically stable but unresponsive; Aldrete score is 7. What is the most appropriate action?',
    options: [
      'Send the patient to the ward',
      'Start analgesic therapy',
      'Continue monitoring in the PACU',
      'Start an anticonvulsant',
      'Administer naloxone'
    ],
    correctAnswerIndex: 2,
    explanation: 'Patients with an Aldrete score below 9 should remain in the PACU for continued monitoring.',
    category: 'Postanesthesia Care',
    difficulty: 2
  ),
  Question(
    id: 'postanesthesia_care_035',
    question: 'What is the most effective treatment for postoperative hypothermia?',
    options: [
      'Forced-air warming',
      'Warm normal saline infusion',
      'Covering with a blanket',
      'Increasing room temperature',
      'Giving warm drinks'
    ],
    correctAnswerIndex: 0,
    explanation: 'Forced-air warming is the most effective; the others are less effective or impractical.',
    category: 'Postanesthesia Care',
    difficulty: 2
  ),
  Question(
    id: 'postanesthesia_care_036',
    question: 'Which postoperative finding is the earliest sign of malignant hyperthermia?',
    options: [
      'Generalized muscle rigidity',
      'Hypertension',
      'Tachycardia',
      'Skin flushing',
      'Fever'
    ],
    correctAnswerIndex: 0,
    explanation: 'The earliest sign is often difficulty with mask ventilation and generalized rigidity. Tachycardia, hypercapnia, and fever appear later.',
    category: 'Postanesthesia Care',
    difficulty: 2
  ),
  Question(
    id: 'postanesthesia_care_037',
    question: 'Which of the following is NOT used as a first-line agent in treating postoperative delirium?',
    options: [
      'Haloperidol',
      'Diazepam',
      'Risperidone',
      'Quetiapine',
      'Olanzapine'
    ],
    correctAnswerIndex: 1,
    explanation: 'Benzodiazepines (e.g., diazepam) can worsen delirium. Antipsychotics are used for treatment.',
    category: 'Postanesthesia Care',
    difficulty: 2
  ),
  Question(
    id: 'postanesthesia_care_038',
    question: 'Which of the following is NOT an early postoperative discharge criterion?',
    options: [
      'Resumption of oral intake',
      'Stable vital signs',
      'Controllable pain',
      'Adequate mental status',
      'Absence of nausea/vomiting'
    ],
    correctAnswerIndex: 0,
    explanation: 'Oral intake is not mandatory. The other items are core discharge criteria.',
    category: 'Postanesthesia Care',
    difficulty: 2
  ),
  Question(
    id: 'postanesthesia_care_039',
    question: 'Which of the following does NOT cause postoperative tachycardia?',
    options: [
      'Hypocapnia',
      'Pain',
      'Hypovolemia',
      'Hypoxia',
      'Bladder distension'
    ],
    correctAnswerIndex: 0,
    explanation: 'Pain, hypovolemia, hypoxia, and bladder distension can cause tachycardia; hypocapnia generally does not.',
    category: 'Postanesthesia Care',
    difficulty: 2
  ),
  Question(
    id: 'postanesthesia_care_040',
    question: 'Which of the following is NOT used in the first-line treatment of postoperative hypotension?',
    options: [
      'Dopamine',
      'Fluid resuscitation',
      'Trendelenburg position',
      'Oxygen supplementation',
      'Pain control'
    ],
    correctAnswerIndex: 0,
    explanation: 'First steps are fluids, Trendelenburg, oxygen, and pain control. Vasopressors like dopamine are for refractory hypotension.',
    category: 'Postanesthesia Care',
    difficulty: 2
  ),
  Question(
    id: 'postanesthesia_care_041',
    question: 'Which parameter is NOT included in the Modified Aldrete score?',
    options: [
      'Respiration',
      'Blood glucose',
      'Activity',
      'Circulation',
      'Oxygenation'
    ],
    correctAnswerIndex: 1,
    explanation: 'The Modified Aldrete score evaluates respiration, circulation, activity, oxygenation, and consciousness—not blood glucose.',
    category: 'Postanesthesia Care',
    difficulty: 2
  ),
  Question(
    id: 'postanesthesia_care_042',
    question: 'Which of the following is NOT a discharge criterion in the postoperative period?',
    options: [
      'Urine output >100 mL/hour',
      'Stable vital signs',
      'Tolerance of oral intake',
      'Adequate pain control',
      'Ability to ambulate'
    ],
    correctAnswerIndex: 0,
    explanation: 'Adequate urine output is >0.5 mL/kg/hour; >100 mL/hour is not required. The other items are core discharge criteria.',
    category: 'Postanesthesia Care',
    difficulty: 2
  ),
];
