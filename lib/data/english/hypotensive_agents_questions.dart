import '../../models/question.dart';

List<Question> hypotensiveAgentsQuestions = [
  Question(
    id: 'hypotensive_agents_001',
    question: 'Which of the following drugs can be used to provide controlled hypotension during surgery?',
    options: [
      'Midazolam',
      'Hydralazine',
      'Fentanyl',
      'Ketamine',
      'Phenylephrine'
    ],
    correctAnswerIndex: 1,
    explanation: 'Hydralazine causes vasodilation in arterioles, lowering blood pressure. It can be used to induce intraoperative hypotension.',
    category: 'Hypotensive Agents',
    difficulty: 2
  ),
  Question(
    id: 'hypotensive_agents_002',
    question: 'Which of the following agents is known for its direct arterial vasodilator effect?',
    options: [
      'Nitroprusside',
      'Labetalol',
      'Propranolol',
      'Atropine',
      'Ephedrine'
    ],
    correctAnswerIndex: 0,
    explanation: 'Sodium nitroprusside causes both arterial and venous vasodilation and is used for controlled hypotension.',
    category: 'Hypotensive Agents',
    difficulty: 2
  ),
  Question(
    id: 'hypotensive_agents_003',
    question: 'Which toxic compound is released as a result of nitroprusside metabolism?',
    options: [
      'Carbon monoxide',
      'Sulfate',
      'Cyanide',
      'Nitrate',
      'Acetate'
    ],
    correctAnswerIndex: 2,
    explanation: 'Cyanide is released during sodium nitroprusside metabolism. Prolonged use may cause cyanide toxicity.',
    category: 'Hypotensive Agents',
    difficulty: 2
  ),
  Question(
    id: 'hypotensive_agents_004',
    question: 'What is the main vascular site of action of nitroglycerin?',
    options: [
      'Arterial',
      'Venous',
      'Capillary',
      'Lymphatic',
      'Cerebral'
    ],
    correctAnswerIndex: 1,
    explanation: 'Nitroglycerin acts primarily on the venous system, reducing preload and myocardial oxygen consumption.',
    category: 'Hypotensive Agents',
    difficulty: 2
  ),
  Question(
    id: 'hypotensive_agents_005',
    question: 'What is the advantage of esmolol as a hypotensive agent?',
    options: [
      'Protection from cyanide toxicity',
      'Acts only on venous vessels',
      'Short duration of action',
      'Acts only centrally',
      'Exhibits anticholinergic effects'
    ],
    correctAnswerIndex: 2,
    explanation: 'Esmolol is an ultra-short-acting beta-1 blocker. It is useful for temporary control of tachycardia and hypertension during anesthesia.',
    category: 'Hypotensive Agents',
    difficulty: 2
  ),
  Question(
    id: 'hypotensive_agents_006',
    question: 'Which agent can be given together with nitroprusside to reduce cyanide toxicity?',
    options: [
      'Calcium',
      'Nitric oxide',
      'Sodium thiosulfate',
      'Protamine sulfate',
      'Methylprednisolone'
    ],
    correctAnswerIndex: 2,
    explanation: 'Sodium thiosulfate converts cyanide to thiocyanate, reducing cyanide toxicity when administered with nitroprusside.',
    category: 'Hypotensive Agents',
    difficulty: 2
  ),
  Question(
    id: 'hypotensive_agents_007',
    question: 'Which of the following hypotensive agents can cause hypotension through histamine release?',
    options: [
      'Esmolol',
      'Nitroprusside',
      'Hydralazine',
      'Nitroglycerin',
      'Trimethaphan'
    ],
    correctAnswerIndex: 4,
    explanation: 'Trimethaphan causes hypotension via ganglionic blockade and histamine release.',
    category: 'Hypotensive Agents',
    difficulty: 2
  ),
  Question(
    id: 'hypotensive_agents_008',
    question: 'Through which receptor does fenoldopam exert its vasodilatory effect?',
    options: [
      'Alpha-1',
      'Beta-1',
      'Dopamine D1',
      'Muscarinic M3',
      'Serotonin 5-HT2'
    ],
    correctAnswerIndex: 2,
    explanation: 'Fenoldopam is a selective D1 dopamine receptor agonist that causes renal and mesenteric vasodilation. It is used in hypertensive emergencies.',
    category: 'Hypotensive Agents',
    difficulty: 2
  ),
  Question(
    id: 'hypotensive_agents_009',
    question: 'What is the onset and duration of the hypotensive effect of nitroprusside?',
    options: [
      'Onset: 30–60 sec, Duration: 20–30 min',
      'Onset: 1–2 min, Duration: 1–2 hrs',
      'Immediate onset, short duration (1–2 min)',
      'Onset: 10 min, Duration: 6–8 hrs',
      'Onset: 5–10 min, Duration: 12 hrs'
    ],
    correctAnswerIndex: 2,
    explanation: 'Sodium nitroprusside has a rapid onset and short duration, making it ideal for titrated controlled hypotension.',
    category: 'Hypotensive Agents',
    difficulty: 2
  ),
  Question(
    id: 'hypotensive_agents_010',
    question: 'What is the most common adverse effect observed during the use of hypotensive agents?',
    options: [
      'Hyperglycemia',
      'Bradycardia',
      'Rebound hypertension',
      'Excessive hypotension',
      'Hyperkalemia'
    ],
    correctAnswerIndex: 3,
    explanation: 'If not titrated properly, excessive hypotension is the most common and potentially dangerous adverse effect.',
    category: 'Hypotensive Agents',
    difficulty: 2
  ),
  Question(
    id: 'hypotensive_agents_011',
    question: 'How does trimethaphan produce its hypotensive effect?',
    options: [
      'Direct smooth muscle relaxation',
      'Ganglionic blockade',
      'Beta-2 agonist activity',
      'Renin-angiotensin inhibition',
      'Presynaptic alpha-2 stimulation'
    ],
    correctAnswerIndex: 1,
    explanation: 'Trimethaphan blocks neuronal ganglia, reducing sympathetic output and systemic vascular resistance.',
    category: 'Hypotensive Agents',
    difficulty: 2
  ),
  Question(
    id: 'hypotensive_agents_012',
    question: 'By which mechanism does nitroglycerin exert its hypotensive effect?',
    options: [
      'NO release',
      'Beta-2 receptor activation',
      'Alpha-1 blockade',
      'Muscarinic stimulation',
      'D1 receptor blockade'
    ],
    correctAnswerIndex: 0,
    explanation: 'Nitroglycerin releases nitric oxide (NO) in vascular smooth muscle, causing venodilation and reduced preload.',
    category: 'Hypotensive Agents',
    difficulty: 2
  ),
  Question(
    id: 'hypotensive_agents_013',
    question: 'Which of the following agents has a stronger effect on the arterial system than the venous system?',
    options: [
      'Nitroglycerin',
      'Hydralazine',
      'Furosemide',
      'Trimethaphan',
      'Morphine'
    ],
    correctAnswerIndex: 1,
    explanation: 'Hydralazine acts selectively on arterioles, reducing afterload rather than preload.',
    category: 'Hypotensive Agents',
    difficulty: 2
  ),
  Question(
    id: 'hypotensive_agents_014',
    question: 'What is the most important side effect to monitor with fenoldopam use?',
    options: [
      'Bronchospasm',
      'Hyperglycemia',
      'Reflex tachycardia',
      'QT prolongation',
      'Hyperkalemia'
    ],
    correctAnswerIndex: 2,
    explanation: 'Fenoldopam causes vasodilation, which may lead to reflex tachycardia.',
    category: 'Hypotensive Agents',
    difficulty: 2
  ),
  Question(
    id: 'hypotensive_agents_015',
    question: 'In which patient group is thiocyanate toxicity from nitroprusside most likely to occur?',
    options: [
      'Asthma patients',
      'Liver failure patients',
      'Renal failure patients',
      'Hypothyroid patients',
      'Hyperthyroid patients'
    ],
    correctAnswerIndex: 2,
    explanation: 'Thiocyanate, a metabolite of nitroprusside, is renally excreted, so patients with renal failure are at increased risk of toxicity.',
    category: 'Hypotensive Agents',
    difficulty: 2
  ),
  Question(
    id: 'hypotensive_agents_016',
    question: 'Which of the following agents causes both arterial and venous dilation?',
    options: [
      'Nitroprusside',
      'Hydralazine',
      'Nitroglycerin',
      'Labetalol',
      'Phenylephrine'
    ],
    correctAnswerIndex: 0,
    explanation: 'Sodium nitroprusside dilates both arterial and venous vessels, reducing both preload and afterload.',
    category: 'Hypotensive Agents',
    difficulty: 2
  ),
  Question(
    id: 'hypotensive_agents_017',
    question: 'Which of the following agents is metabolized in the liver and not broken down by plasma cholinesterase?',
    options: [
      'Esmolol',
      'Nitroprusside',
      'Trimethaphan',
      'Labetalol',
      'Fenoldopam'
    ],
    correctAnswerIndex: 3,
    explanation: 'Labetalol is metabolized in the liver and requires caution in patients with hepatic impairment.',
    category: 'Hypotensive Agents',
    difficulty: 2
  ),
  Question(
    id: 'hypotensive_agents_018',
    question: 'Which of the following agents can be titrated most rapidly for controlled hypotension?',
    options: [
      'Labetalol',
      'Esmolol',
      'Hydralazine',
      'Propranolol',
      'Diltiazem'
    ],
    correctAnswerIndex: 1,
    explanation: 'Esmolol has a very short half-life (~9 minutes), allowing rapid titration for intraoperative hemodynamic control.',
    category: 'Hypotensive Agents',
    difficulty: 2
  ),
  Question(
    id: 'hypotensive_agents_019',
    question: 'Which agent is most commonly preferred for controlled hypotension?',
    options: [
      'Nitroglycerin',
      'Trimethaphan',
      'Nitroprusside',
      'Esmolol',
      'Metoprolol'
    ],
    correctAnswerIndex: 2,
    explanation: 'Sodium nitroprusside is the most commonly used agent due to its rapid onset and ease of titration.',
    category: 'Hypotensive Agents',
    difficulty: 2
  ),
  Question(
    id: 'hypotensive_agents_020',
    question: 'Which of the following agents has minimal arterial dilation effects?',
    options: [
      'Hydralazine',
      'Nitroprusside',
      'Nitroglycerin',
      'Fenoldopam',
      'Trimethaphan'
    ],
    correctAnswerIndex: 2,
    explanation: 'Nitroglycerin primarily causes venodilation, with minimal arterial effects.',
    category: 'Hypotensive Agents',
    difficulty: 2
  ),
  Question(
    id: 'hypotensive_agents_021',
    question: 'What is the earliest sign of cyanide toxicity from nitroprusside?',
    options: [
      'Hypothermia',
      'Metabolic acidosis',
      'Hypoglycemia',
      'Bradycardia',
      'Hypoxemia'
    ],
    correctAnswerIndex: 1,
    explanation: 'Cyanide blocks cellular oxygen utilization, leading to lactic acidosis, which manifests first as metabolic acidosis.',
    category: 'Hypotensive Agents',
    difficulty: 2
  ),
  Question(
    id: 'hypotensive_agents_022',
    question: 'Which of the following agents can be safely used to treat hypertension in pregnancy?',
    options: [
      'Nitroprusside',
      'Labetalol',
      'Nitroglycerin',
      'Esmolol',
      'Trimethaphan'
    ],
    correctAnswerIndex: 1,
    explanation: 'Labetalol, an alpha and beta blocker, is safe and effective in pregnancy.',
    category: 'Hypotensive Agents',
    difficulty: 2
  ),
  Question(
    id: 'hypotensive_agents_023',
    question: 'How long does it usually take for hydralazine\'s hypotensive effect to begin?',
    options: [
      '10 seconds',
      '1 minute',
      '5–20 minutes',
      '30 minutes',
      '1 hour'
    ],
    correctAnswerIndex: 2,
    explanation: 'Hydralazine takes 5–20 minutes to act, making it less useful for acute adjustments.',
    category: 'Hypotensive Agents',
    difficulty: 2
  ),
  Question(
    id: 'hypotensive_agents_024',
    question: 'What is fenoldopam\'s most important pharmacologic advantage?',
    options: [
      'Bronchodilator effect',
      'Hepatic elimination',
      'Increases renal blood flow',
      'Reduces heart rate',
      'Anticonvulsant effect'
    ],
    correctAnswerIndex: 2,
    explanation: 'Fenoldopam increases renal perfusion, making it especially useful in hypertensive patients with kidney disease.',
    category: 'Hypotensive Agents',
    difficulty: 2
  ),
  Question(
    id: 'hypotensive_agents_025',
    question: 'What is the major risk associated with trimethaphan-induced hypotension?',
    options: [
      'Arrhythmia',
      'Nephrotoxicity',
      'Rebound hypertension',
      'Excessive sedation',
      'Increased intraocular pressure'
    ],
    correctAnswerIndex: 2,
    explanation: 'When trimethaphan\'s effect wears off, rebound sympathetic activity may cause severe hypertension.',
    category: 'Hypotensive Agents',
    difficulty: 2
  ),
  Question(
    id: 'hypotensive_agents_026',
    question: 'What is the most important factor increasing cyanide toxicity risk during nitroprusside use?',
    options: [
      'Rapid IV injection',
      'Prolonged high-dose infusion',
      'Patient age',
      'Hypothermia',
      'High plasma protein level'
    ],
    correctAnswerIndex: 1,
    explanation: 'Prolonged high-dose nitroprusside infusion increases cyanide accumulation and toxicity risk.',
    category: 'Hypotensive Agents',
    difficulty: 2
  ),
  Question(
    id: 'hypotensive_agents_027',
    question: 'Which is one of the most common side effects of hydralazine?',
    options: [
      'Reflex tachycardia',
      'Bradycardia',
      'Hypoglycemia',
      'Hyperkalemia',
      'QT prolongation'
    ],
    correctAnswerIndex: 0,
    explanation: 'Hydralazine lowers blood pressure via arteriolar dilation, which often triggers reflex tachycardia.',
    category: 'Hypotensive Agents',
    difficulty: 2
  ),
  Question(
    id: 'hypotensive_agents_028',
    question: 'Which of the following agents acts on both arteries and veins through NO release?',
    options: [
      'Esmolol',
      'Nitroglycerin',
      'Labetalol',
      'Nitroprusside',
      'Trimethaphan'
    ],
    correctAnswerIndex: 3,
    explanation: 'Sodium nitroprusside causes both arterial and venous vasodilation via nitric oxide release.',
    category: 'Hypotensive Agents',
    difficulty: 2
  ),
  Question(
    id: 'hypotensive_agents_029',
    question: 'Which hypotensive agent most significantly reduces preload?',
    options: [
      'Esmolol',
      'Nitroglycerin',
      'Hydralazine',
      'Labetalol',
      'Propranolol'
    ],
    correctAnswerIndex: 1,
    explanation: 'Nitroglycerin strongly reduces preload via venodilation, beneficial in ischemic heart disease.',
    category: 'Hypotensive Agents',
    difficulty: 2
  ),
  Question(
    id: 'hypotensive_agents_030',
    question: 'Which property allows fenoldopam to preserve renal function?',
    options: [
      'Beta-1 blockade',
      'D2 receptor antagonism',
      'D1 receptor agonism',
      'Antidiuretic hormone release',
      'Renin inhibition'
    ],
    correctAnswerIndex: 2,
    explanation: 'Fenoldopam activates D1 dopamine receptors, promoting renal vasodilation and supporting GFR.',
    category: 'Hypotensive Agents',
    difficulty: 2
  ),
  Question(
    id: 'hypotensive_agents_031',
    question: 'Which of the following drugs is rapidly metabolized by plasma cholinesterase?',
    options: [
      'Nitroprusside',
      'Esmolol',
      'Labetalol',
      'Hydralazine',
      'Fenoldopam'
    ],
    correctAnswerIndex: 1,
    explanation: 'Esmolol is hydrolyzed by plasma cholinesterase, accounting for its short duration.',
    category: 'Hypotensive Agents',
    difficulty: 2
  ),
  Question(
    id: 'hypotensive_agents_032',
    question: 'What happens to intraocular pressure during trimethaphan-induced hypotension?',
    options: [
      'Increases',
      'Unchanged',
      'Decreases significantly',
      'Slight increase',
      'Biphasic response'
    ],
    correctAnswerIndex: 2,
    explanation: 'Trimethaphan lowers intraocular pressure, making it useful in glaucoma surgery.',
    category: 'Hypotensive Agents',
    difficulty: 2
  ),
  Question(
    id: 'hypotensive_agents_033',
    question: 'What target mean arterial pressure (MAP) is generally considered sufficient during controlled hypotension?',
    options: [
      '25–30 mmHg',
      '30–40 mmHg',
      '40–50 mmHg',
      '50–65 mmHg',
      '65–80 mmHg'
    ],
    correctAnswerIndex: 3,
    explanation: 'A MAP of 50–65 mmHg balances adequate tissue perfusion with reduced surgical bleeding.',
    category: 'Hypotensive Agents',
    difficulty: 2
  ),
  Question(
    id: 'hypotensive_agents_034',
    question: 'What is the most common side effect of nitroglycerin administration?',
    options: [
      'Bradycardia',
      'Rebound hypertension',
      'Headache',
      'Hypoglycemia',
      'Nausea'
    ],
    correctAnswerIndex: 2,
    explanation: 'Nitroglycerin often causes headaches due to cerebral vasodilation.',
    category: 'Hypotensive Agents',
    difficulty: 2
  ),
  Question(
    id: 'hypotensive_agents_035',
    question: 'What is the duration of effect after esmolol infusion?',
    options: [
      '1–2 minutes',
      '5–10 minutes',
      '10–20 minutes',
      '30 minutes',
      '1 hour'
    ],
    correctAnswerIndex: 1,
    explanation: 'Esmolol\'s effect lasts about 5–10 minutes, making it useful for transient hemodynamic control.',
    category: 'Hypotensive Agents',
    difficulty: 2
  ),
  Question(
    id: 'hypotensive_agents_036',
    question: 'Which of the following agents is preferred particularly in patients with ischemic heart disease?',
    options: [
      'Nitroprusside',
      'Hydralazine',
      'Esmolol',
      'Trimethaphan',
      'Fenoldopam'
    ],
    correctAnswerIndex: 2,
    explanation: 'Esmolol reduces heart rate and myocardial oxygen demand, making it safe for ischemic heart disease patients.',
    category: 'Hypotensive Agents',
    difficulty: 2
  ),
  Question(
    id: 'hypotensive_agents_037',
    question: 'What is the most serious complication of cyanide toxicity?',
    options: [
      'Hypokalemia',
      'Respiratory alkalosis',
      'Cerebral edema',
      'Metabolic acidosis and death',
      'Hyperthermia'
    ],
    correctAnswerIndex: 3,
    explanation: 'Cyanide blocks cellular respiration, leading rapidly to metabolic acidosis and, if untreated, death.',
    category: 'Hypotensive Agents',
    difficulty: 2
  ),
  Question(
    id: 'hypotensive_agents_038',
    question: 'How is the effect of nitroprusside terminated?',
    options: [
      'Hepatic metabolism',
      'Renal elimination',
      'Hydrolysis by plasma cholinesterase',
      'Breakdown by hemoglobin',
      'Pulmonary clearance'
    ],
    correctAnswerIndex: 3,
    explanation: 'Nitroprusside is broken down by oxyhemoglobin into NO and cyanide, the latter metabolized in the liver.',
    category: 'Hypotensive Agents',
    difficulty: 2
  ),
  Question(
    id: 'hypotensive_agents_039',
    question: 'Which of the following hypotensive agents acts via ganglionic blockade?',
    options: [
      'Labetalol',
      'Esmolol',
      'Trimethaphan',
      'Hydralazine',
      'Fenoldopam'
    ],
    correctAnswerIndex: 2,
    explanation: 'Trimethaphan produces hypotension by blocking autonomic ganglia and reducing sympathetic output.',
    category: 'Hypotensive Agents',
    difficulty: 2
  ),
  Question(
    id: 'hypotensive_agents_040',
    question: 'Which immunological side effect can occur with hydralazine use?',
    options: [
      'Anaphylaxis',
      'Stevens-Johnson syndrome',
      'Lupus-like syndrome',
      'Thrombocytopenia',
      'Aplastic anemia'
    ],
    correctAnswerIndex: 2,
    explanation: 'Long-term, high-dose hydralazine use may cause lupus-like syndrome, though rare.',
    category: 'Hypotensive Agents',
    difficulty: 2
  ),
  Question(
    id: 'hypotensive_agents_041',
    question: 'Which of the following is a major contraindication to controlled hypotension strategies?',
    options: [
      'Hypertension',
      'Open surgery',
      'Anemia',
      'Intracranial pathology',
      'Eye surgery'
    ],
    correctAnswerIndex: 3,
    explanation: 'Controlled hypotension is contraindicated in patients with intracranial pathology due to impaired cerebral perfusion regulation.',
    category: 'Hypotensive Agents',
    difficulty: 2
  ),
  Question(
    id: 'hypotensive_agents_042',
    question: 'Which intravenous agent is most commonly used for controlled hypotension?',
    options: [
      'Esmolol',
      'Phenylephrine',
      'Sodium nitroprusside',
      'Dobutamine',
      'Dopamine'
    ],
    correctAnswerIndex: 2,
    explanation: 'Sodium nitroprusside, with rapid onset and easy titration, is ideal for controlled hypotension.',
    category: 'Hypotensive Agents',
    difficulty: 2
  ),
  Question(
    id: 'hypotensive_agents_043',
    question: 'What is the most important potential toxicity of sodium nitroprusside?',
    options: [
      'Hyperkalemia',
      'Methemoglobinemia',
      'Cyanide toxicity',
      'Hypoglycemia',
      'Lactic acidosis'
    ],
    correctAnswerIndex: 2,
    explanation: 'Sodium nitroprusside metabolism releases cyanide ions → with prolonged or high-dose use, there is a risk of cyanide toxicity.',
    category: 'Hypotensive Agents',
    difficulty: 2
  ),
  Question(
    id: 'hypotensive_agents_044',
    question: 'Which of the following drugs reduces preload through its venodilator effect?',
    options: [
      'Nitroglycerin',
      'Esmolol',
      'Labetalol',
      'Nicardipine',
      'Hydralazine'
    ],
    correctAnswerIndex: 0,
    explanation: 'Nitroglycerin causes vasodilation primarily in the venous system → decreases preload → reduces cardiac workload.',
    category: 'Hypotensive Agents',
    difficulty: 2
  ),
  Question(
    id: 'hypotensive_agents_045',
    question: 'Which of the following is a calcium channel blocker that can be used intraoperatively for hypotensive effect?',
    options: [
      'Esmolol',
      'Dexmedetomidine',
      'Nicardipine',
      'Fenoldopam',
      'Phenylephrine'
    ],
    correctAnswerIndex: 2,
    explanation: 'Nicardipine, a dihydropyridine calcium channel blocker, causes arterial vasodilation → induces hypotension → commonly used intraoperatively.',
    category: 'Hypotensive Agents',
    difficulty: 2
  ),
  Question(
    id: 'hypotensive_agents_046',
    question: 'Which of the following agents is the shortest-acting beta blocker and preferred for inducing hypotension?',
    options: [
      'Metoprolol',
      'Atenolol',
      'Labetalol',
      'Esmolol',
      'Propranolol'
    ],
    correctAnswerIndex: 3,
    explanation: 'Esmolol is an ultra–short-acting beta-1 selective antagonist → ideal for situations requiring rapid control.',
    category: 'Hypotensive Agents',
    difficulty: 2
  ),
  Question(
    id: 'hypotensive_agents_047',
    question: 'What is the most common side effect observed during nitroglycerin use?',
    options: [
      'Hypoglycemia',
      'Bradycardia',
      'Tolerance development',
      'Cyanide toxicity',
      'Hyperkalemia'
    ],
    correctAnswerIndex: 2,
    explanation: 'Continuous nitroglycerin use can lead to tolerance → reduced efficacy → intermittent dosing or titration is recommended.',
    category: 'Hypotensive Agents',
    difficulty: 2
  ),
  Question(
    id: 'hypotensive_agents_048',
    question: 'Which of the following agents acts mainly on the arterial system and decreases peripheral resistance?',
    options: [
      'Nitroglycerin',
      'Nicardipine',
      'Labetalol',
      'Esmolol',
      'Phenylephrine'
    ],
    correctAnswerIndex: 1,
    explanation: 'Nicardipine is an arterial-selective calcium channel blocker → causes systemic vasodilation → reduces afterload.',
    category: 'Hypotensive Agents',
    difficulty: 2
  ),
  Question(
    id: 'hypotensive_agents_049',
    question: 'Which of the following causes both arterial and venous vasodilation, independent of dose?',
    options: [
      'Nitroglycerin',
      'Nicardipine',
      'Sodium nitroprusside',
      'Esmolol',
      'Fenoldopam'
    ],
    correctAnswerIndex: 2,
    explanation: 'Sodium nitroprusside produces strong vasodilation of both arterial and venous systems, regardless of dose.',
    category: 'Hypotensive Agents',
    difficulty: 2
  ),
  Question(
    id: 'hypotensive_agents_050',
    question: 'Which of the following agents is preferred in the treatment of preeclampsia?',
    options: [
      'Nitroglycerin',
      'Sodium nitroprusside',
      'Nicardipine',
      'Labetalol',
      'Esmolol'
    ],
    correctAnswerIndex: 3,
    explanation: 'Labetalol is considered safe in pregnancy and is among the first-line antihypertensives for preeclampsia/eclampsia.',
    category: 'Hypotensive Agents',
    difficulty: 2
  ),
  Question(
    id: 'hypotensive_agents_051',
    question: 'For which condition is nitroglycerin most commonly used?',
    options: [
      'Cardiogenic shock',
      'Hypertensive crisis',
      'Stable angina',
      'Pheochromocytoma',
      'Aortic dissection'
    ],
    correctAnswerIndex: 2,
    explanation: 'Nitroglycerin reduces myocardial oxygen demand through venodilation → widely used in stable angina.',
    category: 'Hypotensive Agents',
    difficulty: 2
  ),
  Question(
    id: 'hypotensive_agents_052',
    question: 'Excessive use of which of the following agents may cause reflex tachycardia?',
    options: [
      'Labetalol',
      'Nitroglycerin',
      'Esmolol',
      'Metoprolol',
      'Phenylephrine'
    ],
    correctAnswerIndex: 1,
    explanation: 'Nitroglycerin decreases preload through venodilation → may lead to reflex tachycardia.',
    category: 'Hypotensive Agents',
    difficulty: 2
  ),
  Question(
    id: 'hypotensive_agents_053',
    question: 'Which of the following hypotensive agents balances both arterial and venous dilation?',
    options: [
      'Labetalol',
      'Nitroprusside',
      'Esmolol',
      'Fenoldopam',
      'Nicardipine'
    ],
    correctAnswerIndex: 1,
    explanation: 'Sodium nitroprusside dilates both arterial and venous vessels → reduces both afterload and preload.',
    category: 'Hypotensive Agents',
    difficulty: 2
  ),
  Question(
    id: 'hypotensive_agents_054',
    question: 'Which hypotensive agent is most prone to tolerance development?',
    options: [
      'Esmolol',
      'Nicardipine',
      'Nitroglycerin',
      'Labetalol',
      'Fenoldopam'
    ],
    correctAnswerIndex: 2,
    explanation: 'Nitroglycerin is the hypotensive agent most associated with tolerance → intermittent dosing is recommended.',
    category: 'Hypotensive Agents',
    difficulty: 2
  ),
  Question(
    id: 'hypotensive_agents_055',
    question: 'Which hypotensive agent has a beneficial effect on renal blood flow?',
    options: [
      'Nitroglycerin',
      'Esmolol',
      'Fenoldopam',
      'Labetalol',
      'Propranolol'
    ],
    correctAnswerIndex: 2,
    explanation: 'Fenoldopam stimulates D₁ dopamine receptors → renal vasodilation and natriuresis → preferred in hypertensive crisis with renal failure.',
    category: 'Hypotensive Agents',
    difficulty: 2
  ),
  Question(
    id: 'hypotensive_agents_056',
    question: 'With prolonged use, sodium nitroprusside most commonly causes toxicity in which organ system?',
    options: [
      'Liver',
      'Lungs',
      'Central nervous system',
      'Kidneys',
      'Heart'
    ],
    correctAnswerIndex: 2,
    explanation: 'Cyanide and thiocyanate accumulation may cause neurotoxicity (confusion, seizures).',
    category: 'Hypotensive Agents',
    difficulty: 2
  ),
  Question(
    id: 'hypotensive_agents_057',
    question: 'Which of the following agents lowers blood pressure by reducing heart rate?',
    options: [
      'Fenoldopam',
      'Nicardipine',
      'Esmolol',
      'Nitroglycerin',
      'Nitroprusside'
    ],
    correctAnswerIndex: 2,
    explanation: 'Esmolol, a beta-1 receptor antagonist, decreases chronotropy (heart rate) → lowers blood pressure.',
    category: 'Hypotensive Agents',
    difficulty: 2
  ),
  Question(
    id: 'hypotensive_agents_058',
    question: 'Which of the following agents least often causes reflex tachycardia?',
    options: [
      'Nicardipine',
      'Nitroglycerin',
      'Esmolol',
      'Hydralazine',
      'Fenoldopam'
    ],
    correctAnswerIndex: 2,
    explanation: 'Esmolol directly reduces heart rate, preventing reflex tachycardia.',
    category: 'Hypotensive Agents',
    difficulty: 2
  ),
  Question(
    id: 'hypotensive_agents_059',
    question: 'What is the main clinical difference between nitroglycerin and nitroprusside?',
    options: [
      'Duration of action',
      'Tolerance development',
      'Site of vasodilatory effect',
      'Bronchodilator effect',
      'Diuretic effect'
    ],
    correctAnswerIndex: 2,
    explanation: 'Nitroglycerin → predominantly venodilator; Nitroprusside → both arterial and venous vasodilation.',
    category: 'Hypotensive Agents',
    difficulty: 2
  ),
  Question(
    id: 'hypotensive_agents_060',
    question: 'What is the most common adverse effect following fenoldopam use?',
    options: [
      'Bradycardia',
      'Hypotension',
      'Hyperkalemia',
      'Hypernatremia',
      'Bradypnea'
    ],
    correctAnswerIndex: 1,
    explanation: 'Fenoldopam is a potent vasodilator → most common side effect is hypotension, especially with rapid infusion.',
    category: 'Hypotensive Agents',
    difficulty: 2
  ),
  Question(
    id: 'hypotensive_agents_061',
    question: 'What is the metabolic pathway responsible for the ultra-short action of esmolol?',
    options: [
      'Hepatic microsomal enzymes',
      'Renal hydrolysis',
      'Erythrocyte esterases',
      'P450 system',
      'Plasma proteins'
    ],
    correctAnswerIndex: 2,
    explanation: 'Esmolol is rapidly metabolized by erythrocyte esterases → explains its very short duration.',
    category: 'Hypotensive Agents',
    difficulty: 2
  ),
  Question(
    id: 'hypotensive_agents_062',
    question: 'Which of the following agents may improve arterial oxygenation while inducing hypotension?',
    options: [
      'Nicardipine',
      'Esmolol',
      'Fenoldopam',
      'Labetalol',
      'Nitroglycerin'
    ],
    correctAnswerIndex: 2,
    explanation: 'Fenoldopam increases renal perfusion, decreases oxygen consumption, and may improve oxygenation in some studies.',
    category: 'Hypotensive Agents',
    difficulty: 2
  ),
  Question(
    id: 'hypotensive_agents_063',
    question: 'Which of the following agents primarily reduces afterload through arterial vasodilation?',
    options: [
      'Nitroglycerin',
      'Labetalol',
      'Fenoldopam',
      'Nicardipine',
      'Esmolol'
    ],
    correctAnswerIndex: 3,
    explanation: 'Nicardipine is a selective arterial vasodilator → lowers afterload.',
    category: 'Hypotensive Agents',
    difficulty: 2
  ),
  Question(
    id: 'hypotensive_agents_064',
    question: 'In which condition should the beta-1 selective blocker esmolol not be preferred?',
    options: [
      'Aortic dissection',
      'Thyroid storm',
      'COPD',
      'Supraventricular tachycardia',
      'Myocardial infarction'
    ],
    correctAnswerIndex: 2,
    explanation: 'Although beta-1 selective, esmolol may have beta-2 effects at high doses → caution in COPD patients.',
    category: 'Hypotensive Agents',
    difficulty: 2
  ),
  Question(
    id: 'hypotensive_agents_065',
    question: 'Which hypotensive drug reduces blood pressure and myocardial oxygen consumption?',
    options: [
      'Esmolol',
      'Fenoldopam',
      'Nitroprusside',
      'Nicardipine',
      'Dopamine'
    ],
    correctAnswerIndex: 0,
    explanation: 'Esmolol reduces heart rate and contractility → decreases myocardial O₂ demand → provides both anti-ischemic and hypotensive effect.',
    category: 'Hypotensive Agents',
    difficulty: 2
  ),
  Question(
    id: 'hypotensive_agents_066',
    question: 'Which of the following is correct regarding nitroglycerin?',
    options: [
      'Predominantly causes arterial dilation',
      'Causes reflex bradycardia',
      'Provides coronary vasodilation',
      'Contains cyanide',
      'Contraindicated in COPD'
    ],
    correctAnswerIndex: 2,
    explanation: 'Nitroglycerin dilates coronary arteries → increases myocardial oxygenation → important in angina treatment.',
    category: 'Hypotensive Agents',
    difficulty: 2
  ),
  Question(
    id: 'hypotensive_agents_067',
    question: 'Which agent has the shortest duration of antihypertensive effect?',
    options: [
      'Nitroglycerin',
      'Esmolol',
      'Labetalol',
      'Fenoldopam',
      'Nicardipine'
    ],
    correctAnswerIndex: 1,
    explanation: 'Esmolol is rapidly metabolized by erythrocyte esterases → very short duration of action (minutes).',
    category: 'Hypotensive Agents',
    difficulty: 2
  ),
  Question(
    id: 'hypotensive_agents_068',
    question: 'Which hypotensive agent works by calcium channel blockade?',
    options: [
      'Labetalol',
      'Fenoldopam',
      'Nicardipine',
      'Esmolol',
      'Nitroglycerin'
    ],
    correctAnswerIndex: 2,
    explanation: 'Nicardipine is a dihydropyridine calcium channel blocker → arterial vasodilation.',
    category: 'Hypotensive Agents',
    difficulty: 2
  ),
  Question(
    id: 'hypotensive_agents_069',
    question: 'What is the most commonly used antidote for preventing cyanide toxicity from nitroprusside?',
    options: [
      'N-acetylcysteine',
      'Methylene blue',
      'Sodium thiosulfate',
      'Vitamin K',
      'Naloxone'
    ],
    correctAnswerIndex: 2,
    explanation: 'Sodium thiosulfate converts cyanide to thiocyanate → prevents or treats nitroprusside toxicity.',
    category: 'Hypotensive Agents',
    difficulty: 2
  ),
  Question(
    id: 'hypotensive_agents_070',
    question: 'What can occur after discontinuation of a nitroglycerin infusion?',
    options: [
      'Rebound hypertension',
      'Reflex bradycardia',
      'Hypoglycemia',
      'Prolonged hypotension',
      'Hyponatremia'
    ],
    correctAnswerIndex: 0,
    explanation: 'Sudden withdrawal leads to rapid loss of effect → rebound hypertension may occur → tapering is recommended.',
    category: 'Hypotensive Agents',
    difficulty: 2
  ),
  Question(
    id: 'hypotensive_agents_071',
    question: 'In which clinical condition should beta blockers be used with caution?',
    options: [
      'Hyperthyroidism',
      'Supraventricular tachycardia',
      'Aortic dissection',
      'Acute heart failure',
      'Glaucoma'
    ],
    correctAnswerIndex: 3,
    explanation: 'In acute heart failure, beta blockers may worsen contractility → should be used with caution.',
    category: 'Hypotensive Agents',
    difficulty: 2
  ),
  Question(
    id: 'hypotensive_agents_072',
    question: 'What makes esmolol ideal for intraoperative hypotension control?',
    options: [
      'Hepatic metabolism',
      'Lipophilicity',
      'Rapid metabolism by erythrocyte esterases',
      'Alpha blockade',
      'Bronchodilator effect'
    ],
    correctAnswerIndex: 2,
    explanation: 'Esmolol is broken down by erythrocyte esterases → rapid onset, short duration → titratable intraoperatively.',
    category: 'Hypotensive Agents',
    difficulty: 2
  ),
  Question(
    id: 'hypotensive_agents_073',
    question: 'Which agent has the highest risk of causing reflex tachycardia?',
    options: [
      'Nicardipine',
      'Esmolol',
      'Labetalol',
      'Fenoldopam',
      'Nitroglycerin'
    ],
    correctAnswerIndex: 0,
    explanation: 'Nicardipine, a potent arterial dilator, stimulates baroreceptors → reflex tachycardia.',
    category: 'Hypotensive Agents',
    difficulty: 2
  ),
  Question(
    id: 'hypotensive_agents_074',
    question: 'Which electrolyte disturbance should be monitored during fenoldopam use?',
    options: [
      'Hyponatremia',
      'Hyperkalemia',
      'Hypokalemia',
      'Hypocalcemia',
      'Hypermagnesemia'
    ],
    correctAnswerIndex: 2,
    explanation: 'Fenoldopam causes natriuresis and diuresis → may lead to potassium loss → hypokalemia.',
    category: 'Hypotensive Agents',
    difficulty: 2
  ),
  Question(
    id: 'hypotensive_agents_075',
    question: 'Which agent is most suitable for reducing pulmonary congestion?',
    options: [
      'Nitroglycerin',
      'Esmolol',
      'Nicardipine',
      'Labetalol',
      'Metoprolol'
    ],
    correctAnswerIndex: 0,
    explanation: 'Nitroglycerin reduces pulmonary venous return via venodilation → alleviates pulmonary congestion.',
    category: 'Hypotensive Agents',
    difficulty: 2
  ),
  Question(
    id: 'hypotensive_agents_076',
    question: 'Which agent combines arterial vasodilation with diuretic effect?',
    options: [
      'Fenoldopam',
      'Nitroglycerin',
      'Labetalol',
      'Esmolol',
      'Propranolol'
    ],
    correctAnswerIndex: 0,
    explanation: 'Fenoldopam, a D1 receptor agonist, provides both arterial dilation and natriuresis → useful in hypertensive crisis with renal failure.',
    category: 'Hypotensive Agents',
    difficulty: 2
  ),
  Question(
    id: 'hypotensive_agents_077',
    question: 'Which agent, in addition to hypotensive effect, reduces myocardial oxygen consumption during anesthesia?',
    options: [
      'Nicardipine',
      'Fenoldopam',
      'Nitroglycerin',
      'Esmolol',
      'Labetalol'
    ],
    correctAnswerIndex: 3,
    explanation: 'Esmolol decreases heart rate and contractility → lowers BP and myocardial oxygen demand → protective during surgery.',
    category: 'Hypotensive Agents',
    difficulty: 2
  ),
  Question(
    id: 'hypotensive_agents_078',
    question: 'Which of the following is recommended to preserve cerebral perfusion during controlled hypotension?',
    options: [
      'Keeping the head in neutral position',
      'Hyperventilation',
      'Volume restriction',
      'High PEEP application',
      'Inducing hyperglycemia'
    ],
    correctAnswerIndex: 0,
    explanation: 'Head elevation and neck flexion should be avoided to prevent impaired venous return.',
    category: 'Hypotensive Agents',
    difficulty: 2
  ),
  Question(
    id: 'hypotensive_agents_079',
    question: 'Which is a renal protection strategy during controlled hypotension?',
    options: [
      'Ensuring adequate hydration',
      'Use of diuretics',
      'Hyperosmolar fluids',
      'NSAID use',
      'High-dose dopamine'
    ],
    correctAnswerIndex: 0,
    explanation: 'Adequate volume replacement preserves renal perfusion; diuretics/NSAIDs may increase risk.',
    category: 'Hypotensive Agents',
    difficulty: 2
  ),
  Question(
    id: 'hypotensive_agents_080',
    question: 'What is the mechanism of action of volatile anesthetics used for controlled hypotension?',
    options: [
      'Peripheral vasodilation + cardiac depression',
      'Activation of sympathetic nervous system',
      'Increased ADH release',
      'Activation of renin-angiotensin system',
      'Increased platelet aggregation'
    ],
    correctAnswerIndex: 0,
    explanation: 'Isoflurane/sevoflurane lower BP via vasodilation and cardiac depression.',
    category: 'Hypotensive Agents',
    difficulty: 2
  ),
  Question(
    id: 'hypotensive_agents_081',
    question: 'Which α2 agonist is used for controlled hypotension?',
    options: [
      'Dexmedetomidine',
      'Phenylephrine',
      'Epinephrine',
      'Dopamine',
      'Dobutamine'
    ],
    correctAnswerIndex: 0,
    explanation: 'Dexmedetomidine, a central α2 agonist, suppresses sympathetic activity; also provides sedation and analgesia.',
    category: 'Hypotensive Agents',
    difficulty: 2
  ),
  Question(
    id: 'hypotensive_agents_082',
    question: 'Which drug is used to prevent reflex tachycardia during controlled hypotension?',
    options: [
      'Esmolol',
      'Atropine',
      'Dopamine',
      'Epinephrine',
      'Hydralazine'
    ],
    correctAnswerIndex: 0,
    explanation: 'Reflex tachycardia can occur with vasodilators (e.g., nitroprusside) → controlled with beta blockers.',
    category: 'Hypotensive Agents',
    difficulty: 2
  ),
  Question(
    id: 'hypotensive_agents_083',
    question: 'Which phosphodiesterase inhibitor is used for controlled hypotension?',
    options: [
      'Milrinone',
      'Nitroglycerin',
      'Nicardipine',
      'Fenoldopam',
      'Clonidine'
    ],
    correctAnswerIndex: 0,
    explanation: 'Milrinone (PDE-III inhibitor) provides peripheral vasodilation while maintaining cardiac output.',
    category: 'Hypotensive Agents',
    difficulty: 2
  ),
  Question(
    id: 'hypotensive_agents_084',
    question: 'What is the cause of metabolic acidosis during controlled hypotension?',
    options: [
      'Tissue hypoperfusion',
      'Hyperventilation',
      'Alkalosis',
      'Hyperglycemia',
      'Hypokalemia'
    ],
    correctAnswerIndex: 0,
    explanation: 'Lactic acidosis may develop due to hypoperfusion; risk increases when MAP <50 mmHg.',
    category: 'Hypotensive Agents',
    difficulty: 2
  ),
  Question(
    id: 'hypotensive_agents_085',
    question: 'Which agent best preserves cardiac output during controlled hypotension?',
    options: [
      'Fenoldopam',
      'Nitroprusside',
      'Nicardipine',
      'Esmolol',
      'Isoflurane'
    ],
    correctAnswerIndex: 0,
    explanation: 'Fenoldopam improves renal and splanchnic perfusion via dopaminergic activity while preserving cardiac output.',
    category: 'Hypotensive Agents',
    difficulty: 2
  ),
  Question(
    id: 'hypotensive_agents_086',
    question: 'Which of the following is a ganglion blocker used in controlled hypotension?',
    options: [
      'Trimethaphan',
      'Nicardipine',
      'Esmolol',
      'Nitroprusside',
      'Dexmedetomidine'
    ],
    correctAnswerIndex: 0,
    explanation: 'Rarely used; blocks both sympathetic and parasympathetic ganglia.',
    category: 'Hypotensive Agents',
    difficulty: 2
  ),
  Question(
    id: 'hypotensive_agents_087',
    question: 'Which ACE inhibitor is used for controlled hypotension?',
    options: [
      'Enalaprilat',
      'Labetalol',
      'Hydralazine',
      'Fenoldopam',
      'Milrinone'
    ],
    correctAnswerIndex: 0,
    explanation: 'Enalaprilat inhibits angiotensin II formation → vasodilation; slow onset.',
    category: 'Hypotensive Agents',
    difficulty: 2
  ),
  Question(
    id: 'hypotensive_agents_088',
    question: 'Which of the following is an arterial vasodilator used for controlled hypotension?',
    options: [
      'Hydralazine',
      'Nitroglycerin',
      'Esmolol',
      'Dexmedetomidine',
      'Milrinone'
    ],
    correctAnswerIndex: 0,
    explanation: 'Hydralazine is a direct arterial vasodilator; onset 10–20 min, long duration.',
    category: 'Hypotensive Agents',
    difficulty: 2
  ),
  Question(
    id: 'hypotensive_agents_089',
    question: 'Which is a possible complication of controlled hypotension?',
    options: [
      'Vision loss',
      'Hypertension',
      'Hyperthermia',
      'Hyperglycemia',
      'Hypokalemia'
    ],
    correctAnswerIndex: 0,
    explanation: 'Rare but serious complication → optic nerve ischemia may cause vision loss.',
    category: 'Hypotensive Agents',
    difficulty: 2
  ),
  Question(
    id: 'hypotensive_agents_090',
    question: 'Which is a renin inhibitor used for controlled hypotension?',
    options: [
      'Aliskiren',
      'Enalapril',
      'Losartan',
      'Hydralazine',
      'Fenoldopam'
    ],
    correctAnswerIndex: 0,
    explanation: 'Aliskiren inhibits the first step of the renin-angiotensin system; clinical use is limited.',
    category: 'Hypotensive Agents',
    difficulty: 2
  ),
];
