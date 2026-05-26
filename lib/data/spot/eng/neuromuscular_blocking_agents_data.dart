import 'package:flutter/material.dart';

class NeuromuscularBlockingAgentsItem {
  final String title;
  final String description;
  final String? subtitle;
  final String? additionalInfo;

  NeuromuscularBlockingAgentsItem({
    required this.title,
    required this.description,
    this.subtitle,
    this.additionalInfo,
  });
}

class NeuromuscularBlockingAgentsCategory {
  final String categoryName;
  final List<NeuromuscularBlockingAgentsItem> items;

  NeuromuscularBlockingAgentsCategory({
    required this.categoryName,
    required this.items,
  });
}

class NeuromuscularBlockingAgentsData {
  static List<NeuromuscularBlockingAgentsCategory> getNeuromuscularBlockingAgentsData(
    BuildContext context,
  ) {
    return [
      NeuromuscularBlockingAgentsCategory(
        categoryName: 'Neuromuscular Transmission Physiology',
        items: [
          NeuromuscularBlockingAgentsItem(
            title: "ACTION POTENTIAL AND ACH RELEASE",
            description: "An action potential reaching the nerve terminal opens calcium channels, triggering the release of acetylcholine (ACh) into the motor end-plate.",
            subtitle: "Binding of ACh to only 10% of receptors is sufficient for muscle contraction",
            additionalInfo: "The released ACh binds to nicotinic receptors on the postsynaptic membrane, opening sodium channels and initiating depolarization. This process occurs within milliseconds, and ACh is rapidly terminated by the enzyme acetylcholinesterase (AChE).",
          ),
          NeuromuscularBlockingAgentsItem(
            title: "NICOTINIC RECEPTOR STRUCTURE (2α + β + δ + ε)",
            description: "In the adult, it is a complex protein structure consisting of five subunits: 2 alpha, 1 beta, 1 delta, and 1 epsilon.",
            subtitle: "In the fetal period, the gamma (γ) subunit replaces the epsilon (ε) subunit",
            additionalInfo: "For muscle contraction to occur, ACh molecules must bind simultaneously to both alpha (α) subunits. In pathological states (burns, strokes), the re-synthesis of fetal-type receptors creates a risk of fatal hyperkalemia following succinylcholine administration.",
          ),
          NeuromuscularBlockingAgentsItem(
            title: "ACH RELEASE AND QUANTAL THEORY",
            description: "Acetylcholine is stored in the nerve terminal in packets called 'quanta' within vesicles.",
            subtitle: "Approximately 200 quanta (2 million ACh molecules) are released per nerve stimulus",
            additionalInfo: "Each quantum contains about 10,000 ACh molecules. An increase in environmental calcium (Ca²⁺) strengthens release, while an excess of magnesium suppresses ACh release, thereby enhancing the effect of muscle relaxants.",
          ),
          NeuromuscularBlockingAgentsItem(
            title: "PATHOLOGICAL STATES AND RECEPTOR COUNT",
            description: "Certain diseases impair neuromuscular transmission by altering the amount of ACh released or receptor sensitivity.",
            additionalInfo: "• Eaton-Lambert Syndrome: A condition where ACh release from the nerve terminal is reduced; sensitivity to muscle relaxants is increased.\n• Myasthenia Gravis: An autoimmune condition where the number of postsynaptic receptors is reduced; resistance to succinylcholine is seen, while there is hypersensitivity to nondepolarizing agents.",
          ),
        ],
      ),
      NeuromuscularBlockingAgentsCategory(
        categoryName: 'Block Mechanisms and Pharmacology',
        items: [
          NeuromuscularBlockingAgentsItem(
            title: "DEPOLARIZING VS NONDEPOLARIZING BLOCK",
            description: "All muscle relaxants are quaternary ammonium compounds and are divided into two types based on how they bind to the receptor.",
            subtitle: "Depolarizing agents mimic ACh, while nondepolarizing agents are competitive antagonists",
            additionalInfo: "• Depolarizing (Succinylcholine): Binds to the receptor and causes persistent depolarization, making the muscle non-excitable (Phase I Block). If the duration is prolonged, it converts to a Phase II block.\n• Nondepolarizing: Binds to the alpha subunits and prevents the binding of ACh, thereby preventing the opening of the channel. This block can be reversed with AChE inhibitors (Neostigmine).",
          ),
          NeuromuscularBlockingAgentsItem(
            title: "DENERVATION HYPERSENSITIVITY",
            description: "Following nerve injury, burns, or immobilization, the number of 'extra-junctional' receptors on the muscle surface increases rapidly.",
            additionalInfo: "This situation leads to an excessive efflux of ions and uncontrollable hyperkalemia following succinylcholine administration. In such patients, there is generally a resistance to nondepolarizing agents (more dose is needed to block more receptors).",
          ),
          NeuromuscularBlockingAgentsItem(
            title: "CHANNEL BLOCKS (OPEN AND CLOSED)",
            description: "A transmission defect resulting from drug molecules physically occluding the ion channel on the receptor.",
            subtitle: "Antibiotics, cocaine, and neostigmine can cause channel block",
            additionalInfo: "Occlusion of the entry path while the channel is closed is called a 'closed channel block,' while entering and occluding the channel while it is open is called an 'open channel block.' These types of blocks generally do not respond to classic reversal (antagonism) methods.",
          ),
          NeuromuscularBlockingAgentsItem(
            title: "ANTAGONISM AND DEGRADATION PATHWAYS",
            description: "Termination of the block is achieved either by the excretion of the drug from the body or by pharmacological agents.",
            subtitle: "Sugammadex clears only steroidal agents (Rocuronium, Vecuronium) by encapsulating them",
            additionalInfo: "• Pseudocholinesterase: Responsible for the degradation of succinylcholine and mivacurium.\n• Hoffman Elimination: The spontaneous degradation of atracurium and cisatracurium independent of the liver/kidney.\n• AChE Inhibitors: Competitively terminate a nondepolarizing block by increasing the amount of ACh at the junction.",
          ),
        ],
      ),
      NeuromuscularBlockingAgentsCategory(
        categoryName: 'Peripheral Nerve Stimulation',
        items: [
          NeuromuscularBlockingAgentsItem(
            title: "TOF (TRAIN-OF-FOUR) MONITORING",
            description: "The standard method for determining the level of muscle relaxation using 4 consecutive stimuli delivered within two seconds.",
            additionalInfo: "A progressive weakening (fade) of the responses (twitches) is a typical indicator of a nondepolarizing block or a Phase II block. The absence of all 4 responses indicates a deep block; the disappearance of the last twitch (T4) indicates 75-80% of receptors are blocked, while the disappearance of the first twitch (T1) indicates over 95% of receptors are occluded.",
          ),
          NeuromuscularBlockingAgentsItem(
            title: "TETANIC STIMULATION AND OTHER METHODS",
            description: "Potent stimuli used to assess deep block levels (when TOF is 0) or to rule out residual block before awakening.",
            subtitle: "Post-tetanic potentiation is seen only in a nondepolarizing block",
            additionalInfo: "ACh release increases following tetanic stimulation (50-100 Hz, 5 seconds), leading to a transient strengthening (potentiation). The most sensitive methods for assessing residual block are DBS (Double Burst Stimulation) and tetanic stimulation.",
          ),
        ],
      ),
      NeuromuscularBlockingAgentsCategory(
        categoryName: 'Depolarizing Muscle Relaxants (Succinylcholine)',
        items: [
          NeuromuscularBlockingAgentsItem(
            title: "SUCCINYLCHOLINE (DIACETYLCHOLINE) PHARMACOLOGY",
            description: "The gold standard for rapid onset (30-60 s) and short duration (5-10 min), it is the only depolarizing agent.",
            additionalInfo: "It consists of two acetylcholine molecules joined together. Under normal conditions, its effect is very short because it is rapidly broken down by pseudocholinesterase (plasma cholinesterase). It provides the most ideal conditions for intubation.",
          ),
          NeuromuscularBlockingAgentsItem(
            title: "DIBUCAINE NUMBER AND GENETIC VARIATIONS",
            description: "A laboratory value that determines states where the pseudocholinesterase enzyme is genetically deficient or abnormal.",
            subtitle: "A low dibucaine number causes the effect of succinylcholine to be prolonged for hours",
            additionalInfo: "• Normal (80%): Duration 5-10 min.\n• Heterozygous (40-60%): Duration 10-20 min.\n• Homozygous (20%): Duration can extend up to 4-6 hours. In these patients, mechanical ventilation support is vital.",
          ),
          NeuromuscularBlockingAgentsItem(
            title: "CARDIOVASCULAR SIDE EFFECTS",
            description: "By acting on muscarinic receptors, it can cause severe bradycardia, especially with a second dose in children.",
            additionalInfo: "While bradycardia is dominant at low doses, tachycardia and hypertension may be seen at high doses. To prevent bradycardia, its use in combination with atropine is recommended in pediatric cases.",
          ),
          NeuromuscularBlockingAgentsItem(
            title: "HYPERKALEMIA AND OTHER CRITICAL SIDE EFFECTS",
            description: "By causing the efflux of potassium from the cell (normally a 0.5 mEq/L increase), it can cause sudden cardiac arrest in at-risk patients.",
            subtitle: "Its use in burns and severe trauma is fatal from day 7-10 onwards",
            additionalInfo: "• Intraocular Pressure: Causes an increase; caution should be used in eye trauma.\n• Fasciculation: The muscle twitches seen before induction lead to postoperative muscle pain.\n• MH Trigger: One of the strongest triggers of Malignant Hyperthermia.\n• Masseter Spasm: Inability to open the mouth can be the first sign of MH.",
          ),
          NeuromuscularBlockingAgentsItem(
            title: "CONTRAINDICATIONS AND MH RELATIONSHIP",
            description: "Should be strictly avoided in routine pediatric use and known history of Malignant Hyperthermia (MH) due to its side effects.",
            additionalInfo: "Additionally, it is not used in advanced burns, crush injuries, spinal cord injuries, and neurological diseases characterized by denervation (ALS, MS, etc.) due to the risk of hyperkalemia.",
          ),
        ],
      ),
      NeuromuscularBlockingAgentsCategory(
        categoryName: 'Nondepolarizing Muscle Relaxants',
        items: [
          NeuromuscularBlockingAgentsItem(
            title: "GENERAL CHARACTERISTICS AND STRUCTURAL ANALYSIS",
            description: "Classified as Steroidal (e.g., Pancuronium) or Isoquinoline (e.g., Atracurium) derivatives based on their chemical structure.",
            subtitle: "Steroidal agents are generally vagolytic (cause tachycardia), while isoquinolines cause histamine release",
            additionalInfo: "They do not enter the cell; they act only as competitive antagonists at the receptor level. Their side effects are generally autonomic effects based on their chemical structure. Their onset of action is generally slower compared to succinylcholine.",
          ),
          NeuromuscularBlockingAgentsItem(
            title: "PHARMACOLOGICAL FACTORS AFFECTING BLOCK POTENCY",
            description: "The inhalation anesthetics used and electrolyte imbalances deepen a nondepolarizing block.",
            subtitle: "Hypothermia and an excess of magnesium significantly strengthen the block",
            additionalInfo: "• Drugs: Aminoglycosides, tetracyclines, and calcium channel blockers increase the block effect.\n• Electrolytes: Hypokalemia, hypocalcemia, and hypermagnesemia prolong the relaxation time by reducing ACh effectiveness at the junction.",
          ),
          NeuromuscularBlockingAgentsItem(
            title: "SPECIAL PATIENT GROUPS AND RESISTANT MUSCLES",
            description: "The sensitivity of muscles in the body to muscle relaxants varies; the diaphragm and glottic muscles are generally the most resistant to blockade.",
            additionalInfo: "During awakening, diaphragmatic movement is the first function to return, but glottic muscles emerge last; therefore, the tube should not be removed until full recovery is ensured. Although receptors are more sensitive in neonates, the volume of distribution is large, so dose adjustment is generally similar to adults.",
          ),
        ],
      ),
      NeuromuscularBlockingAgentsCategory(
        categoryName: 'Agent-Specific Clinical Spots',
        items: [
          NeuromuscularBlockingAgentsItem(
            title: "ATRACURIUM (HOFFMAN ELIMINATION)",
            description: "An agent that degrades spontaneously at body temperature and physiological pH (Hoffman elimination), enabling safe use in liver or kidney failure.",
            subtitle: "Its metabolite Laudanosine can trigger seizures by stimulating the central nervous system",
            additionalInfo: "Hoffman elimination slows in acidosis and accelerates in alkalosis. It can cause hypotension and bronchospasm by causing significant histamine release at high doses.",
          ),
          NeuromuscularBlockingAgentsItem(
            title: "CISATRACURIUM",
            description: "A more potent isomer of atracurium; its primary advantage is that it does not cause histamine release.",
            additionalInfo: "It is likewise degraded via Hoffman elimination. It is one of the most preferred intermediate-acting agents because it provides recovery independent of organ failure in liver and kidney patients.",
          ),
          NeuromuscularBlockingAgentsItem(
            title: "PANCURONIUM (VAGOLYTIC EFFECT)",
            description: "A long-acting steroidal derivative known for increasing heart rate and blood pressure by suppressing muscarinic receptors.",
            additionalInfo: "Primarily excreted by the kidneys, hence its effect is greatly prolonged in kidney failure. It can provide an advantage in cases where tachycardia is desired (e.g., pediatric cardiac surgery).",
          ),
          NeuromuscularBlockingAgentsItem(
            title: "VECURONIUM",
            description: "An intermediate-acting steroid excreted primarily via the bile that provides cardiovascular stability.",
            subtitle: "Its active metabolite can accumulate in kidney failure, prolonging the block",
            additionalInfo: "Does not cause histamine release. Women are approximately 30% more sensitive to this drug than men. Accumulation effect (due to metabolites) can be seen in long-term ICU infusions.",
          ),
          NeuromuscularBlockingAgentsItem(
            title: "ROCURONIUM",
            description: "The fastest-acting nondepolarizing agent (60-90 s); an alternative for 'rapid induction' when succinylcholine is contraindicated.",
            additionalInfo: "It is not metabolized; it is excreted unchanged via the bile and kidneys. The ability to reverse it rapidly at any time with Sugammadex (antagonism) provides a major safety advantage. Can slightly increase heart rate.",
          ),
          NeuromuscularBlockingAgentsItem(
            title: "GANTACURIUM",
            description: "A very new agent with a very rapid onset and very short duration of action similar to succinylcholine.",
            additionalInfo: "Rapidly inactivated by ester hydrolysis and by reduction with L-cysteine. In the future, it is expected to be a side-effect-free alternative to succinylcholine.",
          ),
        ],
      ),
    ];
  }
}
