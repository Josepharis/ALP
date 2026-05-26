import 'package:flutter/material.dart';

class HypotensiveAgentsItem {
  final String title;
  final String description;
  final String? subtitle;
  final String? additionalInfo;

  HypotensiveAgentsItem({
    required this.title,
    required this.description,
    this.subtitle,
    this.additionalInfo,
  });
}

class HypotensiveAgentsCategory {
  final String categoryName;
  final List<HypotensiveAgentsItem> items;

  HypotensiveAgentsCategory({
    required this.categoryName,
    required this.items,
  });
}

class HypotensiveAgentsData {
  static List<HypotensiveAgentsCategory> getHypotensiveAgentsData(
    BuildContext context,
  ) {
    return [
      HypotensiveAgentsCategory(
        categoryName: 'Nitric Vasodilators',
        items: [
          HypotensiveAgentsItem(
            title: "SODIUM NITROPRUSSIDE (FAST AND POTENT VASODILATOR)",
            description: "Produces rapid and powerful dilation in both arterioles and veins by increasing cGMP levels via nitric oxide (NO).",
            subtitle: "Its half-life is less than 5 seconds, making dose titration very easy",
            additionalInfo: "The clinical dose range is 0.5–10 mcg/kg/min. A bolus of 1–2 mcg/kg can be administered to suppress the hypertensive response during intubation. Its effect begins very quickly and terminates rapidly as soon as the drug is discontinued.",
          ),
          HypotensiveAgentsItem(
            title: "NITROPRUSSIDE METABOLISM AND THE CYANIDE CYCLE",
            description: "As the nitroprusside molecule breaks down in the body, it leads to the release of cyanide ions (CN⁻) and the formation of methemoglobin.",
            additionalInfo: "Some of the cyanide ions released during the metabolism process combine with methemoglobin to form cyanomethemoglobin; another portion combines with thiosulfate in the liver to convert into thiocyanate and is excreted by the kidneys. The remaining free cyanide causes toxicity by blocking cellular respiration (cytochrome oxidase).",
          ),
          HypotensiveAgentsItem(
            title: "CYANIDE TOXICITY AND EMERGENCY TREATMENT",
            description: "Cyanide accumulation, which prevents oxygen use at the cellular level, is a fatal condition characterized by metabolic acidosis and treatment-resistant hypotension.",
            subtitle: "Signs include arrhythmia, metabolic acidosis, and venous blood being brighter than it should be (high O₂)",
            additionalInfo: "In treatment, the drug should first be discontinued and 100% oxygen support started. Sodium thiosulfate and sodium nitrate are administered to bind the cyanide. In severe cases, the use of methylene blue may also be required.",
          ),
          HypotensiveAgentsItem(
            title: "NITROPRUSSIDE ORGAN SYSTEM EFFECTS",
            description: "Significantly reduces preload and afterload while carrying the risk of increasing intracranial pressure.",
            additionalInfo: "• Heart: Can lead to coronary steal syndrome (diversion of blood away from ischemic areas).\n• Brain: Increases intracranial pressure (ICP) by dilating cerebral vessels and can impair cerebral autoregulation.\n• Lungs: Suppresses the hypoxic pulmonary vasoconstriction (HPV) response via pulmonary vasodilation, which can cause increased shunt and hypoxia.",
          ),
          HypotensiveAgentsItem(
            title: "NITROGLYCERIN (VENOUS VASODILATION AND ISCHEMIA)",
            description: "A vasodilator acting primarily on venous vessels, working through the release of nitric oxide (NO).",
            subtitle: "Due to its property of adsorbing to plastic (PVC) sets, it must be administered with glass or specialized sets",
            additionalInfo: "Used in cases of myocardial ischemia, acute heart failure, and controlled hypotension. It is metabolized by reductase enzymes in the liver and blood; there is a risk of causing methemoglobinemia (metHb) at high doses.",
          ),
          HypotensiveAgentsItem(
            title: "NITROGLYCERIN CLINICAL ADVANTAGES AND USES",
            description: "Corrects ischemia by improving coronary blood flow while reducing the heart's workload and oxygen demand.",
            additionalInfo: "• Coronary: Relieves coronary spasm and improves subendocardial blood distribution (does not cause the steal phenomenon).\n• Uterus: Rapidly relaxes uterine smooth muscle (50–100 mcg IV); due to this feature, it can be used in births where the fetal head cannot be delivered.\n• Platelets: Has an effect of reducing platelet aggregation.",
          ),
          HypotensiveAgentsItem(
            title: "HYDRALAZINE (ARTERIOLAR EFFECT AND PREGNANCY)",
            description: "A long-acting agent that reduces systemic vascular resistance by directly relaxing arteriolar smooth muscle.",
            subtitle: "Onset of action is slow (15 min) but duration is long (2–4 hours)",
            additionalInfo: "Safely preferred especially in the management of pregnancy-induced hypertension and preeclampsia. Reflex tachycardia and an increase in cardiac output develop in response to the drop in blood pressure. Provides benefit in patients with chronic heart failure by reducing afterload.",
          ),
        ],
      ),
      HypotensiveAgentsCategory(
        categoryName: 'Non-Nitric Vasodilators and Other Agents',
        items: [
          HypotensiveAgentsItem(
            title: "FENOLDOPAM (D1 AGONIST AND RENAL PROTECTION)",
            description: "A selective dopamine-1 receptor agonist; increases renal blood flow and urine output while lowering blood pressure.",
            subtitle: "Has a clinical indication in preventing nephropathy due to contrast agent use",
            additionalInfo: "Used in malignant hypertension and postoperative blood pressure control. No dose adjustment is required in organ failure due to its inactive metabolites in the liver. Side effects include headache, flushing, and hypokalemia.",
          ),
          HypotensiveAgentsItem(
            title: "FENOLDOPAM SYSTEMIC EFFECTS AND GLAUCOMA RISK",
            description: "Caution should be exercised in glaucoma patients as it may increase intraocular pressure while lowering systemic blood pressure.",
            additionalInfo: "Increases glomerular filtration rate (GFR) and sodium excretion (natriuresis). With these features, it exhibits a more advantageous profile than nitroprusside in cases of renal failure accompanying hypertension.",
          ),
          HypotensiveAgentsItem(
            title: "CALCIUM CHANNEL BLOCKERS (DIHYDROPYRIDINES)",
            description: "Provide vascular smooth muscle relaxation and blood pressure reduction by blocking vascular L-type calcium channels.",
            subtitle: "Dihydropyridine group agents ending in -dipine (Nicardipine, Nimodipine, etc.) are vessel-selective",
            additionalInfo: "They have minimal effects on cardiac conduction (AV node), so they do not suppress heart rate. Widely used in routine blood pressure control in cardiothoracic and vascular surgery.",
          ),
        ],
      ),
      HypotensiveAgentsCategory(
        categoryName: 'Clinical Summary Spots',
        items: [
          HypotensiveAgentsItem(
            title: "CLINICAL COMPARISON AND IMPORTANT NOTES",
            description: "The choice of hypotensive agent is determined by the onset of action, risk of toxicity, and organ protection potential.",
            additionalInfo: "• Sodium Nitroprusside: Fastest and most potent, but the dose of 10 mcg/kg/min should not be exceeded to prevent cyanide toxicity.\n• Nitroglycerin: Ideal for the venous bed and coronary perfusion; does not cause 'steal.'\n• Hydralazine: Preferred for slow but persistent effect in pregnancy HT management.\n• Fenoldopam: The first choice in HT cases where renal protection is desired.",
          ),
        ],
      ),
    ];
  }
}
