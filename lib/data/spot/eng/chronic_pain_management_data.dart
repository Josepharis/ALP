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
            title: 'Pain Definition',
            description: 'An unpleasant sensory–emotional experience related to actual/potential tissue damage',
          ),
          ChronicPainManagementItem(
            title: 'Types of Pain',
            description: 'Nociceptive (somatic/visceral)',
            subtitle: 'Neuropathic (nerve injury)',
          ),
          ChronicPainManagementItem(
            title: 'Acute Pain',
            description: 'Stress response → sympathetic activity; may progress to chronic if unresolved',
          ),
          ChronicPainManagementItem(
            title: 'Chronic Pain',
            description: '>3–6 months, no stress response, associated with sleep/mood disorders & depression',
          ),
        ],
      ),
      ChronicPainManagementCategory(
        categoryName: 'Nociception – Anatomy & Physiology',
        items: [
          ChronicPainManagementItem(
            title: 'First-Order Neurons',
            description: 'Enter via dorsal root (sometimes C fibers ventral)',
          ),
          ChronicPainManagementItem(
            title: 'Second-Order Neurons',
            description: 'Lamina I–VI (dorsal horn)',
            subtitle: 'Nociceptive-specific (lamina I): high threshold, no intensity discrimination',
            additionalInfo: 'WDR (lamina V): "wind-up phenomenon," central sensitization',
          ),
          ChronicPainManagementItem(
            title: 'Third-Order Neurons',
            description: 'Thalamus → cortex (discriminative) & limbic system (emotional)',
          ),
          ChronicPainManagementItem(
            title: 'Pain Tracts',
            description: 'Lateral spinothalamic → localization, intensity',
            subtitle: 'Medial spinothalamic → emotional/autonomic response',
            additionalInfo: 'Spinoreticular → autonomic response\nSpinomesencephalic → descending antinociception',
          ),
        ],
      ),
      ChronicPainManagementCategory(
        categoryName: 'Physiology of Pain',
        items: [
          ChronicPainManagementItem(
            title: 'Aδ Fibers',
            description: 'Sharp, fast, localized pain',
          ),
          ChronicPainManagementItem(
            title: 'C Fibers',
            description: 'Dull, slow, diffuse pain',
          ),
          ChronicPainManagementItem(
            title: 'Silent Nociceptors',
            description: 'Activated only in inflammation',
          ),
          ChronicPainManagementItem(
            title: 'Mediators',
            description: 'Substance P, CGRP, glutamate (strongest excitatory NT)',
          ),
          ChronicPainManagementItem(
            title: 'Hyperalgesia',
            description: 'Primary → nociceptor sensitization (PG, histamine, bradykinin)',
            subtitle: 'Secondary → neurogenic inflammation, Substance P–mediated',
          ),
        ],
      ),
      ChronicPainManagementCategory(
        categoryName: 'Modulation',
        items: [
          ChronicPainManagementItem(
            title: 'Central Facilitation',
            description: 'NMDA activation, wind-up, NO, PG',
          ),
          ChronicPainManagementItem(
            title: 'Segmental Inhibition (Gate Control Theory)',
            description: 'Aβ fibers → GABA, glycine, adenosine',
          ),
          ChronicPainManagementItem(
            title: 'Supraspinal Inhibition',
            description: 'PAG–NRM pathways → serotonin, norepinephrine, endogenous opioids',
          ),
        ],
      ),
      ChronicPainManagementCategory(
        categoryName: 'Systemic Responses to Pain',
        items: [
          ChronicPainManagementItem(
            title: 'Acute Pain Responses',
            description: 'CV: tachycardia, HT, myocardial ischemia',
            subtitle: 'Resp: hyperventilation, atelectasis, hypoxemia',
            additionalInfo: 'GI/urinary: ↓ motility, retention\nEndocrine: ↑ cortisol, ↑ ADH, catabolism\nHematology: hypercoagulability',
          ),
          ChronicPainManagementItem(
            title: 'Chronic Pain',
            description: 'No stress response; psychological disorders (anxiety, depression)',
          ),
        ],
      ),
      ChronicPainManagementCategory(
        categoryName: 'Chronic Pain Assessment',
        items: [
          ChronicPainManagementItem(
            title: 'Pain Scales',
            description: 'NRS (0–10), VAS (10 cm), FACES (>3 y), McGill Pain Questionnaire',
          ),
          ChronicPainManagementItem(
            title: 'Psychological Tests',
            description: 'MMPI, Beck Depression Inventory',
          ),
          ChronicPainManagementItem(
            title: 'Functional Tests',
            description: 'MPI, SF-36, PDI, Oswestry',
          ),
          ChronicPainManagementItem(
            title: 'EMG/Nerve Conduction',
            description: 'Distinguish organic vs functional',
          ),
        ],
      ),
      ChronicPainManagementCategory(
        categoryName: 'Chronic Pain Syndromes',
        items: [
          ChronicPainManagementItem(
            title: 'Myofascial Pain',
            description: 'Trigger points',
          ),
          ChronicPainManagementItem(
            title: 'Fibromyalgia',
            description: 'WPI & SS criteria; sleep & CV symptoms',
          ),
          ChronicPainManagementItem(
            title: 'Low Back Pain',
            description: 'Disc herniation, spinal stenosis, facet syndrome',
          ),
          ChronicPainManagementItem(
            title: 'Neuropathic Pain',
            description: 'Diabetic neuropathy, CRPS I–II',
          ),
          ChronicPainManagementItem(
            title: 'Postherpetic Neuralgia',
            description: 'Antidepressants, anticonvulsants, TENS, capsaicin/lidocaine',
          ),
          ChronicPainManagementItem(
            title: 'Headache',
            description: 'Migraine, cluster, tension, trigeminal neuralgia',
          ),
          ChronicPainManagementItem(
            title: 'Cancer Pain',
            description: 'WHO 3-step ladder approach',
          ),
        ],
      ),
      ChronicPainManagementCategory(
        categoryName: 'Pharmacological Therapy',
        items: [
          ChronicPainManagementItem(
            title: 'NSAIDs/Acetaminophen',
            description: 'Mild pain',
          ),
          ChronicPainManagementItem(
            title: 'Antidepressants (TCA, SNRI)',
            description: 'Neuropathic pain',
          ),
          ChronicPainManagementItem(
            title: 'Anticonvulsants',
            description: 'Gabapentin, carbamazepine → trigeminal neuralgia, neuropathy',
          ),
          ChronicPainManagementItem(
            title: 'Muscle Relaxants',
            description: 'Baclofen, tizanidine → spasticity',
          ),
          ChronicPainManagementItem(
            title: 'Opioids',
            description: 'Moderate–severe pain (morphine, fentanyl, tramadol, tapentadol)',
          ),
          ChronicPainManagementItem(
            title: 'Adjuvants',
            description: 'Corticosteroids, α2-agonists (clonidine), lidocaine infusion',
          ),
        ],
      ),
      ChronicPainManagementCategory(
        categoryName: 'Interventional Approaches',
        items: [
          ChronicPainManagementItem(
            title: 'Diagnostic & Therapeutic Blocks',
            description: 'Diagnostic: small-volume LA (facet, root)',
            subtitle: 'Therapeutic: LA ± steroid',
            additionalInfo: 'Techniques:\nUSG → real-time imaging\nFluoroscopy/CT → deep ganglion targeting',
          ),
          ChronicPainManagementItem(
            title: 'Somatic Nerve Blocks',
            description: 'Trigeminal (Gasserian ganglion, maxillary/mandibular branches) → trigeminal neuralgia, cancer pain',
            subtitle: 'Facial block → spasm, herpes zoster, ocular surgery',
            additionalInfo: 'Glossopharyngeal → tonsil/base of tongue cancers, neuralgia\nOccipital → occipital neuralgia, headache\nSuprascapular → shoulder pain\nParavertebral → cervical, thoracic, lumbar root pain\nMedial branch/facet → facet syndrome (RF for long-term relief)\nPudendal → perineal pain, labor analgesia',
          ),
          ChronicPainManagementItem(
            title: 'Sympathetic Blocks',
            description: 'Stellate (C6–C7) → head, neck, arm, chest pain; CRPS, Raynaud\'s',
            subtitle: 'Thoracic sympathetic chain → rarely used (pneumothorax risk)',
            additionalInfo: 'Splanchnic (T11–12) → abdominal visceral pain\nCeliac plexus → upper abdominal malignancy pain\nLumbar sympathetic → lower extremity, vascular pain\nSuperior hypogastric → pelvic organ pain\nGanglion impar → perianal/coccygeal pain',
          ),
          ChronicPainManagementItem(
            title: 'Epidural & Spinal Techniques',
            description: 'Epidural steroid injection: radicular pain, cervical/lumbar pain',
            subtitle: 'Most effective early (<2 wks)',
            additionalInfo: 'Steroids: methylprednisolone, triamcinolone\nRoutes: caudal, transforaminal, interlaminar\nSelective root blocks: diagnostic & therapeutic',
          ),
          ChronicPainManagementItem(
            title: 'Ablative Methods',
            description: 'RF ablation: facet medial branch, trigeminal rhizotomy',
            subtitle: 'Cooled RF → larger lesion area',
            additionalInfo: 'Cryoanalgesia: temporary block (post-thoracotomy, peripheral nerves)\nChemical neurolysis: phenol (protein coagulation), alcohol (lipid extraction)',
          ),
          ChronicPainManagementItem(
            title: 'Neuromodulation',
            description: 'TENS: mild–moderate neuropathic pain',
            subtitle: 'Spinal cord stimulation: refractory neuropathic pain, CRPS',
            additionalInfo: 'Peripheral nerve stimulation: electrode near damaged nerve\nDeep brain stimulation: periaqueductal/periventricular gray for refractory pain',
          ),
          ChronicPainManagementItem(
            title: 'Other Approaches',
            description: 'Vertebral augmentation (vertebroplasty, kyphoplasty) → tumor/osteoporosis pain',
            subtitle: 'Botulinum toxin: migraine, dystonia, myofascial pain',
          ),
        ],
      ),
      ChronicPainManagementCategory(
        categoryName: 'Special Notes',
        items: [
          ChronicPainManagementItem(
            title: 'WHO Analgesic Ladder',
            description: 'Mild: acetaminophen/NSAIDs',
            subtitle: 'Moderate: weak opioid + non-opioid ± adjuvant',
            additionalInfo: 'Severe: strong opioid + non-opioid ± adjuvant',
          ),
          ChronicPainManagementItem(
            title: 'Opioid Side Effects',
            description: 'Constipation (always laxatives), nausea, sedation, tolerance, dependence',
          ),
          ChronicPainManagementItem(
            title: 'Cancer Pain',
            description: 'Multimodal approach + adjuvants',
          ),
        ],
      ),
      ChronicPainManagementCategory(
        categoryName: 'Key Exam Spots',
        items: [
          ChronicPainManagementItem(
            title: 'SUMMARY SPOT QUESTIONS',
            description: 'Chronic pain: >3–6 months, no stress response',
            subtitle: 'Aδ fibers: sharp, fast; C fibers: dull, slow',
            additionalInfo: 'WHO ladder: mild→moderate→severe\nRF ablation: facet medial branch\nStellate ganglion: C6–C7\nEpidural steroids: most effective early',
          ),
        ],
      ),
    ];
  }
}
