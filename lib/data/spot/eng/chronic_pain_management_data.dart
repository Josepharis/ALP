import 'package:flutter/material.dart';

class ChronicPainManagementItem {
  final String title;
  final String description;
  final String? subtitle;
  final String? additionalInfo;

  ChronicPainManagementItem({
    required this.title,
    required this.description,
    this.subtitle,
    this.additionalInfo,
  });
}

class ChronicPainManagementCategory {
  final String categoryName;
  final List<ChronicPainManagementItem> items;

  ChronicPainManagementCategory({
    required this.categoryName,
    required this.items,
  });
}

class ChronicPainManagementData {
  static List<ChronicPainManagementCategory> getChronicPainManagementData(BuildContext context) {
    return [
      ChronicPainManagementCategory(
        categoryName: 'Definition and Classification of Pain',
        items: [
          ChronicPainManagementItem(
            title: 'PAIN DEFINITION',
            description: 'An unpleasant sensory–emotional experience related to actual or potential tissue damage.',
            additionalInfo: 'According to IASP, pain is always subjective and influenced by biological, psychological, and social factors.',
          ),
          ChronicPainManagementItem(
            title: 'TYPES OF PAIN',
            description: 'Categorized into Nosiceptive (somatic or visceral) which results from tissue injury.',
            subtitle: 'And Neuropathic pain which results from direct nerve system injury',
            additionalInfo: 'Each type requires distinct pharmacological and interventional management strategies.',
          ),
          ChronicPainManagementItem(
            title: 'ACUTE PAIN',
            description: 'Physiological response to stress characterized by sympathetic activity like tachycardia and hypertension.',
            additionalInfo: 'Unresolved acute pain can lead to chronic syndromes via central sensitization.',
          ),
          ChronicPainManagementItem(
            title: 'CHRONIC PAIN',
            description: 'Pain lasting longer than 3–6 months with no remaining stress response.',
            additionalInfo: 'Frequently associated with sleep disturbances, mood disorders, and clinical depression.',
          ),
        ],
      ),
      ChronicPainManagementCategory(
        categoryName: 'Nociception – Anatomy & Physiology',
        items: [
          ChronicPainManagementItem(
            title: 'FIRST-ORDER NEURONS',
            description: 'Enter the spinal cord via the dorsal root; occasionally C fibers enter via the ventral root.',
            additionalInfo: 'The ventral root entry of C fibers can explain failed surgical pain relief.',
          ),
          ChronicPainManagementItem(
            title: 'SECOND-ORDER NEURONS',
            description: 'Located in Lamina I–VI of the dorsal horn of the spinal cord.',
            subtitle: 'Nociceptive-specific (lamina I) neurons have a high threshold; WDR (lamina V) neurons exhibit wind-up',
            additionalInfo: 'WDR neurons are critical for central sensitization and chronic pain development.',
          ),
          ChronicPainManagementItem(
            title: 'THIRD-ORDER NEURONS',
            description: 'Pathways from the thalamus to the discriminative cortex and emotional limbic system.',
            additionalInfo: 'These neurons interpret the location, intensity, and emotional quality of pain.',
          ),
          ChronicPainManagementItem(
            title: 'PAIN TRACTS',
            description: 'The lateral spinothalamic tract handles localization and intensity while others handle autonomic responses.',
            subtitle: 'Medial spinothalamic → emotional; Spinoreticular → autonomic; Spinomesencephalic → antinociception',
            additionalInfo: 'These tracts decussate and ascend to higher brain centers.',
          ),
        ],
      ),
      ChronicPainManagementCategory(
        categoryName: 'Physiology of Pain',
        items: [
          ChronicPainManagementItem(
            title: 'Aδ FIBERS',
            description: 'Myelinated fibers responsible for sharp, fast, and well-localized pain sensations.',
            additionalInfo: 'They represent the first wave of pain after an acute injury.',
          ),
          ChronicPainManagementItem(
            title: 'C FIBERS',
            description: 'Unmyelinated fibers that transmit dull, slow, and diffuse pain signals.',
            additionalInfo: 'They are responsible for the lingering ache following the initial sharp pain.',
          ),
          ChronicPainManagementItem(
            title: 'SILENT NOCICEPTORS',
            description: 'Nerve endings that are activated only in the presence of tissue inflammation.',
            additionalInfo: 'They play a significant role in inflammatory hypersensitivity.',
          ),
          ChronicPainManagementItem(
            title: 'MEDIATORS',
            description: 'Key neurotransmitters include Substance P, CGRP, and Glutamate.',
            additionalInfo: 'Glutamate is the strongest excitatory neurotransmitter for pain signals.',
          ),
          ChronicPainManagementItem(
            title: 'HYPERALGESIA',
            description: 'Increased sensitivity to a normally painful stimulus due to lower nociceptor thresholds.',
            subtitle: 'Primary → local sensitization (PG, bradykinin); Secondary → Substance P–mediated inflammation',
            additionalInfo: 'Hyperalgesia is a hallmark of both acute inflammatory and chronic neuropathic pain.',
          ),
        ],
      ),
      ChronicPainManagementCategory(
        categoryName: 'Modulation',
        items: [
          ChronicPainManagementItem(
            title: 'CENTRAL FACILITATION',
            description: 'Occurs via NMDA activation, leading to wind-up and increased levels of NO and PG.',
            additionalInfo: 'This process amplifies pain signals at the spinal cord level.',
          ),
          ChronicPainManagementItem(
            title: 'SEGMENTAL INHIBITION (GATE CONTROL THEORY)',
            description: 'Activating large Aβ fibers inhibits the transmission of pain signals via GABA and glycine.',
            additionalInfo: 'This forms the physiological basis for treatments like TENS and massage.',
          ),
          ChronicPainManagementItem(
            title: 'SUPRASPINAL INHIBITION',
            description: 'Descending PAG–NRM pathways utilize serotonin, norepinephrine, and endogenous opioids.',
            additionalInfo: 'This system naturally modulates and dampens incoming pain signals from higher centers.',
          ),
        ],
      ),
      ChronicPainManagementCategory(
        categoryName: 'Systemic Responses to Pain',
        items: [
          ChronicPainManagementItem(
            title: 'ACUTE PAIN RESPONSES',
            description: 'Physiological changes including tachycardia, hypertension, hyperventilation, and hypercoagulability.',
            subtitle: 'Endocrine: ↑ cortisol, ↑ ADH; GI/urinary: ↓ motility; Resp: atelectasis/hypoxemia',
            additionalInfo: 'These responses can lead to myocardial ischemia and other organ failures if not managed.',
          ),
          ChronicPainManagementItem(
            title: 'CHRONIC PAIN',
            description: 'Lack of physiological stress response; primarily manifests as anxiety and depression.',
            additionalInfo: 'The biological warning system has effectively "broken," becoming a disease itself.',
          ),
        ],
      ),
      ChronicPainManagementCategory(
        categoryName: 'Chronic Pain Assessment',
        items: [
          ChronicPainManagementItem(
            title: 'PAIN SCALES',
            description: 'Utilization of NRS (0–10), VAS (10 cm), and FACES scales for objective measurement.',
            additionalInfo: 'McGill Pain Questionnaire provides qualitative assessment of the pain experience.',
          ),
          ChronicPainManagementItem(
            title: 'PSYCHOLOGICAL TESTS',
            description: 'Clinical evaluation using the MMPI and Beck Depression Inventory.',
            additionalInfo: 'Crucial for identifying comorbid psychiatric disorders in chronic pain patients.',
          ),
          ChronicPainManagementItem(
            title: 'FUNCTIONAL TESTS',
            description: 'Assessment tools like MPI, SF-36, PDI, and Oswestry determine the impact on daily living.',
            additionalInfo: 'These tests help guide rehabilitation goals beyond simple pain scores.',
          ),
          ChronicPainManagementItem(
            title: 'EMG/NERVE CONDUCTION',
            description: 'Electrophysiological studies to distinguish between organic nerve lesions and functional pain.',
            additionalInfo: 'Helps in localizing the exact site of neural injury or entrapment.',
          ),
        ],
      ),
      ChronicPainManagementCategory(
        categoryName: 'Chronic Pain Syndromes',
        items: [
          ChronicPainManagementItem(
            title: 'MYOFASCIAL PAIN',
            description: 'Characterized by the presence of focal trigger points in muscle tissues.',
            additionalInfo: 'Pain is often referred to distant sites from the localized nodule.',
          ),
          ChronicPainManagementItem(
            title: 'FIBROMYALGIA',
            description: 'Widespread pain and systemic symptoms following WPI & SS clinical criteria.',
            additionalInfo: 'Associated with global sensitivity, sleep disturbances, and cardiovascular symptoms.',
          ),
          ChronicPainManagementItem(
            title: 'LOW BACK PAIN',
            description: 'Etiologies include disc herniation, spinal stenosis, and facet joint syndrome.',
            additionalInfo: 'Comprehensive assessment is needed as imaging often does not explain all symptoms.',
          ),
          ChronicPainManagementItem(
            title: 'NEUROPATHIC PAIN',
            description: 'Complex pain syndromes such as diabetic neuropathy and CRPS I–II.',
            additionalInfo: 'Often requires non-opioid medications like antidepressants and anticonvulsants.',
          ),
          ChronicPainManagementItem(
            title: 'POSTHERPETIC NEURALGIA',
            description: 'Persistent pain following a shingles rash, treated with various multimodal agents.',
            additionalInfo: 'Options include antidepressants, anticonvulsants, TENS, and topical capsaicin.',
          ),
          ChronicPainManagementItem(
            title: 'HEADACHE',
            description: 'Management of migraine, cluster, tension headaches, and trigeminal neuralgia.',
            additionalInfo: 'Includes pharmacotherapy and specialized interventional blocks.',
          ),
          ChronicPainManagementItem(
            title: 'CANCER PAIN',
            description: 'Following the structured WHO 3-step analgesic ladder approach.',
            additionalInfo: 'Involves balancing opioids with adjuvant medications for optimal relief.',
          ),
        ],
      ),
      ChronicPainManagementCategory(
        categoryName: 'Pharmacological Therapy',
        items: [
          ChronicPainManagementItem(
            title: 'NSAIDS/ACETAMINOPHEN',
            description: 'The primary choice for managing mild to moderate nociceptive pain.',
            additionalInfo: 'Monitor for renal, gastrointestinal, and cardiovascular side effects with long-term use.',
          ),
          ChronicPainManagementItem(
            title: 'ANTIDEPRESSANTS (TCA, SNRI)',
            description: 'First-line therapy for neuropathic pain by enhancing descending inhibitory pathways.',
            additionalInfo: 'Common choices include amitriptyline and duloxetine.',
          ),
          ChronicPainManagementItem(
            title: 'ANTICONVULSANTS',
            description: 'Drugs like gabapentin and carbamazepine for trigeminal neuralgia and neuropathy.',
            additionalInfo: 'Work by stabilizing overactive neural membranes.',
          ),
          ChronicPainManagementItem(
            title: 'MUSCLE RELAXANTS',
            description: 'Baclofen and tizanidine are used primarily for pain related to spasticity.',
            additionalInfo: 'Particularly useful in neurological conditions affecting muscle tone.',
          ),
          ChronicPainManagementItem(
            title: 'OPIOIDS',
            description: 'Reserved for moderate to severe pain using agents like morphine, fentanyl, and tramadol.',
            additionalInfo: 'Includes newer dual-action agents like tapentadol.',
          ),
          ChronicPainManagementItem(
            title: 'ADJUVANTS',
            description: 'Addition of corticosteroids, alpha-2 agonists, or lidocaine infusions to target various pain pathways.',
            additionalInfo: 'Help reduce opioid requirements and manage specific pain types like inflammatory or neuropathic.',
          ),
        ],
      ),
      ChronicPainManagementCategory(
        categoryName: 'Interventional Approaches',
        items: [
          ChronicPainManagementItem(
            title: 'DIAGNOSTIC & THERAPEUTIC BLOCKS',
            description: 'Diagnostic blocks use small-volume LA for localization; therapeutic blocks add steroids.',
            subtitle: 'Techniques include USG for real-time visualization and Fluoroscopy/CT for deep ganglia',
            additionalInfo: 'Helps identify the exact pain generator in complex cases.',
          ),
          ChronicPainManagementItem(
            title: 'SOMATIC NERVE BLOCKS',
            description: 'Targeting specific nerves like Trigeminal, glossopharyngeal, occipital, and suprascapular.',
            subtitle: 'Includes paravertebral, facet, and pudendal blocks for various physical pain conditions',
            additionalInfo: 'Each block has specific risks such as pneumothorax for suprascapular/paravertebral blocks.',
          ),
          ChronicPainManagementItem(
            title: 'SYMPATHETIC BLOCKS',
            description: 'Stellate (C6–C7), splanchnic, celiac, and lumbar sympathetic chain blockades.',
            subtitle: 'Superior hypogastric and ganglion impar blocks for pelvic and perianal pain',
            additionalInfo: 'Stellate success is marked by Horner\'s syndrome; Celiac blocks help in upper abdominal cancer.',
          ),
          ChronicPainManagementItem(
            title: 'EPIDURAL & SPINAL TECHNIQUES',
            description: 'Epidural steroid injections (caudal, transforaminal, interlaminar) for cervical and lumbar pain.',
            subtitle: 'Most effective when implemented early (within 2 weeks) of pain onset',
            additionalInfo: 'Selective nerve root blocks help identify the specific damaged segment.',
          ),
          ChronicPainManagementItem(
            title: 'ABLATIVE METHODS',
            description: 'RF ablation for facet joints/trigeminal rhizotomy and cryoanalgesia for temporary relief.',
            subtitle: 'Chemical neurolysis using phenol or alcohol for terminal cancer pain',
            additionalInfo: 'Aims for long-term neural interruption in severe, refractory cases.',
          ),
          ChronicPainManagementItem(
            title: 'NEUROMODULATION',
            description: 'Use of TENS, spinal cord stimulation (SCS), and peripheral nerve stimulation.',
            subtitle: 'Deep brain stimulation used for the most refractory neuropathic and cancer pain states',
            additionalInfo: 'SCS is particularly effective for CRPS and failed back surgery syndrome.',
          ),
          ChronicPainManagementItem(
            title: 'OTHER APPROACHES',
            description: 'Vertebral augmentation (vertebroplasty/kyphoplasty) and botulinum toxin injections.',
            subtitle: 'Targeting specific issues like osteoporotic fractures or chronic migraines',
            additionalInfo: 'Vertebroplasty provides rapid stabilization of vertebral body fractures.',
          ),
        ],
      ),
      ChronicPainManagementCategory(
        categoryName: 'Special Notes',
        items: [
          ChronicPainManagementItem(
            title: 'WHO ANALGESIC LADDER',
            description: 'Stepwise progression from non-opioids to weak and eventually strong opioids.',
            additionalInfo: 'Adjuvants should be considered at every level of the ladder for optimal pain control.',
          ),
          ChronicPainManagementItem(
            title: 'OPIOID SIDE EFFECTS',
            description: 'Includes nausea, sedation, tolerance, and persistent constipation requiring laxatives.',
            additionalInfo: 'Respiratory depression is the most serious risk, requiring careful monitoring during titration.',
          ),
          ChronicPainManagementItem(
            title: 'CANCER PAIN',
            description: 'Managing "total pain" through a multimodal approach combined with appropriate adjuvants.',
            additionalInfo: 'Integrates psychological, social, and physical therapies for holistic relief.',
          ),
          ChronicPainManagementItem(
            title: 'SUMMARY SPOT QUESTIONS',
            description: 'Key markers: Chronic pain (>3–6m), Aδ sharp, C fibers dull, WHO ladder progression.',
            subtitle: 'RF for facet, Stellate C6–C7, early epidural steroids, NMDA wind-up, Glutamate strongest NT',
            additionalInfo: 'Differential block helps distinguish sympathetic vs somatic pain components.',
          ),
        ],
      ),
    ];
  }
}
