import '../../models/question.dart';

List<Question> neuromuscularBlockingAgentsQuestions = [
  Question(
    id: 'neuromuscular_blocking_agents_001',
    question: 'What is the mechanism of action of succinylcholine?',
    options: [
      'Nicotinic receptor antagonism',
      'Muscarinic receptor antagonism',
      'GABA-A receptor agonism',
      'Depolarizing nicotinic receptor agonism',
      'Inhibition of presynaptic acetylcholine release'
    ],
    correctAnswerIndex: 3,
    explanation: 'Succinylcholine is a depolarizing neuromuscular blocker. It binds to nicotinic acetylcholine receptors, causes continuous depolarization, and induces temporary paralysis.',
    category: 'Neuromuscular Blocking Agents',
    difficulty: 2
  ),
  Question(
    id: 'neuromuscular_blocking_agents_002',
    question: 'What is the most typical side effect after succinylcholine administration?',
    options: [
      'Bradycardia',
      'Hypoglycemia',
      'Hypokalemia',
      'Myalgia',
      'Hypothermia'
    ],
    correctAnswerIndex: 3,
    explanation: 'Succinylcholine causes fasciculations, which may lead to postoperative myalgia, especially in young adults.',
    category: 'Neuromuscular Blocking Agents',
    difficulty: 2
  ),
  Question(
    id: 'neuromuscular_blocking_agents_003',
    question: 'How is the effect of non-depolarizing neuromuscular blockers terminated?',
    options: [
      'Breakdown by cholinesterase',
      'Hydrolysis by plasma esterases',
      'Neutralization by organic acids',
      'Receptor internalization',
      'Increased acetylcholine levels'
    ],
    correctAnswerIndex: 4,
    explanation: 'Non-depolarizing agents block acetylcholine receptors. When acetylcholine concentration rises (e.g., with neostigmine), the block is reversed.',
    category: 'Neuromuscular Blocking Agents',
    difficulty: 2
  ),
  Question(
    id: 'neuromuscular_blocking_agents_004',
    question: 'Which neuromuscular blocker is eliminated by Hofmann degradation?',
    options: [
      'Rocuronium',
      'Atracurium',
      'Vecuronium',
      'Succinylcholine',
      'Mivacurium'
    ],
    correctAnswerIndex: 1,
    explanation: 'Atracurium and cisatracurium undergo Hofmann elimination, a spontaneous breakdown depending on pH and temperature, independent of liver or kidney.',
    category: 'Neuromuscular Blocking Agents',
    difficulty: 2
  ),
  Question(
    id: 'neuromuscular_blocking_agents_005',
    question: 'Which non-depolarizing blocker has a higher risk of causing ganglionic blockade?',
    options: [
      'Atracurium',
      'Succinylcholine',
      'Pancuronium',
      'Cisatracurium',
      'Vecuronium'
    ],
    correctAnswerIndex: 2,
    explanation: 'Pancuronium can inhibit parasympathetic ganglia, leading to autonomic side effects such as tachycardia.',
    category: 'Neuromuscular Blocking Agents',
    difficulty: 2
  ),
  Question(
    id: 'neuromuscular_blocking_agents_006',
    question: 'In which condition can succinylcholine cause hyperkalemia?',
    options: [
      'Asthma attack',
      'Parkinson\'s disease',
      'Burn patients',
      'Thyroid disease',
      'Glaucoma'
    ],
    correctAnswerIndex: 2,
    explanation: 'In burns, stroke, or immobilization, upregulation of acetylcholine receptors occurs. Succinylcholine may cause sudden, severe hyperkalemia.',
    category: 'Neuromuscular Blocking Agents',
    difficulty: 2
  ),
  Question(
    id: 'neuromuscular_blocking_agents_007',
    question: 'Which neuromuscular blocker has a high risk of histamine release?',
    options: [
      'Cisatracurium',
      'Rocuronium',
      'Vecuronium',
      'Atracurium',
      'Pancuronium'
    ],
    correctAnswerIndex: 3,
    explanation: 'Atracurium may cause histamine release → hypotension, bronchospasm (dose-dependent).',
    category: 'Neuromuscular Blocking Agents',
    difficulty: 2
  ),
  Question(
    id: 'neuromuscular_blocking_agents_008',
    question: 'Which may occur after succinylcholine use?',
    options: [
      'Prolonged neuromuscular block',
      'Increased acetylcholine',
      'Cholinergic crisis',
      'Parasympathetic stimulation',
      'Phosphatase activation'
    ],
    correctAnswerIndex: 0,
    explanation: 'In pseudocholinesterase deficiency or with atypical enzyme variants, succinylcholine\'s effect may be prolonged → persistent paralysis.',
    category: 'Neuromuscular Blocking Agents',
    difficulty: 2
  ),
  Question(
    id: 'neuromuscular_blocking_agents_009',
    question: 'Sugammadex is used to reverse the effect of which agents?',
    options: [
      'Atracurium and vecuronium',
      'Succinylcholine and mivacurium',
      'Rocuronium and vecuronium',
      'Cisatracurium and pancuronium',
      'Only succinylcholine'
    ],
    correctAnswerIndex: 2,
    explanation: 'Sugammadex encapsulates steroidal non-depolarizing agents, especially rocuronium (and partially vecuronium), reversing their effect.',
    category: 'Neuromuscular Blocking Agents',
    difficulty: 2
  ),
  Question(
    id: 'neuromuscular_blocking_agents_010',
    question: 'Which agent is metabolized by both Hofmann elimination and esterases?',
    options: [
      'Vecuronium',
      'Cisatracurium',
      'Pancuronium',
      'Mivacurium',
      'Rocuronium'
    ],
    correctAnswerIndex: 1,
    explanation: 'Cisatracurium, a stereoisomer of atracurium, is primarily degraded by Hofmann elimination but also undergoes some esterase hydrolysis.',
    category: 'Neuromuscular Blocking Agents',
    difficulty: 2
  ),
  Question(
    id: 'neuromuscular_blocking_agents_011',
    question: 'Which neuromuscular blocker is hydrolyzed by plasma cholinesterase?',
    options: [
      'Atracurium',
      'Rocuronium',
      'Vecuronium',
      'Mivacurium',
      'Pancuronium'
    ],
    correctAnswerIndex: 3,
    explanation: 'Mivacurium is an ester compound broken down by plasma cholinesterase → short-acting.',
    category: 'Neuromuscular Blocking Agents',
    difficulty: 2
  ),
  Question(
    id: 'neuromuscular_blocking_agents_012',
    question: 'What is the main advantage of sugammadex?',
    options: [
      'Acts as a cholinesterase inhibitor',
      'Muscarinic receptor activation',
      'Eliminates the need for anticholinesterases',
      'Increases acetylcholine release',
      'Enhances dopamine activity'
    ],
    correctAnswerIndex: 2,
    explanation: 'Sugammadex does not increase acetylcholine; instead, it directly binds rocuronium/vecuronium, reversing blockade without cholinesterase inhibitors.',
    category: 'Neuromuscular Blocking Agents',
    difficulty: 2
  ),
  Question(
    id: 'neuromuscular_blocking_agents_013',
    question: 'In patients at risk of malignant hyperthermia triggered by succinylcholine, the genetic defect involves which protein?',
    options: [
      'Receptor kinase',
      'Dihydropyridine receptor',
      'RyR1 (ryanodine receptor type 1)',
      'Calmodulin',
      'T-tubule protein'
    ],
    correctAnswerIndex: 2,
    explanation: 'Malignant hyperthermia results from RyR1 mutation → excessive calcium release from sarcoplasmic reticulum. Triggered by succinylcholine + volatile agents.',
    category: 'Neuromuscular Blocking Agents',
    difficulty: 2
  ),
  Question(
    id: 'neuromuscular_blocking_agents_014',
    question: 'Which is explained by the presynaptic effect of non-depolarizing blockers?',
    options: [
      'Facilitation',
      'Increased acetylcholine release',
      'Deepening of the block',
      'Increased muscle contraction',
      'Weakened antagonist effect'
    ],
    correctAnswerIndex: 2,
    explanation: 'Non-depolarizing blockers inhibit presynaptic receptors → ↓ ACh release → deeper neuromuscular block.',
    category: 'Neuromuscular Blocking Agents',
    difficulty: 2
  ),
  Question(
    id: 'neuromuscular_blocking_agents_015',
    question: 'Which drug\'s effect cannot be reversed with cholinesterase inhibitors?',
    options: [
      'Rocuronium',
      'Vecuronium',
      'Pancuronium',
      'Succinylcholine (Phase I block)',
      'Atracurium'
    ],
    correctAnswerIndex: 3,
    explanation: 'Succinylcholine Phase I (depolarizing) block is not reversed by anticholinesterases; may actually be prolonged.',
    category: 'Neuromuscular Blocking Agents',
    difficulty: 2
  ),
  Question(
    id: 'neuromuscular_blocking_agents_016',
    question: 'Which conditions enhance the effect of non-depolarizing blockers?',
    options: [
      'Hypercalcemia',
      'Hypermagnesemia',
      'Hypernatremia',
      'Hypothermia',
      'B and D'
    ],
    correctAnswerIndex: 4,
    explanation: 'Hypermagnesemia impairs neuromuscular transmission, while hypothermia slows drug clearance → both prolong block.',
    category: 'Neuromuscular Blocking Agents',
    difficulty: 2
  ),
  Question(
    id: 'neuromuscular_blocking_agents_017',
    question: 'What is an advantageous property of vecuronium?',
    options: [
      'Long-acting',
      'Causes histamine release',
      'Minimal cardiovascular effects',
      'Independent of hepatic metabolism',
      'Undergoes Hofmann elimination'
    ],
    correctAnswerIndex: 2,
    explanation: 'Vecuronium has minimal cardiovascular effects, does not release histamine, and is intermediate-acting.',
    category: 'Neuromuscular Blocking Agents',
    difficulty: 2
  ),
  Question(
    id: 'neuromuscular_blocking_agents_018',
    question: 'Cause of hypotension during atracurium use?',
    options: [
      'Cardiac depression',
      'Arterial vasoconstriction',
      'Histamine release',
      'Increased acetylcholine',
      'Cholinesterase inhibition'
    ],
    correctAnswerIndex: 2,
    explanation: 'Atracurium releases histamine → vasodilation → hypotension.',
    category: 'Neuromuscular Blocking Agents',
    difficulty: 2
  ),
  Question(
    id: 'neuromuscular_blocking_agents_019',
    question: 'When is succinylcholine-induced bradycardia more common?',
    options: [
      'After a single dose',
      'In elderly males',
      'After a second dose',
      'During pregnancy',
      'In hypovolemia'
    ],
    correctAnswerIndex: 2,
    explanation: 'Repeated doses stimulate muscarinic receptors → vagal effect → bradycardia (esp. in children).',
    category: 'Neuromuscular Blocking Agents',
    difficulty: 2
  ),
  Question(
    id: 'neuromuscular_blocking_agents_020',
    question: 'Which agent has the shortest duration of action?',
    options: [
      'Vecuronium',
      'Rocuronium',
      'Mivacurium',
      'Atracurium',
      'Pancuronium'
    ],
    correctAnswerIndex: 2,
    explanation: 'Mivacurium is short-acting due to plasma cholinesterase breakdown.',
    category: 'Neuromuscular Blocking Agents',
    difficulty: 2
  ),
  Question(
    id: 'neuromuscular_blocking_agents_021',
    question: 'Which method is used to assess depth of neuromuscular blockade?',
    options: [
      'ECG',
      'Bispectral index (BIS)',
      'TOF (Train-of-Four) stimulation',
      'EMG',
      'SpO₂'
    ],
    correctAnswerIndex: 2,
    explanation: 'TOF monitoring evaluates blockade by delivering four nerve stimuli and assessing muscle response.',
    category: 'Neuromuscular Blocking Agents',
    difficulty: 2
  ),
  Question(
    id: 'neuromuscular_blocking_agents_022',
    question: 'Which effect is associated with laudanosine, a metabolite of atracurium?',
    options: [
      'Respiratory depression',
      'Bradycardia',
      'Lowered seizure threshold',
      'Hypothermia',
      'QT prolongation'
    ],
    correctAnswerIndex: 2,
    explanation: 'Laudanosine is a CNS stimulant; at high concentrations may lower seizure threshold (clinical relevance is minimal).',
    category: 'Neuromuscular Blocking Agents',
    difficulty: 2
  ),
  Question(
    id: 'neuromuscular_blocking_agents_023',
    question: 'If no response is seen to all four TOF stimuli, what does this indicate?',
    options: [
      'Mild block',
      'Moderate block',
      'Deep block',
      'Recovered block',
      'No block'
    ],
    correctAnswerIndex: 2,
    explanation: 'TOF 0/4 = deep neuromuscular block. Safe extubation requires TOF 4/4 with ratio ≥90%.',
    category: 'Neuromuscular Blocking Agents',
    difficulty: 2
  ),
  Question(
    id: 'neuromuscular_blocking_agents_024',
    question: 'Primary elimination pathway of vecuronium?',
    options: [
      'Liver',
      'Lungs',
      'Plasma esterases',
      'Hofmann elimination',
      'Equal biliary and renal'
    ],
    correctAnswerIndex: 0,
    explanation: 'Vecuronium is mainly metabolized and eliminated hepatically → prolonged effect in liver disease.',
    category: 'Neuromuscular Blocking Agents',
    difficulty: 2
  ),
  Question(
    id: 'neuromuscular_blocking_agents_025',
    question: 'Which is NOT a side effect of succinylcholine?',
    options: [
      'Fasciculations',
      'Hyperkalemia',
      'Bradycardia',
      'Reversibility of neuromuscular block',
      'Increased intracranial pressure'
    ],
    correctAnswerIndex: 3,
    explanation: 'Phase I block from succinylcholine is not reversible with anticholinesterases.',
    category: 'Neuromuscular Blocking Agents',
    difficulty: 2
  ),
  Question(
    id: 'neuromuscular_blocking_agents_026',
    question: 'Which condition enhances the effect of neuromuscular blockers?',
    options: [
      'Hyperkalemia',
      'Antibiotic use (aminoglycosides)',
      'Alkalemia',
      'Carbonic anhydrase inhibitors',
      'Dopamine agonists'
    ],
    correctAnswerIndex: 1,
    explanation: 'Aminoglycosides impair neuromuscular transmission, intensifying block.',
    category: 'Neuromuscular Blocking Agents',
    difficulty: 2
  ),
  Question(
    id: 'neuromuscular_blocking_agents_027',
    question: 'Which is NOT used to reverse non-depolarizing block?',
    options: [
      'Neostigmine',
      'Edrophonium',
      'Sugammadex',
      'Atropine',
      'Pralidoxime'
    ],
    correctAnswerIndex: 4,
    explanation: 'Pralidoxime is used for organophosphate poisoning, not NMB reversal. Atropine is co-administered to prevent muscarinic side effects.',
    category: 'Neuromuscular Blocking Agents',
    difficulty: 2
  ),
  Question(
    id: 'neuromuscular_blocking_agents_028',
    question: 'If TOF ratio ≥90%, what is the likelihood of residual block?',
    options: [
      'Almost none',
      '5%',
      '20%',
      '50%',
      '70%'
    ],
    correctAnswerIndex: 0,
    explanation: 'TOF ≥90% indicates safe extubation; residual block risk is negligible.',
    category: 'Neuromuscular Blocking Agents',
    difficulty: 2
  ),
  Question(
    id: 'neuromuscular_blocking_agents_029',
    question: 'Most dangerous complication of succinylcholine that may cause cardiac arrest?',
    options: [
      'Hypotension',
      'Laryngospasm',
      'Hyperkalemia',
      'Fasciculations',
      'Nephrotoxicity'
    ],
    correctAnswerIndex: 2,
    explanation: 'Succinylcholine can trigger severe hyperkalemia (esp. burns, trauma, neuromuscular disease) → cardiac arrest.',
    category: 'Neuromuscular Blocking Agents',
    difficulty: 2
  ),
  Question(
    id: 'neuromuscular_blocking_agents_030',
    question: 'Which can reduce the effect of neuromuscular blockers?',
    options: [
      'Aminoglycosides',
      'Lithium',
      'Calcium channel blockers',
      'Carbamazepine',
      'Magnesium sulfate'
    ],
    correctAnswerIndex: 3,
    explanation: 'Carbamazepine induces resistance to non-depolarizing blockers, shortening block.',
    category: 'Neuromuscular Blocking Agents',
    difficulty: 2
  ),
  Question(
    id: 'neuromuscular_blocking_agents_031',
    question: 'Most prominent side effect of pancuronium?',
    options: [
      'Bradycardia',
      'Histamine release',
      'Fasciculations',
      'Tachycardia',
      'Nephrotoxicity'
    ],
    correctAnswerIndex: 3,
    explanation: 'Pancuronium has vagolytic activity → tachycardia (caution in cardiac patients).',
    category: 'Neuromuscular Blocking Agents',
    difficulty: 2
  ),
  Question(
    id: 'neuromuscular_blocking_agents_032',
    question: 'Cause of increased intragastric pressure with succinylcholine?',
    options: [
      'Histamine release',
      'Pseudocholinesterase deficiency',
      'Fasciculations',
      'Dopamine release',
      'Muscarinic stimulation'
    ],
    correctAnswerIndex: 2,
    explanation: 'Fasciculations of abdominal muscles increase intragastric pressure → aspiration risk.',
    category: 'Neuromuscular Blocking Agents',
    difficulty: 2
  ),
  Question(
    id: 'neuromuscular_blocking_agents_033',
    question: 'In TOF monitoring, fade is most typical in which block?',
    options: [
      'Phase I block (succinylcholine)',
      'Phase II block',
      'Partial local anesthesia',
      'No relaxant given',
      'Cholinergic crisis'
    ],
    correctAnswerIndex: 1,
    explanation: 'Fade is seen in Phase II block or with non-depolarizing agents. Phase I block has no fade.',
    category: 'Neuromuscular Blocking Agents',
    difficulty: 2
  ),
  Question(
    id: 'neuromuscular_blocking_agents_034',
    question: 'Most reliable clinical test before extubation after NM blocker use?',
    options: [
      'TOF ratio',
      '5-second head lift',
      'SpO₂ >95%',
      'Heart rate',
      'Pupillary response'
    ],
    correctAnswerIndex: 1,
    explanation: 'Sustained 5-second head lift indicates adequate muscle strength, though TOF ≥90% is more objective.',
    category: 'Neuromuscular Blocking Agents',
    difficulty: 2
  ),
  Question(
    id: 'neuromuscular_blocking_agents_035',
    question: 'Definition of Phase II block with succinylcholine?',
    options: [
      'Persistent depolarization',
      'Receptor desensitization with non-depolarizing characteristics',
      'Lack of acetylcholine',
      'Muscle atrophy',
      'Excess cholinesterase'
    ],
    correctAnswerIndex: 1,
    explanation: 'Phase II block occurs with prolonged/high-dose succinylcholine → desensitization + fade like non-depolarizers.',
    category: 'Neuromuscular Blocking Agents',
    difficulty: 2
  ),
  Question(
    id: 'neuromuscular_blocking_agents_036',
    question: 'Which muscle relaxant is most commonly used for rapid sequence intubation?',
    options: [
      'Atracurium',
      'Vecuronium',
      'Succinylcholine',
      'Pancuronium',
      'Cisatracurium'
    ],
    correctAnswerIndex: 2,
    explanation: 'Succinylcholine has the fastest onset + shortest duration → ideal for RSI.',
    category: 'Neuromuscular Blocking Agents',
    difficulty: 2
  ),
  Question(
    id: 'neuromuscular_blocking_agents_037',
    question: 'Mechanism of succinylcholine-induced increase in intracranial pressure?',
    options: [
      'Increased vascular permeability',
      'Receptor downregulation',
      'Fasciculations decreasing venous return',
      'Hypoventilation',
      'Increased ACh synthesis'
    ],
    correctAnswerIndex: 2,
    explanation: 'Fasciculations → ↑ intrathoracic pressure → ↓ cerebral venous return → ↑ ICP.',
    category: 'Neuromuscular Blocking Agents',
    difficulty: 2
  ),
  Question(
    id: 'neuromuscular_blocking_agents_038',
    question: 'Most common side effect of sugammadex?',
    options: [
      'Hyperkalemia',
      'Tachycardia',
      'Bradycardia',
      'QT prolongation',
      'Dizziness'
    ],
    correctAnswerIndex: 2,
    explanation: 'Sugammadex may rarely cause bradycardia (even asystole) → monitoring required.',
    category: 'Neuromuscular Blocking Agents',
    difficulty: 2
  ),
  Question(
    id: 'neuromuscular_blocking_agents_039',
    question: 'Which statement about non-depolarizing NM blockers is FALSE?',
    options: [
      'They inhibit muscle contraction',
      'Reversed by cholinesterase inhibitors',
      'Bind muscarinic receptors',
      'Competitive antagonists',
      'Produce fade in TOF'
    ],
    correctAnswerIndex: 2,
    explanation: 'They are nicotinic antagonists, not muscarinic.',
    category: 'Neuromuscular Blocking Agents',
    difficulty: 2
  ),
  Question(
    id: 'neuromuscular_blocking_agents_040',
    question: 'Which agent undergoes Hofmann elimination and is safe in organ failure?',
    options: [
      'Rocuronium',
      'Atracurium',
      'Pancuronium',
      'Vecuronium',
      'Succinylcholine'
    ],
    correctAnswerIndex: 1,
    explanation: 'Atracurium/cisatracurium degraded by Hofmann elimination → safe in liver/kidney dysfunction.',
    category: 'Neuromuscular Blocking Agents',
    difficulty: 2
  ),
  Question(
    id: 'neuromuscular_blocking_agents_041',
    question: 'In which group is succinylcholine-induced myalgia most pronounced?',
    options: [
      'Children',
      'Elderly',
      'Pregnant women',
      'Young healthy adults',
      'Hypothyroid patients'
    ],
    correctAnswerIndex: 3,
    explanation: 'Postoperative myalgia from fasciculations is most common in young, healthy adults.',
    category: 'Neuromuscular Blocking Agents',
    difficulty: 2
  ),
  Question(
    id: 'neuromuscular_blocking_agents_042',
    question: 'In which disease is succinylcholine contraindicated?',
    options: [
      'Asthma',
      'Parkinson\'s disease',
      'Multiple sclerosis',
      'Type 2 diabetes',
      'Hypertension'
    ],
    correctAnswerIndex: 2,
    explanation: 'Denervation disorders (MS, spinal cord injury) → ↑ ACh receptors → risk of hyperkalemia.',
    category: 'Neuromuscular Blocking Agents',
    difficulty: 2
  ),
  Question(
    id: 'neuromuscular_blocking_agents_043',
    question: 'Which is true about neuromuscular blockers?',
    options: [
      'All eliminated via liver',
      'Respiratory muscles affected last',
      'Eyelids/facial muscles affected first',
      'All muscles equally affected',
      'Muscle strength not assessed before reversal'
    ],
    correctAnswerIndex: 2,
    explanation: 'Eyelids, face, and neck muscles block first; diaphragm/intercostals last.',
    category: 'Neuromuscular Blocking Agents',
    difficulty: 2
  ),
  Question(
    id: 'neuromuscular_blocking_agents_044',
    question: 'Which receptor is competitively blocked by non-depolarizing muscle relaxants?',
    options: [
      'Muscarinic M₃',
      'GABA-A',
      'Nicotinic N₂ (neuromuscular junction)',
      'NMDA',
      'Alpha-2 adrenergic'
    ],
    correctAnswerIndex: 2,
    explanation: 'Non-depolarizing agents competitively block nicotinic receptors at the neuromuscular junction → preventing acetylcholine action.',
    category: 'Neuromuscular Blocking Agents',
    difficulty: 2
  ),
  Question(
    id: 'neuromuscular_blocking_agents_045',
    question: 'Which statement about succinylcholine is correct?',
    options: [
      'Does not cause histamine release',
      'Long-acting muscle relaxant',
      'Metabolized by pseudocholinesterase',
      'Acts as a non-depolarizing agent',
      'Highly bound to plasma proteins'
    ],
    correctAnswerIndex: 2,
    explanation: 'Succinylcholine is rapidly broken down by pseudocholinesterase (plasma cholinesterase) → very short-acting muscle relaxant.',
    category: 'Neuromuscular Blocking Agents',
    difficulty: 2
  ),
  Question(
    id: 'neuromuscular_blocking_agents_046',
    question: 'Which is a characteristic of Phase I block in depolarizing block?',
    options: [
      'Increased TOF ratio',
      'Absence of fasciculations',
      'Easily reversed by anticholinesterases',
      'Ineffective at prejunctional site',
      'No fade in TOF'
    ],
    correctAnswerIndex: 4,
    explanation: 'In Phase I block, all TOF responses are equally reduced (no fade). This is typical for depolarizing block.',
    category: 'Neuromuscular Blocking Agents',
    difficulty: 2
  ),
  Question(
    id: 'neuromuscular_blocking_agents_047',
    question: 'Which muscle relaxant\'s effect may be prolonged in elderly patients?',
    options: [
      'Cisatracurium',
      'Rocuronium',
      'Atracurium',
      'Succinylcholine',
      'Mivacurium'
    ],
    correctAnswerIndex: 1,
    explanation: 'Rocuronium depends on hepatic elimination → reduced liver function in elderly prolongs its effect.',
    category: 'Neuromuscular Blocking Agents',
    difficulty: 2
  ),
  Question(
    id: 'neuromuscular_blocking_agents_048',
    question: 'In which patient group is hyperkalemia risk higher with succinylcholine use?',
    options: [
      'Asthma',
      'Myasthenia gravis',
      'Burn patients',
      'Parkinson\'s disease',
      'Obstructive sleep apnea'
    ],
    correctAnswerIndex: 2,
    explanation: 'Burns, trauma, and denervation increase extrajunctional ACh receptors → succinylcholine may cause sudden severe hyperkalemia.',
    category: 'Neuromuscular Blocking Agents',
    difficulty: 2
  ),
  Question(
    id: 'neuromuscular_blocking_agents_049',
    question: 'Which factor affects the rate of Hofmann elimination?',
    options: [
      'Creatinine level',
      'Serum calcium',
      'Body temperature and pH',
      'Pseudocholinesterase level',
      'Plasma protein level'
    ],
    correctAnswerIndex: 2,
    explanation: 'Hofmann elimination is spontaneous and depends only on pH and temperature.',
    category: 'Neuromuscular Blocking Agents',
    difficulty: 2
  ),
  Question(
    id: 'neuromuscular_blocking_agents_050',
    question: 'Which antibiotic group prolongs the effect of non-depolarizing muscle relaxants?',
    options: [
      'Penicillins',
      'Aminoglycosides',
      'Tetracyclines',
      'Macrolides',
      'Cephalosporins'
    ],
    correctAnswerIndex: 1,
    explanation: 'Aminoglycosides inhibit neuromuscular transmission → prolong non-depolarizing blockade.',
    category: 'Neuromuscular Blocking Agents',
    difficulty: 2
  ),
  Question(
    id: 'neuromuscular_blocking_agents_051',
    question: 'Which muscle relaxant is the shortest acting?',
    options: [
      'Rocuronium',
      'Cisatracurium',
      'Succinylcholine',
      'Vecuronium',
      'Pancuronium'
    ],
    correctAnswerIndex: 2,
    explanation: 'Succinylcholine has very rapid onset and short duration (5–10 min) → ideal for short procedures.',
    category: 'Neuromuscular Blocking Agents',
    difficulty: 2
  ),
  Question(
    id: 'neuromuscular_blocking_agents_052',
    question: 'Which stimulation is most commonly used for neuromuscular monitoring?',
    options: [
      'Single twitch',
      'Double burst',
      'Tetanic stimulation',
      'TOF (train-of-four)',
      'Post-tetanic count'
    ],
    correctAnswerIndex: 3,
    explanation: 'TOF (train-of-four) is the most widely used neuromuscular monitoring method in clinical practice.',
    category: 'Neuromuscular Blocking Agents',
    difficulty: 2
  ),
  Question(
    id: 'neuromuscular_blocking_agents_053',
    question: 'Which is a feature of Phase II block?',
    options: [
      'No fade in TOF',
      'Ineffective neostigmine',
      'Can develop after prolonged succinylcholine use',
      'Fasciculations are prominent',
      'Cannot be reversed with antagonists'
    ],
    correctAnswerIndex: 2,
    explanation: 'Prolonged/high-dose succinylcholine → Phase II block, resembling non-depolarizing block → can be reversed with neostigmine.',
    category: 'Neuromuscular Blocking Agents',
    difficulty: 2
  ),
  Question(
    id: 'neuromuscular_blocking_agents_054',
    question: 'In TOF monitoring, 4 equal twitches indicate what?',
    options: [
      'Deep block',
      'Moderate block',
      'Mild block',
      'No recovery',
      'Phase II block'
    ],
    correctAnswerIndex: 2,
    explanation: '4 equal responses = mild block. TOF ratio ≥90% = clinically safe recovery.',
    category: 'Neuromuscular Blocking Agents',
    difficulty: 2
  ),
  Question(
    id: 'neuromuscular_blocking_agents_055',
    question: 'Which condition shows resistance to muscle relaxants?',
    options: [
      'Myasthenia gravis',
      'Burns',
      'Hyperkalemia',
      'Hypothermia',
      'SIADH'
    ],
    correctAnswerIndex: 1,
    explanation: 'Burn patients upregulate ACh receptors → resistant to non-depolarizing agents → higher doses required.',
    category: 'Neuromuscular Blocking Agents',
    difficulty: 2
  ),
  Question(
    id: 'neuromuscular_blocking_agents_056',
    question: 'What is the earliest side effect of succinylcholine?',
    options: [
      'Bradycardia',
      'Myalgia',
      'Fasciculations',
      'Hyperkalemia',
      'Malignant hyperthermia'
    ],
    correctAnswerIndex: 2,
    explanation: 'Fasciculations occur immediately after succinylcholine administration → earliest observed effect.',
    category: 'Neuromuscular Blocking Agents',
    difficulty: 2
  ),
  Question(
    id: 'neuromuscular_blocking_agents_057',
    question: 'Which metabolite of atracurium may cause seizures?',
    options: [
      'Mivacron',
      'Hofmann by-product',
      'Laudanosine',
      'Rocuronate',
      'Histamine'
    ],
    correctAnswerIndex: 2,
    explanation: 'Atracurium metabolism produces laudanosine, a CNS stimulant that may lower seizure threshold.',
    category: 'Neuromuscular Blocking Agents',
    difficulty: 2
  ),
  Question(
    id: 'neuromuscular_blocking_agents_058',
    question: 'Which muscle relaxant is aminosteroid-structured?',
    options: [
      'Atracurium',
      'Succinylcholine',
      'Mivacurium',
      'Vecuronium',
      'Cisatracurium'
    ],
    correctAnswerIndex: 3,
    explanation: 'Vecuronium is an aminosteroid non-depolarizing relaxant → effectively reversed with sugammadex.',
    category: 'Neuromuscular Blocking Agents',
    difficulty: 2
  ),
  Question(
    id: 'neuromuscular_blocking_agents_059',
    question: 'What is the best management when TOF ratio is <50%?',
    options: [
      'Extubation is safe',
      'Give sugammadex',
      'Do not give neostigmine',
      'Wake patient without antagonist',
      'Spontaneous breathing is sufficient'
    ],
    correctAnswerIndex: 1,
    explanation: 'TOF <90% = residual paralysis risk. TOF <50% → sugammadex is the most effective reversal.',
    category: 'Neuromuscular Blocking Agents',
    difficulty: 2
  ),
  Question(
    id: 'neuromuscular_blocking_agents_060',
    question: 'By which mechanism does sugammadex reverse neuromuscular block?',
    options: [
      'GABA-A receptor',
      'Nicotinic receptor',
      'Cholinesterase inhibition',
      'Steroid encapsulation',
      'NMDA antagonism'
    ],
    correctAnswerIndex: 3,
    explanation: 'Sugammadex encapsulates aminosteroid relaxants (rocuronium, vecuronium) → neutralizes them without receptor interaction.',
    category: 'Neuromuscular Blocking Agents',
    difficulty: 2
  ),
  Question(
    id: 'neuromuscular_blocking_agents_061',
    question: 'Which muscle relaxant causes the least histamine release?',
    options: [
      'Atracurium',
      'Succinylcholine',
      'Vecuronium',
      'Mivacurium',
      'Morphine'
    ],
    correctAnswerIndex: 2,
    explanation: 'Vecuronium causes minimal histamine release → stable hemodynamics.',
    category: 'Neuromuscular Blocking Agents',
    difficulty: 2
  ),
  Question(
    id: 'neuromuscular_blocking_agents_062',
    question: 'Which muscle relaxant does NOT produce fade in TOF response?',
    options: [
      'Rocuronium',
      'Vecuronium',
      'Cisatracurium',
      'Atracurium',
      'Succinylcholine (Phase I block)'
    ],
    correctAnswerIndex: 4,
    explanation: 'In Phase I depolarizing block, TOF responses are equally reduced (no fade). Fade is typical of non-depolarizing agents.',
    category: 'Neuromuscular Blocking Agents',
    difficulty: 2
  ),
  Question(
    id: 'neuromuscular_blocking_agents_063',
    question: 'In TOF, 4 twitches with the last weaker than the first indicates what?',
    options: [
      'Full recovery',
      'Mild paralysis',
      'Residual neuromuscular block',
      'Phase I block',
      'Total paralysis'
    ],
    correctAnswerIndex: 2,
    explanation: 'Fade in TOF = residual neuromuscular block → inadequate recovery.',
    category: 'Neuromuscular Blocking Agents',
    difficulty: 2
  ),
  Question(
    id: 'neuromuscular_blocking_agents_064',
    question: 'If muscle strength does not return despite neostigmine, what should be suspected?',
    options: [
      'Low potassium',
      'Phase II block',
      'Pseudocholinesterase deficiency',
      'Need for sugammadex',
      'Lack of anticholinergics'
    ],
    correctAnswerIndex: 1,
    explanation: 'Prolonged/high-dose succinylcholine → Phase II block develops → resistant to neostigmine.',
    category: 'Neuromuscular Blocking Agents',
    difficulty: 2
  ),
  Question(
    id: 'neuromuscular_blocking_agents_065',
    question: 'Which condition increases sensitivity to non-depolarizing muscle relaxants?',
    options: [
      'Burns',
      'Myasthenia gravis',
      'Hyperkalemia',
      'Guillain-Barré syndrome',
      'Muscular dystrophy'
    ],
    correctAnswerIndex: 1,
    explanation: 'Myasthenia gravis → reduced nicotinic receptors → hypersensitivity to non-depolarizers → lower doses needed.',
    category: 'Neuromuscular Blocking Agents',
    difficulty: 2
  ),
  Question(
    id: 'neuromuscular_blocking_agents_066',
    question: 'Which muscle group is best for intraoperative neuromuscular monitoring?',
    options: [
      'Orbicularis oculi',
      'Masseter',
      'Adductor pollicis',
      'Gluteus',
      'Gastrocnemius'
    ],
    correctAnswerIndex: 2,
    explanation: 'Adductor pollicis (via ulnar nerve) is the most reliable and commonly used for neuromuscular monitoring.',
    category: 'Neuromuscular Blocking Agents',
    difficulty: 2
  ),
  Question(
    id: 'neuromuscular_blocking_agents_067',
    question: 'What characterizes Phase II block with succinylcholine?',
    options: [
      'Reversed with anticholinesterases',
      'No fade with tetanic stimulation',
      'Presence of post-tetanic potentiation',
      'Resistant to acetylcholinesterase inhibitors',
      'Occurs only at high doses'
    ],
    correctAnswerIndex: 2,
    explanation: 'Phase II block resembles non-depolarizing block → post-tetanic potentiation, reversible with anticholinesterases.',
    category: 'Neuromuscular Blocking Agents',
    difficulty: 2
  ),
  Question(
    id: 'neuromuscular_blocking_agents_068',
    question: 'What is a risk factor for bradycardia with succinylcholine use?',
    options: [
      'Hypertension',
      'Pediatric age group',
      'Beta-blocker therapy',
      'Repeated doses',
      'Hypokalemia'
    ],
    correctAnswerIndex: 3,
    explanation: 'Succinylcholine may cause bradycardia via muscarinic stimulation → risk ↑ with repeated doses, esp. in children.',
    category: 'Neuromuscular Blocking Agents',
    difficulty: 2
  ),
  Question(
    id: 'neuromuscular_blocking_agents_069',
    question: 'Which prolongs the effect of non-depolarizing blockers?',
    options: [
      'Hypercalcemia',
      'Hypermagnesemia',
      'Alkalosis',
      'Hypoglycemia',
      'Hypernatremia'
    ],
    correctAnswerIndex: 1,
    explanation: 'Hypermagnesemia inhibits ACh release → prolongs non-depolarizing block. Also aminoglycosides, local anesthetics, hypothermia prolong effect.',
    category: 'Neuromuscular Blocking Agents',
    difficulty: 2
  ),
  Question(
    id: 'neuromuscular_blocking_agents_070',
    question: 'Which mechanism metabolizes atracurium?',
    options: [
      'Acetylcholinesterase hydrolysis',
      'Hofmann elimination',
      'Renal excretion',
      'Cytochrome P450 metabolism',
      'Glucuronidation'
    ],
    correctAnswerIndex: 1,
    explanation: 'Atracurium undergoes Hofmann elimination (pH and temperature-dependent, non-enzymatic breakdown) → produces laudanosine (CNS stimulant).',
    category: 'Neuromuscular Blocking Agents',
    difficulty: 2
  ),
  Question(
    id: 'neuromuscular_blocking_agents_071',
    question: 'Which statement correctly defines the clinical meaning of TOF (Train-of-Four) ratio in neuromuscular block monitoring?',
    options: [
      'TOF <0.7: Deep block',
      'TOF 0.5–0.7: Adequate surgical relaxation',
      'TOF 0.7–0.9: Suitable for extubation',
      'TOF >0.9: Full recovery of neuromuscular function',
      'TOF 0.9–1.0: Residual paralysis'
    ],
    correctAnswerIndex: 3,
    explanation: 'TOF ratio = 4th twitch ÷ 1st twitch. <0.5 → deep block; 0.5–0.9 → residual paralysis (unsafe for extubation); 0.9 → safe extubation',
    category: 'Neuromuscular Blocking Agents',
    difficulty: 2
  ),
  Question(
    id: 'neuromuscular_blocking_agents_072',
    question: 'Which of the following is NOT a side effect of anticholinesterases?',
    options: [
      'Bradycardia',
      'Bronchospasm',
      'Increased GI motility',
      'Hypersalivation',
      'Hypertension'
    ],
    correctAnswerIndex: 4,
    explanation: 'Neostigmine/edrophonium inhibit acetylcholinesterase → ↑ ACh → parasympathetic effects: bradycardia, bronchospasm, salivation, ↑ GI motility. Atropine/glycopyrrolate are given to prevent these side effects.',
    category: 'Neuromuscular Blocking Agents',
    difficulty: 2
  ),
  Question(
    id: 'neuromuscular_blocking_agents_073',
    question: 'Which is NOT a contraindication for succinylcholine use?',
    options: [
      'Massive trauma (after 24 hours)',
      'Glaucoma',
      'Hyperkalemia',
      'History of malignant hyperthermia',
      'Myotonic dystrophy'
    ],
    correctAnswerIndex: 0,
    explanation: 'Massive trauma, burns, spinal cord injury (48h–6 months) → ↑ extrajunctional ACh receptors → risk of hyperkalemia → contraindication. Other contraindications: glaucoma, malignant hyperthermia history, myotonic dystrophy.',
    category: 'Neuromuscular Blocking Agents',
    difficulty: 2
  ),
  Question(
    id: 'neuromuscular_blocking_agents_074',
    question: 'Which of the following is NOT seen in pseudocholinesterase deficiency?',
    options: [
      'Prolonged succinylcholine effect',
      'Deepened muscle relaxation',
      'Phase II block development',
      'Reversal with anticholinesterases',
      'Reduced plasma cholinesterase levels'
    ],
    correctAnswerIndex: 3,
    explanation: 'Pseudocholinesterase deficiency → markedly prolonged succinylcholine effect (6–8 h). Anticholinesterases do not reverse this; they may worsen it.',
    category: 'Neuromuscular Blocking Agents',
    difficulty: 2
  ),
  Question(
    id: 'neuromuscular_blocking_agents_075',
    question: 'Which condition does NOT cause elevated potassium with succinylcholine use?',
    options: [
      'Burn patients (after 7 days)',
      'Chronic renal failure',
      'Massive trauma (after 48 hours)',
      'Spinal cord injury (within 6 months)',
      'Myotonic dystrophy'
    ],
    correctAnswerIndex: 1,
    explanation: 'Succinylcholine → hyperkalemia in burns, trauma, spinal cord injury, neuromuscular diseases. Chronic renal failure alone is not a risk factor (unless hyperkalemia already exists).',
    category: 'Neuromuscular Blocking Agents',
    difficulty: 2
  ),
  Question(
    id: 'neuromuscular_blocking_agents_076',
    question: 'Which is an advantage of cisatracurium?',
    options: [
      'No dose adjustment needed in renal failure',
      'Very rapid onset (30 sec)',
      'Metabolized by pseudocholinesterase',
      'Provides cardiac stability',
      'Low cost'
    ],
    correctAnswerIndex: 0,
    explanation: 'Cisatracurium undergoes Hofmann elimination (pH & temperature dependent) → safe in renal/hepatic failure. Onset is ~2–3 min (slower than rocuronium).',
    category: 'Neuromuscular Blocking Agents',
    difficulty: 2
  ),
  Question(
    id: 'neuromuscular_blocking_agents_077',
    question: 'Which is NOT a feature of sugammadex?',
    options: [
      'Binds steroidal non-depolarizing blockers',
      'Affected by plasma pseudocholinesterase activity',
      'Antagonizes rocuronium & vecuronium',
      'Excreted renally',
      'Does not cause histamine release'
    ],
    correctAnswerIndex: 1,
    explanation: 'Sugammadex is a γ-cyclodextrin derivative that encapsulates steroidal blockers (rocuronium, vecuronium). Works independent of pseudocholinesterase. Eliminated via kidneys.',
    category: 'Neuromuscular Blocking Agents',
    difficulty: 2
  ),
  Question(
    id: 'neuromuscular_blocking_agents_078',
    question: 'Which is NOT associated with pseudocholinesterase deficiency?',
    options: [
      'Prolonged succinylcholine effect',
      'Prolonged mivacurium effect',
      'Increased malignant hyperthermia risk',
      'Slowed procaine metabolism',
      'Increased risk of local anesthetic toxicity'
    ],
    correctAnswerIndex: 2,
    explanation: 'Pseudocholinesterase metabolizes succinylcholine, mivacurium, procaine. Deficiency → prolonged drug effect, ↑ toxicity risk. Malignant hyperthermia = unrelated (RYR1 mutation).',
    category: 'Neuromuscular Blocking Agents',
    difficulty: 2
  ),
  Question(
    id: 'neuromuscular_blocking_agents_079',
    question: 'In which situation is succinylcholine relatively safe to use?',
    options: [
      '72 hours after massive burn',
      'Chronic renal failure (K⁺ 5.6 mEq/L)',
      'Open globe injury',
      'History of myotonic dystrophy',
      '6-month spinal cord injury'
    ],
    correctAnswerIndex: 2,
    explanation: 'Succinylcholine increases intraocular pressure but may still be used in open globe injuries if needed. Absolute contraindications: MH history, hyperkalemia, trauma/burn/spinal cord injury (48h–6mo), myotonic dystrophy.',
    category: 'Neuromuscular Blocking Agents',
    difficulty: 2
  ),
  Question(
    id: 'neuromuscular_blocking_agents_080',
    question: 'What is the advantage of double burst stimulation (DBS) in neuromuscular block monitoring?',
    options: [
      'Evaluation of deep block',
      'Clinical detection of residual paralysis',
      'More objective than TOF',
      'Does not require post-tetanic count',
      'Specific to non-depolarizing agents'
    ],
    correctAnswerIndex: 1,
    explanation: 'DBS = two short tetanic stimuli. Better than TOF for recognizing residual block clinically (fade detection). Extubation safe if TOF >0.9 or no fade in DBS.',
    category: 'Neuromuscular Blocking Agents',
    difficulty: 2
  ),
];
