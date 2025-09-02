import '../../models/question.dart';

List<Question> anesthesiaNeurosurgeryQuestions = [
  Question(
    id: 'anesthesia_neurosurgery_001',
    question: 'Which of the following is a beneficial effect of propofol use in neurosurgical patients?',
    options: [
      'Increases CSF production',
      'Increases cerebral metabolism',
      'Decreases CMRO₂',
      'Increases ICP',
      'Increases EEG activity'
    ],
    correctAnswerIndex: 2,
    explanation: 'Propofol decreases cerebral metabolism and blood flow → lowers ICP and provides brain relaxation.',
    category: 'Anesthesia for Neurosurgery',
    difficulty: 2
  ),
  Question(
    id: 'anesthesia_neurosurgery_002',
    question: 'Which of the following may increase the risk of intraoperative seizures?',
    options: [
      'Adequate anesthetic depth',
      'Normoventilation',
      'Ketamine use',
      'Midazolam premedication',
      'Thiopental use'
    ],
    correctAnswerIndex: 2,
    explanation: 'Ketamine, via NMDA receptor stimulation, lowers the seizure threshold and should be used cautiously.',
    category: 'Anesthesia for Neurosurgery',
    difficulty: 2
  ),
  Question(
    id: 'anesthesia_neurosurgery_003',
    question: 'Which of the following is NOT a strategy to reduce intracranial pressure (ICP) during craniotomy?',
    options: [
      'Neutral and elevated head position',
      'Ensuring urine output',
      'Hyperventilation',
      'Inducing hypercapnia',
      'Osmotic diuresis'
    ],
    correctAnswerIndex: 3,
    explanation: 'Hypercapnia causes cerebral vasodilation → increases ICP, which is undesirable.',
    category: 'Anesthesia for Neurosurgery',
    difficulty: 2
  ),
  Question(
    id: 'anesthesia_neurosurgery_004',
    question: 'During neurosurgery, if sudden bradycardia develops, which condition should be considered first?',
    options: [
      'Hypovolemia',
      'Anesthetic depth',
      'Cushing reflex',
      'Hypothermia',
      'Drug allergy'
    ],
    correctAnswerIndex: 2,
    explanation: 'Increased ICP triggers vagal response → bradycardia (part of Cushing\'s triad).',
    category: 'Anesthesia for Neurosurgery',
    difficulty: 2
  ),
  Question(
    id: 'anesthesia_neurosurgery_005',
    question: 'Which of the following is one of the most common early postoperative complications after neurosurgery?',
    options: [
      'Deep vein thrombosis',
      'Aspiration pneumonia',
      'Hemorrhage and hematoma',
      'Urinary retention',
      'Neuropathic pain'
    ],
    correctAnswerIndex: 2,
    explanation: 'Postoperative hematoma can cause renewed compression → a serious early complication.',
    category: 'Anesthesia for Neurosurgery',
    difficulty: 2
  ),
  Question(
    id: 'anesthesia_neurosurgery_006',
    question: 'Which is the appropriate head position in neurosurgical patients?',
    options: [
      'Tilted downward and flexed forward',
      'Trendelenburg position',
      'Slightly elevated and neutral',
      'Full rotation to the left',
      'Extreme neck extension'
    ],
    correctAnswerIndex: 2,
    explanation: 'Keeping the head slightly elevated and neutral facilitates venous return and reduces ICP.',
    category: 'Anesthesia for Neurosurgery',
    difficulty: 2
  ),
  Question(
    id: 'anesthesia_neurosurgery_007',
    question: 'Which is one of the most common complications after subarachnoid hemorrhage (SAH)?',
    options: [
      'Cerebral vasospasm',
      'Hypothermia',
      'Hypoglycemia',
      'Cranial nerve palsy',
      'CSF fistula'
    ],
    correctAnswerIndex: 0,
    explanation: 'SAH is frequently followed (day 3–14) by cerebral vasospasm → risk of ischemic complications.',
    category: 'Anesthesia for Neurosurgery',
    difficulty: 2
  ),
  Question(
    id: 'anesthesia_neurosurgery_008',
    question: 'Which is an undesirable effect of mannitol use in neurosurgical patients?',
    options: [
      'Hyponatremia',
      'Hypoglycemia',
      'Hyperkalemia',
      'Volume overload and hypervolemia',
      'Bradycardia'
    ],
    correctAnswerIndex: 3,
    explanation: 'Mannitol, despite being an osmotic diuretic, initially increases intravascular volume → risk of hypervolemia and cardiac overload.',
    category: 'Anesthesia for Neurosurgery',
    difficulty: 2
  ),
  Question(
    id: 'anesthesia_neurosurgery_009',
    question: 'Which complication is most associated with mortality after neurosurgery?',
    options: [
      'Deep vein thrombosis',
      'Postoperative hemorrhage',
      'Infection',
      'Hypotension',
      'Nausea and vomiting'
    ],
    correctAnswerIndex: 1,
    explanation: 'Postoperative hematoma or intracranial bleeding raises ICP and carries high mortality risk.',
    category: 'Anesthesia for Neurosurgery',
    difficulty: 2
  ),
  Question(
    id: 'anesthesia_neurosurgery_010',
    question: 'Which of the following is one of the most common brain protection strategies during neurosurgery?',
    options: [
      'Inducing hypercapnia',
      'Ketamine infusion',
      'Maintaining normoglycemia',
      'Creating hypervolemia',
      'Use of nitrous oxide'
    ],
    correctAnswerIndex: 2,
    explanation: 'Normoglycemia is critical to limit ischemic injury. Hyperglycemia worsens neuronal damage.',
    category: 'Anesthesia for Neurosurgery',
    difficulty: 2
  ),
  Question(
    id: 'anesthesia_neurosurgery_011',
    question: 'Which is one of the most common postoperative risks after infratentorial surgeries?',
    options: [
      'Hypothermia',
      'Laryngospasm',
      'Hyperventilation',
      'Glottic edema',
      'Respiratory failure'
    ],
    correctAnswerIndex: 4,
    explanation: 'Proximity to the brainstem increases risk of postoperative respiratory depression/failure.',
    category: 'Anesthesia for Neurosurgery',
    difficulty: 2
  ),
  Question(
    id: 'anesthesia_neurosurgery_012',
    question: 'Intraoperative sudden bradycardia with hypertension during brainstem manipulation suggests which condition?',
    options: [
      'Hypovolemia',
      'Cushing response',
      'Inadequate anesthesia',
      'Parasympathetic block',
      'Air embolism'
    ],
    correctAnswerIndex: 1,
    explanation: 'Cushing reflex = increased ICP → sympathetic hypertension + vagal bradycardia.',
    category: 'Anesthesia for Neurosurgery',
    difficulty: 2
  ),
  Question(
    id: 'anesthesia_neurosurgery_013',
    question: 'In neurosurgery, in which situation is the risk of air embolism the highest?',
    options: [
      'Spinal tumor excision',
      'Subdural hematoma evacuation',
      'Supraclavicular nerve block',
      'Sitting position posterior fossa surgery',
      'Lateral position meningioma resection'
    ],
    correctAnswerIndex: 3,
    explanation: 'Sitting position elevates surgical site above the heart → high air embolism risk.',
    category: 'Anesthesia for Neurosurgery',
    difficulty: 2
  ),
  Question(
    id: 'anesthesia_neurosurgery_014',
    question: 'What is one of the earliest intraoperative indicators of air embolism?',
    options: [
      'Bradycardia',
      'Hypothermia',
      'Sudden drop in ETCO₂',
      'Reduced urine output',
      'Pupil dilation'
    ],
    correctAnswerIndex: 2,
    explanation: 'Air embolism reduces pulmonary perfusion → sudden fall in ETCO₂ is an early sign.',
    category: 'Anesthesia for Neurosurgery',
    difficulty: 2
  ),
  Question(
    id: 'anesthesia_neurosurgery_015',
    question: 'If air embolism is suspected during neurosurgery in the sitting position, what is the first step?',
    options: [
      'Surgeon stops the operation',
      'Trendelenburg positioning',
      'Administer 100% O₂ and attempt aspiration',
      'Closing the airway',
      'Switch to BIS monitoring'
    ],
    correctAnswerIndex: 2,
    explanation: '100% O₂ replaces nitrogen, and if central line present → air aspiration attempted, along with surgical intervention.',
    category: 'Anesthesia for Neurosurgery',
    difficulty: 2
  ),
  Question(
    id: 'anesthesia_neurosurgery_016',
    question: 'Which is NOT a likely cause of agitation during recovery after craniotomy?',
    options: [
      'Hypoxemia',
      'Hypercapnia',
      'Inadequate analgesia',
      'High sedation level',
      'Hypertension'
    ],
    correctAnswerIndex: 3,
    explanation: 'High sedation causes somnolence, not agitation. Agitation is more often due to pain, hypoxemia, or hypercapnia.',
    category: 'Anesthesia for Neurosurgery',
    difficulty: 2
  ),
  Question(
    id: 'anesthesia_neurosurgery_017',
    question: 'Which is one of the critical intraoperative considerations in infratentorial tumor surgeries?',
    options: [
      'Spinal ischemia',
      'Hypothermia',
      'Suppression of brainstem reflexes',
      'Cranial nerve monitoring',
      'Intracranial hematoma'
    ],
    correctAnswerIndex: 3,
    explanation: 'Proximity to cranial nerve nuclei requires intraoperative neuromonitoring of motor/sensory pathways.',
    category: 'Anesthesia for Neurosurgery',
    difficulty: 2
  ),
  Question(
    id: 'anesthesia_neurosurgery_018',
    question: 'Which is one of the first tests to evaluate neurological status upon awakening from neurosurgery?',
    options: [
      'SpO₂ measurement',
      'Motor function test',
      'PaCO₂ measurement',
      'EEG monitoring',
      'BIS monitoring'
    ],
    correctAnswerIndex: 1,
    explanation: 'Motor function testing is a first step to assess brainstem and cortical recovery.',
    category: 'Anesthesia for Neurosurgery',
    difficulty: 2
  ),
  Question(
    id: 'anesthesia_neurosurgery_019',
    question: 'Which is a special anesthetic requirement during craniopharyngioma surgery?',
    options: [
      'Postoperative respiratory failure',
      'Cranial nerve preservation',
      'Need for neuromonitoring',
      'Allowing hypercapnia',
      'Prophylactic drugs for laryngospasm'
    ],
    correctAnswerIndex: 1,
    explanation: 'Craniopharyngioma surgery requires special attention to cranial nerve and pituitary preservation.',
    category: 'Anesthesia for Neurosurgery',
    difficulty: 2
  ),
  Question(
    id: 'anesthesia_neurosurgery_020',
    question: 'Which is the most important respiratory parameter in neuroanesthesia?',
    options: [
      'PaO₂',
      'PaCO₂',
      'FiO₂',
      'Tidal volume',
      'Respiratory rate'
    ],
    correctAnswerIndex: 1,
    explanation: 'PaCO₂ directly affects cerebral vasodilation/constriction → ICP regulation.',
    category: 'Anesthesia for Neurosurgery',
    difficulty: 2
  ),
  Question(
    id: 'anesthesia_neurosurgery_021',
    question: 'Which pharmacologic agent is most commonly used to reduce intracranial pressure (ICP)?',
    options: [
      'Sevoflurane',
      'Nitrous oxide',
      'Mannitol',
      'Desflurane',
      'Propofol'
    ],
    correctAnswerIndex: 2,
    explanation: 'Mannitol, via osmotic diuresis, is the most widely used drug to lower ICP.',
    category: 'Anesthesia for Neurosurgery',
    difficulty: 2
  ),
  Question(
    id: 'anesthesia_neurosurgery_022',
    question: 'Which is one of the most common postoperative complications after craniopharyngioma surgery?',
    options: [
      'Hypotension',
      'Seizures',
      'Hyperkalemia',
      'Respiratory depression',
      'Hyponatremia'
    ],
    correctAnswerIndex: 4,
    explanation: 'Hyponatremia, SIADH, and fluid imbalance are frequent after craniopharyngioma surgery.',
    category: 'Anesthesia for Neurosurgery',
    difficulty: 2
  ),
  Question(
    id: 'anesthesia_neurosurgery_023',
    question: 'Which statement about cerebrovascular events is FALSE?',
    options: [
      'Vasospasm can occur 3–14 days after SAH',
      'Cerebral ischemic injury is usually associated with hypotension',
      'Vasodilation occurs with hypercapnia',
      'Cerebral hypoxia directly impairs brain function',
      'Hyperthermia increases cerebral blood flow'
    ],
    correctAnswerIndex: 1,
    explanation: 'Cerebral ischemic injury is usually related to hypoxia/hypercapnia, not directly to hypotension.',
    category: 'Anesthesia for Neurosurgery',
    difficulty: 2
  ),
  Question(
    id: 'anesthesia_neurosurgery_024',
    question: 'Why is head positioning critical during brain surgery?',
    options: [
      'Regulates venous return',
      'Affects lung function',
      'Causes airway obstruction',
      'Lowers blood pressure',
      'Increases cerebral blood flow'
    ],
    correctAnswerIndex: 0,
    explanation: 'Head position influences venous drainage → key for ICP control.',
    category: 'Anesthesia for Neurosurgery',
    difficulty: 2
  ),
  Question(
    id: 'anesthesia_neurosurgery_025',
    question: 'In infratentorial tumor resection, which statement is correct regarding anesthesia management?',
    options: [
      'High-dose opioid is preferred',
      'Neuromuscular blockade is generally avoided',
      'Etomidate and sevoflurane are combined',
      'Hypothermia increases ICP',
      'Spinal anesthesia is generally preferred'
    ],
    correctAnswerIndex: 1,
    explanation: 'Neuromuscular blockade may be used carefully to avoid movement but requires monitoring.',
    category: 'Anesthesia for Neurosurgery',
    difficulty: 2
  ),
  Question(
    id: 'anesthesia_neurosurgery_026',
    question: 'What is the most common method for postoperative pain control in neurosurgery?',
    options: [
      'Spinal anesthesia',
      'Epidural analgesia',
      'Local anesthetics',
      'IV opioid infusion',
      'Parenteral paracetamol'
    ],
    correctAnswerIndex: 1,
    explanation: 'Epidural analgesia is one of the most effective methods for postoperative pain management.',
    category: 'Anesthesia for Neurosurgery',
    difficulty: 2
  ),
  Question(
    id: 'anesthesia_neurosurgery_027',
    question: 'What is the most important factor to consider when performing spinal anesthesia in neurosurgical patients?',
    options: [
      'Preoperative hypervolemia',
      'Deep anesthesia level',
      'Risk of spinal bleeding',
      'Providing respiratory support',
      'Changing patient position'
    ],
    correctAnswerIndex: 2,
    explanation: 'Spinal anesthesia carries bleeding risk, especially in trauma or coagulopathy.',
    category: 'Anesthesia for Neurosurgery',
    difficulty: 2
  ),
  Question(
    id: 'anesthesia_neurosurgery_028',
    question: 'Which statement about the microanesthesia technique used in tumor surgery is correct?',
    options: [
      'It allows the patient to remain fully awake',
      'Muscle relaxants are not used to preserve brain function monitoring',
      'Usually combined with epidural anesthesia',
      'Tumor excision can be performed with local anesthesia',
      'Microanesthesia is not applied with general anesthesia'
    ],
    correctAnswerIndex: 1,
    explanation: 'Microanesthesia is used in neurosurgery (e.g., epilepsy surgery, tumors near motor cortex). Neuromonitoring (MEP, SSEP) is critical.',
    category: 'Anesthesia for Neurosurgery',
    difficulty: 2
  ),
  Question(
    id: 'anesthesia_neurosurgery_029',
    question: 'Which is one of the main causes of intraoperative seizures?',
    options: [
      'Hypoglycemia',
      'Hyperkalemia',
      'Hypothermia',
      'Barbiturate use',
      'Excessively shallow anesthesia'
    ],
    correctAnswerIndex: 4,
    explanation: 'Too light anesthesia may provoke intraoperative seizures, especially when brain tissue is stimulated.',
    category: 'Anesthesia for Neurosurgery',
    difficulty: 2
  ),
  Question(
    id: 'anesthesia_neurosurgery_030',
    question: 'Which is NOT an advantage of epidural analgesia in postoperative pain management in neurosurgical patients?',
    options: [
      'Reduced opioid requirement',
      'Less respiratory depression',
      'Faster recovery',
      'Reduced cerebral blood flow',
      'Fewer complications'
    ],
    correctAnswerIndex: 3,
    explanation: 'Epidural analgesia provides effective pain relief but does not reduce cerebral blood flow.',
    category: 'Anesthesia for Neurosurgery',
    difficulty: 2
  ),
  Question(
    id: 'anesthesia_neurosurgery_031',
    question: 'Which is a special anesthetic management requirement in neurosurgical operations?',
    options: [
      'Only inhalational anesthesia is applied',
      'Stabilization of head position',
      'Avoidance of airway obstruction',
      'Minimization of fluid administration',
      'Use of general instead of spinal anesthesia'
    ],
    correctAnswerIndex: 1,
    explanation: 'Stable head positioning is critical for ICP control and venous return.',
    category: 'Anesthesia for Neurosurgery',
    difficulty: 2
  ),
  Question(
    id: 'anesthesia_neurosurgery_032',
    question: 'Which parameter is most important for preoperative neurological assessment in brain surgery?',
    options: [
      'Muscle strength and tone',
      'Brain wave monitoring',
      'Gag reflex',
      'Cognitive functions',
      'Motor functions'
    ],
    correctAnswerIndex: 4,
    explanation: 'Motor function assessment is crucial for preoperative neurological evaluation.',
    category: 'Anesthesia for Neurosurgery',
    difficulty: 2
  ),
  Question(
    id: 'anesthesia_neurosurgery_033',
    question: 'Which is one of the most suitable methods for postoperative pain management in neurosurgical patients?',
    options: [
      'Intercostal nerve block',
      'Epidural analgesia',
      'Only IV opioids',
      'NSAIDs',
      'Subcutaneous morphine infusion'
    ],
    correctAnswerIndex: 1,
    explanation: 'Epidural analgesia is effective and safe for pain control in neurosurgical patients.',
    category: 'Anesthesia for Neurosurgery',
    difficulty: 2
  ),
  Question(
    id: 'anesthesia_neurosurgery_034',
    question: 'Which factor is especially important for anesthesia management in Alzheimer\'s patients?',
    options: [
      'Minimal anesthetic depth',
      'Increased muscle relaxant use',
      'Use of only local anesthesia',
      'Short-acting anesthetic agents',
      'Deep sedation'
    ],
    correctAnswerIndex: 3,
    explanation: 'Alzheimer\'s disease prolongs anesthetic effects → short-acting agents are preferred to preserve brain function.',
    category: 'Anesthesia for Neurosurgery',
    difficulty: 2
  ),
  Question(
    id: 'anesthesia_neurosurgery_035',
    question: 'During anesthesia in Parkinson\'s disease, which is a major risk?',
    options: [
      'Hypercapnia',
      'Hyperthermia',
      'Hypotension',
      'Respiratory depression',
      'Altered response to muscle relaxants'
    ],
    correctAnswerIndex: 4,
    explanation: 'Parkinson\'s disease alters muscle tone → unpredictable response to neuromuscular blockers.',
    category: 'Anesthesia for Neurosurgery',
    difficulty: 2
  ),
  Question(
    id: 'anesthesia_neurosurgery_036',
    question: 'Which drug requires special caution in multiple sclerosis patients during anesthesia?',
    options: [
      'Nitrous oxide',
      'Midazolam',
      'Etomidate',
      'Ketamine',
      'Sevoflurane'
    ],
    correctAnswerIndex: 3,
    explanation: 'Ketamine may pose excitotoxic risks in MS patients → use with caution.',
    category: 'Anesthesia for Neurosurgery',
    difficulty: 2
  ),
  Question(
    id: 'anesthesia_neurosurgery_037',
    question: 'Which is NOT a major factor in anesthesia management of psychiatric patients?',
    options: [
      'Drug interactions',
      'Anesthetic dosage',
      'Risk of postoperative delirium',
      'Use of neuromuscular blockade',
      'Requirement for spinal anesthesia'
    ],
    correctAnswerIndex: 4,
    explanation: 'Spinal anesthesia is rarely required. Drug interactions and postoperative delirium are far more significant concerns.',
    category: 'Anesthesia for Neurosurgery',
    difficulty: 2
  ),
  Question(
    id: 'anesthesia_neurosurgery_038',
    question: 'Which anesthetic agent is most commonly preferred during neurosurgery?',
    options: [
      'Ketamine',
      'Propofol',
      'Halothane',
      'Nitrous oxide',
      'Morphine'
    ],
    correctAnswerIndex: 1,
    explanation: 'Propofol has rapid onset/offset, decreases ICP, and provides brain relaxation.',
    category: 'Anesthesia for Neurosurgery',
    difficulty: 2
  ),
  Question(
    id: 'anesthesia_neurosurgery_039',
    question: 'What is the most appropriate treatment to prevent vasospasm after subarachnoid hemorrhage?',
    options: [
      'Mannitol',
      'Nimodipine',
      'Ketamine',
      'Dopamine',
      'Phenobarbital'
    ],
    correctAnswerIndex: 1,
    explanation: 'Nimodipine (calcium channel blocker) is used to prevent cerebral vasospasm after SAH.',
    category: 'Anesthesia for Neurosurgery',
    difficulty: 2
  ),
  Question(
    id: 'anesthesia_neurosurgery_040',
    question: 'What is the most common complication after craniotomy?',
    options: [
      'Sepsis',
      'Hydrocephalus',
      'Seizure',
      'Pneumonia',
      'Hyponatremia'
    ],
    correctAnswerIndex: 2,
    explanation: 'Postoperative seizures are one of the most common complications following craniotomy.',
    category: 'Anesthesia for Neurosurgery',
    difficulty: 2
  ),
  Question(
    id: 'anesthesia_neurosurgery_041',
    question: 'Which is the most critical airway concern in supraclavicular tumor surgery?',
    options: [
      'Difficult intubation',
      'Bronchospasm',
      'Laryngospasm',
      'Subglottic stenosis',
      'Aspiration'
    ],
    correctAnswerIndex: 0,
    explanation: 'Cervical/supraclavicular masses distort airway anatomy → difficult intubation risk.',
    category: 'Anesthesia for Neurosurgery',
    difficulty: 2
  ),
  Question(
    id: 'anesthesia_neurosurgery_042',
    question: 'What is the ideal positioning for craniotomy patients?',
    options: [
      'Trendelenburg (head-down)',
      'Supine position',
      'Head elevated 30°',
      'Left lateral position',
      'Flat position'
    ],
    correctAnswerIndex: 2,
    explanation: 'Elevating the head at 30° improves venous drainage and helps reduce ICP.',
    category: 'Anesthesia for Neurosurgery',
    difficulty: 2
  ),
  Question(
    id: 'anesthesia_neurosurgery_043',
    question: 'What is the most common postoperative complication after subdural hematoma surgery?',
    options: [
      'Pneumonia',
      'Infection',
      'Seizures',
      'Hyponatremia',
      'Confusion'
    ],
    correctAnswerIndex: 2,
    explanation: 'Seizure risk is high after subdural hematoma → prophylaxis may be needed.',
    category: 'Anesthesia for Neurosurgery',
    difficulty: 2
  ),
  Question(
    id: 'anesthesia_neurosurgery_044',
    question: 'Which anesthetic agent allows the fastest neurological exam after craniotomy?',
    options: [
      'Ketamine',
      'Desflurane',
      'Propofol',
      'Isoflurane',
      'Nitrous oxide'
    ],
    correctAnswerIndex: 2,
    explanation: 'Propofol is short-acting, enabling rapid awakening and early neurological assessment.',
    category: 'Anesthesia for Neurosurgery',
    difficulty: 2
  ),
  Question(
    id: 'anesthesia_neurosurgery_045',
    question: 'During aneurysm clipping surgery, which measure protects the brain against ischemia from temporary arterial clipping?',
    options: [
      'Ketamine',
      'Hypothermia',
      'Hyperventilation',
      'Hypercapnia',
      'Fluid restriction'
    ],
    correctAnswerIndex: 1,
    explanation: 'Mild hypothermia reduces cerebral metabolism and provides ischemic protection.',
    category: 'Anesthesia for Neurosurgery',
    difficulty: 2
  ),
  Question(
    id: 'anesthesia_neurosurgery_046',
    question: 'In neurosurgical operations, which nerve injury is most commonly associated with positioning?',
    options: [
      'Femoral nerve',
      'Brachial plexus',
      'Facial nerve',
      'Median nerve',
      'Radial nerve'
    ],
    correctAnswerIndex: 1,
    explanation: 'In sitting and supine positions, improper padding can lead to brachial plexus injury.',
    category: 'Anesthesia for Neurosurgery',
    difficulty: 2
  ),
  Question(
    id: 'anesthesia_neurosurgery_047',
    question: 'Which position is recommended in spinal surgeries to reduce cerebrospinal fluid (CSF) leakage?',
    options: [
      'Trendelenburg',
      'Sitting position',
      'Head elevated 30°',
      'Head-down position',
      'Prone position'
    ],
    correctAnswerIndex: 2,
    explanation: 'Elevating the head 30° reduces the risk of CSF leakage. This is a widely used and effective method in both brain and spinal surgeries.',
    category: 'Anesthesia for Neurosurgery',
    difficulty: 2
  ),
  Question(
    id: 'anesthesia_neurosurgery_048',
    question: 'What is the most common postoperative complication after posterior fossa surgery?',
    options: [
      'Pneumonia',
      'Hydrocephalus',
      'Seizures',
      'Nausea and vomiting',
      'Dysphagia'
    ],
    correctAnswerIndex: 3,
    explanation: 'Nausea and vomiting occur frequently due to proximity to the brainstem and vagal stimulation.',
    category: 'Anesthesia for Neurosurgery',
    difficulty: 2
  ),
  Question(
    id: 'anesthesia_neurosurgery_049',
    question: 'Which fluid should be avoided in fluid therapy during intracranial tumor surgery?',
    options: [
      'Isotonic saline',
      'Mannitol',
      'Ringer\'s lactate',
      'Hypertonic saline',
      'Gelatin-based colloid'
    ],
    correctAnswerIndex: 2,
    explanation: 'Ringer\'s lactate (and other hypotonic crystalloids) may increase cerebral edema → should be avoided in brain surgery.',
    category: 'Anesthesia for Neurosurgery',
    difficulty: 2
  ),
  Question(
    id: 'anesthesia_neurosurgery_050',
    question: 'What is the advantage of evoked potential monitoring in spinal surgeries?',
    options: [
      'Only motor function monitoring',
      'Short application time',
      'Real-time monitoring of neural pathway integrity',
      'Intracranial pressure monitoring',
      'Evaluation of autonomic functions'
    ],
    correctAnswerIndex: 2,
    explanation: 'Evoked potentials (SEP, MEP) provide real-time monitoring of spinal cord and nerve pathway integrity.',
    category: 'Anesthesia for Neurosurgery',
    difficulty: 2
  ),
  Question(
    id: 'anesthesia_neurosurgery_051',
    question: 'What is a common complication after meningioma surgery?',
    options: [
      'Intracranial hemorrhage',
      'Hypothermia',
      'Arrhythmia',
      'Hyperkalemia',
      'Bronchospasm'
    ],
    correctAnswerIndex: 0,
    explanation: 'Meningiomas are often hypervascular, making postoperative hemorrhage a significant risk.',
    category: 'Anesthesia for Neurosurgery',
    difficulty: 2
  ),
  Question(
    id: 'anesthesia_neurosurgery_052',
    question: 'During craniotomy in the sitting position, what is the most sensitive monitoring method for detecting venous air embolism?',
    options: [
      'SpO₂',
      'Transesophageal echocardiography (TEE)',
      'ECG',
      'EtCO₂',
      'Arterial blood pressure'
    ],
    correctAnswerIndex: 1,
    explanation: 'TEE detects venous air embolism earliest and with the greatest sensitivity.',
    category: 'Anesthesia for Neurosurgery',
    difficulty: 2
  ),
  Question(
    id: 'anesthesia_neurosurgery_053',
    question: 'What is the most likely cause of postoperative respiratory depression after posterior fossa surgery?',
    options: [
      'Morphine infusion',
      'Brainstem compression',
      'Hydrocephalus',
      'Hypothermia',
      'Hypovolemia'
    ],
    correctAnswerIndex: 1,
    explanation: 'Posterior fossa surgeries may affect the medullary respiratory center, leading to respiratory depression.',
    category: 'Anesthesia for Neurosurgery',
    difficulty: 2
  ),
  Question(
    id: 'anesthesia_neurosurgery_054',
    question: 'In a craniotomy patient with intraoperative hypotension, what should be the first approach?',
    options: [
      'Stop TIVA',
      'Start vasopressors',
      'Increase propofol dose',
      'Restrict fluids',
      'Increase hyperventilation'
    ],
    correctAnswerIndex: 1,
    explanation: 'Vasopressors are preferred to maintain MAP and prevent CPP reduction.',
    category: 'Anesthesia for Neurosurgery',
    difficulty: 2
  ),
  Question(
    id: 'anesthesia_neurosurgery_055',
    question: 'During aneurysm rupture, what is the primary anesthetic goal?',
    options: [
      'Increase heart rate',
      'Induce hypotension',
      'Maintain hemodynamic stability',
      'Hyperventilation',
      'Increase anesthetic depth'
    ],
    correctAnswerIndex: 2,
    explanation: 'Blood pressure fluctuations increase mortality → stability is essential.',
    category: 'Anesthesia for Neurosurgery',
    difficulty: 2
  ),
  Question(
    id: 'anesthesia_neurosurgery_056',
    question: 'What is the most important positional complication during posterior fossa surgery?',
    options: [
      'Brachial plexus injury',
      'Venous air embolism',
      'Pneumothorax',
      'Hypothermia',
      'Pressure ulcer'
    ],
    correctAnswerIndex: 1,
    explanation: 'Sitting position in posterior fossa surgeries increases risk of venous air embolism.',
    category: 'Anesthesia for Neurosurgery',
    difficulty: 2
  ),
  Question(
    id: 'anesthesia_neurosurgery_057',
    question: 'What is the most common metabolic cause of hemodynamic instability during neurosurgery?',
    options: [
      'Hyponatremia',
      'Hyperglycemia',
      'Hypokalemia',
      'Hypocalcemia',
      'Hypercapnia'
    ],
    correctAnswerIndex: 0,
    explanation: 'Hyponatremia (due to SIADH or cerebral salt wasting) can cause serious cardiovascular effects.',
    category: 'Anesthesia for Neurosurgery',
    difficulty: 2
  ),
  Question(
    id: 'anesthesia_neurosurgery_058',
    question: 'What is the most common fluid-electrolyte imbalance after craniotomy?',
    options: [
      'Hyperkalemia',
      'Hyponatremia',
      'Hypercalcemia',
      'Hypophosphatemia',
      'Hypomagnesemia'
    ],
    correctAnswerIndex: 1,
    explanation: 'Hyponatremia commonly develops due to SIADH or cerebral salt wasting syndrome.',
    category: 'Anesthesia for Neurosurgery',
    difficulty: 2
  ),
  Question(
    id: 'anesthesia_neurosurgery_059',
    question: 'Which is the most suitable monitoring method for assessing spinal cord integrity during spinal surgery?',
    options: [
      'EEG',
      'SEP',
      'EMG',
      'TCD',
      'BIS'
    ],
    correctAnswerIndex: 1,
    explanation: 'Somatosensory evoked potentials (SEP) monitor the integrity of spinal sensory pathways.',
    category: 'Anesthesia for Neurosurgery',
    difficulty: 2
  ),
  Question(
    id: 'anesthesia_neurosurgery_060',
    question: 'During aneurysm surgery, what can be assessed with transcranial Doppler?',
    options: [
      'CPP',
      'Oxygen saturation',
      'Vasospasm development',
      'EEG activity',
      'Metabolic rate'
    ],
    correctAnswerIndex: 2,
    explanation: 'Transcranial Doppler detects cerebral blood flow velocity changes → useful for vasospasm detection.',
    category: 'Anesthesia for Neurosurgery',
    difficulty: 2
  ),
  Question(
    id: 'anesthesia_neurosurgery_061',
    question: 'What is the most likely cause of respiratory depression after posterior fossa surgery?',
    options: [
      'Propofol use',
      'Compression of the medulla oblongata',
      'Epidural hematoma',
      'Hyponatremia',
      'Hypothermia'
    ],
    correctAnswerIndex: 1,
    explanation: 'Posterior fossa surgery may compress the brainstem → leading to respiratory depression.',
    category: 'Anesthesia for Neurosurgery',
    difficulty: 2
  ),
  Question(
    id: 'anesthesia_neurosurgery_062',
    question: 'During aneurysm clipping surgery, which is the best protective strategy against cerebral ischemia during temporary arterial occlusion?',
    options: [
      'Inducing hypocapnia',
      'Fluid restriction',
      'Mild hypothermia',
      'Ketamine administration',
      'Inducing hypertension'
    ],
    correctAnswerIndex: 2,
    explanation: 'Mild hypothermia lowers cerebral metabolism and provides neuroprotection.',
    category: 'Anesthesia for Neurosurgery',
    difficulty: 2
  ),
  Question(
    id: 'anesthesia_neurosurgery_063',
    question: 'What should be monitored earliest after craniotomy?',
    options: [
      'Body temperature',
      'Urine output',
      'Pupil response',
      'Arterial blood gases',
      'Creatinine level'
    ],
    correctAnswerIndex: 2,
    explanation: 'Pupil size and light reflex provide early signs of neurological complications.',
    category: 'Anesthesia for Neurosurgery',
    difficulty: 2
  ),
  Question(
    id: 'anesthesia_neurosurgery_064',
    question: 'What is the best approach to prevent brachial plexus injury during positioning in neurosurgical patients?',
    options: [
      'Arms fully abducted',
      'Head positioned without padding',
      'Shoulders elevated',
      'Arms close to body and well supported',
      'Tourniquet applied to hands'
    ],
    correctAnswerIndex: 3,
    explanation: 'Keeping arms close to the body and properly padded prevents brachial plexus injury.',
    category: 'Anesthesia for Neurosurgery',
    difficulty: 2
  ),
  Question(
    id: 'anesthesia_neurosurgery_065',
    question: 'What is the most important intraoperative parameter in spinal tumor surgery?',
    options: [
      'Body temperature',
      'Arterial pressure',
      'Muscle relaxation',
      'Neuromonitoring signals',
      'Respiratory rate'
    ],
    correctAnswerIndex: 3,
    explanation: 'Stability of neuromonitoring signals (SEP/MEP) indicates spinal cord integrity.',
    category: 'Anesthesia for Neurosurgery',
    difficulty: 2
  ),
  Question(
    id: 'anesthesia_neurosurgery_066',
    question: 'What is the most common early complication after subarachnoid hemorrhage (SAH)?',
    options: [
      'Hydrocephalus',
      'Seizures',
      'Hyperkalemia',
      'Hypothermia',
      'Thrombosis'
    ],
    correctAnswerIndex: 1,
    explanation: 'Seizures commonly occur in the first 24 hours after SAH → prophylaxis may be necessary.',
    category: 'Anesthesia for Neurosurgery',
    difficulty: 2
  ),
  Question(
    id: 'anesthesia_neurosurgery_067',
    question: 'What is the most important complication to monitor after aneurysm clipping?',
    options: [
      'Vasospasm',
      'Hypothermia',
      'Hypovolemia',
      'Infection',
      'Hypercapnia'
    ],
    correctAnswerIndex: 0,
    explanation: 'Vasospasm (day 5–10) may cause ischemia and neurological deterioration.',
    category: 'Anesthesia for Neurosurgery',
    difficulty: 2
  ),
  Question(
    id: 'anesthesia_neurosurgery_068',
    question: 'Which is the most likely postoperative respiratory complication after supraclavicular tumor surgery?',
    options: [
      'Tracheal stenosis',
      'Bronchospasm',
      'Phrenic nerve injury',
      'Apnea',
      'Laryngospasm'
    ],
    correctAnswerIndex: 2,
    explanation: 'Phrenic nerve injury impairs diaphragmatic movement → respiratory distress.',
    category: 'Anesthesia for Neurosurgery',
    difficulty: 2
  ),
  Question(
    id: 'anesthesia_neurosurgery_069',
    question: 'Which neuroprotective agent is used during temporary clipping in aneurysm surgery?',
    options: [
      'Thiopental (3–5 mg/kg)',
      'Morphine',
      'Ketamine',
      'Nitrous oxide',
      'Halothane'
    ],
    correctAnswerIndex: 0,
    explanation: 'Thiopental reduces cerebral metabolism and prevents ischemic injury; etomidate or propofol may also be used.',
    category: 'Anesthesia for Neurosurgery',
    difficulty: 2
  ),
  Question(
    id: 'anesthesia_neurosurgery_070',
    question: 'Which muscle relaxant is contraindicated in a patient with spinal cord trauma?',
    options: [
      'Succinylcholine',
      'Rocuronium',
      'Atracurium',
      'Cisatracurium',
      'Vecuronium'
    ],
    correctAnswerIndex: 0,
    explanation: 'After 48h of trauma, succinylcholine may cause life-threatening hyperkalemia due to denervation.',
    category: 'Anesthesia for Neurosurgery',
    difficulty: 2
  ),
  Question(
    id: 'anesthesia_neurosurgery_071',
    question: 'Which is used for treatment of cerebral vasospasm after subarachnoid hemorrhage (SAH)?',
    options: [
      'Nimodipine (60 mg every 4h orally)',
      'Propranolol',
      'Nitroglycerin',
      'Hydralazine',
      'Labetalol'
    ],
    correctAnswerIndex: 0,
    explanation: 'Nimodipine (L-type calcium channel blocker) is given for 21 days after SAH to prevent vasospasm.',
    category: 'Anesthesia for Neurosurgery',
    difficulty: 2
  ),
  Question(
    id: 'anesthesia_neurosurgery_072',
    question: 'In intracranial hypertension, what is the target PaCO₂ with hyperventilation?',
    options: [
      '30–35 mmHg',
      '20–25 mmHg',
      '35–40 mmHg',
      '40–45 mmHg',
      '25–30 mmHg'
    ],
    correctAnswerIndex: 0,
    explanation: 'Target is 30–35 mmHg. PaCO₂ <25 mmHg may cause ischemia.',
    category: 'Anesthesia for Neurosurgery',
    difficulty: 2
  ),
  Question(
    id: 'anesthesia_neurosurgery_073',
    question: 'What is the indication for "awake craniotomy" in brain tumor surgery?',
    options: [
      'Lesions near eloquent cortex',
      'Posterior fossa tumors',
      'Spinal cord tumors',
      'Asymptomatic meningiomas',
      'Pituitary adenomas'
    ],
    correctAnswerIndex: 0,
    explanation: 'Awake craniotomy is used for cortical mapping to preserve speech/motor function.',
    category: 'Anesthesia for Neurosurgery',
    difficulty: 2
  ),
  Question(
    id: 'anesthesia_neurosurgery_074',
    question: 'Which is NOT a finding of spinal shock?',
    options: [
      'Hypertension',
      'Areflexia',
      'Hypotonic sphincters',
      'Flaccid paralysis',
      'Bradycardia'
    ],
    correctAnswerIndex: 0,
    explanation: 'Spinal shock presents with hypotension, not hypertension. Autonomic dysreflexia occurs in lesions above T6.',
    category: 'Anesthesia for Neurosurgery',
    difficulty: 2
  ),
  Question(
    id: 'anesthesia_neurosurgery_075',
    question: 'Which anesthesia technique is risky in a patient with acromegaly-related spinal stenosis?',
    options: [
      'Spinal anesthesia',
      'General anesthesia',
      'Epidural anesthesia',
      'Combined spinal-epidural',
      'Regional block'
    ],
    correctAnswerIndex: 0,
    explanation: 'Narrow spinal canal increases risk of high block and respiratory failure.',
    category: 'Anesthesia for Neurosurgery',
    difficulty: 2
  ),
  Question(
    id: 'anesthesia_neurosurgery_076',
    question: 'Which is NOT a radiological finding of intracranial hypertension?',
    options: [
      'Prominent sulci',
      'Narrowed ventricles',
      'Obliteration of basal cisterns',
      'Brain edema',
      'Midline shift'
    ],
    correctAnswerIndex: 0,
    explanation: 'Sulci become effaced in intracranial hypertension. Prominent sulci are seen in atrophy.',
    category: 'Anesthesia for Neurosurgery',
    difficulty: 2
  ),
  Question(
    id: 'anesthesia_neurosurgery_077',
    question: 'What is the advantage of stereotactic neurosurgery?',
    options: [
      'Minimally invasive and highly accurate',
      'Wide surgical field',
      'Long operation time',
      'High bleeding risk',
      'Postoperative delirium'
    ],
    correctAnswerIndex: 0,
    explanation: 'Provides direct access to lesion with minimal invasiveness; can be combined with awake procedures.',
    category: 'Anesthesia for Neurosurgery',
    difficulty: 2
  ),
  Question(
    id: 'anesthesia_neurosurgery_078',
    question: 'Cranial nerve monitoring is used in which surgery?',
    options: [
      'Acoustic neuroma',
      'Spinal disc herniation',
      'Craniosynostosis',
      'Epidural hematoma',
      'Subdural hematoma'
    ],
    correctAnswerIndex: 0,
    explanation: 'Facial nerve (CN VII) monitoring with EMG is critical in acoustic neuroma surgery.',
    category: 'Anesthesia for Neurosurgery',
    difficulty: 2
  ),
  Question(
    id: 'anesthesia_neurosurgery_079',
    question: 'Which is a late sign of intracranial hypertension?',
    options: [
      'Cushing triad (HT, bradycardia, irregular breathing)',
      'Headache',
      'Nausea-vomiting',
      'Papilledema',
      'Altered consciousness'
    ],
    correctAnswerIndex: 0,
    explanation: 'Cushing triad is a terminal finding before herniation; early signs are headache and consciousness changes.',
    category: 'Anesthesia for Neurosurgery',
    difficulty: 2
  ),
  Question(
    id: 'anesthesia_neurosurgery_080',
    question: 'What is an indication for "jet ventilation" in neurosurgery?',
    options: [
      'ICP control during laryngoscopy',
      'Obesity',
      'Asthma',
      'COPD',
      'Pneumothorax'
    ],
    correctAnswerIndex: 0,
    explanation: 'High-frequency jet ventilation prevents ICP fluctuations during laryngoscopy.',
    category: 'Anesthesia for Neurosurgery',
    difficulty: 2
  ),
  Question(
    id: 'anesthesia_neurosurgery_081',
    question: 'What is an indication for spinal cord stimulation?',
    options: [
      'Chronic neuropathic pain',
      'Acute postoperative pain',
      'Malignant hyperthermia',
      'Intracranial hypertension',
      'Status epilepticus'
    ],
    correctAnswerIndex: 0,
    explanation: 'Used in chronic pain syndromes (CRPS, failed back surgery syndrome).',
    category: 'Anesthesia for Neurosurgery',
    difficulty: 2
  ),
  Question(
    id: 'anesthesia_neurosurgery_082',
    question: 'Which neurosurgical operation requires "awake extubation"?',
    options: [
      'Posterior fossa surgery',
      'Spinal discectomy',
      'Cranial meningioma',
      'Epidural hematoma',
      'Ventriculoperitoneal shunt'
    ],
    correctAnswerIndex: 0,
    explanation: 'Awake extubation allows assessment of brainstem function after posterior fossa surgery.',
    category: 'Anesthesia for Neurosurgery',
    difficulty: 2
  ),
  Question(
    id: 'anesthesia_neurosurgery_083',
    question: 'What is the indication for "microvascular decompression" in neurosurgery?',
    options: [
      'Trigeminal neuralgia',
      'Spinal stenosis',
      'Brain abscess',
      'Subdural hematoma',
      'Hydrocephalus'
    ],
    correctAnswerIndex: 0,
    explanation: 'Microvascular decompression relieves vascular compression of cranial nerve roots (e.g., CN V in trigeminal neuralgia).',
    category: 'Anesthesia for Neurosurgery',
    difficulty: 2
  ),
  Question(
    id: 'anesthesia_neurosurgery_084',
    question: 'What is an advantage of alpha-2 agonist use in neuroanesthesia?',
    options: [
      'Reduces ICP and provides sedation',
      'Risk of hypertensive crisis',
      'Causes bradycardia',
      'Respiratory depression',
      'Postoperative delirium'
    ],
    correctAnswerIndex: 0,
    explanation: 'Dexmedetomidine reduces ICP via cerebral vasoconstriction, provides sedation, and helps prevent delirium.',
    category: 'Anesthesia for Neurosurgery',
    difficulty: 2
  ),
];
