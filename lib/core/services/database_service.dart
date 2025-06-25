import 'package:ecommerce/core/services/firestore_service.dart';

abstract class DatabaseService {
  DatabaseService(FirestoreService firestoreService);

  Future<void> addData({
    required String path,
    required Map<String, dynamic> data,
    String? documentId,
  });
  Future<Map<String, dynamic>> getData({
    required String path,
    required String documentId,
  });
  Future<List<Map<String, dynamic>>> getDataList({required String path});
  Future<bool> checkUserExists({
    required String path,
    required String documentId,
  });
}
