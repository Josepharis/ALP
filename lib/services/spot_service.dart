import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:flutter/foundation.dart';
import '../models/spot_info.dart';

class SpotService {
  final FirebaseFirestore _firestore = FirebaseFirestore.instance;
  final String _collection = 'spot_info';

  // Get all spot items by language (Stream)
  Stream<List<SpotItem>> getSpotItemsByLanguage(String language) {
    return _firestore
        .collection(_collection)
        .where('language', isEqualTo: language)
        .snapshots()
        .map((snapshot) {
      final items = snapshot.docs.map((doc) {
        return SpotItem.fromMap(doc.id, doc.data());
      }).toList();
      // Client-side sort to avoid index requirement
      items.sort((a, b) => b.createdAt.compareTo(a.createdAt));
      return items;
    });
  }

  // Get all spot items by language (Future)
  Future<List<SpotItem>> getAllSpotItems(String language) async {
    final snapshot = await _firestore
        .collection(_collection)
        .where('language', isEqualTo: language)
        .get();
    return snapshot.docs.map((doc) {
      return SpotItem.fromMap(doc.id, doc.data());
    }).toList();
  }

  // Get spot items by category and language
  Stream<List<SpotItem>> getSpotItemsByCategory(String category, String language) {
    return _firestore
        .collection(_collection)
        .where('categoryName', isEqualTo: category)
        .where('language', isEqualTo: language)
        .snapshots()
        .map((snapshot) {
      final items = snapshot.docs.map((doc) {
        return SpotItem.fromMap(doc.id, doc.data());
      }).toList();
      // Client-side sort to avoid index requirement
      items.sort((a, b) => b.createdAt.compareTo(a.createdAt));
      return items;
    });
  }

  // Add new spot item
  Future<void> addSpotItem(SpotItem item) async {
    try {
      await _firestore.collection(_collection).add(item.toMap());
    } catch (e) {
      debugPrint('Error adding spot item: $e');
      rethrow;
    }
  }

  // Update spot item
  Future<void> updateSpotItem(String id, SpotItem item) async {
    try {
      await _firestore.collection(_collection).doc(id).update(item.toMap());
    } catch (e) {
      debugPrint('Error updating spot item: $e');
      rethrow;
    }
  }

  // Delete spot item
  Future<void> deleteSpotItem(String id) async {
    try {
      await _firestore.collection(_collection).doc(id).delete();
    } catch (e) {
      debugPrint('Error deleting spot item: $e');
      rethrow;
    }
  }

  // Get all unique categories names from Firestore
  Future<List<String>> getAllCategoryNames(String language) async {
    try {
      final snapshot = await _firestore
          .collection(_collection)
          .where('language', isEqualTo: language)
          .get();
      
      final Set<String> categories = {};
      for (var doc in snapshot.docs) {
        final category = doc.data()['categoryName'];
        if (category != null) {
          categories.add(category as String);
        }
      }
      
      return categories.toList()..sort();
    } catch (e) {
      debugPrint('Error getting category names: $e');
      return [];
    }
  }
}
