import 'dart:convert';

import 'package:ecommerce/constants.dart';
import 'package:ecommerce/core/services/shared_prefernce_singlton.dart';
import 'package:ecommerce/feature/auth/data/models/user_model.dart';
import 'package:ecommerce/feature/auth/domain/entities/user_entity.dart';

UserEntity getUserData() {
  var jsonString = SharedPreferenceSingleton.getString(kUserData);
  var userentity = UserModel.fromJson(jsonDecode(jsonString));
  return userentity;
}
