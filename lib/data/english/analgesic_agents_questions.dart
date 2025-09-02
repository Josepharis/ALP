import '../../models/question.dart';

List<Question> analgesicAgentsQuestions = [
  Question(
    id: 'analgesic_agents_001',
    question: 'Which of the following is NOT a typical effect of opioids?',
    options: [
      'Respiratory depression',
      'Diarrhea',
      'Miosis',
      'Euphoria',
      'Analgesia'
    ],
    correctAnswerIndex: 1,
    explanation: 'Opioids decrease gastrointestinal motility, leading to constipation. Diarrhea is not typical of opioids.',
    category: 'Analgesic Agents',
    difficulty: 2
  ),
  Question(
    id: 'analgesic_agents_002',
    question: 'Which of the following is true regarding fentanyl?',
    options: [
      'It is a long-acting opioid',
      'It causes significant histamine release',
      'It is highly water-soluble',
      'Its lipophilic nature results in rapid onset of action',
      'It has high oral bioavailability'
    ],
    correctAnswerIndex: 3,
    explanation: 'Fentanyl\'s high lipophilicity allows rapid brain penetration and rapid onset of action.',
    category: 'Analgesic Agents',
    difficulty: 2
  ),
  Question(
    id: 'analgesic_agents_003',
    question: 'Which opioid has a long duration of action?',
    options: [
      'Fentanyl',
      'Remifentanil',
      'Sufentanil',
      'Morphine',
      'Alfentanil'
    ],
    correctAnswerIndex: 3,
    explanation: 'Morphine has a relatively long half-life, with slower onset but prolonged effect.',
    category: 'Analgesic Agents',
    difficulty: 2
  ),
  Question(
    id: 'analgesic_agents_004',
    question: 'What is the key pharmacokinetic feature of remifentanil?',
    options: [
      'Metabolized in the liver',
      'Hydrolyzed by cholinesterase',
      'Long-acting',
      'Weak analgesic effect',
      'Orally bioavailable'
    ],
    correctAnswerIndex: 1,
    explanation: 'Remifentanil is rapidly broken down by plasma and tissue esterases → ultra-short acting, used via continuous infusion.',
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
    explanation: 'Morphine\'s active metabolite, morphine-6-glucuronide (M6G), accumulates in renal failure, increasing the risk of respiratory depression.',
    category: 'Analgesic Agents',
    difficulty: 2
  ),
  Question(
    id: 'analgesic_agents_006',
    question: 'Which opioid effect shows the least tolerance development?',
    options: [
      'Analgesia',
      'Euphoria',
      'Respiratory depression',
      'Miosis',
      'Sedation'
    ],
    correctAnswerIndex: 3,
    explanation: 'Miosis is a hallmark of opioid use and tolerance does not develop to this effect.',
    category: 'Analgesic Agents',
    difficulty: 2
  ),
  Question(
    id: 'analgesic_agents_007',
    question: 'Which receptor mediates the primary analgesic effect of opioids?',
    options: [
      'Delta',
      'Kappa',
      'NMDA',
      'Mu',
      'Beta'
    ],
    correctAnswerIndex: 3,
    explanation: 'The mu (μ) receptor is responsible for most analgesic, sedative, euphoric, and respiratory depressive effects of opioids.',
    category: 'Analgesic Agents',
    difficulty: 2
  ),
  Question(
    id: 'analgesic_agents_008',
    question: 'Which of the following is correct regarding naloxone?',
    options: [
      'Partial opioid agonist',
      'Oral use only',
      'Opioid receptor antagonist',
      'Has analgesic effect',
      'Longer duration than morphine'
    ],
    correctAnswerIndex: 2,
    explanation: 'Naloxone is an opioid receptor antagonist (mu, delta, kappa) with rapid onset when given IV.',
    category: 'Analgesic Agents',
    difficulty: 2
  ),
  Question(
    id: 'analgesic_agents_009',
    question: 'Which neurotransmitters contribute to tramadol\'s analgesic effect?',
    options: [
      'Dopamine and GABA',
      'NMDA and glutamate',
      'Serotonin and norepinephrine',
      'Acetylcholine and GABA',
      'Histamine and serotonin'
    ],
    correctAnswerIndex: 2,
    explanation: 'Tramadol is a weak μ-opioid agonist and inhibits serotonin and norepinephrine reuptake, enhancing analgesia.',
    category: 'Analgesic Agents',
    difficulty: 2
  ),
  Question(
    id: 'analgesic_agents_010',
    question: 'Which opioid is most associated with chest wall rigidity?',
    options: [
      'Morphine',
      'Tramadol',
      'Fentanyl',
      'Meperidine',
      'Nalbuphine'
    ],
    correctAnswerIndex: 2,
    explanation: 'High-dose IV bolus fentanyl (and derivatives) can cause chest wall rigidity → impairs ventilation.',
    category: 'Analgesic Agents',
    difficulty: 2
  ),
  Question(
    id: 'analgesic_agents_011',
    question: 'Which opioid has no active metabolites?',
    options: [
      'Morphine',
      'Meperidine',
      'Tramadol',
      'Fentanyl',
      'Hydromorphone'
    ],
    correctAnswerIndex: 3,
    explanation: 'Fentanyl is metabolized into inactive metabolites, making it safer in renal impairment.',
    category: 'Analgesic Agents',
    difficulty: 2
  ),
  Question(
    id: 'analgesic_agents_012',
    question: 'Which mechanism explains opioid-induced nausea and vomiting?',
    options: [
      'NMDA antagonism',
      'Mu receptor stimulation',
      'Direct action on respiratory center',
      'Stimulation of the chemoreceptor trigger zone (CTZ)',
      'Histamine release'
    ],
    correctAnswerIndex: 3,
    explanation: 'Opioids stimulate the CTZ in the medulla, leading to nausea and vomiting.',
    category: 'Analgesic Agents',
    difficulty: 2
  ),
  Question(
    id: 'analgesic_agents_013',
    question: 'Which is the most serious toxicity associated with meperidine?',
    options: [
      'Hepatic failure',
      'Seizures',
      'Bronchospasm',
      'Bradycardia',
      'Urinary retention'
    ],
    correctAnswerIndex: 1,
    explanation: 'Meperidine\'s metabolite normeperidine accumulates → neurotoxicity and seizures, especially in renal failure.',
    category: 'Analgesic Agents',
    difficulty: 2
  ),
  Question(
    id: 'analgesic_agents_014',
    question: 'Tolerance to which opioid effect develops the fastest?',
    options: [
      'Analgesia',
      'Miosis',
      'Respiratory depression',
      'Constipation',
      'Nausea/vomiting'
    ],
    correctAnswerIndex: 0,
    explanation: 'Tolerance develops quickly to analgesic effects, but not to miosis or constipation.',
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
    explanation: 'Buprenorphine is a partial mu agonist → effective analgesic, but weaker than full agonists.',
    category: 'Analgesic Agents',
    difficulty: 2
  ),
  Question(
    id: 'analgesic_agents_016',
    question: 'What is the main mechanism underlying opioid tolerance?',
    options: [
      'Increased receptor number',
      'Increased receptor affinity',
      'Down-regulation and internalization',
      'Enhanced hepatic metabolism',
      'Receptor mutation'
    ],
    correctAnswerIndex: 2,
    explanation: 'Chronic opioid use leads to receptor down-regulation and internalization, contributing to tolerance.',
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
      'All of the above'
    ],
    correctAnswerIndex: 1,
    explanation: 'Tramadol (and meperidine) inhibit serotonin reuptake → risk of serotonin syndrome when combined with SSRIs.',
    category: 'Analgesic Agents',
    difficulty: 2
  ),
  Question(
    id: 'analgesic_agents_018',
    question: 'Which of the following is NOT a sign of opioid withdrawal?',
    options: [
      'Rhinorrhea',
      'Mydriasis',
      'Agitation',
      'Constipation',
      'Sweating'
    ],
    correctAnswerIndex: 3,
    explanation: 'Withdrawal causes diarrhea, not constipation. Mydriasis, rhinorrhea, and sweating are typical.',
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
    explanation: 'Naloxone\'s half-life is shorter than morphine\'s → repeat dosing may be needed to prevent rebound respiratory depression.',
    category: 'Analgesic Agents',
    difficulty: 2
  ),
  Question(
    id: 'analgesic_agents_020',
    question: 'Which of the following opioids is most associated with histamine release?',
    options: [
      'Morphine',
      'Fentanyl',
      'Sufentanil',
      'Remifentanil',
      'Alfentanil'
    ],
    correctAnswerIndex: 0,
    explanation: 'Morphine induces histamine release → can cause hypotension and bronchospasm.',
    category: 'Analgesic Agents',
    difficulty: 2
  ),
  Question(
    id: 'analgesic_agents_021',
    question: 'Which of the following is true regarding fentanyl?',
    options: [
      'Causes histamine release',
      'Is a long-acting opioid',
      'Does not cause respiratory depression',
      'Is a cardiostable agent',
      'Has high oral bioavailability'
    ],
    correctAnswerIndex: 3,
    explanation: 'Fentanyl minimally affects the cardiovascular system → it is cardiostable, making it widely used in anesthesia.',
    category: 'Analgesic Agents',
    difficulty: 2
  ),
  Question(
    id: 'analgesic_agents_022',
    question: 'Which of the following about remifentanil is FALSE?',
    options: [
      'Hydrolyzed by pseudocholinesterase',
      'Its effect terminates rapidly',
      'Requires dose adjustment in liver failure',
      'Administered as continuous infusion',
      'Has abuse potential'
    ],
    correctAnswerIndex: 2,
    explanation: 'Remifentanil is metabolized by plasma esterases → unaffected by liver or kidney failure.',
    category: 'Analgesic Agents',
    difficulty: 2
  ),
  Question(
    id: 'analgesic_agents_023',
    question: 'Which structure is responsible for opioid-induced nausea and vomiting?',
    options: [
      'Carotid sinus',
      'Chemoreceptor trigger zone (CTZ)',
      'Vestibular nucleus',
      'Respiratory center',
      'Cerebral cortex'
    ],
    correctAnswerIndex: 1,
    explanation: 'Opioids stimulate the CTZ in the medulla → nausea and vomiting occur.',
    category: 'Analgesic Agents',
    difficulty: 2
  ),
  Question(
    id: 'analgesic_agents_024',
    question: 'How do opioids cause respiratory depression?',
    options: [
      'Bronchoconstriction',
      'Increased chemoreceptor sensitivity',
      'Reduced CO₂ sensitivity in the medulla',
      'Vagal stimulation of the CNS',
      'Peripheral receptor stimulation'
    ],
    correctAnswerIndex: 2,
    explanation: 'Opioids reduce CO₂ sensitivity of the medullary respiratory center → respiratory depression.',
    category: 'Analgesic Agents',
    difficulty: 2
  ),
  Question(
    id: 'analgesic_agents_025',
    question: 'Which opioid effect does NOT develop tolerance?',
    options: [
      'Analgesia',
      'Decreased GI motility',
      'Respiratory depression',
      'Sedation',
      'Itching'
    ],
    correctAnswerIndex: 1,
    explanation: 'Gastrointestinal effects (constipation) persist without tolerance.',
    category: 'Analgesic Agents',
    difficulty: 2
  ),
  Question(
    id: 'analgesic_agents_026',
    question: 'Which agent is classified as a partial opioid agonist?',
    options: [
      'Morphine',
      'Sufentanil',
      'Naloxone',
      'Buprenorphine',
      'Remifentanil'
    ],
    correctAnswerIndex: 3,
    explanation: 'Buprenorphine is a partial μ-agonist and κ-antagonist → used in opioid dependence treatment.',
    category: 'Analgesic Agents',
    difficulty: 2
  ),
  Question(
    id: 'analgesic_agents_027',
    question: 'Which feature differentiates tramadol from classical opioids?',
    options: [
      'Causes histamine release',
      'Binds only to kappa receptors',
      'Monoamine reuptake inhibition',
      'Long duration of action',
      'No central analgesic effect'
    ],
    correctAnswerIndex: 2,
    explanation: 'Tramadol is a weak μ-agonist and also inhibits serotonin and norepinephrine reuptake.',
    category: 'Analgesic Agents',
    difficulty: 2
  ),
  Question(
    id: 'analgesic_agents_028',
    question: 'Which finding may develop after high-dose opioid administration?',
    options: [
      'Miosis',
      'Hyperventilation',
      'Mydriasis',
      'Tachycardia',
      'Hypertension'
    ],
    correctAnswerIndex: 0,
    explanation: 'Classic triad of opioid overdose: miosis + respiratory depression + altered consciousness.',
    category: 'Analgesic Agents',
    difficulty: 2
  ),
  Question(
    id: 'analgesic_agents_029',
    question: 'Which opioid has the shortest duration of action?',
    options: [
      'Fentanyl',
      'Sufentanil',
      'Remifentanil',
      'Alfentanil',
      'Morphine'
    ],
    correctAnswerIndex: 2,
    explanation: 'Remifentanil → rapidly metabolized by esterases → ultra-short acting.',
    category: 'Analgesic Agents',
    difficulty: 2
  ),
  Question(
    id: 'analgesic_agents_030',
    question: 'Which of the following is a withdrawal symptom of opioids?',
    options: [
      'Miosis',
      'Bradycardia',
      'Vomiting',
      'Hypothermia',
      'Respiratory depression'
    ],
    correctAnswerIndex: 2,
    explanation: 'Withdrawal symptoms include mydriasis, tachycardia, vomiting, diarrhea, anxiety.',
    category: 'Analgesic Agents',
    difficulty: 2
  ),
  Question(
    id: 'analgesic_agents_031',
    question: 'Chest wall rigidity after fentanyl administration is most likely due to:',
    options: [
      'Bronchospasm',
      'Histamine release',
      'Dopamine activation',
      'Central increase in muscle tone',
      'Acetylcholine reduction'
    ],
    correctAnswerIndex: 3,
    explanation: 'High-dose fentanyl increases central motor tone → chest wall rigidity.',
    category: 'Analgesic Agents',
    difficulty: 2
  ),
  Question(
    id: 'analgesic_agents_032',
    question: 'Which statement about opioid use during labor is correct?',
    options: [
      'Safe at all doses',
      'Neonatal respiration is unaffected',
      'Reversed by naloxone',
      'Increases uterine contractions',
      'Contraindicated in prematurity'
    ],
    correctAnswerIndex: 2,
    explanation: 'Neonatal respiratory depression can occur but is reversible with naloxone.',
    category: 'Analgesic Agents',
    difficulty: 2
  ),
  Question(
    id: 'analgesic_agents_033',
    question: 'Which is a gastrointestinal effect of opioids?',
    options: [
      'Cause diarrhea',
      'Accelerate gastric emptying',
      'Increase sphincter tone',
      'Increase peristalsis',
      'Cause ulcers'
    ],
    correctAnswerIndex: 2,
    explanation: 'Opioids increase sphincter tone and reduce motility → constipation.',
    category: 'Analgesic Agents',
    difficulty: 2
  ),
  Question(
    id: 'analgesic_agents_034',
    question: 'Which opioid effect does NOT develop tolerance?',
    options: [
      'Analgesia',
      'Sedation',
      'Respiratory depression',
      'Decreased GI motility',
      'Euphoria'
    ],
    correctAnswerIndex: 3,
    explanation: 'Constipation persists without tolerance during chronic use.',
    category: 'Analgesic Agents',
    difficulty: 2
  ),
  Question(
    id: 'analgesic_agents_035',
    question: 'What is the average duration of naloxone\'s effect?',
    options: [
      '5–10 seconds',
      '5–15 minutes',
      '30–45 minutes',
      '2–4 hours',
      '6–8 hours'
    ],
    correctAnswerIndex: 2,
    explanation: 'Naloxone has a short duration (30–45 min) → may require repeat dosing.',
    category: 'Analgesic Agents',
    difficulty: 2
  ),
  Question(
    id: 'analgesic_agents_036',
    question: 'Which of the following opioids is the most potent?',
    options: [
      'Morphine',
      'Fentanyl',
      'Sufentanil',
      'Alfentanil',
      'Tramadol'
    ],
    correctAnswerIndex: 2,
    explanation: 'Sufentanil is about 1000 times more potent than morphine.',
    category: 'Analgesic Agents',
    difficulty: 2
  ),
  Question(
    id: 'analgesic_agents_037',
    question: 'Which is a long-term complication of opioid use?',
    options: [
      'Hypertension',
      'Tolerance',
      'Bradykinesia',
      'Renal failure',
      'Hepatic fibrosis'
    ],
    correctAnswerIndex: 1,
    explanation: 'Chronic opioid use leads to tolerance (esp. to analgesia, euphoria, sedation).',
    category: 'Analgesic Agents',
    difficulty: 2
  ),
  Question(
    id: 'analgesic_agents_038',
    question: 'Why must morphine be used cautiously in renal insufficiency?',
    options: [
      'Reduced protein binding',
      'Increased CYP450 activity',
      'Accumulation of active metabolites',
      'High lipophilicity',
      'Antagonist by-products'
    ],
    correctAnswerIndex: 2,
    explanation: 'Active metabolite M6G accumulates in renal failure → increased risk of respiratory depression.',
    category: 'Analgesic Agents',
    difficulty: 2
  ),
  Question(
    id: 'analgesic_agents_039',
    question: 'Which opioid most commonly causes chest wall rigidity?',
    options: [
      'Morphine',
      'Fentanyl',
      'Tramadol',
      'Meperidine',
      'Methadone'
    ],
    correctAnswerIndex: 1,
    explanation: 'High-dose fentanyl frequently causes chest wall rigidity → difficult ventilation.',
    category: 'Analgesic Agents',
    difficulty: 2
  ),
  Question(
    id: 'analgesic_agents_040',
    question: 'Which is the most likely effect of naloxone administration?',
    options: [
      'Bronchodilation',
      'Transient increase in opioid effect',
      'Acute withdrawal syndrome',
      'Hypothermia',
      'Prolonged analgesia'
    ],
    correctAnswerIndex: 2,
    explanation: 'In opioid-dependent patients, naloxone causes acute withdrawal syndrome (agitation, vomiting, tachycardia).',
    category: 'Analgesic Agents',
    difficulty: 2
  ),
  Question(
    id: 'analgesic_agents_041',
    question: 'Which system is least affected by opioids?',
    options: [
      'Respiratory',
      'Gastrointestinal',
      'Cardiovascular',
      'Central nervous system',
      'Urogenital'
    ],
    correctAnswerIndex: 2,
    explanation: 'Opioids minimally affect the cardiovascular system; morphine may cause mild hypotension via histamine release.',
    category: 'Analgesic Agents',
    difficulty: 2
  ),
  Question(
    id: 'analgesic_agents_042',
    question: 'Which opioid used during labor may cause the longest neonatal respiratory depression?',
    options: [
      'Morphine',
      'Meperidine',
      'Remifentanil',
      'Tramadol',
      'Fentanyl'
    ],
    correctAnswerIndex: 1,
    explanation: 'Meperidine\'s metabolite normeperidine has long half-life → prolonged neonatal respiratory depression.',
    category: 'Analgesic Agents',
    difficulty: 2
  ),
  Question(
    id: 'analgesic_agents_043',
    question: 'Which statement about opioid receptors is correct?',
    options: [
      'All are ion channels',
      'Interact with NMDA receptors',
      'All are G-protein coupled',
      'Found only in peripheral tissues',
      'Contain ligand-gated calcium channels'
    ],
    correctAnswerIndex: 2,
    explanation: 'μ, κ, δ opioid receptors are G-protein coupled, reducing intracellular cAMP.',
    category: 'Analgesic Agents',
    difficulty: 2
  ),
  Question(
    id: 'analgesic_agents_044',
    question: 'Which is a dose-dependent effect of opioids?',
    options: [
      'Hypoglycemia',
      'Bradycardia',
      'Thrombocytopenia',
      'Hyperventilation',
      'Anemia'
    ],
    correctAnswerIndex: 1,
    explanation: 'Opioids increase vagal tone in a dose-dependent manner → bradycardia.',
    category: 'Analgesic Agents',
    difficulty: 2
  ),
  Question(
    id: 'analgesic_agents_045',
    question: 'Which opioid has the highest lipophilicity?',
    options: [
      'Morphine',
      'Meperidine',
      'Alfentanil',
      'Fentanyl',
      'Tramadol'
    ],
    correctAnswerIndex: 3,
    explanation: 'Fentanyl and sufentanil are highly lipophilic → rapid onset, short duration. Morphine is the least lipophilic.',
    category: 'Analgesic Agents',
    difficulty: 2
  ),
  Question(
    id: 'analgesic_agents_046',
    question: 'Which receptor mediates spinal analgesia by opioids?',
    options: [
      'NMDA',
      'Mu (μ)',
      'Beta-adrenergic',
      'D₁ receptor',
      'Muscarinic'
    ],
    correctAnswerIndex: 1,
    explanation: 'μ-receptors are responsible for both spinal and supraspinal analgesia.',
    category: 'Analgesic Agents',
    difficulty: 2
  ),
  Question(
    id: 'analgesic_agents_047',
    question: 'Which opioid may cause delirium, tremor, and seizures due to a neurotoxic metabolite?',
    options: [
      'Meperidine',
      'Morphine',
      'Fentanyl',
      'Sufentanil',
      'Remifentanil'
    ],
    correctAnswerIndex: 0,
    explanation: 'Meperidine\'s metabolite normeperidine is neurotoxic → risk of seizures, esp. in elderly and renal failure patients.',
    category: 'Analgesic Agents',
    difficulty: 2
  ),
  Question(
    id: 'analgesic_agents_048',
    question: 'Which opioid has strong euphoric effects and high abuse potential?',
    options: [
      'Sufentanil',
      'Morphine',
      'Nalbuphine',
      'Naloxone',
      'Buprenorphine'
    ],
    correctAnswerIndex: 1,
    explanation: 'Morphine is a full μ-agonist → produces strong euphoria, high risk of dependence.',
    category: 'Analgesic Agents',
    difficulty: 2
  ),
  Question(
    id: 'analgesic_agents_049',
    question: 'Which opioid antagonist is long-acting and used in opioid dependence treatment?',
    options: [
      'Naloxone',
      'Tramadol',
      'Naltrexone',
      'Buprenorphine',
      'Sufentanil'
    ],
    correctAnswerIndex: 2,
    explanation: 'Naltrexone is a long-acting oral antagonist → used for maintenance therapy in dependence.',
    category: 'Analgesic Agents',
    difficulty: 2
  ),
  Question(
    id: 'analgesic_agents_050',
    question: 'Which mechanism explains biliary colic after opioid administration?',
    options: [
      'Spasm of the sphincter of Oddi',
      'Histamine release',
      'Decreased gastric acid secretion',
      'Increased hepatic blood flow',
      'Decreased portal vein pressure'
    ],
    correctAnswerIndex: 0,
    explanation: 'Opioids cause sphincter of Oddi spasm → biliary colic.',
    category: 'Analgesic Agents',
    difficulty: 2
  ),
  Question(
    id: 'analgesic_agents_051',
    question: 'Which of the following is NOT synthetic?',
    options: [
      'Morphine',
      'Fentanyl',
      'Tramadol',
      'Meperidine',
      'Alfentanil'
    ],
    correctAnswerIndex: 0,
    explanation: 'Morphine is a natural opioid derived from the opium poppy; others are synthetic or semi-synthetic.',
    category: 'Analgesic Agents',
    difficulty: 2
  ),
  Question(
    id: 'analgesic_agents_052',
    question: 'Which agent acts as a pure opioid antagonist with no analgesic effect?',
    options: [
      'Naltrexone',
      'Naloxone',
      'Tramadol',
      'Buprenorphine',
      'Nalbuphine'
    ],
    correctAnswerIndex: 1,
    explanation: 'Naloxone is a pure opioid antagonist → reverses opioid effects but has no analgesic properties.',
    category: 'Analgesic Agents',
    difficulty: 2
  ),
  Question(
    id: 'analgesic_agents_053',
    question: 'Which of the following is NOT a classic sign of opioid intoxication?',
    options: [
      'Altered consciousness',
      'Respiratory depression',
      'Miosis',
      'Hyperthermia',
      'Bradycardia'
    ],
    correctAnswerIndex: 3,
    explanation: 'Classic opioid overdose triad: altered consciousness + miosis + respiratory depression. Hypothermia may occur, not hyperthermia.',
    category: 'Analgesic Agents',
    difficulty: 2
  ),
  Question(
    id: 'analgesic_agents_054',
    question: 'Which of the following is NOT part of the central analgesic mechanism of opioids?',
    options: [
      'PAG (periaqueductal gray) activation',
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
    id: 'analgesic_agents_055',
    question: 'Which opioid derivative also has SSRI effects and may cause serotonin syndrome?',
    options: [
      'Sufentanil',
      'Meperidine',
      'Alfentanil',
      'Buprenorphine',
      'Morphine'
    ],
    correctAnswerIndex: 1,
    explanation: 'Meperidine inhibits serotonin reuptake → risk of serotonin syndrome especially with MAO inhibitors.',
    category: 'Analgesic Agents',
    difficulty: 2
  ),
  Question(
    id: 'analgesic_agents_056',
    question: 'Which of the following is a typical renal effect of opioids?',
    options: [
      'Polyuria',
      'Natriuresis',
      'Antidiuresis',
      'Hypokalemia',
      'Glucosuria'
    ],
    correctAnswerIndex: 2,
    explanation: 'Opioids increase ADH release → antidiuresis → reduced urine output.',
    category: 'Analgesic Agents',
    difficulty: 2
  ),
  Question(
    id: 'analgesic_agents_057',
    question: 'Which condition is most common in the newborn after maternal opioid administration during labor?',
    options: [
      'Hypoglycemia',
      'Respiratory depression',
      'Sepsis-like syndrome',
      'Cerebral palsy',
      'Hypothermia'
    ],
    correctAnswerIndex: 1,
    explanation: 'Opioids cross the placenta → neonatal respiratory depression (treated with naloxone).',
    category: 'Analgesic Agents',
    difficulty: 2
  ),
  Question(
    id: 'analgesic_agents_058',
    question: 'Opioid-induced pruritus at the spinal level is mediated primarily by which receptor?',
    options: [
      'NMDA',
      'Mu (μ)',
      'Delta (δ)',
      'Kappa (κ)',
      'GABA'
    ],
    correctAnswerIndex: 1,
    explanation: 'Spinal μ-receptor activation contributes to pruritus, independent of histamine release.',
    category: 'Analgesic Agents',
    difficulty: 2
  ),
  Question(
    id: 'analgesic_agents_059',
    question: 'Which opioid(s) may be used for preemptive analgesia?',
    options: [
      'Morphine',
      'Fentanyl',
      'Remifentanil',
      'Sufentanil',
      'All of the above'
    ],
    correctAnswerIndex: 4,
    explanation: 'Opioids administered before surgical stimulus raise the pain threshold → preemptive analgesia.',
    category: 'Analgesic Agents',
    difficulty: 2
  ),
  Question(
    id: 'analgesic_agents_060',
    question: 'Which is NOT a cause of mental status change during opioid use?',
    options: [
      'Overdose',
      'Neurotoxic metabolites',
      'Hepatic failure',
      'NMDA activation',
      'Opioid withdrawal'
    ],
    correctAnswerIndex: 3,
    explanation: 'Opioids inhibit NMDA receptors; mental status changes are due to dose, metabolite accumulation, or withdrawal.',
    category: 'Analgesic Agents',
    difficulty: 2
  ),
  Question(
    id: 'analgesic_agents_061',
    question: 'Which route prolongs the analgesic effect of opioids most effectively?',
    options: [
      'IM',
      'IV bolus',
      'Epidural',
      'Oral',
      'SC'
    ],
    correctAnswerIndex: 2,
    explanation: 'Epidural or spinal administration targets spinal receptors directly → longer and stronger analgesia.',
    category: 'Analgesic Agents',
    difficulty: 2
  ),
  Question(
    id: 'analgesic_agents_062',
    question: 'What is the main reason for the addictive potential of opioids?',
    options: [
      'Respiratory depression',
      'Increased dopamine release',
      'Increased muscle tone',
      'Delayed gastric emptying',
      'Parasympathetic blockade'
    ],
    correctAnswerIndex: 1,
    explanation: 'Opioids increase dopamine release in the mesolimbic reward system → basis of dependence.',
    category: 'Analgesic Agents',
    difficulty: 2
  ),
  Question(
    id: 'analgesic_agents_063',
    question: 'Which of the following is an agonist–antagonist opioid analgesic?',
    options: [
      'Morphine',
      'Fentanyl',
      'Nalbuphine',
      'Tramadol',
      'Methadone'
    ],
    correctAnswerIndex: 2,
    explanation: 'Nalbuphine is a κ-agonist and μ-antagonist. Morphine/fentanyl/methadone are full μ-agonists; tramadol is a weak μ-agonist + SNRI.',
    category: 'Analgesic Agents',
    difficulty: 2
  ),
  Question(
    id: 'analgesic_agents_064',
    question: 'Which is an advantage of fentanyl over morphine?',
    options: [
      'Longer duration of action',
      'Less histamine release',
      'More sedation',
      'Higher oral bioavailability',
      'Less respiratory depression'
    ],
    correctAnswerIndex: 1,
    explanation: 'Fentanyl is more potent, lipophilic, and causes less histamine release than morphine.',
    category: 'Analgesic Agents',
    difficulty: 2
  ),
  Question(
    id: 'analgesic_agents_065',
    question: 'Which of the following is NOT a feature of methadone?',
    options: [
      'Long elimination half-life',
      'NMDA receptor antagonism',
      'Potent serotonin reuptake inhibition',
      'Used in opioid withdrawal therapy',
      'High oral efficacy'
    ],
    correctAnswerIndex: 2,
    explanation: 'Methadone is a μ-agonist + NMDA antagonist, long-acting, and useful in withdrawal. Tramadol/tapentadol inhibit serotonin/noradrenaline reuptake.',
    category: 'Analgesic Agents',
    difficulty: 2
  ),
  Question(
    id: 'analgesic_agents_066',
    question: 'Which is a side effect of tramadol?',
    options: [
      'Hypertension',
      'Increased seizure threshold',
      'Bradycardia',
      'Does not cause constipation',
      'Risk of serotonin syndrome'
    ],
    correctAnswerIndex: 4,
    explanation: 'Tramadol may cause serotonin syndrome, lowers seizure threshold, and causes constipation.',
    category: 'Analgesic Agents',
    difficulty: 2
  ),
  Question(
    id: 'analgesic_agents_067',
    question: 'What is the analgesic mechanism of NSAIDs?',
    options: [
      'Opioid receptor agonism',
      'COX-2 inhibition',
      'GABA-A receptor activation',
      'NMDA receptor blockade',
      'Acetylcholinesterase inhibition'
    ],
    correctAnswerIndex: 1,
    explanation: 'NSAIDs inhibit COX-2 → ↓ prostaglandins → analgesia.',
    category: 'Analgesic Agents',
    difficulty: 2
  ),
  Question(
    id: 'analgesic_agents_068',
    question: 'Which is a COX-2 selective NSAID?',
    options: [
      'Ibuprofen',
      'Naproxen',
      'Diclofenac',
      'Celecoxib',
      'Aspirin'
    ],
    correctAnswerIndex: 3,
    explanation: 'COX-2 selective: celecoxib, etoricoxib. Others are nonselective.',
    category: 'Analgesic Agents',
    difficulty: 2
  ),
  Question(
    id: 'analgesic_agents_069',
    question: 'Which drug is used to treat acetaminophen toxicity?',
    options: [
      'Flumazenil',
      'Naloxone',
      'N-acetylcysteine',
      'Fomepizole',
      'Vitamin K'
    ],
    correctAnswerIndex: 2,
    explanation: 'N-acetylcysteine replenishes glutathione → detoxifies toxic metabolites.',
    category: 'Analgesic Agents',
    difficulty: 2
  ),
  Question(
    id: 'analgesic_agents_070',
    question: 'Which adverse effect is linked to meperidine\'s metabolite?',
    options: [
      'Hepatotoxicity',
      'Seizures',
      'Arrhythmia',
      'Acute renal injury',
      'Hypertension'
    ],
    correctAnswerIndex: 1,
    explanation: 'Meperidine → normeperidine → neurotoxic → seizures, esp. in renal failure.',
    category: 'Analgesic Agents',
    difficulty: 2
  ),
  Question(
    id: 'analgesic_agents_071',
    question: 'What is essential in opioid rotation?',
    options: [
      'Accurate calculation of equianalgesic doses',
      'New opioid should have slow onset',
      'Cross-tolerance can be ignored',
      'Receptor affinities are irrelevant',
      'Parenteral conversion requires dose increase'
    ],
    correctAnswerIndex: 0,
    explanation: 'Equianalgesic conversion is crucial; reduce new opioid dose by 25–50% due to cross-tolerance.',
    category: 'Analgesic Agents',
    difficulty: 2
  ),
  Question(
    id: 'analgesic_agents_072',
    question: 'Which is NOT correct about ketorolac?',
    options: [
      'Use limited to 5 days',
      'Can be used parenterally for postop pain',
      'Inhibits COX-1',
      'Safe in pregnancy',
      'Contraindicated in renal failure'
    ],
    correctAnswerIndex: 3,
    explanation: 'Ketorolac is contraindicated in pregnancy (3rd trimester).',
    category: 'Analgesic Agents',
    difficulty: 2
  ),
  Question(
    id: 'analgesic_agents_073',
    question: 'Mechanism of gabapentin in neuropathic pain?',
    options: [
      'NMDA blockade',
      'Inhibition of voltage-gated calcium channels',
      'Dopamine reuptake inhibition',
      'Muscarinic receptor agonism',
      'GABA-B activation'
    ],
    correctAnswerIndex: 1,
    explanation: 'Gabapentin binds α2δ subunit of calcium channels → ↓ neurotransmitter release.',
    category: 'Analgesic Agents',
    difficulty: 2
  ),
  Question(
    id: 'analgesic_agents_074',
    question: 'Which reduces risk of opioid-induced respiratory depression?',
    options: [
      'Midazolam',
      'Naloxone',
      'Flumazenil',
      'Ketamine',
      'Neostigmine'
    ],
    correctAnswerIndex: 1,
    explanation: 'Naloxone is a μ-antagonist → reverses respiratory depression.',
    category: 'Analgesic Agents',
    difficulty: 2
  ),
  Question(
    id: 'analgesic_agents_075',
    question: 'Which is correct for transdermal fentanyl?',
    options: [
      'First-line for acute pain',
      'Onset within 5 minutes',
      'Heat increases absorption',
      'No adjustment needed in renal failure',
      'Applied every 48 hours'
    ],
    correctAnswerIndex: 2,
    explanation: 'Transdermal fentanyl absorption increases with heat; applied every 72h, used for chronic pain.',
    category: 'Analgesic Agents',
    difficulty: 2
  ),
  Question(
    id: 'analgesic_agents_076',
    question: 'Which lab finding indicates acetaminophen toxicity?',
    options: [
      'Hypoglycemia',
      'AST/ALT > 1000 IU/L',
      'Hypocalcemia',
      'Leukopenia',
      'Hyponatremia'
    ],
    correctAnswerIndex: 1,
    explanation: 'Marked AST/ALT elevation (>1000) = hepatic necrosis.',
    category: 'Analgesic Agents',
    difficulty: 2
  ),
  Question(
    id: 'analgesic_agents_077',
    question: 'Which metabolite of tramadol binds to opioid receptors?',
    options: [
      'Normeperidine',
      'O-desmethyltramadol',
      '6-Monoacetylmorphine',
      'Hydromorphone',
      'Norfentanyl'
    ],
    correctAnswerIndex: 1,
    explanation: 'Tramadol → O-desmethyltramadol (via CYP2D6) → μ-agonist.',
    category: 'Analgesic Agents',
    difficulty: 2
  ),
  Question(
    id: 'analgesic_agents_078',
    question: 'Which renal effect is caused by NSAIDs?',
    options: [
      '↑ Renin secretion',
      'Afferent arteriolar dilation',
      '↓ Prostaglandin E2 synthesis',
      '↑ Sodium excretion',
      'Induce diuresis'
    ],
    correctAnswerIndex: 2,
    explanation: 'NSAIDs ↓ renal prostaglandins → afferent vasoconstriction → AKI risk.',
    category: 'Analgesic Agents',
    difficulty: 2
  ),
  Question(
    id: 'analgesic_agents_079',
    question: 'Which is correct about metamizole (dipyrone)?',
    options: [
      'COX-2 selective',
      'Risk of agranulocytosis',
      'Safe in pregnancy',
      'Does not trigger asthma',
      'Cardioprotective'
    ],
    correctAnswerIndex: 1,
    explanation: 'Metamizole → agranulocytosis risk → restricted in many countries.',
    category: 'Analgesic Agents',
    difficulty: 2
  ),
  Question(
    id: 'analgesic_agents_080',
    question: 'Which is a side effect of epidural opioids?',
    options: [
      'Hypertension',
      'Delayed respiratory depression',
      'Bradycardia',
      'Hyperthermia',
      'Muscle rigidity'
    ],
    correctAnswerIndex: 1,
    explanation: 'Epidural morphine → slow CSF spread → delayed respiratory depression (6–12h).',
    category: 'Analgesic Agents',
    difficulty: 2
  ),
  Question(
    id: 'analgesic_agents_081',
    question: 'What is the active metabolite of codeine?',
    options: [
      'Morphine',
      'Hydrocodone',
      'Oxycodone',
      'Fentanyl',
      'Buprenorphine'
    ],
    correctAnswerIndex: 0,
    explanation: 'Codeine → morphine (via CYP2D6).',
    category: 'Analgesic Agents',
    difficulty: 2
  ),
  Question(
    id: 'analgesic_agents_082',
    question: 'Which is true about buprenorphine?',
    options: [
      'Full μ-agonist',
      'Respiratory depression shows plateau at high dose',
      'Oral bioavailability 90%',
      'Completely antagonized by naloxone',
      'Exacerbates withdrawal'
    ],
    correctAnswerIndex: 1,
    explanation: 'Buprenorphine = partial μ-agonist, κ-antagonist. Respiratory depression plateaus.',
    category: 'Analgesic Agents',
    difficulty: 2
  ),
  Question(
    id: 'analgesic_agents_083',
    question: 'Mechanism of duloxetine?',
    options: [
      'Dopamine reuptake inhibition',
      'Norepinephrine & serotonin reuptake inhibition',
      'NMDA blockade',
      'GABA-A activation',
      'Muscarinic antagonism'
    ],
    correctAnswerIndex: 1,
    explanation: 'Duloxetine = SNRI → used in neuropathic pain & depression.',
    category: 'Analgesic Agents',
    difficulty: 2
  ),
  Question(
    id: 'analgesic_agents_084',
    question: 'First-line treatment for local anesthetic systemic toxicity (LAST)?',
    options: [
      'Lidocaine',
      'Propranolol',
      'Lipid emulsion (20% intralipid)',
      'Calcium gluconate',
      'Diazepam'
    ],
    correctAnswerIndex: 2,
    explanation: 'Intralipid "lipid sink" therapy removes lipophilic anesthetics (e.g., bupivacaine).',
    category: 'Analgesic Agents',
    difficulty: 2
  ),
  Question(
    id: 'analgesic_agents_085',
    question: 'Which mechanism is linked to opioid-induced hyperalgesia?',
    options: [
      'Delta receptor activation',
      'NMDA receptor activation',
      'GABA-A inhibition',
      'α2 receptor downregulation',
      'Muscarinic blockade'
    ],
    correctAnswerIndex: 1,
    explanation: 'Chronic opioid use → NMDA activation → hyperalgesia; treated with ketamine.',
    category: 'Analgesic Agents',
    difficulty: 2
  ),
  Question(
    id: 'analgesic_agents_086',
    question: 'Which is NOT a renal side effect of NSAIDs?',
    options: [
      'Acute kidney injury',
      'Hyperkalemia',
      'Sodium retention',
      'Metabolic alkalosis',
      'Papillary necrosis'
    ],
    correctAnswerIndex: 3,
    explanation: 'NSAIDs cause metabolic acidosis, not alkalosis.',
    category: 'Analgesic Agents',
    difficulty: 2
  ),
  Question(
    id: 'analgesic_agents_087',
    question: 'Which lab finding may occur in acetaminophen toxicity?',
    options: [
      'AST > ALT elevation',
      'Hypoglycemia',
      'Hypoprothrombinemia',
      'Low LDH',
      'Low ammonia'
    ],
    correctAnswerIndex: 0,
    explanation: 'AST > ALT is typical, with coagulopathy and hypoglycemia possible.',
    category: 'Analgesic Agents',
    difficulty: 2
  ),
  Question(
    id: 'analgesic_agents_088',
    question: 'Which drug most increases sedation when combined with opioids?',
    options: [
      'Metoclopramide',
      'Ondansetron',
      'Hydroxyzine',
      'Ranitidine',
      'Methylprednisolone'
    ],
    correctAnswerIndex: 2,
    explanation: 'Hydroxyzine (antihistamine) strongly potentiates sedation.',
    category: 'Analgesic Agents',
    difficulty: 2
  ),
  Question(
    id: 'analgesic_agents_089',
    question: 'Which statement about ketorolac is FALSE?',
    options: [
      'Can be given parenterally',
      'Not used for more than 5 days',
      'Effective in postoperative pain',
      'Enhances platelet function',
      'May cause GI ulceration'
    ],
    correctAnswerIndex: 3,
    explanation: 'Ketorolac inhibits platelets (like aspirin) → bleeding risk.',
    category: 'Analgesic Agents',
    difficulty: 2
  ),
  Question(
    id: 'analgesic_agents_090',
    question: 'Which is an alternative analgesic in opioid intolerance?',
    options: [
      'Methadone',
      'Lidocaine infusion',
      'Ketamine infusion',
      'Diazepam',
      'Atropine'
    ],
    correctAnswerIndex: 2,
    explanation: 'Ketamine provides analgesia via NMDA antagonism in opioid-intolerant patients.',
    category: 'Analgesic Agents',
    difficulty: 2
  ),
  Question(
    id: 'analgesic_agents_091',
    question: 'Tapentadol\'s mechanism of action?',
    options: [
      'Pure μ-agonist',
      'μ-agonist + norepinephrine reuptake inhibition',
      'NMDA antagonist + serotonin reuptake inhibition',
      'GABA-A agonist',
      'α2-agonist'
    ],
    correctAnswerIndex: 1,
    explanation: 'Tapentadol = μ-agonist + noradrenaline reuptake inhibitor.',
    category: 'Analgesic Agents',
    difficulty: 2
  ),
];
