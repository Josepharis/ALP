import '../../models/question.dart';

List<Question> anticholinergicDrugsQuestions = [
  Question(
    id: 'anticholinergic_drugs_001',
    question: 'Which of the following drugs has anticholinergic effects?',
    options: [
      'Neostigmine',
      'Fentanyl',
      'Atropine',
      'Succinylcholine',
      'Midazolam'
    ],
    correctAnswerIndex: 2,
    explanation: 'Atropine is an anticholinergic drug that blocks muscarinic receptors and reduces parasympathetic activity.',
    category: 'Anticholinergic Drugs',
    difficulty: 2
  ),
  Question(
    id: 'anticholinergic_drugs_002',
    question: 'Which of the following is NOT an anticholinergic effect?',
    options: [
      'Mydriasis',
      'Dry mouth',
      'Bradycardia',
      'Urinary retention',
      'Decreased bowel sounds'
    ],
    correctAnswerIndex: 2,
    explanation: 'Anticholinergics cause tachycardia, not bradycardia. They also reduce GI motility and secretions.',
    category: 'Anticholinergic Drugs',
    difficulty: 2
  ),
  Question(
    id: 'anticholinergic_drugs_003',
    question: 'Which of the following anticholinergic drugs can cross the blood-brain barrier?',
    options: [
      'Glycopyrrolate',
      'Neostigmine',
      'Atropine',
      'Sugammadex',
      'Vecuronium'
    ],
    correctAnswerIndex: 2,
    explanation: 'Atropine is a tertiary amine, lipophilic, and crosses the BBB → can produce central effects.',
    category: 'Anticholinergic Drugs',
    difficulty: 2
  ),
  Question(
    id: 'anticholinergic_drugs_004',
    question: 'Which of the following is a property of glycopyrrolate?',
    options: [
      'Tertiary amine',
      'Strong central effect',
      'Muscarinic receptor antagonist',
      'Causes respiratory depression',
      'Causes hypotension'
    ],
    correctAnswerIndex: 2,
    explanation: 'Glycopyrrolate is a quaternary amine antimuscarinic. It does not cross the BBB, acts peripherally to reduce bradycardia and secretions.',
    category: 'Anticholinergic Drugs',
    difficulty: 2
  ),
  Question(
    id: 'anticholinergic_drugs_005',
    question: 'Which atropine effect appears first with increasing dose?',
    options: [
      'Visual disturbance',
      'Decreased salivation',
      'Tachycardia',
      'Urinary retention',
      'Bronchodilation'
    ],
    correctAnswerIndex: 1,
    explanation: 'The exocrine glands are most sensitive → reduced salivation is usually the first clinical effect.',
    category: 'Anticholinergic Drugs',
    difficulty: 2
  ),
  Question(
    id: 'anticholinergic_drugs_006',
    question: 'Which of the following is an effect of anticholinergic drugs?',
    options: [
      'Bronchoconstriction',
      'Pupil constriction',
      'Increased salivation',
      'Bradycardia',
      'Reduced secretions'
    ],
    correctAnswerIndex: 4,
    explanation: 'Antimuscarinics inhibit parasympathetic activity → bronchodilation, decreased secretions, tachycardia.',
    category: 'Anticholinergic Drugs',
    difficulty: 2
  ),
  Question(
    id: 'anticholinergic_drugs_007',
    question: 'Which of the following is a symptom of central anticholinergic syndrome?',
    options: [
      'Pupil miosis',
      'Restlessness, delirium',
      'Excessive salivation',
      'Bronchospasm',
      'Muscle spasms'
    ],
    correctAnswerIndex: 1,
    explanation: 'Central anticholinergic syndrome → agitation, confusion, hallucinations. Commonly triggered by atropine or scopolamine.',
    category: 'Anticholinergic Drugs',
    difficulty: 2
  ),
  Question(
    id: 'anticholinergic_drugs_008',
    question: 'Which agent is used to treat central anticholinergic syndrome?',
    options: [
      'Atropine',
      'Neostigmine',
      'Physostigmine',
      'Glycopyrrolate',
      'Rocuronium'
    ],
    correctAnswerIndex: 2,
    explanation: 'Physostigmine is the only anticholinesterase that crosses the BBB → antidote for central anticholinergic toxicity.',
    category: 'Anticholinergic Drugs',
    difficulty: 2
  ),
  Question(
    id: 'anticholinergic_drugs_009',
    question: 'Which antimuscarinic agent is the longest acting?',
    options: [
      'Atropine',
      'Glycopyrrolate',
      'Scopolamine',
      'Ipratropium',
      'Tropicamide'
    ],
    correctAnswerIndex: 1,
    explanation: 'Glycopyrrolate has a longer duration (2–4 hours) compared with atropine and scopolamine.',
    category: 'Anticholinergic Drugs',
    difficulty: 2
  ),
  Question(
    id: 'anticholinergic_drugs_010',
    question: 'Which of the following anticholinergics causes the most central sedation?',
    options: [
      'Scopolamine',
      'Glycopyrrolate',
      'Ipratropium',
      'Oxybutynin',
      'Atropine'
    ],
    correctAnswerIndex: 0,
    explanation: 'Scopolamine has marked central effects → sedation, amnesia, anti-nausea effects.',
    category: 'Anticholinergic Drugs',
    difficulty: 2
  ),
  Question(
    id: 'anticholinergic_drugs_011',
    question: 'Which anticholinergic drug is commonly used postoperatively to reduce salivation?',
    options: [
      'Scopolamine',
      'Neostigmine',
      'Glycopyrrolate',
      'Physostigmine',
      'Edrophonium'
    ],
    correctAnswerIndex: 2,
    explanation: 'Glycopyrrolate does not cross the BBB and is effective in reducing salivary and airway secretions.',
    category: 'Anticholinergic Drugs',
    difficulty: 2
  ),
  Question(
    id: 'anticholinergic_drugs_012',
    question: 'In which system do anticholinergics increase muscle tone?',
    options: [
      'Gastrointestinal system',
      'Urinary system',
      'Respiratory system',
      'CNS',
      'None'
    ],
    correctAnswerIndex: 4,
    explanation: 'Antimuscarinics relax smooth muscles → used for spasm relief in bladder or bowel.',
    category: 'Anticholinergic Drugs',
    difficulty: 2
  ),
  Question(
    id: 'anticholinergic_drugs_013',
    question: 'Which of the following is a classic sign of atropine poisoning?',
    options: [
      'Hypothermia',
      'Miosis',
      'Excessive secretions',
      'Tachycardia with hot, dry skin',
      'Bradycardia with cold skin'
    ],
    correctAnswerIndex: 3,
    explanation: 'Atropine toxicity: "dry as a bone, hot as a hare, red as a beet, mad as a hatter" → dry skin, hyperthermia, mydriasis, delirium.',
    category: 'Anticholinergic Drugs',
    difficulty: 2
  ),
  Question(
    id: 'anticholinergic_drugs_014',
    question: 'Scopolamine\'s antiemetic effect is due to blockade of which receptor?',
    options: [
      'Dopamine',
      'Histamine',
      'Muscarinic',
      'Serotonin',
      'NMDA'
    ],
    correctAnswerIndex: 2,
    explanation: 'Blocks vestibular muscarinic receptors → effective in motion sickness.',
    category: 'Anticholinergic Drugs',
    difficulty: 2
  ),
  Question(
    id: 'anticholinergic_drugs_015',
    question: 'In which condition can anticholinergics increase intraocular pressure?',
    options: [
      'Glaucoma',
      'Cataract',
      'Uveitis',
      'Conjunctivitis',
      'Myopia'
    ],
    correctAnswerIndex: 0,
    explanation: 'Mydriasis can precipitate angle-closure glaucoma → contraindicated in such patients.',
    category: 'Anticholinergic Drugs',
    difficulty: 2
  ),
  Question(
    id: 'anticholinergic_drugs_016',
    question: 'Which condition can anticholinergics cause?',
    options: [
      'Diarrhea',
      'Bradycardia',
      'Increased secretions',
      'Urinary retention',
      'Muscle spasm'
    ],
    correctAnswerIndex: 3,
    explanation: 'Antimuscarinics reduce detrusor muscle contraction → urinary retention.',
    category: 'Anticholinergic Drugs',
    difficulty: 2
  ),
  Question(
    id: 'anticholinergic_drugs_017',
    question: 'Which antimuscarinic agent has the least central effects?',
    options: [
      'Atropine',
      'Scopolamine',
      'Glycopyrrolate',
      'Oxybutynin',
      'Tropicamide'
    ],
    correctAnswerIndex: 2,
    explanation: 'Glycopyrrolate is a quaternary amine → does not cross BBB → minimal CNS side effects.',
    category: 'Anticholinergic Drugs',
    difficulty: 2
  ),
  Question(
    id: 'anticholinergic_drugs_018',
    question: 'Which clinical condition is the most important contraindication for anticholinergics?',
    options: [
      'Arrhythmia',
      'Asthma',
      'Glaucoma',
      'Diabetes',
      'Hypotension'
    ],
    correctAnswerIndex: 2,
    explanation: 'Anticholinergics dilate pupils → ↑ intraocular pressure → contraindicated in angle-closure glaucoma.',
    category: 'Anticholinergic Drugs',
    difficulty: 2
  ),
  Question(
    id: 'anticholinergic_drugs_019',
    question: 'Which drug most commonly causes central anticholinergic toxicity?',
    options: [
      'Glycopyrrolate',
      'Neostigmine',
      'Scopolamine',
      'Vecuronium',
      'Edrophonium'
    ],
    correctAnswerIndex: 2,
    explanation: 'Scopolamine easily crosses BBB → risk of delirium, confusion, hallucinations.',
    category: 'Anticholinergic Drugs',
    difficulty: 2
  ),
  Question(
    id: 'anticholinergic_drugs_020',
    question: 'What is the effect of anticholinergics on the gastrointestinal system?',
    options: [
      'Increase motility',
      'Increase secretions',
      'Decrease motility',
      'Stimulate acid production',
      'Increase peristalsis'
    ],
    correctAnswerIndex: 2,
    explanation: 'They decrease GI motility and secretions → constipation, bloating.',
    category: 'Anticholinergic Drugs',
    difficulty: 2
  ),
  Question(
    id: 'anticholinergic_drugs_021',
    question: 'What is the main use of transdermal scopolamine?',
    options: [
      'Anticonvulsant',
      'Prevent urinary incontinence',
      'Prevent motion sickness',
      'Prevent bradycardia',
      'Appetite stimulant'
    ],
    correctAnswerIndex: 2,
    explanation: 'Transdermal scopolamine patch → motion sickness prophylaxis, lasts for several days.',
    category: 'Anticholinergic Drugs',
    difficulty: 2
  ),
  Question(
    id: 'anticholinergic_drugs_022',
    question: 'In which situation are anticholinergics used for relaxation?',
    options: [
      'Postoperative pain',
      'Smooth muscle spasms',
      'Skeletal muscle spasms',
      'Hyperkalemia',
      'Arrhythmia'
    ],
    correctAnswerIndex: 1,
    explanation: 'Antimuscarinics relieve visceral smooth muscle spasm (e.g., intestinal or bladder colic).',
    category: 'Anticholinergic Drugs',
    difficulty: 2
  ),
  Question(
    id: 'anticholinergic_drugs_023',
    question: 'Which is NOT an indication for anticholinergics?',
    options: [
      'Treatment of urinary retention',
      'Motion sickness prophylaxis',
      'Control of salivation',
      'Treatment of bradycardia',
      'Preoperative secretion reduction'
    ],
    correctAnswerIndex: 0,
    explanation: 'Anticholinergics cause urinary retention, they are not used to treat it.',
    category: 'Anticholinergic Drugs',
    difficulty: 2
  ),
  Question(
    id: 'anticholinergic_drugs_024',
    question: 'Scopolamine\'s antiemetic effect is due to suppression of which system?',
    options: [
      'Chemoreceptor trigger zone',
      'Vestibular system',
      'GI motility',
      'Medullary respiratory center',
      'Proprioceptive pathways'
    ],
    correctAnswerIndex: 1,
    explanation: 'Blocks muscarinic receptors in vestibular pathways → prevents motion sickness.',
    category: 'Anticholinergic Drugs',
    difficulty: 2
  ),
  Question(
    id: 'anticholinergic_drugs_025',
    question: 'Which secondary effect may develop due to anticholinergics?',
    options: [
      'Bradycardia',
      'Nausea',
      'Hyperthermia (impaired thermoregulation)',
      'Bronchospasm',
      'Diarrhea'
    ],
    correctAnswerIndex: 2,
    explanation: 'Inhibit sweating → especially in children, may cause dangerous hyperthermia.',
    category: 'Anticholinergic Drugs',
    difficulty: 2
  ),
  Question(
    id: 'anticholinergic_drugs_026',
    question: 'Scopolamine\'s role in postoperative nausea and vomiting (PONV) is based on which action?',
    options: [
      'Dopamine receptor antagonism',
      'Histamine receptor blockade',
      'Muscarinic receptor antagonism',
      'Serotonin antagonism',
      'NMDA blockade'
    ],
    correctAnswerIndex: 2,
    explanation: 'By blocking muscarinic receptors in vestibular nuclei, scopolamine reduces vestibular-origin nausea.',
    category: 'Anticholinergic Drugs',
    difficulty: 2
  ),
  Question(
    id: 'anticholinergic_drugs_027',
    question: 'In which poisoning is atropine used as an antidote?',
    options: [
      'Organophosphate poisoning',
      'Iron poisoning',
      'Lead poisoning',
      'Opioid intoxication',
      'Cyanide poisoning'
    ],
    correctAnswerIndex: 0,
    explanation: 'Atropine is the antimuscarinic antidote for organophosphate and other cholinergic poisonings. Used with pralidoxime.',
    category: 'Anticholinergic Drugs',
    difficulty: 2
  ),
  Question(
    id: 'anticholinergic_drugs_028',
    question: 'Which anticholinergic is most commonly used preoperatively to reduce secretions?',
    options: [
      'Scopolamine',
      'Glycopyrrolate',
      'Oxybutynin',
      'Atropine',
      'Tropicamide'
    ],
    correctAnswerIndex: 1,
    explanation: 'Glycopyrrolate reduces salivation and airway secretions without central effects → preferred preoperatively.',
    category: 'Anticholinergic Drugs',
    difficulty: 2
  ),
  Question(
    id: 'anticholinergic_drugs_029',
    question: 'Which statement about anticholinergics in pregnancy is correct?',
    options: [
      'All are safe',
      'Absolutely contraindicated',
      'Glycopyrrolate does not cross the placenta',
      'Scopolamine causes fetal bradycardia',
      'Atropine reduces fetal heart rate'
    ],
    correctAnswerIndex: 2,
    explanation: 'As a quaternary amine, glycopyrrolate does not cross the placenta → safer option in pregnancy.',
    category: 'Anticholinergic Drugs',
    difficulty: 2
  ),
  Question(
    id: 'anticholinergic_drugs_030',
    question: 'Which is the typical ocular side effect of anticholinergics?',
    options: [
      'Miosis',
      'Improved vision',
      'Mydriasis and accommodation loss',
      'Useful in glaucoma treatment',
      'Reduced eye dryness'
    ],
    correctAnswerIndex: 2,
    explanation: 'Antimuscarinics relax ciliary muscle → pupil dilation and blurred near vision.',
    category: 'Anticholinergic Drugs',
    difficulty: 2
  ),
  Question(
    id: 'anticholinergic_drugs_031',
    question: 'Which form of scopolamine provides the longest antiemetic effect?',
    options: [
      'Oral',
      'Intramuscular',
      'Intravenous',
      'Transdermal',
      'Rectal'
    ],
    correctAnswerIndex: 3,
    explanation: 'Transdermal scopolamine lasts up to 72 hours.',
    category: 'Anticholinergic Drugs',
    difficulty: 2
  ),
  Question(
    id: 'anticholinergic_drugs_032',
    question: 'Which is a property of glycopyrrolate?',
    options: [
      'Short-acting, crosses CNS',
      'Long-acting, does not cross CNS',
      'Causes central anticholinergic syndrome',
      'NMDA antagonist',
      'Acetylcholinesterase inhibitor'
    ],
    correctAnswerIndex: 1,
    explanation: 'Glycopyrrolate is a long-acting quaternary amine → no central effects.',
    category: 'Anticholinergic Drugs',
    difficulty: 2
  ),
  Question(
    id: 'anticholinergic_drugs_033',
    question: 'Delirium due to anticholinergics is most common in which patient group?',
    options: [
      'Healthy young adults',
      'Asthma patients',
      'Elderly individuals',
      'Athletes',
      'Hypotensive patients'
    ],
    correctAnswerIndex: 2,
    explanation: 'Elderly patients are very sensitive to CNS effects of anticholinergics → higher risk of confusion/delirium.',
    category: 'Anticholinergic Drugs',
    difficulty: 2
  ),
  Question(
    id: 'anticholinergic_drugs_034',
    question: 'Which drug is the best treatment for central anticholinergic toxicity?',
    options: [
      'Neostigmine',
      'Edrophonium',
      'Glycopyrrolate',
      'Physostigmine',
      'Atropine'
    ],
    correctAnswerIndex: 3,
    explanation: 'Physostigmine crosses the BBB and reverses central anticholinergic toxicity.',
    category: 'Anticholinergic Drugs',
    difficulty: 2
  ),
  Question(
    id: 'anticholinergic_drugs_035',
    question: 'Which antimuscarinic is most commonly used as a preanesthetic to reduce secretions?',
    options: [
      'Atropine',
      'Scopolamine',
      'Glycopyrrolate',
      'Dexmedetomidine',
      'Phenylephrine'
    ],
    correctAnswerIndex: 2,
    explanation: 'Glycopyrrolate reduces salivation, has minimal bradycardia risk, and does not cross the BBB → most commonly used preanesthetic antimuscarinic.',
    category: 'Anticholinergic Drugs',
    difficulty: 2
  ),
  Question(
    id: 'anticholinergic_drugs_036',
    question: 'Which sign appears first as the dose of atropine increases?',
    options: [
      'Bradycardia',
      'Mydriasis',
      'Diarrhea',
      'Sweating',
      'Nausea'
    ],
    correctAnswerIndex: 1,
    explanation: 'Atropine causes dose-dependent effects: first paradoxical bradycardia, dry mouth, decreased sweating → then tachycardia and pupil dilation (mydriasis) → followed by reduced secretions and further HR increase.',
    category: 'Anticholinergic Drugs',
    difficulty: 2
  ),
  Question(
    id: 'anticholinergic_drugs_037',
    question: 'Which of the following antimuscarinics is used in the treatment of urinary incontinence?',
    options: [
      'Atropine',
      'Glycopyrrolate',
      'Scopolamine',
      'Oxybutynin',
      'Ipratropium'
    ],
    correctAnswerIndex: 3,
    explanation: 'Oxybutynin blocks muscarinic receptors in bladder smooth muscle → reduces urgency and incontinence.',
    category: 'Anticholinergic Drugs',
    difficulty: 2
  ),
  Question(
    id: 'anticholinergic_drugs_038',
    question: 'Which anticholinergic effect most frequently causes delirium in elderly patients?',
    options: [
      'Bronchodilation',
      'Increased salivation',
      'Central sedation and confusion',
      'Bradycardia',
      'Hypotension'
    ],
    correctAnswerIndex: 2,
    explanation: 'Atropine and scopolamine can cross the BBB → in the elderly, they often cause confusion, agitation, or delirium.',
    category: 'Anticholinergic Drugs',
    difficulty: 2
  ),
  Question(
    id: 'anticholinergic_drugs_039',
    question: 'Which property makes glycopyrrolate safer as a preanesthetic agent?',
    options: [
      'Muscle relaxant effect',
      'Central nervous system effect',
      'Increases secretions',
      'Lower risk of bradycardia',
      'Hepatic metabolism'
    ],
    correctAnswerIndex: 3,
    explanation: 'Glycopyrrolate is a quaternary amine, does not cross BBB, has predictable action and low bradycardia risk → safer preanesthetic.',
    category: 'Anticholinergic Drugs',
    difficulty: 2
  ),
  Question(
    id: 'anticholinergic_drugs_040',
    question: 'Which anticholinergic effect is noticed first?',
    options: [
      'Dry mouth',
      'Constipation',
      'Urinary retention',
      'Mydriasis',
      'Tachycardia'
    ],
    correctAnswerIndex: 0,
    explanation: 'Dry mouth is the earliest and most frequent symptom of antimuscarinic action.',
    category: 'Anticholinergic Drugs',
    difficulty: 2
  ),
  Question(
    id: 'anticholinergic_drugs_041',
    question: 'Which antimuscarinic is used as an inhaled bronchodilator?',
    options: [
      'Atropine',
      'Oxybutynin',
      'Scopolamine',
      'Ipratropium',
      'Glycopyrrolate'
    ],
    correctAnswerIndex: 3,
    explanation: 'Ipratropium is an inhaled M3 receptor antagonist → bronchodilation, widely used in COPD.',
    category: 'Anticholinergic Drugs',
    difficulty: 2
  ),
  Question(
    id: 'anticholinergic_drugs_042',
    question: 'Which of the following is an ocular effect of anticholinergics?',
    options: [
      'Miosis',
      'Increased lacrimation',
      'Accommodation spasm',
      'Mydriasis and cycloplegia',
      'Decreased intraocular pressure'
    ],
    correctAnswerIndex: 3,
    explanation: 'Atropine and scopolamine cause pupil dilation (mydriasis) and loss of lens accommodation (cycloplegia).',
    category: 'Anticholinergic Drugs',
    difficulty: 2
  ),
  Question(
    id: 'anticholinergic_drugs_043',
    question: 'Scopolamine\'s antiemetic effect is due to blockade of which receptor?',
    options: [
      'H1',
      'D2',
      'M1',
      '5-HT3',
      'NK1'
    ],
    correctAnswerIndex: 2,
    explanation: 'Scopolamine blocks vestibular M1 muscarinic receptors → effective in motion sickness.',
    category: 'Anticholinergic Drugs',
    difficulty: 2
  ),
  Question(
    id: 'anticholinergic_drugs_044',
    question: 'Which antimuscarinic is considered one of the safest in pregnancy?',
    options: [
      'Scopolamine',
      'Atropine',
      'Glycopyrrolate',
      'Ipratropium',
      'Oxybutynin'
    ],
    correctAnswerIndex: 3,
    explanation: 'Ipratropium has minimal systemic absorption when inhaled → generally safe in pregnancy (Category B).',
    category: 'Anticholinergic Drugs',
    difficulty: 2
  ),
  Question(
    id: 'anticholinergic_drugs_045',
    question: 'Which of the following is NOT a peripheral effect of anticholinergics?',
    options: [
      'Dry mouth',
      'Increased sweating',
      'Urinary retention',
      'Mydriasis',
      'Constipation'
    ],
    correctAnswerIndex: 1,
    explanation: 'Anticholinergics block muscarinic receptors in sweat glands → decrease sweating, may cause hyperthermia.',
    category: 'Anticholinergic Drugs',
    difficulty: 2
  ),
  Question(
    id: 'anticholinergic_drugs_046',
    question: 'What is the most common side effect of anticholinergics in children?',
    options: [
      'Bradycardia',
      'Convulsions',
      'Diarrhea',
      'Fever',
      'Increased salivation'
    ],
    correctAnswerIndex: 3,
    explanation: 'In children, anticholinergics suppress sweating → impaired thermoregulation → fever (hyperthermia).',
    category: 'Anticholinergic Drugs',
    difficulty: 2
  ),
  Question(
    id: 'anticholinergic_drugs_047',
    question: 'Which is a dose-dependent sequential effect of atropine?',
    options: [
      'Bronchodilation first, then mydriasis',
      'Tachycardia first, then dry mouth',
      'Reduced salivation first, then ↑ heart rate',
      'Sedation first, then increased GI motility',
      'Mydriasis first, then confusion'
    ],
    correctAnswerIndex: 2,
    explanation: 'Atropine first reduces salivation and GI secretions, higher doses → tachycardia.',
    category: 'Anticholinergic Drugs',
    difficulty: 2
  ),
  Question(
    id: 'anticholinergic_drugs_048',
    question: 'Which disease is a relative contraindication for anticholinergics?',
    options: [
      'Parkinson\'s disease',
      'Hypotension',
      'Arrhythmia',
      'Hypoglycemia',
      'Prostatic hypertrophy'
    ],
    correctAnswerIndex: 4,
    explanation: 'Anticholinergics impair bladder emptying → may worsen urinary retention in BPH.',
    category: 'Anticholinergic Drugs',
    difficulty: 2
  ),
  Question(
    id: 'anticholinergic_drugs_049',
    question: 'Which is the earliest sign of atropine poisoning?',
    options: [
      'Bradycardia',
      'Dry skin',
      'Confusion',
      'Hypothermia',
      'Hypersalivation'
    ],
    correctAnswerIndex: 1,
    explanation: 'Due to decreased sweating and salivation → dry skin is an early sign of atropine toxicity.',
    category: 'Anticholinergic Drugs',
    difficulty: 2
  ),
  Question(
    id: 'anticholinergic_drugs_050',
    question: 'Which drug has the lowest risk of antimuscarinic side effects?',
    options: [
      'Atropine',
      'Amitriptyline',
      'Scopolamine',
      'Glycopyrrolate',
      'Biperiden'
    ],
    correctAnswerIndex: 3,
    explanation: 'Glycopyrrolate does not cross BBB and is selective for peripheral muscarinic receptors → fewer side effects.',
    category: 'Anticholinergic Drugs',
    difficulty: 2
  ),
  Question(
    id: 'anticholinergic_drugs_051',
    question: 'Anticholinergics may cause hyperthermia via effects on which system?',
    options: [
      'Renal',
      'Cardiovascular',
      'Thermoregulation (sweat glands)',
      'Endocrine',
      'Hepatic'
    ],
    correctAnswerIndex: 2,
    explanation: 'They block muscarinic receptors in sweat glands → reduced sweating → hyperthermia, esp. in children.',
    category: 'Anticholinergic Drugs',
    difficulty: 2
  ),
  Question(
    id: 'anticholinergic_drugs_052',
    question: 'Tiotropium acts on which receptors?',
    options: [
      'M1 and M2',
      'M1 and M3',
      'M2 and M4',
      'Only M3',
      'M1, M2, M3'
    ],
    correctAnswerIndex: 1,
    explanation: 'Tiotropium is a long-acting selective M1/M3 antagonist → used in COPD therapy.',
    category: 'Anticholinergic Drugs',
    difficulty: 2
  ),
  Question(
    id: 'anticholinergic_drugs_053',
    question: 'Which drug causes bronchodilation via muscarinic receptor blockade?',
    options: [
      'Salbutamol',
      'Theophylline',
      'Ipratropium',
      'Fenoterol',
      'Ketamine'
    ],
    correctAnswerIndex: 2,
    explanation: 'Ipratropium blocks M3 receptors in bronchial smooth muscle → bronchodilation in asthma/COPD.',
    category: 'Anticholinergic Drugs',
    difficulty: 2
  ),
  Question(
    id: 'anticholinergic_drugs_054',
    question: 'Which is NOT included in the differential diagnosis of central anticholinergic syndrome?',
    options: [
      'Hypoglycemia',
      'Delirium tremens',
      'Infectious encephalitis',
      'Antihistamine toxicity',
      'Hyperkalemia'
    ],
    correctAnswerIndex: 4,
    explanation: 'Hyperkalemia does not cause confusion/delirium → unlike CNS conditions in the other options.',
    category: 'Anticholinergic Drugs',
    difficulty: 2
  ),
  Question(
    id: 'anticholinergic_drugs_055',
    question: 'Which finding suggests central anticholinergic syndrome?',
    options: [
      'Miosis, bradycardia, respiratory depression',
      'Mydriasis, tachycardia, delirium',
      'Dry skin, hypoglycemia, tremor',
      'Hypotension, rigidity, absent pupillary reflex',
      'Piloerection, tachypnea, loss of consciousness'
    ],
    correctAnswerIndex: 1,
    explanation: 'Classic features of central anticholinergic syndrome → dilated pupils, tachycardia, confusion, dry skin.',
    category: 'Anticholinergic Drugs',
    difficulty: 2
  ),
  Question(
    id: 'anticholinergic_drugs_056',
    question: 'What is the main mechanism of action of anticholinergic drugs?',
    options: [
      'Muscarinic receptor antagonism',
      'Nicotinic receptor agonism',
      'Acetylcholinesterase inhibition',
      'GABA receptor activation',
      'Adrenergic receptor blockade'
    ],
    correctAnswerIndex: 0,
    explanation: 'Anticholinergics competitively block muscarinic receptors of the parasympathetic nervous system.',
    category: 'Anticholinergic Drugs',
    difficulty: 2
  ),
  Question(
    id: 'anticholinergic_drugs_057',
    question: 'Which of the following is NOT a symptom of central anticholinergic syndrome?',
    options: [
      'Hyporeflexia',
      'Agitation',
      'Hallucinations',
      'Confusion',
      'Fever'
    ],
    correctAnswerIndex: 0,
    explanation: 'Central anticholinergic syndrome presents with hyperreflexia, agitation, delirium, and fever, not hyporeflexia.',
    category: 'Anticholinergic Drugs',
    difficulty: 2
  ),
  Question(
    id: 'anticholinergic_drugs_058',
    question: 'Which of the following is a cardiac effect of atropine?',
    options: [
      'Initial paradoxical bradycardia',
      'Shortened QT interval',
      'Prolonged PR interval',
      'Ventricular tachycardia',
      'AV block development'
    ],
    correctAnswerIndex: 0,
    explanation: 'At low doses, atropine can cause central vagal stimulation, leading to paradoxical bradycardia.',
    category: 'Anticholinergic Drugs',
    difficulty: 2
  ),
  Question(
    id: 'anticholinergic_drugs_059',
    question: 'Which of the following is an ocular effect of anticholinergics?',
    options: [
      'Mydriasis',
      'Accommodation spasm',
      'Decreased intraocular pressure',
      'Increased lacrimation',
      'Ciliary muscle contraction'
    ],
    correctAnswerIndex: 0,
    explanation: 'Anticholinergics cause pupil dilation (mydriasis) and cycloplegia, not miosis.',
    category: 'Anticholinergic Drugs',
    difficulty: 2
  ),
  Question(
    id: 'anticholinergic_drugs_060',
    question: 'Which of the following is a cardiovascular effect of anticholinergics?',
    options: [
      'Vasoconstriction',
      'Coronary artery spasm',
      'Peripheral vasodilation',
      'Hypertension',
      'Myocardial depression'
    ],
    correctAnswerIndex: 2,
    explanation: 'Anticholinergics reduce vasomotor tone → peripheral vasodilation.',
    category: 'Anticholinergic Drugs',
    difficulty: 2
  ),
  Question(
    id: 'anticholinergic_drugs_061',
    question: 'Which of the following is a urinary effect of anticholinergics?',
    options: [
      'Increased diuresis',
      'Decreased bladder capacity',
      'Increased detrusor muscle contraction',
      'Urinary retention',
      'Increased ureter motility'
    ],
    correctAnswerIndex: 3,
    explanation: 'Anticholinergics inhibit detrusor contraction → urinary retention.',
    category: 'Anticholinergic Drugs',
    difficulty: 2
  ),
  Question(
    id: 'anticholinergic_drugs_062',
    question: 'Which is the thermoregulatory effect of anticholinergics?',
    options: [
      'Antipyretic effect',
      'Decrease in body temperature',
      'Increased sweating',
      'Peripheral vasoconstriction',
      'Depression of central thermoregulation'
    ],
    correctAnswerIndex: 4,
    explanation: 'By reducing sweating, anticholinergics impair thermoregulation → may cause hyperthermia.',
    category: 'Anticholinergic Drugs',
    difficulty: 2
  ),
  Question(
    id: 'anticholinergic_drugs_063',
    question: 'Which of the following is NOT a contraindication for anticholinergics?',
    options: [
      'Hypothyroidism',
      'Glaucoma',
      'Prostatic hypertrophy',
      'Myasthenia gravis',
      'Ileus'
    ],
    correctAnswerIndex: 0,
    explanation: 'Contraindications include glaucoma, prostatic hypertrophy, myasthenia gravis, and ileus.',
    category: 'Anticholinergic Drugs',
    difficulty: 2
  ),
  Question(
    id: 'anticholinergic_drugs_064',
    question: 'Which is the effect of anticholinergics on the neuromuscular junction?',
    options: [
      'Increase acetylcholine release',
      'Nicotinic receptor blockade',
      'Muscle relaxant effect',
      'Depolarization at motor nerve terminal',
      'Increased reflex activity'
    ],
    correctAnswerIndex: 1,
    explanation: 'At high doses, anticholinergics can also block nicotinic receptors.',
    category: 'Anticholinergic Drugs',
    difficulty: 2
  ),
  Question(
    id: 'anticholinergic_drugs_065',
    question: 'In which surgical procedure are anticholinergics commonly preferred?',
    options: [
      'Cataract surgery',
      'Glaucoma surgery',
      'Urological surgery',
      'Neurosurgery',
      'Cardiac surgery'
    ],
    correctAnswerIndex: 0,
    explanation: 'Anticholinergics are used to induce mydriasis in cataract surgery; contraindicated in glaucoma.',
    category: 'Anticholinergic Drugs',
    difficulty: 2
  ),
  Question(
    id: 'anticholinergic_drugs_066',
    question: 'Which condition benefits from the antidopaminergic effect of anticholinergics?',
    options: [
      'Parkinson\'s disease',
      'Schizophrenia',
      'Depression',
      'Migraine',
      'Epilepsy'
    ],
    correctAnswerIndex: 0,
    explanation: 'Anticholinergics restore dopamine/acetylcholine balance in the basal ganglia.',
    category: 'Anticholinergic Drugs',
    difficulty: 2
  ),
  Question(
    id: 'anticholinergic_drugs_067',
    question: 'Which is a major concern when using anticholinergics in pediatric patients?',
    options: [
      'Hypoactivity',
      'Fever (hyperthermia)',
      'Bradycardia',
      'Hypoglycemia',
      'Hypertension'
    ],
    correctAnswerIndex: 1,
    explanation: 'By suppressing sweating, anticholinergics can cause hyperthermia in children.',
    category: 'Anticholinergic Drugs',
    difficulty: 2
  ),
  Question(
    id: 'anticholinergic_drugs_068',
    question: 'What should be considered when using anticholinergics during breastfeeding?',
    options: [
      'Increases milk production',
      'Infant irritability',
      'Infant hypoglycemia',
      'Infant hyperactivity',
      'Infant bradycardia'
    ],
    correctAnswerIndex: 1,
    explanation: 'Anticholinergics may pass into breast milk → cause CNS effects like irritability in infants.',
    category: 'Anticholinergic Drugs',
    difficulty: 2
  ),
  Question(
    id: 'anticholinergic_drugs_069',
    question: 'Which is a postoperative indication for the use of anticholinergics?',
    options: [
      'Pain management',
      'Prevention of nausea and vomiting',
      'Treatment of urinary retention',
      'Sedation',
      'Seizure control'
    ],
    correctAnswerIndex: 1,
    explanation: 'Scopolamine is effective against motion sickness and postoperative nausea/vomiting (PONV).',
    category: 'Anticholinergic Drugs',
    difficulty: 2
  ),
];
