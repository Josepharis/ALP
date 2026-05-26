import 'package:flutter/material.dart';

class AdrenergicAgonistsAntagonistsItem {
  final String title;
  final String description;
  final String? subtitle;
  final String? additionalInfo;

  AdrenergicAgonistsAntagonistsItem({
    required this.title,
    required this.description,
    this.subtitle,
    this.additionalInfo,
  });
}

class AdrenergicAgonistsAntagonistsCategory {
  final String categoryName;
  final List<AdrenergicAgonistsAntagonistsItem> items;

  AdrenergicAgonistsAntagonistsCategory({
    required this.categoryName,
    required this.items,
  });
}

class AdrenergicAgonistsAntagonistsData {
  static List<AdrenergicAgonistsAntagonistsCategory> getAdrenergicAgonistsAntagonistsData(
    BuildContext context,
  ) {
    return [
      AdrenergicAgonistsAntagonistsCategory(
        categoryName: 'Adrenoceptors - Physiology',
        items: [
          AdrenergicAgonistsAntagonistsItem(
            title: "SYMPATHETIC SYSTEM AND NOREPINEPHRINE (NT)",
            description: "The primary neurotransmitter of the sympathetic nervous system is norepinephrine; it is released from all postganglionic terminals except for sweat glands and some vessels.",
            subtitle: "NT degradation occurs via MAO, COMT, reuptake, and diffusion pathways",
            additionalInfo: "Norepinephrine release from presynaptic terminals occurs via vesicles. Eighty percent of its effect is terminated by reuptake from the synaptic cleft. The remaining portion is metabolized in the liver and periphery by the enzymes MAO (Monoamine Oxidase) and COMT (Catechol-O-Methyltransferase).",
          ),
          AdrenergicAgonistsAntagonistsItem(
            title: "ADRENOCEPTOR SUBTYPES (α1 AND α2)",
            description: "Alpha receptors are G-protein–coupled receptors that control vascular resistance and neurotransmitter release.",
            subtitle: "α1 (Gq): Smooth muscle contraction; α2 (Gi): Negative feedback and sedation",
            additionalInfo: "• α1: Located postsinaptically. Increases peripheral vascular resistance (PVR) and systemic arterial blood pressure (SBP) by constricting vascular smooth muscles.\n• α2: Can be located both presinaptically and postsinaptically. Presynaptic α2 stimulation suppresses norepinephrine release (negative feedback). Central stimulation provides sedation, analgesia, and a decrease in blood pressure.",
          ),
          AdrenergicAgonistsAntagonistsItem(
            title: "BETA RECEPTORS (β1-β2-β3) AND DOPAMINE (D1-D2)",
            description: "Beta and dopamine receptors manage a wide autonomic range from cardiac functions to bronchodilation.",
            additionalInfo: "• β1 (Gs): Concentrated in the heart; increases heart rate (chronotropy), contractile force (inotropy), and conduction velocity (dromotropy).\n• β2 (Gs): Dilates vessels and bronchi (VD/BD) and relaxes uterine smooth muscle. Can cause transient hypokalemia by shifting potassium into cells.\n• β3: Mediates lipolysis in adipose tissue.\n• D1: Causes vasodilation in the kidneys, intestines, and heart.\n• D2: Responsible for the antiemetic effect of drugs like droperidol.",
          ),
        ],
      ),
      AdrenergicAgonistsAntagonistsCategory(
        categoryName: 'Adrenergic Agonists (Sympathomimetics)',
        items: [
          AdrenergicAgonistsAntagonistsItem(
            title: "PHENYLEPHRINE (SELECTIVE α1 AGONIST)",
            description: "A synthetic catecholamine that provides significant vasoconstriction and increased blood pressure by pure alpha-1 stimulation without increasing heart rate.",
            subtitle: "Rapid tachyphylaxis (decreased effect) may be seen",
            additionalInfo: "Can lead to reflex bradycardia (vagotonia); therefore, it is sometimes preferred in states of hypotension accompanied by tachycardia. Can reduce gastrointestinal and renal blood flow.",
          ),
          AdrenergicAgonistsAntagonistsItem(
            title: "SELECTIVE α2 AGONISTS (CLONIDINE AND DEXMEDETOMIDINE)",
            description: "Suppress sympathetic discharge while providing sedation, anxiolysis, and analgesia via their receptors in the central nervous system.",
            subtitle: "Serious 'rebound' hypertension crises can occur upon sudden discontinuation",
            additionalInfo: "Dexmedetomidine is a much more selective α2 agonist compared to clonidine. Its ability to provide sedation without causing respiratory depression makes it unique in intensive care and awake intubation cases. Bradycardia and hypotension can occur as side effects.",
          ),
          AdrenergicAgonistsAntagonistsItem(
            title: "EPINEPHRINE (ADRENALINE - FUNDAMENTAL EFFECTS)",
            description: "The primary drug for anaphylaxis and cardiac arrest, where beta effects dominate at low doses and alpha effects at high doses.",
            subtitle: "β1 → ↑ Heart rate; β2 → Bronchodilation; α1 → Vasoconstriction",
            additionalInfo: "Elevates systemic blood pressure and increases the contractile force of the myocardium but also significantly raises oxygen consumption. It is life-saving in anaphylactic shock due to its ability to resolve bronchospasm and reduce edema.",
          ),
          AdrenergicAgonistsAntagonistsItem(
            title: "EPHEDRINE (DIRECT AND INDIRECT ACTING AGONIST)",
            description: "A long-acting sympathomimetic that exerts its effects by both directly stimulating receptors and increasing norepinephrine release.",
            subtitle: "The first choice for obstetric hypotension as it does not reduce uterine blood flow",
            additionalInfo: "Generally used in the treatment of hypotension developing after regional anesthesia. Its tachycardic effect is greater than that of phenylephrine. Tachyphylaxis develops with repetitive doses as it depletes norepinephrine stores.",
          ),
          AdrenergicAgonistsAntagonistsItem(
            title: "NOREPINEPHRINE (POTENT VASOCONSTRICTOR)",
            description: "The primary vasopressor used in resistant shock states, increasing vascular resistance through its potent alpha-1 effect.",
            subtitle: "Extravasation can lead to tissue necrosis",
            additionalInfo: "Increases contractility via significant β1 stimulation while raising both systolic and diastolic blood pressure through potent α1 effects. Carries the potential to reduce renal and mesenteric blood flow.",
          ),
          AdrenergicAgonistsAntagonistsItem(
            title: "DOPAMINE (DOSE-DEPENDENT RECEPTOR SELECTIVITY)",
            description: "Produces different effects, ranging from increased urine output to increased blood pressure, by stimulating different receptor groups depending on the dose.",
            subtitle: "Low dose (0.5–3 mcg/kg/min): D1; Medium dose (3–10): β1; High dose (10–20): α1",
            additionalInfo: "• D1 Effect: Supports diuresis by increasing renal and mesenteric blood flow.\n• β1 Effect: Increases cardiac output (CO) and contractile force.\n• α1 Effect: Elevates blood pressure by increasing systemic vascular resistance (PVR) but can impair renal perfusion.",
          ),
          AdrenergicAgonistsAntagonistsItem(
            title: "ISOPROTERENOL AND DOBUTAMINE (BETA-SELECTIVE EFFECTS)",
            description: "Potent beta-receptor agonists used to increase cardiac output and rate.",
            additionalInfo: "• Isoproterenol: A pure beta agonist; causes strong tachycardia and vasodilation, and lowers diastolic pressure. Greatly increases myocardial oxygen consumption.\n• Dobutamine: Exerts β1 and β2 stimulation; ideal for supporting cardiac output in patients with CHF or CAD who have low cardiac output.",
          ),
          AdrenergicAgonistsAntagonistsItem(
            title: "MODERN AGENTS: FENOLDOPAM AND DOPEXAMINE",
            description: "New-generation sympathomimetics aimed at protecting organ perfusion by targeting specific vascular beds.",
            additionalInfo: "• Fenoldopam: A selective D1 agonist; increases renal blood flow and lowers blood pressure. Can be used in the prevention of contrast-induced nephropathy.\n• Dopexamine: Exerts β2 and D1 stimulation; has a lower side effect profile than dopamine while carrying its renal-protective effect.",
          ),
        ],
      ),
      AdrenergicAgonistsAntagonistsCategory(
        categoryName: 'Adrenergic Antagonists (Blockers)',
        items: [
          AdrenergicAgonistsAntagonistsItem(
            title: "ALPHA BLOCKERS (PHENTOLAMINE - α1 AND α2)",
            description: "Agents that provide vascular relaxation by blocking alpha receptors, used especially in pheochromocytoma crises.",
            subtitle: "Cause significant hypotension and reflex tachycardia as a result of vasodilation",
            additionalInfo: "While lowering vascular resistance via α1 blockade, they lead to more NT release and tachycardia by removing the negative feedback on norepinephrine via α2 blockade. Therefore, heart rate control is usually also required.",
          ),
          AdrenergicAgonistsAntagonistsItem(
            title: "MIXED ANTAGONISTS (LABETALOL - α AND β BLOCKADE)",
            description: "Provide balanced blood pressure control by blocking both alpha and beta receptors simultaneously.",
            subtitle: "Its greatest advantage is the prevention of reflex tachycardia while lowering vascular resistance",
            additionalInfo: "Labetalol is used safely in the management of hypertensive crises in clinical practice (especially during pregnancy and surgical induction). Due to its β-blocker property, it suppresses tachycardia, and with its α-blocker property, it lowers pressure.",
          ),
          AdrenergicAgonistsAntagonistsItem(
            title: "BETA BLOCKERS (ESMOLOL, METOPROLOL, PROPRANOLOL)",
            description: "Critical anesthetic adjuncts that reduce myocardial oxygen consumption and control heart rate and contractility.",
            subtitle: "Esmolol has an ultra-short half-life of 9 minutes as it is degraded by plasma esterases",
            additionalInfo: "• Esmolol: Ideal in states of sudden sympathetic discharge such as ECT or intubation.\n• Metoprolol: A selective β1 blocker, metabolized in the liver.\n• Propranolol: Non-selective and effective in SVT and ischemia; contraindicated in those with asthma/bronchospasm because it can cause bronchial narrowing (β2 blockade).",
          ),
          AdrenergicAgonistsAntagonistsItem(
            title: "SPECIAL BETA BLOCKERS (NEBIVOLOL AND CARVEDILOL)",
            description: "Modern blockers with additional mechanisms developed for heart failure and vascular protection.",
            additionalInfo: "• Nebivolol: Exhibits vascular-protective effects by increasing nitric oxide (NO) synthesis in addition to selective β1 blockade.\n• Carvedilol: A potent agent that provides alpha-1 and beta-1/2 blockade; reduces mortality in the treatment of heart failure and ventricular dysfunction post-MI.",
          ),
        ],
      ),
    ];
  }
}
