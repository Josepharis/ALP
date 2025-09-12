import '../../models/question.dart';

List<Question> analgesicAgentsQuestions = [
  Question(
    id: 'analgesic_agents_001',
    question: 'Which of the following is not a specific effect of opioids?',
    options: [
      'Respiratory depression',
      'Diarrhea',
      'Miosis',
      'Euphoria',
      'Analgesia'
    ],
    correctAnswerIndex: 1,
    explanation: 'Opioids reduce gastrointestinal motility, leading to constipation. Diarrhea is not typically seen with opioids.',
    category: 'Analgesic Agents',
    difficulty: 2
  ),
  Question(
    id: 'analgesic_agents_002',
    question: 'Which of the following statements about fentanyl is correct?',
    options: [
      'It is a long-acting opioid',
      'It causes significant histamine release',
      'It has high water solubility',
      'It has rapid onset due to its lipophilic nature',
      'It has high oral bioavailability'
    ],
    correctAnswerIndex: 3,
    explanation: 'Fentanyl is highly lipophilic, allowing rapid brain penetration and fast onset of action.',
    category: 'Analgesic Agents',
    difficulty: 2
  ),
  Question(
    id: 'analgesic_agents_003',
    question: 'Which of the following opioids has a long duration of action?',
    options: [
      'Fentanyl',
      'Remifentanil',
      'Sufentanil',
      'Morphine',
      'Alfentanil'
    ],
    correctAnswerIndex: 3,
    explanation: 'Morphine has a longer half-life, slower onset, but prolonged effect.',
    category: 'Analgesic Agents',
    difficulty: 2
  ),
  Question(
    id: 'analgesic_agents_004',
    question: 'What is the most important pharmacokinetic property of remifentanil?',
    options: [
      'Metabolized by the liver',
      'Hydrolyzed by cholinesterase',
      'Long-acting',
      'Weak analgesic effect',
      'Orally available'
    ],
    correctAnswerIndex: 1,
    explanation: 'Remifentanil is metabolized by plasma and tissue esterases. It has an ultra-short duration of action and is used via continuous infusion.',
    category: 'Analgesic Agents',
    difficulty: 2
  ),
  Question(
    id: 'analgesic_agents_005',
    question: 'Which opioid should be used cautiously in renal failure due to active metabolites?',
    options: [
      'Remifentanil',
      'Fentanyl',
      'Morphine',
      'Alfentanil',
      'Sufentanil'
    ],
    correctAnswerIndex: 2,
    explanation: 'Morphine\'s active metabolite, M6G (morphine-6-glucuronide), accumulates in renal failure, increasing the risk of respiratory depression.',
    category: 'Analgesic Agents',
    difficulty: 2
  ),
  Question(
    id: 'analgesic_agents_006',
    question: 'Which effect of opioids is least likely to develop tolerance?',
    options: [
      'Analgesia',
      'Euphoria',
      'Respiratory depression',
      'Miosis',
      'Sedation'
    ],
    correctAnswerIndex: 3,
    explanation: 'Miosis is a hallmark effect of opioids and does not develop tolerance, even in chronic users.',
    category: 'Analgesic Agents',
    difficulty: 2
  ),
  Question(
    id: 'analgesic_agents_007',
    question: 'Which receptor is primarily responsible for the analgesic effect of opioids?',
    options: [
      'Delta',
      'Kappa',
      'NMDA',
      'Mu',
      'Beta'
    ],
    correctAnswerIndex: 3,
    explanation: 'Mu (μ) receptors mediate analgesia, sedation, respiratory depression, and euphoria.',
    category: 'Analgesic Agents',
    difficulty: 2
  ),
  Question(
    id: 'analgesic_agents_008',
    question: 'Which statement about naloxone is correct?',
    options: [
      'It is a partial opioid agonist',
      'It is used only orally',
      'It is an opioid receptor antagonist',
      'It has analgesic effects',
      'Its duration of action is longer than morphine'
    ],
    correctAnswerIndex: 2,
    explanation: 'Naloxone is an opioid antagonist blocking mu, delta, and kappa receptors. It acts rapidly when given IV.',
    category: 'Analgesic Agents',
    difficulty: 2
  ),
  Question(
    id: 'analgesic_agents_009',
    question: 'Part of tramadol\'s analgesic effect is mediated through which neurotransmitters?',
    options: [
      'Dopamine and GABA',
      'NMDA and glutamate',
      'Serotonin and noradrenaline',
      'Acetylcholine and GABA',
      'Histamine and serotonin'
    ],
    correctAnswerIndex: 2,
    explanation: 'Tramadol is a weak μ-opioid agonist and also inhibits serotonin and noradrenaline reuptake, enhancing analgesia.',
    category: 'Analgesic Agents',
    difficulty: 2
  ),
  Question(
    id: 'analgesic_agents_010',
    question: 'Which opioid is most commonly associated with truncal muscle rigidity?',
    options: [
      'Morphine',
      'Tramadol',
      'Fentanyl',
      'Meperidine',
      'Nalbuphine'
    ],
    correctAnswerIndex: 2,
    explanation: 'Fentanyl and its derivatives (especially high-dose IV bolus) can cause chest wall rigidity, complicating ventilation.',
    category: 'Analgesic Agents',
    difficulty: 2
  ),
  Question(
    id: 'analgesic_agents_011',
    question: 'Which of the following opioids has no active metabolites?',
    options: [
      'Morphine',
      'Meperidine',
      'Tramadol',
      'Fentanyl',
      'Hydromorphone'
    ],
    correctAnswerIndex: 3,
    explanation: 'Fentanyl is metabolized to inactive compounds, making it safer in renal impairment.',
    category: 'Analgesic Agents',
    difficulty: 2
  ),
  Question(
    id: 'analgesic_agents_012',
    question: 'The nausea and vomiting caused by opioids is related to stimulation of which site?',
    options: [
      'NMDA antagonism',
      'Mu receptor stimulation',
      'Direct effect on the respiratory center',
      'Chemoreceptor trigger zone (CTZ)',
      'Histamine release'
    ],
    correctAnswerIndex: 3,
    explanation: 'Opioids stimulate the CTZ in the medulla, causing nausea and vomiting.',
    category: 'Analgesic Agents',
    difficulty: 2
  ),
  Question(
    id: 'analgesic_agents_013',
    question: 'The most serious toxicity associated with meperidine is:',
    options: [
      'Liver failure',
      'Seizures',
      'Bronchospasm',
      'Bradycardia',
      'Urinary retention'
    ],
    correctAnswerIndex: 1,
    explanation: 'The metabolite normeperidine can accumulate, especially in renal failure, leading to seizures.',
    category: 'Analgesic Agents',
    difficulty: 2
  ),
  Question(
    id: 'analgesic_agents_014',
    question: 'Tolerance to which effect of opioids develops most rapidly?',
    options: [
      'Analgesia',
      'Miosis',
      'Respiratory depression',
      'Constipation',
      'Nausea and vomiting'
    ],
    correctAnswerIndex: 0,
    explanation: 'Tolerance develops quickly to the analgesic effect, while miosis and constipation remain relatively unaffected.',
    category: 'Analgesic Agents',
    difficulty: 2
  ),
  Question(
    id: 'analgesic_agents_015',
    question: 'Which of the following is a partial opioid agonist?',
    options: [
      'Morphine',
      'Sufentanil',
      'Buprenorphine',
      'Naloxone',
      'Remifentanil'
    ],
    correctAnswerIndex: 2,
    explanation: 'Buprenorphine is a high-affinity partial mu agonist. It provides analgesia but with less efficacy than full agonists.',
    category: 'Analgesic Agents',
    difficulty: 2
  ),
  Question(
    id: 'analgesic_agents_016',
    question: 'What is the most important mechanism in the development of opioid tolerance?',
    options: [
      'Increase in receptor number',
      'Increased receptor affinity',
      'Downregulation and internalization',
      'Increased hepatic metabolism',
      'Receptor mutation'
    ],
    correctAnswerIndex: 2,
    explanation: 'Chronic opioid use causes receptor downregulation and internalization, driving tolerance.',
    category: 'Analgesic Agents',
    difficulty: 2
  ),
  Question(
    id: 'analgesic_agents_017',
    question: 'Which opioid increases the risk of serotonin syndrome?',
    options: [
      'Fentanyl',
      'Tramadol',
      'Morphine',
      'Codeine',
      'All of them'
    ],
    correctAnswerIndex: 1,
    explanation: 'Tramadol (and meperidine) inhibit serotonin reuptake and may cause serotonin syndrome, especially with SSRIs.',
    category: 'Analgesic Agents',
    difficulty: 2
  ),
  Question(
    id: 'analgesic_agents_018',
    question: 'Which of the following is not a withdrawal symptom of opioids?',
    options: [
      'Rhinorrhea',
      'Mydriasis',
      'Agitation',
      'Constipation',
      'Sweating'
    ],
    correctAnswerIndex: 3,
    explanation: 'Diarrhea, not constipation, is typical in withdrawal. Other common findings include mydriasis, sweating, and restlessness.',
    category: 'Analgesic Agents',
    difficulty: 2
  ),
  Question(
    id: 'analgesic_agents_019',
    question: 'Naloxone\'s duration of action may be insufficient for which opioid?',
    options: [
      'Fentanyl',
      'Remifentanil',
      'Morphine',
      'Meperidine',
      'Tramadol'
    ],
    correctAnswerIndex: 2,
    explanation: 'Naloxone has a shorter half-life than morphine, so repeated dosing may be needed to prevent rebound respiratory depression.',
    category: 'Analgesic Agents',
    difficulty: 2
  ),
  Question(
    id: 'analgesic_agents_020',
    question: 'Opioid-induced respiratory depression is mediated by which receptor?',
    options: [
      'Kappa',
      'Delta',
      'NMDA',
      'Mu',
      'Sigma'
    ],
    correctAnswerIndex: 3,
    explanation: 'Mu receptors in the medullary respiratory center mediate opioid-induced respiratory depression.',
    category: 'Analgesic Agents',
    difficulty: 2
  ),
  Question(
    id: 'analgesic_agents_021',
    question: 'Which of the following is correct regarding remifentanil?',
    options: [
      'Its effect depends on hepatic metabolism',
      'It is long-acting',
      'It is a coumarin derivative',
      'Its effect ends rapidly via esterase metabolism',
      'Its analgesic potency is lower than morphine'
    ],
    correctAnswerIndex: 3,
    explanation: 'Remifentanil is rapidly hydrolyzed by esterases, making it ultra-short-acting and easily titratable.',
    category: 'Analgesic Agents',
    difficulty: 2
  ),
  Question(
    id: 'analgesic_agents_022',
    question: 'Which of the following is not a medullary effect of opioids?',
    options: [
      'Respiratory depression',
      'Cough suppression',
      'Nausea and vomiting',
      'Muscle relaxation',
      'Sedation'
    ],
    correctAnswerIndex: 3,
    explanation: 'Opioids act on medullary centers for respiration, cough, and arousal, but they are not direct muscle relaxants.',
    category: 'Analgesic Agents',
    difficulty: 2
  ),
  Question(
    id: 'analgesic_agents_023',
    question: 'What is the typical gastrointestinal effect of opioids?',
    options: [
      'Increased motility',
      'Increased secretions',
      'Increased peristalsis',
      'Decreased motility',
      'Peptic ulcer formation'
    ],
    correctAnswerIndex: 3,
    explanation: 'Opioids reduce gastric and intestinal motility, slowing peristalsis and causing constipation.',
    category: 'Analgesic Agents',
    difficulty: 2
  ),
  Question(
    id: 'analgesic_agents_024',
    question: 'Which of the following is a full opioid agonist?',
    options: [
      'Buprenorphine',
      'Nalbuphine',
      'Morphine',
      'Naloxone',
      'Pentazocine'
    ],
    correctAnswerIndex: 2,
    explanation: 'Morphine is the classic full μ-opioid agonist. The others are partial agonists or antagonists.',
    category: 'Analgesic Agents',
    difficulty: 2
  ),
  Question(
    id: 'analgesic_agents_025',
    question: 'What is the effect of opioids on the neuroendocrine system?',
    options: [
      'Increase TSH secretion',
      'Stimulate ACTH secretion',
      'Suppress LH and FSH secretion',
      'Inhibit prolactin secretion',
      'Suppress GH secretion'
    ],
    correctAnswerIndex: 2,
    explanation: 'Opioids suppress gonadotropin (LH, FSH) release via hypothalamic-pituitary axis, potentially causing hypogonadism.',
    category: 'Analgesic Agents',
    difficulty: 2
  ),
  Question(
    id: 'analgesic_agents_026',
    question: 'Opioid-induced hyperalgesia is most commonly seen in which situation?',
    options: [
      'Low-dose chronic use',
      'Rapid dose tapering',
      'High-dose short infusion',
      'Combined NSAID use',
      'Oral administration'
    ],
    correctAnswerIndex: 2,
    explanation: 'High-dose, short-term infusions of short-acting opioids (like remifentanil) may lead to opioid-induced hyperalgesia.',
    category: 'Analgesic Agents',
    difficulty: 2
  ),
  Question(
    id: 'analgesic_agents_027',
    question: 'Which opioid is most associated with muscle rigidity?',
    options: [
      'Alfentanil',
      'Meperidine',
      'Morphine',
      'Nalbuphine',
      'Tramadol'
    ],
    correctAnswerIndex: 0,
    explanation: 'Alfentanil, with rapid onset and high potency, can cause chest wall rigidity when given as high-dose IV bolus.',
    category: 'Analgesic Agents',
    difficulty: 2
  ),
  Question(
    id: 'analgesic_agents_028',
    question: 'Which statement about tramadol is correct?',
    options: [
      'It is a pure opioid agonist',
      'It acts only peripherally',
      'Its analgesic effect also involves serotonergic and noradrenergic pathways',
      'Its respiratory depression is more severe than morphine',
      'It is metabolized through the kidneys'
    ],
    correctAnswerIndex: 2,
    explanation: 'Tramadol provides analgesia via weak μ-agonism and serotonin/noradrenaline reuptake inhibition.',
    category: 'Analgesic Agents',
    difficulty: 2
  ),
  Question(
    id: 'analgesic_agents_029',
    question: 'Which medullary effect of opioids is therapeutically useful?',
    options: [
      'Respiratory depression',
      'Cough suppression',
      'Nausea and vomiting',
      'Delayed gastric emptying',
      'Mydriasis'
    ],
    correctAnswerIndex: 1,
    explanation: 'Opioids suppress the medullary cough center, producing antitussive effects (e.g., codeine at low doses).',
    category: 'Analgesic Agents',
    difficulty: 2
  ),
  Question(
    id: 'analgesic_agents_030',
    question: 'Which of the following is a late sign of opioid withdrawal?',
    options: [
      'Mydriasis',
      'Anxiety',
      'Rhinorrhea',
      'Sweating',
      'Muscle pain'
    ],
    correctAnswerIndex: 4,
    explanation: 'Early signs include rhinorrhea, lacrimation, and sweating; muscle aches and cramps occur later.',
    category: 'Analgesic Agents',
    difficulty: 2
  ),
  Question(
    id: 'analgesic_agents_031',
    question: 'Which of the following opioids best preserves cardiovascular stability?',
    options: [
      'Meperidine',
      'Morphine',
      'Sufentanil',
      'Fentanyl',
      'Remifentanil'
    ],
    correctAnswerIndex: 3,
    explanation: 'Fentanyl causes minimal histamine release and has limited effects on sympathetic tone, making it one of the opioids that best preserves cardiovascular stability.',
    category: 'Analgesic Agents',
    difficulty: 2
  ),
  Question(
    id: 'analgesic_agents_032',
    question: 'Which is the typical ocular effect of opioids?',
    options: [
      'Mydriasis',
      'Glaucoma',
      'Miosis',
      'Accommodation spasm',
      'Fixed pupils'
    ],
    correctAnswerIndex: 2,
    explanation: 'Opioids stimulate the parasympathetic system, causing pupillary constriction (miosis). Tolerance does not develop to this effect.',
    category: 'Analgesic Agents',
    difficulty: 2
  ),
  Question(
    id: 'analgesic_agents_033',
    question: 'Which opioid can cause biliary colic by inducing spasm of the bile ducts?',
    options: [
      'Meperidine',
      'Fentanyl',
      'Morphine',
      'Tramadol',
      'Nalbuphine'
    ],
    correctAnswerIndex: 2,
    explanation: 'Morphine contracts the sphincter of Oddi, reducing bile flow and potentially causing biliary colic pain.',
    category: 'Analgesic Agents',
    difficulty: 2
  ),
  Question(
    id: 'analgesic_agents_034',
    question: 'Which intervention best prevents opioid-induced constipation?',
    options: [
      'Low-dose opioid use',
      'Combination with anticholinergics',
      'Administration of peripheral opioid antagonists',
      'Fluid restriction',
      'Concurrent SSRI use'
    ],
    correctAnswerIndex: 2,
    explanation: 'Opioid-induced constipation that does not respond to laxatives is effectively treated with peripheral opioid receptor antagonists (e.g., methylnaltrexone).',
    category: 'Analgesic Agents',
    difficulty: 2
  ),
  Question(
    id: 'analgesic_agents_035',
    question: 'Which statement about opioids is correct?',
    options: [
      'They do not cross the placenta',
      'They are commonly teratogenic',
      'They can cause neonatal respiratory depression',
      'They are highly nephrotoxic',
      'They prevent vomiting'
    ],
    correctAnswerIndex: 2,
    explanation: 'Opioids cross the placenta. When administered during labor, they may cause respiratory depression in the newborn.',
    category: 'Analgesic Agents',
    difficulty: 2
  ),
  Question(
    id: 'analgesic_agents_036',
    question: 'Which opioid is commonly preferred for labor pain?',
    options: [
      'Morphine',
      'Nalbuphine',
      'Fentanyl',
      'Meperidine',
      'Alfentanil'
    ],
    correctAnswerIndex: 3,
    explanation: 'Meperidine (pethidine) is often used during labor because it provides analgesia while having minimal effect on uterine contractions.',
    category: 'Analgesic Agents',
    difficulty: 2
  ),
  Question(
    id: 'analgesic_agents_037',
    question: 'What is the main cause of opioid-related pruritus?',
    options: [
      'Serotonin release',
      'Acetylcholine release',
      'Histamine release',
      'Prostaglandin synthesis',
      'TNF-alpha activation'
    ],
    correctAnswerIndex: 2,
    explanation: 'Some opioids, particularly morphine, trigger mast cell histamine release, leading to pruritus.',
    category: 'Analgesic Agents',
    difficulty: 2
  ),
  Question(
    id: 'analgesic_agents_038',
    question: 'Which condition may develop as a result of chronic opioid use?',
    options: [
      'Hyperkalemia',
      'Hypoglycemia',
      'Hypogonadism',
      'Prevention of hypothermia',
      'Hyperthyroidism'
    ],
    correctAnswerIndex: 2,
    explanation: 'Chronic opioid use suppresses the hypothalamic-pituitary-gonadal axis, reducing testosterone levels—a condition known as opioid-induced hypogonadism.',
    category: 'Analgesic Agents',
    difficulty: 2
  ),
  Question(
    id: 'analgesic_agents_039',
    question: 'Which opioid has the most pronounced antitussive effect?',
    options: [
      'Morphine',
      'Fentanyl',
      'Tramadol',
      'Codeine',
      'Nalbuphine'
    ],
    correctAnswerIndex: 3,
    explanation: 'Codeine, even at low doses, strongly suppresses the cough reflex and is widely prescribed for this purpose.',
    category: 'Analgesic Agents',
    difficulty: 2
  ),
  Question(
    id: 'analgesic_agents_040',
    question: 'Which opioid causes the least histamine release?',
    options: [
      'Morphine',
      'Meperidine',
      'Fentanyl',
      'Codeine',
      'Tramadol'
    ],
    correctAnswerIndex: 2,
    explanation: 'Fentanyl and its derivatives (sufentanil, alfentanil) release very little histamine, making them preferable in patients requiring hemodynamic stability.',
    category: 'Analgesic Agents',
    difficulty: 2
  ),
  Question(
    id: 'analgesic_agents_041',
    question: 'Which of the following is not due to μ-opioid receptor stimulation?',
    options: [
      'Respiratory depression',
      'Euphoria',
      'Analgesia',
      'Miosis',
      'Hypertension'
    ],
    correctAnswerIndex: 4,
    explanation: 'μ-receptor activation may cause hypotension, but hypertension is not a typical effect.',
    category: 'Analgesic Agents',
    difficulty: 2
  ),
  Question(
    id: 'analgesic_agents_042',
    question: 'In which situation may the effects of opioids be increased?',
    options: [
      'Liver enzyme induction',
      'Increased CYP3A4 activity',
      'Renal failure',
      'Acute hypervolemia',
      'Hyperthyroidism'
    ],
    correctAnswerIndex: 2,
    explanation: 'In renal failure, active metabolites of some opioids (especially morphine) accumulate, intensifying effects and toxicity risk.',
    category: 'Analgesic Agents',
    difficulty: 2
  ),
  Question(
    id: 'analgesic_agents_043',
    question: 'What is the most important clinical finding due to normeperidine accumulation with meperidine use?',
    options: [
      'Delirium',
      'Increased respiration',
      'Seizure',
      'Hypothermia',
      'Mydriasis'
    ],
    correctAnswerIndex: 2,
    explanation: 'Normeperidine is neurotoxic; accumulation in high doses or renal failure can cause seizures.',
    category: 'Analgesic Agents',
    difficulty: 2
  ),
  Question(
    id: 'analgesic_agents_044',
    question: 'Why are antihistamines given together with opioids?',
    options: [
      'To reduce respiratory depression',
      'To enhance sedation',
      'To enhance antiemetic effect',
      'To reduce pruritus',
      'To prolong analgesia'
    ],
    correctAnswerIndex: 3,
    explanation: 'Opioid-induced pruritus is histamine-mediated, so it can be reduced with H1 antagonists (antihistamines).',
    category: 'Analgesic Agents',
    difficulty: 2
  ),
  Question(
    id: 'analgesic_agents_045',
    question: 'Which statement about tramadol is incorrect?',
    options: [
      'It is a weak μ-opioid agonist',
      'It is a serotonin reuptake inhibitor',
      'It causes minimal respiratory depression',
      'It carries no risk of seizures at high doses',
      'It inhibits noradrenaline reuptake'
    ],
    correctAnswerIndex: 3,
    explanation: 'Tramadol may increase seizure risk at high doses, particularly in patients with epilepsy.',
    category: 'Analgesic Agents',
    difficulty: 2
  ),
  Question(
    id: 'analgesic_agents_046',
    question: 'Which is considered the most serious adverse effect of opioids?',
    options: [
      'Miosis',
      'Sedation',
      'Constipation',
      'Respiratory depression',
      'Pruritus'
    ],
    correctAnswerIndex: 3,
    explanation: 'Respiratory depression is the most serious, life-threatening side effect of opioids, requiring careful dose titration and monitoring.',
    category: 'Analgesic Agents',
    difficulty: 2
  ),
  Question(
    id: 'analgesic_agents_047',
    question: 'Which of the following is an opioid antagonist?',
    options: [
      'Meperidine',
      'Tramadol',
      'Naloxone',
      'Fentanyl',
      'Alfentanil'
    ],
    correctAnswerIndex: 2,
    explanation: 'Naloxone is a pure opioid antagonist and the drug of choice for opioid overdose; its short duration often necessitates repeated doses.',
    category: 'Analgesic Agents',
    difficulty: 2
  ),
  Question(
    id: 'analgesic_agents_048',
    question: 'Which opioid receptor is most responsible for analgesia?',
    options: [
      'Delta (δ)',
      'Kappa (κ)',
      'Mu (μ)',
      'Sigma (σ)',
      'NMDA'
    ],
    correctAnswerIndex: 2,
    explanation: 'Mu receptors mediate analgesia at both spinal and supraspinal levels, as well as respiratory depression and dependence.',
    category: 'Analgesic Agents',
    difficulty: 2
  ),
  Question(
    id: 'analgesic_agents_049',
    question: 'Which opioid has the fastest onset of action?',
    options: [
      'Morphine',
      'Fentanyl',
      'Sufentanil',
      'Remifentanil',
      'Alfentanil'
    ],
    correctAnswerIndex: 3,
    explanation: 'Remifentanil is ultra-short-acting with rapid onset, metabolized by esterases, and ideal for continuous infusion.',
    category: 'Analgesic Agents',
    difficulty: 2
  ),
  Question(
    id: 'analgesic_agents_050',
    question: 'Which of the following is not a typical effect of opioids?',
    options: [
      'Respiratory depression',
      'Delayed gastric emptying',
      'Mydriasis',
      'Bradycardia',
      'Pruritus'
    ],
    correctAnswerIndex: 2,
    explanation: 'Opioids cause miosis (pinpoint pupils). Mydriasis is typical of sympathomimetic drugs.',
    category: 'Analgesic Agents',
    difficulty: 2
  ),
  Question(
    id: 'analgesic_agents_051',
    question: 'Which of the following opioids is most associated with histamine release?',
    options: [
      'Morphine',
      'Fentanyl',
      'Sufentanil',
      'Remifentanil',
      'Alfentanil'
    ],
    correctAnswerIndex: 0,
    explanation: 'Morphine triggers histamine release → may cause hypotension and bronchospasm.',
    category: 'Analgesic Agents',
    difficulty: 2
  ),
  Question(
    id: 'analgesic_agents_052',
    question: 'Which statement about fentanyl is correct?',
    options: [
      'It causes histamine release',
      'It is a long-acting opioid',
      'It does not depress respiration',
      'It is cardiostable',
      'It has high oral bioavailability'
    ],
    correctAnswerIndex: 3,
    explanation: 'Fentanyl has minimal cardiovascular effects → cardiostable, hence widely used in anesthesia.',
    category: 'Analgesic Agents',
    difficulty: 2
  ),
  Question(
    id: 'analgesic_agents_053',
    question: 'Which statement about remifentanil is incorrect?',
    options: [
      'It is metabolized by pseudocholinesterase',
      'Its effect ends rapidly',
      'Dose adjustment is required in hepatic failure',
      'It is administered by continuous infusion',
      'It has abuse potential'
    ],
    correctAnswerIndex: 2,
    explanation: 'Remifentanil is broken down by plasma esterases → dosing is not affected by hepatic or renal failure.',
    category: 'Analgesic Agents',
    difficulty: 2
  ),
  Question(
    id: 'analgesic_agents_054',
    question: 'Which structure is responsible for opioid-induced nausea and vomiting?',
    options: [
      'Carotid sinus',
      'Chemoreceptor trigger zone (CTZ)',
      'Vestibular nucleus',
      'Respiratory center',
      'Cerebral cortex'
    ],
    correctAnswerIndex: 1,
    explanation: 'When opioids stimulate the CTZ (dopaminergic), nausea and vomiting occur; the CTZ is in the medulla.',
    category: 'Analgesic Agents',
    difficulty: 2
  ),
  Question(
    id: 'analgesic_agents_055',
    question: 'By what mechanism do opioids cause respiratory depression?',
    options: [
      'Bronchoconstriction',
      'Increased chemoreceptor sensitivity',
      'Decreased medullary CO₂ sensitivity',
      'Vagal stimulation of the CNS',
      'Peripheral receptor stimulation'
    ],
    correctAnswerIndex: 2,
    explanation: 'Opioids reduce CO₂ sensitivity in the medullary respiratory center → respiratory depression.',
    category: 'Analgesic Agents',
    difficulty: 2
  ),
  Question(
    id: 'analgesic_agents_056',
    question: 'Which effect does not develop tolerance with opioids?',
    options: [
      'Analgesia',
      'Decreased GI motility',
      'Respiratory depression',
      'Sedation',
      'Pruritus'
    ],
    correctAnswerIndex: 1,
    explanation: 'GI effects (e.g., constipation) are among the few opioid effects that do not develop tolerance over time.',
    category: 'Analgesic Agents',
    difficulty: 2
  ),
  Question(
    id: 'analgesic_agents_057',
    question: 'Which agent is classified as a partial opioid agonist?',
    options: [
      'Morphine',
      'Sufentanil',
      'Naloxone',
      'Buprenorphine',
      'Remifentanil'
    ],
    correctAnswerIndex: 3,
    explanation: 'Buprenorphine is a partial μ-agonist and a κ-antagonist → used in addiction treatment.',
    category: 'Analgesic Agents',
    difficulty: 2
  ),
  Question(
    id: 'analgesic_agents_058',
    question: 'What distinguishes tramadol from classical opioids?',
    options: [
      'It causes histamine release',
      'It binds only to κ receptors',
      'It has monoamine reuptake inhibitor activity',
      'It has a long duration of action',
      'It does not provide central analgesia'
    ],
    correctAnswerIndex: 2,
    explanation: 'Besides weak μ-agonism, tramadol inhibits serotonin and norepinephrine reuptake.',
    category: 'Analgesic Agents',
    difficulty: 2
  ),
  Question(
    id: 'analgesic_agents_059',
    question: 'Which finding may develop after administration of high-dose opioids?',
    options: [
      'Miosis',
      'Hyperventilation',
      'Mydriasis',
      'Tachycardia',
      'Hypertension'
    ],
    correctAnswerIndex: 0,
    explanation: 'Classic opioid toxicity triad: miosis + respiratory depression + altered mental status.',
    category: 'Analgesic Agents',
    difficulty: 2
  ),
  Question(
    id: 'analgesic_agents_060',
    question: 'Which opioid has the shortest duration of action?',
    options: [
      'Fentanyl',
      'Sufentanil',
      'Remifentanil',
      'Alfentanil',
      'Morphine'
    ],
    correctAnswerIndex: 2,
    explanation: 'Remifentanil is hydrolyzed by esterases → ultra-short acting; effect ends within minutes.',
    category: 'Analgesic Agents',
    difficulty: 2
  ),
  Question(
    id: 'analgesic_agents_061',
    question: 'Which of the following is a sign of opioid withdrawal?',
    options: [
      'Miosis',
      'Bradycardia',
      'Vomiting',
      'Hypothermia',
      'Respiratory depression'
    ],
    correctAnswerIndex: 2,
    explanation: 'Withdrawal features include mydriasis, tachycardia, vomiting, diarrhea, anxiety, etc.',
    category: 'Analgesic Agents',
    difficulty: 2
  ),
  Question(
    id: 'analgesic_agents_062',
    question: 'What is the most likely cause of chest wall rigidity after fentanyl administration?',
    options: [
      'Bronchospasm',
      'Histamine release',
      'Dopamine activation',
      'Central increase in muscle tone',
      'Decreased acetylcholine'
    ],
    correctAnswerIndex: 3,
    explanation: 'High-dose fentanyl increases central muscle tone → rigidity of chest muscles impeding ventilation.',
    category: 'Analgesic Agents',
    difficulty: 2
  ),
  Question(
    id: 'analgesic_agents_063',
    question: 'Which statement about opioid use during labor is correct?',
    options: [
      'Safe at any dose',
      'The baby\'s respiration is unaffected',
      'Effects can be reversed with naloxone',
      'Increases uterine contractions',
      'Contraindicated in preterm infants'
    ],
    correctAnswerIndex: 2,
    explanation: 'Neonatal respiratory depression may occur after maternal opioid use → reversible with naloxone.',
    category: 'Analgesic Agents',
    difficulty: 2
  ),
  Question(
    id: 'analgesic_agents_064',
    question: 'Which is a gastrointestinal effect of opioids?',
    options: [
      'They cause diarrhea',
      'They accelerate gastric emptying',
      'They increase sphincter tone',
      'They increase peristalsis',
      'They are ulcerogenic'
    ],
    correctAnswerIndex: 2,
    explanation: 'Opioids increase sphincter tone and reduce GI motility → constipation.',
    category: 'Analgesic Agents',
    difficulty: 2
  ),
  Question(
    id: 'analgesic_agents_065',
    question: 'Which effect does not develop tolerance with opioids?',
    options: [
      'Analgesia',
      'Sedation',
      'Respiratory depression',
      'Decreased GI motility',
      'Euphoria'
    ],
    correctAnswerIndex: 3,
    explanation: 'Tolerance does not develop to GI effects → constipation persists with chronic use.',
    category: 'Analgesic Agents',
    difficulty: 2
  ),
  Question(
    id: 'analgesic_agents_066',
    question: 'What is the average duration of action of naloxone?',
    options: [
      '5–10 seconds',
      '5–15 minutes',
      '30–45 minutes',
      '2–4 hours',
      '6–8 hours'
    ],
    correctAnswerIndex: 2,
    explanation: 'Naloxone acts briefly (30–45 min) → repeated doses may be needed for long-acting opioid toxicity.',
    category: 'Analgesic Agents',
    difficulty: 2
  ),
  Question(
    id: 'analgesic_agents_067',
    question: 'Which opioid agent is the most potent?',
    options: [
      'Morphine',
      'Fentanyl',
      'Sufentanil',
      'Alfentanil',
      'Tramadol'
    ],
    correctAnswerIndex: 2,
    explanation: 'Sufentanil is ~1000× more potent than morphine → a high-potency, short-acting opioid.',
    category: 'Analgesic Agents',
    difficulty: 2
  ),
  Question(
    id: 'analgesic_agents_068',
    question: 'Which is a long-term complication of opioid use?',
    options: [
      'Hypertension',
      'Development of tolerance',
      'Bradykinesia',
      'Renal failure',
      'Hepatic fibrosis'
    ],
    correctAnswerIndex: 1,
    explanation: 'Chronic opioid use leads to tolerance to many effects (especially analgesia, euphoria, sedation).',
    category: 'Analgesic Agents',
    difficulty: 2
  ),
  Question(
    id: 'analgesic_agents_069',
    question: 'Why must morphine be used cautiously in renal insufficiency?',
    options: [
      'Reduced protein binding',
      'Increased CYP450 activity',
      'Accumulation of active metabolites',
      'Its lipophilicity',
      'Formation of an antagonist byproduct'
    ],
    correctAnswerIndex: 2,
    explanation: 'Morphine\'s active metabolites (M6G) are renally excreted; accumulation increases respiratory depression risk.',
    category: 'Analgesic Agents',
    difficulty: 2
  ),
  Question(
    id: 'analgesic_agents_070',
    question: 'After use of which opioid is the risk of chest wall rigidity highest?',
    options: [
      'Morphine',
      'Fentanyl',
      'Tramadol',
      'Meperidine',
      'Methadone'
    ],
    correctAnswerIndex: 1,
    explanation: 'High-dose fentanyl can cause chest wall rigidity → complicates ventilation.',
    category: 'Analgesic Agents',
    difficulty: 2
  ),
  Question(
    id: 'analgesic_agents_071',
    question: 'What is the most likely outcome of naloxone administration?',
    options: [
      'Bronchodilation',
      'Transient increase in opioid effects',
      'Acute withdrawal syndrome',
      'Hypothermia',
      'Lasting analgesia'
    ],
    correctAnswerIndex: 2,
    explanation: 'In dependent patients, naloxone can precipitate abrupt withdrawal → agitation, vomiting, tachycardia, etc.',
    category: 'Analgesic Agents',
    difficulty: 2
  ),
  Question(
    id: 'analgesic_agents_072',
    question: 'Which system is least affected by opioids?',
    options: [
      'Respiratory system',
      'Gastrointestinal system',
      'Cardiovascular system',
      'Central nervous system',
      'Urogenital system'
    ],
    correctAnswerIndex: 2,
    explanation: 'Opioids generally have minimal cardiovascular effects; morphine may cause mild hypotension via histamine.',
    category: 'Analgesic Agents',
    difficulty: 2
  ),
  Question(
    id: 'analgesic_agents_073',
    question: 'Which opioid used during labor may cause the most prolonged neonatal respiratory depression?',
    options: [
      'Morphine',
      'Meperidine',
      'Remifentanil',
      'Tramadol',
      'Fentanyl'
    ],
    correctAnswerIndex: 1,
    explanation: 'Meperidine\'s metabolite (normeperidine) has a long half-life → risk of delayed neonatal respiratory depression.',
    category: 'Analgesic Agents',
    difficulty: 2
  ),
  Question(
    id: 'analgesic_agents_074',
    question: 'Which statement about opioid receptors is correct?',
    options: [
      'They are all ion channels',
      'They interact with NMDA receptors',
      'They are all G-protein-coupled',
      'They are found only in peripheral tissues',
      'They are ligand-gated calcium channels'
    ],
    correctAnswerIndex: 2,
    explanation: 'μ, κ, and δ opioid receptors are GPCRs → act by decreasing intracellular cAMP.',
    category: 'Analgesic Agents',
    difficulty: 2
  ),
  Question(
    id: 'analgesic_agents_075',
    question: 'Which of the following is a dose-dependent opioid effect?',
    options: [
      'Hypoglycemia',
      'Bradycardia',
      'Thrombocytopenia',
      'Hyperventilation',
      'Anemia'
    ],
    correctAnswerIndex: 1,
    explanation: 'Opioids increase vagal tone in a dose-dependent manner, producing bradycardia at higher doses.',
    category: 'Analgesic Agents',
    difficulty: 2
  ),
  Question(
    id: 'analgesic_agents_076',
    question: 'Which opioid has the highest lipophilicity?',
    options: [
      'Morphine',
      'Meperidine',
      'Alfentanil',
      'Fentanyl',
      'Tramadol'
    ],
    correctAnswerIndex: 3,
    explanation: 'Fentanyl (and sufentanil) are highly lipophilic → rapid onset and short duration. Morphine is the least lipophilic.',
    category: 'Analgesic Agents',
    difficulty: 2
  ),
  Question(
    id: 'analgesic_agents_077',
    question: 'Which receptor mediates spinal analgesia by opioids?',
    options: [
      'NMDA',
      'Mu (μ)',
      'Beta-adrenergic',
      'D₁ receptor',
      'Muscarinic'
    ],
    correctAnswerIndex: 1,
    explanation: 'μ-receptors are key for analgesia at both spinal and supraspinal levels.',
    category: 'Analgesic Agents',
    difficulty: 2
  ),
  Question(
    id: 'analgesic_agents_078',
    question: 'Which opioid is atypical and may cause delirium, tremor, and seizures?',
    options: [
      'Meperidine',
      'Morphine',
      'Fentanyl',
      'Sufentanil',
      'Remifentanil'
    ],
    correctAnswerIndex: 0,
    explanation: 'Meperidine\'s metabolite normeperidine is neurotoxic → neurological adverse effects, especially in elderly or renally impaired.',
    category: 'Analgesic Agents',
    difficulty: 2
  ),
  Question(
    id: 'analgesic_agents_079',
    question: 'Which opioid has strong euphoria and high dependence potential?',
    options: [
      'Sufentanil',
      'Morphine',
      'Nalbuphine',
      'Naloxone',
      'Buprenorphine'
    ],
    correctAnswerIndex: 1,
    explanation: 'Morphine is a full μ-agonist; μ-mediated euphoria increases dependence potential.',
    category: 'Analgesic Agents',
    difficulty: 2
  ),
  Question(
    id: 'analgesic_agents_080',
    question: 'Which opioid antagonist is long-acting and used in addiction treatment?',
    options: [
      'Naloxone',
      'Tramadol',
      'Naltrexone',
      'Buprenorphine',
      'Sufentanil'
    ],
    correctAnswerIndex: 2,
    explanation: 'Naltrexone is a long-acting oral opioid antagonist → more sustained effect than naloxone.',
    category: 'Analgesic Agents',
    difficulty: 2
  ),
  Question(
    id: 'analgesic_agents_081',
    question: 'What can cause biliary colic after opioid use?',
    options: [
      'Sphincter of Oddi spasm',
      'Histamine release',
      'Reduced HCl secretion',
      'Increased hepatic blood flow',
      'Decreased portal venous pressure'
    ],
    correctAnswerIndex: 0,
    explanation: 'Opioids contract the sphincter of Oddi, impeding bile flow → biliary colic.',
    category: 'Analgesic Agents',
    difficulty: 2
  ),
  Question(
    id: 'analgesic_agents_082',
    question: 'Which of the following opioid derivatives is not synthetic?',
    options: [
      'Morphine',
      'Fentanyl',
      'Tramadol',
      'Meperidine',
      'Alfentanil'
    ],
    correctAnswerIndex: 0,
    explanation: 'Morphine is a natural opioid derived from the opium poppy; the others are synthetic or semi-synthetic.',
    category: 'Analgesic Agents',
    difficulty: 2
  ),
  Question(
    id: 'analgesic_agents_083',
    question: 'Which agent acts purely as an opioid antagonist without analgesic effect?',
    options: [
      'Naltrexone',
      'Naloxone',
      'Tramadol',
      'Buprenorphine',
      'Nalbuphine'
    ],
    correctAnswerIndex: 1,
    explanation: 'Naloxone is a pure antagonist at all opioid receptors and has no analgesic activity.',
    category: 'Analgesic Agents',
    difficulty: 2
  ),
  Question(
    id: 'analgesic_agents_084',
    question: 'Which is not a classic finding of opioid intoxication?',
    options: [
      'Altered mental status',
      'Respiratory depression',
      'Miosis',
      'Hyperthermia',
      'Bradycardia'
    ],
    correctAnswerIndex: 3,
    explanation: 'Classic triad: altered mental status, miosis, respiratory depression. Hypothermia may occur, not hyperthermia.',
    category: 'Analgesic Agents',
    difficulty: 2
  ),
  Question(
    id: 'analgesic_agents_085',
    question: 'Which is not part of the central analgesic mechanism of opioids?',
    options: [
      'Activation of the periaqueductal gray (PAG)',
      'Activation of descending inhibitory pathways',
      'Serotonin release in the medulla',
      'Increase in endogenous opioids',
      'Glutamate activation'
    ],
    correctAnswerIndex: 4,
    explanation: 'Glutamate facilitates pain transmission; opioids inhibit this. Thus glutamate activation contradicts analgesia.',
    category: 'Analgesic Agents',
    difficulty: 2
  ),
  Question(
    id: 'analgesic_agents_086',
    question: 'Which opioid derivative also has SSRI-like effects and may cause serotonin syndrome?',
    options: [
      'Sufentanil',
      'Meperidine',
      'Alfentanil',
      'Buprenorphine',
      'Morphine'
    ],
    correctAnswerIndex: 1,
    explanation: 'Meperidine inhibits serotonin reuptake → concomitant use with MAO inhibitors increases serotonin syndrome risk.',
    category: 'Analgesic Agents',
    difficulty: 2
  ),
  Question(
    id: 'analgesic_agents_087',
    question: 'Which is a typical renal effect of opioids?',
    options: [
      'Polyuria',
      'Natriuresis',
      'Antidiuresis',
      'Hypokalemia',
      'Glucosuria'
    ],
    correctAnswerIndex: 2,
    explanation: 'Opioids increase ADH release → antidiuresis → urine volume may decrease.',
    category: 'Analgesic Agents',
    difficulty: 2
  ),
  Question(
    id: 'analgesic_agents_088',
    question: 'During labor, opioids most commonly cause which condition in the newborn?',
    options: [
      'Hypoglycemia',
      'Respiratory depression',
      'Sepsis-like picture',
      'Cerebral palsy',
      'Hypothermia'
    ],
    correctAnswerIndex: 1,
    explanation: 'Opioids cross the placenta → neonatal respiratory depression → treatable with naloxone.',
    category: 'Analgesic Agents',
    difficulty: 2
  ),
  Question(
    id: 'analgesic_agents_089',
    question: 'At the spinal level, opioid-induced pruritus is associated with which receptor?',
    options: [
      'NMDA',
      'Mu (μ)',
      'Delta (δ)',
      'Kappa (κ)',
      'GABA'
    ],
    correctAnswerIndex: 1,
    explanation: 'Spinal μ-receptor activation contributes to pruritus; this can occur independently of histamine.',
    category: 'Analgesic Agents',
    difficulty: 2
  ),
  Question(
    id: 'analgesic_agents_090',
    question: 'Which of the following opioids can be used for preemptive analgesia?',
    options: [
      'Morphine',
      'Fentanyl',
      'Remifentanil',
      'Sufentanil',
      'All of the above'
    ],
    correctAnswerIndex: 4,
    explanation: 'Administering opioids before surgical stimulus provides preemptive analgesia → raises pain threshold.',
    category: 'Analgesic Agents',
    difficulty: 2
  ),
  Question(
    id: 'analgesic_agents_091',
    question: 'Which of the following is not a cause of mental status change with opioid use?',
    options: [
      'Overdose',
      'Neurotoxic metabolites',
      'Hepatic failure',
      'NMDA activation',
      'Opioid withdrawal'
    ],
    correctAnswerIndex: 3,
    explanation: 'Opioids inhibit NMDA receptors. Mental status changes are usually dose-related or due to metabolite accumulation.',
    category: 'Analgesic Agents',
    difficulty: 2
  ),
  Question(
    id: 'analgesic_agents_092',
    question: 'Which route is more effective for prolonging the analgesic effect of opioids?',
    options: [
      'IM',
      'IV bolus',
      'Epidural',
      'Oral',
      'SC'
    ],
    correctAnswerIndex: 2,
    explanation: 'Epidural or spinal administration targets spinal receptors directly → longer and more effective analgesia.',
    category: 'Analgesic Agents',
    difficulty: 2
  ),
  Question(
    id: 'analgesic_agents_093',
    question: 'What is the primary reason opioids are addictive?',
    options: [
      'Respiratory depression',
      'Increased dopamine release',
      'Increased muscle tone',
      'Delayed gastric emptying',
      'Parasympathetic blockade'
    ],
    correctAnswerIndex: 1,
    explanation: 'Opioids increase dopamine release in the mesolimbic reward system → drives addictive potential.',
    category: 'Analgesic Agents',
    difficulty: 2
  ),
  Question(
    id: 'analgesic_agents_094',
    question: 'Which is an agonist–antagonist opioid analgesic?',
    options: [
      'Morphine',
      'Fentanyl',
      'Nalbuphine',
      'Tramadol',
      'Methadone'
    ],
    correctAnswerIndex: 2,
    explanation: 'Nalbuphine is a κ-agonist and μ-antagonist. Morphine, fentanyl, methadone are full μ-agonists; tramadol is a weak μ-agonist + SNRI.',
    category: 'Analgesic Agents',
    difficulty: 2
  ),
  Question(
    id: 'analgesic_agents_095',
    question: 'Which is an advantage of fentanyl over morphine?',
    options: [
      'Longer duration',
      'Less histamine release',
      'More sedation',
      'High oral bioavailability',
      'Less respiratory depression'
    ],
    correctAnswerIndex: 1,
    explanation: 'Fentanyl is more potent, more lipophilic, and causes less histamine release (less hypotension). Morphine releases more histamine and lasts longer.',
    category: 'Analgesic Agents',
    difficulty: 2
  ),
  Question(
    id: 'analgesic_agents_096',
    question: 'Which is not a property of methadone?',
    options: [
      'Long elimination half-life',
      'NMDA receptor antagonism',
      'Potent serotonin reuptake inhibition',
      'Used for opioid withdrawal treatment',
      'High oral efficacy'
    ],
    correctAnswerIndex: 2,
    explanation: 'Methadone is a long-acting μ-agonist with NMDA antagonism, used in withdrawal therapy. Tramadol/tapentadol have monoamine reuptake effects.',
    category: 'Analgesic Agents',
    difficulty: 2
  ),
  Question(
    id: 'analgesic_agents_097',
    question: 'Which is an adverse effect of tramadol?',
    options: [
      'Hypertension',
      'Raising seizure threshold',
      'Bradycardia',
      'Does not cause constipation',
      'Risk of serotonin syndrome'
    ],
    correctAnswerIndex: 4,
    explanation: 'Tramadol inhibits serotonin reuptake → risk of serotonin syndrome; lowers seizure threshold, causes constipation, may cause hypotension.',
    category: 'Analgesic Agents',
    difficulty: 2
  ),
  Question(
    id: 'analgesic_agents_098',
    question: 'What is the analgesic mechanism of NSAIDs?',
    options: [
      'Opioid receptor agonism',
      'COX-2 inhibition',
      'GABA-A receptor activation',
      'NMDA receptor blockade',
      'Acetylcholinesterase inhibition'
    ],
    correctAnswerIndex: 1,
    explanation: 'NSAIDs reduce prostaglandin synthesis via COX-2 inhibition → analgesia.',
    category: 'Analgesic Agents',
    difficulty: 2
  ),
  Question(
    id: 'analgesic_agents_099',
    question: 'Which is a COX-2–selective NSAID?',
    options: [
      'Ibuprofen',
      'Naproxen',
      'Diclofenac',
      'Celecoxib',
      'Aspirin'
    ],
    correctAnswerIndex: 3,
    explanation: 'COX-2 selective: celecoxib, etoricoxib. Others listed are nonselective COX inhibitors.',
    category: 'Analgesic Agents',
    difficulty: 2
  ),
  Question(
    id: 'analgesic_agents_100',
    question: 'What treats acetaminophen (paracetamol) toxicity?',
    options: [
      'Flumazenil',
      'Naloxone',
      'N-acetylcysteine',
      'Fomepizole',
      'Vitamin K'
    ],
    correctAnswerIndex: 2,
    explanation: 'NAC replenishes glutathione and aids detoxification; APAP toxicity causes hepatic necrosis.',
    category: 'Analgesic Agents',
    difficulty: 2
  ),
  Question(
    id: 'analgesic_agents_101',
    question: 'Which is a side effect caused by meperidine\'s metabolite?',
    options: [
      'Hepatotoxicity',
      'Seizures',
      'Cardiac arrhythmia',
      'Acute kidney injury',
      'Hypertension'
    ],
    correctAnswerIndex: 1,
    explanation: 'Meperidine → normeperidine (neurotoxic) → lowers seizure threshold, especially with chronic use.',
    category: 'Analgesic Agents',
    difficulty: 2
  ),
  Question(
    id: 'analgesic_agents_102',
    question: 'What must be considered during opioid rotation?',
    options: [
      'Exact equianalgesic dose calculation',
      'Choosing a new opioid with slow onset',
      'Ignoring cross-tolerance',
      'Ignoring receptor affinities',
      'Increasing dose when switching to parenteral'
    ],
    correctAnswerIndex: 0,
    explanation: 'Calculate equianalgesic doses; due to incomplete cross-tolerance, reduce the new opioid dose by ~25–50%.',
    category: 'Analgesic Agents',
    difficulty: 2
  ),
  Question(
    id: 'analgesic_agents_103',
    question: 'Which statement about ketorolac is incorrect?',
    options: [
      'Use for a maximum of 5 days',
      'Can be used parenterally for postoperative pain',
      'Inhibits COX-1',
      'Safe in pregnancy',
      'May cause GI ulceration'
    ],
    correctAnswerIndex: 3,
    explanation: 'Ketorolac is contraindicated in late pregnancy (ductus arteriosus closure). COX-1 inhibition raises GI bleed risk.',
    category: 'Analgesic Agents',
    difficulty: 2
  ),
  Question(
    id: 'analgesic_agents_104',
    question: 'Mechanism of gabapentin in neuropathic pain?',
    options: [
      'NMDA receptor blockade',
      'Inhibition of voltage-gated calcium channels',
      'Dopamine reuptake inhibition',
      'Muscarinic receptor agonism',
      'GABA-B receptor activation'
    ],
    correctAnswerIndex: 1,
    explanation: 'Gabapentin/pregabalin bind the α2δ subunit → reduce Ca²⁺ influx.',
    category: 'Analgesic Agents',
    difficulty: 2
  ),
  Question(
    id: 'analgesic_agents_105',
    question: 'Which co-administered drug reduces the risk of opioid-induced respiratory depression?',
    options: [
      'Midazolam',
      'Naloxone',
      'Flumazenil',
      'Ketamine',
      'Neostigmine'
    ],
    correctAnswerIndex: 1,
    explanation: 'Naloxone is a competitive μ-antagonist that reverses opioid-induced respiratory depression. (Ketamine doesn\'t depress respiration but doesn\'t reverse opioids.)',
    category: 'Analgesic Agents',
    difficulty: 2
  ),
  Question(
    id: 'analgesic_agents_106',
    question: 'Which is true of transdermal fentanyl?',
    options: [
      'First-line for acute pain',
      'Onset in 5 minutes',
      'Heat increases drug release',
      'Needs dose adjustment in renal failure',
      'Replaced every 48 hours'
    ],
    correctAnswerIndex: 2,
    explanation: 'Systemic absorption increases with heat (hot baths, fever). For chronic pain; onset 12–24 h; change every 72 h.',
    category: 'Analgesic Agents',
    difficulty: 2
  ),
  Question(
    id: 'analgesic_agents_107',
    question: 'Which lab finding is seen in acetaminophen toxicity?',
    options: [
      'Hypoglycemia',
      'AST/ALT > 1000 IU/L',
      'Hypocalcemia',
      'Leukopenia',
      'Hypernatremia'
    ],
    correctAnswerIndex: 1,
    explanation: 'APAP toxicity → hepatic necrosis with markedly elevated transaminases; NAC is the antidote.',
    category: 'Analgesic Agents',
    difficulty: 2
  ),
  Question(
    id: 'analgesic_agents_108',
    question: 'Which is a tramadol metabolite that binds opioid receptors?',
    options: [
      'Normeperidine',
      'O-desmethyltramadol',
      '6-Monoacetylmorphine',
      'Hydromorphone',
      'Norfentanyl'
    ],
    correctAnswerIndex: 1,
    explanation: 'Formed via CYP2D6; μ-agonist activity. Normeperidine is meperidine\'s neurotoxic metabolite.',
    category: 'Analgesic Agents',
    difficulty: 2
  ),
  Question(
    id: 'analgesic_agents_109',
    question: 'Which is a renal effect of NSAIDs?',
    options: [
      'Increased renin secretion',
      'Afferent arteriolar dilation',
      'Reduced prostaglandin E2 synthesis',
      'Increased sodium excretion',
      'Diuresis'
    ],
    correctAnswerIndex: 2,
    explanation: 'Inhibiting vasodilatory PGs (PGE2, PGI2) → afferent vasoconstriction; risks: AKI, hyperkalemia, fluid retention.',
    category: 'Analgesic Agents',
    difficulty: 2
  ),
  Question(
    id: 'analgesic_agents_110',
    question: 'Which is true of metamizole (dipyrone)?',
    options: [
      'Selective COX-2 inhibition',
      'Carries a risk of agranulocytosis',
      'Safe in pregnancy',
      'Does not trigger asthma',
      'Cardioprotective'
    ],
    correctAnswerIndex: 1,
    explanation: 'Metamizole is restricted in many countries due to agranulocytosis/allergy risk; nonselective COX inhibitor; may cause bronchospasm.',
    category: 'Analgesic Agents',
    difficulty: 2
  ),
  Question(
    id: 'analgesic_agents_111',
    question: 'Which is a side effect of epidural opioid administration?',
    options: [
      'Hypertension',
      'Delayed respiratory depression',
      'Bradycardia',
      'Hyperthermia',
      'Muscle rigidity'
    ],
    correctAnswerIndex: 1,
    explanation: 'Epidural morphine may cause respiratory depression 6–12 h later due to slow CSF spread.',
    category: 'Analgesic Agents',
    difficulty: 2
  ),
  Question(
    id: 'analgesic_agents_112',
    question: 'Which is codeine\'s active metabolite?',
    options: [
      'Morphine',
      'Hydrocodone',
      'Oxycodone',
      'Fentanyl',
      'Buprenorphine'
    ],
    correctAnswerIndex: 0,
    explanation: 'Codeine → morphine via CYP2D6 (PMs: poor effect; UMs: toxicity risk).',
    category: 'Analgesic Agents',
    difficulty: 2
  ),
  Question(
    id: 'analgesic_agents_113',
    question: 'Which is a characteristic of buprenorphine?',
    options: [
      'Full μ-agonist',
      'Respiratory depression plateaus at high doses',
      '~90% oral bioavailability',
      'Fully antagonized by naloxone',
      'Exacerbates opioid withdrawal symptoms'
    ],
    correctAnswerIndex: 1,
    explanation: 'Buprenorphine is a partial μ-agonist/κ-antagonist; sublingual use; limited reversibility with naloxone.',
    category: 'Analgesic Agents',
    difficulty: 2
  ),
  Question(
    id: 'analgesic_agents_114',
    question: 'Mechanism of duloxetine?',
    options: [
      'Dopamine reuptake inhibition',
      'Norepinephrine and serotonin reuptake inhibition',
      'NMDA receptor blockade',
      'GABA-A receptor activation',
      'Muscarinic antagonism'
    ],
    correctAnswerIndex: 1,
    explanation: 'Duloxetine is an SNRI (used for neuropathic pain and depression).',
    category: 'Analgesic Agents',
    difficulty: 2
  ),
  Question(
    id: 'analgesic_agents_115',
    question: 'First-line treatment for local anesthetic systemic toxicity (LAST)?',
    options: [
      'Lidocaine',
      'Propranolol',
      '20% lipid emulsion (intralipid)',
      'Calcium gluconate',
      'Diazepam'
    ],
    correctAnswerIndex: 2,
    explanation: 'Lipid therapy "scavenges" lipophilic local anesthetics (e.g., bupivacaine).',
    category: 'Analgesic Agents',
    difficulty: 2
  ),
  Question(
    id: 'analgesic_agents_116',
    question: 'Which is associated with opioid-induced hyperalgesia?',
    options: [
      'Delta receptor activation',
      'NMDA receptor activation',
      'GABA-A inhibition',
      'Alpha-2 receptor downregulation',
      'Muscarinic blockade'
    ],
    correctAnswerIndex: 1,
    explanation: 'Chronic/high-dose opioid exposure activates NMDA pathways → hyperalgesia; ketamine (NMDA antagonist) can help.',
    category: 'Analgesic Agents',
    difficulty: 2
  ),
  Question(
    id: 'analgesic_agents_117',
    question: 'Which is not a renal adverse effect of NSAIDs?',
    options: [
      'Acute kidney injury',
      'Hyperkalemia',
      'Sodium retention',
      'Metabolic alkalosis',
      'Papillary necrosis'
    ],
    correctAnswerIndex: 3,
    explanation: 'NSAIDs can cause AKI, hyperkalemia, sodium retention, and even metabolic acidosis (not alkalosis).',
    category: 'Analgesic Agents',
    difficulty: 2
  ),
  Question(
    id: 'analgesic_agents_118',
    question: 'Which lab finding appears in acetaminophen toxicity?',
    options: [
      'AST > ALT elevation',
      'Hypoglycemia',
      'Hypoprothrombinemia',
      'Low LDH',
      'Low ammonia'
    ],
    correctAnswerIndex: 0,
    explanation: 'Both AST and ALT rise; often AST predominates. INR prolongation and hypoglycemia may accompany.',
    category: 'Analgesic Agents',
    difficulty: 2
  ),
  Question(
    id: 'analgesic_agents_119',
    question: 'Which co-medication most increases sedation when combined with opioids?',
    options: [
      'Metoclopramide',
      'Ondansetron',
      'Hydroxyzine',
      'Ranitidine',
      'Methylprednisolone'
    ],
    correctAnswerIndex: 2,
    explanation: 'Hydroxyzine (antihistamine) adds sedative effects; ondansetron and ranitidine do not.',
    category: 'Analgesic Agents',
    difficulty: 2
  ),
  Question(
    id: 'analgesic_agents_120',
    question: 'Which statement about ketorolac is not correct?',
    options: [
      'Can be given parenterally',
      'Not used longer than 5 days',
      'Effective for postoperative pain',
      'Increases platelet function',
      'Can cause GI ulceration'
    ],
    correctAnswerIndex: 3,
    explanation: 'Ketorolac inhibits COX-1 and impairs platelet function; limit to ≤5 days due to GI/renal risks.',
    category: 'Analgesic Agents',
    difficulty: 2
  ),
  Question(
    id: 'analgesic_agents_121',
    question: 'Which is an alternative analgesic for patients intolerant to opioids?',
    options: [
      'Methadone',
      'Lidocaine infusion',
      'Ketamine infusion',
      'Diazepam',
      'Atropine'
    ],
    correctAnswerIndex: 2,
    explanation: 'Ketamine provides analgesia via NMDA antagonism when opioids are not tolerated.',
    category: 'Analgesic Agents',
    difficulty: 2
  ),
  Question(
    id: 'analgesic_agents_122',
    question: 'Mechanism of tapentadol?',
    options: [
      'Pure μ-agonism',
      'μ-agonism + norepinephrine reuptake inhibition',
      'NMDA antagonism + serotonin reuptake inhibition',
      'GABA-A agonism',
      'Alpha-2 agonism'
    ],
    correctAnswerIndex: 1,
    explanation: 'Tapentadol combines μ-agonism with NET inhibition; tramadol combines μ-agonism with 5-HT/NE reuptake inhibition.',
    category: 'Analgesic Agents',
    difficulty: 2
  ),
];