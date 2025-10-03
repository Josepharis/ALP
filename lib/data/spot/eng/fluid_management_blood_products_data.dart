import 'package:flutter/material.dart';

class FluidManagementBloodProductsItem {
  final String title;
  final String description;
  final String? subtitle;
  final String? additionalInfo;

  FluidManagementBloodProductsItem({
    required this.title,
    required this.description,
    this.subtitle,
    this.additionalInfo,
  });
}

class FluidManagementBloodProductsCategory {
  final String categoryName;
  final List<FluidManagementBloodProductsItem> items;

  FluidManagementBloodProductsCategory({
    required this.categoryName,
    required this.items,
  });
}

class FluidManagementBloodProductsData {
  static List<FluidManagementBloodProductsCategory> getFluidManagementBloodProductsData(BuildContext context) {
    return [
      FluidManagementBloodProductsCategory(
        categoryName: 'Determination of Intravascular Volume',
        items: [
          FluidManagementBloodProductsItem(
            title: 'Laboratory Findings (Indirect)',
            description: 'Hct, arterial pH, urine density (>1.010), urine Na⁺ (<10 mEq/L), urine osmolality (>450 mOsm/kg), serum Na⁺, creatinine, BUN',
          ),
          FluidManagementBloodProductsItem(
            title: 'Hypovolemia Indicators',
            description: 'Hypernatremia, BUN/creatinine >10:1',
          ),
          FluidManagementBloodProductsItem(
            title: 'Volume Overload Indicators',
            description: 'Pulmonary vascularity ↑, Kerley-B lines, diffuse alveolar infiltrates',
          ),
          FluidManagementBloodProductsItem(
            title: 'Hemodynamics',
            description: 'CVP unreliable alone',
            subtitle: 'If mismatch → pulmonary artery catheterization',
            additionalInfo: 'PAOP <8 mmHg → hypovolemia\nPAOP >18 mmHg → ↑ LV workload\nArterial pulse contour & stroke volume variation may be used',
          ),
        ],
      ),
      FluidManagementBloodProductsCategory(
        categoryName: 'Intravenous Fluids',
        items: [
          FluidManagementBloodProductsItem(
            title: 'Crystalloids',
            description: 'First choice: hemorrhagic/septic shock, burns, head trauma',
            subtitle: 'Ringer\'s lactate: least effect on EC fluid',
            additionalInfo: 'Lactate metabolized to bicarbonate in liver\nNormal saline: high volumes → dilutional hyperchloremic metabolic acidosis\n5% dextrose: used in Na-restricted cases\nIntravascular half-life: 20–30 min',
          ),
          FluidManagementBloodProductsItem(
            title: 'Colloids',
            description: 'Intravascular half-life: 3–6 h',
            subtitle: 'Indications: severe intravascular deficit, hypoalbuminemia, burns, replacement >3–4 L',
            additionalInfo: 'Dextran 70 > Dextran 40 as volume expander; Dextran 40 improves microcirculation\n20 mL/kg/day: risk of coagulopathy, blood typing changes, anaphylaxis\nHydroxyethyl starch (HES): strong expander, >1 L → coagulopathy risk',
          ),
        ],
      ),
      FluidManagementBloodProductsCategory(
        categoryName: 'Perioperative Fluid Therapy',
        items: [
          FluidManagementBloodProductsItem(
            title: 'Normal Maintenance',
            description: '4:2:1 rule',
          ),
          FluidManagementBloodProductsItem(
            title: 'Fasting Deficits',
            description: 'Calculated by fasting duration, replaced intraop',
          ),
          FluidManagementBloodProductsItem(
            title: 'Surgical Losses',
            description: 'Blood loss:',
            subtitle: 'Sponge ≈10 mL, gauze ≈100–150 mL',
            additionalInfo: 'Suction loss must be included\nOther losses: evaporation, redistribution',
          ),
          FluidManagementBloodProductsItem(
            title: 'Replacement Strategy',
            description: 'Until transfusion threshold: 3× crystalloids or equal colloids',
            subtitle: 'Beyond transfusion threshold: 1 U blood loss → 1 U PRBC',
            additionalInfo: 'With normal Hct, transfusion after 10–20% loss\nAllowable blood loss: volume to reduce Hct to 30 ×3\nTransfusion rarely needed if Hct >24 or Hb >8\n1 U PRBC ↑ Hb by 1 g/dL\nRedistribution/evaporation: 0–2 to 4–8 mL/kg',
          ),
        ],
      ),
      FluidManagementBloodProductsCategory(
        categoryName: 'Transfusion',
        items: [
          FluidManagementBloodProductsItem(
            title: 'Blood Groups',
            description: 'ABO system: RBC surface antigens',
            subtitle: 'Rh system: D antigen → Rh(+)',
            additionalInfo: 'Other: Lewis, Kidd, Kell, Duffy (rarely severe hemolysis)',
          ),
          FluidManagementBloodProductsItem(
            title: 'Compatibility Tests',
            description: 'ABO-Rh → most severe reactions',
            subtitle: 'Antibody screen: indirect Coombs',
            additionalInfo: 'Crossmatch: ABO-Rh confirmation, non-ABO antibodies\nType & screen: used in elective surgery',
          ),
          FluidManagementBloodProductsItem(
            title: 'Intraop Replacement',
            description: 'PRBC: with 170 µm filter; >2–3 U → warm before use',
            subtitle: 'FFP: 10–15 mL/kg; ↑ factors 2–3%; warm before infusion',
            additionalInfo: 'Platelets: transfuse if <50,000; 1 U ↑ count by 5–10k\nGranulocytes: for neutropenic, antibiotic-resistant infections; short half-life, irradiated\nTrauma coagulopathy: 1:1:1 PRBC:FFP:Platelets',
          ),
        ],
      ),
      FluidManagementBloodProductsCategory(
        categoryName: 'Complications of Blood Transfusion',
        items: [
          FluidManagementBloodProductsItem(
            title: 'Immunologic Complications',
            description: 'Acute hemolytic: ABO mismatch, 1:38k; fatal 1:100k',
            subtitle: 'Delayed hemolytic: non-D Rh, 2–21 days later, 1:12k incidence',
          ),
          FluidManagementBloodProductsItem(
            title: 'Non-Hemolytic Reactions',
            description: 'Febrile reaction (1–3%)',
            subtitle: 'Urticaria (antihistamine)',
            additionalInfo: 'Anaphylaxis (IgA deficiency → washed PRBC)\nTRALI: 1:5000 after FFP/Plt, acute hypoxia\nGVHD: in immunosuppressed; prevented by irradiation\nPost-transfusion purpura: anti-platelet antibodies, 5–10 days later\nImmunomodulation: ↑ infection, recurrence, mortality',
          ),
          FluidManagementBloodProductsItem(
            title: 'Infectious Complications',
            description: 'Hep B (1:200k), Hep C (1:1.9M), HIV very low (NAAT)',
            subtitle: 'CMV, EBV, HTLV, parvo, West Nile virus possible',
            additionalInfo: 'Parasites: malaria, toxoplasma, Chagas (rare)\nBacteria: Staph, Yersinia; transfusion must finish <4 h',
          ),
          FluidManagementBloodProductsItem(
            title: 'Massive Transfusion Complications',
            description: 'Coagulopathy: dilutional thrombocytopenia',
            subtitle: 'Citrate toxicity: hypocalcemia (esp. liver disease)',
            additionalInfo: 'Hypothermia: must warm blood; <30°C → VF risk\nAcid–base: citrate & metabolites → acidosis (metabolized rapidly by liver)\nPotassium: banked blood K⁺ ↑, but safe if infusion <100 mL/min',
          ),
        ],
      ),
      FluidManagementBloodProductsCategory(
        categoryName: 'Alternative Strategies',
        items: [
          FluidManagementBloodProductsItem(
            title: 'Autologous Transfusion',
            description: 'Start 4–5 wks preop; Hct ≥34%, Hb ≥11',
            subtitle: 'Iron/EPO supplementation; 3–4 U can be collected',
          ),
          FluidManagementBloodProductsItem(
            title: 'Cell Salvage',
            description: 'Cardiac/vascular surgery with ≥1000–1500 mL blood loss',
            subtitle: 'Contraindications: sepsis, malignancy',
          ),
          FluidManagementBloodProductsItem(
            title: 'Normovolemic Hemodilution',
            description: 'Blood drawn preop, replaced with crystalloids/colloids',
            subtitle: 'Stored in CPD bag, usable for 6 h',
          ),
          FluidManagementBloodProductsItem(
            title: 'Directed Donation',
            description: 'From relatives; must be obtained ≥7 days preop',
          ),
        ],
      ),
      FluidManagementBloodProductsCategory(
        categoryName: 'Key Exam Spots',
        items: [
          FluidManagementBloodProductsItem(
            title: 'SUMMARY SPOT QUESTIONS',
            description: 'Crystalloids: intravascular half-life 20–30 min',
            subtitle: 'Colloids: intravascular half-life 3–6 h',
            additionalInfo: 'Blood loss replacement: 3× crystalloids until transfusion threshold\n1 U PRBC ↑ Hb by 1 g/dL\nAcute hemolytic: ABO mismatch, 1:38k\nMassive transfusion: 1:1:1 PRBC:FFP:Platelets\nCell salvage: ≥1000–1500 mL blood loss',
          ),
        ],
      ),
    ];
  }
}
