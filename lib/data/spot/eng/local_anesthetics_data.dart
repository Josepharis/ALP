import 'package:flutter/material.dart';

class LocalAnestheticsItem {
  final String title;
  final String description;
  final String? subtitle;
  final String? additionalInfo;

  LocalAnestheticsItem({
    required this.title,
    required this.description,
    this.subtitle,
    this.additionalInfo,
  });
}

class LocalAnestheticsCategory {
  final String categoryName;
  final List<LocalAnestheticsItem> items;

  LocalAnestheticsCategory({required this.categoryName, required this.items});
}

class LocalAnestheticsData {
  static List<LocalAnestheticsCategory> getLocalAnestheticsData(
    BuildContext context,
  ) {
    return [
      LocalAnestheticsCategory(
        categoryName: 'Mechanism of Action and Physiology',
        items: [
          LocalAnestheticsItem(
            title: "MEMBRANE POTENTIAL AND SODIUM CHANNELS",
            description: "Local anesthetics (LAs) prevent sodium entry and thus depolarization by binding to the alpha subunit of voltage-gated sodium channels.",
            subtitle: "The resting potential is at –70 mV and is maintained by the Na-K ATPase pump",
            additionalInfo: "Local anesthetics exhibit higher affinity for the 'open' or 'inactive' forms of the sodium channel. This is referred to as 'use-dependent block'; i.e., the more frequently the nerve is stimulated, the deeper the block becomes.",
          ),
          LocalAnestheticsItem(
            title: "LOCAL ANESTHETIC EFFECT ORDER AND NERVE FIBERS",
            description: "Small-diameter, myelinated, and rapidly-conducting nerve fibers are the most sensitive to local anesthetics.",
            additionalInfo: "In clinical practice, the order of blockade is generally as follows: Autonomic nerve involvement > Loss of temperature (cold/hot) perception > Loss of pain sensation > Loss of touch/pressure sensation > Loss of motor function (paralysis).",
          ),
          LocalAnestheticsItem(
            title: "OTHER SODIUM CHANNEL BLOCKERS AND TOXINS",
            description: "Some systemic molecules and natural toxins can also produce local anesthetic-like effects on sodium channels.",
            subtitle: "Tetrodotoxin (pufferfish poison) causes paralysis by binding to the channel from an external site",
            additionalInfo: "Other agents that produce local anesthetic-like sodium channel blockade include Tricyclic Antidepressants (TCAs), meperidine, ketamin, calcium channel blockers, and volatile anesthetics.",
          ),
        ],
      ),
      LocalAnestheticsCategory(
        categoryName: 'Structure–Activity Relationship and Chemistry',
        items: [
          LocalAnestheticsItem(
            title: "CHEMICAL STRUCTURE AND CLASSIFICATION (ESTER AND AMIDE)",
            description: "Local anesthetics consist of a lipophilic aromatic group and a hydrophilic amine group joined by an ester or amide bond.",
            subtitle: "Articaine is a special amide structure containing a thiophene ring instead of a benzene ring",
            additionalInfo: "Local anesthetics are weak bases. If the letter 'i' appears before the 'caine' suffix in the drug name (Lidocaine, Bupivacaine), it belongs to the amide group. Ester group drugs (Procaine, Tetracaine) have only one 'i' in their name.",
          ),
          LocalAnestheticsItem(
            title: "FACTORS DETERMINORY POTENCY AND ONSET (pKa)",
            description: "The speed of onset of the drug is proportional to its pKa value, while its potency is proportional to its lipid solubility (lipophilicity).",
            subtitle: "The closer the pKa value is to physiological pH (7.4), the faster the drug acts",
            additionalInfo: "As an important exception, Chloroprocaine is one of the fastest-acting agents because it is used in high concentrations despite having a high pKa value. Benzocaine is a special agent with a low pKa and no charged form.",
          ),
          LocalAnestheticsItem(
            title: "pH BALANCE AND ALKALINIZATION (SODIUM BICARBONATE)",
            description: "Adding sodium bicarbonate to the local anesthetic solution increases the non-ionized (free) form of the drug, accelerating its effect.",
            subtitle: "Commercial solutions are kept acidic (pH 6–7) for stability; pH drops to 4–5 if epinephrine is included",
            additionalInfo: "Alkalinization (1 mL of 8.4% NaHCO3 for 10 mL of LA) not only accelerates the onset of action but also reduces pain and tissue irritation during injection.",
          ),
          LocalAnestheticsItem(
            title: "SOLUBILITY AND PROTEIN BINDING CHARACTERISTICS",
            description: "Agents with high lipid solubility persist longer in tissue, hence their duration of action is longer.",
            subtitle: "Local anesthetics bind primarily to alpha-1 acid glycoprotein in the blood",
            additionalInfo: "Alpha-1 acid glycoprotein levels increase in states such as stress, surgery, and cancer; this can lead to a decrease in the amount of free (active) drug and a lower risk of toxicity.",
          ),
        ],
      ),
      LocalAnestheticsCategory(
        categoryName: 'Clinical Pharmacology and Absorption',
        items: [
          LocalAnestheticsItem(
            title: "SYSTEMIC ABSORPTION ORDER AND REGIONAL DIFFERENCES",
            description: "The rate at which the drug enters the systemic circulation is directly related to the level of blood flow in the region where it is injected.",
            subtitle: "Absorption rate: IV > Tracheal > Intercostal > Paracervical > Epidural > Sciatic > SC",
            additionalInfo: "EMLA cream (a mixture of 5% Lidocaine + 5% Prilocaine) can penetrate to a depth of 3–5 mm through the skin and requires a wait of 1–2 hours after application to be effective.",
          ),
          LocalAnestheticsItem(
            title: "CLINICAL ADVANTAGES OF ADDING EPINEPHRINE",
            description: "Adding a vasoconstrictor (epinephrine or phenylephrine) to local anesthetics reduces absorption, thereby prolonging the duration of action and lowering the risk of toxicity.",
            additionalInfo: "This effect is particularly pronounced in short- and medium-acting agents (Lidocaine, Prilocaine). Its effect on the duration of long-acting agents like Bupivacaine is more limited. It also increases surgical comfort by reducing bleeding in the area.",
          ),
          LocalAnestheticsItem(
            title: "DISTRIBUTION IN THE BODY AND LUNG FILTER EFFECT",
            description: "After local anesthetics enter the systemic circulation, they first distribute to well-perfused tissues such as the brain and heart.",
            subtitle: "The lungs act as a filter that delays systemic toxicity by trapping (filtering) large amounts of local anesthetic",
            additionalInfo: "Skeletal muscles, despite having low affinity, can store large amounts of local anesthetic due to their large mass.",
          ),
          LocalAnestheticsItem(
            title: "METABOLISM: ESTERS AND AMIDES",
            description: "Ester group local anesthetics are broken down in the plasma, while amide group ones are metabolized in the liver.",
            subtitle: "Esters are degraded by plasma pseudocholinesterase; their half-lives are very short",
            additionalInfo: "The PAVA (para-amino benzoic acid) substance formed as a result of the breakdown of ester-structured drugs is responsible for allergic reactions. The rate of metabolism for amides follows the order: Prilocaine > Lidocaine > Mepivacaine > Ropivacaine > Bupivacaine.",
          ),
          LocalAnestheticsItem(
            title: "PRILOCAINE AND METHEMOGLOBINEMIA MANAGEMENT",
            description: "O-toluidine, a metabolite of prilocaine used in high doses (>10 mg/kg), causes methemoglobinemia by disrupting the structure of hemoglobin.",
            subtitle: "1% methylene blue (1–2 mg/kg) is administered within 5 minutes as treatment",
            additionalInfo: "In cases of methemoglobinemia, cyanosis and deceptive pulse oximetry values are seen. Benzocaine can similarly trigger methemoglobinemia.",
          ),
        ],
      ),
      LocalAnestheticsCategory(
        categoryName: 'Toxicity and Effects on Organ Systems',
        items: [
          LocalAnestheticsItem(
            title: "NEUROLOGICAL TOXICITY AND EARLY WARNING SIGNS",
            description: "The first signs of systemic toxicity (LAST) are usually subjective complaints related to the central nervous system.",
            subtitle: "Perioral numbness, tongue tingling, tinnitus, and a metallic taste are the first indicators",
            additionalInfo: "As toxic doses increase, agitation, blurred vision, and eventually seizures (convulsions) may develop. Benzodiazepines and hyperventilation provide protection by raising the seizure threshold. Lidocaine can be used IV to prevent the increase in intracranial pressure during intubation in surgery.",
          ),
          LocalAnestheticsItem(
            title: "NEUROTOXICITY RANKING AND CAUDA EQUINA SYNDROME",
            description: "High-concentration local anesthetics in direct contact with nerve cells can cause permanent damage.",
            subtitle: "Neurotoxicity potential: Lidocaine = Tetracaine > Bupivacaine > Ropivacaine",
            additionalInfo: "The use of 5% lidocaine during continuous intrathecal (spinal) administration increases the risk of Cauda Equina Syndrome (CES), characterized by permanent loss of strength in the legs and urinary/fecal incontinence.",
          ),
          LocalAnestheticsItem(
            title: "RESPIRATORY SYSTEM EFFECTS AND BRONCHODILATION",
            description: "Although local anesthetics can relax airway smooth muscle, their inhaled forms can have the opposite effect in asthmatics.",
            additionalInfo: "Systemic lidocaine administration can cause a decrease in the hypoxic response (drive). Although it has the ability to resolve bronchospasm, giving inhaled lidocaine to an asthmatic patient can lead to catastrophic narrowing by stimulating the bronchi.",
          ),
          LocalAnestheticsItem(
            title: "CARDIOVASCULAR EFFECTS AND CARDIOTOXICITY",
            description: "Arrhythmias, AV block, and cardiac arrest can develop when sodium channels in the cardiac conduction system are suppressed.",
            subtitle: "Cardiotoxicity risk: Bupivacaine > Ropivacaine > Lidocaine",
            additionalInfo: "• Bupivacaine: Binds very tightly to the heart (fast-in, slow-out) and is the most difficult agent to reverse.\n• Ropivacaine and Levobupivacaine: Are pure S-isomer forms; they exhibit a much safer cardiac profile compared to bupivacaine.\n• Cocaine: Causes hypertensive crisis and serious arrhythmias by blocking norepinephrine reuptake at sympathetic terminals.",
          ),
          LocalAnestheticsItem(
            title: "ADDITIONAL IMMUNOLOGICAL AND HEMATOLOGICAL EFFECTS",
            description: "Allergic reactions are due to PABA in esters and usually a preservative called methylparaben in amides.",
            additionalInfo: "Local anesthetics mildly suppress coagulation and increase fibrinolysis. These effects may be an advantage post-surgery in reducing the risk of thromboembolism.",
          ),
        ],
      ),
      LocalAnestheticsCategory(
        categoryName: 'Clinical Gold Spots',
        items: [
          LocalAnestheticsItem(
            title: "SUMMARY AND CRITICAL REMINDERS",
            description: "The most indispensable local anesthetic knowledge for anesthesia exams and clinical practice.",
            additionalInfo: "• Most cardiotoxic: Bupivacaine.\n• Safest (S-isomer): Ropivacaine.\n• Fastest onset: Chloroprocaine (despite high pKa).\n• Those causing methemoglobinemia: Prilocaine and Benzocaine.\n• First sign of toxicity: Perioral numbness.\n• Cauda Equina risk: 5% Lidocaine intrathecal administration.",
          ),
        ],
      ),
    ];
  }
}
