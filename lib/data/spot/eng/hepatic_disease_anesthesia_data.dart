import 'package:flutter/material.dart';

class HepaticDiseaseAnesthesiaItem {
  final String title;
  final String description;
  final String? subtitle;
  final String? additionalInfo;

  HepaticDiseaseAnesthesiaItem({
    required this.title,
    required this.description,
    this.subtitle,
    this.additionalInfo,
  });
}

class HepaticDiseaseAnesthesiaCategory {
  final String categoryName;
  final List<HepaticDiseaseAnesthesiaItem> items;

  HepaticDiseaseAnesthesiaCategory({
    required this.categoryName,
    required this.items,
  });
}

class HepaticDiseaseAnesthesiaData {
  static List<HepaticDiseaseAnesthesiaCategory> getHepaticDiseaseAnesthesiaData(BuildContext context) {
    return [
      HepaticDiseaseAnesthesiaCategory(
        categoryName: 'Acute Hepatitis',
        items: [
          HepaticDiseaseAnesthesiaItem(
            title: 'Viral Hepatitis - Transmission',
            description: 'HAV & HEV → fecal–oral',
            subtitle: 'HBV & HCV → blood/body fluids',
            additionalInfo: 'HDV → requires HBV co-infection\nEBV, CMV, HSV may also cause hepatitis',
          ),
          HepaticDiseaseAnesthesiaItem(
            title: 'Clinical Course',
            description: 'Prodromal phase 1–2 weeks → fatigue, weakness, fever, nausea',
            subtitle: 'Jaundice (2–12 weeks) → recovery within 4 months',
          ),
          HepaticDiseaseAnesthesiaItem(
            title: 'Chronicity',
            description: 'HBV 3–10%, HCV 50%',
          ),
          HepaticDiseaseAnesthesiaItem(
            title: 'Post-exposure Prophylaxis',
            description: 'HBV immunoglobulin prophylaxis effective, none for HCV',
          ),
          HepaticDiseaseAnesthesiaItem(
            title: 'Drug-induced Hepatitis',
            description: 'Alcohol → fatty hepatomegaly',
            subtitle: 'Acetaminophen >25 g → fulminant hepatitis',
            additionalInfo: 'Chlorpromazine & OCPs → cholestasis',
          ),
          HepaticDiseaseAnesthesiaItem(
            title: 'Anesthesia Considerations',
            description: 'Viral hepatitis → ↑ drug sensitivity',
            subtitle: 'Alcoholics → tolerance to anesthetics',
            additionalInfo: 'Inhalation agents preferred (iso/sevo preserve perfusion)\nAvoid hypotension, sympathetic activation, high airway pressures',
          ),
        ],
      ),
      HepaticDiseaseAnesthesiaCategory(
        categoryName: 'Chronic Hepatitis',
        items: [
          HepaticDiseaseAnesthesiaItem(
            title: 'Definition',
            description: 'Inflammation lasting >6 months',
          ),
          HepaticDiseaseAnesthesiaItem(
            title: 'Classification',
            description: 'Persistent, Lobular, Active',
          ),
          HepaticDiseaseAnesthesiaItem(
            title: 'Most Common Cause',
            description: 'HBV & HCV',
          ),
          HepaticDiseaseAnesthesiaItem(
            title: 'Anesthesia Management',
            description: 'Persistent/lobular → manage like acute hepatitis',
            subtitle: 'Chronic active → manage like cirrhosis',
            additionalInfo: 'Autoimmune chronic active → beware of steroid side effects and autoimmune complications',
          ),
        ],
      ),
      HepaticDiseaseAnesthesiaCategory(
        categoryName: 'Cirrhosis',
        items: [
          HepaticDiseaseAnesthesiaItem(
            title: 'Most Common Cause',
            description: 'Alcohol',
          ),
          HepaticDiseaseAnesthesiaItem(
            title: 'Pathophysiology',
            description: 'Hepatocyte necrosis → fibrosis + nodular regeneration',
          ),
          HepaticDiseaseAnesthesiaItem(
            title: 'Complications',
            description: 'Portal HT & variceal bleeding',
            subtitle: 'Ascites & refractory fluid retention',
            additionalInfo: 'Encephalopathy & coma\nRisk of HCC',
          ),
          HepaticDiseaseAnesthesiaItem(
            title: 'Pre-op Considerations - GI',
            description: 'Portal HT → variceal bleeding; nitrogen load → encephalopathy risk',
          ),
          HepaticDiseaseAnesthesiaItem(
            title: 'Pre-op Considerations - Hematologic',
            description: 'Anemia, thrombocytopenia, coagulopathy → transfuse platelets if <75,000/µL',
          ),
          HepaticDiseaseAnesthesiaItem(
            title: 'Pre-op Considerations - Cardiac',
            description: 'Hyperdynamic circulation, CMP possible; >50 yrs + risk factors → CAD testing',
          ),
          HepaticDiseaseAnesthesiaItem(
            title: 'Pre-op Considerations - Pulmonary',
            description: 'Intrapulmonary shunts ↑, hypoxia, atelectasis',
          ),
          HepaticDiseaseAnesthesiaItem(
            title: 'Portopulmonary HT',
            description: 'PAH >25 mmHg, PVR >240 dyn·s/cm⁵, transpulmonary gradient >12 mmHg',
            subtitle: '45 mmHg → severe risk, ↑ transplant mortality',
          ),
          HepaticDiseaseAnesthesiaItem(
            title: 'Pre-op Considerations - Renal',
            description: 'Ascites, dilutional hyponatremia, hypokalemia, hepatorenal syndrome',
          ),
          HepaticDiseaseAnesthesiaItem(
            title: 'Fluid Balance',
            description: 'Ascites + edema → daily loss <1 kg; ascites only → <0.5 kg/day',
          ),
          HepaticDiseaseAnesthesiaItem(
            title: 'CNS Management',
            description: 'Encephalopathy → lactulose (30–50 mL/8 h), neomycin (500 mg/6 h)',
          ),
          HepaticDiseaseAnesthesiaItem(
            title: 'Intra-op Management',
            description: 'Altered drug PK, ↓ pseudocholinesterase',
            subtitle: 'Hepatic flow depends on arterial supply; RA risky with thrombocytopenia/coagulopathy',
            additionalInfo: 'Induction: propofol; maintenance: isoflurane/sevo; opioids prolonged half-life\nMonitoring: invasive BP, frequent ABG, echo for volume status\nFluids: intra-op losses → colloids; post-paracentesis → risk of hypotension/renal dysfunction\nBlood products: citrate → hypocalcemia',
          ),
        ],
      ),
      HepaticDiseaseAnesthesiaCategory(
        categoryName: 'Hepatic Surgery',
        items: [
          HepaticDiseaseAnesthesiaItem(
            title: 'Requirements',
            description: 'Wide-bore IV, CVP, invasive arterial line, warming systems',
          ),
          HepaticDiseaseAnesthesiaItem(
            title: 'Monitoring',
            description: 'CVP alone inadequate → Doppler/ECHO recommended',
          ),
          HepaticDiseaseAnesthesiaItem(
            title: 'Antifibrinolytics',
            description: 'ε-aminocaproic acid, tranexamic acid if perfusion impaired by hypotension',
          ),
          HepaticDiseaseAnesthesiaItem(
            title: 'Hydatid Cyst',
            description: 'Rupture → peritoneal spread → anaphylaxis risk',
          ),
        ],
      ),
      HepaticDiseaseAnesthesiaCategory(
        categoryName: 'Liver Transplantation',
        items: [
          HepaticDiseaseAnesthesiaItem(
            title: 'Pre-op',
            description: 'MELD score → mortality predictor',
            subtitle: 'Borderline renal function → CVVH may be required',
          ),
          HepaticDiseaseAnesthesiaItem(
            title: 'Dissection Phase',
            description: 'Major vessel manipulation, hyponatremia must not be corrected rapidly',
          ),
          HepaticDiseaseAnesthesiaItem(
            title: 'Anhepatic Phase',
            description: 'Inflow/outflow to liver interrupted, venovenous bypass may be considered',
          ),
          HepaticDiseaseAnesthesiaItem(
            title: 'Neohepatic Phase',
            description: 'Portal vein unclamped, reperfusion syndrome (hypotension, hyperkalemia, acidosis) → treat with CaCl & NaHCO₃',
          ),
          HepaticDiseaseAnesthesiaItem(
            title: 'Post-op',
            description: 'Multisystemic monitoring',
            subtitle: 'Early extubation possible in selected patients',
            additionalInfo: 'Immunosuppression required\nClose monitoring of hepatic arterial flow',
          ),
        ],
      ),
      HepaticDiseaseAnesthesiaCategory(
        categoryName: 'Key Exam Spots',
        items: [
          HepaticDiseaseAnesthesiaItem(
            title: 'SUMMARY SPOT QUESTIONS',
            description: 'HBV chronicity: 3–10%, HCV: 50%',
            subtitle: 'Cirrhosis most common cause: alcohol',
            additionalInfo: 'Portal HT: PAH >25 mmHg, PVR >240 dyn·s/cm⁵\nTransfuse platelets if <75,000/µL\nMELD score → mortality predictor\nReperfusion syndrome: hypotension, hyperkalemia, acidosis',
          ),
        ],
      ),
    ];
  }
}
