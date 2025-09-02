import '../../models/question.dart';

List<Question> obstetricAnesthesiaQuestions = [
  Question(
    id: 'obstetric_anesthesia_001',
    question: 'Which anesthetic agent can significantly reduce uterine tone and increase the risk of postpartum hemorrhage?',
    options: [
      'Sevoflurane',
      'Lidocaine',
      'Ketamine',
      'Fentanyl',
      'Etomidate'
    ],
    correctAnswerIndex: 0,
    explanation: 'Inhalational agents (especially sevoflurane) cause uterine relaxation, which may increase bleeding risk.',
    category: 'Obstetric Anesthesia',
    difficulty: 2
  ),
  Question(
    id: 'obstetric_anesthesia_002',
    question: 'In which situation is general anesthesia most appropriate for cesarean section in a pregnant patient?',
    options: [
      'Elective cesarean',
      'Epidural catheter already in place',
      'Active bleeding + shock',
      'Planned labor analgesia',
      'Failed spinal anesthesia with enough time available'
    ],
    correctAnswerIndex: 2,
    explanation: 'Hypotension and hypovolemia are contraindications for regional anesthesia → general anesthesia is preferred.',
    category: 'Obstetric Anesthesia',
    difficulty: 2
  ),
  Question(
    id: 'obstetric_anesthesia_003',
    question: 'What is the main mechanism responsible for delayed gastric emptying in pregnancy?',
    options: [
      'Pylorospasm',
      'Decreased peristalsis',
      'Increased progesterone',
      'Increased parasympathetic tone',
      'Platelet activation'
    ],
    correctAnswerIndex: 2,
    explanation: 'Progesterone relaxes smooth muscles → delayed gastric emptying → increased aspiration risk.',
    category: 'Obstetric Anesthesia',
    difficulty: 2
  ),
  Question(
    id: 'obstetric_anesthesia_004',
    question: 'Which of the following is NOT a reason for performing rapid sequence induction (RSI) in pregnant patients?',
    options: [
      'Increased aspiration risk',
      'Increased oxygen consumption',
      'Increased gastric volume',
      'Decreased minute ventilation',
      'Risk of difficult airway'
    ],
    correctAnswerIndex: 3,
    explanation: 'Minute ventilation actually increases in pregnancy. RSI is performed due to increased aspiration risk and higher incidence of difficult intubation.',
    category: 'Obstetric Anesthesia',
    difficulty: 2
  ),
  Question(
    id: 'obstetric_anesthesia_005',
    question: 'What is the first step in managing hypotension after spinal anesthesia in a pregnant patient?',
    options: [
      'Start dopamine',
      'Trendelenburg position',
      'IV fluids + left lateral tilt',
      'Give furosemide',
      'IV dextrose'
    ],
    correctAnswerIndex: 2,
    explanation: 'Fluid loading + left lateral tilt relieves vena cava compression → first-line in treating spinal hypotension.',
    category: 'Obstetric Anesthesia',
    difficulty: 2
  ),
  Question(
    id: 'obstetric_anesthesia_006',
    question: 'What is an advantage of adding opioids to epidural anesthesia during labor?',
    options: [
      'Reduces hypotension',
      'Shortens labor',
      'Reduces local anesthetic dose requirement',
      'Increases uterine contractions',
      'Reduces cesarean rate'
    ],
    correctAnswerIndex: 2,
    explanation: 'Opioid addition decreases local anesthetic dose, lowers motor block risk, and provides better analgesia.',
    category: 'Obstetric Anesthesia',
    difficulty: 2
  ),
  Question(
    id: 'obstetric_anesthesia_007',
    question: 'Which of the following is a relative contraindication for epidural anesthesia?',
    options: [
      'Sepsis',
      'Infected puncture site',
      'Coagulopathy',
      'Platelets 110,000/mm³',
      'Patient refusal'
    ],
    correctAnswerIndex: 3,
    explanation: 'Most guidelines accept epidural if platelets >100,000/mm³, but it is still a relative contraindication requiring caution.',
    category: 'Obstetric Anesthesia',
    difficulty: 2
  ),
  Question(
    id: 'obstetric_anesthesia_008',
    question: 'Which is NOT a common method used to reduce aspiration risk in pregnant patients?',
    options: [
      'Sodium citrate',
      'H₂ receptor antagonists',
      'Metoclopramide',
      'Trendelenburg position',
      'Rapid sequence induction'
    ],
    correctAnswerIndex: 3,
    explanation: 'Trendelenburg increases intra-abdominal pressure and worsens aspiration risk.',
    category: 'Obstetric Anesthesia',
    difficulty: 2
  ),
  Question(
    id: 'obstetric_anesthesia_009',
    question: 'Which of the following is NOT an effect of epidural analgesia during labor?',
    options: [
      'Reduces pain in the first stage',
      'Suppresses uterine contractions',
      'Does not increase cesarean rate',
      'Does not impair fetal oxygenation',
      'May prolong labor slightly'
    ],
    correctAnswerIndex: 1,
    explanation: 'Epidural does not suppress uterine contractions; it may slightly prolong labor but is well tolerated.',
    category: 'Obstetric Anesthesia',
    difficulty: 2
  ),
  Question(
    id: 'obstetric_anesthesia_010',
    question: 'Which opioid is most commonly used in obstetric epidural analgesia?',
    options: [
      'Remifentanil',
      'Sufentanil',
      'Meperidine',
      'Alfentanil',
      'Tramadol'
    ],
    correctAnswerIndex: 1,
    explanation: 'Sufentanil is widely used due to its potency, rapid onset, and safety in low doses.',
    category: 'Obstetric Anesthesia',
    difficulty: 2
  ),
  Question(
    id: 'obstetric_anesthesia_011',
    question: 'What is the most likely cause of transient motor block after epidural analgesia in labor?',
    options: [
      'Epidural hematoma',
      'High concentration of local anesthetic',
      'Catheter in subarachnoid space',
      'Neurogenic shock',
      'Infection'
    ],
    correctAnswerIndex: 1,
    explanation: 'High concentration local anesthetics can block motor fibers → temporary motor block.',
    category: 'Obstetric Anesthesia',
    difficulty: 2
  ),
  Question(
    id: 'obstetric_anesthesia_012',
    question: 'Which is an important consideration for anesthetic management in preterm labor?',
    options: [
      'Reduced uterine sensitivity',
      'Increased fetal oxygen demand',
      'Placental insufficiency',
      'Fetal immune activation',
      'Increased amniotic fluid'
    ],
    correctAnswerIndex: 1,
    explanation: 'Preterm fetuses have higher O₂ requirements → oxygenation and uteroplacental perfusion are critical.',
    category: 'Obstetric Anesthesia',
    difficulty: 2
  ),
  Question(
    id: 'obstetric_anesthesia_013',
    question: 'What is an early sign of intravascular injection during epidural anesthesia?',
    options: [
      'Hypothermia',
      'Tachycardia + tinnitus',
      'Bradycardia',
      'Muscle rigidity',
      'Nausea'
    ],
    correctAnswerIndex: 1,
    explanation: 'Intravascular LA injection → CNS toxicity symptoms: metallic taste, dizziness, tinnitus, tachycardia.',
    category: 'Obstetric Anesthesia',
    difficulty: 2
  ),
  Question(
    id: 'obstetric_anesthesia_014',
    question: 'What is the main effect of adding adrenaline to spinal anesthesia?',
    options: [
      'Increases blood pressure',
      'Shortens motor block',
      'Increases systemic toxicity',
      'Prolongs local anesthetic effect',
      'Causes respiratory depression'
    ],
    correctAnswerIndex: 3,
    explanation: 'Adrenaline reduces systemic absorption → longer duration of block.',
    category: 'Obstetric Anesthesia',
    difficulty: 2
  ),
  Question(
    id: 'obstetric_anesthesia_015',
    question: 'Which agent is used to reduce gastric acidity in pregnancy?',
    options: [
      'Metoclopramide',
      'Sodium citrate',
      'Sucralfate',
      'Halothane',
      'Atropine'
    ],
    correctAnswerIndex: 1,
    explanation: 'Sodium citrate alkalinizes gastric contents, reducing acid aspiration injury.',
    category: 'Obstetric Anesthesia',
    difficulty: 2
  ),
  Question(
    id: 'obstetric_anesthesia_016',
    question: 'Which agent is NOT recommended intrathecally in pregnancy due to neurotoxicity?',
    options: [
      'Lidocaine',
      'Bupivacaine',
      'Tetracaine',
      'Chloroprocaine',
      'Benzocaine'
    ],
    correctAnswerIndex: 4,
    explanation: 'Benzocaine carries risk of methemoglobinemia and neurotoxicity → avoid intrathecal use.',
    category: 'Obstetric Anesthesia',
    difficulty: 2
  ),
  Question(
    id: 'obstetric_anesthesia_017',
    question: 'Which statement about opioids in obstetric anesthesia is correct?',
    options: [
      'Systemic use does not cause sedation',
      'Epidural opioids decrease fetal heart rate',
      'Epidural opioids reduce local anesthetic requirement',
      'Spinal opioids act within 30 seconds',
      'Epidural opioids cause tachycardia'
    ],
    correctAnswerIndex: 2,
    explanation: 'Opioids in epidural anesthesia enhance analgesia and reduce LA dose needed.',
    category: 'Obstetric Anesthesia',
    difficulty: 2
  ),
  Question(
    id: 'obstetric_anesthesia_018',
    question: 'Which is NOT a respiratory change in pregnancy?',
    options: [
      'Increased O₂ consumption',
      'Increased tidal volume',
      'Increased residual volume',
      'Increased minute ventilation',
      'Decreased FRC'
    ],
    correctAnswerIndex: 2,
    explanation: 'Residual volume decreases as diaphragm elevates.',
    category: 'Obstetric Anesthesia',
    difficulty: 2
  ),
  Question(
    id: 'obstetric_anesthesia_019',
    question: 'What is one of the main reasons for increased oxygen demand in pregnancy?',
    options: [
      'Increased metabolic rate',
      'Enlarged stomach volume',
      'Reduced renal function',
      'Increased lung compliance',
      'Increased hematocrit'
    ],
    correctAnswerIndex: 0,
    explanation: 'Metabolic rate rises 20–30% → higher O₂ consumption → critical for anesthesia management.',
    category: 'Obstetric Anesthesia',
    difficulty: 2
  ),
  Question(
    id: 'obstetric_anesthesia_020',
    question: 'What is the most likely cause of deep motor block after epidural anesthesia during labor?',
    options: [
      'Diluted LA',
      'Opioids added to epidural',
      'Catheter entry into subarachnoid space',
      'Preeclampsia',
      'Inadequate catheter placement'
    ],
    correctAnswerIndex: 2,
    explanation: 'If catheter enters subarachnoid space → produces dense motor block like spinal anesthesia.',
    category: 'Obstetric Anesthesia',
    difficulty: 2
  ),
  Question(
    id: 'obstetric_anesthesia_021',
    question: 'What is the most common epidural catheter insertion level in obstetric anesthesia?',
    options: [
      'T12–L1',
      'T10–T11',
      'L2–L3',
      'L3–L4',
      'L1–L2'
    ],
    correctAnswerIndex: 3,
    explanation: 'L3–L4 is easiest and safest, below spinal cord termination.',
    category: 'Obstetric Anesthesia',
    difficulty: 2
  ),
  Question(
    id: 'obstetric_anesthesia_022',
    question: 'Which is a complication of accidental dural puncture during epidural anesthesia?',
    options: [
      'Reduced motor block',
      'Post-dural puncture headache',
      'Increased cesarean rate',
      'Hypoglycemia',
      'Increased uterine contractions'
    ],
    correctAnswerIndex: 1,
    explanation: 'CSF leak → postural headache (worse standing, relieved lying).',
    category: 'Obstetric Anesthesia',
    difficulty: 2
  ),
  Question(
    id: 'obstetric_anesthesia_023',
    question: 'Which may cause maternal fever during labor with epidural analgesia?',
    options: [
      'LA allergy',
      'Cephalopelvic disproportion',
      'Epidural analgesia itself',
      'Increased amniotic fluid',
      'Episiotomy'
    ],
    correctAnswerIndex: 2,
    explanation: 'Epidural analgesia is associated with maternal fever, possibly via pro-inflammatory mechanisms.',
    category: 'Obstetric Anesthesia',
    difficulty: 2
  ),
  Question(
    id: 'obstetric_anesthesia_024',
    question: 'Which vasopressor is most appropriate for hypotension after epidural anesthesia in pregnancy?',
    options: [
      'Dopamine',
      'Adrenaline',
      'Noradrenaline',
      'Phenylephrine',
      'Dobutamine'
    ],
    correctAnswerIndex: 3,
    explanation: 'Phenylephrine raises BP without compromising uteroplacental perfusion.',
    category: 'Obstetric Anesthesia',
    difficulty: 2
  ),
  Question(
    id: 'obstetric_anesthesia_025',
    question: 'What is the fetal effect of maternal hypotension?',
    options: [
      'Fetal hypoxemia + bradycardia',
      'Fetal tachycardia',
      'Fetal hypercapnia',
      'Fetal hypertension',
      'Fetal convulsions'
    ],
    correctAnswerIndex: 0,
    explanation: 'Maternal hypotension → reduced uteroplacental perfusion → fetal hypoxia and bradycardia.',
    category: 'Obstetric Anesthesia',
    difficulty: 2
  ),
  Question(
    id: 'obstetric_anesthesia_026',
    question: 'In labor with epidural analgesia, if progress slows, what is the most likely cause?',
    options: [
      'Cervical stenosis',
      'Uterine hypercontractility',
      'Reduced uterine muscle tone due to anesthetic',
      'Increased oxytocin release',
      'Fetal distress'
    ],
    correctAnswerIndex: 2,
    explanation: 'Epidural anesthesia decreases sympathetic tone → reduced uterine tone → prolonged 2nd stage of labor.',
    category: 'Obstetric Anesthesia',
    difficulty: 2
  ),
  Question(
    id: 'obstetric_anesthesia_027',
    question: 'Which drug used in eclampsia treatment also affects anesthesia management?',
    options: [
      'Diazepam',
      'Labetalol',
      'Hydralazine',
      'Magnesium sulfate',
      'Furosemide'
    ],
    correctAnswerIndex: 3,
    explanation: 'MgSO₄ prevents seizures but potentiates neuromuscular blockers → requires caution during anesthesia.',
    category: 'Obstetric Anesthesia',
    difficulty: 2
  ),
  Question(
    id: 'obstetric_anesthesia_028',
    question: 'What is the main mechanism of bradycardia after spinal anesthesia?',
    options: [
      'Pain relief',
      'Increased parasympathetic tone',
      'Increased cardiac output',
      'Reduced venous return',
      'Respiratory alkalosis'
    ],
    correctAnswerIndex: 3,
    explanation: 'Spinal block reduces venous tone → decreased venous return → baroreceptor suppression → bradycardia.',
    category: 'Obstetric Anesthesia',
    difficulty: 2
  ),
  Question(
    id: 'obstetric_anesthesia_029',
    question: 'When does post-dural puncture headache most commonly occur after cesarean delivery?',
    options: [
      'Within 6 hours',
      'Within 12 hours',
      '24–48 hours',
      '3–5 days',
      '1 week later'
    ],
    correctAnswerIndex: 2,
    explanation: 'PDPH typically develops within 24–48 hours, worse upright, relieved supine.',
    category: 'Obstetric Anesthesia',
    difficulty: 2
  ),
  Question(
    id: 'obstetric_anesthesia_030',
    question: 'What is the most effective way to reduce fetal drug exposure during epidural anesthesia?',
    options: [
      'Reduce dosing intervals',
      'Combine with adrenaline',
      'Use lipophilic drugs',
      'Use opioids only',
      'Intrathecal administration'
    ],
    correctAnswerIndex: 1,
    explanation: 'Adrenaline decreases systemic absorption → less placental transfer.',
    category: 'Obstetric Anesthesia',
    difficulty: 2
  ),
  Question(
    id: 'obstetric_anesthesia_031',
    question: 'What is the key difference between epidural and spinal anesthesia?',
    options: [
      'Faster onset with epidural',
      'Spinal lasts longer',
      'Epidural allows dose titration',
      'Spinal has fewer complications',
      'Spinal requires test dose'
    ],
    correctAnswerIndex: 2,
    explanation: 'Epidural catheter permits dose adjustments → controlled, prolonged analgesia.',
    category: 'Obstetric Anesthesia',
    difficulty: 2
  ),
  Question(
    id: 'obstetric_anesthesia_032',
    question: 'What factor primarily determines the spread of sensory loss in spinal anesthesia?',
    options: [
      'pH of anesthetic',
      'Duration of injection',
      'CSF volume and baricity',
      'Diameter of spinal nerves',
      'Catheter length'
    ],
    correctAnswerIndex: 2,
    explanation: 'Baricity and CSF volume are the most important determinants of drug spread in spinal anesthesia.',
    category: 'Obstetric Anesthesia',
    difficulty: 2
  ),
  Question(
    id: 'obstetric_anesthesia_033',
    question: 'Which agent is most commonly added to prolong the effect of local anesthetics in spinal anesthesia?',
    options: [
      'Atropine',
      'Midazolam',
      'Epinephrine',
      'Neostigmine',
      'Diazepam'
    ],
    correctAnswerIndex: 2,
    explanation: 'Epinephrine slows systemic absorption through vasoconstriction, prolonging the effect of local anesthetics in spinal and epidural anesthesia.',
    category: 'Obstetric Anesthesia',
    difficulty: 2
  ),
  Question(
    id: 'obstetric_anesthesia_034',
    question: 'In a labor patient under epidural anesthesia with full cervical dilation (10 cm), when should pushing be initiated?',
    options: [
      'Immediately',
      'After 30 minutes',
      'When labor pain starts',
      'During peak uterine contractions',
      'After full descent of the fetal head'
    ],
    correctAnswerIndex: 0,
    explanation: 'Once the cervix is fully dilated, pushing should begin. Epidural analgesia does not prevent active pushing.',
    category: 'Obstetric Anesthesia',
    difficulty: 2
  ),
  Question(
    id: 'obstetric_anesthesia_035',
    question: 'Which pharmacological agent is most effective in preventing hypotension after spinal anesthesia?',
    options: [
      'Adrenaline',
      'Dopamine',
      'Ephedrine',
      'Phenylephrine',
      'Noradrenaline'
    ],
    correctAnswerIndex: 3,
    explanation: 'Phenylephrine, a pure α-agonist, provides arterial vasoconstriction and effectively prevents hypotension following spinal anesthesia.',
    category: 'Obstetric Anesthesia',
    difficulty: 2
  ),
  Question(
    id: 'obstetric_anesthesia_036',
    question: 'What is the most likely cause of "patchy block" during epidural analgesia?',
    options: [
      'Inadequate local anesthetic dose',
      'Epidural hematoma',
      'Incorrect catheter placement',
      'Local anesthetic toxicity',
      'Maternal left lateral position'
    ],
    correctAnswerIndex: 2,
    explanation: 'Improper catheter placement may fail to cover some dermatomes, resulting in a patchy block.',
    category: 'Obstetric Anesthesia',
    difficulty: 2
  ),
  Question(
    id: 'obstetric_anesthesia_037',
    question: 'What risk is increased by using high doses of inhalational agents in obstetric general anesthesia?',
    options: [
      'Fetal bradycardia',
      'Increased uterine contractility',
      'Increased placental perfusion',
      'Uterine atony and postpartum hemorrhage',
      'Hyperventilation'
    ],
    correctAnswerIndex: 3,
    explanation: 'High doses of volatile anesthetics (halothane, sevoflurane) relax the uterus, increasing postpartum hemorrhage risk.',
    category: 'Obstetric Anesthesia',
    difficulty: 2
  ),
  Question(
    id: 'obstetric_anesthesia_038',
    question: 'In a preeclamptic patient scheduled for cesarean with platelet count 65,000/mm³, which anesthesia method is most appropriate?',
    options: [
      'Spinal anesthesia',
      'Epidural anesthesia',
      'Local infiltration',
      'General anesthesia',
      'Intrathecal opioid'
    ],
    correctAnswerIndex: 3,
    explanation: 'Neuraxial blocks are risky if platelets <75,000/mm³. General anesthesia is preferred.',
    category: 'Obstetric Anesthesia',
    difficulty: 2
  ),
  Question(
    id: 'obstetric_anesthesia_039',
    question: 'Which induction agent is most suitable for rapid sequence intubation in an emergency cesarean section?',
    options: [
      'Propofol',
      'Etomidate',
      'Ketamine',
      'Thiopental',
      'Midazolam'
    ],
    correctAnswerIndex: 3,
    explanation: 'Thiopental has a rapid onset and short duration, making it a classic induction agent for emergency C-sections.',
    category: 'Obstetric Anesthesia',
    difficulty: 2
  ),
  Question(
    id: 'obstetric_anesthesia_040',
    question: 'In an obstetric patient with fetal bradycardia due to maternal hypotension, what is the first intervention?',
    options: [
      'Oxygen administration and maternal position change',
      'Atropine',
      'Ephedrine',
      'Immediate cesarean',
      'Accelerate delivery'
    ],
    correctAnswerIndex: 0,
    explanation: 'First step is to improve uteroplacental perfusion by giving oxygen and placing the mother in the left lateral position.',
    category: 'Obstetric Anesthesia',
    difficulty: 2
  ),
  Question(
    id: 'obstetric_anesthesia_041',
    question: 'What is the most common complication after an epidural blood patch?',
    options: [
      'Meningitis',
      'Intracranial hemorrhage',
      'Infection',
      'Back pain',
      'Coma'
    ],
    correctAnswerIndex: 3,
    explanation: 'Back pain is the most common but usually self-limited side effect after an epidural blood patch.',
    category: 'Obstetric Anesthesia',
    difficulty: 2
  ),
  Question(
    id: 'obstetric_anesthesia_042',
    question: 'In the presence of meconium-stained amniotic fluid, which complication should be carefully monitored in the newborn?',
    options: [
      'Hyperbilirubinemia',
      'Hypoglycemia',
      'Meconium aspiration syndrome',
      'Congenital pneumonia',
      'Hypocalcemia'
    ],
    correctAnswerIndex: 2,
    explanation: 'Occurs when meconium-contaminated fluid is aspirated during delivery; neonatal ventilatory support may be needed.',
    category: 'Obstetric Anesthesia',
    difficulty: 2
  ),
  Question(
    id: 'obstetric_anesthesia_043',
    question: 'Which factor most often causes transient urinary retention after neuraxial block?',
    options: [
      'High concentration of local anesthetics',
      'Addition of adrenaline',
      'Large epidural space',
      'Minimal nerve stimulation',
      'Maternal dehydration'
    ],
    correctAnswerIndex: 0,
    explanation: 'High concentrations affect sacral nerves → inhibit detrusor muscle → urinary retention.',
    category: 'Obstetric Anesthesia',
    difficulty: 2
  ),
  Question(
    id: 'obstetric_anesthesia_044',
    question: 'Which system is most affected by bupivacaine toxicity in obstetric anesthesia?',
    options: [
      'Respiratory',
      'Gastrointestinal',
      'Cardiovascular',
      'Hematologic',
      'Endocrine'
    ],
    correctAnswerIndex: 2,
    explanation: 'Bupivacaine can cause cardiotoxicity (arrhythmias, cardiac arrest). Lipid rescue therapy is indicated in toxicity.',
    category: 'Obstetric Anesthesia',
    difficulty: 2
  ),
  Question(
    id: 'obstetric_anesthesia_045',
    question: 'What is the ideal epidural catheter placement level for labor analgesia?',
    options: [
      'T4',
      'T6',
      'T10–L1',
      'L2–L3',
      'S1–S2'
    ],
    correctAnswerIndex: 2,
    explanation: 'For labor analgesia, block should cover T10–L1. For cesarean, it must extend up to T4.',
    category: 'Obstetric Anesthesia',
    difficulty: 2
  ),
  Question(
    id: 'obstetric_anesthesia_046',
    question: 'What is the earliest respiratory parameter to change in pregnancy?',
    options: [
      'Tidal volume',
      'Respiratory rate',
      'Functional residual capacity (FRC)',
      'PaO₂',
      'PaCO₂'
    ],
    correctAnswerIndex: 0,
    explanation: 'Tidal volume increases by ~40% in the 1st trimester; FRC decreases later (2nd trimester).',
    category: 'Obstetric Anesthesia',
    difficulty: 2
  ),
  Question(
    id: 'obstetric_anesthesia_047',
    question: 'How does minimum alveolar concentration (MAC) change in pregnancy?',
    options: [
      '+40%',
      '+20%',
      'No change',
      '–20%',
      '–40%'
    ],
    correctAnswerIndex: 4,
    explanation: 'Progesterone reduces MAC by about 40%.',
    category: 'Obstetric Anesthesia',
    difficulty: 2
  ),
  Question(
    id: 'obstetric_anesthesia_048',
    question: 'Which is the ideal test dose local anesthetic for epidural anesthesia?',
    options: [
      '0.5% bupivacaine',
      '2% lidocaine + epinephrine',
      '0.75% ropivacaine',
      '0.25% levobupivacaine',
      '1% prilocaine'
    ],
    correctAnswerIndex: 1,
    explanation: 'Epinephrine-containing lidocaine detects accidental intravascular injection.',
    category: 'Obstetric Anesthesia',
    difficulty: 2
  ),
  Question(
    id: 'obstetric_anesthesia_049',
    question: 'From which week does aortocaval compression become clinically significant?',
    options: [
      '8th week',
      '12th week',
      '20th week',
      '28th week',
      '36th week'
    ],
    correctAnswerIndex: 2,
    explanation: 'After 20 weeks, supine position can cause hypotension → left lateral tilt recommended.',
    category: 'Obstetric Anesthesia',
    difficulty: 2
  ),
  Question(
    id: 'obstetric_anesthesia_050',
    question: 'Which factor most increases the risk of post-dural puncture headache (PDPH)?',
    options: [
      '22G spinal needle',
      '25G Whitacre needle',
      '27G Quincke needle',
      '18G epidural needle',
      '29G Sprotte needle'
    ],
    correctAnswerIndex: 2,
    explanation: 'Cutting needles like Quincke increase PDPH risk compared to pencil-point needles.',
    category: 'Obstetric Anesthesia',
    difficulty: 2
  ),
  Question(
    id: 'obstetric_anesthesia_051',
    question: 'Which drug is contraindicated in pregnancy?',
    options: [
      'Ondansetron',
      'Metoclopramide',
      'NSAIDs (3rd trimester)',
      'Ranitidine',
      'Heparin'
    ],
    correctAnswerIndex: 2,
    explanation: 'NSAIDs may cause premature closure of the ductus arteriosus.',
    category: 'Obstetric Anesthesia',
    difficulty: 2
  ),
  Question(
    id: 'obstetric_anesthesia_052',
    question: 'What is the first-line treatment for eclampsia?',
    options: [
      'Diazepam',
      'Phenytoin',
      'Magnesium sulfate',
      'Labetalol',
      'Hydralazine'
    ],
    correctAnswerIndex: 2,
    explanation: 'MgSO₄ is the gold standard for seizure prophylaxis and treatment.',
    category: 'Obstetric Anesthesia',
    difficulty: 2
  ),
  Question(
    id: 'obstetric_anesthesia_053',
    question: 'Which anesthesia method is contraindicated in placenta previa?',
    options: [
      'General anesthesia',
      'Spinal anesthesia',
      'Epidural anesthesia',
      'Combined spinal-epidural',
      'Regional anesthesia is not absolutely contraindicated'
    ],
    correctAnswerIndex: 4,
    explanation: 'Regional anesthesia is not absolutely contraindicated, but GA may be preferred in severe bleeding.',
    category: 'Obstetric Anesthesia',
    difficulty: 2
  ),
  Question(
    id: 'obstetric_anesthesia_054',
    question: 'What is the first-line treatment for uterine atony?',
    options: [
      'Methylergonovine',
      'Carboprost',
      'Oxytocin',
      'Misoprostol',
      'Tranexamic acid'
    ],
    correctAnswerIndex: 2,
    explanation: 'Oxytocin IV bolus (5–10 IU) is the first-line therapy.',
    category: 'Obstetric Anesthesia',
    difficulty: 2
  ),
  Question(
    id: 'obstetric_anesthesia_055',
    question: 'When does physiologic anemia of pregnancy peak?',
    options: [
      '4–8 weeks',
      '10–14 weeks',
      '20–24 weeks',
      '28–32 weeks',
      '36–40 weeks'
    ],
    correctAnswerIndex: 3,
    explanation: 'Plasma volume expansion peaks around 28–32 weeks.',
    category: 'Obstetric Anesthesia',
    difficulty: 2
  ),
  Question(
    id: 'obstetric_anesthesia_056',
    question: 'What is the effect of epidural analgesia on labor duration?',
    options: [
      'Prolongs 1st stage',
      'Prolongs 2nd stage',
      'Shortens both stages',
      'Affects only 3rd stage',
      'No effect'
    ],
    correctAnswerIndex: 1,
    explanation: 'Epidural analgesia prolongs the 2nd stage of labor by ~15–30 minutes.',
    category: 'Obstetric Anesthesia',
    difficulty: 2
  ),
  Question(
    id: 'obstetric_anesthesia_057',
    question: 'What is the most common arrhythmia in pregnancy?',
    options: [
      'Atrial fibrillation',
      'Ventricular tachycardia',
      'Premature ventricular contractions (PVCs)',
      'Sinus tachycardia',
      'AV block'
    ],
    correctAnswerIndex: 2,
    explanation: 'PVCs are the most common arrhythmia observed in pregnancy.',
    category: 'Obstetric Anesthesia',
    difficulty: 2
  ),
];
