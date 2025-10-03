import 'package:flutter/material.dart';

class RenalPhysiologyAnesthesiaItem {
  final String title;
  final String description;
  final String? subtitle;
  final String? additionalInfo;

  RenalPhysiologyAnesthesiaItem({
    required this.title,
    required this.description,
    this.subtitle,
    this.additionalInfo,
  });
}

class RenalPhysiologyAnesthesiaCategory {
  final String categoryName;
  final List<RenalPhysiologyAnesthesiaItem> items;

  RenalPhysiologyAnesthesiaCategory({
    required this.categoryName,
    required this.items,
  });
}

class RenalPhysiologyAnesthesiaData {
  static List<RenalPhysiologyAnesthesiaCategory> getRenalPhysiologyAnesthesiaData(BuildContext context) {
    return [
      RenalPhysiologyAnesthesiaCategory(
        categoryName: 'Nephron Structure and Functions',
        items: [
          RenalPhysiologyAnesthesiaItem(
            title: 'Renal Corpuscle',
            description: 'Glomerulus + Bowman\'s capsule',
          ),
          RenalPhysiologyAnesthesiaItem(
            title: 'Glomerular Filtration Pressure',
            description: '≈ 60 mmHg (≈ 60% of MAP)',
            subtitle: 'Plasma oncotic pressure ≈ 25 mmHg, interstitial pressure ≈ 10 mmHg → net filtration ≈ 10 mmHg',
            additionalInfo: 'Filtration fraction ≈ 20%',
          ),
          RenalPhysiologyAnesthesiaItem(
            title: 'Proximal Tubule',
            description: 'Reabsorbs 65–75% of ultrafiltrate (isotonic)',
            subtitle: 'Main mechanism: Na⁺/K⁺-ATPase',
            additionalInfo: 'ATII, norepinephrine → ↑ reabsorption; dopamine, fenoldopam → ↓\nNa reabsorption linked with H⁺ secretion\nAquaporin I → water permeability',
          ),
          RenalPhysiologyAnesthesiaItem(
            title: 'Loop of Henle',
            description: 'Na reabsorption 15–20%',
            subtitle: 'Descending limb → permeable to water; Ascending thick limb → impermeable to water, active NaCl reabsorption',
            additionalInfo: 'Critical for Ca and Mg reabsorption\nCountercurrent mechanism → vasa recta',
          ),
          RenalPhysiologyAnesthesiaItem(
            title: 'Distal Tubule',
            description: '~5% Na reabsorption',
            subtitle: 'Main site for Ca reabsorption (PTH effect)',
          ),
          RenalPhysiologyAnesthesiaItem(
            title: 'Collecting Duct - Cortical Principal Cells',
            description: 'Na reabsorption (aldosterone dependent), K secretion',
          ),
          RenalPhysiologyAnesthesiaItem(
            title: 'Collecting Duct - Intercalated Cells',
            description: 'H⁺ secretion (aldosterone effect)',
          ),
          RenalPhysiologyAnesthesiaItem(
            title: 'Collecting Duct - Medullary Duct',
            description: 'ADH → ↑ aquaporin-2 → ↑ water permeability',
            subtitle: 'Urea reabsorption → ↑ medullary hypertonicity',
          ),
          RenalPhysiologyAnesthesiaItem(
            title: 'Juxtaglomerular Apparatus',
            description: 'Located in afferent arteriole, associated with macula densa',
            subtitle: 'Produces renin (β1 stimulation)',
            additionalInfo: 'Renin → ATII → aldosterone release',
          ),
        ],
      ),
      RenalPhysiologyAnesthesiaCategory(
        categoryName: 'Renal Circulation',
        items: [
          RenalPhysiologyAnesthesiaItem(
            title: 'Cardiac Output',
            description: 'Kidneys receive 20–25% of cardiac output',
          ),
          RenalPhysiologyAnesthesiaItem(
            title: 'Cortex PaO₂',
            description: '≈ 50 mmHg (for filtration)',
          ),
          RenalPhysiologyAnesthesiaItem(
            title: 'Medulla PaO₂',
            description: '≈ 15 mmHg (sensitive to ischemia)',
          ),
          RenalPhysiologyAnesthesiaItem(
            title: 'Renal Plasma Flow',
            description: '≈ 660 mL/min',
          ),
          RenalPhysiologyAnesthesiaItem(
            title: 'Renal Blood Flow',
            description: '≈ 1200 mL/min',
          ),
          RenalPhysiologyAnesthesiaItem(
            title: 'GFR',
            description: 'Male ≈ 120 mL/min, Female ≈ 95 mL/min',
          ),
          RenalPhysiologyAnesthesiaItem(
            title: 'Autoregulation',
            description: 'Maintains between MAP 80–180 mmHg',
            subtitle: '<40–50 mmHg → filtration ceases',
          ),
          RenalPhysiologyAnesthesiaItem(
            title: 'Control Mechanisms - Tubuloglomerular Feedback',
            description: 'Macula densa regulates GFR',
          ),
          RenalPhysiologyAnesthesiaItem(
            title: 'Control Mechanisms - Hormonal',
            description: 'ATII → efferent arteriole constriction → preserves GFR',
            subtitle: 'PG (PGE₂, PGI₂, PGD₂) → renal protection, blocked by NSAIDs',
            additionalInfo: 'ANP → vasodilation, renin inhibition',
          ),
          RenalPhysiologyAnesthesiaItem(
            title: 'Control Mechanisms - Neuronal/Paracrine',
            description: 'β1 → ↑ renin',
            subtitle: 'α1 → renal vasoconstriction',
            additionalInfo: 'D1/D2 → vasodilation',
          ),
        ],
      ),
      RenalPhysiologyAnesthesiaCategory(
        categoryName: 'Anesthesia and the Kidney',
        items: [
          RenalPhysiologyAnesthesiaItem(
            title: 'Perioperative AKI Incidence',
            description: '1–5%',
          ),
          RenalPhysiologyAnesthesiaItem(
            title: 'Indirect Effects',
            description: 'Cardiovascular depression → ↓ RBF',
            subtitle: 'Sympathetic activation → ↓ RBF, ↓ GFR',
            additionalInfo: 'Endocrine response: ↑ catecholamines, ADH, ATII, aldosterone',
          ),
          RenalPhysiologyAnesthesiaItem(
            title: 'Direct Effects - Volatile Agents',
            description: 'Renal vasodilation (sevoflurane with low flow → compound A nephrotoxicity risk, not clinically significant)',
          ),
          RenalPhysiologyAnesthesiaItem(
            title: 'Direct Effects - IV Agents',
            description: 'Minimal effect; ketamine may be protective in hypovolemia',
          ),
          RenalPhysiologyAnesthesiaItem(
            title: 'Direct Effects - NSAIDs',
            description: '↓ PG synthesis → ↑ AKI risk',
          ),
          RenalPhysiologyAnesthesiaItem(
            title: 'Direct Effects - ACE Inhibitors',
            description: 'Loss of GFR-protective mechanism',
          ),
          RenalPhysiologyAnesthesiaItem(
            title: 'Surgical Effects',
            description: 'Laparoscopy → pneumoperitoneum decreases renal function',
          ),
        ],
      ),
      RenalPhysiologyAnesthesiaCategory(
        categoryName: 'Diuretics',
        items: [
          RenalPhysiologyAnesthesiaItem(
            title: 'Osmotic (Mannitol) - Site',
            description: 'Proximal tubule + Henle',
          ),
          RenalPhysiologyAnesthesiaItem(
            title: 'Osmotic (Mannitol) - Dose',
            description: '0.25–1 g/kg IV',
          ),
          RenalPhysiologyAnesthesiaItem(
            title: 'Osmotic (Mannitol) - Uses',
            description: 'AKI prophylaxis',
            subtitle: 'Diagnostic in acute oliguria',
            additionalInfo: '↓ ICP/cerebral edema\n↓ IOP (eye surgery)',
          ),
          RenalPhysiologyAnesthesiaItem(
            title: 'Osmotic (Mannitol) - Side Effects',
            description: 'Hypervolemia, HF, pulmonary edema, hyponatremia, rebound oliguria, nephrotoxicity',
          ),
          RenalPhysiologyAnesthesiaItem(
            title: 'Loop (Furosemide, Bumetanide, Ethacrynic acid) - Site',
            description: 'Na-K-2Cl inhibitor (thick ascending Henle)',
          ),
          RenalPhysiologyAnesthesiaItem(
            title: 'Loop (Furosemide, Bumetanide, Ethacrynic acid) - Dose',
            description: 'Furosemide 20–100 mg IV',
          ),
          RenalPhysiologyAnesthesiaItem(
            title: 'Loop (Furosemide, Bumetanide, Ethacrynic acid) - Uses',
            description: 'Edema (HF, cirrhosis, nephrotic syndrome)',
            subtitle: 'HTN',
            additionalInfo: 'Convert oliguric to non-oliguric ARF\nHypercalcemia treatment',
          ),
          RenalPhysiologyAnesthesiaItem(
            title: 'Loop (Furosemide, Bumetanide, Ethacrynic acid) - Side Effects',
            description: 'Hypokalemia, metabolic alkalosis, hypocalcemia, hypomagnesemia, ototoxicity (furosemide, ethacrynic acid)',
          ),
          RenalPhysiologyAnesthesiaItem(
            title: 'Thiazide (Hydrochlorothiazide, Metolazone) - Site',
            description: 'Distal tubule Na-Cl cotransporter inhibition',
          ),
          RenalPhysiologyAnesthesiaItem(
            title: 'Thiazide (Hydrochlorothiazide, Metolazone) - Uses',
            description: 'HTN (first-line)',
            subtitle: 'Mild–moderate edema',
            additionalInfo: 'Hypercalciuria\nNephrogenic DI',
          ),
          RenalPhysiologyAnesthesiaItem(
            title: 'Thiazide (Hydrochlorothiazide, Metolazone) - Side Effects',
            description: 'Hypokalemia, alkalosis, hyperuricemia, hyperglycemia, hypercalcemia, hyperlipidemia',
          ),
          RenalPhysiologyAnesthesiaItem(
            title: 'Potassium-Sparing - Spironolactone, Eplerenone',
            description: 'Aldosterone antagonists',
            subtitle: 'Uses: secondary hyperaldosteronism, ascites, CHF',
            additionalInfo: 'Side effects: hyperkalemia, gynecomastia (spironolactone)',
          ),
          RenalPhysiologyAnesthesiaItem(
            title: 'Potassium-Sparing - Amiloride, Triamterene',
            description: 'Na channel blockers',
            subtitle: 'Side effects: hyperkalemia, metabolic acidosis, nephrotoxicity with NSAIDs',
          ),
          RenalPhysiologyAnesthesiaItem(
            title: 'Carbonic Anhydrase Inhibitors (Acetazolamide) - Site',
            description: 'Proximal tubule',
          ),
          RenalPhysiologyAnesthesiaItem(
            title: 'Carbonic Anhydrase Inhibitors (Acetazolamide) - Dose',
            description: '250–500 mg IV',
          ),
          RenalPhysiologyAnesthesiaItem(
            title: 'Carbonic Anhydrase Inhibitors (Acetazolamide) - Uses',
            description: 'Metabolic alkalosis',
            subtitle: 'Urine alkalinization',
            additionalInfo: '↓ IOP\nProphylaxis for altitude sickness',
          ),
          RenalPhysiologyAnesthesiaItem(
            title: 'Carbonic Anhydrase Inhibitors (Acetazolamide) - Side Effects',
            description: 'Hypochloremic metabolic acidosis, paresthesia, drowsiness',
          ),
        ],
      ),
      RenalPhysiologyAnesthesiaCategory(
        categoryName: 'Key Exam Spots',
        items: [
          RenalPhysiologyAnesthesiaItem(
            title: 'SUMMARY SPOT QUESTIONS',
            description: 'Glomerular filtration pressure ≈ 60 mmHg',
            subtitle: 'Kidneys receive 20–25% of cardiac output',
            additionalInfo: 'GFR: Male ≈ 120 mL/min, Female ≈ 95 mL/min\nAutoregulation: MAP 80–180 mmHg\nProximal tubule: reabsorbs 65–75%\nLoop of Henle: Na reabsorption 15–20%\nDistal tubule: ~5% Na reabsorption',
          ),
        ],
      ),
    ];
  }
}
