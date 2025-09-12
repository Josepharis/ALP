import 'dart:math';
import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:firebase_auth/firebase_auth.dart';
import '../models/question.dart';

// ============================================================================
// TÜRKÇE DATA IMPORTS - ANA DATA KLASÖRÜ (ALFABETİK SIRADA)
// ============================================================================
import '../data/acid_base_management_questions.dart';
import '../data/adrenergic_drugs_questions.dart';
import '../data/airway_management_questions.dart';
import '../data/algology_questions.dart';
import '../data/analgesic_agents_questions.dart';
import '../data/anesthesia_application_questions.dart';
import '../data/anesthesia_complications_questions.dart';
import '../data/anesthesia_workstation_questions.dart';
import '../data/anticholinergic_drugs_questions.dart';
import '../data/auxiliary_drugs_questions.dart';
import '../data/cardiopulmonary_resuscitation_questions.dart';
import '../data/cardiovascular_disease_anesthesia_questions.dart';
import '../data/cardiovascular_monitoring_questions.dart';
import '../data/cardiovascular_physiology_questions.dart';
import '../data/cardiovascular_surgery_questions.dart';
import '../data/cholinesterase_inhibitors_questions.dart';
import '../data/chronic_pain_treatment_questions.dart';
import '../data/coagulation_anticoagulant_questions.dart';
import '../data/endocrine_diseases_anesthesia_questions.dart';
import '../data/enhanced_recovery_protocols_questions.dart';
import '../data/erc_2021_guidelines_questions.dart';
import '../data/fluid_electrolyte_imbalance_management_questions.dart';
import '../data/fluid_management_blood_products_questions.dart';
import '../data/genitourinary_anesthesia_questions.dart';
import '../data/geriatric_anesthesia_questions.dart';
import '../data/hepatic_physiology_anesthesia_questions.dart';
import '../data/hypotensive_agents_questions.dart';
import '../data/inhalation_anesthetics_questions.dart';
import '../data/intensive_care_problems_questions.dart';
import '../data/intravenous_anesthetics_questions.dart';
import '../data/liver_disease_anesthesia_questions.dart';
import '../data/local_anesthetics_questions.dart';
import '../data/maternal_fetal_physiology_anesthesia_questions.dart';
import '../data/neurological_psychiatric_anesthesia_questions.dart';
import '../data/neuromuscular_blocking_agents_questions.dart';
import '../data/neuromuscular_diseases_anesthesia_questions.dart';
import '../data/neurophysiology_anesthesia_questions.dart';
import '../data/neurosurgery_anesthesia_questions.dart';
import '../data/non_cardiovascular_monitoring_questions.dart';
import '../data/obstetric_anesthesia_questions.dart';
import '../data/operating_room_environment_questions.dart';
import '../data/ophthalmic_anesthesia_questions.dart';
import '../data/orthopedic_anesthesia_questions.dart';
import '../data/otolaryngology_head_neck_surgery_questions.dart';
import '../data/outpatient_anesthesia_questions.dart';
import '../data/pain_management_questions.dart';
import '../data/pediatric_anesthesia_questions.dart';
import '../data/perioperative_intensive_care_nutrition_questions.dart';
import '../data/peripheral_nerve_blocks_questions.dart';
import '../data/pharmacological_principles_questions.dart';
import '../data/postanesthetic_care_questions.dart';
import '../data/postoperative_care_icu_ventilation_questions.dart';
import '../data/postoperative_care_mechanical_ventilation_questions.dart';
import '../data/preoperative_assessment_premedication_documentation_questions.dart';
import '../data/renal_disease_anesthesia_questions.dart';
import '../data/renal_physiology_anesthesia_questions.dart';
import '../data/respiratory_diseases_questions.dart';
import '../data/respiratory_physiology_questions.dart';
import '../data/respiratory_system_questions.dart';
import '../data/safety_quality_performance_improvement_questions.dart';
import '../data/sepsis_ards_questions.dart';
import '../data/spinal_epidural_caudal_blocks_questions.dart';
import '../data/thermoregulation_hypothermia_malignant_hyperthermia_questions.dart';
import '../data/thoracic_surgery_anesthesia_questions.dart';
import '../data/trauma_emergency_anesthesia_questions.dart';

// ============================================================================
// İNGİLİZCE DATA IMPORTS - ENGLISH KLASÖRÜ (ALFABETİK SIRADA)
// ============================================================================
import '../data/english/acid_base_management_questions.dart' as english_acid_base;
import '../data/english/adjuncts_to_anesthesia_questions.dart' as english_adjuncts;
import '../data/english/adrenergic_agonists_antagonists_questions.dart' as english_adrenergic;
import '../data/english/airway_management_questions.dart' as english_airway;
import '../data/english/algology_questions.dart' as english_algology;
import '../data/english/ambulatory_non_operating_room_anesthesia_questions.dart' as english_ambulatory;
import '../data/english/analgesic_agents_questions.dart' as english_analgesic;
import '../data/english/anesthesia_cardiovascular_disease_questions.dart' as english_cardiovascular_disease;
import '../data/english/anesthesia_cardiovascular_surgery_questions.dart' as english_cardiovascular_surgery;
import '../data/english/anesthesia_endocrine_disease_questions.dart' as english_endocrine;
import '../data/english/anesthesia_genitourinary_surgery_questions.dart' as english_genitourinary;
import '../data/english/anesthesia_history_questions.dart' as english_history;
import '../data/english/anesthesia_kidney_disease_questions.dart' as english_kidney;
import '../data/english/anesthesia_liver_disease_questions.dart' as english_liver;
import '../data/english/anesthesia_neurological_psychiatric_diseases_questions.dart' as english_neurological;
import '../data/english/anesthesia_neuromuscular_disease_questions.dart' as english_neuromuscular;
import '../data/english/anesthesia_neurosurgery_questions.dart' as english_neurosurgery;
import '../data/english/anesthesia_ophthalmic_surgery_questions.dart' as english_ophthalmic;
import '../data/english/anesthesia_orthopedic_surgery_questions.dart' as english_orthopedic;
import '../data/english/anesthesia_otolaryngology_head_neck_surgery_questions.dart' as english_otolaryngology;
import '../data/english/anesthesia_respiratory_disease_questions.dart' as english_respiratory_disease;
import '../data/english/anesthesia_thoracic_surgery_questions.dart' as english_thoracic;
import '../data/english/anesthesia_trauma_emergency_surgery_questions.dart' as english_trauma;
import '../data/english/anesthesia_workstation_questions.dart' as english_workstation;
import '../data/english/anesthetic_complications_questions.dart' as english_complications;
import '../data/english/anticholinergic_drugs_questions.dart' as english_anticholinergic;
import '../data/english/breathing_systems_questions.dart' as english_breathing;
import '../data/english/cardiopulmonary_resuscitation_questions.dart' as english_cpr;
import '../data/english/cardiovascular_monitoring_questions.dart' as english_cardiovascular_monitoring;
import '../data/english/cardiovascular_physiology_anesthesia_questions.dart' as english_cardiovascular_physiology;
import '../data/english/cholinesterase_inhibitors_antagonists_questions.dart' as english_cholinesterase;
import '../data/english/chronic_pain_management_questions.dart' as english_chronic_pain;
import '../data/english/coagulation_anticoagulant_therapy_questions.dart' as english_coagulation;
import '../data/english/common_clinical_concerns_critical_care_questions.dart' as english_critical_care;
import '../data/english/enhanced_recovery_protocols_questions.dart' as english_enhanced;
import '../data/english/erc_2021_guidelines_questions.dart' as english_erc;
import '../data/english/fluid_electrolyte_disturbances_questions.dart' as english_fluid;
import '../data/english/fluid_management_blood_component_therapy_questions.dart' as english_fluid_management;
import '../data/english/geriatric_anesthesia_questions.dart' as english_geriatric;
import '../data/english/hepatic_physiology_anesthesia_questions.dart' as english_hepatic;
import '../data/english/hypotensive_agents_questions.dart' as english_hypotensive;
import '../data/english/inhalation_anesthetics_questions.dart' as english_inhalation;
import '../data/english/inhalation_therapy_mechanical_ventilation_pacu_icu_questions.dart' as english_inhalation_therapy;
import '../data/english/intravenous_anesthetics_questions.dart' as english_intravenous;
import '../data/english/kidney_physiology_anesthesia_questions.dart' as english_kidney_physiology;
import '../data/english/local_anesthetics_questions.dart' as english_local;
import '../data/english/maternal_fetal_physiology_anesthesia_questions.dart' as english_maternal;
import '../data/english/neuromuscular_blocking_agents_questions.dart' as english_neuromuscular_blocking;
import '../data/english/neurophysiology_anesthesia_questions.dart' as english_neurophysiology;
import '../data/english/noncardiovascular_monitoring_questions.dart' as english_noncardiovascular;
import '../data/english/nutrition_perioperative_critical_care_questions.dart' as english_nutrition;
import '../data/english/obstetric_anesthesia_questions.dart' as english_obstetric;
import '../data/english/operating_room_environment_questions.dart' as english_operating_room;
import '../data/english/pediatric_anesthesia_questions.dart' as english_pediatric;
import '../data/english/peripheral_nerve_blocks_questions.dart' as english_peripheral;
import '../data/english/pharmacological_principles_questions.dart' as english_pharmacological;
import '../data/english/postanesthesia_care_questions.dart' as english_postanesthesia;
import '../data/english/preoperative_assessment_premedication_documentation_questions.dart' as english_preoperative;
import '../data/english/respiratory_physiology_anesthesia_questions.dart' as english_respiratory_physiology;
import '../data/english/safety_quality_performance_improvement_questions.dart' as english_safety;
import '../data/english/sepsis_ards_critical_care_questions.dart' as english_sepsis;
import '../data/english/spinal_epidural_caudal_blocks_questions.dart' as english_spinal;
import '../data/english/thermoregulation_hypothermia_malignant_hyperthermia_questions.dart' as english_thermoregulation;



class OrganizedDataService {
  final FirebaseFirestore _firestore = FirebaseFirestore.instance;
  final FirebaseAuth _auth = FirebaseAuth.instance;

  // Tüm soruları ve kategorileri toplu sil (Batch limit aşımı ile)
  Future<void> clearAllData() async {
    try {
      print('🗑️ Starting bulk delete of all data...');
      
      // 1. Tüm quiz kategorilerini sil
      await _deleteCollectionInBatches('quizCategories');
      
      // 2. Tüm soru koleksiyonlarını sil
      await _deleteCollectionInBatches('questions');
      
      // 3. Kısa bekleme
      await Future.delayed(const Duration(seconds: 1));
      
      print('🎉 All data cleared successfully!');
    } catch (e) {
      print('❌ Error clearing data: $e');
      rethrow;
    }
  }

  // Koleksiyonu batch'ler halinde sil (500 document limit aşımı)
  Future<void> _deleteCollectionInBatches(String collectionName) async {
    const int batchSize = 400; // 500'den az güvenli limit
    bool hasMore = true;
    int totalDeleted = 0;
    
    while (hasMore) {
      final snapshot = await _firestore
          .collection(collectionName)
          .limit(batchSize)
          .get();
      
      if (snapshot.docs.isEmpty) {
        hasMore = false;
        break;
      }
      
      print('Deleting ${snapshot.docs.length} documents from $collectionName...');
      
      final batch = _firestore.batch();
      for (final doc in snapshot.docs) {
        batch.delete(doc.reference);
      }
      
      await batch.commit();
      totalDeleted += snapshot.docs.length;
      print('✅ Deleted $totalDeleted documents from $collectionName');
      
      // Eğer batch size'dan az document varsa, daha fazla yok
      if (snapshot.docs.length < batchSize) {
        hasMore = false;
      }
      
      // Rate limiting için kısa bekleme
      await Future.delayed(const Duration(milliseconds: 100));
    }
    
    print('🎯 Total deleted from $collectionName: $totalDeleted documents');
  }

  // Quiz kategorilerini organize şekilde aktarma
  Future<Map<String, dynamic>> migrateOrganizedQuestions({bool cleanReload = false}) async {
    try {
      int totalMigrated = 0;
      int totalErrors = 0;
      List<String> migratedCategories = [];

      // Quiz kategorileri ve dosya adları
      final quizCategories = [
        {
          'displayName': 'Anestezi Uygulamaları',
          'collectionName': 'anestezi-uygulamalari',
          'questions': anesthesiaApplicationQuestions,
        },
        {
          'displayName': 'Solunum Sistemi',
          'collectionName': 'solunum-sistemi',
          'questions': respiratorySystemQuestions,
        },
        {
          'displayName': 'Kardiyovasküler Monitoring',
          'collectionName': 'kardiyovaskuler-monitoring',
          'questions': cardiovascularMonitoringQuestions,
        },
        {
          'displayName': 'Farmakolojik Prensipler',
          'collectionName': 'farmakolojik-prensipler',
          'questions': pharmacologicalPrinciplesQuestions,
        },
        {
          'displayName': 'Ameliyathane Ortamı',
          'collectionName': 'ameliyathane-ortami',
          'questions': operatingRoomEnvironmentQuestions,
        },
        {
          'displayName': 'Non-Kardiyovasküler Monitoring',
          'collectionName': 'non-kardiyovaskuler-monitoring',
          'questions': nonCardiovascularMonitoringQuestions,
        },
        {
          'displayName': 'Anestezi İstasyonu',
          'collectionName': 'anestezi-istasyonu',
          'questions': anesthesiaWorkstationQuestions,
        },
       
        {
          'displayName': 'Yardımcı İlaçlar',
          'collectionName': 'yardimci-ilaclar',
          'questions': auxiliaryDrugsQuestions,
        },
        {
          'displayName': 'Lokal Anestezikler',
          'collectionName': 'lokal-anestezikler',
          'questions': localAnestheticsQuestions,
        },
        {
          'displayName': 'Antikolinerjikler',
          'collectionName': 'antikolinerjikler',
          'questions': anticholinergicDrugsQuestions,
        },
        {
          'displayName': 'Adrenerjik Agonist ve Antagonistler',
          'collectionName': 'adrenerjik-agonist-antagonistler',
          'questions': adrenergicDrugsQuestions,
        },
        {
          'displayName': 'Kolinesteraz İnhibitörleri',
          'collectionName': 'kolinesteraz-inhibitorleri',
          'questions': cholinesteraseInhibitorsQuestions,
        },
        {
          'displayName': 'Nöromüsküler Blokörler',
          'collectionName': 'neuromuskuler-blokorler',
          'questions': neuromuscularBlockingAgentsQuestions,
        },
        {
          'displayName': 'Opioidler ve Analjezikler',
          'collectionName': 'opioidler-analjezikler',
          'questions': analgesicAgentsQuestions,
        },
        {
          'displayName': 'İntravenöz Anestezikler',
          'collectionName': 'intravenoz-anestezikler',
          'questions': intravenousAnestheticsQuestions,
        },
        {
          'displayName': 'İnhalasyon Anestezikleri',
          'collectionName': 'inhalasyon-anestezikleri',
          'questions': inhalationAnestheticsQuestions,
        },
        {
          'displayName': 'Havayolu Yönetimi',
          'collectionName': 'havayolu-yonetimi',
          'questions': airwayManagementQuestions,
        },
        {
          'displayName': 'Kardiyovasküler Fizyoloji',
          'collectionName': 'kardiyovaskuler-fizyoloji',
          'questions': cardiovascularPhysiologyQuestions,
        },
        {
          'displayName': 'Kardiyovasküler Cerrahi',
          'collectionName': 'kardiyovaskuler-cerrahi',
          'questions': cardiovascularSurgeryQuestions,
        },
        {
          'displayName': 'Solunumsal Hastalıklar',
          'collectionName': 'solunumsal-hastaliklar',
          'questions': respiratoryDiseasesQuestions,
        },
        {
          'displayName': 'Solunumsal Fizyoloji',
          'collectionName': 'solunumsal-fizyoloji',
          'questions': respiratoryPhysiologyQuestions,
        },
        {
          'displayName': 'Postoperatif Bakım ve Mekanik Ventilasyon',
          'collectionName': 'postoperatif-bakim-mekanik-ventilasyon',
          'questions': postoperativeCareMechanicalVentilationQuestions,
        },
        {
          'displayName': 'Nörocerrahide Anestezi',
          'collectionName': 'norocerrahide-anestezi',
          'questions': neurosurgeryAnesthesiaQuestions,
        },
        {
          'displayName': 'Hepatik Fizyoloji ve Anestezi',
          'collectionName': 'hepatik-fizyoloji-anestezi',
          'questions': hepaticPhysiologyAnesthesiaQuestions,
        },
        {
          'displayName': 'Obstetrik Anestezi',
          'collectionName': 'obstetrik-anestezi',
          'questions': obstetricAnesthesiaQuestions,
        },
        {
          'displayName': 'Obstetric Anesthesia (English)',
          'collectionName': 'obstetric-anesthesia-english',
          'questions': english_obstetric.obstetricAnesthesiaQuestions,
        },
        {
          'displayName': 'Geriatric Anesthesia (English)',
          'collectionName': 'geriatric-anesthesia-english',
          'questions': english_geriatric.geriatricAnesthesiaQuestions,
        },
            {
      'displayName': 'Peripheral Nerve Blocks (English)',
      'collectionName': 'peripheral-nerve-blocks-english',
      'questions': english_peripheral.peripheralNerveBlocksQuestions,
    },
    {
      'displayName': 'Enhanced Recovery Protocols (English)',
      'collectionName': 'enhanced-recovery-protocols-english',
      'questions': english_enhanced.enhancedRecoveryProtocolsQuestions,
    },
    {
      'displayName': 'Fluid & Electrolyte Disturbances (English)',
      'collectionName': 'fluid-electrolyte-disturbances-english',
      'questions': english_fluid.fluidElectrolyteDisturbancesQuestions,
    },
    {
      'displayName': 'Fluid Management & Blood Component Therapy (English)',
      'collectionName': 'fluid-management-blood-component-therapy-english',
      'questions': english_fluid_management.fluidManagementBloodComponentTherapyQuestions,
    },
    {
      'displayName': 'Nutrition in Perioperative & Critical Care (English)',
      'collectionName': 'nutrition-perioperative-critical-care-english',
      'questions': english_nutrition.nutritionPerioperativeCriticalCareQuestions,
    },
    {
      'displayName': 'Cardiopulmonary Resuscitation (English)',
      'collectionName': 'cardiopulmonary-resuscitation-english',
      'questions': english_cpr.cardiopulmonaryResuscitationQuestions,
    },
    {
      'displayName': 'Common Clinical Concerns in Critical Care Medicine (English)',
      'collectionName': 'common-clinical-concerns-critical-care-english',
      'questions': english_critical_care.commonClinicalConcernsCriticalCareQuestions,
    },
    {
      'displayName': 'Inhalation Therapy & Mechanical Ventilation in the PACU & ICU (English)',
      'collectionName': 'inhalation-therapy-mechanical-ventilation-pacu-icu-english',
      'questions': english_inhalation_therapy.inhalationTherapyMechanicalVentilationPacuIcuQuestions,
    },
        {
          'displayName': 'Safety, Quality, & Performance Improvement (English)',
          'collectionName': 'safety-quality-performance-improvement-english',
          'questions': english_safety.safetyQualityPerformanceImprovementQuestions,
        },
        // Yeni İngilizce kategoriler
        {
          'displayName': 'Hypotensive Agents (English)',
          'collectionName': 'english-hypotensive-agents',
          'questions': english_hypotensive.hypotensiveAgentsQuestions,
        },
        {
          'displayName': 'Airway Management (English)',
          'collectionName': 'english-airway-management',
          'questions': english_airway.airwayManagementQuestions,
        },
        {
          'displayName': 'Local Anesthetics (English)',
          'collectionName': 'english-local-anesthetics',
          'questions': english_local.localAnestheticsQuestions,
        },
        {
          'displayName': 'Analgesic Agents (English)',
          'collectionName': 'english-analgesic-agents',
          'questions': english_analgesic.analgesicAgentsQuestions,
        },
        {
          'displayName': 'Intravenous Anesthetics (English)',
          'collectionName': 'english-intravenous-anesthetics',
          'questions': english_intravenous.intravenousAnestheticsQuestions,
        },
        {
          'displayName': 'Inhalation Anesthetics (English)',
          'collectionName': 'english-inhalation-anesthetics',
          'questions': english_inhalation.inhalationAnestheticsQuestions,
        },
        {
          'displayName': 'Cardiovascular Monitoring (English)',
          'collectionName': 'english-cardiovascular-monitoring',
          'questions': english_cardiovascular_monitoring.cardiovascularMonitoringQuestions,
        },
        {
          'displayName': 'Pharmacological Principles (English)',
          'collectionName': 'english-pharmacological-principles',
          'questions': english_pharmacological.pharmacologicalPrinciplesQuestions,
        },
        {
          'displayName': 'Operating Room Environment (English)',
          'collectionName': 'english-operating-room-environment',
          'questions': english_operating_room.operatingRoomEnvironmentQuestions,
        },
        {
          'displayName': 'Non-Cardiovascular Monitoring (English)',
          'collectionName': 'english-non-cardiovascular-monitoring',
          'questions': english_noncardiovascular.noncardiovascularMonitoringQuestions,
        },
        {
          'displayName': 'Anesthesia Workstation (English)',
          'collectionName': 'english-anesthesia-workstation',
          'questions': english_workstation.anesthesiaWorkstationQuestions,
        },
        {
          'displayName': 'Cardiovascular Physiology (English)',
          'collectionName': 'english-cardiovascular-physiology',
          'questions': english_cardiovascular_physiology.cardiovascularPhysiologyAnesthesiaQuestions,
        },
        {
          'displayName': 'Respiratory Physiology (English)',
          'collectionName': 'english-respiratory-physiology',
          'questions': english_respiratory_physiology.respiratoryPhysiologyAnesthesiaQuestions,
        },
        {
          'displayName': 'Neurophysiology (English)',
          'collectionName': 'english-neurophysiology',
          'questions': english_neurophysiology.neurophysiologyAnesthesiaQuestions,
        },
        {
          'displayName': 'Hepatic Physiology (English)',
          'collectionName': 'english-hepatic-physiology',
          'questions': english_hepatic.hepaticPhysiologyAnesthesiaQuestions,
        },
        {
          'displayName': 'Kidney Physiology (English)',
          'collectionName': 'english-kidney-physiology',
          'questions': english_kidney_physiology.kidneyPhysiologyAnesthesiaQuestions,
        },
        {
          'displayName': 'Maternal Fetal Physiology (English)',
          'collectionName': 'english-maternal-fetal-physiology',
          'questions': english_maternal.maternalFetalPhysiologyAnesthesiaQuestions,
        },
        {
          'displayName': 'Pediatric Anesthesia (English)',
          'collectionName': 'english-pediatric-anesthesia',
          'questions': english_pediatric.pediatricAnesthesiaQuestions,
        },
        {
          'displayName': 'Postanesthesia Care (English)',
          'collectionName': 'english-postanesthesia-care',
          'questions': english_postanesthesia.postanesthesiaCareQuestions,
        },
        {
          'displayName': 'Thermoregulation (English)',
          'collectionName': 'english-thermoregulation',
          'questions': english_thermoregulation.thermoregulationHypothermiaMalignantHyperthermiaQuestions,
        },
        {
          'displayName': 'Spinal Epidural Blocks (English)',
          'collectionName': 'english-spinal-epidural-blocks',
          'questions': english_spinal.spinalEpiduralCaudalBlocksQuestions,
        },
        {
          'displayName': 'Anesthetic Complications (English)',
          'collectionName': 'english-anesthetic-complications',
          'questions': english_complications.anestheticComplicationsQuestions,
        },
        {
          'displayName': 'Chronic Pain Management (English)',
          'collectionName': 'english-chronic-pain-management',
          'questions': english_chronic_pain.chronicPainManagementQuestions,
        },
        {
          'displayName': 'Coagulation Therapy (English)',
          'collectionName': 'english-coagulation-therapy',
          'questions': english_coagulation.coagulationAnticoagulantTherapyQuestions,
        },
        {
          'displayName': 'Ambulatory Anesthesia (English)',
          'collectionName': 'english-ambulatory-anesthesia',
          'questions': english_ambulatory.ambulatoryNonOperatingRoomAnesthesiaQuestions,
        },
        {
          'displayName': 'Anesthesia History (English)',
          'collectionName': 'english-anesthesia-history',
          'questions': english_history.anesthesiaHistoryQuestions,
        },
        {
          'displayName': 'Breathing Systems (English)',
          'collectionName': 'english-breathing-systems',
          'questions': english_breathing.breathingSystemsQuestions,
        },
        {
          'displayName': 'ERC 2021 Guidelines (English)',
          'collectionName': 'english-erc-2021-guidelines',
          'questions': english_erc.erc2021GuidelinesQuestions,
        },
        {
          'displayName': 'Asit-Baz Yönetimi',
          'collectionName': 'acid-base-management',
          'questions': acidBaseManagementQuestions,
        },
        {
          'displayName': 'Karaciğer Hastalığı Olan Hastalarda Anestezi',
          'collectionName': 'liver-disease-anesthesia',
          'questions': liverDiseaseAnesthesiaQuestions,
        },
        {
          'displayName': 'Nörofizyoloji ve Anestezi',
          'collectionName': 'neurophysiology-anesthesia',
          'questions': neurophysiologyAnesthesiaQuestions,
        },
        {
          'displayName': 'Perioperatif ve Yoğun Bakımda Beslenme',
          'collectionName': 'perioperative-intensive-care-nutrition',
          'questions': perioperativeIntensiveCareNutritionQuestions,
        },
        {
          'displayName': 'Sıvı ve Elektrolit Dengesizlikleri Olan Hastaların Yönetimi',
          'collectionName': 'fluid-electrolyte-imbalance-management',
          'questions': fluidElectrolyteImbalanceManagementQuestions,
        },
        // Eksik 24 kategori
        {
          'displayName': 'Kardiyopulmoner Resüsitasyon',
          'collectionName': 'cardiopulmonary-resuscitation',
          'questions': cardiopulmonaryResuscitationQuestions,
        },
        {
          'displayName': 'Yoğun Bakım Sorunları',
          'collectionName': 'intensive-care-problems',
          'questions': intensiveCareProblemsQuestions,
        },
        {
          'displayName': 'Günübirlik Anestezi',
          'collectionName': 'outpatient-anesthesia',
          'questions': outpatientAnesthesiaQuestions,
        },
        {
          'displayName': 'Pediatrik Anestezi',
          'collectionName': 'pediatric-anesthesia',
          'questions': pediatricAnesthesiaQuestions,
        },
        {
          'displayName': 'Postanestezik Bakım',
          'collectionName': 'postanesthetic-care',
          'questions': postanestheticCareQuestions,
        },
        {
          'displayName': 'Termoregülasyon ve Malign Hipertermi',
          'collectionName': 'thermoregulation-hypothermia-malignant-hyperthermia',
          'questions': thermoregulationHypothermiaMalignantHyperthermiaQuestions,
        },
        {
          'displayName': 'Torasik Cerrahi Anestezi',
          'collectionName': 'thoracic-surgery-anesthesia',
          'questions': thoracicSurgeryAnesthesiaQuestions,
        },
        {
          'displayName': 'Sıvı Yönetimi ve Kan Ürünleri',
          'collectionName': 'fluid-management-blood-products',
          'questions': fluidManagementBloodProductsQuestions,
        },
        {
          'displayName': 'Spinal, Epidural ve Kaudal Bloklar',
          'collectionName': 'spinal-epidural-caudal-blocks',
          'questions': spinalEpiduralCaudalBlocksQuestions,
        },
        {
          'displayName': 'Güvenlik ve Kalite İyileştirme',
          'collectionName': 'safety-quality-performance-improvement',
          'questions': safetyQualityPerformanceImprovementQuestions,
        },
        {
          'displayName': 'Renal Fizyoloji ve Anestezi',
          'collectionName': 'renal-physiology-anesthesia',
          'questions': renalPhysiologyAnesthesiaQuestions,
        },
        {
          'displayName': 'Oftalmik Anestezi',
          'collectionName': 'ophthalmic-anesthesia',
          'questions': ophthalmicAnesthesiaQuestions,
        },
        {
          'displayName': 'Genitoüriner Anestezi',
          'collectionName': 'genitourinary-anesthesia',
          'questions': genitourinaryAnesthesiaQuestions,
        },
        {
          'displayName': 'Anestezi Komplikasyonları',
          'collectionName': 'anesthesia-complications',
          'questions': anesthesiaComplicationsQuestions,
        },
        {
          'displayName': 'Geliştirilmiş İyileşme Protokolleri',
          'collectionName': 'enhanced-recovery-protocols',
          'questions': enhancedRecoveryProtocolsQuestions,
        },
        {
          'displayName': 'Ortopedik Anestezi',
          'collectionName': 'orthopedic-anesthesia',
          'questions': orthopedicAnesthesiaQuestions,
        },
        {
          'displayName': 'Travma ve Acil Anestezi',
          'collectionName': 'trauma-emergency-anesthesia',
          'questions': traumaEmergencyAnesthesiaQuestions,
        },
        {
          'displayName': 'Geriatrik Anestezi',
          'collectionName': 'geriatric-anesthesia',
          'questions': geriatricAnesthesiaQuestions,
        },
        {
          'displayName': 'Endokrin Hastalıklar ve Anestezi',
          'collectionName': 'endocrine-diseases-anesthesia',
          'questions': endocrineDiseaseAnesthesiaQuestions,
        },
        {
          'displayName': 'Nöromüsküler Hastalıklar ve Anestezi',
          'collectionName': 'neuromuscular-diseases-anesthesia',
          'questions': neuromuscularDiseasesAnesthesiaQuestions,
        },
        {
          'displayName': 'Nörolojik ve Psikiyatrik Anestezi',
          'collectionName': 'neurological-psychiatric-anesthesia',
          'questions': neurologicalPsychiatricAnesthesiaQuestions,
        },
        {
          'displayName': 'Otolaringoloji ve Baş-Boyun Cerrahisi',
          'collectionName': 'otolaryngology-head-neck-surgery',
          'questions': otolaryngologyHeadNeckSurgeryQuestions,
        },
        {
          'displayName': 'Ağrı Yönetimi',
          'collectionName': 'pain-management',
          'questions': painManagementQuestions,
        },
        {
          'displayName': 'Hipotansif Ajanlar',
          'collectionName': 'hypotensive-agents',
          'questions': hypotensiveAgentsQuestions,
        },
      ];

      for (final category in quizCategories) {
        final displayName = category['displayName'] as String;
        final collectionName = category['collectionName'] as String;
        final questions = category['questions'] as dynamic;

        print('Migrating category: $displayName -> $collectionName');

        if (questions is List && questions.isNotEmpty) {
          // Önce category meta bilgisini kaydet
          await _createCategoryMeta(
            collectionName,
            displayName,
            questions.length,
          );

          print('Found ${questions.length} questions in $displayName');

          for (int i = 0; i < questions.length; i++) {
            try {
              final question = questions[i];
              final questionMap = _convertQuestionToMap(question);
              await _migrateOrganizedQuestion(
                questionMap,
                collectionName,
                displayName,
                i + 1,
                cleanReload,
              );
              totalMigrated++;
            } catch (e) {
              print('Error migrating question ${i + 1} from $displayName: $e');
              totalErrors++;
            }
          }
          migratedCategories.add(displayName);
        } else {
          print('Warning: $displayName does not contain questions');
        }
      }

      return {
        'success': true,
        'totalMigrated': totalMigrated,
        'totalErrors': totalErrors,
        'categories': migratedCategories,
      };
    } catch (e) {
      print('Error in migrateOrganizedQuestions: $e');
      return {
        'success': false,
        'error': e.toString(),
        'totalMigrated': 0,
        'totalErrors': 0,
        'categories': [],
      };
    }
  }

  // Category meta bilgisini kaydet
  Future<void> _createCategoryMeta(
    String collectionName,
    String displayName,
    int questionCount,
  ) async {
    try {
      await _firestore.collection('quizCategories').doc(collectionName).set({
        'displayName': displayName,
        'collectionName': collectionName,
        'questionCount': questionCount,
        'createdAt': FieldValue.serverTimestamp(),
        'updatedAt': FieldValue.serverTimestamp(),
        'isActive': true,
      }, SetOptions(merge: true));
    } catch (e) {
      print('Error creating category meta: $e');
    }
  }

  // Organize edilmiş soruyu kaydet
  Future<void> _migrateOrganizedQuestion(
    Map<String, dynamic> question,
    String collectionName,
    String displayName,
    int questionNumber,
    bool cleanReload,
  ) async {
    try {
      // Only check for duplicates if not doing a clean reload
      if (!cleanReload) {
        final existingQuery =
            await _firestore
                .collection('questions')
                .doc(collectionName)
                .collection('items')
                .where('question', isEqualTo: question['question'])
                .get();

        if (existingQuery.docs.isNotEmpty) {
          print(
            'Question already exists, skipping: ${question['question']?.toString().substring(0, min(50, question['question']?.toString().length ?? 0))}...',
          );
          return;
        }
      }

      // Prepare question data
      final questionData = {
        'questionNumber': questionNumber,
        'question': question['question'] ?? '',
        'options': List<String>.from(question['options'] ?? []),
        'correctAnswer': question['correctAnswer'] ?? 0,
        'explanation': question['explanation'] ?? '',
        'difficulty': question['difficulty'] ?? 'medium',
        'category': displayName,
        'collectionName': collectionName,
        'createdAt': FieldValue.serverTimestamp(),
        'createdBy': _auth.currentUser?.uid ?? 'system',
        'migrated': true,
        'source': 'organized_data',
      };

      // Add question to organized subcollection
      await _firestore
          .collection('questions')
          .doc(collectionName)
          .collection('items')
          .add(questionData);
    } catch (e) {
      print('Error migrating organized question: $e');
      rethrow;
    }
  }

  Map<String, dynamic> _convertQuestionToMap(dynamic question) {
    if (question is Map<String, dynamic>) {
      return question;
    }

    // Question object'i map'e dönüştür
    if (question.runtimeType.toString().contains('Question')) {
      return {
        'question': question.question ?? '',
        'options': question.options ?? [],
        'correctAnswer': question.correctAnswerIndex ?? 0,
        'explanation': question.explanation ?? '',
        'difficulty': _getDifficultyString(question.difficulty),
      };
    }

    // Map olarak gelen veriyi doğrudan kullan
    return {
      'question': question['question'] ?? '',
      'options': List<String>.from(question['options'] ?? []),
      'correctAnswer':
          question['correctAnswerIndex'] ?? question['correctAnswer'] ?? 0,
      'explanation': question['explanation'] ?? '',
      'difficulty': _getDifficultyString(question['difficulty']),
    };
  }

  String _getDifficultyString(dynamic difficulty) {
    if (difficulty == null) return 'medium';
    if (difficulty is int) {
      switch (difficulty) {
        case 1:
          return 'easy';
        case 2:
          return 'medium';
        case 3:
          return 'hard';
        default:
          return 'medium';
      }
    }
    if (difficulty is String) return difficulty;
    return 'medium';
  }

  // Organize edilmiş kategorileri getir
  Future<List<Map<String, dynamic>>> getOrganizedCategories() async {
    try {
      final snapshot =
          await _firestore
              .collection('quizCategories')
              .where('isActive', isEqualTo: true)
              .orderBy('displayName')
              .get();

      return snapshot.docs.map((doc) {
        final data = doc.data();
        return {
          'id': doc.id,
          'displayName': data['displayName'] ?? '',
          'collectionName': data['collectionName'] ?? '',
          'questionCount': data['questionCount'] ?? 0,
          'createdAt': data['createdAt'],
        };
      }).toList();
    } catch (e) {
      print('Error getting organized categories: $e');
      return [];
    }
  }

  // Dil bazlı kategorileri getir
  Future<List<Map<String, dynamic>>> getOrganizedCategoriesByLanguage(String language) async {
    try {
      // Tüm kategorileri getir
      final snapshot =
          await _firestore
              .collection('quizCategories')
              .where('isActive', isEqualTo: true)
              .orderBy('displayName')
              .get();

      // Collection name'e göre filtrele
      final filteredDocs = snapshot.docs.where((doc) {
        final data = doc.data();
        final collectionName = data['collectionName'] as String? ?? '';
        final displayName = data['displayName'] as String? ?? '';
        
        if (language == 'english') {
          return collectionName.startsWith('english_') || 
                 displayName.toLowerCase().contains('english') ||
                 displayName.toLowerCase().contains('ingilizce');
        } else {
          return !collectionName.startsWith('english_') && 
                 !displayName.toLowerCase().contains('english') &&
                 !displayName.toLowerCase().contains('ingilizce');
        }
      }).toList();

      return filteredDocs.map((doc) {
        final data = doc.data();
        return {
          'id': doc.id,
          'displayName': data['displayName'] ?? '',
          'collectionName': data['collectionName'] ?? '',
          'questionCount': data['questionCount'] ?? 0,
          'language': language,
          'createdAt': data['createdAt'],
        };
      }).toList();
    } catch (e) {
      print('Error getting organized categories by language: $e');
      return [];
    }
  }

  // Belirli kategorinin sorularını getir
  Future<List<Map<String, dynamic>>> getQuestionsByCategory(
    String collectionName,
  ) async {
    try {
      final snapshot =
          await _firestore
              .collection('questions')
              .doc(collectionName)
              .collection('items')
              .orderBy('questionNumber')
              .get();

      return snapshot.docs.map((doc) {
        final data = doc.data();
        return {
          'id': doc.id,
          'questionNumber': data['questionNumber'] ?? 0,
          'question': data['question'] ?? '',
          'options': List<String>.from(data['options'] ?? []),
          'correctAnswer': data['correctAnswer'] ?? 0,
          'explanation': data['explanation'] ?? '',
          'difficulty': data['difficulty'] ?? 'medium',
          'category': data['category'] ?? '',
          'collectionName': data['collectionName'] ?? collectionName,
          'createdAt': data['createdAt'],
        };
      }).toList();
    } catch (e) {
      print('Error getting questions by category: $e');
      return [];
    }
  }

  // Organize edilmiş soru silme
  Future<bool> deleteOrganizedQuestion(
    String collectionName,
    String questionId,
  ) async {
    try {
      await _firestore
          .collection('questions')
          .doc(collectionName)
          .collection('items')
          .doc(questionId)
          .delete();
      return true;
    } catch (e) {
      print('Error deleting organized question: $e');
      return false;
    }
  }

  // Organize edilmiş soru güncelleme
  Future<bool> updateOrganizedQuestion(
    String collectionName,
    String questionId,
    Map<String, dynamic> questionData,
  ) async {
    try {
      await _firestore
          .collection('questions')
          .doc(collectionName)
          .collection('items')
          .doc(questionId)
          .update({
            ...questionData,
            'updatedAt': FieldValue.serverTimestamp(),
            'updatedBy': _auth.currentUser?.uid,
          });
      return true;
    } catch (e) {
      print('Error updating organized question: $e');
      return false;
    }
  }

  // Türkçe soruları migrate et
  Future<Map<String, dynamic>> migrateTurkishQuestions() async {
    try {
      int totalMigrated = 0;
      int totalErrors = 0;
      List<String> migratedCategories = [];

      // Türkçe kategoriler - multilingual.dart sırasına göre düzenlenmiş
      final List<Map<String, dynamic>> turkishCategories = [
        {
          'displayName': 'Anestezi Uygulaması',
          'collectionName': 'anestezi-uygulamasi',
          'questions': anesthesiaApplicationQuestions,
        },
        {
          'displayName': 'Ameliyathane Ortamı',
          'collectionName': 'ameliyathane-ortami',
          'questions': operatingRoomEnvironmentQuestions,
        },
        {
          'displayName': 'Solunum Sistemleri',
          'collectionName': 'solunum-sistemleri',
          'questions': respiratorySystemQuestions,
        },
        {
          'displayName': 'Anestezi İş İstasyonu',
          'collectionName': 'anestezi-is-istasyonu',
          'questions': anesthesiaWorkstationQuestions,
        },
        {
          'displayName': 'Kardiyovasküler Monitörizasyon',
          'collectionName': 'kardiyovaskuler-monitorizasyon',
          'questions': cardiovascularMonitoringQuestions,
        },
        {
          'displayName': 'Kardiyovasküler Dışı Monitörizasyon',
          'collectionName': 'kardiyovaskuler-dis-monitorizasyon',
          'questions': nonCardiovascularMonitoringQuestions,
        },
        {
          'displayName': 'Farmakolojik Prensipler',
          'collectionName': 'farmakolojik-prensipler',
          'questions': pharmacologicalPrinciplesQuestions,
        },
        {
          'displayName': 'İnhalasyon Anestezikleri',
          'collectionName': 'inhalasyon-anestezikleri',
          'questions': inhalationAnestheticsQuestions,
        },
        {
          'displayName': 'İntravenöz Anestezikler',
          'collectionName': 'intravenoz-anestezikler',
          'questions': intravenousAnestheticsQuestions,
        },
        {
          'displayName': 'Analjezik Ajanlar',
          'collectionName': 'analjezik-ajanlar',
          'questions': analgesicAgentsQuestions,
        },
        {
          'displayName': 'Nöromüsküler Blokaj Ajanları',
          'collectionName': 'neuromuskuler-blokaj-ajanlari',
          'questions': neuromuscularBlockingAgentsQuestions,
        },
        {
          'displayName': 'Kolinesteraz İnhibitörleri',
          'collectionName': 'kolinesteraz-inhibitorleri',
          'questions': cholinesteraseInhibitorsQuestions,
        },
        {
          'displayName': 'Antikolinerjik İlaçlar',
          'collectionName': 'antikolinerjik-ilaclar',
          'questions': anticholinergicDrugsQuestions,
        },
        {
          'displayName': 'Adrenerjik Agonistler ve Antagonistler',
          'collectionName': 'adrenerjik-agonistler-antagonistler',
          'questions': adrenergicDrugsQuestions,
        },
        {
          'displayName': 'Hipotansif Ajanlar',
          'collectionName': 'hipotansif-ajanlar',
          'questions': hypotensiveAgentsQuestions,
        },
        {
          'displayName': 'Lokal Anestezikler',
          'collectionName': 'lokal-anestezikler',
          'questions': localAnestheticsQuestions,
        },
        {
          'displayName': 'Anestezide Yardımcı İlaçlar',
          'collectionName': 'anestezide-yardimci-ilaclar',
          'questions': auxiliaryDrugsQuestions,
        },
        {
          'displayName': 'Ameliyat Öncesi Değerlendirme, Premedikasyon ve Dokümantasyon',
          'collectionName': 'ameliyat-oncesi-degerlendirme-premedikasyon-dokumantasyon',
          'questions': preoperativeAssessmentPremedicationDocumentationQuestions,
        },
        {
          'displayName': 'Havayolu Yönetimi',
          'collectionName': 'havayolu-yonetimi',
          'questions': airwayManagementQuestions,
        },
        {
          'displayName': 'Kardiyovasküler Fizyoloji ve Anestezi',
          'collectionName': 'kardiyovaskuler-fizyoloji-anestezi',
          'questions': cardiovascularPhysiologyQuestions,
        },
        {
          'displayName': 'Kardiyovasküler Hastalığı Olan Hastalarda Anestezi',
          'collectionName': 'kardiyovaskuler-hastaligi-olan-hastalarda-anestezi',
          'questions': cardiovascularDiseaseAnesthesiaQuestions,
        },
        {
          'displayName': 'Kardiyovasküler Cerrahide Anestezi',
          'collectionName': 'kardiyovaskuler-cerrahide-anestezi',
          'questions': cardiovascularSurgeryQuestions,
        },
        {
          'displayName': 'Solunum Fizyolojisi ve Anestezi',
          'collectionName': 'solunum-fizyolojisi-anestezi',
          'questions': respiratoryPhysiologyQuestions,
        },
        {
          'displayName': 'Solunum Sistemi Hastalığı Olanlarda Anestezi',
          'collectionName': 'solunum-sistemi-hastaligi-olanlarda-anestezi',
          'questions': respiratoryDiseasesQuestions,
        },
        {
          'displayName': 'Toraks Cerrahisinde Anestezi',
          'collectionName': 'toraks-cerrahisinde-anestezi',
          'questions': thoracicSurgeryAnesthesiaQuestions,
        },
        {
          'displayName': 'Nörofizyoloji ve Anestezi',
          'collectionName': 'norofizyoloji-anestezi',
          'questions': neurophysiologyAnesthesiaQuestions,
        },
        {
          'displayName': 'Nörocerrahide Anestezi',
          'collectionName': 'norocerrahide-anestezi',
          'questions': neurosurgeryAnesthesiaQuestions,
        },
        {
          'displayName': 'Nörolojik ve Psikiyatrik Hastalığı Olanlarda Anestezi',
          'collectionName': 'norolojik-psikiyatrik-hastaligi-olanlarda-anestezi',
          'questions': neurologicalPsychiatricAnesthesiaQuestions,
        },
        {
          'displayName': 'Nöromüsküler Hastalığı Olanlarda Anestezi',
          'collectionName': 'neuromuskuler-hastaligi-olanlarda-anestezi',
          'questions': neuromuscularDiseasesAnesthesiaQuestions,
        },
        {
          'displayName': 'Böbrek Fizyolojisi ve Anestezi',
          'collectionName': 'bobrek-fizyolojisi-anestezi',
          'questions': renalPhysiologyAnesthesiaQuestions,
        },
        {
          'displayName': 'Böbrek Hastalığı Olan Hastalarda Anestezi',
          'collectionName': 'bobrek-hastaligi-olan-hastalarda-anestezi',
          'questions': renalDiseaseAnesthesiaQuestions,
        },
        {
          'displayName': 'Genitoüriner Cerrahide Anestezi',
          'collectionName': 'genitouriner-cerrahide-anestezi',
          'questions': genitourinaryAnesthesiaQuestions,
        },
        {
          'displayName': 'Hepatik Fizyoloji ve Anestezi',
          'collectionName': 'hepatik-fizyoloji-anestezi',
          'questions': hepaticPhysiologyAnesthesiaQuestions,
        },
        {
          'displayName': 'Karaciğer Hastalığı Olan Hastalarda Anestezi',
          'collectionName': 'karaciger-hastaligi-olan-hastalarda-anestezi',
          'questions': liverDiseaseAnesthesiaQuestions,
        },
        {
          'displayName': 'Endokrin Hastalığı Olan Hastalarda Anestezi',
          'collectionName': 'endokrin-hastaligi-olan-hastalarda-anestezi',
          'questions': endocrineDiseaseAnesthesiaQuestions,
        },
        {
          'displayName': 'Oftalmik Anestezi',
          'collectionName': 'oftalmik-anestezi',
          'questions': ophthalmicAnesthesiaQuestions,
        },
        {
          'displayName': 'KBB ve Baş-Boyun Cerrahisinde Anestezi',
          'collectionName': 'kbb-bas-boyun-cerrahisinde-anestezi',
          'questions': otolaryngologyHeadNeckSurgeryQuestions,
        },
        {
          'displayName': 'Ortopedik Anestezi',
          'collectionName': 'ortopedik-anestezi',
          'questions': orthopedicAnesthesiaQuestions,
        },
        {
          'displayName': 'Travma ve Acil Cerrahide Anestezi',
          'collectionName': 'travma-acil-cerrahide-anestezi',
          'questions': traumaEmergencyAnesthesiaQuestions,
        },
        {
          'displayName': 'Maternal-Fetal Fizyoloji ve Anestezi',
          'collectionName': 'maternal-fetal-fizyoloji-anestezi',
          'questions': maternalFetalPhysiologyAnesthesiaQuestions,
        },
        {
          'displayName': 'Obstetrik Anestezi',
          'collectionName': 'obstetrik-anestezi',
          'questions': obstetricAnesthesiaQuestions,
        },
        {
          'displayName': 'Pediatrik Anestezi',
          'collectionName': 'pediatrik-anestezi',
          'questions': pediatricAnesthesiaQuestions,
        },
        {
          'displayName': 'Geriatrik Anestezi',
          'collectionName': 'geriatrik-anestezi',
          'questions': geriatricAnesthesiaQuestions,
        },
        {
          'displayName': 'Ayaktan Anestezi',
          'collectionName': 'ayaktan-anestezi',
          'questions': outpatientAnesthesiaQuestions,
        },
        {
          'displayName': 'Spinal, Epidural ve Kaudal Bloklar',
          'collectionName': 'spinal-epidural-kaudal-bloklar',
          'questions': spinalEpiduralCaudalBlocksQuestions,
        },
        {
          'displayName': 'Periferik Sinir Blokları',
          'collectionName': 'periferik-sinir-bloklari',
          'questions': peripheralNerveBlocksQuestions,
        },
        {
          'displayName': 'Kronik Ağrı Tedavisi',
          'collectionName': 'kronik-agri-tedavisi',
          'questions': chronicPainTreatmentQuestions,
        },
        {
          'displayName': 'Geliştirilmiş İyileştirme Protokolleri ve Perioperatif',
          'collectionName': 'gelistirilmis-iyilestirme-protokolleri-perioperatif',
          'questions': enhancedRecoveryProtocolsQuestions,
        },
        {
          'displayName': 'Sıvı-Elektrolit Dengesizliği Yönetimi',
          'collectionName': 'sivi-elektrolit-dengesizligi-yonetimi',
          'questions': fluidElectrolyteImbalanceManagementQuestions,
        },
        {
          'displayName': 'Asit-Baz Yönetimi',
          'collectionName': 'asit-baz-yonetimi',
          'questions': acidBaseManagementQuestions,
        },
        {
          'displayName': 'Sıvı Yönetimi ve Kan Ürünleri Tedavisi',
          'collectionName': 'sivi-yonetimi-kan-urunleri-tedavisi',
          'questions': fluidManagementBloodProductsQuestions,
        },
        {
          'displayName': 'Termoregülasyon, Hipotermi ve Malign Hipertermi',
          'collectionName': 'termoregulasyon-hipotermi-malign-hipertermi',
          'questions': thermoregulationHypothermiaMalignantHyperthermiaQuestions,
        },
        {
          'displayName': 'Perioperatif Yoğun Bakım Beslenmesi',
          'collectionName': 'perioperatif-yogun-bakim-beslenmesi',
          'questions': perioperativeIntensiveCareNutritionQuestions,
        },
        {
          'displayName': 'Anestezi Komplikasyonları',
          'collectionName': 'anestezi-komplikasyonlari',
          'questions': anesthesiaComplicationsQuestions,
        },
        {
          'displayName': 'Kardiyopulmoner Resüsitasyon',
          'collectionName': 'kardiyopulmoner-resusitasyon',
          'questions': cardiopulmonaryResuscitationQuestions,
        },
        {
          'displayName': 'Postanestezik Bakım',
          'collectionName': 'postanestezik-bakim',
          'questions': postanestheticCareQuestions,
        },
        {
          'displayName': 'Yoğun Bakım Problemleri',
          'collectionName': 'yogun-bakim-problemleri',
          'questions': intensiveCareProblemsQuestions,
        },
        {
          'displayName': 'Postoperatif Bakım - Yoğun Bakım Ventilasyonu',
          'collectionName': 'postoperatif-bakim-yogun-bakim-ventilasyonu',
          'questions': postoperativeCareIcuVentilationQuestions,
        },
        {
          'displayName': 'Güvenlik, Kalite ve Performans İyileştirme',
          'collectionName': 'guvenlik-kalite-performans-iyilestirme',
          'questions': safetyQualityPerformanceImprovementQuestions,
        },
        {
          'displayName': 'Sepsis ve ARDS',
          'collectionName': 'sepsis-ards',
          'questions': sepsisArdsQuestions,
        },
        {
          'displayName': 'Koagülasyon ve Antikoagülanlar',
          'collectionName': 'koagulasyon-antikoagulanlar',
          'questions': coagulationAnticoagulantQuestions,
        },
        {
          'displayName': 'ERC 2021 Kılavuzları',
          'collectionName': 'erc-2021-kilavuzlari',
          'questions': erc2021GuidelinesQuestions,
        },
        {
          'displayName': 'Algoloji',
          'collectionName': 'algoloji',
          'questions': algologyQuestions,
        },
      ];

      print('🇹🇷 Starting Turkish questions migration...');
      print('Found ${turkishCategories.length} Turkish categories');

      for (final category in turkishCategories) {
        try {
          final displayName = category['displayName'] as String;
          final collectionName = category['collectionName'] as String;
          final questions = category['questions'] as List<Question>;

          print('Migrating: $displayName (${questions.length} questions)');

          // Kategori bilgilerini kaydet
          await _firestore.collection('quizCategories').doc(collectionName).set({
            'displayName': displayName,
            'collectionName': collectionName,
            'questionCount': questions.length,
            'language': 'turkish',
            'createdAt': FieldValue.serverTimestamp(),
            'createdBy': _auth.currentUser?.uid ?? 'system',
          });

          // Soruları kaydet
          for (int i = 0; i < questions.length; i++) {
            final question = questions[i];
            await _migrateOrganizedQuestion(
              question.toJson(),
              collectionName,
              displayName,
              i + 1,
              false, // cleanReload = false
            );
          }

          migratedCategories.add(displayName);
          totalMigrated += questions.length;
          print('✅ Migrated: $displayName - ${questions.length} questions');

        } catch (e) {
          print('❌ Error migrating category ${category['displayName']}: $e');
          totalErrors++;
        }
      }

      print('🎉 Turkish migration completed!');
      print('Total migrated: $totalMigrated questions');
      print('Total errors: $totalErrors');
      print('Migrated categories: ${migratedCategories.length}');

      return {
        'totalMigrated': totalMigrated,
        'totalErrors': totalErrors,
        'migratedCategories': migratedCategories,
        'language': 'turkish',
      };

    } catch (e) {
      print('❌ Error in Turkish migration: $e');
      rethrow;
    }
  }

  // İngilizce soruları migrate et
  Future<Map<String, dynamic>> migrateEnglishQuestions() async {
    try {
      int totalMigrated = 0;
      int totalErrors = 0;
      List<String> migratedCategories = [];

      // İngilizce kategoriler - multilingual.dart sırasına göre düzenlenmiş
      final List<Map<String, dynamic>> englishCategories = [
        {
          'displayName': 'Anesthesia Application (English)',
          'collectionName': 'english-anesthesia-application',
          'questions': english_history.anesthesiaHistoryQuestions,
        },
        {
          'displayName': 'Operating Room Environment (English)',
          'collectionName': 'english-operating-room-environment',
          'questions': english_operating_room.operatingRoomEnvironmentQuestions,
        },
        {
          'displayName': 'Breathing Systems (English)',
          'collectionName': 'english-breathing-systems',
          'questions': english_breathing.breathingSystemsQuestions,
        },
        {
          'displayName': 'Anesthesia Workstation (English)',
          'collectionName': 'english-anesthesia-workstation',
          'questions': english_workstation.anesthesiaWorkstationQuestions,
        },
        {
          'displayName': 'Cardiovascular Monitoring (English)',
          'collectionName': 'english-cardiovascular-monitoring',
          'questions': english_cardiovascular_monitoring.cardiovascularMonitoringQuestions,
        },
        {
          'displayName': 'Non-Cardiovascular Monitoring (English)',
          'collectionName': 'english-non-cardiovascular-monitoring',
          'questions': english_noncardiovascular.noncardiovascularMonitoringQuestions,
        },
        {
          'displayName': 'Pharmacological Principles (English)',
          'collectionName': 'english-pharmacological-principles',
          'questions': english_pharmacological.pharmacologicalPrinciplesQuestions,
        },
        {
          'displayName': 'Inhalation Anesthetics (English)',
          'collectionName': 'english-inhalation-anesthetics',
          'questions': english_inhalation.inhalationAnestheticsQuestions,
        },
        {
          'displayName': 'Intravenous Anesthetics (English)',
          'collectionName': 'english-intravenous-anesthetics',
          'questions': english_intravenous.intravenousAnestheticsQuestions,
        },
        {
          'displayName': 'Analgesic Agents (English)',
          'collectionName': 'english-analgesic-agents',
          'questions': english_analgesic.analgesicAgentsQuestions,
        },
        {
          'displayName': 'Neuromuscular Blocking Agents (English)',
          'collectionName': 'english-neuromuscular-blocking-agents',
          'questions': english_neuromuscular_blocking.neuromuscularBlockingAgentsQuestions,
        },
        {
          'displayName': 'Cholinesterase Inhibitors and Antagonists (English)',
          'collectionName': 'english-cholinesterase-inhibitors-antagonists',
          'questions': english_cholinesterase.cholinesteraseInhibitorsAntagonistsQuestions,
        },
        {
          'displayName': 'Anticholinergic Drugs (English)',
          'collectionName': 'english-anticholinergic-drugs',
          'questions': english_anticholinergic.anticholinergicDrugsQuestions,
        },
        {
          'displayName': 'Adrenergic Agonists and Antagonists (English)',
          'collectionName': 'english-adrenergic-agonists-antagonists',
          'questions': english_adrenergic.adrenergicAgonistsAntagonistsQuestions,
        },
        {
          'displayName': 'Hypotensive Agents (English)',
          'collectionName': 'english-hypotensive-agents',
          'questions': english_hypotensive.hypotensiveAgentsQuestions,
        },
        {
          'displayName': 'Local Anesthetics (English)',
          'collectionName': 'english-local-anesthetics',
          'questions': english_local.localAnestheticsQuestions,
        },
        {
          'displayName': 'Adjuncts to Anesthesia (English)',
          'collectionName': 'english-adjuncts-to-anesthesia',
          'questions': english_adjuncts.adjunctsToAnesthesiaQuestions,
        },
        {
          'displayName': 'Preoperative Assessment, Premedication, Documentation (English)',
          'collectionName': 'english-preoperative-assessment-premedication-documentation',
          'questions': english_preoperative.preoperativeAssessmentPremedicationDocumentationQuestions,
        },
        {
          'displayName': 'Airway Management (English)',
          'collectionName': 'english-airway-management',
          'questions': english_airway.airwayManagementQuestions,
        },
        {
          'displayName': 'Cardiovascular Physiology and Anesthesia (English)',
          'collectionName': 'english-cardiovascular-physiology-anesthesia',
          'questions': english_cardiovascular_physiology.cardiovascularPhysiologyAnesthesiaQuestions,
        },
        {
          'displayName': 'Anesthesia for Patients with Cardiovascular Disease (English)',
          'collectionName': 'english-anesthesia-cardiovascular-disease',
          'questions': english_cardiovascular_disease.anesthesiaCardiovascularDiseaseQuestions,
        },
        {
          'displayName': 'Anesthesia for Cardiovascular Surgery (English)',
          'collectionName': 'english-anesthesia-cardiovascular-surgery',
          'questions': english_cardiovascular_surgery.anesthesiaCardiovascularSurgeryQuestions,
        },
        {
          'displayName': 'Respiratory Physiology and Anesthesia (English)',
          'collectionName': 'english-respiratory-physiology-anesthesia',
          'questions': english_respiratory_physiology.respiratoryPhysiologyAnesthesiaQuestions,
        },
        {
          'displayName': 'Anesthesia for Patients with Respiratory Disease (English)',
          'collectionName': 'english-anesthesia-respiratory-disease',
          'questions': english_respiratory_disease.anesthesiaRespiratoryDiseaseQuestions,
        },
        {
          'displayName': 'Anesthesia for Thoracic Surgery (English)',
          'collectionName': 'english-anesthesia-thoracic-surgery',
          'questions': english_thoracic.anesthesiaThoracicSurgeryQuestions,
        },
        {
          'displayName': 'Neurophysiology and Anesthesia (English)',
          'collectionName': 'english-neurophysiology-anesthesia',
          'questions': english_neurophysiology.neurophysiologyAnesthesiaQuestions,
        },
        {
          'displayName': 'Anesthesia for Neurosurgery (English)',
          'collectionName': 'english-anesthesia-neurosurgery',
          'questions': english_neurosurgery.anesthesiaNeurosurgeryQuestions,
        },
        {
          'displayName': 'Anesthesia for Patients with Neurological and Psychiatric Diseases (English)',
          'collectionName': 'english-anesthesia-neurological-psychiatric-diseases',
          'questions': english_neurological.anesthesiaNeurologicalPsychiatricDiseasesQuestions,
        },
        {
          'displayName': 'Anesthesia for Patients with Neuromuscular Disease (English)',
          'collectionName': 'english-anesthesia-neuromuscular-disease',
          'questions': english_neuromuscular.anesthesiaNeuromuscularDiseaseQuestions,
        },
        {
          'displayName': 'Kidney Physiology and Anesthesia (English)',
          'collectionName': 'english-kidney-physiology-anesthesia',
          'questions': english_kidney_physiology.kidneyPhysiologyAnesthesiaQuestions,
        },
        {
          'displayName': 'Anesthesia for Patients with Kidney Disease (English)',
          'collectionName': 'english-anesthesia-kidney-disease',
          'questions': english_kidney.anesthesiaKidneyDiseaseQuestions,
        },
        {
          'displayName': 'Anesthesia for Genitourinary Surgery (English)',
          'collectionName': 'english-anesthesia-genitourinary-surgery',
          'questions': english_genitourinary.anesthesiaGenitourinarySurgeryQuestions,
        },
        {
          'displayName': 'Hepatic Physiology and Anesthesia (English)',
          'collectionName': 'english-hepatic-physiology-anesthesia',
          'questions': english_hepatic.hepaticPhysiologyAnesthesiaQuestions,
        },
        {
          'displayName': 'Anesthesia for Patients with Liver Disease (English)',
          'collectionName': 'english-anesthesia-liver-disease',
          'questions': english_liver.anesthesiaLiverDiseaseQuestions,
        },
        {
          'displayName': 'Anesthesia for Patients with Endocrine Disease (English)',
          'collectionName': 'english-anesthesia-endocrine-disease',
          'questions': english_endocrine.anesthesiaEndocrineDiseaseQuestions,
        },
        {
          'displayName': 'Anesthesia for Ophthalmic Surgery (English)',
          'collectionName': 'english-anesthesia-ophthalmic-surgery',
          'questions': english_ophthalmic.anesthesiaOphthalmicSurgeryQuestions,
        },
        {
          'displayName': 'Anesthesia for Otolaryngology and Head-Neck Surgery (English)',
          'collectionName': 'english-anesthesia-otolaryngology-head-neck-surgery',
          'questions': english_otolaryngology.anesthesiaOtolaryngologyHeadNeckSurgeryQuestions,
        },
        {
          'displayName': 'Anesthesia for Orthopedic Surgery (English)',
          'collectionName': 'english-anesthesia-orthopedic-surgery',
          'questions': english_orthopedic.anesthesiaOrthopedicSurgeryQuestions,
        },
        {
          'displayName': 'Anesthesia for Trauma and Emergency Surgery (English)',
          'collectionName': 'english-anesthesia-trauma-emergency-surgery',
          'questions': english_trauma.anesthesiaTraumaEmergencySurgeryQuestions,
        },
        {
          'displayName': 'Maternal and Fetal Physiology and Anesthesia (English)',
          'collectionName': 'english-maternal-fetal-physiology-anesthesia',
          'questions': english_maternal.maternalFetalPhysiologyAnesthesiaQuestions,
        },
        {
          'displayName': 'Obstetric Anesthesia (English)',
          'collectionName': 'english-obstetric-anesthesia',
          'questions': english_obstetric.obstetricAnesthesiaQuestions,
        },
        {
          'displayName': 'Pediatric Anesthesia (English)',
          'collectionName': 'english-pediatric-anesthesia',
          'questions': english_pediatric.pediatricAnesthesiaQuestions,
        },
        {
          'displayName': 'Geriatric Anesthesia (English)',
          'collectionName': 'english-geriatric-anesthesia',
          'questions': english_geriatric.geriatricAnesthesiaQuestions,
        },
        {
          'displayName': 'Ambulatory and Non-Operating Room Anesthesia (English)',
          'collectionName': 'english-ambulatory-non-operating-room-anesthesia',
          'questions': english_ambulatory.ambulatoryNonOperatingRoomAnesthesiaQuestions,
        },
        {
          'displayName': 'Spinal, Epidural, and Caudal Blocks (English)',
          'collectionName': 'english-spinal-epidural-caudal-blocks',
          'questions': english_spinal.spinalEpiduralCaudalBlocksQuestions,
        },
        {
          'displayName': 'Peripheral Nerve Blocks (English)',
          'collectionName': 'english-peripheral-nerve-blocks',
          'questions': english_peripheral.peripheralNerveBlocksQuestions,
        },
        {
          'displayName': 'Chronic Pain Management (English)',
          'collectionName': 'english-chronic-pain-management',
          'questions': english_chronic_pain.chronicPainManagementQuestions,
        },
        {
          'displayName': 'Enhanced Recovery Protocols (English)',
          'collectionName': 'english-enhanced-recovery-protocols',
          'questions': english_enhanced.enhancedRecoveryProtocolsQuestions,
        },
        {
          'displayName': 'Fluid and Electrolyte Disturbances (English)',
          'collectionName': 'english-fluid-electrolyte-disturbances',
          'questions': english_fluid.fluidElectrolyteDisturbancesQuestions,
        },
        {
          'displayName': 'Acid-Base Management (English)',
          'collectionName': 'english-acid-base-management',
          'questions': english_acid_base.acidBaseManagementQuestions,
        },
        {
          'displayName': 'Fluid Management and Blood Component Therapy (English)',
          'collectionName': 'english-fluid-management-blood-component-therapy',
          'questions': english_fluid_management.fluidManagementBloodComponentTherapyQuestions,
        },
        {
          'displayName': 'Thermoregulation, Hypothermia, and Malignant Hyperthermia (English)',
          'collectionName': 'english-thermoregulation-hypothermia-malignant-hyperthermia',
          'questions': english_thermoregulation.thermoregulationHypothermiaMalignantHyperthermiaQuestions,
        },
        {
          'displayName': 'Nutrition in Perioperative and Critical Care (English)',
          'collectionName': 'english-nutrition-perioperative-critical-care',
          'questions': english_nutrition.nutritionPerioperativeCriticalCareQuestions,
        },
        {
          'displayName': 'Anesthetic Complications (English)',
          'collectionName': 'english-anesthetic-complications',
          'questions': english_complications.anestheticComplicationsQuestions,
        },
        {
          'displayName': 'Cardiopulmonary Resuscitation (English)',
          'collectionName': 'english-cardiopulmonary-resuscitation',
          'questions': english_cpr.cardiopulmonaryResuscitationQuestions,
        },
        {
          'displayName': 'Postanesthesia Care (English)',
          'collectionName': 'english-postanesthesia-care',
          'questions': english_postanesthesia.postanesthesiaCareQuestions,
        },
        {
          'displayName': 'Common Clinical Concerns in Critical Care Medicine (English)',
          'collectionName': 'english-common-clinical-concerns-critical-care',
          'questions': english_critical_care.commonClinicalConcernsCriticalCareQuestions,
        },
        {
          'displayName': 'Inhalation Therapy, Mechanical Ventilation, PACU, ICU (English)',
          'collectionName': 'english-inhalation-therapy-mechanical-ventilation-pacu-icu',
          'questions': english_inhalation_therapy.inhalationTherapyMechanicalVentilationPacuIcuQuestions,
        },
        {
          'displayName': 'Safety, Quality, and Performance Improvement (English)',
          'collectionName': 'english-safety-quality-performance-improvement',
          'questions': english_safety.safetyQualityPerformanceImprovementQuestions,
        },
        {
          'displayName': 'Sepsis and ARDS (English)',
          'collectionName': 'english-sepsis-ards',
          'questions': english_sepsis.sepsisArdsCriticalCareQuestions,
        },
        {
          'displayName': 'Coagulation and Anticoagulant Therapy (English)',
          'collectionName': 'english-coagulation-anticoagulant-therapy',
          'questions': english_coagulation.coagulationAnticoagulantTherapyQuestions,
        },
        {
          'displayName': 'ERC 2021 Guidelines (English)',
          'collectionName': 'english-erc-2021-guidelines',
          'questions': english_erc.erc2021GuidelinesQuestions,
        },
        {
          'displayName': 'Algology (English)',
          'collectionName': 'english-algology',
          'questions': english_algology.algologyQuestions,
        },
      ];

      print('🇺🇸 Starting English questions migration...');
      print('Found ${englishCategories.length} English categories');

      for (final category in englishCategories) {
        try {
          final displayName = category['displayName'] as String;
          final collectionName = category['collectionName'] as String;
          final questions = category['questions'] as List<Question>;

          print('Migrating: $displayName (${questions.length} questions)');

          // Kategori bilgilerini kaydet
          await _firestore.collection('quizCategories').doc(collectionName).set({
            'displayName': displayName,
            'collectionName': collectionName,
            'questionCount': questions.length,
            'language': 'english',
            'createdAt': FieldValue.serverTimestamp(),
            'createdBy': _auth.currentUser?.uid ?? 'system',
          });

          // Soruları kaydet
          for (int i = 0; i < questions.length; i++) {
            final question = questions[i];
            await _migrateOrganizedQuestion(
              question.toJson(),
              collectionName,
              displayName,
              i + 1,
              false, // cleanReload = false
            );
          }

          migratedCategories.add(displayName);
          totalMigrated += questions.length;
          print('✅ Migrated: $displayName - ${questions.length} questions');

        } catch (e) {
          print('❌ Error migrating category ${category['displayName']}: $e');
          totalErrors++;
        }
      }

      print('🎉 English migration completed!');
      print('Total migrated: $totalMigrated questions');
      print('Total errors: $totalErrors');
      print('Migrated categories: ${migratedCategories.length}');

      return {
        'totalMigrated': totalMigrated,
        'totalErrors': totalErrors,
        'migratedCategories': migratedCategories,
        'language': 'english',
      };

    } catch (e) {
      print('❌ Error in English migration: $e');
      rethrow;
    }
  }

  // İstatistikler
  Future<Map<String, dynamic>> getOrganizedStatistics() async {
    try {
      final categoriesSnapshot =
          await _firestore.collection('quizCategories').get();
      int totalQuestions = 0;
      int totalCategories = categoriesSnapshot.docs.length;

      Map<String, int> questionsByCategory = {};

      for (final categoryDoc in categoriesSnapshot.docs) {
        final data = categoryDoc.data();
        final displayName = data['displayName'] as String;
        final questionCount = data['questionCount'] as int? ?? 0;

        questionsByCategory[displayName] = questionCount;
        totalQuestions += questionCount;
      }

      return {
        'totalQuestions': totalQuestions,
        'totalCategories': totalCategories,
        'questionsByCategory': questionsByCategory,
      };
    } catch (e) {
      print('Error getting organized statistics: $e');
      return {
        'totalQuestions': 0,
        'totalCategories': 0,
        'questionsByCategory': <String, int>{},
      };
    }
  }
}
