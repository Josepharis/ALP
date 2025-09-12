import '../../models/question.dart';

List<Question> peripheralNerveBlocksQuestions = [
  Question(
    id: 'peripheral_nerve_blocks_001',
    question: 'Which peripheral nerve block is most commonly preferred for shoulder surgery?',
    options: [
      'Interscalene block',
      'Supraclavicular block',
      'Infraclavicular block',
      'Axillary block',
      'Paravertebral block'
    ],
    correctAnswerIndex: 0,
    explanation: 'Interscalene brachial plexus block is the standard choice for shoulder and proximal humerus surgeries.',
    category: 'Peripheral Nerve Blocks',
    difficulty: 2
  ),
  Question(
    id: 'peripheral_nerve_blocks_002',
    question: 'Which nerve is NOT effectively blocked with an axillary block and may require an additional block?',
    options: [
      'Median nerve',
      'Radial nerve',
      'Musculocutaneous nerve',
      'Ulnar nerve',
      'Intercostobrachial nerve'
    ],
    correctAnswerIndex: 4,
    explanation: 'The intercostobrachial nerve lies outside the brachial plexus and is not anesthetized by an axillary block → requires separate infiltration.',
    category: 'Peripheral Nerve Blocks',
    difficulty: 2
  ),
  Question(
    id: 'peripheral_nerve_blocks_003',
    question: 'Which peripheral nerve block carries the highest risk of pneumothorax?',
    options: [
      'Interscalene block',
      'Supraclavicular block',
      'Axillary block',
      'Infraclavicular block',
      'Median nerve block'
    ],
    correctAnswerIndex: 1,
    explanation: 'Due to its close anatomical relationship with the pleura, the supraclavicular block has the highest pneumothorax risk.',
    category: 'Peripheral Nerve Blocks',
    difficulty: 2
  ),
  Question(
    id: 'peripheral_nerve_blocks_004',
    question: 'Which of the following is NOT a sign of Horner\'s syndrome after an interscalene block?',
    options: [
      'Ptosis',
      'Mydriasis',
      'Anhidrosis',
      'Miosis',
      'Enophthalmos'
    ],
    correctAnswerIndex: 1,
    explanation: 'Horner\'s syndrome results from sympathetic chain block → ptosis, miosis, anhidrosis, enophthalmos occur. Mydriasis is opposite.',
    category: 'Peripheral Nerve Blocks',
    difficulty: 2
  ),
  Question(
    id: 'peripheral_nerve_blocks_005',
    question: 'Which of the following is NOT an advantage of infraclavicular brachial plexus block?',
    options: [
      'Increased distance from pleura',
      'Stable needle position',
      'More proximal block compared to axilla',
      'Never requires additional block',
      'Easier to cover the entire plexus'
    ],
    correctAnswerIndex: 3,
    explanation: 'Although infraclavicular block covers most of the plexus, sometimes an extra block (e.g., musculocutaneous) is still needed.',
    category: 'Peripheral Nerve Blocks',
    difficulty: 2
  ),
  Question(
    id: 'peripheral_nerve_blocks_006',
    question: 'During axillary block, if increased injection pressure is felt, what should be done first?',
    options: [
      'Inject faster',
      'Reposition the needle',
      'Abandon the block',
      'Continue injection',
      'Increase anesthetic dose'
    ],
    correctAnswerIndex: 1,
    explanation: 'High injection pressure may indicate intraneural placement → stop and reposition to avoid nerve injury.',
    category: 'Peripheral Nerve Blocks',
    difficulty: 2
  ),
  Question(
    id: 'peripheral_nerve_blocks_007',
    question: 'Which nerve is often NOT blocked effectively by a femoral nerve block?',
    options: [
      'Femoral nerve',
      'Saphenous nerve',
      'Obturator nerve',
      'Lateral femoral cutaneous nerve',
      'Genitofemoral nerve'
    ],
    correctAnswerIndex: 2,
    explanation: 'The obturator nerve may escape femoral block → needs separate block for hip/knee surgeries.',
    category: 'Peripheral Nerve Blocks',
    difficulty: 2
  ),
  Question(
    id: 'peripheral_nerve_blocks_008',
    question: 'Which block is a distal technique for forearm surgeries?',
    options: [
      'Interscalene block',
      'Axillary block',
      'Infraclavicular block',
      'Median nerve block',
      'Supraclavicular block'
    ],
    correctAnswerIndex: 3,
    explanation: 'Median nerve block at elbow/wrist is used for distal forearm/hand procedures.',
    category: 'Peripheral Nerve Blocks',
    difficulty: 2
  ),
  Question(
    id: 'peripheral_nerve_blocks_009',
    question: 'Most common motor deficit after femoral nerve block?',
    options: [
      'Loss of ankle dorsiflexion',
      'Weakness of knee extension',
      'Hip abduction limitation',
      'Loss of plantar flexion',
      'Loss of hip extension'
    ],
    correctAnswerIndex: 1,
    explanation: 'Femoral nerve innervates quadriceps → knee extension weakness occurs post-block.',
    category: 'Peripheral Nerve Blocks',
    difficulty: 2
  ),
  Question(
    id: 'peripheral_nerve_blocks_010',
    question: 'Which is a distal branch of the femoral nerve?',
    options: [
      'Obturator nerve',
      'Tibial nerve',
      'Saphenous nerve',
      'Sural nerve',
      'Peroneal nerve'
    ],
    correctAnswerIndex: 2,
    explanation: 'The saphenous is a purely sensory branch → innervates medial leg below the knee.',
    category: 'Peripheral Nerve Blocks',
    difficulty: 2
  ),
  Question(
    id: 'peripheral_nerve_blocks_011',
    question: 'With nerve stimulator-guided blocks, at what current should the desired motor response be elicited?',
    options: [
      '>1 mA',
      '0.8–1.5 mA',
      '0.5–0.8 mA',
      '<0.2 mA',
      '>2 mA'
    ],
    correctAnswerIndex: 2,
    explanation: '0.5 mA ensures proximity to nerve without intraneural risk.',
    category: 'Peripheral Nerve Blocks',
    difficulty: 2
  ),
  Question(
    id: 'peripheral_nerve_blocks_012',
    question: 'After popliteal block, foot dorsiflexion loss is due to which nerve?',
    options: [
      'Tibial nerve',
      'Deep peroneal nerve',
      'Saphenous nerve',
      'Sural nerve',
      'Obturator nerve'
    ],
    correctAnswerIndex: 1,
    explanation: 'Deep peroneal nerve controls ankle dorsiflexion.',
    category: 'Peripheral Nerve Blocks',
    difficulty: 2
  ),
  Question(
    id: 'peripheral_nerve_blocks_013',
    question: 'Most likely cause of neuropathy after peripheral nerve block?',
    options: [
      'Not using nerve stimulator',
      'Aspirating before injection',
      'Inadequate dose of LA',
      'High injection pressure',
      'No sedation'
    ],
    correctAnswerIndex: 3,
    explanation: 'High pressure → intraneural injection risk → neuropathy.',
    category: 'Peripheral Nerve Blocks',
    difficulty: 2
  ),
  Question(
    id: 'peripheral_nerve_blocks_014',
    question: 'Which block is usually added to femoral block for posterior knee surgery?',
    options: [
      'Sural nerve block',
      'Obturator nerve block',
      'Sciatic nerve block',
      'Genitofemoral nerve block',
      'Common peroneal nerve block'
    ],
    correctAnswerIndex: 2,
    explanation: 'Posterior knee innervation is sciatic-derived → requires sciatic block.',
    category: 'Peripheral Nerve Blocks',
    difficulty: 2
  ),
  Question(
    id: 'peripheral_nerve_blocks_015',
    question: 'In US-guided blocks, what most reliably prevents intraneural injection?',
    options: [
      'Expiratory injection',
      'Slow injection',
      'Perineural injection preference',
      'Injection pressure monitoring',
      'Single-hand needle control'
    ],
    correctAnswerIndex: 3,
    explanation: 'High resistance warns of intraneural injection.',
    category: 'Peripheral Nerve Blocks',
    difficulty: 2
  ),
  Question(
    id: 'peripheral_nerve_blocks_016',
    question: 'Which anatomical landmark helps identify sciatic nerve on ultrasound?',
    options: [
      'Femoral head',
      'Popliteal artery',
      'Gluteus minimus',
      'Ischial tuberosity',
      'Obturator internus'
    ],
    correctAnswerIndex: 3,
    explanation: 'In gluteal approach, ischial tuberosity is key for sciatic localization.',
    category: 'Peripheral Nerve Blocks',
    difficulty: 2
  ),
  Question(
    id: 'peripheral_nerve_blocks_017',
    question: 'Which block–indication pairing is INCORRECT?',
    options: [
      'Interscalene – Shoulder surgery',
      'Femoral – Knee arthroscopy',
      'Axillary – Hand surgery',
      'Popliteal – Ankle surgery',
      'Supraclavicular – Cervical disc herniation'
    ],
    correctAnswerIndex: 4,
    explanation: 'Supraclavicular targets brachial plexus, not cervical disc pathology.',
    category: 'Peripheral Nerve Blocks',
    difficulty: 2
  ),
  Question(
    id: 'peripheral_nerve_blocks_018',
    question: 'Which statement about needles for ultrasound-guided blocks is correct?',
    options: [
      'Sharp needles are recommended',
      'Curved needles improve targeting',
      'Echogenic needles improve visibility',
      'Bigger gauge is always better',
      'Standard spinal needles preferred'
    ],
    correctAnswerIndex: 2,
    explanation: 'Echogenic needles appear brighter on US, improving safety.',
    category: 'Peripheral Nerve Blocks',
    difficulty: 2
  ),
  Question(
    id: 'peripheral_nerve_blocks_019',
    question: 'Which nerve is NOT a branch of the medial cord of the brachial plexus?',
    options: [
      'Ulnar nerve',
      'Median nerve (medial root)',
      'Medial cutaneous nerve of arm',
      'Musculocutaneous nerve',
      'Medial cutaneous nerve of forearm'
    ],
    correctAnswerIndex: 3,
    explanation: 'Musculocutaneous arises from the lateral cord.',
    category: 'Peripheral Nerve Blocks',
    difficulty: 2
  ),
  Question(
    id: 'peripheral_nerve_blocks_020',
    question: 'Key ultrasound landmarks for popliteal block?',
    options: [
      'Femur & patella',
      'Biceps femoris & popliteal artery',
      'Fibula & tibia',
      'Gluteus medius & piriformis',
      'Femoral artery & femoral nerve'
    ],
    correctAnswerIndex: 1,
    explanation: 'Popliteal sciatic branches lie near popliteal artery & biceps femoris.',
    category: 'Peripheral Nerve Blocks',
    difficulty: 2
  ),
  Question(
    id: 'peripheral_nerve_blocks_021',
    question: 'Which block targets purely sensory innervation?',
    options: [
      'Median nerve block',
      'Radial nerve block',
      'Femoral nerve block',
      'Saphenous nerve block',
      'Obturator nerve block'
    ],
    correctAnswerIndex: 3,
    explanation: 'Saphenous is sensory only → no motor fibers.',
    category: 'Peripheral Nerve Blocks',
    difficulty: 2
  ),
  Question(
    id: 'peripheral_nerve_blocks_022',
    question: 'Clinical indication for obturator nerve block?',
    options: [
      'Popliteal fossa surgery',
      'TURP (Transurethral Resection of Prostate)',
      'Forearm surgery',
      'Ankle surgery',
      'Hip dislocation reduction'
    ],
    correctAnswerIndex: 1,
    explanation: 'Prevents adductor spasm triggered by obturator nerve stimulation.',
    category: 'Peripheral Nerve Blocks',
    difficulty: 2
  ),
  Question(
    id: 'peripheral_nerve_blocks_023',
    question: 'Critical structures to visualize during supraclavicular block?',
    options: [
      'Subclavian artery & brachial plexus',
      'Axillary artery & cephalic vein',
      'Trachea & pleura',
      'Clavicle & deltoid',
      'Carotid artery & jugular vein'
    ],
    correctAnswerIndex: 0,
    explanation: 'Plexus trunks cluster around subclavian artery.',
    category: 'Peripheral Nerve Blocks',
    difficulty: 2
  ),
  Question(
    id: 'peripheral_nerve_blocks_024',
    question: 'Most common cause of delayed nerve injury after block?',
    options: [
      'Local infection',
      'Hematoma',
      'Intraneural injection',
      'Intrathecal injection',
      'Bone contact'
    ],
    correctAnswerIndex: 2,
    explanation: 'Intraneural injection is the leading cause of neuropathy.',
    category: 'Peripheral Nerve Blocks',
    difficulty: 2
  ),
  Question(
    id: 'peripheral_nerve_blocks_025',
    question: 'Which block has the highest risk of diaphragmatic paralysis?',
    options: [
      'Axillary',
      'Infraclavicular',
      'Interscalene',
      'Popliteal',
      'Saphenous'
    ],
    correctAnswerIndex: 2,
    explanation: 'Interscalene may block phrenic nerve → diaphragm paralysis.',
    category: 'Peripheral Nerve Blocks',
    difficulty: 2
  ),
  Question(
    id: 'peripheral_nerve_blocks_026',
    question: 'On US, "donut sign" (double halo) indicates what?',
    options: [
      'Needle tip inside nerve',
      'Injection into muscle',
      'Nerve circumferentially surrounded by LA',
      'Nerve under compression',
      'Nerve edema'
    ],
    correctAnswerIndex: 2,
    explanation: 'Optimal sign of proper block placement.',
    category: 'Peripheral Nerve Blocks',
    difficulty: 2
  ),
  Question(
    id: 'peripheral_nerve_blocks_027',
    question: 'In US-guided blocks, "double contour sign" usually indicates?',
    options: [
      'Intramuscular injection',
      'Intra-arterial injection',
      'Epineural injection',
      'Very close extraneural injection',
      'Bone reflection'
    ],
    correctAnswerIndex: 3,
    explanation: 'Indicates LA collection just outside nerve, safe & effective.',
    category: 'Peripheral Nerve Blocks',
    difficulty: 2
  ),
  Question(
    id: 'peripheral_nerve_blocks_028',
    question: 'Expected motor response in interscalene block with nerve stimulator?',
    options: [
      'Finger flexion',
      'Elbow extension',
      'Deltoid contraction',
      'Trapezius contraction',
      'Diaphragm contraction'
    ],
    correctAnswerIndex: 2,
    explanation: 'Interscalene targets C5–C7 → deltoid twitch indicates correct placement.',
    category: 'Peripheral Nerve Blocks',
    difficulty: 2
  ),
  Question(
    id: 'peripheral_nerve_blocks_029',
    question: 'Which distal branch of sciatic nerve carries sensation from the heel?',
    options: [
      'Tibial',
      'Sural',
      'Common peroneal',
      'Saphenous',
      'Femoral'
    ],
    correctAnswerIndex: 1,
    explanation: 'Sural nerve supplies heel & lateral foot sensation.',
    category: 'Peripheral Nerve Blocks',
    difficulty: 2
  ),
  Question(
    id: 'peripheral_nerve_blocks_030',
    question: 'Which block anesthetizes only the medial plantar foot surface?',
    options: [
      'Superficial peroneal nerve block',
      'Saphenous nerve block',
      'Sural nerve block',
      'Tibial nerve block',
      'Obturator nerve block'
    ],
    correctAnswerIndex: 3,
    explanation: 'Tibial nerve innervates plantar & medial sole.',
    category: 'Peripheral Nerve Blocks',
    difficulty: 2
  ),
  Question(
    id: 'peripheral_nerve_blocks_031',
    question: 'In axillary block, musculocutaneous nerve should be sought within which muscle?',
    options: [
      'Triceps brachii',
      'Coracobrachialis',
      'Biceps brachii',
      'Deltoid',
      'Brachialis'
    ],
    correctAnswerIndex: 1,
    explanation: 'Musculocutaneous nerve usually lies within coracobrachialis muscle.',
    category: 'Peripheral Nerve Blocks',
    difficulty: 2
  ),
  Question(
    id: 'peripheral_nerve_blocks_032',
    question: 'Which combination of nerve blocks is required for wrist surgery?',
    options: [
      'Radial nerve',
      'Median nerve',
      'Ulnar nerve',
      'Entire brachial plexus',
      'Median + Ulnar + Radial nerves'
    ],
    correctAnswerIndex: 4,
    explanation: 'Wrist surgery requires blocking all three major nerves.',
    category: 'Peripheral Nerve Blocks',
    difficulty: 2
  ),
  Question(
    id: 'peripheral_nerve_blocks_033',
    question: 'In infragluteal sciatic block, which surface landmarks are used?',
    options: [
      'ASIS',
      'Greater trochanter & ischial tuberosity',
      'Femoral artery',
      'Profunda femoris artery',
      'Sartorius muscle'
    ],
    correctAnswerIndex: 1,
    explanation: 'Sciatic nerve is localized between these landmarks.',
    category: 'Peripheral Nerve Blocks',
    difficulty: 2
  ),
  Question(
    id: 'peripheral_nerve_blocks_034',
    question: 'Best patient position for popliteal block?',
    options: [
      'Lateral decubitus',
      'Supine',
      'Trendelenburg',
      'Prone',
      'Sitting'
    ],
    correctAnswerIndex: 3,
    explanation: 'Popliteal block is easiest in prone or lateral with knee flexed.',
    category: 'Peripheral Nerve Blocks',
    difficulty: 2
  ),
  Question(
    id: 'peripheral_nerve_blocks_035',
    question: 'Which is an appropriate technique for saphenous nerve block?',
    options: [
      'Femoral triangle',
      'Popliteal fossa',
      'Medial ankle',
      'Gluteal region',
      'Wrist level'
    ],
    correctAnswerIndex: 2,
    explanation: 'Saphenous nerve becomes superficial near medial malleolus.',
    category: 'Peripheral Nerve Blocks',
    difficulty: 2
  ),
  Question(
    id: 'peripheral_nerve_blocks_036',
    question: 'Cause of Horner\'s syndrome after supraclavicular block?',
    options: [
      'Direct phrenic nerve block',
      'Stellate ganglion block',
      'Spinal cord involvement',
      'Vagus nerve stimulation',
      'Carotid sinus reflex'
    ],
    correctAnswerIndex: 1,
    explanation: 'Stellate ganglion involvement leads to Horner\'s syndrome.',
    category: 'Peripheral Nerve Blocks',
    difficulty: 2
  ),
  Question(
    id: 'peripheral_nerve_blocks_037',
    question: 'Correct management of neurological deficit after block?',
    options: [
      'Observe only',
      'Start oral steroids',
      'Painkillers only',
      'Neurology consult + EMG',
      'Repeat LA injection'
    ],
    correctAnswerIndex: 3,
    explanation: 'Any neuro deficit must be evaluated promptly.',
    category: 'Peripheral Nerve Blocks',
    difficulty: 2
  ),
  Question(
    id: 'peripheral_nerve_blocks_038',
    question: 'Dyspnea + unilateral decreased breath sounds after interscalene block suggest?',
    options: [
      'Diaphragm paralysis',
      'Intrathecal injection',
      'Pneumothorax',
      'Bronchospasm',
      'LAST'
    ],
    correctAnswerIndex: 2,
    explanation: 'Interscalene/supraclavicular are near pleura → pneumothorax risk.',
    category: 'Peripheral Nerve Blocks',
    difficulty: 2
  ),
  Question(
    id: 'peripheral_nerve_blocks_039',
    question: 'First step if intraneural injection is suspected?',
    options: [
      'Continue the block',
      'Give opioids for pain',
      'Stop injection & withdraw needle',
      'Increase anesthetic dose',
      'Do not aspirate'
    ],
    correctAnswerIndex: 2,
    explanation: 'Continuing injection inside nerve may cause permanent damage.',
    category: 'Peripheral Nerve Blocks',
    difficulty: 2
  ),
  Question(
    id: 'peripheral_nerve_blocks_040',
    question: 'While using peripheral nerve stimulation, if motor response persists even at 0.1 mA, what does this indicate?',
    options: [
      'Nerve is sufficiently close',
      'Block failure',
      'Intraneural needle placement',
      'Ineffective stimulation',
      'Nerve is far away'
    ],
    correctAnswerIndex: 2,
    explanation: 'A motor response at <0.2 mA suggests the needle tip may be inside the nerve → high risk, injection should not be performed.',
    category: 'Peripheral Nerve Blocks',
    difficulty: 2
  ),
  Question(
    id: 'peripheral_nerve_blocks_041',
    question: 'In popliteal block, since the bifurcation level of the sciatic nerve varies among individuals, which approach is safest?',
    options: [
      'Single injection',
      'Superficial injection',
      'Trunk-level block',
      'Deep interfascial injection',
      'Medial approach'
    ],
    correctAnswerIndex: 2,
    explanation: 'Blocking at the sciatic trunk level (before division into tibial & peroneal branches) ensures higher success.',
    category: 'Peripheral Nerve Blocks',
    difficulty: 2
  ),
  Question(
    id: 'peripheral_nerve_blocks_042',
    question: 'Which peripheral nerve block minimally affects motor function and least impairs postoperative mobilization?',
    options: [
      'Femoral nerve block',
      'Interscalene block',
      'Saphenous nerve block',
      'Supraclavicular block',
      'Obturator nerve block'
    ],
    correctAnswerIndex: 2,
    explanation: 'The saphenous nerve is purely sensory → no motor deficit, allowing early mobilization.',
    category: 'Peripheral Nerve Blocks',
    difficulty: 2
  ),
  Question(
    id: 'peripheral_nerve_blocks_043',
    question: 'In transient nerve injury after peripheral nerve block, which symptom is most common?',
    options: [
      'Fever',
      'Hypotension',
      'Hyperalgesia',
      'Paresthesia',
      'Bradycardia'
    ],
    correctAnswerIndex: 3,
    explanation: 'Temporary nerve injuries often cause paresthesia ± mild weakness → usually resolve in days.',
    category: 'Peripheral Nerve Blocks',
    difficulty: 2
  ),
  Question(
    id: 'peripheral_nerve_blocks_044',
    question: 'Which combination of nerve blocks is required for wrist surgery?',
    options: [
      'Radial nerve',
      'Median nerve',
      'Ulnar nerve',
      'Entire brachial plexus',
      'Median + Ulnar + Radial nerves'
    ],
    correctAnswerIndex: 4,
    explanation: 'Wrist surgery requires blocking all three major nerves.',
    category: 'Peripheral Nerve Blocks',
    difficulty: 2
  ),
  Question(
    id: 'peripheral_nerve_blocks_045',
    question: 'In infragluteal sciatic block, which surface landmarks are used?',
    options: [
      'ASIS',
      'Greater trochanter & ischial tuberosity',
      'Femoral artery',
      'Profunda femoris artery',
      'Sartorius muscle'
    ],
    correctAnswerIndex: 1,
    explanation: 'Sciatic nerve is localized between these landmarks.',
    category: 'Peripheral Nerve Blocks',
    difficulty: 2
  ),
  Question(
    id: 'peripheral_nerve_blocks_046',
    question: 'Best patient position for popliteal block?',
    options: [
      'Lateral decubitus',
      'Supine',
      'Trendelenburg',
      'Prone',
      'Sitting'
    ],
    correctAnswerIndex: 3,
    explanation: 'Popliteal block is easiest in prone or lateral with knee flexed.',
    category: 'Peripheral Nerve Blocks',
    difficulty: 2
  ),
  Question(
    id: 'peripheral_nerve_blocks_047',
    question: 'Which is an appropriate technique for saphenous nerve block?',
    options: [
      'Femoral triangle',
      'Popliteal fossa',
      'Medial ankle',
      'Gluteal region',
      'Wrist level'
    ],
    correctAnswerIndex: 2,
    explanation: 'Saphenous nerve becomes superficial near medial malleolus.',
    category: 'Peripheral Nerve Blocks',
    difficulty: 2
  ),
  Question(
    id: 'peripheral_nerve_blocks_048',
    question: 'Cause of Horner\'s syndrome after supraclavicular block?',
    options: [
      'Direct phrenic nerve block',
      'Stellate ganglion block',
      'Spinal cord involvement',
      'Vagus nerve stimulation',
      'Carotid sinus reflex'
    ],
    correctAnswerIndex: 1,
    explanation: 'Stellate ganglion involvement leads to Horner\'s syndrome.',
    category: 'Peripheral Nerve Blocks',
    difficulty: 2
  ),
  Question(
    id: 'peripheral_nerve_blocks_049',
    question: 'Correct management of neurological deficit after block?',
    options: [
      'Observe only',
      'Start oral steroids',
      'Painkillers only',
      'Neurology consult + EMG',
      'Repeat LA injection'
    ],
    correctAnswerIndex: 3,
    explanation: 'Any neuro deficit must be evaluated promptly.',
    category: 'Peripheral Nerve Blocks',
    difficulty: 2
  ),
  Question(
    id: 'peripheral_nerve_blocks_050',
    question: 'Dyspnea + unilateral decreased breath sounds after interscalene block suggest?',
    options: [
      'Diaphragm paralysis',
      'Intrathecal injection',
      'Pneumothorax',
      'Bronchospasm',
      'LAST'
    ],
    correctAnswerIndex: 2,
    explanation: 'Interscalene/supraclavicular are near pleura → pneumothorax risk.',
    category: 'Peripheral Nerve Blocks',
    difficulty: 2
  ),
  Question(
    id: 'peripheral_nerve_blocks_051',
    question: 'First step if intraneural injection is suspected?',
    options: [
      'Continue the block',
      'Give opioids for pain',
      'Stop injection & withdraw needle',
      'Increase anesthetic dose',
      'Do not aspirate'
    ],
    correctAnswerIndex: 2,
    explanation: 'Continuing injection inside nerve may cause permanent damage.',
    category: 'Peripheral Nerve Blocks',
    difficulty: 2
  ),
  Question(
    id: 'peripheral_nerve_blocks_052',
    question: 'While using peripheral nerve stimulation, if motor response persists even at 0.1 mA, what does this indicate?',
    options: [
      'Nerve is sufficiently close',
      'Block failure',
      'Intraneural needle placement',
      'Ineffective stimulation',
      'Nerve is far away'
    ],
    correctAnswerIndex: 2,
    explanation: 'A motor response at <0.2 mA suggests the needle tip may be inside the nerve → high risk, injection should not be performed.',
    category: 'Peripheral Nerve Blocks',
    difficulty: 2
  ),
  Question(
    id: 'peripheral_nerve_blocks_053',
    question: 'In popliteal block, since the bifurcation level of the sciatic nerve varies among individuals, which approach is safest?',
    options: [
      'Single injection',
      'Superficial injection',
      'Trunk-level block',
      'Deep interfascial injection',
      'Medial approach'
    ],
    correctAnswerIndex: 2,
    explanation: 'Blocking at the sciatic trunk level (before division into tibial & peroneal branches) ensures higher success.',
    category: 'Peripheral Nerve Blocks',
    difficulty: 2
  ),
  Question(
    id: 'peripheral_nerve_blocks_054',
    question: 'Which peripheral nerve block minimally affects motor function and least impairs postoperative mobilization?',
    options: [
      'Femoral nerve block',
      'Interscalene block',
      'Saphenous nerve block',
      'Supraclavicular block',
      'Obturator nerve block'
    ],
    correctAnswerIndex: 2,
    explanation: 'The saphenous nerve is purely sensory → no motor deficit, allowing early mobilization.',
    category: 'Peripheral Nerve Blocks',
    difficulty: 2
  ),
  Question(
    id: 'peripheral_nerve_blocks_055',
    question: 'In transient nerve injury after peripheral nerve block, which symptom is most common?',
    options: [
      'Fever',
      'Hypotension',
      'Hyperalgesia',
      'Paresthesia',
      'Bradycardia'
    ],
    correctAnswerIndex: 3,
    explanation: 'Temporary nerve injuries often cause paresthesia ± mild weakness → usually resolve in days.',
    category: 'Peripheral Nerve Blocks',
    difficulty: 2
  ),
  Question(
    id: 'peripheral_nerve_blocks_056',
    question: 'Which nerve must be targeted in peripheral blocks for hip surgery?',
    options: [
      'Sural nerve',
      'Axillary nerve',
      'Femoral nerve',
      'Median nerve',
      'Superficial peroneal nerve'
    ],
    correctAnswerIndex: 2,
    explanation: 'Femoral nerve is a key contributor to hip innervation → essential for block success.',
    category: 'Peripheral Nerve Blocks',
    difficulty: 2
  ),
  Question(
    id: 'peripheral_nerve_blocks_057',
    question: 'In infraclavicular brachial plexus block, identifying which structure improves success?',
    options: [
      'Subclavian artery',
      'Axillary artery',
      'Trachea',
      'Internal thoracic artery',
      'External jugular vein'
    ],
    correctAnswerIndex: 1,
    explanation: 'The brachial plexus cords surround the axillary artery → visualizing it is critical.',
    category: 'Peripheral Nerve Blocks',
    difficulty: 2
  ),
  Question(
    id: 'peripheral_nerve_blocks_058',
    question: 'Delayed respiratory depression after peripheral nerve block is most likely associated with:',
    options: [
      'LAST',
      'Diaphragmatic paralysis',
      'Intrathecal opioid migration',
      'IV sedative use',
      'Allergic reaction'
    ],
    correctAnswerIndex: 2,
    explanation: 'If opioids are added to LA solution → intrathecal spread may cause delayed respiratory depression.',
    category: 'Peripheral Nerve Blocks',
    difficulty: 2
  ),
  Question(
    id: 'peripheral_nerve_blocks_059',
    question: 'Combined femoral + sciatic block is most appropriate for which surgery?',
    options: [
      'Wrist',
      'Shoulder',
      'Hip',
      'Dorsal thorax',
      'Abdominal wall'
    ],
    correctAnswerIndex: 2,
    explanation: 'Hip innervation requires both anterior (femoral) and posterior (sciatic) coverage.',
    category: 'Peripheral Nerve Blocks',
    difficulty: 2
  ),
  Question(
    id: 'peripheral_nerve_blocks_060',
    question: 'Which agent can cause delayed neurotoxicity if added to LA in peripheral blocks?',
    options: [
      'Epinephrine',
      'Dexamethasone',
      'Chlorhexidine',
      'Midazolam',
      'Ketamine'
    ],
    correctAnswerIndex: 2,
    explanation: 'If chlorhexidine (skin antiseptic) contacts nerve tissue → delayed neurotoxicity may occur.',
    category: 'Peripheral Nerve Blocks',
    difficulty: 2
  ),
  Question(
    id: 'peripheral_nerve_blocks_061',
    question: 'The most superficial anatomical localization of the common peroneal nerve is at:',
    options: [
      'Tibial tuberosity',
      'Fibular head',
      'Femoral condyle',
      'Lateral patella border',
      'Tarsal tunnel'
    ],
    correctAnswerIndex: 1,
    explanation: 'The common peroneal nerve runs superficially at the fibular head → easily palpable & blockable.',
    category: 'Peripheral Nerve Blocks',
    difficulty: 2
  ),
  Question(
    id: 'peripheral_nerve_blocks_062',
    question: 'In motor block recovery, which sequence is correct?',
    options: [
      'From proximal to distal',
      'Sensory before motor',
      'Distal muscles first',
      'Sympathetic nerves last',
      'Motor block is fixed'
    ],
    correctAnswerIndex: 0,
    explanation: 'Recovery usually begins proximally and progresses distally.',
    category: 'Peripheral Nerve Blocks',
    difficulty: 2
  ),
  Question(
    id: 'peripheral_nerve_blocks_063',
    question: 'After popliteal block, patient cannot plantar-flex the ankle. Which nerve is likely affected?',
    options: [
      'Sural nerve',
      'Femoral nerve',
      'Tibial nerve',
      'Deep peroneal nerve',
      'Obturator nerve'
    ],
    correctAnswerIndex: 2,
    explanation: 'Tibial nerve controls plantar flexion → dysfunction indicates tibial involvement.',
    category: 'Peripheral Nerve Blocks',
    difficulty: 2
  ),
  Question(
    id: 'peripheral_nerve_blocks_064',
    question: 'Which factor improves ultrasound nerve visualization?',
    options: [
      'Low-frequency probe',
      'Vessel compression',
      'Increasing gain',
      'Wide-angle transducer',
      'Freeze mode'
    ],
    correctAnswerIndex: 2,
    explanation: 'Adjusting gain enhances echogenic contrast → nerves appear more clearly.',
    category: 'Peripheral Nerve Blocks',
    difficulty: 2
  ),
  Question(
    id: 'peripheral_nerve_blocks_065',
    question: 'Which of the following is the most likely indication for interscalene block?',
    options: [
      'Hand surgery',
      'Elbow surgery',
      'Shoulder arthroscopy',
      'Carpal tunnel surgery',
      'Brachial artery catheterization'
    ],
    correctAnswerIndex: 2,
    explanation: 'Interscalene block provides excellent anesthesia for shoulder and upper humerus surgery by blocking C5–C7 roots of the brachial plexus.',
    category: 'Peripheral Nerve Blocks',
    difficulty: 2
  ),
  Question(
    id: 'peripheral_nerve_blocks_066',
    question: 'In interscalene block, which nerve is most often not affected?',
    options: [
      'Suprascapular nerve',
      'Musculocutaneous nerve',
      'Ulnar nerve',
      'Median nerve',
      'Axillary nerve'
    ],
    correctAnswerIndex: 2,
    explanation: 'The ulnar nerve originates from C8–T1, which are not consistently anesthetized by an interscalene block (targets C5–C7). Therefore, ulnar sparing is common.',
    category: 'Peripheral Nerve Blocks',
    difficulty: 2
  ),
  Question(
    id: 'peripheral_nerve_blocks_067',
    question: 'Which peripheral nerve block most commonly causes diaphragmatic paralysis?',
    options: [
      'Interscalene block',
      'Supraclavicular block',
      'Infraclavicular block',
      'Axillary block',
      'Radial nerve block'
    ],
    correctAnswerIndex: 0,
    explanation: 'Due to proximity to the phrenic nerve (C3–C5), interscalene block almost always causes ipsilateral hemidiaphragmatic paresis.',
    category: 'Peripheral Nerve Blocks',
    difficulty: 2
  ),
  Question(
    id: 'peripheral_nerve_blocks_068',
    question: 'During axillary block, which nerve usually needs to be blocked separately?',
    options: [
      'Ulnar nerve',
      'Radial nerve',
      'Median nerve',
      'Musculocutaneous nerve',
      'Axillary nerve'
    ],
    correctAnswerIndex: 3,
    explanation: 'The musculocutaneous nerve leaves the brachial plexus sheath early and runs through the coracobrachialis muscle → requires separate infiltration.',
    category: 'Peripheral Nerve Blocks',
    difficulty: 2
  ),
  Question(
    id: 'peripheral_nerve_blocks_069',
    question: 'What is the best anatomical landmark for femoral nerve block?',
    options: [
      'Midpoint of inguinal ligament',
      'Femoral head',
      'Anterior superior iliac spine',
      'Popliteal fossa',
      'Pubic symphysis'
    ],
    correctAnswerIndex: 0,
    explanation: 'The femoral nerve lies just lateral to the femoral artery, below the midpoint of the inguinal ligament.',
    category: 'Peripheral Nerve Blocks',
    difficulty: 2
  ),
  Question(
    id: 'peripheral_nerve_blocks_070',
    question: 'Which nerves are targeted in popliteal block?',
    options: [
      'Femoral & obturator nerves',
      'Tibial & peroneal branches of the sciatic nerve',
      'Sural & saphenous nerves',
      'Tibial & femoral nerves',
      'Genitofemoral nerve'
    ],
    correctAnswerIndex: 1,
    explanation: 'Popliteal block is performed at or before the sciatic nerve bifurcates → provides anesthesia to the leg and foot except the medial aspect (saphenous nerve).',
    category: 'Peripheral Nerve Blocks',
    difficulty: 2
  ),
  Question(
    id: 'peripheral_nerve_blocks_071',
    question: 'What is the minimum tourniquet time in Bier block (IV regional anesthesia)?',
    options: [
      '5 min',
      '10 min',
      '20 min',
      '30 min',
      '45 min'
    ],
    correctAnswerIndex: 2,
    explanation: 'To avoid systemic toxicity after deflation, tourniquet should remain inflated ≥20 min, allowing safe redistribution of anesthetic.',
    category: 'Peripheral Nerve Blocks',
    difficulty: 2
  ),
  Question(
    id: 'peripheral_nerve_blocks_072',
    question: 'Which block carries the highest risk of pneumothorax?',
    options: [
      'Interscalene block',
      'Supraclavicular block',
      'Infraclavicular block',
      'Axillary block',
      'Median nerve block'
    ],
    correctAnswerIndex: 1,
    explanation: 'Supraclavicular block is performed near the first rib and pleura → carries the highest pneumothorax risk among brachial plexus blocks.',
    category: 'Peripheral Nerve Blocks',
    difficulty: 2
  ),
  Question(
    id: 'peripheral_nerve_blocks_073',
    question: 'In ultrasound-guided nerve blocks, "snowstorm appearance" indicates:',
    options: [
      'Nerve fiber calcification',
      'Local anesthetic spread around the nerve',
      'Air embolism',
      'Infection',
      'Nerve injury'
    ],
    correctAnswerIndex: 1,
    explanation: 'As LA surrounds the nerve, hyperechoic "snowstorm" echoes appear on the ultrasound screen, confirming correct perineural injection.',
    category: 'Peripheral Nerve Blocks',
    difficulty: 2
  ),
  Question(
    id: 'peripheral_nerve_blocks_074',
    question: 'Expected clinical finding after femoral nerve block?',
    options: [
      'Better upright standing',
      'Weakness of thigh flexion',
      'Increased ankle dorsiflexion',
      'Stronger hip extension',
      'No sensory loss'
    ],
    correctAnswerIndex: 1,
    explanation: 'The femoral nerve innervates quadriceps → block results in impaired knee extension and thigh flexion weakness.',
    category: 'Peripheral Nerve Blocks',
    difficulty: 2
  ),
  Question(
    id: 'peripheral_nerve_blocks_075',
    question: 'Most important complication of infraclavicular block?',
    options: [
      'Brachial plexus injury',
      'Pneumothorax',
      'Diaphragm paralysis',
      'Nephrotoxicity',
      'Tracheal deviation'
    ],
    correctAnswerIndex: 1,
    explanation: 'Although less common than supraclavicular block, infraclavicular block can still puncture pleura → must be performed under ultrasound guidance.',
    category: 'Peripheral Nerve Blocks',
    difficulty: 2
  ),
  Question(
    id: 'peripheral_nerve_blocks_076',
    question: 'In supraclavicular block, which nerve is affected last (most distal)?',
    options: [
      'Axillary nerve',
      'Musculocutaneous nerve',
      'Ulnar nerve',
      'Radial nerve',
      'Suprascapular nerve'
    ],
    correctAnswerIndex: 2,
    explanation: 'Because of its lower trunk origin (C8–T1), the ulnar nerve is typically the last to be anesthetized in supraclavicular block.',
    category: 'Peripheral Nerve Blocks',
    difficulty: 2
  ),
  Question(
    id: 'peripheral_nerve_blocks_077',
    question: 'Best site for saphenous nerve block?',
    options: [
      'Popliteal fossa',
      'Medial thigh at knee level',
      'Dorsum of foot',
      'Gluteal region',
      'Lateral femoral triangle'
    ],
    correctAnswerIndex: 1,
    explanation: 'The saphenous nerve (sensory branch of femoral) becomes superficial at the medial knee, making it an ideal site for blockade.',
    category: 'Peripheral Nerve Blocks',
    difficulty: 2
  ),
  Question(
    id: 'peripheral_nerve_blocks_078',
    question: 'Expected finding after radial nerve block?',
    options: [
      'Increased wrist extension',
      'Wrist drop (loss of extension)',
      'Palmar sensory loss',
      'Ulnar deviation',
      'Increased pronation'
    ],
    correctAnswerIndex: 1,
    explanation: 'Radial nerve innervates wrist extensors → block causes inability to extend wrist ("wrist drop").',
    category: 'Peripheral Nerve Blocks',
    difficulty: 2
  ),
  Question(
    id: 'peripheral_nerve_blocks_079',
    question: 'At which level of brachial plexus is infraclavicular block performed?',
    options: [
      'Roots (C5–C6)',
      'C6–C7',
      'C7–T1',
      'Trunk level',
      'Cord level'
    ],
    correctAnswerIndex: 4,
    explanation: 'Infraclavicular block targets the cords of the brachial plexus surrounding the axillary artery.',
    category: 'Peripheral Nerve Blocks',
    difficulty: 2
  ),
  Question(
    id: 'peripheral_nerve_blocks_080',
    question: 'Most common neurological complication of PNB?',
    options: [
      'Permanent paralysis',
      'Seizure',
      'Transient paresthesia',
      'Trigeminal neuralgia',
      'Cranial nerve palsy'
    ],
    correctAnswerIndex: 2,
    explanation: 'Temporary sensory disturbance is the most frequent complication; usually resolves spontaneously within days to weeks.',
    category: 'Peripheral Nerve Blocks',
    difficulty: 2
  ),
  Question(
    id: 'peripheral_nerve_blocks_081',
    question: 'Sudden dyspnea & unilateral diaphragm paralysis after interscalene block → which nerve?',
    options: [
      'Vagus nerve',
      'Long thoracic nerve',
      'Axillary nerve',
      'Phrenic nerve',
      'Musculocutaneous nerve'
    ],
    correctAnswerIndex: 3,
    explanation: 'The phrenic nerve lies close to the brachial plexus → inadvertent block leads to hemidiaphragmatic paralysis.',
    category: 'Peripheral Nerve Blocks',
    difficulty: 2
  ),
  Question(
    id: 'peripheral_nerve_blocks_082',
    question: 'Most common adjuvant added to prolong PNB effect?',
    options: [
      'Furosemide',
      'Epinephrine',
      'Atropine',
      'Calcium',
      'Naloxone'
    ],
    correctAnswerIndex: 1,
    explanation: 'Epinephrine prolongs LA duration, reduces systemic absorption, and provides marker for intravascular injection (↑HR if injected IV).',
    category: 'Peripheral Nerve Blocks',
    difficulty: 2
  ),
  Question(
    id: 'peripheral_nerve_blocks_083',
    question: 'Which block most effectively anesthetizes the entire brachial plexus?',
    options: [
      'Axillary block',
      'Interscalene block',
      'Supraclavicular block',
      'Infraclavicular block',
      'Radial nerve block'
    ],
    correctAnswerIndex: 2,
    explanation: 'At the trunk level, the plexus is compact → dense anesthesia for entire upper limb, except cervical shoulder tip.',
    category: 'Peripheral Nerve Blocks',
    difficulty: 2
  ),
  Question(
    id: 'peripheral_nerve_blocks_084',
    question: 'At which level is supraclavicular block performed?',
    options: [
      'Root level',
      'Trunk level',
      'Division level',
      'Cord level',
      'Peripheral nerve level'
    ],
    correctAnswerIndex: 1,
    explanation: 'Supraclavicular block targets trunks → nerves are clustered, ensuring rapid onset and dense block.',
    category: 'Peripheral Nerve Blocks',
    difficulty: 2
  ),
  Question(
    id: 'peripheral_nerve_blocks_085',
    question: 'Which of the following indicates ulnar nerve blockade?',
    options: [
      'Loss of thumb flexion',
      'Loss of wrist extension',
      'Sensory loss in 4th and 5th fingers',
      'Decreased forearm supination',
      'Increased wrist flexion'
    ],
    correctAnswerIndex: 2,
    explanation: 'The ulnar nerve supplies sensory innervation to the palmar and dorsal aspects of the 4th and 5th digits. Loss of sensation here indicates effective block.',
    category: 'Peripheral Nerve Blocks',
    difficulty: 2
  ),
  Question(
    id: 'peripheral_nerve_blocks_086',
    question: 'Which nerve is often inadequately blocked with infraclavicular block?',
    options: [
      'Musculocutaneous nerve',
      'Median nerve',
      'Ulnar nerve',
      'Axillary nerve',
      'Thoracodorsal nerve'
    ],
    correctAnswerIndex: 0,
    explanation: 'The musculocutaneous nerve exits the plexus early and may escape infraclavicular block, requiring separate infiltration.',
    category: 'Peripheral Nerve Blocks',
    difficulty: 2
  ),
  Question(
    id: 'peripheral_nerve_blocks_087',
    question: 'Most appropriate local anesthetic for Bier block (IVRA)?',
    options: [
      'Bupivacaine',
      'Ropivacaine',
      'Lidocaine',
      'Prilocaine',
      'Levobupivacaine'
    ],
    correctAnswerIndex: 2,
    explanation: 'IVRA requires short-acting, non-cardiotoxic agents. Lidocaine is preferred; long-acting agents (e.g., bupivacaine) are contraindicated due to toxicity risk.',
    category: 'Peripheral Nerve Blocks',
    difficulty: 2
  ),
  Question(
    id: 'peripheral_nerve_blocks_088',
    question: 'Which block best anesthetizes the dorsum of the foot?',
    options: [
      'Saphenous nerve block',
      'Tibial nerve block',
      'Sural nerve block',
      'Superficial peroneal nerve block',
      'Obturator nerve block'
    ],
    correctAnswerIndex: 3,
    explanation: 'The superficial peroneal nerve innervates most of the dorsum of the foot; it is the key target for surgeries in this area.',
    category: 'Peripheral Nerve Blocks',
    difficulty: 2
  ),
  Question(
    id: 'peripheral_nerve_blocks_089',
    question: 'Most common complication of intercostal nerve block?',
    options: [
      'Infection',
      'Hypotension',
      'Pneumothorax',
      'Hypoesthesia',
      'Urinary retention'
    ],
    correctAnswerIndex: 2,
    explanation: 'Due to close proximity to the pleura, intercostal nerve blocks carry a significant risk of pneumothorax.',
    category: 'Peripheral Nerve Blocks',
    difficulty: 2
  ),
  Question(
    id: 'peripheral_nerve_blocks_090',
    question: 'Complete motor block of the upper extremity after infraclavicular block is due to blockade of:',
    options: [
      'Supraclavicular nerves',
      'Brachial plexus cords',
      'Intercostobrachial nerve',
      'Pleura',
      'Long thoracic nerve'
    ],
    correctAnswerIndex: 1,
    explanation: 'Infraclavicular block targets the medial, lateral, and posterior cords of the brachial plexus → dense motor and sensory block of the upper limb.',
    category: 'Peripheral Nerve Blocks',
    difficulty: 2
  ),
  Question(
    id: 'peripheral_nerve_blocks_091',
    question: 'For wrist surgery, which nerve block combination is necessary?',
    options: [
      'Median nerve only',
      'Median + radial nerves',
      'Ulnar + radial nerves',
      'Median + ulnar + radial nerves',
      'Ulnar nerve only'
    ],
    correctAnswerIndex: 3,
    explanation: 'All three nerves supply the wrist region. Combined blockade is required for complete anesthesia.',
    category: 'Peripheral Nerve Blocks',
    difficulty: 2
  ),
  Question(
    id: 'peripheral_nerve_blocks_092',
    question: 'Which of the following is NOT observed after radial nerve block?',
    options: [
      'Loss of wrist extension',
      'Weak thumb abduction',
      'Sensory loss over posterior arm',
      'Loss of wrist flexion',
      'Wrist drop deformity'
    ],
    correctAnswerIndex: 3,
    explanation: 'Radial nerve innervates extensors; wrist flexion is mediated by median & ulnar nerves → unaffected in radial block.',
    category: 'Peripheral Nerve Blocks',
    difficulty: 2
  ),
  Question(
    id: 'peripheral_nerve_blocks_093',
    question: 'The saphenous nerve is a branch of which nerve?',
    options: [
      'Tibial nerve',
      'Peroneal nerve',
      'Femoral nerve',
      'Obturator nerve',
      'Sciatic nerve'
    ],
    correctAnswerIndex: 2,
    explanation: 'The saphenous nerve is a purely sensory branch of the femoral nerve, innervating the medial knee and leg.',
    category: 'Peripheral Nerve Blocks',
    difficulty: 2
  ),
  Question(
    id: 'peripheral_nerve_blocks_094',
    question: 'Horner\'s syndrome may occur after which block?',
    options: [
      'Femoral block',
      'Interscalene block',
      'Popliteal block',
      'Radial nerve block',
      'Median nerve block'
    ],
    correctAnswerIndex: 1,
    explanation: 'Due to involvement of the cervical sympathetic chain, interscalene block may cause Horner\'s syndrome (ptosis, miosis, anhidrosis).',
    category: 'Peripheral Nerve Blocks',
    difficulty: 2
  ),
  Question(
    id: 'peripheral_nerve_blocks_095',
    question: 'Most serious complication of intraneural injection during PNB?',
    options: [
      'Paresthesia',
      'Nerve irritation',
      'Permanent nerve injury',
      'Perineural hematoma',
      'Increased motor block'
    ],
    correctAnswerIndex: 2,
    explanation: 'Intraneural injection may cause severe neurotoxicity and irreversible nerve damage.',
    category: 'Peripheral Nerve Blocks',
    difficulty: 2
  ),
  Question(
    id: 'peripheral_nerve_blocks_096',
    question: 'Obturator nerve block is most often added as a complementary block during which procedure?',
    options: [
      'Popliteal nerve block',
      'Femoral nerve block',
      'Inguinal hernia repair',
      'Transurethral resection (TUR)',
      'Axillary nerve block'
    ],
    correctAnswerIndex: 3,
    explanation: 'Obturator reflex (adductor spasm) during TUR is prevented with obturator nerve block.',
    category: 'Peripheral Nerve Blocks',
    difficulty: 2
  ),
  Question(
    id: 'peripheral_nerve_blocks_097',
    question: 'Duration of action of lidocaine in nerve block?',
    options: [
      '15–30 min',
      '30–60 min',
      '90–120 min',
      '2–4 h',
      '6–8 h'
    ],
    correctAnswerIndex: 1,
    explanation: 'Lidocaine is an intermediate-acting local anesthetic, typically lasting about 30–60 minutes without adjuvants.',
    category: 'Peripheral Nerve Blocks',
    difficulty: 2
  ),
  Question(
    id: 'peripheral_nerve_blocks_098',
    question: 'Peroneal nerve block is especially useful for:',
    options: [
      'Knee arthroscopy',
      'Ankle surgery',
      'Hip prosthesis',
      'Thigh muscle biopsy',
      'Lumbar disc surgery'
    ],
    correctAnswerIndex: 1,
    explanation: 'The peroneal nerve supplies sensory innervation to the ankle and lateral foot → ideal for ankle procedures.',
    category: 'Peripheral Nerve Blocks',
    difficulty: 2
  ),
  Question(
    id: 'peripheral_nerve_blocks_099',
    question: 'Which block targets the most distal level of the brachial plexus?',
    options: [
      'Interscalene block',
      'Supraclavicular block',
      'Infraclavicular block',
      'Axillary block',
      'Median nerve block'
    ],
    correctAnswerIndex: 3,
    explanation: 'Axillary block is performed at the terminal branch level of the brachial plexus (median, ulnar, radial, musculocutaneous nerves).',
    category: 'Peripheral Nerve Blocks',
    difficulty: 2
  ),
  Question(
    id: 'peripheral_nerve_blocks_100',
    question: 'Musculocutaneous nerve supplies sensation to which area?',
    options: [
      'Dorsum of hand',
      'Lateral forearm',
      'Palmar surface of 4th finger',
      'Medial arm',
      'Palm'
    ],
    correctAnswerIndex: 1,
    explanation: 'The musculocutaneous nerve continues as the lateral cutaneous nerve of the forearm → provides sensory innervation to lateral forearm skin.',
    category: 'Peripheral Nerve Blocks',
    difficulty: 2
  ),
  Question(
    id: 'peripheral_nerve_blocks_101',
    question: 'Which of the following ensures complete upper limb blockade?',
    options: [
      'Median + radial',
      'Median + ulnar + radial',
      'Supraclavicular block',
      'Axillary block + musculocutaneous block',
      'Interscalene block + ulnar nerve block'
    ],
    correctAnswerIndex: 2,
    explanation: 'At trunk level, all major branches are tightly packed → supraclavicular block provides dense anesthesia of entire upper extremity.',
    category: 'Peripheral Nerve Blocks',
    difficulty: 2
  ),
  Question(
    id: 'peripheral_nerve_blocks_102',
    question: 'Best site for radial nerve block?',
    options: [
      'Under deltoid muscle',
      'Spiral groove of humerus',
      'Below clavicle',
      'Wrist level',
      'Axillary region'
    ],
    correctAnswerIndex: 1,
    explanation: 'The radial nerve runs superficially at the spiral groove → easily accessible for blockade.',
    category: 'Peripheral Nerve Blocks',
    difficulty: 2
  ),
  Question(
    id: 'peripheral_nerve_blocks_103',
    question: 'During obturator nerve block, persistent motor response may cause which complication?',
    options: [
      'Pneumothorax',
      'Intraneural injection',
      'Arrhythmia',
      'Involuntary adductor spasm',
      'Bradycardia'
    ],
    correctAnswerIndex: 3,
    explanation: 'The obturator nerve innervates adductor muscles; inadequate block may cause sudden contractions during surgery (e.g., TURP).',
    category: 'Peripheral Nerve Blocks',
    difficulty: 2
  ),
  Question(
    id: 'peripheral_nerve_blocks_104',
    question: 'Which nerve block alone is NOT sufficient for below-knee surgery?',
    options: [
      'Tibial nerve',
      'Saphenous nerve',
      'Common peroneal nerve',
      'Femoral nerve',
      'Sural nerve'
    ],
    correctAnswerIndex: 3,
    explanation: 'Femoral nerve supplies anterior thigh; below-knee surgery usually requires tibial, saphenous, and peroneal blockade.',
    category: 'Peripheral Nerve Blocks',
    difficulty: 2
  ),
  Question(
    id: 'peripheral_nerve_blocks_105',
    question: 'Best approach for blocking the ulnar nerve in the hand?',
    options: [
      'Axillary block',
      'Interscalene block',
      'Supraclavicular block',
      'Median nerve block',
      'Radial nerve block'
    ],
    correctAnswerIndex: 0,
    explanation: 'At the axilla, terminal branches (including ulnar) are well-accessible → ideal for ulnar nerve blockade.',
    category: 'Peripheral Nerve Blocks',
    difficulty: 2
  ),
  Question(
    id: 'peripheral_nerve_blocks_106',
    question: 'In brachial plexus block, the "pop" sensation occurs when needle passes through:',
    options: [
      'Scalene muscles',
      'Clavicle',
      'Axillary sheath',
      'Pleura',
      'Subclavian artery'
    ],
    correctAnswerIndex: 0,
    explanation: 'In interscalene block, the needle pops as it passes through the fascia of the scalene muscles.',
    category: 'Peripheral Nerve Blocks',
    difficulty: 2
  ),
  Question(
    id: 'peripheral_nerve_blocks_107',
    question: 'Which nerve is NOT blocked in wrist block?',
    options: [
      'Median nerve',
      'Ulnar nerve',
      'Radial nerve',
      'Musculocutaneous nerve',
      'Lateral antebrachial cutaneous nerve'
    ],
    correctAnswerIndex: 4,
    explanation: 'This nerve provides forearm sensation at the elbow, not affected by wrist-level blocks.',
    category: 'Peripheral Nerve Blocks',
    difficulty: 2
  ),
  Question(
    id: 'peripheral_nerve_blocks_108',
    question: 'Most common complication of interscalene block?',
    options: [
      'Pneumothorax',
      'Phrenic nerve block',
      'Total spinal anesthesia',
      'Cardiac arrest',
      'Horner\'s syndrome'
    ],
    correctAnswerIndex: 1,
    explanation: 'Occurs in nearly 100% of interscalene blocks → causes temporary diaphragmatic paralysis.',
    category: 'Peripheral Nerve Blocks',
    difficulty: 2
  ),
  Question(
    id: 'peripheral_nerve_blocks_109',
    question: 'Which block uses ultrasound-guided TAP (Transversus Abdominis Plane)?',
    options: [
      'Thoracic epidural',
      'Abdominal surgery analgesia',
      'Lumbar plexus block',
      'Sciatic nerve block',
      'Cervical plexus block'
    ],
    correctAnswerIndex: 1,
    explanation: 'TAP block anesthetizes abdominal wall by blocking T6–L1 anterior rami.',
    category: 'Peripheral Nerve Blocks',
    difficulty: 2
  ),
  Question(
    id: 'peripheral_nerve_blocks_110',
    question: 'Target structure in supraclavicular block?',
    options: [
      'Subclavian artery',
      'Trunks of brachial plexus',
      'Axillary nerve',
      'Vertebral artery',
      'Sternocleidomastoid muscle'
    ],
    correctAnswerIndex: 1,
    explanation: 'Supraclavicular block targets brachial plexus trunks clustered around subclavian artery.',
    category: 'Peripheral Nerve Blocks',
    difficulty: 2
  ),
  Question(
    id: 'peripheral_nerve_blocks_111',
    question: 'Which is NOT an approach for sciatic nerve block?',
    options: [
      'Labat approach',
      'Anterior approach',
      'Lateral approach',
      'Subgluteal approach',
      'Supraclavicular approach'
    ],
    correctAnswerIndex: 4,
    explanation: 'Supraclavicular is for brachial plexus, unrelated to sciatic nerve.',
    category: 'Peripheral Nerve Blocks',
    difficulty: 2
  ),
  Question(
    id: 'peripheral_nerve_blocks_112',
    question: 'Ankle block includes blockade of which nerves?',
    options: [
      'Radial, median, ulnar',
      'Tibial, superficial peroneal, deep peroneal, sural',
      'Femoral, obturator',
      'Ilioinguinal, genitofemoral',
      'Sciatic, pudendal'
    ],
    correctAnswerIndex: 1,
    explanation: 'Ankle block requires multiple nerves supplying the foot for complete anesthesia.',
    category: 'Peripheral Nerve Blocks',
    difficulty: 2
  ),
  Question(
    id: 'peripheral_nerve_blocks_113',
    question: 'Psoas compartment block targets which plexus?',
    options: [
      'Brachial plexus',
      'Lumbar plexus',
      'Cervical plexus',
      'Sacral plexus',
      'Thoracic plexus'
    ],
    correctAnswerIndex: 1,
    explanation: 'Blocks femoral, obturator, and lateral femoral cutaneous nerves.',
    category: 'Peripheral Nerve Blocks',
    difficulty: 2
  ),
  Question(
    id: 'peripheral_nerve_blocks_114',
    question: 'In axillary block, which nerve is usually the last to be blocked?',
    options: [
      'Median nerve',
      'Ulnar nerve',
      'Radial nerve',
      'Musculocutaneous nerve',
      'Medial antebrachial cutaneous nerve'
    ],
    correctAnswerIndex: 2,
    explanation: 'Radial nerve lies posterior in the sheath → delayed onset compared to others.',
    category: 'Peripheral Nerve Blocks',
    difficulty: 2
  ),
  Question(
    id: 'peripheral_nerve_blocks_115',
    question: 'Superficial cervical plexus block is used in which surgery?',
    options: [
      'Thyroidectomy',
      'Hip arthroplasty',
      'Laparoscopic cholecystectomy',
      'Craniotomy',
      'Upper extremity surgery'
    ],
    correctAnswerIndex: 0,
    explanation: 'Provides analgesia for anterior neck surgeries.',
    category: 'Peripheral Nerve Blocks',
    difficulty: 2
  ),
  Question(
    id: 'peripheral_nerve_blocks_116',
    question: 'Weakness of which muscle is expected after femoral block?',
    options: [
      'Gastrocnemius',
      'Tibialis anterior',
      'Quadriceps femoris',
      'Gluteus maximus',
      'Hamstrings'
    ],
    correctAnswerIndex: 2,
    explanation: 'The femoral nerve innervates quadriceps → knee extension weakness occurs after block.',
    category: 'Peripheral Nerve Blocks',
    difficulty: 2
  ),
  Question(
    id: 'peripheral_nerve_blocks_117',
    question: 'Which statement about infraclavicular block is TRUE?',
    options: [
      'High risk of pneumothorax',
      'Used only for hand surgery',
      'Blocks cords of brachial plexus',
      'Commonly causes Horner\'s syndrome',
      'Also blocks femoral nerve'
    ],
    correctAnswerIndex: 2,
    explanation: 'Infraclavicular block targets medial, lateral, and posterior cords surrounding the axillary artery.',
    category: 'Peripheral Nerve Blocks',
    difficulty: 2
  ),
  Question(
    id: 'peripheral_nerve_blocks_118',
    question: 'TAP block anesthetizes which nerves?',
    options: [
      'Anterior rami of thoracic spinal nerves',
      'Brachial plexus',
      'Lumbar plexus',
      'Sciatic nerve',
      'Pudendal nerve'
    ],
    correctAnswerIndex: 0,
    explanation: 'TAP block blocks T6–L1 nerves supplying the abdominal wall.',
    category: 'Peripheral Nerve Blocks',
    difficulty: 2
  ),
  Question(
    id: 'peripheral_nerve_blocks_119',
    question: 'Which adjuvant is commonly added to prolong PNB duration?',
    options: [
      'Propofol',
      'Dextrose',
      'Dexmedetomidine',
      'Heparin',
      'Mannitol'
    ],
    correctAnswerIndex: 2,
    explanation: 'An α2-agonist that prolongs block duration and enhances analgesia when added to local anesthetic.',
    category: 'Peripheral Nerve Blocks',
    difficulty: 2
  ),
];
