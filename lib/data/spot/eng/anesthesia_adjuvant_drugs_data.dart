import 'package:flutter/material.dart';

class AnesthesiaAdjuvantDrugsItem {
  final String title;
  final String description;
  final String? subtitle;
  final String? additionalInfo;

  AnesthesiaAdjuvantDrugsItem({
    required this.title,
    required this.description,
    this.subtitle,
    this.additionalInfo,
  });
}

class AnesthesiaAdjuvantDrugsCategory {
  final String categoryName;
  final List<AnesthesiaAdjuvantDrugsItem> items;

  AnesthesiaAdjuvantDrugsCategory({
    required this.categoryName,
    required this.items,
  });
}

class AnesthesiaAdjuvantDrugsData {
  static List<AnesthesiaAdjuvantDrugsCategory> getAnesthesiaAdjuvantDrugsData(
    BuildContext context,
  ) {
    return [
      AnesthesiaAdjuvantDrugsCategory(
        categoryName: 'Aspiration & Prophylaxis',
        items: [
          AnesthesiaAdjuvantDrugsItem(
            title: "ASPIRATION PNEUMONIA RISK FACTORS",
            description: "The critical threshold values for developing aspiration pneumonia (Mendelson Syndrome) are a gastric content pH lower than 2.5 and a volume greater than 25 mL.",
            additionalInfo: "Adherence to preoperative fasting times is the primary approach to reduce this risk. However, in situations where gastric emptying is delayed, such as trauma, obesity, pregnancy, and diabetes, the use of prophylactic drugs is of vital importance.",
          ),
          AnesthesiaAdjuvantDrugsItem(
            title: "ROLE OF ANTACIDS IN ASPIRATION",
            description: "They rapidly raise pH by neutralizing existing gastric acid but carry the risk of increasing gastric fluid volume.",
            subtitle: "Due to the increased volume, potential aspiration may become more harmful to the lungs",
            additionalInfo: "Non-particulate antacids such as sodium citrate are generally preferred; particulate antacids (calcium or magnesium-based) can cause severe lung damage (pneumonia) if aspirated.",
          ),
          AnesthesiaAdjuvantDrugsItem(
            title: "H2 BLOCKERS AND GASTRIC ACID MANAGEMENT",
            description: "They reduce the acidity of gastric contents and raise pH by decreasing acid secretion from gastric parietal cells.",
            subtitle: "They act only on new gastric fluid secreted after administration",
            additionalInfo: "They do not neutralize acid already present in the stomach, so they must be administered at least 60–90 minutes before surgical induction for their effects to begin.",
          ),
          AnesthesiaAdjuvantDrugsItem(
            title: "METOCLOPRAMIDE AND GASTRIC EMPTYING",
            description: "A prokinetic agent that accelerates gastric emptying and prevents acid reflux by increasing lower esophageal sphincter tone.",
            additionalInfo: "It has no direct effect on gastric pH; however, it mechanically reduces the risk of aspiration by directing gastric contents into the duodenum.",
          ),
          AnesthesiaAdjuvantDrugsItem(
            title: "PROTON PUMP INHIBITORS (PPIs)",
            description: "The group of drugs that most potently suppresses acid production by irreversibly inhibiting the H+/K+ ATPase pump.",
            additionalInfo: "They generally provide the highest efficiency for aspiration prophylaxis when administered on the morning of surgery. Long-term use can lead to changes in gastric flora.",
          ),
        ],
      ),
      AnesthesiaAdjuvantDrugsCategory(
        categoryName: 'Histamine Physiology & Receptors',
        items: [
          AnesthesiaAdjuvantDrugsItem(
            title: "H1 RECEPTOR AND BRONCHOCONSTRICTION",
            description: "A receptor that leads to bronchial narrowing, increased capillary permeability, and tissue edema via phospholipase C activation.",
            additionalInfo: "Responsible for the clinical presentation of hay fever, urticaria, and mild allergic reactions. H1 activation also contracts intestinal smooth muscle and increases mucus secretion.",
          ),
          AnesthesiaAdjuvantDrugsItem(
            title: "H2 RECEPTOR AND GASTRIC ACID SECRETION",
            description: "Stimulates gastric acid secretion via increased cAMP; it also has a mild increasing effect on heart rate and contractile force.",
            additionalInfo: "Found not only in the stomach but also in vascular smooth muscle and can contribute to vasodilation. In the treatment of anaphylaxis, blocking both receptors (H1 and H2) yields a more effective result.",
          ),
          AnesthesiaAdjuvantDrugsItem(
            title: "H3 AND H4 RECEPTOR FUNCTIONS",
            description: "H3 receptors reduce histamine release via negative feedback at presynaptic terminals, while H4 receptors play a role in controlling immune response.",
            additionalInfo: "H3 receptors are primarily located in the central nervous system and regulate the sleep-wake cycle. H4 receptors are effective in leucocyte chemotaxis and are targets for new drug development studies.",
          ),
        ],
      ),
      AnesthesiaAdjuvantDrugsCategory(
        categoryName: 'H1 Blockers (Antihistamines)',
        items: [
          AnesthesiaAdjuvantDrugsItem(
            title: "1ST GENERATION H1 BLOCKERS (SEDATIVE)",
            description: "They produce significant sleepiness (sedation), antiemetic effects, and potent anticholinergic side effects by crossing the blood-brain barrier (BBB).",
            subtitle: "Diphenhydramine, promethazine, and hydroxyzine are in this group",
            additionalInfo: "Side effects such as dry mouth and blurred vision are common. Their sedative effects can increase dangerously when used together with other central nervous system depressants and alcohol.",
          ),
          AnesthesiaAdjuvantDrugsItem(
            title: "2ND GENERATION H1 BLOCKERS (NON-SEDATIVE)",
            description: "They do not cause sleepiness as they cannot cross the blood-brain barrier; they are primarily preferred in cases of allergic rhinitis and urticaria.",
            subtitle: "Loratadine, cetirizine, and fexofenadine are ineffective in treating asthma!",
            additionalInfo: "These agents bind much more selectively to peripheral H1 receptors. Their anticholinergic side effects are nearly non-existent; therefore, they are the first choice for patients requiring alertness throughout the day.",
          ),
        ],
      ),
      AnesthesiaAdjuvantDrugsCategory(
        categoryName: 'H2 Blockers and Drug Interactions',
        items: [
          AnesthesiaAdjuvantDrugsItem(
            title: "CIMETIDINE AND P-450 ENZYME INHIBITION",
            description: "Slows the excretion of other drugs from the body by strongly inhibiting the cytochrome P-450 enzyme system in the liver.",
            subtitle: "Can interact seriously with warfarin, phenytoin, diazepam, and propranolol",
            additionalInfo: "Side effects include gynecomastia (breast growth in men), impotence, and rarely hepatotoxicity. In modern anesthesia, it has been replaced by more specific agents due to its side effects.",
          ),
          AnesthesiaAdjuvantDrugsItem(
            title: "PROPERTIES OF RANITIDINE, FAMOTIDINE, AND NIZATIDINE",
            description: "Better-profile H2-blocker agents with nearly non-existent effects on the P-450 enzyme.",
            subtitle: "Rapid intravenous administration of Famotidine and Nizatidine can lead to hypotension and bradycardia (up to asystole)",
            additionalInfo: "Ranitidine is more potent than cimetidine, but famotidine is the strongest and longest-acting. Their intravenous administration should be slow (generally spread over 15–20 minutes).",
          ),
        ],
      ),
      AnesthesiaAdjuvantDrugsCategory(
        categoryName: 'Metoclopramide and Prokinetic Effect',
        items: [
          AnesthesiaAdjuvantDrugsItem(
            title: "METOCLOPRAMIDE MECHANISM OF ACTION",
            description: "Functions as a cholinomimetic peripherally (increasing acetylcholine effect) and as a dopamine antagonist centrally.",
            additionalInfo: "Increases the contractile force of the gastric wall, relaxes the pyloric sphincter, and facilitates the passage of gastric contents into the small intestine. Also provides a mild antiemetic (nausea-preventing) effect through central dopamine blockade.",
          ),
          AnesthesiaAdjuvantDrugsItem(
            title: "CLINICAL EFFECTS AND OESOPHAGEAL TONE",
            description: "Increases lower esophageal sphincter tone to prevent gastric acid leakage into the esophagus while accelerating gastric emptying and reducing fluid volume.",
            additionalInfo: "Helps prevent nausea (after opioids or surgery) by blocking dopamine receptors in the CTZ (Chemoreceptor Trigger Zone).",
          ),
          AnesthesiaAdjuvantDrugsItem(
            title: "SIDE EFFECTS AND EXTRAPYRAMIDAL SIGNS",
            description: "Can cause movement disorders (dystonia, akathisia) and worsening of symptoms in Parkinson's patients by blocking dopamine receptors.",
            subtitle: "Can lead to hypertensive crisis in pheochromocytoma patients by triggering catecholamine release",
            additionalInfo: "Use is strictly contraindicated (forbidden) in cases of Parkinson's disease, intestinal obstruction, and pheochromocytoma.",
          ),
        ],
      ),
      AnesthesiaAdjuvantDrugsCategory(
        categoryName: 'Proton Pump Inhibitors (PPIs)',
        items: [
          AnesthesiaAdjuvantDrugsItem(
            title: "PPI GROUP DRUGS AND POTENT ACID SUPPRESSION",
            description: "Agents such as omeprazole, lansoprazole, and pantoprazole are the group that most radically reduces gastric acid and have a 'final blow' effect.",
            additionalInfo: "Since they permanently shut down the acid pump in the cell, their effects continue until new enzymes are synthesized (approximately 24–48 hours).",
          ),
          AnesthesiaAdjuvantDrugsItem(
            title: "SIDE EFFECTS OCCURRING IN LONG-TERM USE",
            description: "With years of use, the risk of hyperplasia in gastric cells (enterochromaffin-like cells) and bacterial colonization (infection) increases.",
            additionalInfo: "The absence of gastric acid (achlorhydria) can also increase the risk of osteoporosis and anemia by impairing the absorption of calcium and vitamin B12.",
          ),
          AnesthesiaAdjuvantDrugsItem(
            title: "PPI AND CLOPIDOGREL INTERACTION",
            description: "PPIs like omeprazole can reduce the efficacy of Clopidogrel (Plavix), a blood thinner, by preventing its activation in the body.",
            additionalInfo: "This situation, occurring due to CYP2C19 enzyme competition in the liver, should be managed carefully as it increases the risk of stent occlusion (thrombosis) in cardiac patients. Pantoprazole is considered safer in terms of this interaction.",
          ),
        ],
      ),
      AnesthesiaAdjuvantDrugsCategory(
        categoryName: 'PONV (Postoperative Nausea and Vomiting)',
        items: [
          AnesthesiaAdjuvantDrugsItem(
            title: "PATIENT AND ANESTHESIA RISK FACTORS FOR PONV",
            description: "Female gender, non-smoking history, and a history of motion sickness are the strongest independent risk factors.",
            additionalInfo: "Volatile (respiratory) agents used during anesthesia, nitrous oxide (N2O), and postoperative opioid (morphine, etc.) use trigger this risk. Use of TIVA (total intravenous anesthesia) significantly reduces the risk.",
          ),
          AnesthesiaAdjuvantDrugsItem(
            title: "EFFECT OF SURGERY TYPE AND DURATION ON PONV",
            description: "Each 30-minute extension of surgery duration increases the risk of nausea and vomiting by approximately 60%.",
            additionalInfo: "Gynecological surgeries, strabismus surgeries, laparoscopic procedures, and ear operations are the surgery groups at the highest risk for PONV.",
          ),
        ],
      ),
      AnesthesiaAdjuvantDrugsCategory(
        categoryName: 'Antiemetic Agents and Modern Treatment',
        items: [
          AnesthesiaAdjuvantDrugsItem(
            title: "5-HT3 ANTAGONISTS (ONDANSETRON)",
            description: "The most popular antiemetic drug group in anesthesia, suppressing the vomiting center by blocking serotonin receptors.",
            subtitle: "Can cause QT interval prolongation and headache as side effects",
            additionalInfo: "Dose reduction may be required in patients with liver failure. Their effects increase synergistically when combined with steroids (Dexamethasone).",
          ),
          AnesthesiaAdjuvantDrugsItem(
            title: "BUTYROPHENONES AND DROPERIDOL",
            description: "They provide effective antiemetic control even at very low doses by blocking dopamine receptors.",
            subtitle: "Should be administered with ECG monitoring due to serious QT prolongation and risk of sudden death (Black Box Warning)",
            additionalInfo: "Can cause extrapyramidal side effects (muscle contractions). Clinical use is limited due to the risk of leading to Torsades de Pointes arrhythmia.",
          ),
          AnesthesiaAdjuvantDrugsItem(
            title: "DEXAMETHASONE AND NK-1 ANTAGONISTS",
            description: "Dexamethasone (4 mg) is effective in preventing nausea when administered at the beginning of surgery; aprepitant (NK-1 antagonist) is preferred for mass vomiting (e.g., after chemotherapy).",
            additionalInfo: "The combination of aprepitant and ondansetron forms an additive protective shield in patients at severe risk for PONV.",
          ),
        ],
      ),
      AnesthesiaAdjuvantDrugsCategory(
        categoryName: 'Clinical Gold Spots',
        items: [
          AnesthesiaAdjuvantDrugsItem(
            title: "SUMMARY AND CRITICAL REMINDERS",
            description: "The most likely spot information about adjuvant drugs in anesthesia to appear on exams.",
            additionalInfo: "• Aspiration risk: pH <2.5 and volume >25 mL.\n• Causing gynecomastia: Cimetidine.\n• Causing QT prolongation: Ondansetron and Droperidol.\n• Reducing clopidogrel effect: Omeprazole.\n• Prokinetic and increasing sphincter tone: Metoclopramide.\n• Giving antihistamines in asthma: There is no practical benefit; the primary treatment is bronchodilators.",
          ),
        ],
      ),
    ];
  }
}
