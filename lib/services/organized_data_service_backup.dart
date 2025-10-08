import 'dart:math';
import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:firebase_auth/firebase_auth.dart';
import '../models/question.dart';

// Data imports - Gerçek quiz dosyaları
import '../data/anesthesia_application_questions.dart';
import '../data/respiratory_system_questions.dart';
import '../data/cardiovascular_monitoring_questions.dart';
import '../data/pharmacological_principles_questions.dart';
import '../data/operating_room_environment_questions.dart';
import '../data/non_cardiovascular_monitoring_questions.dart';
import '../data/anesthesia_workstation_questions.dart';

// English data imports
import '../data/english/obstetric_anesthesia_questions.dart' as english_obstetric;
import '../data/english/geriatric_anesthesia_questions.dart' as english_geriatric;
import '../data/english/peripheral_nerve_blocks_questions.dart' as english_peripheral;
import '../data/english/enhanced_recovery_protocols_questions.dart' as english_eras;
import '../data/english/fluid_electrolyte_disturbances_questions.dart' as english_fluid;
import '../data/english/fluid_management_blood_component_therapy_questions.dart' as english_blood;
import '../data/english/nutrition_perioperative_critical_care_questions.dart' as english_nutrition;
import '../data/english/cardiopulmonary_resuscitation_questions.dart' as english_cpr;
import '../data/english/common_clinical_concerns_critical_care_questions.dart' as english_critical_care;
import '../data/english/inhalation_therapy_mechanical_ventilation_pacu_icu_questions.dart' as english_ventilation;
import '../data/english/safety_quality_performance_improvement_questions.dart' as english_safety;
import '../data/english/hypotensive_agents_questions.dart' as english_hypotensive;
import '../data/english/airway_management_questions.dart' as english_airway;
import '../data/english/local_anesthetics_questions.dart' as english_local;
import '../data/english/analgesic_agents_questions.dart' as english_analgesic;
import '../data/english/intravenous_anesthetics_questions.dart' as english_iv_anesthetics;
import '../data/english/inhalation_anesthetics_questions.dart' as english_inhalation;
import '../data/english/cardiovascular_monitoring_questions.dart' as english_cv_monitoring;
import '../data/english/pharmacological_principles_questions.dart' as english_pharm;
import '../data/english/operating_room_environment_questions.dart' as english_or_env;
import '../data/english/noncardiovascular_monitoring_questions.dart' as english_noncv_monitoring;
import '../data/english/anesthesia_workstation_questions.dart' as english_workstation;
import '../data/english/cardiovascular_physiology_anesthesia_questions.dart' as english_cv_phys;
import '../data/english/respiratory_physiology_anesthesia_questions.dart' as english_resp_phys;
import '../data/english/neurophysiology_anesthesia_questions.dart' as english_neuro_phys;
import '../data/english/hepatic_physiology_anesthesia_questions.dart' as english_hepatic_phys;
import '../data/english/kidney_physiology_anesthesia_questions.dart' as english_kidney_phys;
import '../data/english/maternal_fetal_physiology_anesthesia_questions.dart' as english_maternal_phys;
import '../data/english/pediatric_anesthesia_questions.dart' as english_pediatric;
import '../data/english/postanesthesia_care_questions.dart' as english_pacu;
import '../data/english/thermoregulation_hypothermia_malignant_hyperthermia_questions.dart' as english_thermo;
import '../data/english/spinal_epidural_caudal_blocks_questions.dart' as english_blocks;
import '../data/english/anesthetic_complications_questions.dart' as english_complications;
import '../data/english/chronic_pain_management_questions.dart' as english_pain;
import '../data/english/coagulation_anticoagulant_therapy_questions.dart' as english_coag;
import '../data/english/ambulatory_non_operating_room_anesthesia_questions.dart' as english_ambulatory;
import '../data/english/anesthesia_history_questions.dart' as english_history;
import '../data/english/breathing_systems_questions.dart' as english_breathing;
import '../data/english/erc_2021_guidelines_questions.dart' as english_erc;

import '../data/auxiliary_drugs_questions.dart';
import '../data/local_anesthetics_questions.dart';
import '../data/anticholinergic_drugs_questions.dart';
import '../data/adrenergic_drugs_questions.dart';
import '../data/cholinesterase_inhibitors_questions.dart';
import '../data/neuromuscular_blocking_agents_questions.dart';
import '../data/analgesic_agents_questions.dart';
import '../data/intravenous_anesthetics_questions.dart';
import '../data/inhalation_anesthetics_questions.dart';

// Additional data imports - Tüm 24 kategori
import '../data/airway_management_questions.dart';
import '../data/cardiovascular_physiology_questions.dart';
import '../data/cardiovascular_surgery_questions.dart';
import '../data/respiratory_diseases_questions.dart';
import '../data/respiratory_physiology_questions.dart';
import '../data/postoperative_care_mechanical_ventilation_questions.dart';
import '../data/neurosurgery_anesthesia_questions.dart';
import '../data/hepatic_physiology_anesthesia_questions.dart';
import '../data/obstetric_anesthesia_questions.dart';
import '../data/acid_base_management_questions.dart';
import '../data/liver_disease_anesthesia_questions.dart';
import '../data/neurophysiology_anesthesia_questions.dart'; // Added
import '../data/perioperative_intensive_care_nutrition_questions.dart'; // Added
import '../data/fluid_electrolyte_imbalance_management_questions.dart'; // Added

// Eksik 24 kategori import'ları
import '../data/cardiopulmonary_resuscitation_questions.dart';
import '../data/intensive_care_problems_questions.dart';
import '../data/outpatient_anesthesia_questions.dart';
import '../data/pediatric_anesthesia_questions.dart';
import '../data/postanesthetic_care_questions.dart';
import '../data/thermoregulation_hypothermia_malignant_hyperthermia_questions.dart';
import '../data/thoracic_surgery_anesthesia_questions.dart';
import '../data/fluid_management_blood_products_questions.dart';
import '../data/spinal_epidural_caudal_blocks_questions.dart';
import '../data/safety_quality_performance_improvement_questions.dart';
import '../data/renal_physiology_anesthesia_questions.dart';
import '../data/ophthalmic_anesthesia_questions.dart';
import '../data/genitourinary_anesthesia_questions.dart';
import '../data/anesthesia_complications_questions.dart';
import '../data/enhanced_recovery_protocols_questions.dart';
import '../data/orthopedic_anesthesia_questions.dart';
import '../data/trauma_emergency_anesthesia_questions.dart';
import '../data/geriatric_anesthesia_questions.dart';
import '../data/endocrine_diseases_anesthesia_questions.dart';
import '../data/neuromuscular_diseases_anesthesia_questions.dart';
import '../data/neurological_psychiatric_anesthesia_questions.dart';
import '../data/otolaryngology_head_neck_surgery_questions.dart';
import '../data/pain_management_questions.dart';
import '../data/hypotensive_agents_questions.dart';

class OrganizedDataService {
  final FirebaseFirestore _firestore = FirebaseFirestore.instance;
  final FirebaseAuth _auth = FirebaseAuth.instance;

  // Tüm soruları ve kategorileri toplu sil (Batch limit aşımı ile)
  Future<void> clearAllData() async {
    try {
      
      // 1. Tüm quiz kategorilerini sil
      await _deleteCollectionInBatches('quizCategories');
      
      // 2. Tüm soru koleksiyonlarını sil
      await _deleteCollectionInBatches('questions');
      
      // 3. Kısa bekleme
      await Future.delayed(const Duration(seconds: 1));
      
    } catch (e) {
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
      
      
      final batch = _firestore.batch();
      for (final doc in snapshot.docs) {
        batch.delete(doc.reference);
      }
      
      await batch.commit();
      totalDeleted += snapshot.docs.length;
      
      // Eğer batch size'dan az document varsa, daha fazla yok
      if (snapshot.docs.length < batchSize) {
        hasMore = false;
      }
      
      // Rate limiting için kısa bekleme
      await Future.delayed(const Duration(milliseconds: 100));
    }
    
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
      'questions': english_eras.enhancedRecoveryProtocolsQuestions,
    },
    {
      'displayName': 'Fluid & Electrolyte Disturbances (English)',
      'collectionName': 'fluid-electrolyte-disturbances-english',
      'questions': english_fluid.fluidElectrolyteDisturbancesQuestions,
    },
    {
      'displayName': 'Fluid Management & Blood Component Therapy (English)',
      'collectionName': 'fluid-management-blood-component-therapy-english',
      'questions': english_blood.fluidManagementBloodComponentTherapyQuestions,
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
      'questions': english_ventilation.inhalationTherapyMechanicalVentilationPacuIcuQuestions,
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
          'questions': english_iv_anesthetics.intravenousAnestheticsQuestions,
        },
        {
          'displayName': 'Inhalation Anesthetics (English)',
          'collectionName': 'english-inhalation-anesthetics',
          'questions': english_inhalation.inhalationAnestheticsQuestions,
        },
        {
          'displayName': 'Cardiovascular Monitoring (English)',
          'collectionName': 'english-cardiovascular-monitoring',
          'questions': english_cv_monitoring.cardiovascularMonitoringQuestions,
        },
        {
          'displayName': 'Pharmacological Principles (English)',
          'collectionName': 'english-pharmacological-principles',
          'questions': english_pharm.pharmacologicalPrinciplesQuestions,
        },
        {
          'displayName': 'Operating Room Environment (English)',
          'collectionName': 'english-operating-room-environment',
          'questions': english_or_env.operatingRoomEnvironmentQuestions,
        },
        {
          'displayName': 'Non-Cardiovascular Monitoring (English)',
          'collectionName': 'english-non-cardiovascular-monitoring',
          'questions': english_noncv_monitoring.noncardiovascularMonitoringQuestions,
        },
        {
          'displayName': 'Anesthesia Workstation (English)',
          'collectionName': 'english-anesthesia-workstation',
          'questions': english_workstation.anesthesiaWorkstationQuestions,
        },
        {
          'displayName': 'Cardiovascular Physiology (English)',
          'collectionName': 'english-cardiovascular-physiology',
          'questions': english_cv_phys.cardiovascularPhysiologyAnesthesiaQuestions,
        },
        {
          'displayName': 'Respiratory Physiology (English)',
          'collectionName': 'english-respiratory-physiology',
          'questions': english_resp_phys.respiratoryPhysiologyAnesthesiaQuestions,
        },
        {
          'displayName': 'Neurophysiology (English)',
          'collectionName': 'english-neurophysiology',
          'questions': english_neuro_phys.neurophysiologyAnesthesiaQuestions,
        },
        {
          'displayName': 'Hepatic Physiology (English)',
          'collectionName': 'english-hepatic-physiology',
          'questions': english_hepatic_phys.hepaticPhysiologyAnesthesiaQuestions,
        },
        {
          'displayName': 'Kidney Physiology (English)',
          'collectionName': 'english-kidney-physiology',
          'questions': english_kidney_phys.kidneyPhysiologyAnesthesiaQuestions,
        },
        {
          'displayName': 'Maternal Fetal Physiology (English)',
          'collectionName': 'english-maternal-fetal-physiology',
          'questions': english_maternal_phys.maternalFetalPhysiologyAnesthesiaQuestions,
        },
        {
          'displayName': 'Pediatric Anesthesia (English)',
          'collectionName': 'english-pediatric-anesthesia',
          'questions': english_pediatric.pediatricAnesthesiaQuestions,
        },
        {
          'displayName': 'Postanesthesia Care (English)',
          'collectionName': 'english-postanesthesia-care',
          'questions': english_pacu.postanesthesiaCareQuestions,
        },
        {
          'displayName': 'Thermoregulation (English)',
          'collectionName': 'english-thermoregulation',
          'questions': english_thermo.thermoregulationHypothermiaMalignantHyperthermiaQuestions,
        },
        {
          'displayName': 'Spinal Epidural Blocks (English)',
          'collectionName': 'english-spinal-epidural-blocks',
          'questions': english_blocks.spinalEpiduralCaudalBlocksQuestions,
        },
        {
          'displayName': 'Anesthetic Complications (English)',
          'collectionName': 'english-anesthetic-complications',
          'questions': english_complications.anestheticComplicationsQuestions,
        },
        {
          'displayName': 'Chronic Pain Management (English)',
          'collectionName': 'english-chronic-pain-management',
          'questions': english_pain.chronicPainManagementQuestions,
        },
        {
          'displayName': 'Coagulation Therapy (English)',
          'collectionName': 'english-coagulation-therapy',
          'questions': english_coag.coagulationAnticoagulantTherapyQuestions,
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


        if (questions is List && questions.isNotEmpty) {
          // Önce category meta bilgisini kaydet
          await _createCategoryMeta(
            collectionName,
            displayName,
            questions.length,
          );


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
              totalErrors++;
            }
          }
          migratedCategories.add(displayName);
        } else {
        }
      }

      return {
        'success': true,
        'totalMigrated': totalMigrated,
        'totalErrors': totalErrors,
        'categories': migratedCategories,
      };
    } catch (e) {
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
          // Question already exists, skipping
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
      return false;
    }
  }

  // Türkçe soruları migrate et
  Future<Map<String, dynamic>> migrateTurkishQuestions() async {
    try {
      int totalMigrated = 0;
      int totalErrors = 0;
      List<String> migratedCategories = [];

      // Türkçe kategoriler - sadece ana data klasöründeki dosyalar
      final List<Map<String, dynamic>> turkishCategories = [
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
          'displayName': 'Kardiyovasküler Monitörizasyon',
          'collectionName': 'kardiyovaskuler-monitorizasyon',
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
          'displayName': 'Non-Kardiyovasküler Monitörizasyon',
          'collectionName': 'non-kardiyovaskuler-monitorizasyon',
          'questions': nonCardiovascularMonitoringQuestions,
        },
        {
          'displayName': 'Anestezi İstasyonu',
          'collectionName': 'anestezi-istasyonu',
          'questions': anesthesiaWorkstationQuestions,
        },
      ];


      for (final category in turkishCategories) {
        try {
          final displayName = category['displayName'] as String;
          final collectionName = category['collectionName'] as String;
          final questions = category['questions'] as List<Question>;


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

        } catch (e) {
          totalErrors++;
        }
      }


      return {
        'totalMigrated': totalMigrated,
        'totalErrors': totalErrors,
        'migratedCategories': migratedCategories,
        'language': 'turkish',
      };

    } catch (e) {
      rethrow;
    }
  }

  // İngilizce soruları migrate et
  Future<Map<String, dynamic>> migrateEnglishQuestions() async {
    try {
      int totalMigrated = 0;
      int totalErrors = 0;
      List<String> migratedCategories = [];

      // İngilizce kategoriler - sadece english klasöründeki dosyalar
      final List<Map<String, dynamic>> englishCategories = [
        {
          'displayName': 'Obstetric Anesthesia (English)',
          'collectionName': 'english-obstetric-anesthesia',
          'questions': english_obstetric.obstetricAnesthesiaQuestions,
        },
        {
          'displayName': 'Geriatric Anesthesia (English)',
          'collectionName': 'english-geriatric-anesthesia',
          'questions': english_geriatric.geriatricAnesthesiaQuestions,
        },
        {
          'displayName': 'Peripheral Nerve Blocks (English)',
          'collectionName': 'english-peripheral-nerve-blocks',
          'questions': english_peripheral.peripheralNerveBlocksQuestions,
        },
        {
          'displayName': 'Enhanced Recovery Protocols (English)',
          'collectionName': 'english-enhanced-recovery-protocols',
          'questions': english_eras.enhancedRecoveryProtocolsQuestions,
        },
        {
          'displayName': 'Fluid & Electrolyte Disturbances (English)',
          'collectionName': 'english-fluid-electrolyte-disturbances',
          'questions': english_fluid.fluidElectrolyteDisturbancesQuestions,
        },
        {
          'displayName': 'Fluid Management & Blood Component Therapy (English)',
          'collectionName': 'english-fluid-management-blood-component-therapy',
          'questions': english_blood.fluidManagementBloodComponentTherapyQuestions,
        },
        {
          'displayName': 'Nutrition in Perioperative and Critical Care (English)',
          'collectionName': 'english-nutrition-perioperative-critical-care',
          'questions': english_nutrition.nutritionPerioperativeCriticalCareQuestions,
        },
        {
          'displayName': 'Cardiopulmonary Resuscitation (English)',
          'collectionName': 'english-cardiopulmonary-resuscitation',
          'questions': english_cpr.cardiopulmonaryResuscitationQuestions,
        },
        {
          'displayName': 'Common Clinical Concerns in Critical Care Medicine (English)',
          'collectionName': 'english-common-clinical-concerns-critical-care',
          'questions': english_critical_care.commonClinicalConcernsCriticalCareQuestions,
        },
        {
          'displayName': 'Inhalation Therapy, Mechanical Ventilation, PACU, ICU (English)',
          'collectionName': 'english-inhalation-therapy-mechanical-ventilation-pacu-icu',
          'questions': english_ventilation.inhalationTherapyMechanicalVentilationPacuIcuQuestions,
        },
        {
          'displayName': 'Safety, Quality, and Performance Improvement (English)',
          'collectionName': 'english-safety-quality-performance-improvement',
          'questions': english_safety.safetyQualityPerformanceImprovementQuestions,
        },
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
          'questions': english_iv_anesthetics.intravenousAnestheticsQuestions,
        },
        {
          'displayName': 'Inhalation Anesthetics (English)',
          'collectionName': 'english-inhalation-anesthetics',
          'questions': english_inhalation.inhalationAnestheticsQuestions,
        },
        {
          'displayName': 'Cardiovascular Monitoring (English)',
          'collectionName': 'english-cardiovascular-monitoring',
          'questions': english_cv_monitoring.cardiovascularMonitoringQuestions,
        },
        {
          'displayName': 'Pharmacological Principles (English)',
          'collectionName': 'english-pharmacological-principles',
          'questions': english_pharm.pharmacologicalPrinciplesQuestions,
        },
        {
          'displayName': 'Operating Room Environment (English)',
          'collectionName': 'english-operating-room-environment',
          'questions': english_or_env.operatingRoomEnvironmentQuestions,
        },
        {
          'displayName': 'Noncardiovascular Monitoring (English)',
          'collectionName': 'english-noncardiovascular-monitoring',
          'questions': english_noncv_monitoring.noncardiovascularMonitoringQuestions,
        },
        {
          'displayName': 'Anesthesia Workstation (English)',
          'collectionName': 'english-anesthesia-workstation',
          'questions': english_workstation.anesthesiaWorkstationQuestions,
        },
        {
          'displayName': 'Cardiovascular Physiology and Anesthesia (English)',
          'collectionName': 'english-cardiovascular-physiology-anesthesia',
          'questions': english_cv_phys.cardiovascularPhysiologyAnesthesiaQuestions,
        },
        {
          'displayName': 'Respiratory Physiology and Anesthesia (English)',
          'collectionName': 'english-respiratory-physiology-anesthesia',
          'questions': english_resp_phys.respiratoryPhysiologyAnesthesiaQuestions,
        },
        {
          'displayName': 'Neurophysiology and Anesthesia (English)',
          'collectionName': 'english-neurophysiology-anesthesia',
          'questions': english_neuro_phys.neurophysiologyAnesthesiaQuestions,
        },
        {
          'displayName': 'Hepatic Physiology and Anesthesia (English)',
          'collectionName': 'english-hepatic-physiology-anesthesia',
          'questions': english_hepatic_phys.hepaticPhysiologyAnesthesiaQuestions,
        },
        {
          'displayName': 'Kidney Physiology and Anesthesia (English)',
          'collectionName': 'english-kidney-physiology-anesthesia',
          'questions': english_kidney_phys.kidneyPhysiologyAnesthesiaQuestions,
        },
        {
          'displayName': 'Maternal and Fetal Physiology and Anesthesia (English)',
          'collectionName': 'english-maternal-fetal-physiology-anesthesia',
          'questions': english_maternal_phys.maternalFetalPhysiologyAnesthesiaQuestions,
        },
        {
          'displayName': 'Pediatric Anesthesia (English)',
          'collectionName': 'english-pediatric-anesthesia',
          'questions': english_pediatric.pediatricAnesthesiaQuestions,
        },
        {
          'displayName': 'Postanesthesia Care (English)',
          'collectionName': 'english-postanesthesia-care',
          'questions': english_pacu.postanesthesiaCareQuestions,
        },
        {
          'displayName': 'Thermoregulation, Hypothermia, and Malignant Hyperthermia (English)',
          'collectionName': 'english-thermoregulation-hypothermia-malignant-hyperthermia',
          'questions': english_thermo.thermoregulationHypothermiaMalignantHyperthermiaQuestions,
        },
        {
          'displayName': 'Spinal, Epidural, and Caudal Blocks (English)',
          'collectionName': 'english-spinal-epidural-caudal-blocks',
          'questions': english_blocks.spinalEpiduralCaudalBlocksQuestions,
        },
        {
          'displayName': 'Anesthetic Complications (English)',
          'collectionName': 'english-anesthetic-complications',
          'questions': english_complications.anestheticComplicationsQuestions,
        },
        {
          'displayName': 'Chronic Pain Management (English)',
          'collectionName': 'english-chronic-pain-management',
          'questions': english_pain.chronicPainManagementQuestions,
        },
        {
          'displayName': 'Coagulation and Anticoagulant Therapy (English)',
          'collectionName': 'english-coagulation-anticoagulant-therapy',
          'questions': english_coag.coagulationAnticoagulantTherapyQuestions,
        },
        {
          'displayName': 'Ambulatory and Non-Operating Room Anesthesia (English)',
          'collectionName': 'english-ambulatory-non-operating-room-anesthesia',
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
      ];


      for (final category in englishCategories) {
        try {
          final displayName = category['displayName'] as String;
          final collectionName = category['collectionName'] as String;
          final questions = category['questions'] as List<Question>;


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

        } catch (e) {
          totalErrors++;
        }
      }


      return {
        'totalMigrated': totalMigrated,
        'totalErrors': totalErrors,
        'migratedCategories': migratedCategories,
        'language': 'english',
      };

    } catch (e) {
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
      return {
        'totalQuestions': 0,
        'totalCategories': 0,
        'questionsByCategory': <String, int>{},
      };
    }
  }
}
