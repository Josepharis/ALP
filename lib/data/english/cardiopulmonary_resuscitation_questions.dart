import '../../models/question.dart';

List<Question> cardiopulmonaryResuscitationQuestions = [
  Question(
    id: 'cardiopulmonary_resuscitation_001',
    question: 'What is the first step in adult Basic Life Support (BLS)?',
    options: [
      'Check pulse',
      'Intubation',
      'Check consciousness and call for help',
      'Chest compressions',
      'Defibrillation'
    ],
    correctAnswerIndex: 2,
    explanation: 'The first step is checking responsiveness and calling for help before starting CPR.',
    category: 'Cardiopulmonary Resuscitation',
    difficulty: 2
  ),
  Question(
    id: 'cardiopulmonary_resuscitation_002',
    question: 'What is the correct chest compression depth for high-quality CPR in adults?',
    options: [
      'At least 2 cm',
      '2–3 cm',
      'At least 5 cm, maximum 6 cm',
      '6–8 cm',
      '1/3 of chest diameter'
    ],
    correctAnswerIndex: 2,
    explanation: 'Chest compressions should be 5–6 cm deep to ensure adequate coronary perfusion.',
    category: 'Cardiopulmonary Resuscitation',
    difficulty: 2
  ),
  Question(
    id: 'cardiopulmonary_resuscitation_003',
    question: 'Defibrillation is most effective in which rhythm?',
    options: [
      'Asystole',
      'Pulseless electrical activity (PEA)',
      'Ventricular fibrillation (VF)',
      'Sinus tachycardia',
      'AV block'
    ],
    correctAnswerIndex: 2,
    explanation: 'VF and pulseless VT are shockable rhythms; asystole and PEA are not.',
    category: 'Cardiopulmonary Resuscitation',
    difficulty: 2
  ),
  Question(
    id: 'cardiopulmonary_resuscitation_004',
    question: 'In which condition is epinephrine NOT recommended?',
    options: [
      'Asystole',
      'Ventricular fibrillation',
      'Pulseless electrical activity',
      'Ventricular tachycardia',
      'Stable sinus bradycardia'
    ],
    correctAnswerIndex: 4,
    explanation: 'Epinephrine is only indicated in cardiac arrest, not in stable bradycardia.',
    category: 'Cardiopulmonary Resuscitation',
    difficulty: 2
  ),
  Question(
    id: 'cardiopulmonary_resuscitation_005',
    question: 'Which is NOT a reversible cause of pulseless electrical activity (PEA)?',
    options: [
      'Hypovolemia',
      'Hypoxia',
      'Hyperkalemia',
      'Thrombosis',
      'Hyperglycemia'
    ],
    correctAnswerIndex: 4,
    explanation: 'The "5H–5T" approach does not include hyperglycemia. Hypovolemia, hypoxia, hyperkalemia, tamponade, toxins, etc., are included.',
    category: 'Cardiopulmonary Resuscitation',
    difficulty: 2
  ),
  Question(
    id: 'cardiopulmonary_resuscitation_006',
    question: 'What is the correct ventilation rate during CPR in an intubated patient?',
    options: [
      '6 breaths/min',
      '10 breaths/min',
      '12–16 breaths/min',
      '20–30 breaths/min',
      '2 breaths/min'
    ],
    correctAnswerIndex: 1,
    explanation: 'In intubated patients, ventilation is continuous with chest compressions, at ~10 breaths/min.',
    category: 'Cardiopulmonary Resuscitation',
    difficulty: 2
  ),
  Question(
    id: 'cardiopulmonary_resuscitation_007',
    question: 'In which rhythm is defibrillation NOT effective and should not be applied?',
    options: [
      'VF',
      'Pulseless VT',
      'Polymorphic VT',
      'PEA',
      'Torsades de Pointes'
    ],
    correctAnswerIndex: 3,
    explanation: 'PEA is not a shockable rhythm; treatment is CPR + epinephrine.',
    category: 'Cardiopulmonary Resuscitation',
    difficulty: 2
  ),
  Question(
    id: 'cardiopulmonary_resuscitation_008',
    question: 'Which is a poor prognostic indicator during resuscitation?',
    options: [
      'Witnessed arrest',
      'Immediate CPR',
      'Arrest duration >10 min',
      'VF as initial rhythm',
      'Effective defibrillation'
    ],
    correctAnswerIndex: 2,
    explanation: 'Longer arrest duration → higher risk of brain injury and mortality.',
    category: 'Cardiopulmonary Resuscitation',
    difficulty: 2
  ),
  Question(
    id: 'cardiopulmonary_resuscitation_009',
    question: 'Correct chest compression depth in pediatric CPR?',
    options: [
      '1/4 AP chest diameter',
      '2–3 cm',
      '5–6 cm',
      '~50% of chest diameter',
      '1/3 AP chest diameter'
    ],
    correctAnswerIndex: 4,
    explanation: 'In children, compression depth is ~1/3 of chest diameter (~4–5 cm).',
    category: 'Cardiopulmonary Resuscitation',
    difficulty: 2
  ),
  Question(
    id: 'cardiopulmonary_resuscitation_010',
    question: 'Most important parameter for predicting CPR failure?',
    options: [
      'Pulse oximetry',
      'Pupillary reflex',
      'End-tidal CO₂ value',
      'Arterial pressure',
      'Body temperature'
    ],
    correctAnswerIndex: 2,
    explanation: 'EtCO₂ reflects perfusion; <10 mmHg during CPR = poor prognosis.',
    category: 'Cardiopulmonary Resuscitation',
    difficulty: 2
  ),
  Question(
    id: 'cardiopulmonary_resuscitation_011',
    question: 'After the first shock in VF, if VF persists, next step?',
    options: [
      'Check pulse',
      'Stop CPR',
      'Continue CPR + epinephrine',
      'Sodium bicarbonate',
      'Start lidocaine'
    ],
    correctAnswerIndex: 2,
    explanation: 'Immediately resume compressions, give epinephrine, then antiarrhythmics if needed.',
    category: 'Cardiopulmonary Resuscitation',
    difficulty: 2
  ),
  Question(
    id: 'cardiopulmonary_resuscitation_012',
    question: 'Which drug is NOT used as an antiarrhythmic during CPR?',
    options: [
      'Amiodarone',
      'Lidocaine',
      'Adenosine',
      'Magnesium',
      'Procainamide'
    ],
    correctAnswerIndex: 2,
    explanation: 'Adenosine is for SVT; no role in cardiac arrest.',
    category: 'Cardiopulmonary Resuscitation',
    difficulty: 2
  ),
  Question(
    id: 'cardiopulmonary_resuscitation_013',
    question: 'Undesired effect of hyperventilation after securing airway in CPR?',
    options: [
      'Increased venous return',
      'Decreased intrathoracic pressure',
      'Lower ICP',
      'Decreased cardiac output',
      'Increased coronary perfusion'
    ],
    correctAnswerIndex: 3,
    explanation: 'Hyperventilation raises intrathoracic pressure → ↓ venous return & ↓ cardiac output.',
    category: 'Cardiopulmonary Resuscitation',
    difficulty: 2
  ),
  Question(
    id: 'cardiopulmonary_resuscitation_014',
    question: 'Which is NOT typical in neonatal CPR?',
    options: [
      '3:1 compression-to-ventilation ratio',
      'Start with room air',
      'Prevent heat loss',
      '1 ventilation after 3 compressions',
      'Start CPR if HR >100 bpm'
    ],
    correctAnswerIndex: 4,
    explanation: 'In neonates, CPR is indicated if HR <60 bpm, not >100 bpm.',
    category: 'Cardiopulmonary Resuscitation',
    difficulty: 2
  ),
  Question(
    id: 'cardiopulmonary_resuscitation_015',
    question: 'Primary goal of IV epinephrine during CPR?',
    options: [
      'Coronary vasodilation',
      'Increase parasympathetic tone',
      'Beta-2 bronchodilation',
      'Increase coronary & cerebral perfusion pressure',
      'Treat hyperkalemia'
    ],
    correctAnswerIndex: 3,
    explanation: 'α-adrenergic effect → vasoconstriction → ↑ coronary & cerebral perfusion.',
    category: 'Cardiopulmonary Resuscitation',
    difficulty: 2
  ),
  Question(
    id: 'cardiopulmonary_resuscitation_016',
    question: 'Indication for targeted temperature management (post-resuscitation hypothermia)?',
    options: [
      'Awake patient',
      'Severe hypertension after ROSC',
      'Unconscious after ROSC',
      'Acute MI',
      'Pulseless VT'
    ],
    correctAnswerIndex: 2,
    explanation: 'In comatose patients after ROSC, TTM at 32–36°C provides neuroprotection.',
    category: 'Cardiopulmonary Resuscitation',
    difficulty: 2
  ),
  Question(
    id: 'cardiopulmonary_resuscitation_017',
    question: 'Which CPR drug stabilizes rhythm rather than increasing heart rate?',
    options: [
      'Epinephrine',
      'Lidocaine',
      'Atropine',
      'Dopamine',
      'Dobutamine'
    ],
    correctAnswerIndex: 1,
    explanation: 'Lidocaine is an antiarrhythmic used in VT/VF; weak inotrope.',
    category: 'Cardiopulmonary Resuscitation',
    difficulty: 2
  ),
  Question(
    id: 'cardiopulmonary_resuscitation_018',
    question: 'When is amiodarone indicated in CPR?',
    options: [
      'Asystole',
      'PEA',
      'Pulseless VT refractory to defibrillation',
      'Sinus bradycardia',
      'Sinus tachycardia'
    ],
    correctAnswerIndex: 2,
    explanation: 'Amiodarone used in refractory VF/pulseless VT.',
    category: 'Cardiopulmonary Resuscitation',
    difficulty: 2
  ),
  Question(
    id: 'cardiopulmonary_resuscitation_019',
    question: 'Best clinical indicator of effective chest compressions?',
    options: [
      'Pupillary reflex',
      'Peripheral pulse',
      'EtCO₂ ≥10 mmHg',
      'Blinking',
      'Heart sounds'
    ],
    correctAnswerIndex: 2,
    explanation: 'EtCO₂ ≥10 mmHg indicates adequate perfusion.',
    category: 'Cardiopulmonary Resuscitation',
    difficulty: 2
  ),
  Question(
    id: 'cardiopulmonary_resuscitation_020',
    question: 'In neonatal CPR, minimum chest compressions per minute?',
    options: [
      '30',
      '60',
      '90',
      '100',
      '120'
    ],
    correctAnswerIndex: 4,
    explanation: '3:1 ratio → ~90 compressions + 30 breaths = 120 events/min.',
    category: 'Cardiopulmonary Resuscitation',
    difficulty: 2
  ),
  Question(
    id: 'cardiopulmonary_resuscitation_021',
    question: 'Clinical indication for lidocaine use in CPR?',
    options: [
      'PEA',
      'Torsades de pointes',
      'Frequent ventricular ectopy with VF tendency',
      'SVT',
      'Asystole'
    ],
    correctAnswerIndex: 2,
    explanation: 'Lidocaine is useful in ventricular ectopy, VT/VF.',
    category: 'Cardiopulmonary Resuscitation',
    difficulty: 2
  ),
  Question(
    id: 'cardiopulmonary_resuscitation_022',
    question: 'Which is NOT a goal of post-resuscitation care?',
    options: [
      'Maintain O₂ saturation >100%',
      'Prevent/induce controlled hypothermia',
      'Maintain stable BP',
      'Avoid hypoglycemia',
      'Diagnose possible myocardial ischemia'
    ],
    correctAnswerIndex: 0,
    explanation: 'Excess O₂ causes oxidative stress; target SaO₂ 94–98%.',
    category: 'Cardiopulmonary Resuscitation',
    difficulty: 2
  ),
  Question(
    id: 'cardiopulmonary_resuscitation_023',
    question: 'Recommended compression-to-ventilation ratio in child CPR (2 rescuers)?',
    options: [
      '30:2',
      '20:1',
      '15:2',
      '5:1',
      '10:2'
    ],
    correctAnswerIndex: 2,
    explanation: 'In children with 2 rescuers: 15:2 ratio.',
    category: 'Cardiopulmonary Resuscitation',
    difficulty: 2
  ),
  Question(
    id: 'cardiopulmonary_resuscitation_024',
    question: 'First dose of amiodarone in CPR?',
    options: [
      '75 mg IV bolus',
      '100 mg IV infusion',
      '150 mg IV push',
      '300 mg IV push',
      '1 mg/kg'
    ],
    correctAnswerIndex: 3,
    explanation: 'Initial dose: 300 mg IV push; repeat 150 mg if needed.',
    category: 'Cardiopulmonary Resuscitation',
    difficulty: 2
  ),
  Question(
    id: 'cardiopulmonary_resuscitation_025',
    question: 'Which receptor is key for epinephrine\'s effect in CPR?',
    options: [
      'Beta-1',
      'Beta-2',
      'Alpha-1',
      'Dopamine receptor',
      'Nicotinic receptor'
    ],
    correctAnswerIndex: 2,
    explanation: 'α1-mediated vasoconstriction → ↑ coronary & cerebral perfusion.',
    category: 'Cardiopulmonary Resuscitation',
    difficulty: 2
  ),
  Question(
    id: 'cardiopulmonary_resuscitation_026',
    question: 'Maneuver to secure airway during CPR?',
    options: [
      'Trendelenburg',
      'Jaw thrust',
      'Heimlich maneuver',
      'Valsalva',
      'Nose pinching'
    ],
    correctAnswerIndex: 1,
    explanation: 'Jaw thrust opens airway, safe even in trauma patients.',
    category: 'Cardiopulmonary Resuscitation',
    difficulty: 2
  ),
  Question(
    id: 'cardiopulmonary_resuscitation_027',
    question: 'Emergency treatment of hypoglycemia during CPR?',
    options: [
      '0.9% NaCl',
      '5% Dextrose',
      '10% Dextrose',
      '50% Dextrose',
      'Glucagon SC'
    ],
    correctAnswerIndex: 3,
    explanation: 'Give 25–50 mL 50% dextrose IV bolus in adults.',
    category: 'Cardiopulmonary Resuscitation',
    difficulty: 2
  ),
  Question(
    id: 'cardiopulmonary_resuscitation_028',
    question: 'First action when VF detected?',
    options: [
      'Epinephrine',
      'Amiodarone',
      'Chest compressions',
      'Defibrillation',
      'Atropine'
    ],
    correctAnswerIndex: 3,
    explanation: 'Early defibrillation is the top priority in VF.',
    category: 'Cardiopulmonary Resuscitation',
    difficulty: 2
  ),
  Question(
    id: 'cardiopulmonary_resuscitation_029',
    question: 'When & how often is epinephrine given in CPR?',
    options: [
      '1st min & every 1 min',
      '2nd min & every 3–5 min',
      '3rd min & every 5 min',
      '4th min & every 4 min',
      '5th min & every 10 min'
    ],
    correctAnswerIndex: 1,
    explanation: 'Epinephrine 1 mg IV → after 2nd min (post-1st shock) → every 3–5 min.',
    category: 'Cardiopulmonary Resuscitation',
    difficulty: 2
  ),
  Question(
    id: 'cardiopulmonary_resuscitation_030',
    question: 'Correct statement about amiodarone use in CPR?',
    options: [
      'Used in non-shockable rhythms',
      'Given before epinephrine',
      'Given after 1st shock',
      'Given after 3rd shock',
      'Repeated every 10 min'
    ],
    correctAnswerIndex: 3,
    explanation: 'Amiodarone 300 mg IV bolus after 3rd shock in VF/pulseless VT.',
    category: 'Cardiopulmonary Resuscitation',
    difficulty: 2
  ),
  Question(
    id: 'cardiopulmonary_resuscitation_031',
    question: 'Ventilation rate in intubated patient during CPR?',
    options: [
      '15:2',
      '10/min continuous',
      '30:2',
      '5:1',
      '6:2'
    ],
    correctAnswerIndex: 1,
    explanation: 'Once intubated: continuous compressions + 10 breaths/min.',
    category: 'Cardiopulmonary Resuscitation',
    difficulty: 2
  ),
  Question(
    id: 'cardiopulmonary_resuscitation_032',
    question: 'Which may cause pulseless electrical activity (PEA)?',
    options: [
      'Hypothermia',
      'Ventricular tachycardia',
      'SVT',
      'Complete AV block',
      'PACs'
    ],
    correctAnswerIndex: 0,
    explanation: 'Causes of PEA: hypoxia, hypovolemia, hyperkalemia, hypothermia, tamponade.',
    category: 'Cardiopulmonary Resuscitation',
    difficulty: 2
  ),
  Question(
    id: 'cardiopulmonary_resuscitation_033',
    question: 'Initial biphasic defibrillation energy?',
    options: [
      '50 J',
      '100 J',
      '120–200 J',
      '250 J',
      '360 J'
    ],
    correctAnswerIndex: 2,
    explanation: 'Biphasic: 120–200 J; Monophasic: 360 J.',
    category: 'Cardiopulmonary Resuscitation',
    difficulty: 2
  ),
  Question(
    id: 'cardiopulmonary_resuscitation_034',
    question: 'First-line treatment for pulseless VT?',
    options: [
      'CPR + epinephrine',
      'Rapid IV amiodarone',
      'Cardioversion',
      'Defibrillation',
      'Atropine'
    ],
    correctAnswerIndex: 3,
    explanation: 'Pulseless VT = shockable rhythm → immediate defibrillation.',
    category: 'Cardiopulmonary Resuscitation',
    difficulty: 2
  ),
  Question(
    id: 'cardiopulmonary_resuscitation_035',
    question: 'First-line treatment for hypotension after ROSC?',
    options: [
      'Dopamine infusion',
      'Amiodarone bolus',
      'Fluid resuscitation',
      'Epinephrine bolus',
      'Hypothermia induction'
    ],
    correctAnswerIndex: 2,
    explanation: 'First restore intravascular volume → then add vasopressors if needed.',
    category: 'Cardiopulmonary Resuscitation',
    difficulty: 2
  ),
  Question(
    id: 'cardiopulmonary_resuscitation_036',
    question: 'After defibrillation, organized rhythm but no pulse = ?',
    options: [
      'Asystole',
      'Pulseless VT',
      'PEA',
      'VF',
      'Sinus arrest'
    ],
    correctAnswerIndex: 2,
    explanation: 'Organized rhythm + no pulse = PEA.',
    category: 'Cardiopulmonary Resuscitation',
    difficulty: 2
  ),
  Question(
    id: 'cardiopulmonary_resuscitation_037',
    question: 'Most common CPR mistake?',
    options: [
      'Excess epinephrine',
      'Shallow compressions',
      'Fast ventilation',
      'Low-energy shock',
      'Giving glucose'
    ],
    correctAnswerIndex: 1,
    explanation: 'Shallow compressions are the most frequent error → depth ≥5 cm needed.',
    category: 'Cardiopulmonary Resuscitation',
    difficulty: 2
  ),
  Question(
    id: 'cardiopulmonary_resuscitation_038',
    question: 'Compression–ventilation ratio in intubated patient?',
    options: [
      '30:2',
      '15:2',
      '5:1',
      '10:1',
      'Continuous compressions + 10 breaths/min'
    ],
    correctAnswerIndex: 4,
    explanation: 'Intubated = continuous compressions + 10 breaths/min.',
    category: 'Cardiopulmonary Resuscitation',
    difficulty: 2
  ),
  Question(
    id: 'cardiopulmonary_resuscitation_039',
    question: 'Which drugs can be given via endotracheal tube during CPR?',
    options: [
      'Epinephrine',
      'Amiodarone',
      'Atropine',
      'Lidocaine',
      'All of the above'
    ],
    correctAnswerIndex: 4,
    explanation: 'Remember NAVEL: Naloxone, Atropine, Vasopressin, Epinephrine, Lidocaine.',
    category: 'Cardiopulmonary Resuscitation',
    difficulty: 2
  ),
  Question(
    id: 'cardiopulmonary_resuscitation_040',
    question: 'Which intervention is performed every 2 minutes during CPR?',
    options: [
      'Routine defibrillation',
      'Arterial blood gas',
      'Pulse and rhythm assessment',
      'Lidocaine administration',
      'GCS scoring'
    ],
    correctAnswerIndex: 2,
    explanation: 'Pulse and rhythm should be checked every 2 minutes; CPR is continued or appropriate intervention is applied.',
    category: 'Cardiopulmonary Resuscitation',
    difficulty: 2
  ),
  Question(
    id: 'cardiopulmonary_resuscitation_041',
    question: 'In which rhythm is amiodarone administered during CPR?',
    options: [
      'PEA',
      'Asystole',
      'Ventricular fibrillation',
      'Sinus bradycardia',
      'AV block'
    ],
    correctAnswerIndex: 2,
    explanation: 'Amiodarone is given in shockable rhythms (VF/pulseless VT) after the 3rd shock.',
    category: 'Cardiopulmonary Resuscitation',
    difficulty: 2
  ),
  Question(
    id: 'cardiopulmonary_resuscitation_042',
    question: 'After successful CPR within the first 5 minutes, what is the top priority in the patient?',
    options: [
      'Correction of serum electrolytes',
      'Fluid restriction',
      'Targeted temperature management',
      'Intermittent ventilation',
      'Fundoscopy'
    ],
    correctAnswerIndex: 2,
    explanation: 'Targeted temperature management (TTM) after ROSC is critical to reduce hypoxic brain injury.',
    category: 'Cardiopulmonary Resuscitation',
    difficulty: 2
  ),
  Question(
    id: 'cardiopulmonary_resuscitation_043',
    question: 'What is the most appropriate management in a patient with ventricular tachycardia and hypotension?',
    options: [
      'IV lidocaine',
      'Amiodarone',
      'Synchronized cardioversion',
      'Epinephrine',
      'Defibrillation'
    ],
    correctAnswerIndex: 2,
    explanation: 'In hemodynamically unstable VT with a pulse (e.g., hypotension), synchronized cardioversion is indicated.',
    category: 'Cardiopulmonary Resuscitation',
    difficulty: 2
  ),
  Question(
    id: 'cardiopulmonary_resuscitation_044',
    question: 'What is the most likely cause of sudden cardiac arrest under anesthesia?',
    options: [
      'Hypothermia',
      'Depth of anesthesia',
      'Arrhythmia',
      'Drug reaction (anaphylaxis)',
      'Fluid overload'
    ],
    correctAnswerIndex: 3,
    explanation: 'During anesthesia, sudden arrest is most often due to drug-induced anaphylaxis or malignant hyperthermia.',
    category: 'Cardiopulmonary Resuscitation',
    difficulty: 2
  ),
  Question(
    id: 'cardiopulmonary_resuscitation_045',
    question: 'Most common initial rhythm in in-hospital cardiac arrest?',
    options: [
      'Ventricular fibrillation (VF)',
      'Pulseless ventricular tachycardia (pVT)',
      'Asystole',
      'Pulseless electrical activity (PEA)',
      'Atrial fibrillation'
    ],
    correctAnswerIndex: 3,
    explanation: 'About 50% of in-hospital arrests present as PEA (due to hypoxia, hypovolemia, tamponade, etc.). VF/pVT is more common in out-of-hospital arrest (~25–30%).',
    category: 'Cardiopulmonary Resuscitation',
    difficulty: 2
  ),
  Question(
    id: 'cardiopulmonary_resuscitation_046',
    question: 'Standard epinephrine dose during resuscitation?',
    options: [
      '0.1 mg/kg',
      '1 mg (1:10,000)',
      '0.01 mg/kg',
      '5 mg (1:1,000)',
      '10 mg'
    ],
    correctAnswerIndex: 1,
    explanation: 'Standard dose is 1 mg IV/IO (10 mL of 1:10,000), repeated every 3–5 minutes. High-dose epinephrine does not improve survival.',
    category: 'Cardiopulmonary Resuscitation',
    difficulty: 2
  ),
  Question(
    id: 'cardiopulmonary_resuscitation_047',
    question: 'First step in hypothermia-related cardiac arrest?',
    options: [
      'Defibrillation',
      'Passive rewarming',
      'Active internal rewarming',
      'ECMO',
      'All of the above'
    ],
    correctAnswerIndex: 2,
    explanation: 'If core temp <30°C, defibrillation is ineffective → active internal warming (warmed IV fluids, thoracic lavage) must be initiated first.',
    category: 'Cardiopulmonary Resuscitation',
    difficulty: 2
  ),
  Question(
    id: 'cardiopulmonary_resuscitation_048',
    question: 'Target body temperature in post-resuscitation hypothermia treatment?',
    options: [
      '32–34°C',
      '34–36°C',
      '36–37°C',
      '37–38°C',
      '38–39°C'
    ],
    correctAnswerIndex: 2,
    explanation: '2021 guidelines recommend 32–36°C. The TTM2 trial showed similar outcomes with normothermia (36–37°C), but hyperthermia must be avoided.',
    category: 'Cardiopulmonary Resuscitation',
    difficulty: 2
  ),
  Question(
    id: 'cardiopulmonary_resuscitation_049',
    question: 'Which is correct in managing cardiac arrest in pregnancy?',
    options: [
      'Left lateral decubitus position',
      'Early perimortem cesarean section',
      'Manual uterine displacement',
      'All of the above',
      'None'
    ],
    correctAnswerIndex: 3,
    explanation: 'In pregnancies >20 weeks, the uterus should be displaced to the left. If no ROSC within 4 minutes, perimortem cesarean at 5 minutes is recommended.',
    category: 'Cardiopulmonary Resuscitation',
    difficulty: 2
  ),
  Question(
    id: 'cardiopulmonary_resuscitation_050',
    question: 'In which rhythm is amiodarone used?',
    options: [
      'VF/pVT (shockable rhythm)',
      'Asystole',
      'PEA',
      'Sinus bradycardia',
      'All'
    ],
    correctAnswerIndex: 0,
    explanation: 'Amiodarone (300 mg IV) is used in shockable rhythms (VF/pVT) after the 3rd shock; not useful in non-shockable rhythms.',
    category: 'Cardiopulmonary Resuscitation',
    difficulty: 2
  ),
  Question(
    id: 'cardiopulmonary_resuscitation_051',
    question: 'First step in neonatal resuscitation?',
    options: [
      'Chest compressions',
      'Positive pressure ventilation (PPV)',
      'Endotracheal intubation',
      'Epinephrine',
      'Oxygen'
    ],
    correctAnswerIndex: 1,
    explanation: 'Neonatal arrest is usually hypoxic → PPV with 21–30% O₂ is the first step. If compressions are needed, 3:1 ratio is used.',
    category: 'Cardiopulmonary Resuscitation',
    difficulty: 2
  ),
  Question(
    id: 'cardiopulmonary_resuscitation_052',
    question: 'Which drug is contraindicated in catecholaminergic polymorphic VT (CPVT)?',
    options: [
      'Epinephrine',
      'Amiodarone',
      'Lidocaine',
      'Beta-blocker',
      'All'
    ],
    correctAnswerIndex: 0,
    explanation: 'In CPVT, epinephrine is contraindicated. Beta-blockers (esmolol) and lidocaine are preferred.',
    category: 'Cardiopulmonary Resuscitation',
    difficulty: 2
  ),
  Question(
    id: 'cardiopulmonary_resuscitation_053',
    question: 'Indication for transcutaneous pacing (TCP)?',
    options: [
      'Hemodynamically unstable bradycardia',
      'Ventricular fibrillation',
      'Pulseless VT',
      'Asystole',
      'None'
    ],
    correctAnswerIndex: 0,
    explanation: 'TCP is indicated in unstable bradycardia (esp. 2nd/3rd degree AV block). It is ineffective in VF/pVT or asystole.',
    category: 'Cardiopulmonary Resuscitation',
    difficulty: 2
  ),
  Question(
    id: 'cardiopulmonary_resuscitation_054',
    question: 'Which drug is used in beta-blocker overdose–related cardiac arrest?',
    options: [
      'Glucagon',
      'Calcium gluconate',
      'High-dose insulin',
      'All of the above',
      'None'
    ],
    correctAnswerIndex: 3,
    explanation: 'Glucagon (3–10 mg IV), calcium, and high-dose insulin are used in beta-blocker toxicity.',
    category: 'Cardiopulmonary Resuscitation',
    difficulty: 2
  ),
  Question(
    id: 'cardiopulmonary_resuscitation_055',
    question: 'In which rhythm can a precordial thump be applied?',
    options: [
      'Asystole',
      'Pulseless VT',
      'Ventricular fibrillation',
      'Sinus tachycardia',
      'None'
    ],
    correctAnswerIndex: 1,
    explanation: 'Precordial thump may be considered in witnessed pulseless VT (monomorphic) if defibrillator is not immediately available. Ineffective in VF/asystole.',
    category: 'Cardiopulmonary Resuscitation',
    difficulty: 2
  ),
  Question(
    id: 'cardiopulmonary_resuscitation_056',
    question: 'In which patient group is AED use contraindicated?',
    options: [
      'Infants <1 year',
      'Pregnant women',
      'Elderly',
      'Obese patients',
      'None'
    ],
    correctAnswerIndex: 0,
    explanation: 'AEDs are not recommended in infants <1 year. In ages 1–8, pediatric pads/mode should be used.',
    category: 'Cardiopulmonary Resuscitation',
    difficulty: 2
  ),
  Question(
    id: 'cardiopulmonary_resuscitation_057',
    question: 'Which is correct regarding targeted temperature management (TTM) after cardiac arrest?',
    options: [
      '24h at 32–34°C',
      '48h at 36°C',
      '72h at 33°C',
      'Avoid hyperthermia',
      'None'
    ],
    correctAnswerIndex: 3,
    explanation: 'TTM2 trial: no mortality difference between 33°C and 36°C. The key is avoiding hyperthermia (>37.7°C).',
    category: 'Cardiopulmonary Resuscitation',
    difficulty: 2
  ),
  Question(
    id: 'cardiopulmonary_resuscitation_058',
    question: 'When is coronary angiography indicated post-resuscitation?',
    options: [
      'ST elevation',
      'Cardiogenic shock',
      'Electrical instability',
      'All of the above',
      'None'
    ],
    correctAnswerIndex: 3,
    explanation: 'According to 2020 ACLS guidelines, angiography should be performed (ideally within 2 hours of ROSC) if any of these are present.',
    category: 'Cardiopulmonary Resuscitation',
    difficulty: 2
  ),
  Question(
    id: 'cardiopulmonary_resuscitation_059',
    question: 'Which drug is NOT useful in hyperkalemia-related cardiac arrest?',
    options: [
      'Calcium gluconate',
      'Sodium bicarbonate',
      'Insulin + glucose',
      'Epinephrine',
      'None'
    ],
    correctAnswerIndex: 3,
    explanation: 'Hyperkalemia is treated with calcium (membrane stabilization), bicarbonate, insulin+glucose, and potassium binders. Epinephrine has no role.',
    category: 'Cardiopulmonary Resuscitation',
    difficulty: 2
  ),
  Question(
    id: 'cardiopulmonary_resuscitation_060',
    question: 'Indications for positive pressure ventilation in neonatal resuscitation?',
    options: [
      'Apnea',
      'HR <100 bpm',
      'Ineffective respiration',
      'All of the above',
      'None'
    ],
    correctAnswerIndex: 3,
    explanation: 'PPV with 21–30% O₂ if apnea, HR <100, or persistent cyanosis is present.',
    category: 'Cardiopulmonary Resuscitation',
    difficulty: 2
  ),
  Question(
    id: 'cardiopulmonary_resuscitation_061',
    question: 'In which rhythm can lidocaine be used?',
    options: [
      'Refractory VF/pVT',
      'Monomorphic VT',
      'Torsades de pointes',
      'All of the above',
      'None'
    ],
    correctAnswerIndex: 1,
    explanation: 'Lidocaine (1–1.5 mg/kg) is mainly for stable monomorphic VT. Amiodarone is preferred in refractory VF; magnesium for torsades.',
    category: 'Cardiopulmonary Resuscitation',
    difficulty: 2
  ),
  Question(
    id: 'cardiopulmonary_resuscitation_062',
    question: 'When should neuroprognostication be performed after resuscitation?',
    options: [
      'After 24 hours',
      'After 48 hours',
      'After 72 hours',
      'After 5 days',
      'None'
    ],
    correctAnswerIndex: 2,
    explanation: '2020 guidelines: at least 72h post-resuscitation; if TTM is applied, wait up to 5 days.',
    category: 'Cardiopulmonary Resuscitation',
    difficulty: 2
  ),
];
