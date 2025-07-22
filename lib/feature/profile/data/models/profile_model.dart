import 'package:ecommerce/feature/profile/domain/entities/profile_entity.dart';

class ProfileModel extends ProfileEntity {
  ProfileModel({
    required super.name,
    required super.email,
    required super.password,
  });
  factory ProfileModel.fromJson(Map<String, dynamic> json) {
    return ProfileModel(
      name: json['name'],
      email: json['email'],
      password: json['password'],
    );
  }
  Map<String, dynamic> toJson() {
    return {'name': name, 'email': email, 'password': password};
  }
}
