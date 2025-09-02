import '../../models/question.dart';

List<Question> chronicPainManagementQuestions = [
  Question(
    id: 'chronic_pain_management_001',
    question: 'Which of the following pain types falls under neuropathic pain?',
    options: [
      'Pain due to bone metastasis',
      'Pain after burn injury',
      'Diabetic peripheral neuropathy',
      'Pain due to rheumatoid arthritis',
      'Pain from visceral organ distension'
    ],
    correctAnswerIndex: 2,
    explanation: 'Neuropathic pain originates from damage to the nervous system itself. Diabetic neuropathy is a classic example.',
    category: 'Chronic Pain Management',
    difficulty: 2
  ),
  Question(
    id: 'chronic_pain_management_002',
    question: 'What is the purpose of opioid rotation?',
    options: [
      'To increase opioid dose',
      'To accelerate tolerance development',
      'To reduce adverse effects while maintaining analgesia',
      'To induce opioid dependence',
      'To reduce neuropathic pain'
    ],
    correctAnswerIndex: 2,
    explanation: 'Different opioids act on different receptor subtypes. Rotation can preserve analgesia while reducing side effects.',
    category: 'Chronic Pain Management',
    difficulty: 2
  ),
  Question(
    id: 'chronic_pain_management_003',
    question: 'Which drug group is considered an adjuvant analgesic?',
    options: [
      'NSAIDs',
      'Paracetamol',
      'Tricyclic antidepressants',
      'Morphine',
      'Fentanyl'
    ],
    correctAnswerIndex: 2,
    explanation: 'Adjuvant analgesics are not primarily analgesics but enhance pain control. TCAs are effective in neuropathic pain.',
    category: 'Chronic Pain Management',
    difficulty: 2
  ),
  Question(
    id: 'chronic_pain_management_004',
    question: 'Which mechanism plays a major role in chronic pain pathophysiology?',
    options: [
      'Only peripheral sensitization',
      'Only activation of somatic pain pathways',
      'Central sensitization and synaptic plasticity',
      'Chemoreceptor damage',
      'Only inflammatory response'
    ],
    correctAnswerIndex: 2,
    explanation: 'Chronic pain involves increased excitability in the CNS (central sensitization) and long-term neural plasticity.',
    category: 'Chronic Pain Management',
    difficulty: 2
  ),
  Question(
    id: 'chronic_pain_management_005',
    question: 'In the WHO 3-step analgesic ladder, which option represents step 2?',
    options: [
      'Non-opioid analgesics only',
      'Strong opioids',
      'Adjuvant therapy',
      'Weak opioid + non-opioid',
      'Corticosteroids'
    ],
    correctAnswerIndex: 3,
    explanation: 'Step 1 → non-opioid; Step 2 → weak opioid + non-opioid; Step 3 → strong opioids.',
    category: 'Chronic Pain Management',
    difficulty: 2
  ),
  Question(
    id: 'chronic_pain_management_006',
    question: 'Which of the following is an invasive interventional pain therapy?',
    options: [
      'Use of amitriptyline',
      'Starting gabapentin',
      'Spinal opioid infusion',
      'Physical therapy',
      'Psychotherapy'
    ],
    correctAnswerIndex: 2,
    explanation: 'Interventional pain therapy includes nerve blocks, neurostimulation, and intrathecal drug delivery.',
    category: 'Chronic Pain Management',
    difficulty: 2
  ),
  Question(
    id: 'chronic_pain_management_007',
    question: 'Which statement about Complex Regional Pain Syndrome (CRPS) is FALSE?',
    options: [
      'Autonomic dysfunction is common',
      'Allodynia and hyperalgesia are characteristic',
      'Peripheral nerve injury is present in Type I',
      'Sympathetic blocks may be used in treatment',
      'Early mobilization is beneficial'
    ],
    correctAnswerIndex: 2,
    explanation: 'CRPS Type I (Reflex Sympathetic Dystrophy) occurs without identifiable nerve injury. Type II involves nerve damage.',
    category: 'Chronic Pain Management',
    difficulty: 2
  ),
  Question(
    id: 'chronic_pain_management_008',
    question: 'In which condition is topical capsaicin effective?',
    options: [
      'Acute inflammatory arthritis',
      'Migraine',
      'Phantom pain',
      'Postherpetic neuralgia',
      'Visceral pain'
    ],
    correctAnswerIndex: 3,
    explanation: 'Capsaicin acts on C-fibers, useful particularly in postherpetic neuralgia.',
    category: 'Chronic Pain Management',
    difficulty: 2
  ),
  Question(
    id: 'chronic_pain_management_009',
    question: 'Which is true regarding transdermal fentanyl for chronic cancer pain?',
    options: [
      'Provides rapid analgesia',
      'Effective for acute pain attacks',
      'Has a release duration of 72 hours',
      'Must be replaced every 12 hours',
      'Used only in terminal stage'
    ],
    correctAnswerIndex: 2,
    explanation: 'Transdermal fentanyl is a slow-release form: onset in 12–24h, duration up to 72h.',
    category: 'Chronic Pain Management',
    difficulty: 2
  ),
  Question(
    id: 'chronic_pain_management_010',
    question: 'What most clearly differentiates neuropathic pain from somatic pain?',
    options: [
      'Well-localized pain',
      'Associated with inflammation',
      'Presence of allodynia and paresthesia',
      'Worsens with movement',
      'Responsive to NSAIDs'
    ],
    correctAnswerIndex: 2,
    explanation: 'Allodynia (pain from non-painful stimulus) and paresthesia are hallmarks of neuropathic pain.',
    category: 'Chronic Pain Management',
    difficulty: 2
  ),
  Question(
    id: 'chronic_pain_management_011',
    question: 'Which approach helps prevent opioid tolerance?',
    options: [
      'Shortening dosing interval',
      'Preferring long-acting opioids',
      'Maintaining the same dose',
      'Adding adjuvant therapy',
      'Adding corticosteroids'
    ],
    correctAnswerIndex: 3,
    explanation: 'Adjuvants (antidepressants, anticonvulsants) reduce opioid requirement → slow tolerance development.',
    category: 'Chronic Pain Management',
    difficulty: 2
  ),
  Question(
    id: 'chronic_pain_management_012',
    question: 'Which anticonvulsant is most commonly used in chronic neuropathic pain?',
    options: [
      'Valproic acid',
      'Levetiracetam',
      'Gabapentin',
      'Phenobarbital',
      'Carbamazepine'
    ],
    correctAnswerIndex: 2,
    explanation: 'Gabapentin and pregabalin are first-line anticonvulsants for neuropathic pain.',
    category: 'Chronic Pain Management',
    difficulty: 2
  ),
  Question(
    id: 'chronic_pain_management_013',
    question: 'Spinal cord stimulation is most beneficial in:',
    options: [
      'Acute postoperative pain',
      'Psychosomatic pain',
      'Visceral abdominal pain',
      'Ischemic limb pain',
      'Osteoarthritis pain'
    ],
    correctAnswerIndex: 3,
    explanation: 'SCS is effective in critical ischemia, refractory angina, and CRPS.',
    category: 'Chronic Pain Management',
    difficulty: 2
  ),
  Question(
    id: 'chronic_pain_management_014',
    question: 'In suspected opioid-induced hyperalgesia, which is appropriate?',
    options: [
      'Increase opioid dose',
      'Rotate opioids',
      'Stop opioids and give NSAIDs only',
      'Provide sedation',
      'Start benzodiazepines'
    ],
    correctAnswerIndex: 1,
    explanation: 'Opioid hyperalgesia = paradoxical pain increase → managed with opioid reduction or rotation.',
    category: 'Chronic Pain Management',
    difficulty: 2
  ),
  Question(
    id: 'chronic_pain_management_015',
    question: 'Which drug is NOT suitable for intrathecal use due to dose-dependent neurotoxicity?',
    options: [
      'Fentanyl',
      'Morphine',
      'Ketamine',
      'Bupivacaine',
      'Midazolam'
    ],
    correctAnswerIndex: 2,
    explanation: 'Intrathecal ketamine (with preservatives) carries risk of neurotoxicity → generally avoided.',
    category: 'Chronic Pain Management',
    difficulty: 2
  ),
  Question(
    id: 'chronic_pain_management_016',
    question: 'In terminal patients unable to take oral opioids, which route is best?',
    options: [
      'Transdermal',
      'Intranasal',
      'Enteral',
      'Subcutaneous',
      'Sublingual'
    ],
    correctAnswerIndex: 3,
    explanation: 'Subcutaneous opioid delivery is practical and effective in terminal care.',
    category: 'Chronic Pain Management',
    difficulty: 2
  ),
  Question(
    id: 'chronic_pain_management_017',
    question: 'Which statement is true about depression/anxiety in chronic pain?',
    options: [
      'Psychological symptoms worsen as pain decreases',
      'Occur only in patients on opioids',
      'Treating depression improves pain control',
      'Psychotherapy worsens pain',
      'Psychiatric assessment should not accompany pain treatment'
    ],
    correctAnswerIndex: 2,
    explanation: 'Depression and anxiety are common in chronic pain. Their treatment enhances overall pain outcomes.',
    category: 'Chronic Pain Management',
    difficulty: 2
  ),
  Question(
    id: 'chronic_pain_management_018',
    question: 'Which invasive option is suitable for drug-resistant chronic low back pain?',
    options: [
      'Ultrasound-guided trigger point injection',
      'Discectomy',
      'Intrathecal opioid infusion',
      'TENS',
      'Epidural steroid injection'
    ],
    correctAnswerIndex: 2,
    explanation: 'Reserved for refractory chronic back pain cases.',
    category: 'Chronic Pain Management',
    difficulty: 2
  ),
  Question(
    id: 'chronic_pain_management_019',
    question: 'Which patient has the highest opioid dependence risk?',
    options: [
      'Elderly with low-dose opioids for neuropathic pain',
      'Terminal cancer patient',
      'Young adult with anxiety disorder history',
      'Short-term opioids after acute trauma',
      'Post-op patient on opioids for 3 days'
    ],
    correctAnswerIndex: 2,
    explanation: 'Psychiatric comorbidity increases risk of opioid dependence.',
    category: 'Chronic Pain Management',
    difficulty: 2
  ),
  Question(
    id: 'chronic_pain_management_020',
    question: 'Why is multidisciplinary management essential in chronic pain?',
    options: [
      'Because pharmacological treatment alone is insufficient',
      'To reduce surgical need',
      'Because physiological, psychological, and social factors all play roles',
      'To prevent opioid dependence only',
      'To shorten treatment duration'
    ],
    correctAnswerIndex: 2,
    explanation: 'Chronic pain requires holistic management beyond drugs alone.',
    category: 'Chronic Pain Management',
    difficulty: 2
  ),
  Question(
    id: 'chronic_pain_management_021',
    question: 'Which drug blocks voltage-gated calcium channels on sensory neurons?',
    options: [
      'Fentanyl',
      'Amitriptyline',
      'Gabapentin',
      'Paroxetine',
      'Tramadol'
    ],
    correctAnswerIndex: 2,
    explanation: 'Gabapentin/pregabalin block presynaptic Ca²⁺ channels → effective in neuropathic pain.',
    category: 'Chronic Pain Management',
    difficulty: 2
  ),
  Question(
    id: 'chronic_pain_management_022',
    question: 'Most commonly used screening tool for neuropathic pain?',
    options: [
      'DN4 (Douleur Neuropathique 4)',
      'McGill Pain Questionnaire',
      'VAS (Visual Analog Scale)',
      'Leeds Assessment of Neuropathic Symptoms',
      'Beck Depression Inventory'
    ],
    correctAnswerIndex: 0,
    explanation: 'Simple and rapid tool to detect neuropathic pain features.',
    category: 'Chronic Pain Management',
    difficulty: 2
  ),
  Question(
    id: 'chronic_pain_management_023',
    question: 'Which drug has both antidepressant and analgesic effects?',
    options: [
      'Sertraline',
      'Tramadol',
      'Amitriptyline',
      'Diazepam',
      'Furosemide'
    ],
    correctAnswerIndex: 2,
    explanation: 'TCAs (esp. amitriptyline) are first-line for neuropathic pain due to dual mood + analgesic benefits.',
    category: 'Chronic Pain Management',
    difficulty: 2
  ),
  Question(
    id: 'chronic_pain_management_024',
    question: 'What is the main purpose of sympathetic block in CRPS?',
    options: [
      'To provide permanent cure',
      'To eliminate mechanical pain',
      'For diagnostic and therapeutic assessment',
      'To provide sedation',
      'To enhance motor function'
    ],
    correctAnswerIndex: 2,
    explanation: 'Sympathetic block confirms diagnosis and gives temporary relief in CRPS.',
    category: 'Chronic Pain Management',
    difficulty: 2
  ),
  Question(
    id: 'chronic_pain_management_025',
    question: 'Capsaicin exerts analgesic effect by depleting which neuropeptide?',
    options: [
      'CGRP',
      'Glutamate',
      'Substance P',
      'Endorphin',
      'Serotonin'
    ],
    correctAnswerIndex: 2,
    explanation: 'Long-term capsaicin use depletes Substance P → reduces pain transmission.',
    category: 'Chronic Pain Management',
    difficulty: 2
  ),
  Question(
    id: 'chronic_pain_management_026',
    question: 'In which condition is spinal cord stimulation least effective?',
    options: [
      'CRPS',
      'Refractory angina',
      'Ischemic leg pain',
      'Postherpetic neuralgia',
      'Acute visceral pain'
    ],
    correctAnswerIndex: 4,
    explanation: 'SCS is not effective for acute visceral pain; works best in neuropathic and ischemic pain.',
    category: 'Chronic Pain Management',
    difficulty: 2
  ),
  Question(
    id: 'chronic_pain_management_027',
    question: 'What explains brain structural changes in chronic pain?',
    options: [
      'Increased neuron number',
      'Glial proliferation',
      'Synaptic plasticity & central sensitization',
      'Increased peripheral receptor number',
      'Decreased CSF volume'
    ],
    correctAnswerIndex: 2,
    explanation: 'Chronic pain alters brain function/structure via long-term plasticity.',
    category: 'Chronic Pain Management',
    difficulty: 2
  ),
  Question(
    id: 'chronic_pain_management_028',
    question: 'Which statement is FALSE about non-opioid pharmacologic approaches to chronic pain?',
    options: [
      'Antidepressants can have analgesic effect',
      'Anticonvulsants reduce neuropathic pain',
      'NMDA antagonists reduce central sensitization',
      'Glucocorticoids are directly analgesic',
      'Local anesthetics are effective topically'
    ],
    correctAnswerIndex: 3,
    explanation: 'Steroids are anti-inflammatory, not inherently analgesic; they help indirectly in inflammatory pain.',
    category: 'Chronic Pain Management',
    difficulty: 2
  ),
  Question(
    id: 'chronic_pain_management_029',
    question: 'What is the main difference between opioid tolerance and dependence?',
    options: [
      'Tolerance irreversible, dependence temporary',
      'Dependence causes withdrawal on cessation; tolerance does not',
      'Tolerance occurs only with weak opioids',
      'Dependence enhances analgesic effect',
      'Tolerance is mainly psychological'
    ],
    correctAnswerIndex: 1,
    explanation: 'Tolerance = diminished effect. Dependence = withdrawal if stopped.',
    category: 'Chronic Pain Management',
    difficulty: 2
  ),
  Question(
    id: 'chronic_pain_management_030',
    question: 'Which of the following is NOT a neuropathic pain feature?',
    options: [
      'Electric shock-like sensation',
      'Burning pain',
      'Pain without stimulus (spontaneous)',
      'Swelling and redness',
      'Tingling, pins and needles'
    ],
    correctAnswerIndex: 3,
    explanation: 'These are inflammatory/visceral, not neuropathic features.',
    category: 'Chronic Pain Management',
    difficulty: 2
  ),
  Question(
    id: 'chronic_pain_management_031',
    question: 'Mechanism of action of Ziconotide?',
    options: [
      'NMDA antagonism',
      'Calcium channel blockade',
      'GABA receptor agonism',
      'Substance P antagonism',
      'Beta-endorphin release'
    ],
    correctAnswerIndex: 1,
    explanation: 'Ziconotide inhibits N-type voltage-gated Ca²⁺ channels; given intrathecally.',
    category: 'Chronic Pain Management',
    difficulty: 2
  ),
  Question(
    id: 'chronic_pain_management_032',
    question: 'Typical feature of opioid-induced hyperalgesia?',
    options: [
      'Increased opioid responsiveness',
      'Pain spreading over wider areas',
      'Increased exercise capacity',
      'Increased sedation',
      'Reduced sensitivity'
    ],
    correctAnswerIndex: 1,
    explanation: 'Paradoxical effect: pain becomes more widespread and intense.',
    category: 'Chronic Pain Management',
    difficulty: 2
  ),
  Question(
    id: 'chronic_pain_management_033',
    question: 'Which is true for CRPS Type II?',
    options: [
      'No nerve injury',
      'Sympathetic block ineffective',
      'Nerve injury is present',
      'Always associated with muscle atrophy',
      'Occurs only in lower limbs'
    ],
    correctAnswerIndex: 2,
    explanation: 'Type II = causalgia = identifiable nerve lesion.',
    category: 'Chronic Pain Management',
    difficulty: 2
  ),
  Question(
    id: 'chronic_pain_management_034',
    question: 'Mechanism of radiofrequency ablation in pain treatment?',
    options: [
      'Chemical neurolysis',
      'Thermal damage to interrupt conduction',
      'Electrical stimulation analgesia',
      'Local anesthetic effect',
      'Ion channel activation'
    ],
    correctAnswerIndex: 1,
    explanation: 'RFA destroys nerve conduction by heat → esp. facet joint pain.',
    category: 'Chronic Pain Management',
    difficulty: 2
  ),
  Question(
    id: 'chronic_pain_management_035',
    question: 'Tramadol\'s dual mechanism of action?',
    options: [
      'NMDA antagonism + GABA agonism',
      'Opioid agonism + serotonin/norepinephrine reuptake inhibition',
      'Local anesthetic effect + COX-2 inhibition',
      'Corticosteroid release + Na channel block',
      'Antihistamine + anticholinergic effects'
    ],
    correctAnswerIndex: 1,
    explanation: 'Tramadol = weak µ-opioid agonist + SNRI activity.',
    category: 'Chronic Pain Management',
    difficulty: 2
  ),
  Question(
    id: 'chronic_pain_management_036',
    question: 'Which is NOT a reason to discontinue opioids in chronic pain?',
    options: [
      'Uncontrolled sedation',
      'Opioid-induced hyperalgesia',
      'Increased dose requirement',
      'Severe respiratory depression',
      'Abuse/misuse'
    ],
    correctAnswerIndex: 2,
    explanation: 'Dose escalation alone ≠ discontinuation reason. Evaluate rotation or reassessment.',
    category: 'Chronic Pain Management',
    difficulty: 2
  ),
  Question(
    id: 'chronic_pain_management_037',
    question: 'When is opioid rotation most appropriate?',
    options: [
      'No side effects present',
      'Stable analgesia with same opioid',
      'Significant side effects develop',
      'Daily dose requirement decreases',
      'No need for adjuvant therapy'
    ],
    correctAnswerIndex: 2,
    explanation: 'Sedation, nausea, constipation → rotation helps improve tolerability.',
    category: 'Chronic Pain Management',
    difficulty: 2
  ),
  Question(
    id: 'chronic_pain_management_038',
    question: 'Which is least appropriate in non-cancer chronic pain opioid therapy?',
    options: [
      'Targeting functional improvement',
      'Careful dose titration',
      'Focusing only on pain intensity',
      'Risk-benefit assessment',
      'Multimodal approach'
    ],
    correctAnswerIndex: 2,
    explanation: 'Management should include function, mood, and risk evaluation, not just pain scale.',
    category: 'Chronic Pain Management',
    difficulty: 2
  ),
  Question(
    id: 'chronic_pain_management_039',
    question: 'How to diagnostically assess facet-mediated low back pain?',
    options: [
      'Discography',
      'EMG',
      'Epidural steroid injection',
      'Medial branch block',
      'TENS'
    ],
    correctAnswerIndex: 3,
    explanation: 'Facet pain confirmed by blocking medial branch nerves supplying facet joints.',
    category: 'Chronic Pain Management',
    difficulty: 2
  ),
  Question(
    id: 'chronic_pain_management_040',
    question: 'Why is amitriptyline useful in chronic pain?',
    options: [
      'Anticholinergic effect only',
      'GABA agonism',
      'Inhibits norepinephrine & serotonin reuptake',
      'Dopamine enhancing',
      'COX-2 inhibition'
    ],
    correctAnswerIndex: 2,
    explanation: 'TCAs enhance serotonin/norepinephrine transmission → analgesic effect in neuropathic pain.',
    category: 'Chronic Pain Management',
    difficulty: 2
  ),
  Question(
    id: 'chronic_pain_management_041',
    question: 'Which statement about adjuvant analgesics is FALSE?',
    options: [
      'Reduce opioid requirement',
      'Affect emotional component of pain',
      'Antidepressants & anticonvulsants included',
      'Sufficient as sole therapy for visceral pain',
      'Commonly used in neuropathic pain'
    ],
    correctAnswerIndex: 3,
    explanation: 'Visceral pain needs opioid/non-opioid therapy. Adjuvants alone aren\'t enough.',
    category: 'Chronic Pain Management',
    difficulty: 2
  ),
  Question(
    id: 'chronic_pain_management_042',
    question: 'Which block may be used in postherpetic neuralgia treatment?',
    options: [
      'Supraclavicular block',
      'Stellate ganglion block',
      'Saphenous nerve block',
      'Interscalene block',
      'Femoral nerve block'
    ],
    correctAnswerIndex: 1,
    explanation: 'In trigeminal/cervical dermatome postherpetic neuralgia, stellate ganglion block can be effective.',
    category: 'Chronic Pain Management',
    difficulty: 2
  ),
  Question(
    id: 'chronic_pain_management_043',
    question: 'Which drug group is considered most effective for central sensitization in chronic pain?',
    options: [
      'NSAIDs',
      'NMDA antagonists',
      'SSRI antidepressants',
      'Benzodiazepines',
      'Beta-blockers'
    ],
    correctAnswerIndex: 1,
    explanation: 'NMDA receptors play a key role in central sensitization. Agents like ketamine (NMDA antagonists) can attenuate this process.',
    category: 'Chronic Pain Management',
    difficulty: 2
  ),
  Question(
    id: 'chronic_pain_management_044',
    question: 'What is the first-line management for severe constipation during opioid therapy?',
    options: [
      'Start laxatives',
      'Discontinue opioid',
      'Give SSRIs',
      'Add prokinetics',
      'Only dietary changes'
    ],
    correctAnswerIndex: 0,
    explanation: 'Constipation is the most common and resistant opioid side effect. Routine prophylactic laxatives are recommended.',
    category: 'Chronic Pain Management',
    difficulty: 2
  ),
  Question(
    id: 'chronic_pain_management_045',
    question: 'In which condition is spinal cord stimulation more appropriate than opioid therapy?',
    options: [
      'Acute abdominal pain',
      'Musculoskeletal pain',
      'Ischemic leg pain (non-reconstructive)',
      'Fibromyalgia',
      'Tension-type headache'
    ],
    correctAnswerIndex: 2,
    explanation: 'SCS is particularly recommended for critical limb ischemia and CRPS.',
    category: 'Chronic Pain Management',
    difficulty: 2
  ),
  Question(
    id: 'chronic_pain_management_046',
    question: 'What is the most important predictor of spinal cord stimulation success?',
    options: [
      'Pain of visceral origin',
      'Previous opioid use',
      'Symptoms lasting >6 months',
      'Successful trial phase',
      'Unresponsiveness to physiotherapy'
    ],
    correctAnswerIndex: 3,
    explanation: 'A >50% reduction in pain during a preliminary SCS trial strongly predicts permanent success.',
    category: 'Chronic Pain Management',
    difficulty: 2
  ),
  Question(
    id: 'chronic_pain_management_047',
    question: 'What is the common analgesic mechanism of gabapentin and pregabalin?',
    options: [
      'NMDA receptor antagonism',
      'Sodium channel blockade',
      'L-type calcium channel inhibition',
      'Modulation of presynaptic voltage-gated calcium channels',
      'Endogenous opioid release'
    ],
    correctAnswerIndex: 3,
    explanation: 'They modulate N-type voltage-gated Ca²⁺ channels, reducing neurotransmitter release and pain transmission.',
    category: 'Chronic Pain Management',
    difficulty: 2
  ),
  Question(
    id: 'chronic_pain_management_048',
    question: 'Which statement about ziconotide is correct?',
    options: [
      'Administered orally',
      'Acts on GABA receptors',
      'Intrathecally administered conotoxin',
      'Has NSAID-like effects',
      'Must be combined with SSRIs'
    ],
    correctAnswerIndex: 2,
    explanation: 'Ziconotide is a peptide from cone snail toxin, given intrathecally, with possible severe neuropsychiatric side effects.',
    category: 'Chronic Pain Management',
    difficulty: 2
  ),
  Question(
    id: 'chronic_pain_management_049',
    question: 'Which receptor is most strongly associated with opioid addiction potential?',
    options: [
      'Kappa',
      'Sigma',
      'Delta',
      'Mu-1',
      'Mu-2'
    ],
    correctAnswerIndex: 3,
    explanation: 'Mu-1 receptors mediate analgesia and euphoria → closely linked with dependence.',
    category: 'Chronic Pain Management',
    difficulty: 2
  ),
  Question(
    id: 'chronic_pain_management_050',
    question: 'Why does intrathecal morphine cause longer respiratory depression compared to fentanyl?',
    options: [
      'Lipophilic nature',
      'Hydrophilic nature',
      'Strong binding capacity',
      'Rapid BBB penetration',
      'Low receptor affinity'
    ],
    correctAnswerIndex: 1,
    explanation: 'Hydrophilic drugs (morphine) stay longer in CSF and spread rostrally → prolonged respiratory depression.',
    category: 'Chronic Pain Management',
    difficulty: 2
  ),
  Question(
    id: 'chronic_pain_management_051',
    question: 'Which interventional method causes irreversible neural destruction?',
    options: [
      'Sympathetic nerve block',
      'Radiofrequency thermocoagulation',
      'Pulsed radiofrequency',
      'Spinal cord stimulation',
      'Local anesthetic infiltration'
    ],
    correctAnswerIndex: 1,
    explanation: 'Thermal RF ablation produces permanent neural injury and irreversible effect.',
    category: 'Chronic Pain Management',
    difficulty: 2
  ),
  Question(
    id: 'chronic_pain_management_052',
    question: 'How should the initial dose of a new opioid be determined during opioid rotation?',
    options: [
      'Give 100% of equianalgesic dose',
      'Start higher than previous dose',
      'Start at 25–50% of equianalgesic dose',
      'Keep same dose as before',
      'Never start at reduced dose'
    ],
    correctAnswerIndex: 2,
    explanation: 'Due to incomplete cross-tolerance, the new opioid should begin at 25–50% of the equianalgesic dose.',
    category: 'Chronic Pain Management',
    difficulty: 2
  ),
  Question(
    id: 'chronic_pain_management_053',
    question: 'In which condition is duloxetine least effective as an adjuvant analgesic?',
    options: [
      'Diabetic neuropathy',
      'Fibromyalgia',
      'Chronic low back pain with depression',
      'Trigeminal neuralgia',
      'Somatic pain with anxiety'
    ],
    correctAnswerIndex: 3,
    explanation: 'Carbamazepine/oxcarbazepine are first-line for trigeminal neuralgia. Duloxetine (SNRI) is less useful here.',
    category: 'Chronic Pain Management',
    difficulty: 2
  ),
  Question(
    id: 'chronic_pain_management_054',
    question: 'Which is the most appropriate indication for intrathecal pump therapy?',
    options: [
      'Acute postoperative pain',
      'Constant pain intensity',
      'Refractory cases unresponsive to interventional pain therapies',
      'Presence of psychiatric disorder',
      'Patients intolerant to oral opioids'
    ],
    correctAnswerIndex: 2,
    explanation: 'Intrathecal pump therapy is reserved for refractory pain when other interventional approaches fail.',
    category: 'Chronic Pain Management',
    difficulty: 2
  ),
  Question(
    id: 'chronic_pain_management_055',
    question: 'When is pain defined as chronic?',
    options: [
      'Headache lasting 1 week',
      'Muscle pain lasting 10 days',
      'Pain lasting ≥3 months',
      'Menstrual cycle-related pain',
      'Postoperative day-5 pain'
    ],
    correctAnswerIndex: 2,
    explanation: 'Chronic pain is defined as pain lasting 3 months or longer.',
    category: 'Chronic Pain Management',
    difficulty: 2
  ),
  Question(
    id: 'chronic_pain_management_056',
    question: 'Best example of neuropathic pain?',
    options: [
      'Appendicitis',
      'Migraine',
      'Trigeminal neuralgia',
      'Renal colic',
      'Arthritis'
    ],
    correctAnswerIndex: 2,
    explanation: 'Neuropathic pain arises from nerve injury; trigeminal neuralgia is a classic example.',
    category: 'Chronic Pain Management',
    difficulty: 2
  ),
  Question(
    id: 'chronic_pain_management_057',
    question: 'Which is the correct statement about TENS?',
    options: [
      'Produces sedation',
      'Administered intrathecally',
      'Inhibits A-fibers',
      'Reduces C-fiber transmission',
      'Provides temporary pain modulation'
    ],
    correctAnswerIndex: 4,
    explanation: 'TENS applies cutaneous electrical stimulation → temporarily modulates pain.',
    category: 'Chronic Pain Management',
    difficulty: 2
  ),
  Question(
    id: 'chronic_pain_management_058',
    question: 'Final step of WHO 3-step analgesic ladder for chronic pain?',
    options: [
      'NSAIDs + paracetamol',
      'Weak opioid + NSAID',
      'Strong opioid + adjuvant',
      'Anticonvulsant + tranquilizer',
      'Steroid + acetaminophen'
    ],
    correctAnswerIndex: 2,
    explanation: 'Step 3 = strong opioids (morphine) + adjuvants for severe pain.',
    category: 'Chronic Pain Management',
    difficulty: 2
  ),
  Question(
    id: 'chronic_pain_management_059',
    question: 'Which is true about CRPS Type I?',
    options: [
      'Always associated with nerve injury',
      'No redness or warmth',
      'Autonomic changes are present',
      'Occurs only in lower limbs',
      'Treated with antibiotics'
    ],
    correctAnswerIndex: 2,
    explanation: 'CRPS-I has no nerve injury, but features autonomic signs like color change, sweating.',
    category: 'Chronic Pain Management',
    difficulty: 2
  ),
  Question(
    id: 'chronic_pain_management_060',
    question: 'Mechanism of capsaicin cream?',
    options: [
      'COX-2 inhibition',
      'NMDA antagonism',
      'TRPV1 receptor desensitization',
      'GABA receptor activation',
      'Endorphin increase'
    ],
    correctAnswerIndex: 2,
    explanation: 'Capsaicin desensitizes TRPV1 receptors → analgesic effect.',
    category: 'Chronic Pain Management',
    difficulty: 2
  ),
  Question(
    id: 'chronic_pain_management_061',
    question: 'Steroid injections are most often used in:',
    options: [
      'Trigeminal neuralgia',
      'Fibromyalgia',
      'Piriformis syndrome',
      'Lumbar disc herniation',
      'Temporomandibular dysfunction'
    ],
    correctAnswerIndex: 3,
    explanation: 'Steroid injections commonly used in lumbar radiculopathy/disc herniation.',
    category: 'Chronic Pain Management',
    difficulty: 2
  ),
  Question(
    id: 'chronic_pain_management_062',
    question: 'Most important diagnostic feature of fibromyalgia?',
    options: [
      'Abnormal EMG',
      'Radiological lesion',
      'Widespread pain + tender points',
      'Elevated CRP',
      'Low creatine kinase'
    ],
    correctAnswerIndex: 2,
    explanation: 'Fibromyalgia diagnosis = widespread musculoskeletal pain + ≥11 tender points.',
    category: 'Chronic Pain Management',
    difficulty: 2
  ),
  Question(
    id: 'chronic_pain_management_063',
    question: 'Which is NOT a psychological effect of chronic pain?',
    options: [
      'Depression',
      'Sleep disturbances',
      'Anxiety',
      'Psychosis',
      'Loss of functionality'
    ],
    correctAnswerIndex: 3,
    explanation: 'Psychosis is not typical; depression, anxiety, sleep issues are common.',
    category: 'Chronic Pain Management',
    difficulty: 2
  ),
  Question(
    id: 'chronic_pain_management_064',
    question: 'Most common reason for opioid rotation?',
    options: [
      'Drowsiness',
      'Tolerance development',
      'Hypotension',
      'Skin rash',
      'Nausea/vomiting'
    ],
    correctAnswerIndex: 1,
    explanation: 'When analgesia decreases due to tolerance, switching opioids helps restore effect.',
    category: 'Chronic Pain Management',
    difficulty: 2
  ),
  Question(
    id: 'chronic_pain_management_065',
    question: 'Which mechanism explains tramadol\'s antineuropathic analgesic effect?',
    options: [
      'Dopamine antagonism',
      'NMDA antagonism',
      'Serotonin & norepinephrine reuptake inhibition',
      'GABA receptor stimulation',
      'Calcium channel blockade'
    ],
    correctAnswerIndex: 2,
    explanation: 'Tramadol = weak opioid agonist + SNRI activity.',
    category: 'Chronic Pain Management',
    difficulty: 2
  ),
  Question(
    id: 'chronic_pain_management_066',
    question: 'Example of a neuromodulation technique?',
    options: [
      'TENS',
      'Lumbar decompression',
      'Antibiotics',
      'Steroid injection',
      'Muscle relaxants'
    ],
    correctAnswerIndex: 0,
    explanation: 'Neuromodulation = TENS, spinal cord stimulation, etc.',
    category: 'Chronic Pain Management',
    difficulty: 2
  ),
  Question(
    id: 'chronic_pain_management_067',
    question: 'Which is a feature of opioid tolerance (not dependence)?',
    options: [
      'Physical withdrawal',
      'Drug-seeking behavior',
      'Increased dose requirement',
      'Social isolation',
      'Uncontrolled drug use'
    ],
    correctAnswerIndex: 2,
    explanation: 'Tolerance = need for higher dose. Dependence = withdrawal, compulsive use.',
    category: 'Chronic Pain Management',
    difficulty: 2
  ),
  Question(
    id: 'chronic_pain_management_068',
    question: 'IV lidocaine infusion is most effective in:',
    options: [
      'Visceral pain',
      'Mechanical low back pain',
      'Neuropathic pain',
      'Bone metastasis pain',
      'Myofascial pain'
    ],
    correctAnswerIndex: 2,
    explanation: 'IV lidocaine is used especially for refractory neuropathic pain.',
    category: 'Chronic Pain Management',
    difficulty: 2
  ),
  Question(
    id: 'chronic_pain_management_069',
    question: 'Which receptor mediates clonidine\'s analgesic effect?',
    options: [
      'Alpha-1',
      'Beta-2',
      'NMDA',
      'Alpha-2',
      'D1 dopamine'
    ],
    correctAnswerIndex: 3,
    explanation: 'Clonidine = central alpha-2 agonist → analgesia.',
    category: 'Chronic Pain Management',
    difficulty: 2
  ),
  Question(
    id: 'chronic_pain_management_070',
    question: 'Where does ziconotide exert its analgesic effect?',
    options: [
      'Peripheral nerves',
      'Postsynaptic NMDA receptor',
      'Presynaptic calcium channels in substantia gelatinosa',
      'Thalamic GABA receptors',
      'Cortical opioid receptors'
    ],
    correctAnswerIndex: 2,
    explanation: 'Ziconotide blocks N-type calcium channels in substantia gelatinosa (dorsal horn).',
    category: 'Chronic Pain Management',
    difficulty: 2
  ),
  Question(
    id: 'chronic_pain_management_071',
    question: 'Which is NOT recommended as first-line fibromyalgia therapy?',
    options: [
      'Aerobic exercise',
      'Sleep hygiene',
      'Amitriptyline',
      'Opioid analgesics',
      'Psychoeducation'
    ],
    correctAnswerIndex: 3,
    explanation: 'Opioids are not effective in fibromyalgia → not recommended.',
    category: 'Chronic Pain Management',
    difficulty: 2
  ),
  Question(
    id: 'chronic_pain_management_072',
    question: 'Characteristic feature of neuropathic pain?',
    options: [
      'Deep, dull visceral pain',
      'Localized, persistent night pain',
      'Electric shock-like pain',
      'Pain worsened by pressure',
      'Somatic referred pain'
    ],
    correctAnswerIndex: 2,
    explanation: 'Neuropathic pain often feels burning, stabbing, or electric-like.',
    category: 'Chronic Pain Management',
    difficulty: 2
  ),
  Question(
    id: 'chronic_pain_management_073',
    question: 'Definition of allodynia?',
    options: [
      'Increased response to painful stimulus',
      'Pain without stimulus',
      'Painful perception of normally non-painful stimulus',
      'Non-neuropathic pain',
      'Persistent numbness'
    ],
    correctAnswerIndex: 2,
    explanation: 'Example: pain from light touch.',
    category: 'Chronic Pain Management',
    difficulty: 2
  ),
  Question(
    id: 'chronic_pain_management_074',
    question: 'Which drug is most effective for visceral pain control?',
    options: [
      'Paroxetine',
      'Tramadol',
      'Morphine',
      'Pregabalin',
      'Naproxen'
    ],
    correctAnswerIndex: 2,
    explanation: 'Opioids (esp. morphine) are highly effective in visceral pain.',
    category: 'Chronic Pain Management',
    difficulty: 2
  ),
  Question(
    id: 'chronic_pain_management_075',
    question: 'First-line treatment for trigeminal neuralgia?',
    options: [
      'Morphine',
      'Carbamazepine',
      'Amitriptyline',
      'Pregabalin',
      'Lidocaine'
    ],
    correctAnswerIndex: 1,
    explanation: 'Carbamazepine = gold standard for trigeminal neuralgia.',
    category: 'Chronic Pain Management',
    difficulty: 2
  ),
  Question(
    id: 'chronic_pain_management_076',
    question: 'Best pharmacological approach for chronic pain with depression?',
    options: [
      'Start NSAIDs',
      'Increase opioid dose',
      'Start SSRI or TCA',
      'Give antipsychotic',
      'Local anesthetic injection'
    ],
    correctAnswerIndex: 2,
    explanation: 'Antidepressants improve both mood and analgesia.',
    category: 'Chronic Pain Management',
    difficulty: 2
  ),
  Question(
    id: 'chronic_pain_management_077',
    question: 'Hallmark finding in myofascial pain syndrome?',
    options: [
      'Hyperalgesic skin areas',
      'Morning stiffness',
      'Trigger points',
      'Motor weakness',
      'Fever and high CRP'
    ],
    correctAnswerIndex: 2,
    explanation: 'Palpable tender trigger points are the hallmark of myofascial pain.',
    category: 'Chronic Pain Management',
    difficulty: 2
  ),
  Question(
    id: 'chronic_pain_management_078',
    question: 'In which condition is lumbar epidural steroid injection most commonly performed?',
    options: [
      'Fibromyalgia',
      'Lumbar spinal stenosis',
      'Trigeminal neuralgia',
      'Reflex sympathetic dystrophy',
      'Parkinson\'s disease'
    ],
    correctAnswerIndex: 1,
    explanation: 'Epidural steroids are most commonly used in lumbar disc herniation or spinal stenosis with radicular pain.',
    category: 'Chronic Pain Management',
    difficulty: 2
  ),
  Question(
    id: 'chronic_pain_management_079',
    question: 'What is the most common indication for spinal cord stimulation (SCS)?',
    options: [
      'Multiple sclerosis',
      'CRPS (Complex Regional Pain Syndrome)',
      'Trigeminal neuralgia',
      'Fibromyalgia',
      'Arthritis'
    ],
    correctAnswerIndex: 1,
    explanation: 'SCS is recommended especially for drug-resistant CRPS as an invasive treatment method.',
    category: 'Chronic Pain Management',
    difficulty: 2
  ),
  Question(
    id: 'chronic_pain_management_080',
    question: 'Which scoring tool is most frequently used in the diagnosis of neuropathic pain?',
    options: [
      'Beck Depression Scale',
      'VAS (Visual Analog Scale)',
      'DN4 (Douleur Neuropathique en 4 questions)',
      'McGill Pain Questionnaire',
      'Oswestry Index'
    ],
    correctAnswerIndex: 2,
    explanation: 'DN4 is a practical and reliable test widely used in neuropathic pain diagnosis.',
    category: 'Chronic Pain Management',
    difficulty: 2
  ),
  Question(
    id: 'chronic_pain_management_081',
    question: 'What is the first-line treatment in Reflex Sympathetic Dystrophy (CRPS Type I)?',
    options: [
      'Radioablation',
      'Spinal cord stimulation',
      'Physiotherapy and analgesics',
      'Antibiotics',
      'Anticoagulants'
    ],
    correctAnswerIndex: 2,
    explanation: 'Early mobilization and physiotherapy are crucial. Analgesics are supportive.',
    category: 'Chronic Pain Management',
    difficulty: 2
  ),
  Question(
    id: 'chronic_pain_management_082',
    question: 'Which is the most appropriate assessment tool for functional impairment due to chronic pain?',
    options: [
      'DN4',
      'NRS (Numeric Rating Scale)',
      'Oswestry Disability Index',
      'GCS',
      'Karnofsky Performance Scale'
    ],
    correctAnswerIndex: 2,
    explanation: 'Oswestry Index is used to evaluate disability, particularly in chronic low back pain.',
    category: 'Chronic Pain Management',
    difficulty: 2
  ),
  Question(
    id: 'chronic_pain_management_083',
    question: 'What is the most common side effect of pregabalin?',
    options: [
      'Bradycardia',
      'Dizziness and somnolence',
      'Hypoglycemia',
      'Hypothermia',
      'Agranulocytosis'
    ],
    correctAnswerIndex: 1,
    explanation: 'Common side effects include dizziness, drowsiness, and fatigue.',
    category: 'Chronic Pain Management',
    difficulty: 2
  ),
  Question(
    id: 'chronic_pain_management_084',
    question: 'Mechanism of action of tizanidine?',
    options: [
      'NMDA receptor antagonism',
      'Alpha-2 adrenergic agonism',
      'Beta-1 blockade',
      'Dopamine release enhancement',
      'GABA-A receptor activation'
    ],
    correctAnswerIndex: 1,
    explanation: 'Tizanidine acts as a central alpha-2 adrenergic agonist → muscle relaxant + analgesic effects.',
    category: 'Chronic Pain Management',
    difficulty: 2
  ),
  Question(
    id: 'chronic_pain_management_085',
    question: 'First-line drug choice in analgesic treatment of cancer pain?',
    options: [
      'Oxycodone',
      'Fentanyl',
      'Morphine',
      'NSAIDs',
      'Pregabalin'
    ],
    correctAnswerIndex: 3,
    explanation: 'According to WHO ladder, mild pain starts with NSAIDs or paracetamol.',
    category: 'Chronic Pain Management',
    difficulty: 2
  ),
  Question(
    id: 'chronic_pain_management_086',
    question: 'Which structure is radiofrequency ablation most commonly applied to?',
    options: [
      'Spinal cord',
      'Sacral plexus',
      'Medial branches of facet joints',
      'Nucleus pulposus',
      'Sciatic nerve'
    ],
    correctAnswerIndex: 2,
    explanation: 'RF ablation is performed if medial branch blocks provide relief.',
    category: 'Chronic Pain Management',
    difficulty: 2
  ),
  Question(
    id: 'chronic_pain_management_087',
    question: 'Which therapy teaches patients how to manage their chronic pain?',
    options: [
      'Antidepressants',
      'Acupuncture',
      'Physiotherapy',
      'Cognitive-behavioral therapy (CBT)',
      'Hypnosis'
    ],
    correctAnswerIndex: 3,
    explanation: 'CBT provides coping strategies and behavioral modification in chronic pain.',
    category: 'Chronic Pain Management',
    difficulty: 2
  ),
  Question(
    id: 'chronic_pain_management_088',
    question: 'Which is a common endocrine side effect of opioids?',
    options: [
      'Hyperthyroidism',
      'Low prolactin',
      'Hypogonadism',
      'Increased ACTH',
      'Increased testosterone'
    ],
    correctAnswerIndex: 2,
    explanation: 'Chronic opioids suppress the hypothalamic–pituitary–gonadal axis → hypogonadism.',
    category: 'Chronic Pain Management',
    difficulty: 2
  ),
  Question(
    id: 'chronic_pain_management_089',
    question: 'Which is classified as a weak opioid in cancer pain management?',
    options: [
      'Morphine',
      'Oxycodone',
      'Tramadol',
      'Fentanyl',
      'Methadone'
    ],
    correctAnswerIndex: 2,
    explanation: 'Weak opioids: tramadol, codeine – used for moderate pain.',
    category: 'Chronic Pain Management',
    difficulty: 2
  ),
  Question(
    id: 'chronic_pain_management_090',
    question: 'Most important systemic side effect of NSAIDs?',
    options: [
      'Hyperglycemia',
      'Hypotension',
      'Gastrointestinal bleeding',
      'Hirsutism',
      'Hyponatremia'
    ],
    correctAnswerIndex: 2,
    explanation: 'NSAIDs increase GI bleeding risk, especially in elderly → PPIs recommended together.',
    category: 'Chronic Pain Management',
    difficulty: 2
  ),
  Question(
    id: 'chronic_pain_management_091',
    question: 'Amitriptyline is most commonly used in chronic pain treatment of which condition?',
    options: [
      'Gout arthritis',
      'Lumbar stenosis',
      'Fibromyalgia',
      'Trigeminal neuralgia',
      'Ankylosing spondylitis'
    ],
    correctAnswerIndex: 2,
    explanation: 'TCAs (esp. amitriptyline) are first-line for fibromyalgia.',
    category: 'Chronic Pain Management',
    difficulty: 2
  ),
  Question(
    id: 'chronic_pain_management_092',
    question: 'Which is NOT a potential side effect of anticonvulsants?',
    options: [
      'Dizziness',
      'Weight gain',
      'Sedation',
      'Increased anxiety',
      'Nausea'
    ],
    correctAnswerIndex: 3,
    explanation: 'Anticonvulsants usually cause sedation, not anxiety increase.',
    category: 'Chronic Pain Management',
    difficulty: 2
  ),
  Question(
    id: 'chronic_pain_management_093',
    question: 'In which type of pain is spinal cord stimulation less effective?',
    options: [
      'Neuropathic pain',
      'CRPS',
      'Ischemic pain',
      'Visceral pain',
      'Post-laminectomy syndrome'
    ],
    correctAnswerIndex: 3,
    explanation: 'SCS is less effective in visceral pain syndromes.',
    category: 'Chronic Pain Management',
    difficulty: 2
  ),
  Question(
    id: 'chronic_pain_management_094',
    question: 'What is the most common purpose of neural blocks?',
    options: [
      'Permanent pain relief',
      'Diagnosis and guiding therapy',
      'Blood pressure control',
      'Psychological support',
      'To replace anticoagulation'
    ],
    correctAnswerIndex: 1,
    explanation: 'Blocks help localize pain origin and guide treatment planning.',
    category: 'Chronic Pain Management',
    difficulty: 2
  ),
  Question(
    id: 'chronic_pain_management_095',
    question: 'Which is NOT a co-analgesic?',
    options: [
      'Gabapentin',
      'Amitriptyline',
      'Paroxetine',
      'Morphine',
      'Pregabalin'
    ],
    correctAnswerIndex: 3,
    explanation: 'Co-analgesics are non-opioids (anticonvulsants, antidepressants). Morphine is a pure opioid analgesic.',
    category: 'Chronic Pain Management',
    difficulty: 2
  ),
  Question(
    id: 'chronic_pain_management_096',
    question: 'Which finding is NOT seen in fibromyalgia syndrome?',
    options: [
      'Widespread musculoskeletal pain',
      'Fatigue',
      'Sleep disturbances',
      '18 tender points',
      'Joint deformity'
    ],
    correctAnswerIndex: 4,
    explanation: 'Fibromyalgia does not cause structural joint deformity.',
    category: 'Chronic Pain Management',
    difficulty: 2
  ),
  Question(
    id: 'chronic_pain_management_097',
    question: 'Central sensitization does NOT play a role in which condition?',
    options: [
      'Fibromyalgia',
      'Migraine',
      'Osteoarthritis',
      'Irritable bowel syndrome',
      'Chronic low back pain'
    ],
    correctAnswerIndex: 2,
    explanation: 'OA is primarily peripheral nociceptive; central sensitization is less relevant.',
    category: 'Chronic Pain Management',
    difficulty: 2
  ),
  Question(
    id: 'chronic_pain_management_098',
    question: 'Most effective drug for postherpetic neuralgia?',
    options: [
      'Paracetamol',
      'Ibuprofen',
      'Gabapentin',
      'Morphine',
      'Diazepam'
    ],
    correctAnswerIndex: 2,
    explanation: 'Gabapentin/pregabalin are first-line for postherpetic neuralgia.',
    category: 'Chronic Pain Management',
    difficulty: 2
  ),
  Question(
    id: 'chronic_pain_management_099',
    question: 'Which is NOT a feature of visceral pain?',
    options: [
      'May cause referred pain',
      'Diffuse localization',
      'Autonomic signs (nausea, sweating)',
      'Sharp, well-localized pain',
      'No peritoneal irritation'
    ],
    correctAnswerIndex: 3,
    explanation: 'Visceral pain is poorly localized; sharp pain = somatic pain.',
    category: 'Chronic Pain Management',
    difficulty: 2
  ),
  Question(
    id: 'chronic_pain_management_100',
    question: 'Ketamine is used in treatment of which type of pain?',
    options: [
      'Nociceptive',
      'Neuropathic',
      'Opioid-resistant pain',
      'Migraine',
      'All of the above'
    ],
    correctAnswerIndex: 4,
    explanation: 'Ketamine (NMDA antagonist) is effective in nociceptive, neuropathic, and opioid-resistant pain.',
    category: 'Chronic Pain Management',
    difficulty: 2
  ),
  Question(
    id: 'chronic_pain_management_101',
    question: 'Phantom pain occurs in which situation?',
    options: [
      'Amputated extremity',
      'Migraine',
      'Postherpetic neuralgia',
      'Fibromyalgia',
      'Chronic back pain'
    ],
    correctAnswerIndex: 0,
    explanation: 'Phantom limb pain = sensation of pain in amputated limb.',
    category: 'Chronic Pain Management',
    difficulty: 2
  ),
  Question(
    id: 'chronic_pain_management_102',
    question: 'Which is NOT used in trigeminal neuralgia treatment?',
    options: [
      'Carbamazepine',
      'Oxcarbazepine',
      'Gabapentin',
      'Paracetamol',
      'Microvascular decompression'
    ],
    correctAnswerIndex: 3,
    explanation: 'First-line = carbamazepine; paracetamol is ineffective.',
    category: 'Chronic Pain Management',
    difficulty: 2
  ),
  Question(
    id: 'chronic_pain_management_103',
    question: 'Which is typical in myofascial pain syndrome?',
    options: [
      'Trigger points',
      'Joint swelling',
      'Neurological deficits',
      'Bone resorption',
      'Skin rash'
    ],
    correctAnswerIndex: 0,
    explanation: 'Trigger points and local muscle spasm define myofascial pain.',
    category: 'Chronic Pain Management',
    difficulty: 2
  ),
  Question(
    id: 'chronic_pain_management_104',
    question: 'Contraindication to epidural steroid injection?',
    options: [
      'Diabetes',
      'Systemic infection',
      'Hypertension',
      'Osteoporosis',
      'Asthma'
    ],
    correctAnswerIndex: 1,
    explanation: 'Infection increases risk of abscess → absolute contraindication.',
    category: 'Chronic Pain Management',
    difficulty: 2
  ),
  Question(
    id: 'chronic_pain_management_105',
    question: 'Most common target for neurolytic block?',
    options: [
      'Femoral nerve',
      'Sciatic nerve',
      'Celiac plexus',
      'Radial nerve',
      'Median nerve'
    ],
    correctAnswerIndex: 2,
    explanation: 'Neurolytic celiac plexus block is used for pancreatic cancer pain and other visceral pain.',
    category: 'Chronic Pain Management',
    difficulty: 2
  ),
  Question(
    id: 'chronic_pain_management_106',
    question: 'Topical capsaicin is used in which type of pain?',
    options: [
      'Postherpetic neuralgia',
      'Migraine',
      'Renal colic',
      'Acute appendicitis',
      'Peptic ulcer'
    ],
    correctAnswerIndex: 0,
    explanation: 'Capsaicin patches/cream effective for neuropathic pain (esp. PHN).',
    category: 'Chronic Pain Management',
    difficulty: 2
  ),
  Question(
    id: 'chronic_pain_management_107',
    question: 'Which is typical in psychogenic pain?',
    options: [
      'Pain not matching anatomical distribution',
      'Neurological deficits',
      'Abnormal lab results',
      'Imaging pathology',
      'Relation to physical activity'
    ],
    correctAnswerIndex: 0,
    explanation: 'Psychogenic pain does not follow normal neuroanatomy.',
    category: 'Chronic Pain Management',
    difficulty: 2
  ),
  Question(
    id: 'chronic_pain_management_108',
    question: 'Bisphosphonates are used in which chronic pain condition?',
    options: [
      'Bone metastasis pain',
      'Fibromyalgia',
      'Migraine',
      'Trigeminal neuralgia',
      'Myofascial pain'
    ],
    correctAnswerIndex: 0,
    explanation: 'Bisphosphonates reduce bone pain from metastases.',
    category: 'Chronic Pain Management',
    difficulty: 2
  ),
  Question(
    id: 'chronic_pain_management_109',
    question: 'Mechanism of TENS analgesia?',
    options: [
      'Gate control theory',
      'Nerve destruction',
      'Muscle relaxation',
      'Anti-inflammatory effect',
      'Hormonal release'
    ],
    correctAnswerIndex: 0,
    explanation: 'TENS works via gate control modulation of pain signals.',
    category: 'Chronic Pain Management',
    difficulty: 2
  ),
  Question(
    id: 'chronic_pain_management_110',
    question: 'Which drug is NOT used in prophylaxis of chronic headache?',
    options: [
      'Propranolol',
      'Amitriptyline',
      'Topiramate',
      'Ibuprofen',
      'Valproic acid'
    ],
    correctAnswerIndex: 3,
    explanation: 'Ibuprofen = acute therapy, not prophylaxis.',
    category: 'Chronic Pain Management',
    difficulty: 2
  ),
  Question(
    id: 'chronic_pain_management_111',
    question: 'What is the purpose of psychological evaluation in chronic pain?',
    options: [
      'Screen depression/anxiety',
      'Assess functional impact',
      'Measure coping strategies',
      'All of the above',
      'None'
    ],
    correctAnswerIndex: 3,
    explanation: 'Psychological assessment in chronic pain is multifactorial.',
    category: 'Chronic Pain Management',
    difficulty: 2
  ),
  Question(
    id: 'chronic_pain_management_112',
    question: 'Which test is used in diagnosis of CRPS?',
    options: [
      'EMG',
      'Thermography',
      'X-ray',
      'CBC',
      'LFTs'
    ],
    correctAnswerIndex: 1,
    explanation: 'Thermography shows skin temperature differences in CRPS.',
    category: 'Chronic Pain Management',
    difficulty: 2
  ),
  Question(
    id: 'chronic_pain_management_113',
    question: 'Primary goal in palliative pain management?',
    options: [
      'Improve quality of life',
      'Cure disease',
      'Prolong survival',
      'Make patient completely pain-free',
      'Perform surgery'
    ],
    correctAnswerIndex: 0,
    explanation: 'Palliative care focuses on comfort and QoL, not cure.',
    category: 'Chronic Pain Management',
    difficulty: 2
  ),
];
