import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:ecommerce/core/services/database_service.dart';

class FirestoreService implements DatabaseService {
  @override
  Future<void> addData({
    required String path,
    required Map<String, dynamic> data,
  }) async {
    await FirebaseFirestore.instance.collection(path).add(data);
  }
}
