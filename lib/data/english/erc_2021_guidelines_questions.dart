import '../../models/question.dart';

List<Question> erc2021GuidelinesQuestions = [
  Question(
    id: 'erc_2021_001',
    question: 'According to the ERC 2021 guidelines, which of the following should be used as the main indicator in diagnosing cardiac arrest?',
    options: [
      'Absence of pulse',
      'Absence of heart sounds',
      'Absence of breathing or agonal breathing',
      'Pale skin color',
      'Loss of consciousness'
    ],
    correctAnswerIndex: 2,
    explanation: 'The ERC 2021 guidelines state that absence of breathing or agonal breathing is a reliable sign of cardiac arrest.',
    category: 'ERC 2021 Guidelines',
    difficulty: 2
  ),
  Question(
    id: 'erc_2021_007',
    question: 'According to ERC 2021, what is the preferred order of routes for drug administration during cardiac arrest?',
    options: [
      'Oral > Subcutaneous > IV > IO',
      'IV > IO > ET',
      'IO > IV > IM',
      'Subcutaneous > IV > IO',
      'ET > IO > IV'
    ],
    correctAnswerIndex: 1,
    explanation: 'IV is preferred first. If IV access is not possible, IO is used. ET (endotracheal) route is not recommended due to unreliability.',
    category: 'ERC 2021 Guidelines',
    difficulty: 2
  ),
  Question(
    id: 'erc_2021_008',
    question: 'Which of the following is a rhythm requiring defibrillation?',
    options: [
      'Asystole',
      'Ventricular tachycardia with a pulse',
      'Ventricular fibrillation',
      'Sinus bradycardia',
      'Pulseless electrical activity (PEA)'
    ],
    correctAnswerIndex: 2,
    explanation: 'Defibrillation rhythms: ventricular fibrillation (VF) and pulseless ventricular tachycardia (VT).',
    category: 'ERC 2021 Guidelines',
    difficulty: 2
  ),
  Question(
    id: 'erc_2021_009',
    question: 'According to ERC 2021, when should adrenaline be administered first?',
    options: [
      'At the very beginning in every case',
      'When a rhythm with a pulse is present',
      'Immediately in asystole and PEA',
      'Before the first defibrillation in VT/VF',
      'After the 3rd defibrillation in VT/VF'
    ],
    correctAnswerIndex: 2,
    explanation: 'In asystole and PEA, adrenaline should be given without delay.',
    category: 'ERC 2021 Guidelines',
    difficulty: 2
  ),
  Question(
    id: 'erc_2021_010',
    question: 'When should amiodarone be given during resuscitation?',
    options: [
      'During ventricular tachycardia with a pulse',
      'In asystole',
      'After the 3rd defibrillation',
      'Before the 1st defibrillation',
      'After termination of VT/VF'
    ],
    correctAnswerIndex: 2,
    explanation: 'In refractory VF/VT, amiodarone is recommended after the 3rd defibrillation.',
    category: 'ERC 2021 Guidelines',
    difficulty: 2
  ),
  Question(
    id: 'erc_2021_012',
    question: 'In a patient with pulseless electrical activity (PEA), what is the priority treatment?',
    options: [
      'Immediate defibrillation',
      'Administration of atropine',
      'Rapid intubation',
      'Rapid administration of adrenaline',
      'Starting lidocaine infusion'
    ],
    correctAnswerIndex: 3,
    explanation: 'PEA is a non-shockable rhythm. Treatment: adrenaline + correction of reversible causes.',
    category: 'ERC 2021 Guidelines',
    difficulty: 2
  ),
  Question(
    id: 'erc_2021_013',
    question: 'According to ERC 2021, what is the recommended chest compression depth in pediatric basic life support?',
    options: [
      '1/4 chest depth',
      '1/3 chest depth',
      'Fixed 4 cm',
      'Fixed 5 cm',
      'Fixed 6 cm'
    ],
    correctAnswerIndex: 1,
    explanation: 'In pediatric CPR, compressions should be about one-third of the anterior-posterior chest depth.',
    category: 'ERC 2021 Guidelines',
    difficulty: 2
  ),
  Question(
    id: 'erc_2021_016',
    question: 'What is the recommended target temperature range for post-ROSC temperature management?',
    options: [
      '32–34°C',
      '33–36°C',
      '34–36°C',
      '35–37°C',
      '>38°C'
    ],
    correctAnswerIndex: 1,
    explanation: 'ERC recommends a target temperature between 33–36°C after ROSC.',
    category: 'ERC 2021 Guidelines',
    difficulty: 2
  ),
  Question(
    id: 'erc_2021_017',
    question: 'According to ERC 2021, what is the fourth link in the chain of survival?',
    options: [
      'Basic life support',
      'Early defibrillation',
      'Advanced life support',
      'Post-hospital care and rehabilitation',
      'Diagnosis'
    ],
    correctAnswerIndex: 3,
    explanation: 'The final link is post-hospital care and neurological recovery.',
    category: 'ERC 2021 Guidelines',
    difficulty: 2
  ),
  Question(
    id: 'erc_2021_019',
    question: 'In two-rescuer CPR, what is the recommended compression-to-ventilation ratio according to ERC 2021?',
    options: [
      '15:1',
      '15:2',
      '30:2',
      '30:1',
      'Continuous ventilation'
    ],
    correctAnswerIndex: 2,
    explanation: 'In both single and two-rescuer BLS, the ratio is 30:2.',
    category: 'ERC 2021 Guidelines',
    difficulty: 2
  ),
  Question(
    id: 'erc_2021_020',
    question: 'What is the most reliable indicator of ROSC during cardiac arrest?',
    options: [
      'Onset of spontaneous breathing',
      'Myoclonic jerks',
      'Return of pupillary reflex',
      'Sudden rise in end-tidal CO₂',
      'Eye blinking'
    ],
    correctAnswerIndex: 3,
    explanation: 'A sudden increase in EtCO₂ is the earliest and most reliable indicator of ROSC.',
    category: 'ERC 2021 Guidelines',
    difficulty: 2
  ),
  Question(
    id: 'erc_2021_022',
    question: 'According to ERC 2021, what is the most important factor increasing defibrillation success?',
    options: [
      'Administering before adrenaline',
      'Starting with low energy',
      'Minimizing interruptions in chest compressions',
      'IV fluid bolus',
      'Performing endotracheal intubation'
    ],
    correctAnswerIndex: 2,
    explanation: 'Defibrillation success improves with minimal CPR interruptions before and after the shock.',
    category: 'ERC 2021 Guidelines',
    difficulty: 2
  ),
  Question(
    id: 'erc_2021_028',
    question: 'In basic life support, when is rescue ventilation mandatory according to ERC?',
    options: [
      'Cardiac arrest of cardiac origin',
      'Unconscious adult',
      'Respiratory arrest',
      'Syncope under observation',
      'Hypotension'
    ],
    correctAnswerIndex: 2,
    explanation: 'When arrest is due to respiratory causes (e.g., drowning), ventilation is mandatory.',
    category: 'ERC 2021 Guidelines',
    difficulty: 2
  ),
  Question(
    id: 'erc_2021_029',
    question: 'In which situation is termination of resuscitation recommended during CPR?',
    options: [
      'No pulse detected in the first 2 minutes',
      'After 30 minutes of unsuccessful CPR and absence of advanced life support',
      'Pupillary dilation during CPR',
      'No response after adrenaline',
      'VF persists'
    ],
    correctAnswerIndex: 1,
    explanation: 'If ROSC is not achieved despite prolonged effective CPR, termination may be considered if conditions allow.',
    category: 'ERC 2021 Guidelines',
    difficulty: 2
  ),
  Question(
    id: 'erc_2021_032',
    question: 'When should neurological evaluation be performed after ROSC?',
    options: [
      'Immediately after intubation',
      'Within the first 10 minutes',
      'After normothermia is achieved',
      'After the first defibrillation',
      'Before starting CPR'
    ],
    correctAnswerIndex: 2,
    explanation: 'For reliable assessment, neurological evaluation should be performed after normothermia is achieved.',
    category: 'ERC 2021 Guidelines',
    difficulty: 2
  ),
  Question(
    id: 'erc_2021_033',
    question: 'According to ERC, what is the first intervention in a child with respiratory arrest?',
    options: [
      '5 initial rescue breaths',
      'Adrenaline injection',
      'Pulse check',
      'Intubation',
      'Chest compressions'
    ],
    correctAnswerIndex: 0,
    explanation: 'In pediatric arrest (usually respiratory in origin), start with 5 rescue breaths.',
    category: 'ERC 2021 Guidelines',
    difficulty: 2
  ),
  Question(
    id: 'erc_2021_034',
    question: 'According to ERC 2021, what is the initial biphasic shock energy for defibrillation?',
    options: [
      '50 J',
      '70 J',
      '100 J',
      '120–200 J',
      '360 J'
    ],
    correctAnswerIndex: 3,
    explanation: 'Modern biphasic defibrillators start at 120–200 joules.',
    category: 'ERC 2021 Guidelines',
    difficulty: 2
  ),
  Question(
    id: 'erc_2021_036',
    question: 'During CPR, if oxygen administration is required, which method should be preferred?',
    options: [
      'Nasal cannula',
      'Face mask',
      'Simple oxygen mask',
      'Bag-valve mask + 100% O₂',
      'Nebulizer system'
    ],
    correctAnswerIndex: 3,
    explanation: 'The most effective oxygen delivery: bag-valve mask with 100% O₂.',
    category: 'ERC 2021 Guidelines',
    difficulty: 2
  ),
  Question(
    id: 'erc_2021_038',
    question: 'Which of the following is one of the reversible causes of cardiac arrest known as the "H\'s and T\'s"?',
    options: [
      'Hypercalcemia',
      'Hypothermia',
      'Hypercholesterolemia',
      'Hypoglycemia',
      'Hypovitaminosis'
    ],
    correctAnswerIndex: 1,
    explanation: 'H\'s & T\'s include: hypovolemia, hypoxia, H+ (acidosis), hypo-/hyperkalemia, hypothermia, etc.',
    category: 'ERC 2021 Guidelines',
    difficulty: 2
  ),
  Question(
    id: 'erc_2021_041',
    question: 'According to ERC, what should be the ratio of compression to relaxation time during CPR for best results?',
    options: [
      'Compression should be prolonged',
      'Relaxation should be shortened',
      'Compression and relaxation times should be equal',
      'Relaxation should be ignored',
      'Random application'
    ],
    correctAnswerIndex: 2,
    explanation: 'Compression and relaxation should be equal → allows optimal cardiac filling.',
    category: 'ERC 2021 Guidelines',
    difficulty: 2
  ),
  Question(
    id: 'erc_2021_042',
    question: 'According to ERC 2021, what is the first step before using an AED in unwitnessed arrest?',
    options: [
      '5 minutes of CPR',
      'Immediate AED attachment',
      '2 rescue breaths',
      'Wait for 1 minute',
      'Call for help and start CPR'
    ],
    correctAnswerIndex: 4,
    explanation: 'In unwitnessed arrest: call for help + start CPR first.',
    category: 'ERC 2021 Guidelines',
    difficulty: 2
  ),
  Question(
    id: 'erc_2021_043',
    question: 'What is the recommended compression-to-ventilation ratio in pediatric CPR when two rescuers are present?',
    options: [
      '15:2',
      '30:2',
      '5:1',
      '10:2',
      '3:1'
    ],
    correctAnswerIndex: 0,
    explanation: 'In pediatric CPR with two rescuers, the ratio is 15:2.',
    category: 'ERC 2021 Guidelines',
    difficulty: 2
  ),
  Question(
    id: 'erc_2021_050',
    question: 'According to ERC 2021, how often should rescuers switch roles during CPR?',
    options: [
      'Every 30 seconds',
      'Every 1 minute',
      'Every 2 minutes',
      'Every 5 minutes',
      'Every 10 minutes'
    ],
    correctAnswerIndex: 2,
    explanation: 'Rescuers should rotate every 2 minutes to avoid fatigue and maintain quality.',
    category: 'ERC 2021 Guidelines',
    difficulty: 2
  ),
  Question(
    id: 'erc_2021_052',
    question: 'If ventricular fibrillation persists during cardiac arrest, which antiarrhythmic is preferred after the 3rd defibrillation?',
    options: [
      'Lidocaine',
      'Atropine',
      'Adenosine',
      'Amiodarone',
      'Digoxin'
    ],
    correctAnswerIndex: 3,
    explanation: 'In refractory VF/VT, amiodarone is administered after the 3rd defibrillation.',
    category: 'ERC 2021 Guidelines',
    difficulty: 2
  ),
  Question(
    id: 'erc_2021_054',
    question: 'According to the ERC 2021 guidelines, what is the initial approach in drowning-related arrests?',
    options: [
      'Defibrillation',
      'Start CPR immediately',
      'Deliver 5 rescue breaths',
      'Compression-only',
      'Start IV fluids'
    ],
    correctAnswerIndex: 2,
    explanation: 'In hypoxemic arrests such as drowning, start with 5 rescue breaths.',
    category: 'ERC 2021 Guidelines',
    difficulty: 2
  ),
  Question(
    id: 'erc_2021_056',
    question: 'According to ERC 2021, which intervention has priority in trauma-related arrests?',
    options: [
      'Craniotomy',
      'Chest drainage',
      'Airway opening and oxygenation',
      'Defibrillation',
      'Adenosine administration'
    ],
    correctAnswerIndex: 2,
    explanation: 'In traumatic arrest, airway and oxygenation take priority.',
    category: 'ERC 2021 Guidelines',
    difficulty: 2
  ),
  Question(
    id: 'erc_2021_057',
    question: 'According to the guidelines, which device best assesses CPR quality?',
    options: [
      'AED',
      'Pulse oximeter',
      'Capnograph',
      'ECG monitor',
      'Glucometer'
    ],
    correctAnswerIndex: 2,
    explanation: 'Capnography is the best indicator for monitoring CPR effectiveness.',
    category: 'ERC 2021 Guidelines',
    difficulty: 2
  ),
  Question(
    id: 'erc_2021_058',
    question: 'Which is the most important factor for neurological recovery after ROSC?',
    options: [
      'Adrenaline dose',
      'Number of AEDs used',
      'Early hypothermia protocol',
      'Early physical therapy',
      'Contents of the first-aid kit'
    ],
    correctAnswerIndex: 2,
    explanation: 'Targeted temperature management is recommended to reduce neurological injury.',
    category: 'ERC 2021 Guidelines',
    difficulty: 2
  ),
  Question(
    id: 'erc_2021_060',
    question: 'During CPR, if airway obstruction is suspected, what is the first step per ERC 2021?',
    options: [
      'Intubation',
      'Heimlich maneuver',
      'Two rescue breaths',
      'Back blows',
      'Visual mouth check and clearance'
    ],
    correctAnswerIndex: 4,
    explanation: 'If a foreign body is present, visually inspect the mouth and clear it if seen.',
    category: 'ERC 2021 Guidelines',
    difficulty: 2
  ),
  Question(
    id: 'erc_2021_063',
    question: 'According to ERC 2021, what should the target mean arterial pressure (MAP) be after ROSC?',
    options: [
      '<50 mmHg',
      '50–60 mmHg',
      '65–70 mmHg',
      '≥75 mmHg',
      '>100 mmHg'
    ],
    correctAnswerIndex: 3,
    explanation: 'After ROSC, aim for MAP ≥75 mmHg with fluids and vasopressors as needed.',
    category: 'ERC 2021 Guidelines',
    difficulty: 2
  ),
  Question(
    id: 'erc_2021_064',
    question: 'Which of the following is a non-shockable rhythm?',
    options: [
      'Ventricular fibrillation',
      'Pulseless ventricular tachycardia',
      'Pulseless electrical activity (PEA)',
      'Torsades de pointes',
      'Arrest with VF'
    ],
    correctAnswerIndex: 2,
    explanation: 'PEA is a non-shockable arrest rhythm.',
    category: 'ERC 2021 Guidelines',
    difficulty: 2
  ),
  Question(
    id: 'erc_2021_067',
    question: 'Which statement about targeted temperature management after ROSC is correct?',
    options: [
      'Body temperature should be lowered to <32°C',
      'Maintain 33–36°C for 24 hours',
      'Must be initiated within the first 6 hours in all cases',
      'Only for intubated patients',
      'Increases neurological injury'
    ],
    correctAnswerIndex: 1,
    explanation: 'Maintain a target temperature of 33–36°C for 24 hours.',
    category: 'ERC 2021 Guidelines',
    difficulty: 2
  ),
  Question(
    id: 'erc_2021_068',
    question: 'According to ERC 2021, how often is adrenaline given during pediatric CPR?',
    options: [
      'Every 2 minutes',
      'Every 3–5 minutes',
      'Every 10 minutes',
      'Only at the start',
      'After VT/VF'
    ],
    correctAnswerIndex: 1,
    explanation: 'Same as adults: administer every 3–5 minutes.',
    category: 'ERC 2021 Guidelines',
    difficulty: 2
  ),
  Question(
    id: 'erc_2021_071',
    question: 'According to ERC 2021, what is the first action for a patient in respiratory arrest?',
    options: [
      'Pulse check',
      'Apply AED',
      'Give 5 rescue breaths',
      'Defibrillation',
      'Intubation'
    ],
    correctAnswerIndex: 2,
    explanation: 'In respiratory arrest, start with 5 effective rescue breaths to reverse hypoxia.',
    category: 'ERC 2021 Guidelines',
    difficulty: 2
  ),
  Question(
    id: 'erc_2021_072',
    question: 'Per ERC, what should be done if the patient has excessive chest hair during resuscitation?',
    options: [
      'Do not use an AED',
      'Apply extra gel',
      'Shave the hair',
      'Place pads in reverse orientation',
      'Use a manual defibrillator instead'
    ],
    correctAnswerIndex: 2,
    explanation: 'Hair can prevent pad-to-skin contact; shave the area first.',
    category: 'ERC 2021 Guidelines',
    difficulty: 2
  ),
  Question(
    id: 'erc_2021_077',
    question: 'According to ERC 2021, which learning method is most effective in basic life support training?',
    options: [
      'Written exam',
      'Live model demonstration',
      'Video-assisted simulation',
      'Theory only',
      'Group discussion'
    ],
    correctAnswerIndex: 2,
    explanation: 'Video-assisted practice with feedback improves training effectiveness.',
    category: 'ERC 2021 Guidelines',
    difficulty: 2
  ),
  Question(
    id: 'erc_2021_resuscitation_education_001',
    question: 'In the "4 I" model, which component concerns educational theories and how we learn?',
    options: [
      'Inquiry',
      'Implement',
      'Idea',
      'Impact',
      'Insight'
    ],
    correctAnswerIndex: 2,
    explanation: 'The "4 I" model: Idea: Educational theories and learning foundations, Inquiry: Research and knowledge generation, Implement: Application, Impact: Outcome and impact evaluation',
    category: 'ERC 2021 Guidelines',
    difficulty: 2
  ),
  Question(
    id: 'erc_2021_first_aid_003',
    question: 'In a conscious person with an effective cough and foreign-body airway obstruction, what is the first step?',
    options: [
      'Abdominal thrusts',
      'Removal with Magill forceps',
      '5 back blows',
      'Start CPR immediately',
      'Encourage coughing'
    ],
    correctAnswerIndex: 4,
    explanation: 'Effective coughing is a natural expulsion method; intervene only if it becomes ineffective.',
    category: 'ERC 2021 Guidelines',
    difficulty: 2
  ),
  Question(
    id: 'erc_2021_als_008',
    question: 'According to ERC 2021, WHEN should adrenaline be given in a shockable rhythm?',
    options: [
      'Immediately after rhythm analysis',
      'Before the first shock',
      'After three shocks',
      'Every 2 minutes',
      'In non-shockable rhythms'
    ],
    correctAnswerIndex: 2,
    explanation: 'In shockable rhythms, adrenaline is given after three shocks to preserve early defibrillation efficacy.',
    category: 'ERC 2021 Guidelines',
    difficulty: 2
  ),
  Question(
    id: 'erc_2021_first_aid_014',
    question: 'Which of the following is WRONG for a suspected anaphylaxis case?',
    options: [
      'Adrenaline should be given IM',
      'If symptoms persist, a second dose may be given after 5 minutes',
      'The patient should be placed supine',
      'Antihistamines should be given first',
      'Call emergency services (112)'
    ],
    correctAnswerIndex: 3,
    explanation: 'First-line therapy is IM adrenaline. Antihistamines are adjunctive with delayed effect and are not the priority.',
    category: 'ERC 2021 Guidelines',
    difficulty: 2
  ),
  Question(
    id: 'erc_2021_defibrillation_020',
    question: 'Which definition correctly describes refractory VF?',
    options: [
      'VF persisting after the first shock',
      'VF not converting after 2 shocks',
      'VF persisting despite 3 or more shocks',
      'VF lasting more than 5 minutes',
      'VF occurring with pulseless VT'
    ],
    correctAnswerIndex: 2,
    explanation: 'Refractory VF = VF persisting after at least three consecutive shocks. Strategies: alternative pad position, amiodarone, dual-sequential defibrillation, etc.',
    category: 'ERC 2021 Guidelines',
    difficulty: 2
  ),
  Question(
    id: 'erc_2021_resuscitation_education_021',
    question: 'Which statement is FALSE regarding BLS training programs for healthcare workers per ERC 2021?',
    options: [
      'Feedback devices may be used during training',
      'Course content should be enriched with case-based scenarios',
      'Instructor experience affects learning quality',
      'All healthcare workers are expected to learn endotracheal intubation',
      'The training\'s impact on clinical outcomes should be assessed'
    ],
    correctAnswerIndex: 3,
    explanation: 'Advanced airway skills are not expected of all staff—only certain disciplines (e.g., anesthesia, emergency).',
    category: 'ERC 2021 Guidelines',
    difficulty: 2
  ),
  Question(
    id: 'erc_2021_first_aid_022',
    question: 'In a rural setting with suspected heat stroke and loss of consciousness, which cooling method is most effective per ERC?',
    options: [
      'Ice packs to neck, axillae, and groin',
      'Move to shade and pour cool water',
      'Surface cooling with cold air',
      'Full-body immersion in 1–2°C water',
      'Provide fluids at room temperature'
    ],
    correctAnswerIndex: 3,
    explanation: 'ERC notes full-body immersion in cold water is the most effective active cooling method, rapidly reducing core temperature.',
    category: 'ERC 2021 Guidelines',
    difficulty: 2
  ),
  Question(
    id: 'erc_2021_bls_024',
    question: 'Which of the following is NOT recommended to directly improve chest compression quality?',
    options: [
      'Continue compressions without interruption',
      'Allow complete chest recoil between compressions',
      'Use a metronome to guide rhythm',
      'Check rhythm every 60 seconds',
      'Maintain compression depth at 5–6 cm'
    ],
    correctAnswerIndex: 3,
    explanation: 'Rhythm checks should occur every 2 minutes with brief pauses. More frequent checks waste time and reduce CPR quality.',
    category: 'ERC 2021 Guidelines',
    difficulty: 2
  ),
  Question(
    id: 'erc_2021_als_025',
    question: 'At minute 2 of CPR, a 3rd shock has been delivered and VF persists. What is the next best step per ERC 2021?',
    options: [
      'Administer adrenaline',
      'Pause compressions for 30 seconds to re-check rhythm',
      'Give lidocaine',
      'Perform endotracheal intubation',
      'Re-check pulse'
    ],
    correctAnswerIndex: 0,
    explanation: 'For shockable rhythms, give adrenaline after the 3rd shock; for non-shockable rhythms, give as early as possible. Amiodarone is also recommended after the 3rd and 5th shocks. Do not pause compressions unnecessarily.',
    category: 'ERC 2021 Guidelines',
    difficulty: 2
  ),
  Question(
    id: 'erc_2021_in_hospital_027',
    question: 'Which is NOT recommended by ERC 2021 to facilitate early recognition of patients at risk of cardiac arrest?',
    options: [
      'Continuous monitoring of vital signs',
      'Establishment of mobile rapid-response teams',
      'Educating patients to recognize their own deterioration',
      'Use of documented early warning scores',
      'Encouraging multidisciplinary collaboration'
    ],
    correctAnswerIndex: 2,
    explanation: 'While patient education is valuable, organizational measures (early warning systems, team coordination) are the primary recommendations.',
    category: 'ERC 2021 Guidelines',
    difficulty: 2
  ),
  Question(
    id: 'erc_2021_in_hospital_028',
    question: 'What hospital internal emergency number is recommended by ERC 2021 across Europe?',
    options: [
      '999',
      '111',
      '1221',
      '2222',
      '1919'
    ],
    correctAnswerIndex: 3,
    explanation: 'ERC recommends standardizing 2222 for hospital emergencies in Europe to facilitate rapid team coordination.',
    category: 'ERC 2021 Guidelines',
    difficulty: 2
  ),
  Question(
    id: 'erc_2021_covid_029',
    question: 'For a layperson providing BLS to a suspected COVID-19 patient, what does ERC recommend?',
    options: [
      'Do not perform CPR',
      'Provide ventilation only',
      'Approach only with full PPE',
      'Perform chest compressions only; do not provide breaths',
      'Obtain consent before shock delivery'
    ],
    correctAnswerIndex: 3,
    explanation: 'During the pandemic, ERC advised lay rescuers to perform compression-only CPR to reduce infection risk.',
    category: 'ERC 2021 Guidelines',
    difficulty: 2
  ),
  Question(
    id: 'erc_2021_technology_030',
    question: 'According to ERC 2021, where can AI-supported technologies directly contribute?',
    options: [
      'Diagnosing VF',
      'Performing endotracheal intubation',
      'Applying AED pads',
      'Automatic recognition of agonal breathing',
      'Automating pulse checks'
    ],
    correctAnswerIndex: 3,
    explanation: 'AI-based audio analysis for agonal breathing is promising for early recognition and automatic alerts.',
    category: 'ERC 2021 Guidelines',
    difficulty: 2
  ),
  Question(
    id: 'erc_2021_first_aid_032',
    question: 'In open chest wounds, what should the first aider do?',
    options: [
      'Seal the wound completely',
      'Apply a gauze bandage',
      'Use an occlusive dressing sealed on 3 sides (one side left open)',
      'Apply a tourniquet',
      'Place in lateral position'
    ],
    correctAnswerIndex: 2,
    explanation: 'A three-sided occlusive dressing prevents pressure buildup by allowing air to escape.',
    category: 'ERC 2021 Guidelines',
    difficulty: 2
  ),
  Question(
    id: 'erc_2021_als_035',
    question: 'Which drug used during advanced life support should be given after, not before, defibrillation?',
    options: [
      'Adrenaline',
      'Amiodarone',
      'Lidocaine',
      'Atropine',
      'Magnesium'
    ],
    correctAnswerIndex: 1,
    explanation: 'Amiodarone is administered after the 3rd shock; it is not given before shock attempts.',
    category: 'ERC 2021 Guidelines',
    difficulty: 2
  ),
  Question(
    id: 'erc_2021_covid_038',
    question: 'Which ERC 2021 statement about AED use during the pandemic is correct?',
    options: [
      'AED use should be avoided',
      'Maskless contact is acceptable during rhythm analysis',
      'AED use should be limited to healthcare workers',
      'Delivering a shock is safe because it does not generate aerosols',
      'Ventilation must be performed after shock'
    ],
    correctAnswerIndex: 3,
    explanation: 'ERC states defibrillation does not generate aerosols and can be safely performed by lay rescuers.',
    category: 'ERC 2021 Guidelines',
    difficulty: 2
  ),
  Question(
    id: 'erc_2021_als_045',
    question: 'Which is NOT among the causes of PEA?',
    options: [
      'Hypoxia',
      'Tension pneumothorax',
      'Hyperkalemia',
      'Anterior MI',
      'Cardiac tamponade'
    ],
    correctAnswerIndex: 3,
    explanation: 'Anterior MI can lead to PEA but is not in the classic "5 H\'s and 5 T\'s" list.',
    category: 'ERC 2021 Guidelines',
    difficulty: 2
  ),
  Question(
    id: 'erc_2021_defibrillation_046',
    question: 'What is the purpose of dual (double) defibrillation?',
    options: [
      'Deliver shocks with less energy',
      'Replace the first shock',
      'Terminate refractory VF',
      'Treat asystole',
      'Improve success in PEA'
    ],
    correctAnswerIndex: 2,
    explanation: 'Dual sequential defibrillation may be used as an alternative strategy in refractory VF.',
    category: 'ERC 2021 Guidelines',
    difficulty: 2
  ),
  Question(
    id: 'erc_2021_safety_050',
    question: 'According to ERC 2021, which statement about rescuer safety is correct?',
    options: [
      'Touching the patient during shock is not risky',
      'The person performing CPR is liable for rib fractures',
      'Rescuer safety takes precedence over patient safety',
      'AED use should be restricted to healthcare personnel',
      'The rescuer\'s identity must be disclosed'
    ],
    correctAnswerIndex: 2,
    explanation: 'ERC clearly states: "Rescuer safety is the first priority." If CPR is performed appropriately, legal liability for injuries like rib fractures is generally not assigned to the rescuer.',
    category: 'ERC 2021 Guidelines',
    difficulty: 2
  ),
];
