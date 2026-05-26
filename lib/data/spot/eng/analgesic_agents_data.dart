import 'package:flutter/material.dart';

class AnalgesicAgentsItem {
  final String title;
  final String description;
  final String? subtitle;
  final String? additionalInfo;

  AnalgesicAgentsItem({
    required this.title,
    required this.description,
    this.subtitle,
    this.additionalInfo,
  });
}

class AnalgesicAgentsCategory {
  final String categoryName;
  final List<AnalgesicAgentsItem> items;

  AnalgesicAgentsCategory({required this.categoryName, required this.items});
}

class AnalgesicAgentsData {
  static List<AnalgesicAgentsCategory> getAnalgesicAgentsData(
    BuildContext context,
  ) {
    return [
      AnalgesicAgentsCategory(
        categoryName: 'Opioids',
        items: [
          AnalgesicAgentsItem(
            title: "RECEPTOR MECHANISM AND G-PROTEIN COUPLING",
            description: "Opioids exert inhibitory effects through G-protein–coupled receptors (µ, κ, δ, σ) in the central and peripheral nervous systems.",
            subtitle: "Receptor activation leads to neuronal hyperpolarization",
            additionalInfo: "By inhibiting calcium (Ca²⁺) channels and activating potassium (K⁺) channels, opioids make it more difficult for neurons to fire. Acute effects include adenylate cyclase inhibition and phospholipase C activation. Endogenous opioids such as endorphin, enkephalin, and dynorphin also act through these receptors.",
          ),
          AnalgesicAgentsItem(
            title: "ANALGESIA PATHWAYS (NRM AND PAG)",
            description: "They suppress pain transmission in the spinal dorsal horn by activating the periaqueductal gray (PAG) and nucleus raphe magnus (NRM).",
            subtitle: "Levorotatory isomers are significantly more potent than dextrorotatory ones",
            additionalInfo: "The pain gate is closed at the spinal cord level via activation of descending inhibitory pathways. The analgesic potency of all synthetic and natural opioids depends on their activity along these pathways.",
          ),
          AnalgesicAgentsItem(
            title: "PHARMACOKINETIC PROFILES (FENTANYL, MORPHINE, REMIFENTANIL)",
            description: "The lipid solubility and metabolic pathways of opioids determine their clinical duration and administration methods.",
            subtitle: "Remifentanil is broken down by nonspecific esterases and is independent of organ failure",
            additionalInfo: "• Transdermal Fentanyl: Reaches a plasma plateau in 14–24 hours and provides steady release for approximately 72 hours.\n• Morphine: Low lipid solubility causes it to cross the blood-brain barrier slowly, but its effect is prolonged.\n• Alfentanil: Despite high lipid solubility, its effect starts and ends rapidly due to a low volume of distribution (Vd).",
          ),
          AnalgesicAgentsItem(
            title: "ACTIVE METABOLITES AND TOXICITY (NORMEPERIDINE)",
            description: "Metabolites of some opioids can exhibit stronger or more toxic effects than the parent drug.",
            subtitle: "Normeperidine, a metabolite of meperidine, is epileptogenic (seizure-inducing)",
            additionalInfo: "• Morphine-6-glucuronide (M-6-G): A more effective analgesic than morphine, but it can accumulate in renal failure and cause severe respiratory depression.\n• Tramadol: Exerts potent effects through its active metabolite O-desmethyltramadol.\n• Renal Failure: Morphine and Meperidine metabolites are excreted in the urine, making their use risky in patients with kidney disease.",
          ),
          AnalgesicAgentsItem(
            title: "CARDIOVASCULAR EFFECTS AND HISTAMINE",
            description: "While generally considered heart-friendly, certain opioid derivatives can cause significant hemodynamic changes.",
            subtitle: "Meperidine has an atropine-like structure and can increase heart rate",
            additionalInfo: "Drugs like morphine and meperidine can cause significant histamine release, leading to peripheral vasodilation (hypotension) and tachycardia. Other synthetic opioids (Fentanyl, Remifentanil) generally do not cause histamine release and tend to decrease heart rate (bradycardia).",
          ),
          AnalgesicAgentsItem(
            title: "RESPIRATORY DEPRESSION AND RIGIDITY",
            description: "The most characteristic side effect of opioids is dose-dependent suppression of the respiratory center by reducing the CO₂ response.",
            subtitle: "Chest wall rigidity seen at high doses can make ventilation impossible",
            additionalInfo: "They reduce respiratory rate (RR ↓) and relatively preserve tidal volume (TV). Hypoxic drive is suppressed and PaCO₂ rises. 'Muscle rigidity' (wooden chest) seen during rapid high-dose IV administration also affects laryngeal muscles, complicating airway management; it is treated with muscle relaxants or naloxone.",
          ),
          AnalgesicAgentsItem(
            title: "CEREBRAL EFFECTS AND OPIOID HYPERALGESIA",
            description: "They reduce cerebral blood flow (CBF) and intracranial pressure (ICP), enabling safe use in intracranial surgeries.",
            subtitle: "Acute tolerance and hyperalgesia (increased pain sensitivity) can be seen after remifentanil infusion",
            additionalInfo: "They have minimal effects on EEG and generally do not interfere with SSEP/MEP monitoring. Acute tolerance development, especially after the discontinuation of short-acting opioids (Remifentanil), can leave the patient hypersensitive to pain.",
          ),
          AnalgesicAgentsItem(
            title: "GASTROINTESTINAL EFFECTS (ODDI SPHINCTER AND CONSTIPATION)",
            description: "They impair motility by slowing gastric and intestinal peristalsis and can cause spasms in the biliary tract.",
            subtitle: "Tolerance does not develop to opioid-induced constipation",
            additionalInfo: "They can cause pain mimicking biliary colic by inducing spasm in the sphincter of Oddi (reversed with Naloxone or Glucagon). They cause constipation via µ receptors in the intestine. Peripherally acting antagonists such as Alvimopan or Methylnaltrexone can be used to counteract this effect.",
          ),
          AnalgesicAgentsItem(
            title: "SPECIAL CLINICAL USES (POST-OP SHIVERING)",
            description: "Certain opioids are preferred in clinical practice for specific indications beyond analgesia.",
            additionalInfo: "Meperidine (10–25 mg IV) is the most effective agent for treating chills and shivering in the postoperative period. This effect is attributed to its activity at kappa (κ) receptors and its effect on the thermoregulatory center.",
          ),
          AnalgesicAgentsItem(
            title: "IMPORTANT DRUG INTERACTIONS",
            description: "Combining opioids with other drugs can lead to life-threatening crises or altered durations of effect.",
            subtitle: "The combination of Meperidine and MAO Inhibitors (MAOI) is strictly contraindicated",
            additionalInfo: "The interaction between Meperidine and MAOI can cause fatal 'Serotonin Syndrome,' characterized by hyperpyrexia (very high fever), convulsions, and coma. Additionally, drugs like Erythromycin can slow the metabolism of Alfentanil, unexpectedly prolonging its duration of action.",
          ),
        ],
      ),
      AnalgesicAgentsCategory(
        categoryName: 'Cyclooxygenase (COX) Inhibitors (NSAIDs)',
        items: [
          AnalgesicAgentsItem(
            title: "COX ENZYME SYSTEM (COX-1 AND COX-2)",
            description: "Enzymes that catalyze the conversion of arachidonic acid (AA) into PGH₂, a mediator of pain and inflammation.",
            subtitle: "COX-1 is protective (stomach, kidney, platelets), while COX-2 is inflammatory",
            additionalInfo: "• COX-1 (Constitutive): Maintains gastric mucosal integrity and mediates platelet aggregation.\n• COX-2 (Inducible): Synthesized in response to tissue injury and inflammation; responsible for pain, swelling, and fever.",
          ),
          AnalgesicAgentsItem(
            title: "ASPIRIN AND IRREVERSIBLE EFFECT",
            description: "The only salicylate that irreversibly acetylates the COX-1 enzyme and is effective for the life of the platelet (7–10 days).",
            additionalInfo: "While other NSAIDs bind the enzyme reversibly, Aspirin permanently impairs platelet function. Therefore, it is generally recommended to be discontinued 7–10 days before surgery.",
          ),
          AnalgesicAgentsItem(
            title: "SELECTIVE COX-2 INHIBITORS AND RISKS",
            description: "Designed to minimize gastrointestinal side effects but may carry cardiovascular risks.",
            subtitle: "Paracetamol and Coxibs (Celecoxib) belong to this group",
            additionalInfo: "They have a low risk of gastric bleeding because they do not affect COX-1, but they can increase the risk of Myocardial Infarction (MI) and thrombosis by suppressing prostacyclin (PGI₂) synthesis and disrupting the thromboxane-A₂ balance.",
          ),
          AnalgesicAgentsItem(
            title: "NSAID CLASSIFICATION BY CHEMICAL STRUCTURE",
            description: "NSAIDs are divided into different groups based on their chemical structure, and the clinical profile of each follows accordingly.",
            additionalInfo: "• Salicylic Acid Derivatives: Aspirin.\n• Acetic Acid Derivatives: Ketorolac, Indomethacin.\n• Propionic Acid Derivatives: Ibuprofen, Naproxen.\n• Heterocyclic Compounds: Celecoxib.",
          ),
          AnalgesicAgentsItem(
            title: "PHARMACOKINETICS AND DISTRIBUTION (ALBUMIN BINDING)",
            description: "These drugs are generally absorbed rapidly (peak <3 h) and are highly albumin-bound in the plasma.",
            additionalInfo: "Due to high protein binding, they can compete with other protein-dependent drugs (e.g., warfarin), increasing the risk of bleeding. They cross the blood-brain barrier and joint spaces (synovial fluid) well; these properties provide central and peripheral analgesia.",
          ),
          AnalgesicAgentsItem(
            title: "TOXICITY AND HEPATOTOXICITY (NAPQI)",
            description: "Metabolites of Paracetamol (Acetaminophen) at high doses can cause severe liver damage.",
            subtitle: "Excretion is primarily via the urinary tract",
            additionalInfo: "The NAPQI metabolite formed during paracetamol metabolism causes necrosis of liver cells when it reaches toxic levels. N-acetylcysteine (NAC) is used in treatment to replenish glutathione stores.",
          ),
          AnalgesicAgentsItem(
            title: "CLINICAL APPLICATIONS (DUAL CLOSURE)",
            description: "The suppression of prostaglandin synthesis by NSAIDs is used therapeutically to close certain vascular openings.",
            additionalInfo: "During the fetal period, Prostaglandins (PG) maintain the patency of the Ductus Arteriosus (DA). When Patent Ductus Arteriosus (PDA) is detected in newborns, PG inhibitors (Indomethacin, Ibuprofen) can be administered to close the duct without the need for surgery.",
          ),
          AnalgesicAgentsItem(
            title: "SIDE EFFECTS AND GI BLEEDING RISK",
            description: "Long-term use of especially non-selective COX inhibitors (COX-1 suppression) impairs the gastric mucosal barrier.",
            additionalInfo: "Resulting from the inability to synthesize protective prostaglandins (PGE₂, PGI₂), gastritis, ulcers, and upper GI bleeding can occur. They can also increase the risk of acute renal failure by reducing renal blood flow (especially in hypovolemic patients).",
          ),
        ],
      ),
    ];
  }
}
