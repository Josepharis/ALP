import 'package:flutter/material.dart';

class NeurophysiologyAnesthesiaItem {
  final String title;
  final String description;
  final String? subtitle;
  final String? additionalInfo;

  NeurophysiologyAnesthesiaItem({
    required this.title,
    required this.description,
    this.subtitle,
    this.additionalInfo,
  });
}

class NeurophysiologyAnesthesiaCategory {
  final String categoryName;
  final List<NeurophysiologyAnesthesiaItem> items;

  NeurophysiologyAnesthesiaCategory({
    required this.categoryName,
    required this.items,
  });
}

class NeurophysiologyAnesthesiaData {
  static List<NeurophysiologyAnesthesiaCategory>
      getNeurophysiologyAnesthesiaData(BuildContext context) {
    return [
      NeurophysiologyAnesthesiaCategory(
        categoryName: 'Brain Metabolism',
        items: [
          NeurophysiologyAnesthesiaItem(
            title: "BRAIN OXYGEN CONSUMPTION (CMRO2) AND DISTRIBUTION",
            description: "The brain accounts for only 2% of body weight but consumes 20% of total body oxygen.",
            subtitle: "Adult CMRO2 is 3–3.8 mL/100 g/min; 60% of this energy is used for electrical activity",
            additionalInfo: "The remaining 40% is spent on maintaining cellular integrity (homeostasis). This distinction defines the limit of an anesthetic's capacity to suppress metabolism.",
          ),
          NeurophysiologyAnesthesiaItem(
            title: "CRITICAL PAO2 VALUES AND LOSS OF CONSCIOUSNESS",
            description: "A drop in arterial oxygen pressure (PaO2) below 30 mmHg stops brain function within seconds.",
            additionalInfo: "Loss of consciousness occurs within 10 seconds of hypoxia onset, while permanent cellular damage begins during total anoxia lasting 3–8 minutes.",
          ),
          NeurophysiologyAnesthesiaItem(
            title: "BRAIN GLUCOSE CONSUMPTION RATE",
            description: "The brain's primary energy source is glucose, with an average consumption rate of 5 mg/100 g/min.",
            additionalInfo: "Because glucose stores are very limited, the brain is dependent on uninterrupted blood flow and glucose delivery.",
          ),
        ],
      ),
      NeurophysiologyAnesthesiaCategory(
        categoryName: 'Cerebral Blood Flow (CBF / SKA)',
        items: [
          NeurophysiologyAnesthesiaItem(
            title: "NORMAL CEREBRAL BLOOD FLOW AND TISSUE DISTRIBUTION",
            description: "Cerebral blood flow (CBF) is normally at an average level of 50 mL/100 g/min (~750 mL/min total).",
            subtitle: "Gray matter (80 mL/100 g/min) has much higher blood flow than white matter (20 mL/100 g/min)",
            additionalInfo: "This difference stems from the much higher neuronal density and metabolic activity in the gray matter.",
          ),
          NeurophysiologyAnesthesiaItem(
            title: "ISCHEMIC THRESHOLDS AND EEG CHANGES",
            description: "Reduced blood flow leads to gradual functional and structural destruction in the brain.",
            subtitle: "EEG slows when CBF falls below 20–25 mL, and flattens below 15–20 mL",
            additionalInfo: "When flow drops below the 10 mL/100 g/min value, neuronal cell membrane integrity is disrupted and irreversible damage begins.",
          ),
          NeurophysiologyAnesthesiaItem(
            title: "TRANSCRANIAL DOPPLER (TCD) MONITORING",
            description: "Brain perfusion can be monitored non-invasively by measuring middle cerebral artery flow velocity with TCD.",
            subtitle: "Normal flow velocity is 55 cm/sec; values above 120 cm/sec may indicate vasospasm or hemorrhage",
            additionalInfo: "It is invaluable for instantaneous perfusion monitoring in carotid endarterectomy and SAH cases with vasospasm risk.",
          ),
          NeurophysiologyAnesthesiaItem(
            title: "BRAIN TISSUE OXIMETRY AND ISCHEMIA LIMITS",
            description: "Brain tissue oxygen pressure (PbtO2) measurement offers instantaneous data in local ischemia monitoring.",
            subtitle: "Normal values are between 20–50 mmHg; <20 mmHg intervention, <10 mmHg ischemia is critical",
            additionalInfo: "It is used along with ICP monitoring in assessing the adequacy of brain perfusion in head trauma patients.",
          ),
          NeurophysiologyAnesthesiaItem(
            title: "MICRODIALYSIS AND METABOLIC ISCHEMIA TRACKING",
            description: "Biochemical analysis of brain metabolism is performed with samples taken from the interstitial fluid.",
            additionalInfo: "An increase in the lactate/pyruvate ratio is an indicator that the tissue has switched to anaerobic metabolism and that ischemia has begun at the cellular level.",
          ),
        ],
      ),
      NeurophysiologyAnesthesiaCategory(
        categoryName: 'Cerebral Perfusion Pressure (CPP / SPB)',
        items: [
          NeurophysiologyAnesthesiaItem(
            title: "CPP FORMULA AND NORMAL INTRACRANIAL PRESSURE (ICP)",
            description: "Cerebral perfusion pressure (CPP) is the difference between mean arterial pressure (MAP) and intracranial pressure (ICP).",
            subtitle: "ICP is normally below 10 mmHg; the formula is CPP = MAP – ICP",
            additionalInfo: "When ICP rises in cases of intracranial mass or edema, the necessity to also raise MAP to maintain CPP arises.",
          ),
          NeurophysiologyAnesthesiaItem(
            title: "CPP CRITICAL VALUES AND EEG RELATIONSHIP",
            description: "Drops in perfusion pressure directly suppress brain functions.",
            subtitle: "EEG slows when CPP falls below 50 mmHg, and flattens in the 25–40 mmHg range",
            additionalInfo: "CPP falling below 25 mmHg means blood cannot enter the brain, and permanent damage develops rapidly.",
          ),
        ],
      ),
      NeurophysiologyAnesthesiaCategory(
        categoryName: 'Autoregulation Mechanisms',
        items: [
          NeurophysiologyAnesthesiaItem(
            title: "NORMAL AUTOREGULATION LIMITS AND INFLUENCES",
            description: "The brain has the ability to maintain blood flow (CBF) constant even if MAP changes within the 60–160 mmHg range.",
            subtitle: "In patients with chronic hypertension, this safe autoregulation limit shifts upward (to the right)",
            additionalInfo: "This balance is provided by myogenic (vessel wall tension) and metabolic (CO2 and H accumulation) mechanisms. This mechanism may be impaired under head trauma or severe anesthesia.",
          ),
        ],
      ),
      NeurophysiologyAnesthesiaCategory(
        categoryName: 'Effect of Carbon Dioxide (PaCO2)',
        items: [
          NeurophysiologyAnesthesiaItem(
            title: "PACO2 RANGE AND CEREBRAL BLOOD FLOW RELATIONSHIP",
            description: "Cerebral blood flow shows a linear relationship with carbon dioxide pressure within the 20–80 mmHg PaCO2 range.",
            subtitle: "Every 1 mmHg PaCO2 change alters CBF by approximately 1–2 mL/100 g/min",
            additionalInfo: "Hyperventilation (hypocapnia) lowers ICP by causing cerebral vasoconstriction. However, this effect disappears within 24–48 hours with CSF bicarbonate adaptation.",
          ),
        ],
      ),
      NeurophysiologyAnesthesiaCategory(
        categoryName: 'Effect of PaO2, Temperature, and Viscosity',
        items: [
          NeurophysiologyAnesthesiaItem(
            title: "EFFECT OF HYPOXIA AND HYPEROXIA ON CBF",
            description: "Brain blood flow begins to increase exponentially when PaO2 drops below 50 mmHg.",
            subtitle: "Hyperoxia (high oxygen level), on the other hand, can reduce cerebral blood flow by approximately 10%",
            additionalInfo: "The primary purpose of flow increase in hypoxia is to compensate for reduced oxygen content by sending a larger amount of blood.",
          ),
          NeurophysiologyAnesthesiaItem(
            title: "THE ROLE OF TEMPERATURE CHANGE ON METABOLISM AND FLOW",
            description: "Every 1°C change in body temperature causes a parallel change of 5–7% in cerebral blood flow (CBF).",
            subtitle: "A 10°C drop in body temperature reduces the CMRO2 value by approximately 50%",
            additionalInfo: "If brain temperature drops to 20°C, the EEG becomes isoelectric (silent); this provides brain protection in deep hypothermic arrest surgeries.",
          ),
          NeurophysiologyAnesthesiaItem(
            title: "BLOOD VISCOSITY AND HEMATOCRIT OPTIMIZATION",
            description: "The most important rheological determinant of cerebral perfusion is blood viscosity, and the main determinant is hematocrit (Hct).",
            subtitle: "The most ideal Hct value for optimal oxygen delivery and fluidity to the brain is around 30%",
            additionalInfo: "While low Hct (anemia) increases fluidity, it lowers oxygen carrying capacity; high Hct slows flow, creating a risk of thrombosis.",
          ),
        ],
      ),
      NeurophysiologyAnesthesiaCategory(
        categoryName: 'Blood–Brain Barrier (BBB)',
        items: [
          NeurophysiologyAnesthesiaItem(
            title: "BBB PERMEABILITY RULES AND OSMOTIC BALANCE",
            description: "Small, lipid-soluble, and non-ionized molecules cross the BBB easily, while large and ionized ones cannot.",
            subtitle: "Water passes freely through the barrier; thus, the brain is rapidly affected by osmotic differences in electrolyte disturbances",
            additionalInfo: "If BBB integrity is disrupted by trauma or infection, fluid passage occurs due to hydrostatic pressure (blood pressure) difference rather than osmotic difference, and edema increases rapidly.",
          ),
        ],
      ),
      NeurophysiologyAnesthesiaCategory(
        categoryName: 'Cerebrospinal Fluid (CSF)',
        items: [
          NeurophysiologyAnesthesiaItem(
            title: "CSF PRODUCTION RATE, VOLUME, AND CIRCULATION",
            description: "CSF is produced at a rate of approximately 500 mL per day (21 mL per hour), but its total volume is constant at around 150 mL.",
            additionalInfo: "Over 70% of production is carried out by the choroid plexus within the ventricles.",
          ),
          NeurophysiologyAnesthesiaItem(
            title: "CSF CIRCULATION PATHWAY AND VENTRICULAR ANATOMY",
            description: "CSF flows in a specific order along the ventricular system starting from the choroid plexus and passes into the subarachnoid space.",
            subtitle: "Flow: Lateral ventricle → Monroe → 3rd Ventricle → Sylvius → 4th Ventricle → Magendie/Luschka → Cisterna Magna",
            additionalInfo: "Obstruction in any of these narrow channels (especially the Aqueduct of Sylvius) leads to hydrocephalus.",
          ),
          NeurophysiologyAnesthesiaItem(
            title: "PHARMACOLOGICAL AGENTS REDUCING CSF PRODUCTION",
            description: "Certain drugs and anesthetics can assist in ICP management by suppressing CSF production.",
            subtitle: "Acetazolamide, steroids, spironolactone, furosemide, and isoflurane are the primary agents reducing CSF production",
            additionalInfo: "Vasoconstrictor agents also indirectly lower CSF production by reducing choroid plexus blood flow.",
          ),
          NeurophysiologyAnesthesiaItem(
            title: "PHYSICOCHEMICAL PROPERTIES OF CSF FLUID",
            description: "CSF is an isotonic fluid formed by active ion secretion (primarily Sodium) compared to blood plasma.",
            additionalInfo: "It assumes a protective and metabolic balancing role for the nerve tissue thanks to its low protein content and active ion balance.",
          ),
        ],
      ),
      NeurophysiologyAnesthesiaCategory(
        categoryName: 'Intracranial Pressure (ICP / KİB)',
        items: [
          NeurophysiologyAnesthesiaItem(
            title: "NORMAL ICP VALUE AND MONITORING",
            description: "Normal intracranial pressure in a healthy adult in the supine position is below 10 mmHg.",
            additionalInfo: "ICP tracking is performed invasively with ventricular catheters (gold standard) or parenchymal sensors.",
          ),
          NeurophysiologyAnesthesiaItem(
            title: "INTRACRANIAL CONTENT DISTRIBUTION AND HERNIATION RISK",
            description: "The brain tissue accounts for 80% of the intracranial volume, blood for 12%, and CSF for 8% (Monro-Kellie doctrine).",
            subtitle: "If an increase in one of these volumes cannot be compensated by the others, the elastance limit is exceeded and herniation begins",
            additionalInfo: "Decreased intracranial elastance leads to small volume increases causing very high ICP spikes.",
          ),
        ],
      ),
      NeurophysiologyAnesthesiaCategory(
        categoryName: 'Cerebral Effects of Volatile Agents',
        items: [
          NeurophysiologyAnesthesiaItem(
            title: "EFFECT OF VOLATILE AGENTS ON METABOLISM (CMRO2)",
            description: "Volatile anesthetics reduce the brain metabolic rate (CMRO2) in a dose-dependent manner.",
            subtitle: "Isoflurane suppresses metabolism most strongly, while halothane suppresses it least",
            additionalInfo: "This decrease in CMRO2 results from anesthetics suppressing neuronal electrical activity.",
          ),
          NeurophysiologyAnesthesiaItem(
            title: "EFFECT OF VOLATILE AGENTS ON CEREBRAL BLOOD FLOW (CBF)",
            description: "Volatile anesthetics increase CBF by causing cerebral vasodilation despite lowering metabolism.",
            subtitle: "Halothane increases CBF most (200% increase), while sevoflurane increases it least",
            additionalInfo: "Isoflurane causes a moderate (20%) increase in flow. Use of these agents in intracranial masses can be risky.",
          ),
          NeurophysiologyAnesthesiaItem(
            title: "IMPAIRMENT OF AUTOREGULATION AND LUXURY PERFUSION",
            description: "Volatile agents lead to flow beyond metabolic need (luxury perfusion) by impairing brain autoregulation.",
            subtitle: "Halothane is the agent that most severely impairs autoregulation, while sevoflurane maintains this balance better at low doses (<1 MAC)",
            additionalInfo: "The luxury perfusion state can lead to unwanted volume increases in patients with impaired BBB and ICP balance.",
          ),
          NeurophysiologyAnesthesiaItem(
            title: "EFFECT OF VOLATILE AGENTS ON CSF DYNAMICS",
            description: "Different inhalation agents show different effects on CSF production and absorption.",
            subtitle: "Isoflurane increases CSF absorption, while Desflurane increases CSF production and decreases absorption",
            additionalInfo: "Halothane, on the other hand, can create a net disadvantage by suppressing both CSF formation and absorption.",
          ),
        ],
      ),
      NeurophysiologyAnesthesiaCategory(
        categoryName: 'Neurophysiological Effects of N2O and IV Agents',
        items: [
          NeurophysiologyAnesthesiaItem(
            title: "NITROUS OXIDE (N2O) AND INTRACRANIAL PRESSURE",
            description: "While N2O is usually considered neutral, it can increase ICP by causing cerebral vasodilation when used alone.",
            subtitle: "This ICP-increasing effect is minimized when combined with other agents (barbiturate/opioid)",
            additionalInfo: "It is ABSOLUTELY contraindicated in cases with suspected intracranial air (pneumocephalus) as it will increase air volume.",
          ),
          NeurophysiologyAnesthesiaItem(
            title: "BARBITURATES AND THE 'ROBIN HOOD' PHENOMENON",
            description: "The direction of blood to ischemic (vasodilated) areas as a result of barbiturates suppressing CBF is called 'reverse steal' or the Robin Hood phenomenon.",
            subtitle: "They provide neuronal protection by greatly lowering CMRO2 and increase CSF absorption",
            additionalInfo: "They are among the most effective agents in lowering ICP by maintaining the CBF/CMRO2 ratio.",
          ),
          NeurophysiologyAnesthesiaItem(
            title: "THE ROLE OF OPIOIDS IN NEUROANESTHESIA",
            description: "Direct effects of opioids on brain metabolism and blood flow are minimal.",
            subtitle: "They are safe on ICP as long as they do not cause respiratory depression and raise PaCO2",
            additionalInfo: "However, sudden hypotension that can develop due to opioids can drop CPP (perfusion pressure) to critical levels.",
          ),
          NeurophysiologyAnesthesiaItem(
            title: "ETOMIDATE AND EPILEPTIC FOCI INTERACTION",
            description: "While etomidate reduces CMRO2 and CSF production, it can stimulate epileptic foci (proconvulsant).",
            additionalInfo: "Although it can be used to prolong seizure duration during electroconvulsive therapy, care should be taken in epilepsy surgery.",
          ),
          NeurophysiologyAnesthesiaItem(
            title: "IDEAL NEUROANESTHETIC PROPERTIES OF PROPOFOL",
            description: "Propofol becomes one of the most ideal induction/maintenance agents for neuroanesthesia by simultaneously lowering CMRO2, CBF, and ICP.",
            additionalInfo: "It is widely used in neurosurgery thanks to its rapid recovery and capacity to maintain cerebral autoregulation.",
          ),
          NeurophysiologyAnesthesiaItem(
            title: "BENZODIAZEPINES AND CEREBRAL EFFECTS",
            description: "They cause a slight decrease in CMRO2 and CBF via GABA receptors.",
            additionalInfo: "Their effects on ICP are minimal at scaled doses, but they can impair perfusion pressure in hemodynamically unstable patients.",
          ),
          NeurophysiologyAnesthesiaItem(
            title: "NEUROPROTECTIVE AND CBF EFFECTS OF KETAMINE",
            description: "Ketamine increases CBF by 50–60% while exhibiting a neuroprotective effect with NMDA receptor blockade.",
            subtitle: "It was previously avoided as it increases ICP, but current studies show its controlled use can be safe",
            additionalInfo: "Its reduction of CSF absorption still requires caution in patients with intracranial mass.",
          ),
          NeurophysiologyAnesthesiaItem(
            title: "BRAIN PROTECTIVE PROPERTIES OF LIDOCAINE",
            description: "Intravenous lidocaine slightly lowers CMRO2, CBF, and ICP values.",
            additionalInfo: "It has neuroprotective potential with its membrane-stabilizing effect and free radical scavenging role.",
          ),
        ],
      ),
      NeurophysiologyAnesthesiaCategory(
        categoryName: 'Vasopressors and Vasodilators',
        items: [
          NeurophysiologyAnesthesiaItem(
            title: "VASOPRESSOR INTERACTION WITH CBF AND AUTOREGULATION",
            description: "In a healthy brain where autoregulation is preserved, vasopressors do not significantly alter cerebral blood flow.",
            subtitle: "Beta-1 agonists (Dopamine, etc.) can increase CMR and CBF if the BBB is disrupted",
            additionalInfo: "Alpha-2 agonists (Dexmedetomidine) can create a positive effect on ICP by causing some vasoconstriction in the brain.",
          ),
          NeurophysiologyAnesthesiaItem(
            title: "ADVERSE EFFECT OF VASODILATORS ON ICP",
            description: "Direct vasodilators like nitroglycerin or nitroprusside increase CBF and ICP by dilating cerebral vessels.",
            additionalInfo: "CONTRAINDICATION: In patients whose intracranial pressure is already high, these agents should be used very carefully as they can trigger herniation.",
          ),
        ],
      ),
      NeurophysiologyAnesthesiaCategory(
        categoryName: 'Neuromuscular Blocking (NMB) Agents',
        items: [
          NeurophysiologyAnesthesiaItem(
            title: "INDIRECT EFFECTS OF NMB AGENTS ON CEREBRAL PHYSIOLOGY",
            description: "Muscle relaxants do not have a direct effect on brain physiology; their effects develop through side effects.",
            subtitle: "Histamine-releasing agents (Atracurium, etc.) can increase ICP by causing vasodilation",
            additionalInfo: "Succinylcholine fasciculations can cause CBF and ICP increase; this should be prevented with appropriate dose NMB before surgery.",
          ),
        ],
      ),
      NeurophysiologyAnesthesiaCategory(
        categoryName: 'Brain Protection Strategies',
        items: [
          NeurophysiologyAnesthesiaItem(
            title: "HYPOTHERMIA AND METABOLIC SUPPRESSION",
            description: "Controlled hypothermia is the most effective method in protecting the brain by suppressing cerebral metabolism.",
            additionalInfo: "Every 10°C drop in temperature increases ischemic tolerance by reducing brain oxygen need by 50%.",
          ),
          NeurophysiologyAnesthesiaItem(
            title: "ELECTRICAL SILENCE WITH ANESTHETIC AGENTS",
            description: "Use of high-dose barbiturate, propofol, or isoflurane minimizes ATP consumption by creating electrical silence on the EEG.",
            additionalInfo: "In this way, the 'maintenance' energy of cells is preserved in surgeries with ischemia risk.",
          ),
          NeurophysiologyAnesthesiaItem(
            title: "PROTECTION WITH KETAMINE AND NMDA BLOCKADE",
            description: "Ketamine prevents excitotoxic cell death (glutamate-mediated) by blocking NMDA receptors.",
            additionalInfo: "It has a potential protective effect, especially in slowing secondary damage processes developing after acute injury.",
          ),
          NeurophysiologyAnesthesiaItem(
            title: "NIMODIPINE AND PROTECTION FROM VASOSPASM",
            description: "The calcium channel blocker nimodipine is specific in preventing cerebral vasospasm that can develop after subarachnoid hemorrhage.",
            additionalInfo: "It is the gold standard in preventing secondary ischemic strokes (DCI) by increasing blood flow.",
          ),
          NeurophysiologyAnesthesiaItem(
            title: "GENERAL BRAIN PROTECTION MEASURES (GLYCEMIA, CARBIA)",
            description: "The most fundamental yet most important steps in brain protection are the maintenance of physiological stability.",
            subtitle: "Blood sugar should be kept <180 mg/dL (hyperglycemia increases ischemic damage) and normocarbia should be ensured",
            additionalInfo: "CPP should be kept normal or slightly high, and any obstacles (neck bending, etc.) that would cause venous pressure and ICP increase should be avoided.",
          ),
        ],
      ),
      NeurophysiologyAnesthesiaCategory(
        categoryName: 'EEG and Evoked Potential Parameters',
        items: [
          NeurophysiologyAnesthesiaItem(
            title: "EEG PATTERN CHANGES UNDER ANESTHESIA",
            description: "Most anesthetics cause an initial activation (beta) on the EEG followed by progressive depression with dose increase.",
            subtitle: "Isoflurane can cause isoelectric EEG, while Sevoflurane and Desflurane create a burst-suppression pattern",
            additionalInfo: "These patterns are used as reference values in anesthesia depth monitoring (BIS, etc.).",
          ),
          NeurophysiologyAnesthesiaItem(
            title: "CHARACTERISTIC EFFECTS OF OPIOIDS AND KETAMINE ON EEG",
            description: "While opioids cause dose-dependent slowing, ketamine causes very characteristic high-amplitude activity.",
            subtitle: "Ketamine can make classic anesthesia monitoring difficult by increasing theta and gamma waves on the EEG",
            additionalInfo: "The EEG under ketamine effect can appear 'shallow' even in deep anesthesia.",
          ),
          NeurophysiologyAnesthesiaItem(
            title: "EVOKED POTENTIALS (EP) AND LATENCY FEATURES",
            description: "The recording of the central nervous system's electrical response to external stimuli (sound, light, touch).",
            subtitle: "Short-latency responses indicate brainstem and nerve conduction, while medium- and long-latency responses reflect cortical activity",
            additionalInfo: "Cortical responses (SSEP, MEP, etc.) are much more sensitive to anesthetic agent suppression compared to lower centers.",
          ),
        ],
      ),
    ];
  }
}
