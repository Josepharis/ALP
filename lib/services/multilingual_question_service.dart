import 'package:flutter/material.dart';
// Türkçe soru dosyaları
import '../data/anesthesia_application_questions.dart' as tr;
import '../data/respiratory_system_questions.dart' as tr;
import '../data/cardiovascular_monitoring_questions.dart' as tr;
import '../data/operating_room_environment_questions.dart' as tr;
import '../data/anesthesia_workstation_questions.dart' as tr;
import '../data/non_cardiovascular_monitoring_questions.dart' as tr;
import '../data/pharmacological_principles_questions.dart' as tr;
import '../data/inhalation_anesthetics_questions.dart' as tr;
import '../data/intravenous_anesthetics_questions.dart' as tr;
import '../data/analgesic_agents_questions.dart' as tr;
import '../data/neuromuscular_blocking_agents_questions.dart' as tr;
import '../data/cholinesterase_inhibitors_questions.dart' as tr;
import '../data/anticholinergic_drugs_questions.dart' as tr;
import '../data/adrenergic_drugs_questions.dart' as tr;
import '../data/hypotensive_agents_questions.dart' as tr;
import '../data/local_anesthetics_questions.dart' as tr;
import '../data/auxiliary_drugs_questions.dart' as tr;
import '../data/airway_management_questions.dart' as tr;
import '../data/cardiovascular_physiology_questions.dart' as tr;
import '../data/cardiovascular_surgery_questions.dart' as tr;
import '../data/respiratory_diseases_questions.dart' as tr;
import '../data/respiratory_physiology_questions.dart' as tr;
import '../data/thoracic_surgery_anesthesia_questions.dart' as tr;
import '../data/neurophysiology_anesthesia_questions.dart' as tr;
import '../data/neurosurgery_anesthesia_questions.dart' as tr;
import '../data/neurological_psychiatric_anesthesia_questions.dart' as tr;
import '../data/neuromuscular_diseases_anesthesia_questions.dart' as tr;
import '../data/renal_physiology_anesthesia_questions.dart' as tr;
import '../data/renal_disease_anesthesia_questions.dart' as tr;
import '../data/genitourinary_anesthesia_questions.dart' as tr;
import '../data/hepatic_physiology_anesthesia_questions.dart' as tr;
import '../data/liver_disease_anesthesia_questions.dart' as tr;

import '../data/geriatric_anesthesia_questions.dart' as tr;
import '../data/pediatric_anesthesia_questions.dart' as tr;
import '../data/obstetric_anesthesia_questions.dart' as tr;
import '../data/maternal_fetal_physiology_anesthesia_questions.dart' as tr;
import '../data/ophthalmic_anesthesia_questions.dart' as tr;
import '../data/orthopedic_anesthesia_questions.dart' as tr;
import '../data/otolaryngology_head_neck_surgery_questions.dart' as tr;
import '../data/outpatient_anesthesia_questions.dart' as tr;
import '../data/trauma_emergency_anesthesia_questions.dart' as tr;
import '../data/cardiovascular_disease_anesthesia_questions.dart' as tr;
import '../data/acid_base_management_questions.dart' as tr;
import '../data/fluid_electrolyte_imbalance_management_questions.dart' as tr;
import '../data/fluid_management_blood_products_questions.dart' as tr;
import '../data/coagulation_anticoagulant_questions.dart' as tr;
import '../data/thermoregulation_hypothermia_malignant_hyperthermia_questions.dart' as tr;
import '../data/safety_quality_performance_improvement_questions.dart' as tr;
import '../data/postoperative_care_icu_ventilation_questions.dart' as tr;
import '../data/postoperative_care_mechanical_ventilation_questions.dart' as tr;
import '../data/postanesthetic_care_questions.dart' as tr;
import '../data/peripheral_nerve_blocks_questions.dart' as tr;
import '../data/spinal_epidural_caudal_blocks_questions.dart' as tr;
import '../data/chronic_pain_treatment_questions.dart' as tr;
import '../data/pain_management_questions.dart' as tr;
import '../data/enhanced_recovery_protocols_questions.dart' as tr;
import '../data/intensive_care_problems_questions.dart' as tr;
import '../data/cardiopulmonary_resuscitation_questions.dart' as tr;
import '../data/erc_2021_guidelines_questions.dart' as tr;
import '../data/anesthesia_complications_questions.dart' as tr;
import '../data/sepsis_ards_questions.dart' as tr;

// İngilizce soru dosyaları (sadece mevcut olanlar)
import '../data/english/anesthesia_history_questions.dart' as en;
import '../data/english/cardiovascular_monitoring_questions.dart' as en;
import '../data/english/operating_room_environment_questions.dart' as en;
import '../data/english/anesthesia_workstation_questions.dart' as en;
import '../data/english/noncardiovascular_monitoring_questions.dart' as en;
import '../data/english/pharmacological_principles_questions.dart' as en;
import '../data/english/inhalation_anesthetics_questions.dart' as en;
import '../data/english/intravenous_anesthetics_questions.dart' as en;
import '../data/english/analgesic_agents_questions.dart' as en;
import '../data/english/neuromuscular_blocking_agents_questions.dart' as en;
import '../data/english/cholinesterase_inhibitors_antagonists_questions.dart' as en;
import '../data/english/anticholinergic_drugs_questions.dart' as en;
import '../data/english/adrenergic_agonists_antagonists_questions.dart' as en;
import '../data/english/hypotensive_agents_questions.dart' as en;
import '../data/english/local_anesthetics_questions.dart' as en;
import '../data/english/adjuncts_to_anesthesia_questions.dart' as en;
import '../data/english/airway_management_questions.dart' as en;
import '../data/english/cardiovascular_physiology_anesthesia_questions.dart' as en;
import '../data/english/anesthesia_cardiovascular_surgery_questions.dart' as en;
import '../data/english/anesthesia_respiratory_disease_questions.dart' as en;
import '../data/english/respiratory_physiology_anesthesia_questions.dart' as en;
import '../data/english/anesthesia_thoracic_surgery_questions.dart' as en;
import '../data/english/neurophysiology_anesthesia_questions.dart' as en;
import '../data/english/anesthesia_neurosurgery_questions.dart' as en;
import '../data/english/anesthesia_neurological_psychiatric_diseases_questions.dart' as en;
import '../data/english/anesthesia_neuromuscular_disease_questions.dart' as en;
import '../data/english/kidney_physiology_anesthesia_questions.dart' as en;
import '../data/english/anesthesia_kidney_disease_questions.dart' as en;
import '../data/english/anesthesia_genitourinary_surgery_questions.dart' as en;
import '../data/english/hepatic_physiology_anesthesia_questions.dart' as en;
import '../data/english/anesthesia_liver_disease_questions.dart' as en;
import '../data/english/anesthesia_endocrine_disease_questions.dart' as en;
import '../data/english/geriatric_anesthesia_questions.dart' as en;
import '../data/english/pediatric_anesthesia_questions.dart' as en;
import '../data/english/obstetric_anesthesia_questions.dart' as en;
import '../data/english/maternal_fetal_physiology_anesthesia_questions.dart' as en;
import '../data/english/anesthesia_ophthalmic_surgery_questions.dart' as en;
import '../data/english/anesthesia_orthopedic_surgery_questions.dart' as en;
import '../data/english/anesthesia_otolaryngology_head_neck_surgery_questions.dart' as en;
import '../data/english/ambulatory_non_operating_room_anesthesia_questions.dart' as en;
import '../data/english/anesthesia_trauma_emergency_surgery_questions.dart' as en;
import '../data/english/anesthesia_cardiovascular_disease_questions.dart' as en;
import '../data/english/acid_base_management_questions.dart' as en;
import '../data/english/fluid_electrolyte_disturbances_questions.dart' as en;
import '../data/english/fluid_management_blood_component_therapy_questions.dart' as en;
import '../data/english/thermoregulation_hypothermia_malignant_hyperthermia_questions.dart' as en;
import '../data/english/safety_quality_performance_improvement_questions.dart' as en;
import '../data/english/inhalation_therapy_mechanical_ventilation_pacu_icu_questions.dart' as en;
import '../data/english/postanesthesia_care_questions.dart' as en;
import '../data/english/peripheral_nerve_blocks_questions.dart' as en;
import '../data/english/spinal_epidural_caudal_blocks_questions.dart' as en;
import '../data/english/chronic_pain_management_questions.dart' as en;
import '../data/english/algology_questions.dart' as en;
import '../data/english/enhanced_recovery_protocols_questions.dart' as en;
import '../data/english/common_clinical_concerns_critical_care_questions.dart' as en;
import '../data/english/cardiopulmonary_resuscitation_questions.dart' as en;
import '../data/english/anesthetic_complications_questions.dart' as en;
import '../data/english/sepsis_ards_critical_care_questions.dart' as en;

class MultilingualQuestionService {
  static const String _englishLanguageCode = 'en';

  /// Dil seçimine göre doğru soru dosyalarını döndürür
  static List<Map<String, dynamic>> getQuizCategories(String languageCode) {
    if (languageCode == _englishLanguageCode) {
      return _getEnglishQuizCategories();
    } else {
      return _getTurkishQuizCategories();
    }
  }

  /// Türkçe quiz kategorileri
  static List<Map<String, dynamic>> _getTurkishQuizCategories() {
    return [
      {
        'title': 'Anestezi Uygulaması',
        'icon': Icons.medical_information,
        'questions': tr.anesthesiaApplicationQuestions,
        'color': Colors.orange.shade700,
      },
      {
        'title': 'Ameliyathane Ortamı',
        'icon': Icons.local_hospital,
        'questions': tr.operatingRoomEnvironmentQuestions,
        'color': Colors.deepPurple.shade700,
      },
      {
        'title': 'Solunum Sistemleri',
        'icon': Icons.air,
        'questions': tr.respiratorySystemQuestions,
        'color': Colors.teal.shade700,
      },
      {
        'title': 'Anestezi İş İstasyonu',
        'icon': Icons.settings,
        'questions': tr.anesthesiaWorkstationQuestions,
        'color': Colors.indigo.shade700,
      },
      {
        'title': 'Kardiyovasküler Monitörizasyon',
        'icon': Icons.monitor_heart,
        'questions': tr.cardiovascularMonitoringQuestions,
        'color': Colors.red.shade700,
      },
      {
        'title': 'Kardiyovasküler Dışı Monitörizasyon',
        'icon': Icons.sensors,
        'questions': tr.nonCardiovascularMonitoringQuestions,
        'color': Colors.orange.shade700,
      },
      {
        'title': 'Farmakolojik Prensipler',
        'icon': Icons.science,
        'questions': tr.pharmacologicalPrinciplesQuestions,
        'color': Colors.lightGreen.shade700,
      },
      {
        'title': 'İnhalasyon Anestezikleri',
        'icon': Icons.air_rounded,
        'questions': tr.inhalationAnestheticsQuestions,
        'color': Colors.teal.shade700,
      },
      {
        'title': 'İntravenöz Anestezikler',
        'icon': Icons.local_hospital_outlined,
        'questions': tr.intravenousAnestheticsQuestions,
        'color': Colors.indigo.shade700,
      },
      {
        'title': 'Analjezik Ajanlar',
        'icon': Icons.healing,
        'questions': tr.analgesicAgentsQuestions,
        'color': Colors.brown.shade700,
      },
      {
        'title': 'Nöromüsküler Blokaj Ajanları',
        'icon': Icons.accessibility_new,
        'questions': tr.neuromuscularBlockingAgentsQuestions,
        'color': Colors.blueGrey.shade700,
      },
      {
        'title': 'Kolinesteraz İnhibitörleri',
        'icon': Icons.science_outlined,
        'questions': tr.cholinesteraseInhibitorsQuestions,
        'color': Colors.deepPurple.shade700,
      },
      {
        'title': 'Antikolinerjik İlaçlar',
        'icon': Icons.medication_liquid,
        'questions': tr.anticholinergicDrugsQuestions,
        'color': Colors.lime.shade700,
      },
      {
        'title': 'Adrenerjik Agonistler ve Antagonistler',
        'icon': Icons.medication_outlined,
        'questions': tr.adrenergicDrugsQuestions,
        'color': Colors.amber.shade700,
      },
      {
        'title': 'Hipotansif Ajanlar',
        'icon': Icons.trending_down,
        'questions': tr.hypotensiveAgentsQuestions,
        'color': Colors.red.shade700,
      },
      {
        'title': 'Lokal Anestezikler',
        'icon': Icons.pin_drop,
        'questions': tr.localAnestheticsQuestions,
        'color': Colors.green.shade700,
      },
      {
        'title': 'Anestezide Yardımcı İlaçlar',
        'icon': Icons.medication_liquid_outlined,
        'questions': tr.auxiliaryDrugsQuestions,
        'color': Colors.orange.shade700,
      },
      {
        'title': 'Havayolu Yönetimi',
        'icon': Icons.masks,
        'questions': tr.airwayManagementQuestions,
        'color': Colors.amber.shade700,
      },
      {
        'title': 'Kardiyovasküler Fizyoloji ve Anestezi',
        'icon': Icons.favorite,
        'questions': tr.cardiovascularPhysiologyQuestions,
        'color': Colors.red.shade700,
      },
      {
        'title': 'Kardiyovasküler Hastalığı Olan Hastalarda Anestezi',
        'icon': Icons.favorite,
        'questions': tr.cardiovascularDiseaseAnesthesiaQuestions,
        'color': Colors.red.shade700,
      },
      {
        'title': 'Kardiyovasküler Cerrahide Anestezi',
        'icon': Icons.medical_services,
        'questions': tr.cardiovascularSurgeryQuestions,
        'color': Colors.purple.shade700,
      },
      {
        'title': 'Solunum Fizyolojisi ve Anestezi',
        'icon': Icons.air_rounded,
        'questions': tr.respiratoryPhysiologyQuestions,
        'color': Colors.teal.shade700,
      },
      {
        'title': 'Solunum Sistemi Hastalığı Olanlarda Anestezi',
        'icon': Icons.air_sharp,
        'questions': tr.respiratoryDiseasesQuestions,
        'color': Colors.cyan.shade700,
      },
      {
        'title': 'Toraks Cerrahisinde Anestezi',
        'icon': Icons.medical_services,
        'questions': tr.thoracicSurgeryAnesthesiaQuestions,
        'color': Colors.purple.shade700,
      },
      {
        'title': 'Nörofizyoloji ve Anestezi',
        'icon': Icons.psychology,
        'questions': tr.neurophysiologyAnesthesiaQuestions,
        'color': Colors.purple.shade700,
      },
      {
        'title': 'Nörocerrahide Anestezi',
        'icon': Icons.psychology,
        'questions': tr.neurosurgeryAnesthesiaQuestions,
        'color': Colors.deepPurple.shade700,
      },
      {
        'title': 'Nörolojik ve Psikiyatrik Hastalığı Olanlarda Anestezi',
        'icon': Icons.psychology_outlined,
        'questions': tr.neurologicalPsychiatricAnesthesiaQuestions,
        'color': Colors.deepOrange.shade700,
      },
      {
        'title': 'Nöromüsküler Hastalığı Olanlarda Anestezi',
        'icon': Icons.accessibility_new,
        'questions': tr.neuromuscularDiseasesAnesthesiaQuestions,
        'color': Colors.indigo.shade700,
      },
      {
        'title': 'Böbrek Fizyolojisi ve Anestezi',
        'icon': Icons.water_drop,
        'questions': tr.renalPhysiologyAnesthesiaQuestions,
        'color': Colors.blue.shade700,
      },
      {
        'title': 'Böbrek Hastalığı Olan Hastalarda Anestezi',
        'icon': Icons.water_drop,
        'questions': tr.renalDiseaseAnesthesiaQuestions,
        'color': Colors.blue.shade700,
      },
      {
        'title': 'Genitoüriner Cerrahide Anestezi',
        'icon': Icons.medical_services,
        'questions': tr.genitourinaryAnesthesiaQuestions,
        'color': Colors.blue.shade700,
      },
      {
        'title': 'Hepatik Fizyoloji ve Anestezi',
        'icon': Icons.medical_services,
        'questions': tr.hepaticPhysiologyAnesthesiaQuestions,
        'color': Colors.orange.shade700,
      },
      {
        'title': 'Karaciğer Hastalığı Olan Hastalarda Anestezi',
        'icon': Icons.medical_information,
        'questions': tr.liverDiseaseAnesthesiaQuestions,
        'color': Colors.orange.shade700,
      },

      {
        'title': 'Geriatrik Anestezi',
        'icon': Icons.elderly,
        'questions': tr.geriatricAnesthesiaQuestions,
        'color': Colors.grey.shade700,
      },
      {
        'title': 'Pediatrik Anestezi',
        'icon': Icons.child_care,
        'questions': tr.pediatricAnesthesiaQuestions,
        'color': Colors.lightBlue.shade700,
      },
      {
        'title': 'Obstetrik Anestezi',
        'icon': Icons.pregnant_woman,
        'questions': tr.obstetricAnesthesiaQuestions,
        'color': Colors.pink.shade700,
      },
      {
        'title': 'Maternal-Fetal Fizyoloji ve Anestezi',
        'icon': Icons.family_restroom,
        'questions': tr.maternalFetalPhysiologyAnesthesiaQuestions,
        'color': Colors.pink.shade700,
      },
      {
        'title': 'Oftalmik Anestezi',
        'icon': Icons.visibility,
        'questions': tr.ophthalmicAnesthesiaQuestions,
        'color': Colors.blue.shade700,
      },
      {
        'title': 'Ortopedik Anestezi',
        'icon': Icons.accessible,
        'questions': tr.orthopedicAnesthesiaQuestions,
        'color': Colors.brown.shade700,
      },
      {
        'title': 'KBB ve Baş-Boyun Cerrahisinde Anestezi',
        'icon': Icons.hearing,
        'questions': tr.otolaryngologyHeadNeckSurgeryQuestions,
        'color': Colors.blue.shade700,
      },
      {
        'title': 'Ayaktan Anestezi',
        'icon': Icons.directions_walk,
        'questions': tr.outpatientAnesthesiaQuestions,
        'color': Colors.green.shade700,
      },
      {
        'title': 'Travma ve Acil Cerrahide Anestezi',
        'icon': Icons.emergency,
        'questions': tr.traumaEmergencyAnesthesiaQuestions,
        'color': Colors.red.shade700,
      },
      {
        'title': 'Asit-Baz Yönetimi',
        'icon': Icons.science,
        'questions': tr.acidBaseManagementQuestions,
        'color': Colors.cyan.shade700,
      },
      {
        'title': 'Sıvı-Elektrolit Dengesizliği Yönetimi',
        'icon': Icons.water_drop,
        'questions': tr.fluidElectrolyteImbalanceManagementQuestions,
        'color': Colors.blue.shade700,
      },
      {
        'title': 'Sıvı Yönetimi ve Kan Ürünleri',
        'icon': Icons.bloodtype,
        'questions': tr.fluidManagementBloodProductsQuestions,
        'color': Colors.red.shade700,
      },
      {
        'title': 'Koagülasyon ve Antikoagülanlar',
        'icon': Icons.bloodtype,
        'questions': tr.coagulationAnticoagulantQuestions,
        'color': Colors.red.shade700,
      },
      {
        'title': 'Termoregülasyon, Hipotermi ve Malign Hipertermi',
        'icon': Icons.thermostat,
        'questions': tr.thermoregulationHypothermiaMalignantHyperthermiaQuestions,
        'color': Colors.orange.shade700,
      },
      {
        'title': 'Güvenlik, Kalite ve Performans İyileştirme',
        'icon': Icons.security,
        'questions': tr.safetyQualityPerformanceImprovementQuestions,
        'color': Colors.green.shade700,
      },
      {
        'title': 'Postoperatif Bakım - Yoğun Bakım Ventilasyonu',
        'icon': Icons.air,
        'questions': tr.postoperativeCareIcuVentilationQuestions,
        'color': Colors.teal.shade700,
      },
      {
        'title': 'Postoperatif Bakım - Mekanik Ventilasyon',
        'icon': Icons.air,
        'questions': tr.postoperativeCareMechanicalVentilationQuestions,
        'color': Colors.teal.shade700,
      },
      {
        'title': 'Postanestezik Bakım',
        'icon': Icons.medical_services,
        'questions': tr.postanestheticCareQuestions,
        'color': Colors.blue.shade700,
      },
      {
        'title': 'Periferik Sinir Blokları',
        'icon': Icons.psychology,
        'questions': tr.peripheralNerveBlocksQuestions,
        'color': Colors.purple.shade700,
      },
      {
        'title': 'Spinal, Epidural ve Kaudal Bloklar',
        'icon': Icons.psychology,
        'questions': tr.spinalEpiduralCaudalBlocksQuestions,
        'color': Colors.purple.shade700,
      },
      {
        'title': 'Kronik Ağrı Tedavisi',
        'icon': Icons.healing,
        'questions': tr.chronicPainTreatmentQuestions,
        'color': Colors.pink.shade700,
      },
      {
        'title': 'Ağrı Yönetimi',
        'icon': Icons.healing,
        'questions': tr.painManagementQuestions,
        'color': Colors.pink.shade700,
      },
      {
        'title': 'Gelişmiş İyileşme Protokolleri',
        'icon': Icons.trending_up,
        'questions': tr.enhancedRecoveryProtocolsQuestions,
        'color': Colors.green.shade700,
      },
      {
        'title': 'Yoğun Bakım Problemleri',
        'icon': Icons.medical_services,
        'questions': tr.intensiveCareProblemsQuestions,
        'color': Colors.red.shade700,
      },
      {
        'title': 'Kardiyopulmoner Resüsitasyon',
        'icon': Icons.favorite,
        'questions': tr.cardiopulmonaryResuscitationQuestions,
        'color': Colors.red.shade700,
      },
      {
        'title': 'ERC 2021 Kılavuzları',
        'icon': Icons.medical_services,
        'questions': tr.erc2021GuidelinesQuestions,
        'color': Colors.red.shade700,
      },
      {
        'title': 'Anestezi Komplikasyonları',
        'icon': Icons.warning,
        'questions': tr.anesthesiaComplicationsQuestions,
        'color': Colors.red.shade700,
      },
      {
        'title': 'Sepsis ve ARDS',
        'icon': Icons.medical_services,
        'questions': tr.sepsisArdsQuestions,
        'color': Colors.red.shade700,
      },
    ];
  }

  /// İngilizce quiz kategorileri
  static List<Map<String, dynamic>> _getEnglishQuizCategories() {
    return [
      {
        'title': 'Anesthesia Application',
        'icon': Icons.medical_information,
        'questions': en.anesthesiaHistoryQuestions,
        'color': Colors.orange.shade700,
      },
      {
        'title': 'Operating Room Environment',
        'icon': Icons.local_hospital,
        'questions': en.operatingRoomEnvironmentQuestions,
        'color': Colors.deepPurple.shade700,
      },
      {
        'title': 'Anesthesia Workstation',
        'icon': Icons.settings,
        'questions': en.anesthesiaWorkstationQuestions,
        'color': Colors.indigo.shade700,
      },
      {
        'title': 'Cardiovascular Monitoring',
        'icon': Icons.monitor_heart,
        'questions': en.cardiovascularMonitoringQuestions,
        'color': Colors.red.shade700,
      },
      {
        'title': 'Non-Cardiovascular Monitoring',
        'icon': Icons.sensors,
        'questions': en.noncardiovascularMonitoringQuestions,
        'color': Colors.orange.shade700,
      },
      {
        'title': 'Pharmacological Principles',
        'icon': Icons.science,
        'questions': en.pharmacologicalPrinciplesQuestions,
        'color': Colors.lightGreen.shade700,
      },
      {
        'title': 'Inhalation Anesthetics',
        'icon': Icons.air_rounded,
        'questions': en.inhalationAnestheticsQuestions,
        'color': Colors.teal.shade700,
      },
      {
        'title': 'Intravenous Anesthetics',
        'icon': Icons.local_hospital_outlined,
        'questions': en.intravenousAnestheticsQuestions,
        'color': Colors.indigo.shade700,
      },
      {
        'title': 'Analgesic Agents',
        'icon': Icons.healing,
        'questions': en.analgesicAgentsQuestions,
        'color': Colors.brown.shade700,
      },
      {
        'title': 'Neuromuscular Blocking Agents',
        'icon': Icons.accessibility_new,
        'questions': en.neuromuscularBlockingAgentsQuestions,
        'color': Colors.blueGrey.shade700,
      },
      {
        'title': 'Cholinesterase Inhibitors & Antagonists',
        'icon': Icons.science_outlined,
        'questions': en.cholinesteraseInhibitorsAntagonistsQuestions,
        'color': Colors.deepPurple.shade700,
      },
      {
        'title': 'Anticholinergic Drugs',
        'icon': Icons.medication_liquid,
        'questions': en.anticholinergicDrugsQuestions,
        'color': Colors.lime.shade700,
      },
      {
        'title': 'Adrenergic Agonists & Antagonists',
        'icon': Icons.medication_outlined,
        'questions': en.adrenergicAgonistsAntagonistsQuestions,
        'color': Colors.amber.shade700,
      },
      {
        'title': 'Hypotensive Agents',
        'icon': Icons.trending_down,
        'questions': en.hypotensiveAgentsQuestions,
        'color': Colors.red.shade700,
      },
      {
        'title': 'Local Anesthetics',
        'icon': Icons.pin_drop,
        'questions': en.localAnestheticsQuestions,
        'color': Colors.green.shade700,
      },
      {
        'title': 'Adjuncts to Anesthesia',
        'icon': Icons.medication_liquid_outlined,
        'questions': en.adjunctsToAnesthesiaQuestions,
        'color': Colors.orange.shade700,
      },
      {
        'title': 'Airway Management',
        'icon': Icons.masks,
        'questions': en.airwayManagementQuestions,
        'color': Colors.amber.shade700,
      },
      {
        'title': 'Cardiovascular Physiology & Anesthesia',
        'icon': Icons.favorite,
        'questions': en.cardiovascularPhysiologyAnesthesiaQuestions,
        'color': Colors.red.shade700,
      },
      {
        'title': 'Anesthesia for Cardiovascular Disease',
        'icon': Icons.favorite,
        'questions': en.anesthesiaCardiovascularDiseaseQuestions,
        'color': Colors.red.shade700,
      },
      {
        'title': 'Anesthesia for Cardiovascular Surgery',
        'icon': Icons.medical_services,
        'questions': en.anesthesiaCardiovascularSurgeryQuestions,
        'color': Colors.purple.shade700,
      },
      {
        'title': 'Respiratory Physiology & Anesthesia',
        'icon': Icons.air_rounded,
        'questions': en.respiratoryPhysiologyAnesthesiaQuestions,
        'color': Colors.teal.shade700,
      },
      {
        'title': 'Anesthesia for Respiratory Disease',
        'icon': Icons.air_sharp,
        'questions': en.anesthesiaRespiratoryDiseaseQuestions,
        'color': Colors.cyan.shade700,
      },
      {
        'title': 'Anesthesia for Thoracic Surgery',
        'icon': Icons.medical_services,
        'questions': en.anesthesiaThoracicSurgeryQuestions,
        'color': Colors.purple.shade700,
      },
      {
        'title': 'Neurophysiology & Anesthesia',
        'icon': Icons.psychology,
        'questions': en.neurophysiologyAnesthesiaQuestions,
        'color': Colors.purple.shade700,
      },
      {
        'title': 'Anesthesia for Neurosurgery',
        'icon': Icons.psychology,
        'questions': en.anesthesiaNeurosurgeryQuestions,
        'color': Colors.deepPurple.shade700,
      },
      {
        'title': 'Anesthesia for Neurological & Psychiatric Diseases',
        'icon': Icons.psychology_outlined,
        'questions': en.anesthesiaNeurologicalPsychiatricDiseasesQuestions,
        'color': Colors.deepOrange.shade700,
      },
      {
        'title': 'Anesthesia for Neuromuscular Disease',
        'icon': Icons.accessibility_new,
        'questions': en.anesthesiaNeuromuscularDiseaseQuestions,
        'color': Colors.indigo.shade700,
      },
      {
        'title': 'Kidney Physiology & Anesthesia',
        'icon': Icons.water_drop,
        'questions': en.kidneyPhysiologyAnesthesiaQuestions,
        'color': Colors.blue.shade700,
      },
      {
        'title': 'Anesthesia for Kidney Disease',
        'icon': Icons.water_drop,
        'questions': en.anesthesiaKidneyDiseaseQuestions,
        'color': Colors.blue.shade700,
      },
      {
        'title': 'Anesthesia for Genitourinary Surgery',
        'icon': Icons.medical_services,
        'questions': en.anesthesiaGenitourinarySurgeryQuestions,
        'color': Colors.blue.shade700,
      },
      {
        'title': 'Hepatic Physiology & Anesthesia',
        'icon': Icons.medical_services,
        'questions': en.hepaticPhysiologyAnesthesiaQuestions,
        'color': Colors.orange.shade700,
      },
      {
        'title': 'Anesthesia for Liver Disease',
        'icon': Icons.medical_information,
        'questions': en.anesthesiaLiverDiseaseQuestions,
        'color': Colors.orange.shade700,
      },
      {
        'title': 'Anesthesia for Endocrine Disease',
        'icon': Icons.medical_services,
        'questions': en.anesthesiaEndocrineDiseaseQuestions,
        'color': Colors.pink.shade700,
      },
      {
        'title': 'Geriatric Anesthesia',
        'icon': Icons.elderly,
        'questions': en.geriatricAnesthesiaQuestions,
        'color': Colors.grey.shade700,
      },
      {
        'title': 'Pediatric Anesthesia',
        'icon': Icons.child_care,
        'questions': en.pediatricAnesthesiaQuestions,
        'color': Colors.lightBlue.shade700,
      },
      {
        'title': 'Obstetric Anesthesia',
        'icon': Icons.pregnant_woman,
        'questions': en.obstetricAnesthesiaQuestions,
        'color': Colors.pink.shade700,
      },
      {
        'title': 'Maternal-Fetal Physiology & Anesthesia',
        'icon': Icons.family_restroom,
        'questions': en.maternalFetalPhysiologyAnesthesiaQuestions,
        'color': Colors.pink.shade700,
      },
      {
        'title': 'Anesthesia for Ophthalmic Surgery',
        'icon': Icons.visibility,
        'questions': en.anesthesiaOphthalmicSurgeryQuestions,
        'color': Colors.blue.shade700,
      },
      {
        'title': 'Anesthesia for Orthopedic Surgery',
        'icon': Icons.accessible,
        'questions': en.anesthesiaOrthopedicSurgeryQuestions,
        'color': Colors.brown.shade700,
      },
      {
        'title': 'Anesthesia for Otolaryngology & Head-Neck Surgery',
        'icon': Icons.hearing,
        'questions': en.anesthesiaOtolaryngologyHeadNeckSurgeryQuestions,
        'color': Colors.blue.shade700,
      },
      {
        'title': 'Ambulatory & Non-Operating Room Anesthesia',
        'icon': Icons.directions_walk,
        'questions': en.ambulatoryNonOperatingRoomAnesthesiaQuestions,
        'color': Colors.green.shade700,
      },
      {
        'title': 'Anesthesia for Trauma & Emergency Surgery',
        'icon': Icons.emergency,
        'questions': en.anesthesiaTraumaEmergencySurgeryQuestions,
        'color': Colors.red.shade700,
      },
      {
        'title': 'Acid-Base Management',
        'icon': Icons.science,
        'questions': en.acidBaseManagementQuestions,
        'color': Colors.cyan.shade700,
      },
      {
        'title': 'Fluid-Electrolyte Disturbances',
        'icon': Icons.water_drop,
        'questions': en.fluidElectrolyteDisturbancesQuestions,
        'color': Colors.blue.shade700,
      },
      {
        'title': 'Fluid Management & Blood Component Therapy',
        'icon': Icons.bloodtype,
        'questions': en.fluidManagementBloodComponentTherapyQuestions,
        'color': Colors.red.shade700,
      },
      {
        'title': 'Thermoregulation, Hypothermia & Malignant Hyperthermia',
        'icon': Icons.thermostat,
        'questions': en.thermoregulationHypothermiaMalignantHyperthermiaQuestions,
        'color': Colors.orange.shade700,
      },
      {
        'title': 'Safety, Quality & Performance Improvement',
        'icon': Icons.security,
        'questions': en.safetyQualityPerformanceImprovementQuestions,
        'color': Colors.green.shade700,
      },
      {
        'title': 'Inhalation Therapy, Mechanical Ventilation, PACU & ICU',
        'icon': Icons.air,
        'questions': en.inhalationTherapyMechanicalVentilationPacuIcuQuestions,
        'color': Colors.teal.shade700,
      },
      {
        'title': 'Postanesthesia Care',
        'icon': Icons.medical_services,
        'questions': en.postanesthesiaCareQuestions,
        'color': Colors.blue.shade700,
      },
      {
        'title': 'Peripheral Nerve Blocks',
        'icon': Icons.psychology,
        'questions': en.peripheralNerveBlocksQuestions,
        'color': Colors.purple.shade700,
      },
      {
        'title': 'Spinal, Epidural & Caudal Blocks',
        'icon': Icons.psychology,
        'questions': en.spinalEpiduralCaudalBlocksQuestions,
        'color': Colors.purple.shade700,
      },
      {
        'title': 'Chronic Pain Management',
        'icon': Icons.healing,
        'questions': en.chronicPainManagementQuestions,
        'color': Colors.pink.shade700,
      },
      {
        'title': 'Algology',
        'icon': Icons.healing,
        'questions': en.algologyQuestions,
        'color': Colors.pink.shade700,
      },
      {
        'title': 'Enhanced Recovery Protocols',
        'icon': Icons.trending_up,
        'questions': en.enhancedRecoveryProtocolsQuestions,
        'color': Colors.green.shade700,
      },
      {
        'title': 'Common Clinical Concerns - Critical Care',
        'icon': Icons.medical_services,
        'questions': en.commonClinicalConcernsCriticalCareQuestions,
        'color': Colors.red.shade700,
      },
      {
        'title': 'Cardiopulmonary Resuscitation',
        'icon': Icons.favorite,
        'questions': en.cardiopulmonaryResuscitationQuestions,
        'color': Colors.red.shade700,
      },
      {
        'title': 'Anesthetic Complications',
        'icon': Icons.warning,
        'questions': en.anestheticComplicationsQuestions,
        'color': Colors.red.shade700,
      },
      {
        'title': 'Sepsis & ARDS Critical Care',
        'icon': Icons.medical_services,
        'questions': en.sepsisArdsCriticalCareQuestions,
        'color': Colors.red.shade700,
      },
    ];
  }
}
