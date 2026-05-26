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
            title: 'LABORATORY FINDINGS AND INDIRECT VOLUME MARKERS',
            description: 'Assessed via Hct, pH, urine density (>1.010), urine Na⁺ (<10 mEq/L), and osmolality (>450 mOsm/kg).',
            additionalInfo: 'Serum sodium, creatinine, and BUN are also valuable for indirect volume assessment.',
          ),
          FluidManagementBloodProductsItem(
            title: 'HYPOVOLEMIA INDICATORS',
            description: 'Key signs include hypernatremia and a BUN/creatinine ratio greater than 10:1.',
            additionalInfo: 'These markers reflect renal compensation for reduced circulating volume.',
          ),
          FluidManagementBloodProductsItem(
            title: 'VOLUME OVERLOAD INDICATORS',
            description: 'Radiological signs include increased pulmonary vascularity, Kerley-B lines, and diffuse alveolar infiltrates.',
            additionalInfo: 'Clinical correlation with dyspnea and rales is essential.',
          ),
          FluidManagementBloodProductsItem(
            title: 'HEMODYNAMICS: CVP AND PAOP MEASUREMENTS',
            description: 'Central Venous Pressure (CVP) is a static measurement and is often unreliable when used alone.',
            subtitle: 'Pulmonary artery occlusion pressure (PAOP) is used if CVP results are inconclusive',
            additionalInfo: 'PAOP <8 mmHg indicates hypovolemia, while PAOP >18 mmHg suggests increased left ventricular workload. Arterial pulse contour and stroke volume variation are dynamic alternatives.',
          ),
        ],
      ),
      FluidManagementBloodProductsCategory(
        categoryName: 'Intravenous Fluids',
        items: [
          FluidManagementBloodProductsItem(
            title: 'CRYSTALLOIDS: INDICATIONS AND COMPOSITION',
            description: 'Primary choice for hemorrhagic/septic shock, burns, and head trauma management.',
            subtitle: 'Ringer\'s lactate has the least effect on extracellular fluid composition',
            additionalInfo: 'Intravascular half-life is 20–30 minutes. Normal saline may cause dilutional hyperchloremic metabolic acidosis at high volumes. 5% Dextrose is used primarily for free water supply.',
          ),
          FluidManagementBloodProductsItem(
            title: 'COLLOIDS: VOLUME EXPANSION AND RISKS',
            description: 'Provides more sustained volume expansion with an intravascular half-life of 3–6 hours.',
            subtitle: 'Indicated for severe intravascular deficit, hypoalbuminemia, and replacements >3–4 L',
            additionalInfo: 'Dextran 70 is a stronger expander than Dextran 40, though Dextran 40 improves microcirculation. Hydroxyethyl starch (HES) carries a risk of coagulopathy above 1 L.',
          ),
        ],
      ),
      FluidManagementBloodProductsCategory(
        categoryName: 'Perioperative Fluid Therapy',
        items: [
          FluidManagementBloodProductsItem(
            title: 'NORMAL MAINTENANCE CALCULATIONS',
            description: 'Estimated using the standard 4:2:1 rule based on body weight.',
            additionalInfo: 'Provides the baseline requirement for daily physiological processes.',
          ),
          FluidManagementBloodProductsItem(
            title: 'PREOPERATİVE FASTING DEFICITS',
            description: 'Calculated by multiplying the fasting duration by the hourly maintenance requirement.',
            additionalInfo: 'Typically replaced intraoperatively according to clinical protocols.',
          ),
          FluidManagementBloodProductsItem(
            title: 'SURGICAL LOSSES: SPONGES AND GAUZE',
            description: 'Surgical blood loss is estimated by visual assessment of sponges and suction canisters.',
            subtitle: 'A standard sponge holds ~10 mL, while a large gauze holds ~100–150 mL',
            additionalInfo: 'Evaporation and third-space redistribution must also be considered in overall fluid planning.',
          ),
          FluidManagementBloodProductsItem(
            title: 'FLUID REPLACEMENT STRATEGY AND TRANSFUSION THRESHOLD',
            description: 'Initially replace blood loss with 3× the volume in crystalloids or equal volume in colloids.',
            subtitle: 'Hb <8 g/dL or Hct <24% are typical thresholds for red blood cell transfusion',
            additionalInfo: '1 Unit of PRBC typically increases Hb by 1 g/dL. Allowable blood loss is calculated as the volume needed to reduce Hct to 30%.',
          ),
        ],
      ),
      FluidManagementBloodProductsCategory(
        categoryName: 'Transfusion',
        items: [
          FluidManagementBloodProductsItem(
            title: 'BLOOD GROUPS AND ANTIGENS',
            description: 'The ABO system is based on surface antigens, while the Rh system focuses on the D antigen.',
            additionalInfo: 'Other minor systems like Lewis, Kidd, Kell, and Duffy rarely cause severe hemolysis but are clinically noted.',
          ),
          FluidManagementBloodProductsItem(
            title: 'COMPATIBILITY TESTING: COOMBS AND CROSSMATCH',
            description: 'Includes ABO-Rh testing, antibody screening (indirect Coombs), and final crossmatching.',
            subtitle: 'ABO mismatch causes the most severe and life-threatening reactions',
            additionalInfo: 'Crossmatch confirms ABO-Rh compatibility and detects non-ABO or low-titer antibodies.',
          ),
          FluidManagementBloodProductsItem(
            title: 'INTRAOPERATIVE REPLACEMENT: PRBC, FFP, AND PLATELETS',
            description: 'PRBC should be administered with a 170 µm filter and warmed if more than 2-3 units are given.',
            subtitle: 'FFP is used at 10–15 mL/kg to restore factors; Platelets are transfused if count is <50,000',
            additionalInfo: 'In trauma coagulopathy, a 1:1:1 ratio of PRBC:FFP:Platelets is recommended. Granulocytes are reserved for specific antibiotic-resistant infections.',
          ),
        ],
      ),
      FluidManagementBloodProductsCategory(
        categoryName: 'Complications of Blood Transfusion',
        items: [
          FluidManagementBloodProductsItem(
            title: 'IMMUNOLOGIC COMPLICATIONS: HEMOLYTIC REACTIONS',
            description: 'Acute hemolytic reactions due to ABO mismatch occur in ~1:38,000 transfusions (fatal in 1:100,000).',
            subtitle: 'Delayed hemolytic reactions (1:12,000) occur 2–21 days later, often due to non-D Rh antigens',
            additionalInfo: 'Clinical signs include fever, hemoglobinuria, and potential renal failure.',
          ),
          FluidManagementBloodProductsItem(
            title: 'NON-HEMOLYTIC REACTIONS AND TRALI',
            description: 'Febrile reactions (1–3%) and urticaria are the most common non-hemolytic events.',
            subtitle: 'Transfusion-Related Acute Lung Injury (TRALI) is a leading cause of transfusion-related mortality',
            additionalInfo: 'TRALI (1:5,000) involves acute hypoxia after FFP/Platelet transfusion. Anaphylaxis occurs in IgA-deficient patients.',
          ),
          FluidManagementBloodProductsItem(
            title: 'INFECTIOUS COMPLICATIONS AND VIRAL RISKS',
            description: 'Hepatitis B risk is ~1:200,000 and Hepatitis C is ~1:1,900,000; HIV risk is extremely low due to NAAT.',
            subtitle: 'Cytomegalovirus (CMV), EBV, and West Nile virus are also transmissible',
            additionalInfo: 'Bacterial contamination (Staphylococci, Yersinia) requires transfusions to finish within 4 hours. Parasites like malaria are rare.',
          ),
          FluidManagementBloodProductsItem(
            title: 'MASSIVE TRANSFUSION COMPLICATIONS',
            description: 'Common issues include dilutional thrombocytopenia and citrate-induced hypocalcemia.',
            subtitle: 'Hypothermia risk (<30°C) predisposes to ventricular fibrillation',
            additionalInfo: 'Banked blood has increased K⁺, but is generally safe if infused at rates <100 mL/min. Citrate metabolites may cause metabolic alkalosis.',
          ),
        ],
      ),
      FluidManagementBloodProductsCategory(
        categoryName: 'Alternative Strategies',
        items: [
          FluidManagementBloodProductsItem(
            title: 'AUTOLOGOUS TRANSFUSION CRITERIA',
            description: 'Collection should start 4–5 weeks preoperatively; patient must have Hct ≥34% or Hb ≥11 g/dL.',
            additionalInfo: 'Supplementation with iron or Erythropoietin (EPO) allows for 3–4 unit collection.',
          ),
          FluidManagementBloodProductsItem(
            title: 'CELL SALVAGE (INTRAOPERATIVE RECOVERY)',
            description: 'Effective in cardiac/vascular surgery where blood loss is expected to exceed 1000–1500 mL.',
            additionalInfo: 'Contraindicated in cases involving sepsis or malignancy at the surgical site.',
          ),
          FluidManagementBloodProductsItem(
            title: 'ACUTE NORMOVOLEMIC HEMODILUTION',
            description: 'Removing blood immediately preoperatively and replacing it with crystalloids/colloids.',
            additionalInfo: 'The autologous blood is stored in CPD bags and remains usable for up to 6 hours.',
          ),
          FluidManagementBloodProductsItem(
            title: 'DIRECTED DONATION FROM RELATIVES',
            description: 'Blood donated specifically for a patient by relatives; must be obtained at least 7 days preoperatively.',
            additionalInfo: 'Provides psychological comfort but does not necessarily reduce infection risk compared to donor blood.',
          ),
        ],
      ),
      FluidManagementBloodProductsCategory(
        categoryName: 'Key Exam Spots',
        items: [
          FluidManagementBloodProductsItem(
            title: 'SUMMARY SPOT QUESTIONS',
            description: 'Critical thresholds: Crystalloid half-life 20-30m, Colloid 3-6h, Transfusion Hb <8.',
            subtitle: '1 unit PRBC increases Hb by 1 g/dL',
            additionalInfo: 'Trauma 1:1:1 ratio. Cell salvage threshold ≥1000 mL. Acute hemolytic 1:38k.',
          ),
        ],
      ),
    ];
  }
}
