import '../../models/question.dart';

List<Question> ambulatoryNonOperatingRoomAnesthesiaQuestions = [
  Question(
    id: 'ambulatory_non_operating_room_anesthesia_001',
    question: 'Which of the following is NOT a risk factor for postoperative nausea and vomiting (PONV) in ambulatory surgery?',
    options: [
      'Female gender',
      'Being a nonsmoker',
      'Use of sevoflurane',
      'Short surgical duration',
      'Opioid use'
    ],
    correctAnswerIndex: 3,
    explanation: 'PONV risk increases with female gender, nonsmoking status, opioid use, and volatile anesthetics. Short surgery does not increase the risk.',
    category: 'Ambulatory & Non-Operating Room Anesthesia',
    difficulty: 2
  ),
  Question(
    id: 'ambulatory_non_operating_room_anesthesia_002',
    question: 'Which ASA classification is most appropriate for ambulatory surgery?',
    options: [
      'ASA I–II patients',
      'Only ASA I',
      'ASA III–IV patients',
      'ASA IV–V patients',
      'Only ASA II and IV'
    ],
    correctAnswerIndex: 0,
    explanation: 'Ambulatory surgery is generally for ASA I–II patients. Carefully selected, compensated ASA III may also be considered.',
    category: 'Ambulatory & Non-Operating Room Anesthesia',
    difficulty: 2
  ),
  Question(
    id: 'ambulatory_non_operating_room_anesthesia_003',
    question: 'During an ambulatory endoscopic procedure, sudden bradycardia and hypotension most likely result from which reflex?',
    options: [
      'Hering–Breuer reflex',
      'Baroreceptor reflex',
      'Vagal reflex',
      'Bainbridge reflex',
      'Cushing reflex'
    ],
    correctAnswerIndex: 2,
    explanation: 'Gastrointestinal distension or manipulation can stimulate the vagus nerve → bradycardia + hypotension.',
    category: 'Ambulatory & Non-Operating Room Anesthesia',
    difficulty: 2
  ),
  Question(
    id: 'ambulatory_non_operating_room_anesthesia_004',
    question: 'Which sedative can also be administered intranasally for pediatric premedication?',
    options: [
      'Midazolam',
      'Propofol',
      'Ketamine',
      'Fentanyl',
      'Morphine'
    ],
    correctAnswerIndex: 0,
    explanation: 'Midazolam can be given orally, rectally, or intranasally in children — useful before IV access.',
    category: 'Ambulatory & Non-Operating Room Anesthesia',
    difficulty: 2
  ),
  Question(
    id: 'ambulatory_non_operating_room_anesthesia_005',
    question: 'Which sedative is considered most advantageous regarding postoperative agitation and nausea?',
    options: [
      'Propofol',
      'Midazolam',
      'Ketamine',
      'Dexmedetomidine',
      'Fentanyl'
    ],
    correctAnswerIndex: 0,
    explanation: 'Propofol has antiemetic effects and provides rapid recovery → low risk of agitation and PONV.',
    category: 'Ambulatory & Non-Operating Room Anesthesia',
    difficulty: 2
  ),
  Question(
    id: 'ambulatory_non_operating_room_anesthesia_006',
    question: 'Which of the following is NOT essential equipment for non-operating room anesthesia (NORA)?',
    options: [
      'Monitor (ECG, SpO₂, NIBP)',
      'Airway equipment',
      'Defibrillator',
      'Anesthesia machine',
      'Emergency drug kit'
    ],
    correctAnswerIndex: 3,
    explanation: 'Full anesthesia machine is not mandatory (since sedation is often used), but monitoring, airway, emergency drugs, and defibrillator are essential.',
    category: 'Ambulatory & Non-Operating Room Anesthesia',
    difficulty: 2
  ),
  Question(
    id: 'ambulatory_non_operating_room_anesthesia_007',
    question: 'Which is a common side effect of ketamine used for ambulatory sedation?',
    options: [
      'Respiratory depression',
      'Hypoalgesia',
      'Dysphoria and hallucinations',
      'Hypotension',
      'Reduced nausea and vomiting'
    ],
    correctAnswerIndex: 2,
    explanation: 'Ketamine may cause dysphoria, agitation, hallucinations (especially in adults). Can be reduced with benzodiazepines.',
    category: 'Ambulatory & Non-Operating Room Anesthesia',
    difficulty: 2
  ),
  Question(
    id: 'ambulatory_non_operating_room_anesthesia_008',
    question: 'Which of the following is NOT a discharge criterion after ambulatory anesthesia?',
    options: [
      'Stable vital signs',
      'Adequate consciousness and orientation',
      'Tolerable pain level',
      'Planning to go home alone',
      'Tolerating oral intake'
    ],
    correctAnswerIndex: 3,
    explanation: 'Ambulatory patients should not be discharged alone — they need safe transportation and supervision for 24 hours.',
    category: 'Ambulatory & Non-Operating Room Anesthesia',
    difficulty: 2
  ),
  Question(
    id: 'ambulatory_non_operating_room_anesthesia_009',
    question: 'Which inhalation agent is most suitable for ambulatory surgery?',
    options: [
      'Desflurane – rapid recovery',
      'Halothane – less cardiodepression',
      'Isoflurane – shortest duration',
      'Enflurane – for epileptic patients',
      'Methoxyflurane – widely used today'
    ],
    correctAnswerIndex: 0,
    explanation: 'Desflurane has the lowest blood/gas solubility → fastest emergence → ideal for ambulatory anesthesia.',
    category: 'Ambulatory & Non-Operating Room Anesthesia',
    difficulty: 2
  ),
  Question(
    id: 'ambulatory_non_operating_room_anesthesia_010',
    question: 'Which ambulatory anesthesia agent provides strong analgesia with the least risk of respiratory depression?',
    options: [
      'Morphine',
      'Fentanyl',
      'Ketamine',
      'Dexmedetomidine',
      'Meperidine'
    ],
    correctAnswerIndex: 2,
    explanation: 'Ketamine provides opioid-like analgesia without respiratory depression → useful in day-case anesthesia.',
    category: 'Ambulatory & Non-Operating Room Anesthesia',
    difficulty: 2
  ),
  Question(
    id: 'ambulatory_non_operating_room_anesthesia_011',
    question: 'A patient discharged after ambulatory surgery is awake, SpO₂ 96%, pain score 2/10, tolerating oral fluids, but vomited 3 times. Correct management?',
    options: [
      'Discharge home',
      'Give flumazenil',
      'Give additional sedation',
      'Extend observation period',
      'Give IV opioid'
    ],
    correctAnswerIndex: 3,
    explanation: 'Persistent vomiting = postop complication → patient should not be discharged, may require antiemetic and further monitoring.',
    category: 'Ambulatory & Non-Operating Room Anesthesia',
    difficulty: 2
  ),
  Question(
    id: 'ambulatory_non_operating_room_anesthesia_012',
    question: 'Which inhalation anesthetic is most suitable for rapid awakening and discharge in ambulatory surgery?',
    options: [
      'Halothane',
      'Isoflurane',
      'Sevoflurane',
      'Enflurane',
      'Desflurane'
    ],
    correctAnswerIndex: 4,
    explanation: 'Very low blood/gas solubility → rapid induction and emergence → ideal for ambulatory cases.',
    category: 'Ambulatory & Non-Operating Room Anesthesia',
    difficulty: 2
  ),
  Question(
    id: 'ambulatory_non_operating_room_anesthesia_013',
    question: 'Which parameter is NOT included in Aldrete scoring before discharge?',
    options: [
      'Respiration',
      'Circulation',
      'Activity',
      'Consciousness',
      'Body temperature'
    ],
    correctAnswerIndex: 4,
    explanation: 'Aldrete score includes activity, respiration, circulation, consciousness, and SpO₂ — not body temperature.',
    category: 'Ambulatory & Non-Operating Room Anesthesia',
    difficulty: 2
  ),
  Question(
    id: 'ambulatory_non_operating_room_anesthesia_014',
    question: 'Which is the best criterion to resume oral intake after ambulatory anesthesia?',
    options: [
      'Full consciousness and no nausea/vomiting',
      'At least 8 hours after surgery',
      'Short surgery duration',
      'Aldrete score of 5',
      'RR <25/min'
    ],
    correctAnswerIndex: 0,
    explanation: 'Patient must be awake and free of nausea/vomiting to safely resume oral intake.',
    category: 'Ambulatory & Non-Operating Room Anesthesia',
    difficulty: 2
  ),
  Question(
    id: 'ambulatory_non_operating_room_anesthesia_015',
    question: 'Most common safety deficiency in non-operating room anesthesia (NORA)?',
    options: [
      'Poor ventilation',
      'Inadequate monitoring',
      'Insufficient sedation',
      'Unnecessary antibiotics',
      'Excessive local anesthetic dose'
    ],
    correctAnswerIndex: 1,
    explanation: 'NORA settings often lack standard monitoring. Oxygenation and ventilation monitoring are critical.',
    category: 'Ambulatory & Non-Operating Room Anesthesia',
    difficulty: 2
  ),
  Question(
    id: 'ambulatory_non_operating_room_anesthesia_016',
    question: 'Most suitable muscle relaxant for ambulatory surgery?',
    options: [
      'Rocuronium',
      'Cisatracurium',
      'Succinylcholine',
      'Vecuronium',
      'Atracurium'
    ],
    correctAnswerIndex: 0,
    explanation: 'Rocuronium has rapid onset and intermediate duration; reversible with sugammadex → ideal for day-case surgery.',
    category: 'Ambulatory & Non-Operating Room Anesthesia',
    difficulty: 2
  ),
  Question(
    id: 'ambulatory_non_operating_room_anesthesia_017',
    question: 'Preferred IV fluid for ambulatory surgery?',
    options: [
      '5% Dextrose',
      '0.45% NaCl',
      'Ringer\'s lactate',
      'Normal saline',
      'Hypotonic glucose solution'
    ],
    correctAnswerIndex: 2,
    explanation: 'Ringer\'s lactate is isotonic, balanced, maintains electrolyte stability → preferred in day surgery.',
    category: 'Ambulatory & Non-Operating Room Anesthesia',
    difficulty: 2
  ),
  Question(
    id: 'ambulatory_non_operating_room_anesthesia_018',
    question: 'Typical sedation depth in ambulatory anesthesia?',
    options: [
      'Minimal sedation (anxiolysis)',
      'Light sedation (drowsy but responsive)',
      'Moderate sedation (delayed responses)',
      'Deep sedation (unconscious)',
      'General anesthesia'
    ],
    correctAnswerIndex: 1,
    explanation: 'Light sedation (patient drowsy but responds to commands) is usually chosen.',
    category: 'Ambulatory & Non-Operating Room Anesthesia',
    difficulty: 2
  ),
  Question(
    id: 'ambulatory_non_operating_room_anesthesia_019',
    question: 'Which practice reduces PONV risk in ambulatory surgery?',
    options: [
      'High-dose opioids',
      'Use of nitrous oxide',
      'Combining volatile agents',
      'TIVA (total IV anesthesia)',
      'Anticholinergic premedication only'
    ],
    correctAnswerIndex: 3,
    explanation: 'Propofol-based TIVA significantly reduces PONV risk → preferred in day surgery.',
    category: 'Ambulatory & Non-Operating Room Anesthesia',
    difficulty: 2
  ),
  Question(
    id: 'ambulatory_non_operating_room_anesthesia_020',
    question: 'Most common cardiac complication after sedation in NORA?',
    options: [
      'Tachycardia',
      'Arrhythmia',
      'Bradycardia',
      'Hypertension',
      'Ventricular fibrillation'
    ],
    correctAnswerIndex: 2,
    explanation: 'Opioids + propofol → vagal tone ↑ & sympathetic suppression → bradycardia common.',
    category: 'Ambulatory & Non-Operating Room Anesthesia',
    difficulty: 2
  ),
  Question(
    id: 'ambulatory_non_operating_room_anesthesia_021',
    question: 'Most common behavioral complication after pediatric ambulatory anesthesia?',
    options: [
      'Sleep apnea',
      'Respiratory depression',
      'Agitation (emergence delirium)',
      'Hiccups',
      'Excessive sedation'
    ],
    correctAnswerIndex: 2,
    explanation: 'Sevoflurane anesthesia often causes agitation/emergence delirium in children → usually transient.',
    category: 'Ambulatory & Non-Operating Room Anesthesia',
    difficulty: 2
  ),
  Question(
    id: 'ambulatory_non_operating_room_anesthesia_022',
    question: 'Average observation time after ambulatory surgery?',
    options: [
      '15 min',
      '30 min',
      '1 hour',
      '2–4 hours',
      '6–8 hours'
    ],
    correctAnswerIndex: 3,
    explanation: 'Observation is typically 2–4 hours; stable patients can then be safely discharged.',
    category: 'Ambulatory & Non-Operating Room Anesthesia',
    difficulty: 2
  ),
  Question(
    id: 'ambulatory_non_operating_room_anesthesia_023',
    question: 'Most common electrical hazard in NORA environments?',
    options: [
      'Electromagnetic interference',
      'Radiation exposure',
      'Fire',
      'Heat damage from RF ablation',
      'Device failure causing intubation difficulty'
    ],
    correctAnswerIndex: 0,
    explanation: 'NORA uses many devices and monitors → electromagnetic interference is the most frequent technical problem.',
    category: 'Ambulatory & Non-Operating Room Anesthesia',
    difficulty: 2
  ),
  Question(
    id: 'ambulatory_non_operating_room_anesthesia_024',
    question: 'Most common cause of delayed discharge after ambulatory surgery?',
    options: [
      'Hypertension',
      'Urinary retention',
      'Atelectasis',
      'Muscle rigidity',
      'Fever'
    ],
    correctAnswerIndex: 1,
    explanation: 'Especially in elderly men, urinary retention is the most frequent cause of delayed discharge.',
    category: 'Ambulatory & Non-Operating Room Anesthesia',
    difficulty: 2
  ),
  Question(
    id: 'ambulatory_non_operating_room_anesthesia_025',
    question: 'Which anesthetic technique is least preferred in ambulatory surgery?',
    options: [
      'Sedation + local anesthesia',
      'Spinal anesthesia',
      'TIVA',
      'General anesthesia',
      'Peripheral nerve block'
    ],
    correctAnswerIndex: 1,
    explanation: 'Spinal anesthesia may cause prolonged recovery, urinary retention, and hypotension → therefore less preferred in ambulatory settings.',
    category: 'Ambulatory & Non-Operating Room Anesthesia',
    difficulty: 2
  ),
  Question(
    id: 'ambulatory_non_operating_room_anesthesia_026',
    question: 'In NORA (Non-Operating Room Anesthesia), which department most frequently uses anesthesia?',
    options: [
      'Orthopedics',
      'Radiology',
      'Ophthalmology',
      'Gynecology',
      'ENT'
    ],
    correctAnswerIndex: 1,
    explanation: 'NORA is most commonly performed in interventional radiology (angiography, CT-guided biopsy, ablation, etc.).',
    category: 'Ambulatory & Non-Operating Room Anesthesia',
    difficulty: 2
  ),
  Question(
    id: 'ambulatory_non_operating_room_anesthesia_027',
    question: 'In NORA sedation, if ventilation becomes difficult, which airway device is first-line?',
    options: [
      'Endotracheal tube',
      'Laryngeal mask airway (LMA)',
      'Nasopharyngeal airway',
      'Cricothyrotomy',
      'Tracheostomy'
    ],
    correctAnswerIndex: 1,
    explanation: 'LMA is fast to insert, non-invasive, and provides effective airway → first-line when ventilation is difficult under sedation.',
    category: 'Ambulatory & Non-Operating Room Anesthesia',
    difficulty: 2
  ),
  Question(
    id: 'ambulatory_non_operating_room_anesthesia_028',
    question: 'What is the first-line antiemetic for nausea after ambulatory surgery?',
    options: [
      'Dexamethasone',
      'Ondansetron',
      'Metoclopramide',
      'Antihistamines',
      'Scopolamine'
    ],
    correctAnswerIndex: 1,
    explanation: 'Ondansetron, a 5-HT3 antagonist, is the first-line drug for postoperative nausea and vomiting (PONV) in day-case surgery.',
    category: 'Ambulatory & Non-Operating Room Anesthesia',
    difficulty: 2
  ),
  Question(
    id: 'ambulatory_non_operating_room_anesthesia_029',
    question: 'Which of the following is NOT a discharge criterion in ambulatory surgery?',
    options: [
      'Pain score ≥7/10',
      'Stable vital signs',
      'Tolerating oral intake',
      'Ability to mobilize',
      'Ability to hold head upright'
    ],
    correctAnswerIndex: 0,
    explanation: 'Discharge requires adequate pain control (≤4/10), not severe pain.',
    category: 'Ambulatory & Non-Operating Room Anesthesia',
    difficulty: 2
  ),
  Question(
    id: 'ambulatory_non_operating_room_anesthesia_030',
    question: 'Which of the following is NOT a risk factor for PONV in ambulatory surgery?',
    options: [
      'Male gender',
      'Smoking',
      'Opioid use',
      'History of motion sickness',
      'Non-invasive surgery'
    ],
    correctAnswerIndex: 0,
    explanation: 'Female gender, being a nonsmoker, prior PONV/motion sickness, and opioids increase risk.',
    category: 'Ambulatory & Non-Operating Room Anesthesia',
    difficulty: 2
  ),
  Question(
    id: 'ambulatory_non_operating_room_anesthesia_031',
    question: 'Most common complication in ambulatory surgery?',
    options: [
      'Nausea and vomiting (PONV)',
      'Respiratory depression',
      'Cardiac arrest',
      'Malignant hyperthermia',
      'Hypothermia'
    ],
    correctAnswerIndex: 0,
    explanation: 'PONV occurs in 20–30%. 5-HT3 antagonists (ondansetron) are used for prophylaxis.',
    category: 'Ambulatory & Non-Operating Room Anesthesia',
    difficulty: 2
  ),
  Question(
    id: 'ambulatory_non_operating_room_anesthesia_032',
    question: 'Preferred analgesia method in ambulatory surgery?',
    options: [
      'Multimodal analgesia (local anesthetic + NSAID + low-dose opioid)',
      'High-dose opioids',
      'Epidural analgesia',
      'Spinal anesthesia',
      'PCA morphine'
    ],
    correctAnswerIndex: 0,
    explanation: 'Multimodal approach minimizes opioid use → reduces PONV and sedation risk.',
    category: 'Ambulatory & Non-Operating Room Anesthesia',
    difficulty: 2
  ),
  Question(
    id: 'ambulatory_non_operating_room_anesthesia_033',
    question: 'Which equipment is contraindicated during anesthesia in an MRI environment?',
    options: [
      'MRI-compatible monitors',
      'Fiberoptic laryngoscope',
      'MRI-compatible infusion pumps',
      'Standard metal oxygen cylinder',
      'Plastic stethoscope'
    ],
    correctAnswerIndex: 3,
    explanation: 'Ferromagnetic equipment is strictly contraindicated in MRI. All devices must be MRI-safe.',
    category: 'Ambulatory & Non-Operating Room Anesthesia',
    difficulty: 2
  ),
  Question(
    id: 'ambulatory_non_operating_room_anesthesia_034',
    question: 'Most common premedication in pediatric ambulatory surgery?',
    options: [
      'Midazolam (oral/nasal)',
      'Morphine',
      'Atropine',
      'Ketamine',
      'Dexmedetomidine'
    ],
    correctAnswerIndex: 0,
    explanation: 'Midazolam provides anxiolysis, facilitates separation from parents, and can be given orally or intranasally.',
    category: 'Ambulatory & Non-Operating Room Anesthesia',
    difficulty: 2
  ),
  Question(
    id: 'ambulatory_non_operating_room_anesthesia_035',
    question: 'Most common reason for hospital readmission after ambulatory surgery?',
    options: [
      'Pain',
      'Bleeding',
      'Fever',
      'Confusion',
      'Urinary retention'
    ],
    correctAnswerIndex: 0,
    explanation: 'Inadequate analgesia is the leading cause of readmission → pain control before discharge is essential.',
    category: 'Ambulatory & Non-Operating Room Anesthesia',
    difficulty: 2
  ),
  Question(
    id: 'ambulatory_non_operating_room_anesthesia_036',
    question: 'Ideal neuromuscular blocker in ambulatory surgery?',
    options: [
      'Succinylcholine (short-acting)',
      'Rocuronium',
      'Vecuronium',
      'Atracurium',
      'Pancuronium'
    ],
    correctAnswerIndex: 0,
    explanation: 'Succinylcholine provides rapid onset and short duration → useful in day-case surgery (though MH risk must be considered).',
    category: 'Ambulatory & Non-Operating Room Anesthesia',
    difficulty: 2
  ),
  Question(
    id: 'ambulatory_non_operating_room_anesthesia_037',
    question: 'Suitable local anesthetic for spinal anesthesia in ambulatory surgery?',
    options: [
      'Low-dose bupivacaine + opioid',
      'High-dose lidocaine',
      'Prilocaine',
      'Ropivacaine',
      'Mepivacaine'
    ],
    correctAnswerIndex: 0,
    explanation: 'Low-dose bupivacaine with opioid prolongs analgesia, reduces motor block → early mobilization.',
    category: 'Ambulatory & Non-Operating Room Anesthesia',
    difficulty: 2
  ),
  Question(
    id: 'ambulatory_non_operating_room_anesthesia_038',
    question: 'Advantage of inhalation anesthetics in ambulatory surgery?',
    options: [
      'Rapid awakening (low blood/gas solubility)',
      'Bronchoconstriction',
      'Increased risk of delirium',
      'High hepatic metabolism',
      'Risk-free for malignant hyperthermia'
    ],
    correctAnswerIndex: 0,
    explanation: 'Desflurane & sevoflurane have low solubility → rapid recovery → ideal for outpatient anesthesia.',
    category: 'Ambulatory & Non-Operating Room Anesthesia',
    difficulty: 2
  ),
  Question(
    id: 'ambulatory_non_operating_room_anesthesia_039',
    question: 'Most common peripheral nerve block in ambulatory surgery?',
    options: [
      'Interscalene brachial plexus block (shoulder surgery)',
      'Epidural analgesia',
      'Spinal anesthesia',
      'Femoral nerve block',
      'Thoracic paravertebral block'
    ],
    correctAnswerIndex: 0,
    explanation: 'Interscalene block is common for upper extremity surgery → reduces opioid need and allows early discharge.',
    category: 'Ambulatory & Non-Operating Room Anesthesia',
    difficulty: 2
  ),
  Question(
    id: 'ambulatory_non_operating_room_anesthesia_040',
    question: 'Which is NOT a fast-track discharge criterion in ambulatory surgery?',
    options: [
      'Need for ICU admission',
      'Early oral intake',
      'Pain control',
      'Mobilization',
      'Absence of nausea/vomiting'
    ],
    correctAnswerIndex: 0,
    explanation: 'Fast-track = early discharge without complications. Patients requiring ICU are not candidates.',
    category: 'Ambulatory & Non-Operating Room Anesthesia',
    difficulty: 2
  ),
  Question(
    id: 'ambulatory_non_operating_room_anesthesia_041',
    question: 'Best opioid alternative for ambulatory surgery?',
    options: [
      'Diclofenac',
      'Morphine',
      'Meperidine',
      'Fentanyl',
      'Remifentanil'
    ],
    correctAnswerIndex: 0,
    explanation: 'NSAIDs like diclofenac reduce opioid requirements and PONV risk.',
    category: 'Ambulatory & Non-Operating Room Anesthesia',
    difficulty: 2
  ),
  Question(
    id: 'ambulatory_non_operating_room_anesthesia_042',
    question: 'Induction agent of choice in pediatric ambulatory surgery?',
    options: [
      'Sevoflurane',
      'Isoflurane',
      'Desflurane',
      'Halothane',
      'Nitrous oxide'
    ],
    correctAnswerIndex: 0,
    explanation: 'Sevoflurane provides smooth, rapid induction with no airway irritation → gold standard in pediatrics.',
    category: 'Ambulatory & Non-Operating Room Anesthesia',
    difficulty: 2
  ),
  Question(
    id: 'ambulatory_non_operating_room_anesthesia_043',
    question: 'Modified Aldrete score required for discharge in ambulatory surgery?',
    options: [
      '≥9',
      '≥5',
      '≥7',
      '≥12',
      '≥15'
    ],
    correctAnswerIndex: 0,
    explanation: 'Modified Aldrete includes respiration, circulation, consciousness, activity, SpO₂. A score ≥9 is required for discharge.',
    category: 'Ambulatory & Non-Operating Room Anesthesia',
    difficulty: 2
  ),
  Question(
    id: 'ambulatory_non_operating_room_anesthesia_044',
    question: 'Which of the following is NOT a discharge criterion in ambulatory surgery?',
    options: [
      'Pain score ≥7/10',
      'Stable vital signs',
      'Tolerating oral intake',
      'Ability to mobilize',
      'Ability to hold head upright'
    ],
    correctAnswerIndex: 0,
    explanation: 'Discharge requires adequate pain control (≤4/10), not severe pain.',
    category: 'Ambulatory & Non-Operating Room Anesthesia',
    difficulty: 2
  ),
];
