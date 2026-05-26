import 'package:flutter/material.dart';

class OrthopedicSurgeryAnesthesiaItem {
  final String title;
  final String description;
  final String? subtitle;
  final String? additionalInfo;

  OrthopedicSurgeryAnesthesiaItem({
    required this.title,
    required this.description,
    this.subtitle,
    this.additionalInfo,
  });
}

class OrthopedicSurgeryAnesthesiaCategory {
  final String categoryName;
  final List<OrthopedicSurgeryAnesthesiaItem> items;

  OrthopedicSurgeryAnesthesiaCategory({
    required this.categoryName,
    required this.items,
  });
}

class OrthopedicSurgeryAnesthesiaData {
  static List<OrthopedicSurgeryAnesthesiaCategory>
  getOrthopedicSurgeryAnesthesiaData(BuildContext context) {
    return [
      OrthopedicSurgeryAnesthesiaCategory(
        categoryName: 'Bone Cement (PMMA)',
        items: [
          OrthopedicSurgeryAnesthesiaItem(
            title: "POLYMETHYLMETHACRYLATE (PMMA) AND INTRAMEDULLARY PRESSURE",
            description:
                "Intramedullary pressure can rise above 500 mmHg during the application of bone cement (PMMA).",
            additionalInfo:
                "This high pressure paves the way for the escape of medullary contents into the systemic circulation.",
          ),
          OrthopedicSurgeryAnesthesiaItem(
            title: "EMBOLISM RISKS CAUSED BY BONE CEMENT",
            description:
                "With cement application, fat, bone marrow, air, and cement particles enter the venous circulation, creating a risk of embolism.",
            subtitle:
                "Marked vasodilation and thromboplastin release are observed as a result of systemic absorption",
            additionalInfo:
                "The embolic load causes serious stress on the right heart and pulmonary hypertension.",
          ),
          OrthopedicSurgeryAnesthesiaItem(
            title: "BONE CEMENT IMPLANTATION SYNDROME (BCIS)",
            description:
                "BCIS is a fatal condition characterized by sudden hypoxia, hypotension, arrhythmias, pulmonary hypertension, and a decrease in cardiac output.",
            subtitle:
                "This condition is most commonly encountered during hip arthroplasty (THA) operations",
            additionalInfo:
                "The heat released during the polymerization of cement can also contribute to tissue damage.",
          ),
          OrthopedicSurgeryAnesthesiaItem(
            title: "PREVENTION FROM BCIS AND OPERATIVE MANEUVERS",
            description:
                "To reduce BCIS risk, FiO2 should be increased before application, normovolemia should be ensured, and the femoral shaft should be cleaned thoroughly.",
            subtitle:
                "Venting the distal femur is of vital importance to lower intramedullary pressure",
            additionalInfo:
                "Preference for cementless components should be considered in high-risk patients if possible.",
          ),
          OrthopedicSurgeryAnesthesiaItem(
            title: "LONG-TERM COMPLICATIONS IN PROSTHESIS APPLICATIONS",
            description:
                "Loosening of the prosthesis is the most common late-stage mechanical problem after hip and knee surgery.",
            additionalInfo:
                "Loosening leads to pain and the need for revision surgery.",
          ),
          OrthopedicSurgeryAnesthesiaItem(
            title: "IDEAL PATIENT GROUP FOR CEMENTED PROSTHESIS",
            description:
                "Usually elderly patients with osteoporotic bone structure and low physical activity are the most suitable group for cemented prosthesis.",
            additionalInfo:
                "Cement provides better fixation of the prosthesis to weak bone tissue.",
          ),
        ],
      ),
      OrthopedicSurgeryAnesthesiaCategory(
        categoryName: 'Tourniquet Use',
        items: [
          OrthopedicSurgeryAnesthesiaItem(
            title: "TOURNIQUET PRESSURE SETTINGS (SBP +100 MMHG)",
            description:
                "To stop bleeding in upper and lower extremity surgeries, tourniquet pressure should be set at least 100 mmHg above systolic blood pressure (SBP).",
            additionalInfo:
                "Insufficient pressure can cause venous engorgement and more bleeding in the surgical field.",
          ),
          OrthopedicSurgeryAnesthesiaItem(
            title: "TOURNIQUET DURATION AND TISSUE DAMAGE (>2 HOURS)",
            description:
                "When the tourniquet duration exceeds 2 hours, the risk of muscle dysfunction, irreversible nerve damage, and rhabdomyolysis increases significantly.",
            additionalInfo:
                "After 2 hours, the tourniquet must be deflated periodically to ensure tissue reperfusion.",
          ),
          OrthopedicSurgeryAnesthesiaItem(
            title: "ESMARCH BANDAGE APPLICATION AND HEMODYNAMIC EFFECTS",
            description:
                "Esmarch bandage wrapped to empty the blood of the extremity leads to sudden increases in CVP and systemic blood pressure, especially in bilateral applications.",
            additionalInfo:
                "In patients with limited heart reserve, this increase in preload can trigger heart failure.",
          ),
          OrthopedicSurgeryAnesthesiaItem(
            title: "TOURNIQUET PAIN AND SYMPATHETIC ACTIVATION",
            description:
                "Even under general or regional anesthesia, sympathetic activation (tourniquet pain) characterized by hypertension and tachycardia is seen when the tourniquet duration is prolonged.",
            additionalInfo:
                "This pain is usually associated with chronic compression of A-delta and C fibers.",
          ),
          OrthopedicSurgeryAnesthesiaItem(
            title: "TOURNIQUET RELEASE AND REPERFUSION EFFECTS",
            description:
                "Hypertension ends with the deflation of the tourniquet; however, the entry of accumulated lactate and potassium into the circulation causes arrhythmias and increased ventilation needs.",
            subtitle:
                "The risk of massive pulmonary embolism (PE) that can develop following tourniquet release should be kept in mind",
            additionalInfo:
                "A sudden drop in ETCO2 and hypotension can be signs of PE.",
          ),
        ],
      ),
      OrthopedicSurgeryAnesthesiaCategory(
        categoryName: 'Fat Embolism Syndrome',
        items: [
          OrthopedicSurgeryAnesthesiaItem(
            title: "FAT EMBOLISM MORTALITY RATES (10-20%)",
            description:
                "Fat embolism syndrome, a serious orthopedic complication, has high mortality rates varying between 10% and 20%.",
            additionalInfo:
                "Early diagnosis and supportive treatment are life-saving.",
          ),
          OrthopedicSurgeryAnesthesiaItem(
            title: "FAT EMBOLISM TIMING AND FRACTURE TYPES",
            description:
                "Clinical findings begin to appear especially within the first 72 hours following long bone and pelvic fractures.",
            additionalInfo:
                "Bilateral femur fractures are the highest risk group.",
          ),
          OrthopedicSurgeryAnesthesiaItem(
            title:
                "FAT EMBOLISM DIAGNOSTIC TRIAD (DYSPNEA-CONFUSION-PETECHIAE)",
            description:
                "The disease is typically recognized by a triad consisting of dyspnea (respiratory distress), mental confusion, and petechial rashes on the skin.",
            additionalInfo:
                "Full appearance of the triad confirms the diagnosis, but not all findings may be present in every patient.",
          ),
          OrthopedicSurgeryAnesthesiaItem(
            title: "FAT EMBOLISM PATHOPHYSIOLOGY AND ARDS",
            description:
                "Fat particles entering the circulation and rising free fatty acids lead to ARDS by causing inflammation in lung tissue.",
            additionalInfo:
                "Free fatty acids have a direct toxic effect on pneumocytes.",
          ),
          OrthopedicSurgeryAnesthesiaItem(
            title: "TYPICAL LOCALIZATIONS OF PETECHIAE",
            description:
                "Rashes are most commonly observed on the chest wall, upper extremities, axilla, and conjunctiva.",
            additionalInfo:
                "Petechiae usually disappear by fading within 48-72 hours.",
          ),
          OrthopedicSurgeryAnesthesiaItem(
            title: "LABORATORY FINDINGS IN FAT EMBOLISM",
            description:
                "In the condition accompanied by petechiae, marked thrombocytopenia and consumption coagulopathy are reflected in the laboratory.",
            additionalInfo:
                "Hypofibrinogenemia may also accompany the diagnosis.",
          ),
          OrthopedicSurgeryAnesthesiaItem(
            title: "INTRAOPERATIVE SIGNS OF FAT EMBOLISM",
            description:
                "During anesthesia, a sudden drop in ETCO2, an increase in pulmonary artery pressure (PAP), and ST changes on the ECG should suggest fat embolism.",
            additionalInfo:
                "Signs of right heart failure (right axis deviation etc.) can be observed.",
          ),
          OrthopedicSurgeryAnesthesiaItem(
            title: "FAT EMBOLISM TREATMENT AND STABILIZATION",
            description:
                "The most important steps in treatment are early surgical stabilization of the fracture, high-flow oxygen/CPAP support, and use of vasodilators if necessary.",
            additionalInfo:
                "There is no specific antidote, supportive treatment is essential.",
          ),
        ],
      ),
      OrthopedicSurgeryAnesthesiaCategory(
        categoryName: 'DVT / Thromboembolism',
        items: [
          OrthopedicSurgeryAnesthesiaItem(
            title: "THROMBOEMBOLISM RISK FACTORS AND DURATIONS",
            description:
                "Age over 60, surgery lasting longer than 30 minutes, lower extremity fracture, and immobilization longer than 4 days are main risk factors.",
            additionalInfo:
                "Obesity and presence of active cancer further multiply the risk.",
          ),
          OrthopedicSurgeryAnesthesiaItem(
            title: "DVT AND PE INCIDENCES IN ORTHOPEDIC SURGERY",
            description:
                "In hip and knee surgery, if prophylaxis is not applied, DVT risk is 40-80%, PE is 20%, and fatal PE is 1-3%.",
            additionalInfo:
                "These high rates necessitate aggressive prophylaxis in orthopedic patients.",
          ),
          OrthopedicSurgeryAnesthesiaItem(
            title: "THROMBOEMBOLISM PROPHYLAXIS (MECHANICAL AND MEDICAL)",
            description:
                "Mechanical prophylaxis should be applied in all patients; medical support should be provided with low-dose anticoagulants if bleeding risk is low.",
            subtitle:
                "Only mechanical methods (compression stockings, compression) should be preferred in patients with high bleeding risk",
            additionalInfo:
                "Prophylaxis duration can last for weeks depending on the surgery type.",
          ),
          OrthopedicSurgeryAnesthesiaItem(
            title: "ROLE OF RA TECHNIQUES ON THROMBOEMBOLISM",
            description:
                "Regional anesthesia techniques (spinal/epidural) reduce the risk of thromboembolic complications by increasing venous flow and reducing inflammation.",
            subtitle:
                "However, timing of neuraxial block application in those receiving anticoagulants is critical due to hematoma risk",
            additionalInfo:
                "12-24 hour waiting periods should be observed after LMWH (Low molecular weight heparin).",
          ),
        ],
      ),
      OrthopedicSurgeryAnesthesiaCategory(
        categoryName: 'Hip Fracture',
        items: [
          OrthopedicSurgeryAnesthesiaItem(
            title: "PREOPERATIVE CLINICAL STATUS IN HIP FRACTURE",
            description:
                "Patients are usually in advanced age and in a state of chronic hypoxia due to dehydration, occult blood loss, and comorbidities.",
            additionalInfo:
                "Surgical intervention within the first 24-48 hours after fracture increases survival.",
          ),
          OrthopedicSurgeryAnesthesiaItem(
            title: "ANESTHESIA SELECTION AND SUPERIORITY OF RA IN HIP FRACTURE",
            description:
                "Regional anesthesia (spinal/epidural) appears superior to general anesthesia in terms of short-term outcomes and prevention of thromboembolism.",
            subtitle:
                "Isobaric or hypobaric local anesthetic choices can be made when positioning the patient",
            additionalInfo:
                "Block position should not be given to the patient until sufficient analgesia is provided.",
          ),
          OrthopedicSurgeryAnesthesiaItem(
            title: "MONITORING NEED IN HIP FRACTURE",
            description:
                "Since large blood losses are expected, wide IV access and close hemodynamic monitoring are mandatory.",
            additionalInfo:
                "Cardiac reserves of the patients may be limited for stabilization.",
          ),
        ],
      ),
      OrthopedicSurgeryAnesthesiaCategory(
        categoryName: 'Total Hip Arthroplasty (THA)',
        items: [
          OrthopedicSurgeryAnesthesiaItem(
            title: "THA INDICATIONS AND ETIOLOGY",
            description:
                "Osteoarthritis (OA), Rheumatoid Arthritis (RA), and avascular necrosis (AVN) are the most common surgical reasons for THA.",
            additionalInfo:
                "Surgery aims to increase the mobility and quality of life of the patient.",
          ),
          OrthopedicSurgeryAnesthesiaItem(
            title: "AIRWAY RISKS IN RA (RHEUMATOID ARTHRITIS) PATIENTS",
            description:
                "Due to vertebral and temporomandibular joint involvement, the risk of difficult intubation and airway obstruction is high.",
            subtitle:
                "Head-neck movements should be restricted and in-line stabilization should be provided in the presence of atlantoaxial instability",
            additionalInfo:
                "Stomach bleeding and platelet dysfunction should also be considered in those using rheumatoid drugs.",
          ),
          OrthopedicSurgeryAnesthesiaItem(
            title: "COMPLICATIONS THAT CAN DEVELOP DURING THA",
            description:
                "Bone cement syndrome (BCIS), massive bleeding, and venous thromboembolism (VTE) are the biggest risks of the operation.",
            subtitle:
                "Invasive arterial monitoring should be applied when necessary",
            additionalInfo:
                "Cell saver systems are useful in cases with major bleeding.",
          ),
          OrthopedicSurgeryAnesthesiaItem(
            title: "REVISION SURGERY AND BILATERAL APPLICATIONS",
            description:
                "Regional techniques provide less bleeding in revisions; in bilateral cases, the second should be postponed if there is instability in the first surgery.",
            additionalInfo:
                "Bilateral surgery doubles the embolic and inflammatory load.",
          ),
        ],
      ),
      OrthopedicSurgeryAnesthesiaCategory(
        categoryName: 'Other Orthopedic Procedures',
        items: [
          OrthopedicSurgeryAnesthesiaItem(
            title: "HIP DISLOCATION REDUCTION AND MUSCLE RELAXATION",
            description:
                "Short-term general anesthesia and Succinylcholine support may be required to resolve sudden and severe muscle spasm.",
            additionalInfo:
                "Analgesia need usually decreases dramatically after reduction.",
          ),
          OrthopedicSurgeryAnesthesiaItem(
            title: "KNEE ARTHROSCOPY AND PATIENT PROFILE",
            description:
                "Although usually applied to a young and athlete population, it can also be performed for diagnostic purposes in the elderly.",
            subtitle:
                "Tourniquet application is standard for clarity of the surgical field",
            additionalInfo:
                "Although it is a short-term surgery, postoperative pain can be marked.",
          ),
          OrthopedicSurgeryAnesthesiaItem(
            title: "ANESTHESIA AND DISCHARGE IN KNEE ARTHROSCOPY",
            description:
                "There is no marked superiority between general anesthesia and regional techniques; however, RA can delay discharge in outpatient surgery.",
            additionalInfo:
                "Patients are not allowed to stand up until the motor block is resolved.",
          ),
          OrthopedicSurgeryAnesthesiaItem(
            title: "POSTOPERATIVE ANALGESIA AFTER ARTHROSCOPY",
            description:
                "Intraarticular local anesthetic injection provides short-term comfort; while NSAIDs and nerve blocks (femoral etc.) are long-term solutions.",
            additionalInfo:
                "Opioid doses should be kept at a minimum to prevent side effects.",
          ),
          OrthopedicSurgeryAnesthesiaItem(
            title: "TOTAL KNEE REPLACEMENT (TKR) AND COMORBIDITIES",
            description:
                "Since patients undergoing TKR are usually in advanced age, they carry systemic risks similar to THA.",
            additionalInfo:
                "Postoperative early mobilization in knee surgery is essential to prevent DVT.",
          ),
          OrthopedicSurgeryAnesthesiaItem(
            title: "BLOOD LOSS AND BCIS RISK IN TKR",
            description:
                "Blood loss is reduced due to tourniquet use; systemic embolic events (BCIS) are rarer compared to hip surgery.",
            additionalInfo:
                "Bleeding control should be done meticulously when the tourniquet is opened.",
          ),
          OrthopedicSurgeryAnesthesiaItem(
            title: "POSTOPERATIVE ANALGESIA AND PERINEURAL CATHETERS",
            description:
                "Epidural analgesia is ideal; however, femoral perineural catheters both cause fewer side effects and provide faster discharge.",
            additionalInfo:
                "Special nursing follow-up is required for the 'fall risk' of patients under block.",
          ),
          OrthopedicSurgeryAnesthesiaItem(
            title: "BEACH CHAIR POSITION AND PERFUSION IN SHOULDER SURGERY",
            description:
                "Since the beach-chair position can reduce brain perfusion, arterial pressure must be measured at the level of the external meatus (ear canal).",
            additionalInfo:
                "The risk of syncope or cerebral ischemia developing after position is critical.",
          ),
          OrthopedicSurgeryAnesthesiaItem(
            title: "INTERSCALENE BLOCK IN SHOULDER SURGERY",
            description:
                "Interscalene block, the gold standard in shoulder surgeries, is excellent for both surgical anesthesia and postoperative pain control.",
            subtitle:
                "It should not be forgotten that the use of intraarticular Bupivacaine carries a risk of cartilage damage (chondrolysis)",
            additionalInfo:
                "Caution should be exercised in patients with limited respiratory reserve in terms of phrenic nerve paralysis (diaphragm paralysis) side effect.",
          ),
          OrthopedicSurgeryAnesthesiaItem(
            title: "IVRA (BIER BLOCK) IN DISTAL UPPER EXTREMITY",
            description:
                "IVRA can be applied in hand and forearm surgeries; however, the safety of the tourniquet used is of vital importance.",
            additionalInfo:
                "Early opening of the tourniquet leads to local anesthetic toxicity (LAST).",
          ),
          OrthopedicSurgeryAnesthesiaItem(
            title: "BRACHIAL PLEXUS BLOCK AND TOURNIQUET CONTROL",
            description:
                "While brachial plexus block is preferred in distal surgeries, the block level should cover the tourniquet level so that the patient does not feel tourniquet pain.",
            additionalInfo:
                "Whether the tourniquet will be inflated before or after the block should be planned according to the surgical procedure.",
          ),
        ],
      ),
    ];
  }
}
