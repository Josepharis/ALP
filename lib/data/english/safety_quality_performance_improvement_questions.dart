import '../../models/question.dart';

List<Question> safetyQualityPerformanceImprovementQuestions = [
  Question(
    id: 'safety_quality_performance_improvement_001',
    question: 'Which of the following is considered one of the most effective strategies to enhance patient safety in anesthesia practice?',
    options: [
      'Not performing postoperative rounds',
      'Determining anesthetic doses based on personal experience',
      'Using written notes instead of verbal communication with the surgeon',
      'Implementing a surgical safety checklist',
      'Administering anesthesia without preoperative communication with the patient'
    ],
    correctAnswerIndex: 3,
    explanation: 'The WHO Surgical Safety Checklist is an evidence-based approach shown to reduce mortality and morbidity.',
    category: 'Safety, Quality, & Performance Improvement',
    difficulty: 2
  ),
  Question(
    id: 'safety_quality_performance_improvement_002',
    question: 'In anesthesiology practice, the concept of the "last link in the error chain" refers to which of the following?',
    options: [
      'Deficiency in the medical record system',
      'Spelling error in the patient file',
      'An event that directly harms the patient',
      'Medications stored in similar packaging',
      'Lack of training on patient safety'
    ],
    correctAnswerIndex: 2,
    explanation: 'The last link is the "sentinel event" that directly harms the patient; multiple system failures often precede it.',
    category: 'Safety, Quality, & Performance Improvement',
    difficulty: 2
  ),
  Question(
    id: 'safety_quality_performance_improvement_003',
    question: 'What is the primary purpose of the "time-out" procedure used in anesthesia?',
    options: [
      'To determine the time to start anesthesia',
      'To schedule the team\'s break',
      'To collect statistical quality data',
      'To verify the correct patient, correct site, and correct procedure before surgery',
      'To check medication stock'
    ],
    correctAnswerIndex: 3,
    explanation: '"Time-out" is a deliberate pause where the surgeon, anesthetist, and nurse jointly confirm the correct patient, procedure, and site.',
    category: 'Safety, Quality, & Performance Improvement',
    difficulty: 2
  ),
  Question(
    id: 'safety_quality_performance_improvement_004',
    question: 'In the quality-improvement cycle, what does the "A" in PDSA stand for?',
    options: [
      'Adjust',
      'Action',
      'Analyze',
      'Act',
      'Audit'
    ],
    correctAnswerIndex: 3,
    explanation: 'PDSA cycle: Plan – Do – Study – Act → the Act phase implements corrective actions.',
    category: 'Safety, Quality, & Performance Improvement',
    difficulty: 2
  ),
  Question(
    id: 'safety_quality_performance_improvement_005',
    question: 'Which of the following is an indicator used to objectively measure service quality in performance improvement?',
    options: [
      'Patient satisfaction',
      'Number of complaints',
      'Postoperative nausea–vomiting (PONV) rate',
      'Patient age',
      'ASA score'
    ],
    correctAnswerIndex: 2,
    explanation: 'PONV rate is a clinical quality indicator that can be used to measure performance.',
    category: 'Safety, Quality, & Performance Improvement',
    difficulty: 2
  ),
  Question(
    id: 'safety_quality_performance_improvement_006',
    question: 'Which of the following is a goal of root cause analysis (RCA)?',
    options: [
      'Disciplinary action against the faulty staff member',
      'Identifying the responsible individuals',
      'Analyzing system causes to prevent similar events',
      'Measuring patient satisfaction',
      'Comparing medication dosages'
    ],
    correctAnswerIndex: 2,
    explanation: 'RCA aims to uncover system issues causing the error and to develop preventive strategies.',
    category: 'Safety, Quality, & Performance Improvement',
    difficulty: 2
  ),
  Question(
    id: 'safety_quality_performance_improvement_007',
    question: 'Which of the following is true regarding anesthesia safety?',
    options: [
      'Most errors arise from individual carelessness',
      'Automated systems prevent all errors',
      'Error-prevention systems should be reactive',
      'System-based approaches prevent errors more effectively',
      'Errors matter only when they lead to complications'
    ],
    correctAnswerIndex: 3,
    explanation: 'A systems approach examines processes before blaming individuals and supports durable improvements.',
    category: 'Safety, Quality, & Performance Improvement',
    difficulty: 2
  ),
  Question(
    id: 'safety_quality_performance_improvement_008',
    question: 'Which of the following is considered a sentinel event (major patient-safety breach) in anesthesiology?',
    options: [
      'Minor postoperative nausea',
      'Transient hypotension during anesthesia',
      'Administering anesthesia to the wrong patient',
      'Not giving premedication',
      'Late placement of an IV line'
    ],
    correctAnswerIndex: 2,
    explanation: 'A sentinel event is one that could cause serious harm → intervening on the wrong patient qualifies.',
    category: 'Safety, Quality, & Performance Improvement',
    difficulty: 2
  ),
  Question(
    id: 'safety_quality_performance_improvement_009',
    question: 'Which of the following is considered a clinical quality indicator for performance measurement?',
    options: [
      'Patient satisfaction survey result',
      'Nurses\' rest time',
      'Cesarean section rate',
      'Participation in the color-code system',
      'Level of education'
    ],
    correctAnswerIndex: 2,
    explanation: 'Cesarean rate measures clinical outcomes of a specific practice → used as a quality indicator.',
    category: 'Safety, Quality, & Performance Improvement',
    difficulty: 2
  ),
  Question(
    id: 'safety_quality_performance_improvement_010',
    question: 'The WHO Surgical Safety Checklist is implemented in three phases. Which of the following is not one of these phases?',
    options: [
      'Preoperative',
      '"Time-out" phase',
      'Postoperative',
      'Outpatient clinic visit',
      'Surgical site marking'
    ],
    correctAnswerIndex: 3,
    explanation: 'The checklist has three phases: before anesthesia (sign-in), before skin incision (time-out), and before leaving OR (sign-out).',
    category: 'Safety, Quality, & Performance Improvement',
    difficulty: 2
  ),
  Question(
    id: 'safety_quality_performance_improvement_011',
    question: 'In the "Just Culture" approach, what is the primary goal?',
    options: [
      'Leave errors unpunished',
      'Blame individuals',
      'Improve system safety',
      'Pay based on performance',
      'Hide errors'
    ],
    correctAnswerIndex: 2,
    explanation: 'Just Culture encourages reporting without punitive responses and focuses on system improvement.',
    category: 'Safety, Quality, & Performance Improvement',
    difficulty: 2
  ),
  Question(
    id: 'safety_quality_performance_improvement_012',
    question: 'The SBAR (Situation, Background, Assessment, Recommendation) communication model is most commonly used for which purpose?',
    options: [
      'Patient education',
      'ICU discharge',
      'Critical information handoff among healthcare workers',
      'Writing prescriptions',
      'Leave scheduling'
    ],
    correctAnswerIndex: 2,
    explanation: 'SBAR supports rapid, clear, structured communication among healthcare professionals.',
    category: 'Safety, Quality, & Performance Improvement',
    difficulty: 2
  ),
  Question(
    id: 'safety_quality_performance_improvement_013',
    question: 'When is FMEA (Failure Modes and Effects Analysis) applied?',
    options: [
      'After an error occurs',
      'Only in legal cases',
      'Before starting a new process',
      'After discharge',
      'After submitting an incident report'
    ],
    correctAnswerIndex: 2,
    explanation: 'FMEA is a proactive analysis performed before a process begins to identify and prevent potential failures.',
    category: 'Safety, Quality, & Performance Improvement',
    difficulty: 2
  ),
  Question(
    id: 'safety_quality_performance_improvement_014',
    question: 'Which statement best describes near-miss events in anesthesia practice?',
    options: [
      'They always result in harm',
      'They are noticed only by family members',
      'They are errors that could have occurred but were averted before causing harm',
      'They do not need to be reported',
      'Only novice staff make them'
    ],
    correctAnswerIndex: 2,
    explanation: 'Near-misses are prevented errors without harm; reporting them is important for system safety.',
    category: 'Safety, Quality, & Performance Improvement',
    difficulty: 2
  ),
  Question(
    id: 'safety_quality_performance_improvement_015',
    question: 'Which of the following can be used directly as a quality indicator in anesthesiology practice?',
    options: [
      'Surgical duration',
      'Anesthesia duration',
      'Patient\'s occupation',
      'ASA class',
      'Success of postoperative pain control'
    ],
    correctAnswerIndex: 4,
    explanation: 'Postoperative analgesia success directly affects patient comfort and service quality → a quality indicator.',
    category: 'Safety, Quality, & Performance Improvement',
    difficulty: 2
  ),
  Question(
    id: 'safety_quality_performance_improvement_016',
    question: 'Which of the following is not among WHO patient safety solutions?',
    options: [
      'Safe surgery practices',
      'Safe medication practices',
      'Safe ventilation system',
      'Access to healthcare services',
      'Ensuring hand hygiene'
    ],
    correctAnswerIndex: 2,
    explanation: 'Patient safety solutions emphasize hand hygiene, surgical safety, and medication safety.',
    category: 'Safety, Quality, & Performance Improvement',
    difficulty: 2
  ),
];
