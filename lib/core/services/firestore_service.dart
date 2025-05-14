import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:ecommerce/core/services/database_service.dart';
import 'package:ecommerce/feature/auth/data/models/user_model.dart';
import 'package:ecommerce/feature/auth/domain/entities/user_entity.dart';

class FirestoreService implements DatabaseService {
  @override
  Future<void> addData({
    required String path,
    required Map<String, dynamic> data,
  }) async {
    await FirebaseFirestore.instance.collection(path).add(data);
  }

  @override
  Future<UserEntity> getData({
    required String path,
    required String documentId,
  }) async {
    var data =
        await FirebaseFirestore.instance.collection(path).doc(documentId).get();
    return UserModel.fromJson(data.data() as Map<String, dynamic>);
  }
}
