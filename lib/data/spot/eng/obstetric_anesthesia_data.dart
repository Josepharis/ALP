import 'package:flutter/material.dart';

class ObstetricAnesthesiaItem {
  final String title;
  final String description;
  final String? subtitle;
  final String? additionalInfo;

  ObstetricAnesthesiaItem({
    required this.title,
    required this.description,
    this.subtitle,
    this.additionalInfo,
  });
}

class ObstetricAnesthesiaCategory {
  final String categoryName;
  final List<ObstetricAnesthesiaItem> items;

  ObstetricAnesthesiaCategory({
    required this.categoryName,
    required this.items,
  });
}

class ObstetricAnesthesiaData {
  static List<ObstetricAnesthesiaCategory> getObstetricAnesthesiaData(BuildContext context) {
    return [
      ObstetricAnesthesiaCategory(
        categoryName: 'General Approach to the Obstetric Patient',
        items: [
          ObstetricAnesthesiaItem(
            title: 'Full Stomach Consideration',
            description: 'All pregnant patients are considered to have a "full stomach."',
          ),
          ObstetricAnesthesiaItem(
            title: 'Aspiration Prophylaxis',
            description: 'Non-particulate antacid (15–30 mL every 30 min)',
            subtitle: 'High risk → H₂ blocker (ranitidine 50 mg IV) + metoclopramide (10 mg IV)',
          ),
          ObstetricAnesthesiaItem(
            title: 'Position',
            description: 'Patient tilted to the left lateral to prevent aortocaval compression',
          ),
        ],
      ),
      ObstetricAnesthesiaCategory(
        categoryName: 'Anesthesia for Vaginal Delivery',
        items: [
          ObstetricAnesthesiaItem(
            title: 'Pain Pathways',
            description: 'Stage 1: T10–L1 (uterus, cervix)',
            subtitle: 'Stage 2: S2–S4 (perineal pain, pudendal nerve)',
          ),
          ObstetricAnesthesiaItem(
            title: 'Non-pharmacological Methods',
            description: 'Lamaze (most popular): controlled breathing during contractions',
            subtitle: 'Others: Bradley, Dick-Read, Leboyer, Doula',
          ),
          ObstetricAnesthesiaItem(
            title: 'Parenteral Analgesia - Meperidine',
            description: '≤100 mg if ≥4 h before delivery',
          ),
          ObstetricAnesthesiaItem(
            title: 'Parenteral Analgesia - Fentanyl',
            description: '25–100 mcg → rapid, short-acting',
          ),
          ObstetricAnesthesiaItem(
            title: 'Parenteral Analgesia - Morphine',
            description: 'Not used (long-acting, neonatal depression risk)',
          ),
          ObstetricAnesthesiaItem(
            title: 'Parenteral Analgesia - Ketamine',
            description: '≤1 mg/kg safe; >1 mg/kg → low Apgar',
          ),
          ObstetricAnesthesiaItem(
            title: 'Parenteral Analgesia - NSAIDs',
            description: 'Contraindicated (delay ductus arteriosus closure)',
          ),
          ObstetricAnesthesiaItem(
            title: 'Parenteral Analgesia - Midazolam + Fentanyl',
            description: 'Midazolam (≤2 mg) + fentanyl (≤100 mcg) may be combined',
          ),
          ObstetricAnesthesiaItem(
            title: 'Pudendal Nerve Block',
            description: 'Via Koback or Iowa trumpet',
            subtitle: '1–1.5 cm below ischial spine → 10 mL 1–2% chloroprocaine',
          ),
          ObstetricAnesthesiaItem(
            title: 'Paracervical Block',
            description: 'Carries fetal bradycardia risk',
          ),
        ],
      ),
      ObstetricAnesthesiaCategory(
        categoryName: 'Regional Anesthesia Techniques',
        items: [
          ObstetricAnesthesiaItem(
            title: 'Opioid-only Spinal/Epidural',
            description: 'Indication: when sympathectomy from LA is not tolerated (aortic stenosis, Eisenmenger, PHT)',
          ),
          ObstetricAnesthesiaItem(
            title: 'Intrathecal',
            description: 'Morphine 0.1–0.5 mg (onset 45–60 min, lasts 4–6 h)',
            subtitle: 'Fentanyl 12.5 mcg or sufentanil 5 mcg may be added',
          ),
          ObstetricAnesthesiaItem(
            title: 'Epidural',
            description: 'Morphine ≤5 mg',
            subtitle: 'Fentanyl combination → rapid & long-lasting',
          ),
          ObstetricAnesthesiaItem(
            title: 'Epidural Analgesia - Technique',
            description: 'Midline (or paramedian), loss of resistance at ~5 cm',
            subtitle: 'Catheter: multi-orifice, advanced 4–6 cm',
          ),
          ObstetricAnesthesiaItem(
            title: 'Drug Combinations',
            description: 'Bupivacaine 0.0625–0.125% + fentanyl 2–3 mcg/mL',
            subtitle: 'Ropivacaine 0.1–0.2% + sufentanil 0.3–0.5 mcg/mL',
            additionalInfo: 'Test dose: 3 mL lidocaine + epinephrine',
          ),
          ObstetricAnesthesiaItem(
            title: 'Activation',
            description: '1st stage → 10 mL LA/opioid mix + 50–100 mcg fentanyl',
            subtitle: '2nd stage → 10–15 mL, given slowly',
          ),
          ObstetricAnesthesiaItem(
            title: 'Complications - Hypotension',
            description: 'Hydration + ephedrine 5–15 mg or phenylephrine 25–50 mcg',
          ),
          ObstetricAnesthesiaItem(
            title: 'Complications - Intravascular Injection',
            description: 'Prevent with fractional dosing',
          ),
          ObstetricAnesthesiaItem(
            title: 'Complications - Intrathecal Injection',
            description: 'Risk of high block, prepare for intubation',
          ),
          ObstetricAnesthesiaItem(
            title: 'Complications - PDPH',
            description: 'Bed rest, caffeine; resistant → blood patch (10–20 mL)',
          ),
        ],
      ),
      ObstetricAnesthesiaCategory(
        categoryName: 'Anesthesia for Cesarean Section',
        items: [
          ObstetricAnesthesiaItem(
            title: 'Regional (First Choice)',
            description: 'Target block: T4',
            subtitle: 'Preload: 1000–1500 mL RL',
            additionalInfo: 'Hypotension → ephedrine 5–10 mg',
          ),
          ObstetricAnesthesiaItem(
            title: 'Spinal',
            description: 'Bupivacaine preferred',
            subtitle: 'Morphine 0.1–0.3 mg → 24 h analgesia (risk of respiratory depression)',
          ),
          ObstetricAnesthesiaItem(
            title: 'Epidural',
            description: 'If block inadequate, ketamine 10–20 mg + midazolam 1–2 mg',
            subtitle: 'Postop: epidural morphine 5 mg → 24 h analgesia',
          ),
          ObstetricAnesthesiaItem(
            title: 'Combined Spinal-Epidural',
            description: 'Faster onset + longer duration',
          ),
          ObstetricAnesthesiaItem(
            title: 'General Anesthesia - Aspiration Prophylaxis',
            description: '30–45 min before → 30 mL sodium citrate',
            subtitle: '1–2 h before → ranitidine 50 mg IV or metoclopramide 10 mg',
            additionalInfo: 'Elective → omeprazole 40 mg night/morning before',
          ),
          ObstetricAnesthesiaItem(
            title: 'General Anesthesia - RSI',
            description: 'Propofol/ketamine + succinylcholine',
          ),
          ObstetricAnesthesiaItem(
            title: 'General Anesthesia - Maintenance',
            description: '50% N₂O + 0.75 MAC volatile',
          ),
          ObstetricAnesthesiaItem(
            title: 'After Delivery',
            description: 'Oxytocin 20–80 U in first liter',
            subtitle: 'If uterus fails to contract → opioids, stop volatile, methylergometrine/PGF₂α',
            additionalInfo: 'Extubation: when fully awake',
          ),
        ],
      ),
      ObstetricAnesthesiaCategory(
        categoryName: 'Anesthesia in Complicated Pregnancies',
        items: [
          ObstetricAnesthesiaItem(
            title: 'Cord Prolapse',
            description: 'If fetus viable → keep inside until C-section',
          ),
          ObstetricAnesthesiaItem(
            title: 'Breech',
            description: 'Epidural possible; if head trapped → GA',
          ),
          ObstetricAnesthesiaItem(
            title: 'Multiple Pregnancy',
            description: 'Epidural may be used; ↑ risk of hypotension',
          ),
          ObstetricAnesthesiaItem(
            title: 'Placenta Previa',
            description: 'If active bleeding/unstable → GA',
          ),
          ObstetricAnesthesiaItem(
            title: 'Abruption',
            description: 'Massive transfusion; coagulopathy (fibrinogen <150 mg/dL)',
          ),
          ObstetricAnesthesiaItem(
            title: 'Uterine Rupture',
            description: 'Epidural → sudden pain + hypotension',
          ),
          ObstetricAnesthesiaItem(
            title: 'Chorioamnionitis',
            description: 'Regional contraindicated if sepsis/coagulopathy',
          ),
          ObstetricAnesthesiaItem(
            title: 'Preterm Labor',
            description: 'Ketamine + ephedrine have tocolytic interaction',
          ),
          ObstetricAnesthesiaItem(
            title: 'Preeclampsia - Pathophysiology',
            description: 'TXA₂↑, endothelin↑, PGI₂↓',
          ),
          ObstetricAnesthesiaItem(
            title: 'Preeclampsia - Treatment',
            description: 'MgSO₄ + labetalol',
            subtitle: 'Therapeutic Mg: 4–6 mEq/L',
            additionalInfo: 'Epidural first choice if platelets >70,000 and stable',
          ),
          ObstetricAnesthesiaItem(
            title: 'Cardiac Disease',
            description: 'Aortic stenosis, Eisenmenger → cannot tolerate regional → opioid/pudendal/GA preferred',
          ),
          ObstetricAnesthesiaItem(
            title: 'Amniotic Fluid Embolism',
            description: 'Shock + DIC → emergency resuscitation + C-section',
          ),
          ObstetricAnesthesiaItem(
            title: 'Postpartum Hemorrhage',
            description: 'GA with uterine massage, placental removal, laceration repair',
          ),
        ],
      ),
      ObstetricAnesthesiaCategory(
        categoryName: 'Key Exam Spots',
        items: [
          ObstetricAnesthesiaItem(
            title: 'SUMMARY SPOT QUESTIONS',
            description: 'All pregnant patients = full stomach',
            subtitle: 'Stage 1 pain: T10–L1, Stage 2: S2–S4',
            additionalInfo: 'Meperidine ≤100 mg if ≥4 h before delivery\nEpidural target block: T4\nPreeclampsia: platelets >70,000 for epidural\nMgSO₄ therapeutic level: 4–6 mEq/L',
          ),
        ],
      ),
    ];
  }
}
