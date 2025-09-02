import '../../models/question.dart';

List<Question> pharmacologicalPrinciplesQuestions = [
  Question(
    id: 'pharmacology_001',
    question: 'Which of the following best defines bioavailability?',
    options: [
      'Distribution of the drug to tissues',
      'Rate of drug metabolism',
      'Amount of drug reaching systemic circulation',
      'Drug elimination time',
      'Plasma protein binding ratio of the drug'
    ],
    correctAnswerIndex: 2,
    explanation: 'Bioavailability is the fraction of the administered drug that reaches systemic circulation. Oral drugs often have lower bioavailability due to enzymatic breakdown and first-pass metabolism.',
    category: 'Pharmacological Principles',
    difficulty: 2
  ),
  Question(
    id: 'pharmacology_002',
    question: 'Which route is most affected by the "first-pass" effect?',
    options: [
      'Inhalation drugs',
      'IV drugs',
      'Oral drugs',
      'Subcutaneous drugs',
      'Sublingual drugs'
    ],
    correctAnswerIndex: 2,
    explanation: 'Oral drugs undergo absorption into the portal system and are metabolized in the liver before reaching systemic circulation.',
    category: 'Pharmacological Principles',
    difficulty: 2
  ),
  Question(
    id: 'pharmacology_003',
    question: 'For a drug with a high volume of distribution (Vd), which is correct?',
    options: [
      'Mostly remains in plasma',
      'Metabolized only in the liver',
      'Widely distributed into body tissues',
      'Rapidly excreted by kidneys',
      'Not lipophilic'
    ],
    correctAnswerIndex: 2,
    explanation: 'High Vd indicates extensive distribution into tissues, typical for lipophilic drugs.',
    category: 'Pharmacological Principles',
    difficulty: 2
  ),
  Question(
    id: 'pharmacology_004',
    question: 'Which route has minimal first-pass effect?',
    options: [
      'Oral',
      'Rectal',
      'Subcutaneous',
      'Intramuscular',
      'Intravenous'
    ],
    correctAnswerIndex: 4,
    explanation: 'IV drugs enter systemic circulation directly and bypass the liver.',
    category: 'Pharmacological Principles',
    difficulty: 2
  ),
  Question(
    id: 'pharmacology_005',
    question: 'Which is correct about zero-order kinetics drugs?',
    options: [
      'Half-life is dose-independent',
      'Elimination occurs at a constant rate',
      'Elimination is not enzyme-dependent',
      'Elimination increases with dose',
      'Elimination is unsaturated'
    ],
    correctAnswerIndex: 1,
    explanation: 'Zero-order kinetics means drug elimination occurs at a constant rate regardless of concentration (e.g., ethanol, phenytoin).',
    category: 'Pharmacological Principles',
    difficulty: 2
  ),
  Question(
    id: 'pharmacology_006',
    question: 'For drugs with a high hepatic extraction ratio, which is correct?',
    options: [
      'Highly bound to plasma proteins',
      'Elimination depends on hepatic blood flow',
      'Depends on enzyme capacity',
      'Elimination is dose-dependent',
      'Excreted via bile'
    ],
    correctAnswerIndex: 1,
    explanation: 'High-extraction drugs are flow-dependent; their clearance is determined by hepatic blood flow.',
    category: 'Pharmacological Principles',
    difficulty: 2
  ),
  Question(
    id: 'pharmacology_007',
    question: 'Which two PK parameters most influence a drug\'s half-life?',
    options: [
      'Bioavailability & distribution',
      'Volume of distribution & clearance',
      'Elimination & absorption',
      'Protein binding & dose',
      'Dose & route of administration'
    ],
    correctAnswerIndex: 1,
    explanation: 'Half-life = (0.693 × Vd) / Clearance. Larger Vd or reduced clearance prolongs half-life.',
    category: 'Pharmacological Principles',
    difficulty: 2
  ),
  Question(
    id: 'pharmacology_008',
    question: 'Which statement is correct about pharmacodynamics?',
    options: [
      'It is the drug\'s effect on the body',
      'It is the rate of absorption',
      'It is the volume of distribution',
      'It is the elimination process',
      'It is the metabolism pathway'
    ],
    correctAnswerIndex: 0,
    explanation: 'Pharmacodynamics studies the effects, mechanisms, and receptor interactions of drugs.',
    category: 'Pharmacological Principles',
    difficulty: 2
  ),
  Question(
    id: 'pharmacology_009',
    question: 'For drugs with high plasma protein binding, which is correct?',
    options: [
      'Vd increases',
      'Free fraction increases',
      'Shorter duration of action',
      'Inactive fraction increases',
      'Easier renal elimination'
    ],
    correctAnswerIndex: 3,
    explanation: 'Bound drug is pharmacologically inactive; only the free fraction exerts effects.',
    category: 'Pharmacological Principles',
    difficulty: 2
  ),
  Question(
    id: 'pharmacology_010',
    question: 'Which is a Phase I metabolic reaction?',
    options: [
      'Conjugation',
      'Acetylation',
      'Glucuronidation',
      'Oxidation',
      'Sulfation'
    ],
    correctAnswerIndex: 3,
    explanation: 'Phase I reactions include oxidation, reduction, and hydrolysis, making drugs more polar.',
    category: 'Pharmacological Principles',
    difficulty: 2
  ),
  Question(
    id: 'pharmacology_011',
    question: 'Most common CYP isoform in hepatic metabolism?',
    options: [
      'CYP1A2',
      'CYP2C9',
      'CYP2D6',
      'CYP3A4',
      'CYP2E1'
    ],
    correctAnswerIndex: 3,
    explanation: 'CYP3A4 metabolizes the largest proportion of drugs in the liver.',
    category: 'Pharmacological Principles',
    difficulty: 2
  ),
  Question(
    id: 'pharmacology_012',
    question: 'Hepatic metabolism saturation is associated with:',
    options: [
      'Zero-order elimination',
      'First-order absorption',
      'Increased distribution volume',
      'Constant half-life',
      'Increased clearance'
    ],
    correctAnswerIndex: 0,
    explanation: 'Once enzyme systems are saturated, elimination proceeds at a fixed rate (zero-order).',
    category: 'Pharmacological Principles',
    difficulty: 2
  ),
  Question(
    id: 'pharmacology_013',
    question: 'Which is a Phase II metabolic reaction?',
    options: [
      'Reduction',
      'Glucuronidation',
      'Hydrolysis',
      'Oxidation',
      'Dealkylation'
    ],
    correctAnswerIndex: 1,
    explanation: 'Phase II = conjugation reactions; glucuronidation is the most common.',
    category: 'Pharmacological Principles',
    difficulty: 2
  ),
  Question(
    id: 'pharmacology_014',
    question: 'Most effective way to increase a drug\'s pharmacologic effect?',
    options: [
      'Prolong half-life',
      'Increase Vd',
      'Increase bioavailability',
      'Speed up metabolism',
      'Increase clearance'
    ],
    correctAnswerIndex: 2,
    explanation: 'More drug reaching systemic circulation enhances effect.',
    category: 'Pharmacological Principles',
    difficulty: 2
  ),
  Question(
    id: 'pharmacology_015',
    question: 'Four basic phases of pharmacokinetics?',
    options: [
      'Effect – dose – response – elimination',
      'Absorption – distribution – metabolism – elimination',
      'Absorption – effect – response – excretion',
      'Pharmacodynamics – toxicity – tolerance – clearance',
      'Bioavailability – binding – effect – metabolism'
    ],
    correctAnswerIndex: 1,
    explanation: 'ADME = Absorption, Distribution, Metabolism, Elimination.',
    category: 'Pharmacological Principles',
    difficulty: 1
  ),
  Question(
    id: 'pharmacology_016',
    question: 'Which shortens plasma half-life?',
    options: [
      'Increased Vd',
      'Liver failure',
      'Increased clearance',
      'Increased protein binding',
      'Increased lipophilicity'
    ],
    correctAnswerIndex: 2,
    explanation: 'Higher clearance → faster elimination → shorter half-life.',
    category: 'Pharmacological Principles',
    difficulty: 2
  ),
  Question(
    id: 'pharmacology_017',
    question: 'Enterohepatic circulation applies to:',
    options: [
      'Renally excreted drugs only',
      'Water-soluble drugs',
      'Drugs excreted in bile and reabsorbed',
      'Only peptide drugs',
      'Insoluble drugs in plasma'
    ],
    correctAnswerIndex: 2,
    explanation: 'Drugs excreted into bile and reabsorbed (e.g., morphine, oral contraceptives).',
    category: 'Pharmacological Principles',
    difficulty: 2
  ),
  Question(
    id: 'pharmacology_018',
    question: 'What defines a drug\'s capacity to produce maximal response?',
    options: [
      'Potency',
      'Tolerance',
      'Efficacy',
      'Half-life',
      'Induction'
    ],
    correctAnswerIndex: 2,
    explanation: 'Efficacy = maximal therapeutic response achievable.',
    category: 'Pharmacological Principles',
    difficulty: 2
  ),
  Question(
    id: 'pharmacology_019',
    question: 'Which reflects a drug\'s potency?',
    options: [
      'Route of administration',
      'Half-life',
      'EC50 on dose-response curve',
      'Volume of distribution',
      'Elimination rate'
    ],
    correctAnswerIndex: 2,
    explanation: 'EC50 = dose required for 50% of max effect; lower EC50 = higher potency.',
    category: 'Pharmacological Principles',
    difficulty: 2
  ),
  Question(
    id: 'pharmacology_020',
    question: 'Which drug induces CYP enzymes?',
    options: [
      'Ketoconazole',
      'Cimetidine',
      'Rifampin',
      'Grapefruit extract',
      'Erythromycin'
    ],
    correctAnswerIndex: 2,
    explanation: 'Rifampin induces CYP → increases metabolism, lowers drug effect.',
    category: 'Pharmacological Principles',
    difficulty: 2
  ),
  Question(
    id: 'pharmacology_021',
    question: 'Increased plasma protein binding causes all EXCEPT:',
    options: [
      'Lower free fraction',
      'Possible reduced effect',
      'Reduced distribution',
      'Increased clearance',
      'Longer half-life'
    ],
    correctAnswerIndex: 3,
    explanation: 'Bound drug is not cleared; clearance decreases, not increases.',
    category: 'Pharmacological Principles',
    difficulty: 2
  ),
  Question(
    id: 'pharmacology_022',
    question: 'Therapeutic index formula?',
    options: [
      'ED50 / LD50',
      'LD50 / ED50',
      'EC50 × Tmax',
      'Vd / t½',
      'Cmax / Tmax'
    ],
    correctAnswerIndex: 1,
    explanation: 'TI = LD50 / ED50; higher = safer drug.',
    category: 'Pharmacological Principles',
    difficulty: 2
  ),
  Question(
    id: 'pharmacology_023',
    question: 'Which PK parameter does NOT change with dose?',
    options: [
      'Vd',
      'Half-life',
      'Plasma concentration',
      'Clearance',
      'Bioavailability'
    ],
    correctAnswerIndex: 3,
    explanation: 'Clearance is usually constant, except with saturation (zero-order).',
    category: 'Pharmacological Principles',
    difficulty: 2
  ),
  Question(
    id: 'pharmacology_024',
    question: 'What does the plateau of a dose-response curve indicate?',
    options: [
      'Maximum response reached',
      'Onset of action',
      'No therapeutic effect',
      'Toxic dose range',
      'Complete elimination'
    ],
    correctAnswerIndex: 0,
    explanation: 'Plateau shows that increasing dose further does not increase effect.',
    category: 'Pharmacological Principles',
    difficulty: 2
  ),
  Question(
    id: 'pharmacology_025',
    question: 'Increasing dose raises toxicity without raising efficacy. This indicates:',
    options: [
      'Tolerance',
      'Zero-order kinetics',
      'Low therapeutic index',
      'Increased clearance',
      'High bioavailability'
    ],
    correctAnswerIndex: 2,
    explanation: 'Narrow TI = therapeutic & toxic doses are close.',
    category: 'Pharmacological Principles',
    difficulty: 2
  ),
  Question(
    id: 'pharmacology_026',
    question: 'Non-competitive antagonism is characterized by:',
    options: [
      'Temporary receptor blockade',
      'Overcome by agonist dose',
      'Acts via non-receptor mechanism',
      'Reduces max effect, EC50 unchanged',
      'Shifts EC50 left'
    ],
    correctAnswerIndex: 3,
    explanation: 'Non-competitive antagonists lower max efficacy but usually don\'t alter EC50.',
    category: 'Pharmacological Principles',
    difficulty: 2
  ),
  Question(
    id: 'pharmacology_027',
    question: 'Which drug shows dose-dependent zero-order elimination?',
    options: [
      'Morphine',
      'Midazolam',
      'Furosemide',
      'Phenytoin',
      'Dexamethasone'
    ],
    correctAnswerIndex: 3,
    explanation: 'Phenytoin elimination saturates → zero-order kinetics.',
    category: 'Pharmacological Principles',
    difficulty: 2
  ),
  Question(
    id: 'pharmacology_028',
    question: 'If the free fraction of a highly protein-bound drug increases, what happens?',
    options: [
      'Effect decreases',
      'Elimination decreases',
      'Effect may increase',
      'Vd decreases',
      'Therapeutic index widens'
    ],
    correctAnswerIndex: 2,
    explanation: 'Free drug is active → increased pharmacologic effect.',
    category: 'Pharmacological Principles',
    difficulty: 2
  ),
  Question(
    id: 'pharmacology_029',
    question: 'Which is a pharmacodynamic parameter?',
    options: [
      'Clearance',
      'EC50',
      'Vd',
      'Half-life',
      'Absorption rate'
    ],
    correctAnswerIndex: 1,
    explanation: 'EC50 reflects concentration for 50% max effect → pharmacodynamics.',
    category: 'Pharmacological Principles',
    difficulty: 2
  ),
  Question(
    id: 'pharmacology_030',
    question: 'Which of the following is NOT correct for reducing plasma drug concentration?',
    options: [
      'Administering activated charcoal',
      'Performing hemodialysis',
      'Inducing CYP enzymes',
      'Increasing enterohepatic circulation',
      'Acidification'
    ],
    correctAnswerIndex: 3,
    explanation: 'Enterohepatic circulation increases reabsorption and prolongs drug presence in plasma, rather than reducing it.',
    category: 'Pharmacological Principles',
    difficulty: 2
  ),
  Question(
    id: 'pharmacology_031',
    question: 'Which opioid develops tolerance the fastest?',
    options: [
      'Morphine',
      'Fentanyl',
      'Meperidine',
      'Sufentanil',
      'Remifentanil'
    ],
    correctAnswerIndex: 4,
    explanation: 'Remifentanil is ultra–short-acting and tolerance develops very quickly, often causing rebound pain after infusion.',
    category: 'Pharmacological Principles',
    difficulty: 2
  ),
  Question(
    id: 'pharmacology_032',
    question: 'Which drug\'s effect does NOT vary with dose?',
    options: [
      'Paracetamol',
      'Morphine',
      'Propofol',
      'Aspirin (antiplatelet dose)',
      'Midazolam'
    ],
    correctAnswerIndex: 3,
    explanation: 'Low-dose aspirin irreversibly inhibits platelet cyclooxygenase. The effect does not increase with dose; it remains fixed.',
    category: 'Pharmacological Principles',
    difficulty: 2
  ),
  Question(
    id: 'pharmacology_033',
    question: 'Which leads to increased drug levels via enzyme inhibition?',
    options: [
      'Rifampin',
      'Carbamazepine',
      'Grapefruit juice',
      'Phenobarbital',
      'Furosemide'
    ],
    correctAnswerIndex: 2,
    explanation: 'Grapefruit juice inhibits CYP3A4, increasing plasma concentrations of many drugs.',
    category: 'Pharmacological Principles',
    difficulty: 2
  ),
  Question(
    id: 'pharmacology_034',
    question: 'What is a drug\'s threshold dose?',
    options: [
      'Maximum effective dose',
      'Lowest dose at which effect is first observed',
      'Dose at which toxic effects begin',
      'Dose at which elimination starts',
      'Dose at which plasma concentration stabilizes'
    ],
    correctAnswerIndex: 1,
    explanation: 'Threshold dose = lowest dose producing a detectable therapeutic effect.',
    category: 'Pharmacological Principles',
    difficulty: 2
  ),
  Question(
    id: 'pharmacology_035',
    question: 'Which is correct about a drug with a high volume of distribution (Vd)?',
    options: [
      'Highly water-soluble',
      'Remains in plasma',
      'Lipophilic in nature',
      'Eliminated only renally',
      'Rapidly metabolized'
    ],
    correctAnswerIndex: 2,
    explanation: 'High Vd drugs are usually lipophilic, widely distributed in tissues, and low in plasma concentration.',
    category: 'Pharmacological Principles',
    difficulty: 2
  ),
  Question(
    id: 'pharmacology_036',
    question: 'Which is used to determine a drug\'s therapeutic range?',
    options: [
      'Half-life & Cmax',
      'Minimum toxic and minimum effective concentration',
      'Tmax & bioavailability',
      'Clearance & Vd',
      'Plasma protein binding'
    ],
    correctAnswerIndex: 1,
    explanation: 'The therapeutic range is the interval between minimum effective concentration and minimum toxic concentration.',
    category: 'Pharmacological Principles',
    difficulty: 2
  ),
  Question(
    id: 'pharmacology_037',
    question: 'Why do lipophilic drugs have longer effects in elderly patients?',
    options: [
      'Increased clearance',
      'Accumulation in adipose tissue',
      'Increased total body water',
      'Increased hepatic blood flow',
      'Reduced protein binding'
    ],
    correctAnswerIndex: 1,
    explanation: 'Elderly patients have more adipose tissue; lipophilic drugs accumulate there, slowing elimination and prolonging effect.',
    category: 'Pharmacological Principles',
    difficulty: 2
  ),
  Question(
    id: 'pharmacology_038',
    question: 'Which statement about pharmacokinetics is correct?',
    options: [
      'Half-life depends only on elimination',
      'Volume of distribution is inversely related to plasma concentration',
      'Bioavailability applies only to parenteral drugs',
      'Clearance reflects biological effect',
      'Tmax = lowest plasma concentration time'
    ],
    correctAnswerIndex: 1,
    explanation: 'Vd = Total drug / Plasma concentration. As plasma concentration decreases, Vd increases.',
    category: 'Pharmacological Principles',
    difficulty: 2
  ),
  Question(
    id: 'pharmacology_039',
    question: 'A dose–response curve does NOT help determine:',
    options: [
      'ED₅₀',
      'LD₅₀',
      'Efficacy',
      'Potency',
      'Half-life'
    ],
    correctAnswerIndex: 4,
    explanation: 'Half-life is pharmacokinetic. The dose–response curve provides pharmacodynamic info (ED₅₀, potency, efficacy).',
    category: 'Pharmacological Principles',
    difficulty: 2
  ),
  Question(
    id: 'pharmacology_040',
    question: 'Which is true for first-order drug elimination?',
    options: [
      'Fixed amount eliminated',
      'Fixed proportion eliminated',
      'Depends only on dose',
      'Represents saturable metabolism',
      'Valid when enzymes are saturated'
    ],
    correctAnswerIndex: 1,
    explanation: 'First-order = constant percentage eliminated. Zero-order = constant amount eliminated.',
    category: 'Pharmacological Principles',
    difficulty: 2
  ),
  Question(
    id: 'pharmacology_041',
    question: 'When is Vd most decreased?',
    options: [
      'Pregnancy',
      'Sepsis',
      'Hypoproteinemia',
      'High plasma protein binding',
      'Burns'
    ],
    correctAnswerIndex: 3,
    explanation: 'Strong protein binding retains drug in plasma, lowering Vd.',
    category: 'Pharmacological Principles',
    difficulty: 2
  ),
  Question(
    id: 'pharmacology_042',
    question: 'Feature of highly protein-bound drugs?',
    options: [
      'Free fraction increases',
      'Easier tissue distribution',
      'Shorter duration of action',
      'Low volume of distribution',
      'Increased clearance'
    ],
    correctAnswerIndex: 3,
    explanation: 'Strong binding → drug stays in plasma → low Vd.',
    category: 'Pharmacological Principles',
    difficulty: 2
  ),
  Question(
    id: 'pharmacology_043',
    question: 'Which prolongs half-life?',
    options: [
      'Increased clearance',
      'Increased Vd',
      'Faster metabolism',
      'Enhanced renal function',
      'Low lipophilicity'
    ],
    correctAnswerIndex: 1,
    explanation: 't½ = (0.693 × Vd) / Clearance. Higher Vd → longer half-life.',
    category: 'Pharmacological Principles',
    difficulty: 2
  ),
  Question(
    id: 'pharmacology_044',
    question: 'Which is true for highly water-soluble drugs?',
    options: [
      'Easily cross CNS',
      'Strong protein binding',
      'Slow renal elimination',
      'Low volume of distribution',
      'Always undergo hepatic metabolism'
    ],
    correctAnswerIndex: 3,
    explanation: 'Hydrophilic drugs remain in plasma → low Vd.',
    category: 'Pharmacological Principles',
    difficulty: 2
  ),
  Question(
    id: 'pharmacology_045',
    question: 'What does ED₅₀ represent?',
    options: [
      'Half-life',
      'Half of toxic dose',
      'Time to onset',
      'Dose effective in 50% of population',
      'Lowest measurable plasma concentration'
    ],
    correctAnswerIndex: 3,
    explanation: 'ED₅₀ = dose producing therapeutic effect in 50% of subjects.',
    category: 'Pharmacological Principles',
    difficulty: 2
  ),
  Question(
    id: 'pharmacology_046',
    question: 'Which drug follows zero-order elimination?',
    options: [
      'Fentanyl',
      'Heparin',
      'Ethanol',
      'Lidocaine',
      'Propofol'
    ],
    correctAnswerIndex: 2,
    explanation: 'Ethanol is eliminated at a constant amount (zero-order) due to enzyme saturation.',
    category: 'Pharmacological Principles',
    difficulty: 2
  ),
  Question(
    id: 'pharmacology_047',
    question: 'In drug infusion, time to steady state depends mostly on:',
    options: [
      'Dose',
      'Route',
      'Half-life',
      'Body weight',
      'Creatinine clearance'
    ],
    correctAnswerIndex: 2,
    explanation: 'Steady state ≈ 4–5 half-lives.',
    category: 'Pharmacological Principles',
    difficulty: 2
  ),
  Question(
    id: 'pharmacology_048',
    question: 'Which is a CYP enzyme inhibitor?',
    options: [
      'Rifampin',
      'Carbamazepine',
      'Ketoconazole',
      'Phenobarbital',
      'Cigarette smoke'
    ],
    correctAnswerIndex: 2,
    explanation: 'Ketoconazole inhibits CYP enzymes. The others are inducers.',
    category: 'Pharmacological Principles',
    difficulty: 2
  ),
  Question(
    id: 'pharmacology_049',
    question: 'Tmax represents:',
    options: [
      'Maximum toxic effect',
      'Minimum effective dose',
      'Duration of maximum effect',
      'Time to reach peak plasma concentration',
      'Onset of elimination'
    ],
    correctAnswerIndex: 3,
    explanation: 'Tmax = time to peak plasma concentration.',
    category: 'Pharmacological Principles',
    difficulty: 2
  ),
  Question(
    id: 'pharmacology_050',
    question: 'Which is FALSE about lipophilic drugs?',
    options: [
      'Easily cross membranes',
      'High Vd',
      'Rapidly excreted by kidneys',
      'Can cross CNS',
      'Usually undergo hepatic metabolism'
    ],
    correctAnswerIndex: 2,
    explanation: 'Lipophilic drugs require hepatic metabolism before renal elimination.',
    category: 'Pharmacological Principles',
    difficulty: 2
  ),
  Question(
    id: 'pharmacology_051',
    question: 'Which is most related to receptor affinity?',
    options: [
      'Potency',
      'Efficacy',
      'Tmax',
      'Clearance',
      'Half-life'
    ],
    correctAnswerIndex: 0,
    explanation: 'Potency reflects affinity and the dose needed for effect.',
    category: 'Pharmacological Principles',
    difficulty: 2
  ),
  Question(
    id: 'pharmacology_052',
    question: 'Which class has the narrowest therapeutic index?',
    options: [
      'Paracetamol',
      'Local anesthetics',
      'Benzodiazepines',
      'Digoxin',
      'Inhaled anesthetics'
    ],
    correctAnswerIndex: 3,
    explanation: 'Digoxin has a very narrow TI → dosing must be precise.',
    category: 'Pharmacological Principles',
    difficulty: 2
  ),
  Question(
    id: 'pharmacology_053',
    question: 'Which is correct about efficacy?',
    options: [
      'Directly related to receptor affinity',
      'Same as potency',
      'Defines the maximum effect achievable',
      'Time to onset of effect',
      'Measured by therapeutic index'
    ],
    correctAnswerIndex: 2,
    explanation: 'Efficacy = maximal response achievable, independent of potency.',
    category: 'Pharmacological Principles',
    difficulty: 2
  ),
  Question(
    id: 'pharmacology_054',
    question: 'A rightward shift in the dose–response curve indicates:',
    options: [
      'Increased potency',
      'Decreased potency',
      'Increased efficacy',
      'Increased Vd',
      'Increased Tmax'
    ],
    correctAnswerIndex: 1,
    explanation: 'Rightward shift → higher dose required for same effect → lower potency.',
    category: 'Pharmacological Principles',
    difficulty: 2
  ),
  Question(
    id: 'pharmacology_055',
    question: 'If a drug\'s half-life is 6 hours, when will steady state be reached with continuous infusion?',
    options: [
      '6 h',
      '12 h',
      '24 h',
      '30 h',
      '48 h'
    ],
    correctAnswerIndex: 2,
    explanation: 'Steady state ≈ 4–5 half-lives → 24 h.',
    category: 'Pharmacological Principles',
    difficulty: 2
  ),
  Question(
    id: 'pharmacology_056',
    question: 'Therapeutic index is:',
    options: [
      'ED₅₀ / TD₅₀',
      'LD₅₀ / ED₅₀',
      'Tmax / t½',
      'Plasma conc. / Vd',
      'Clearance / ED₅₀'
    ],
    correctAnswerIndex: 1,
    explanation: 'TI = LD₅₀ / ED₅₀. Larger TI = safer drug.',
    category: 'Pharmacological Principles',
    difficulty: 2
  ),
  Question(
    id: 'pharmacology_057',
    question: 'Which route bypasses first-pass metabolism?',
    options: [
      'Oral',
      'Rectal (upper portion)',
      'Sublingual',
      'Enteral tube',
      'Topical non-transdermal cream'
    ],
    correctAnswerIndex: 2,
    explanation: 'Sublingual absorption → direct systemic circulation → no first-pass effect.',
    category: 'Pharmacological Principles',
    difficulty: 2
  ),
  Question(
    id: 'pharmacology_058',
    question: 'Which does NOT affect plasma protein binding?',
    options: [
      'Albumin level',
      'Lipophilicity',
      'Blood pH',
      'Molecular weight',
      'α₁-acid glycoprotein level'
    ],
    correctAnswerIndex: 3,
    explanation: 'Protein binding depends on albumin, α₁-acid glycoprotein, pH, and lipophilicity, not molecular weight.',
    category: 'Pharmacological Principles',
    difficulty: 2
  ),
  Question(
    id: 'pharmacology_059',
    question: 'Which drug has high first-pass metabolism?',
    options: [
      'Propofol',
      'Fentanyl',
      'Morphine',
      'Lidocaine',
      'Ketamine'
    ],
    correctAnswerIndex: 2,
    explanation: 'Morphine undergoes extensive hepatic first-pass metabolism → low oral bioavailability.',
    category: 'Pharmacological Principles',
    difficulty: 2
  ),
  Question(
    id: 'pharmacology_060',
    question: 'Which is a feature of non-competitive antagonists?',
    options: [
      'No receptor affinity',
      'Reduce maximal response',
      'Increase ED₅₀',
      'Reversible',
      'Bind at the same site as agonist'
    ],
    correctAnswerIndex: 1,
    explanation: 'Non-competitive antagonists irreversibly reduce maximum response.',
    category: 'Pharmacological Principles',
    difficulty: 2
  ),
  Question(
    id: 'pharmacology_061',
    question: 'Which strongly inhibits CYP3A4?',
    options: [
      'Rifampin',
      'Phenytoin',
      'Carbamazepine',
      'Erythromycin',
      'Barbiturates'
    ],
    correctAnswerIndex: 3,
    explanation: 'Erythromycin inhibits CYP3A4. The others are inducers.',
    category: 'Pharmacological Principles',
    difficulty: 2
  ),
  Question(
    id: 'pharmacology_062',
    question: 'Which plays the least role in termination of IV anesthetics?',
    options: [
      'Redistribution',
      'Hepatic metabolism',
      'Renal excretion',
      'Extrahepatic metabolism',
      'Plasma esterases'
    ],
    correctAnswerIndex: 2,
    explanation: 'IV anesthetic termination mainly via redistribution & metabolism; renal excretion contributes the least.',
    category: 'Pharmacological Principles',
    difficulty: 2
  ),
  Question(
    id: 'pharmacology_063',
    question: 'Which increases minimum alveolar concentration (MAC)?',
    options: [
      'Hyperthermia',
      'Hyponatremia',
      'Alcohol use',
      'Opioids',
      'Aging'
    ],
    correctAnswerIndex: 0,
    explanation: 'Hyperthermia increases MAC; opioids, hyponatremia, alcohol, and aging decrease MAC.',
    category: 'Pharmacological Principles',
    difficulty: 2
  ),
  Question(
    id: 'pharmacology_064',
    question: 'Which prolongs the effect of non-depolarizing neuromuscular blockers?',
    options: [
      'Acetylcholinesterase inhibitors',
      'Hypokalemia',
      'Hypermagnesemia',
      'Alkalosis',
      'Calcium gluconate'
    ],
    correctAnswerIndex: 2,
    explanation: 'Hypermagnesemia enhances neuromuscular blockade.',
    category: 'Pharmacological Principles',
    difficulty: 2
  ),
];

