import 'package:ecommerce/feature/profile/domain/entities/profile_entity.dart';

class ProfileModel extends ProfileEntity {
  ProfileModel({
    required super.name,
    required super.email,
    required super.newPassword,
    required super.currentPassword,
  });

  Map<String, dynamic> toJson() => {
    'currentPassword': currentPassword,
    'name': name,
    'email': email,
    'newPassword': newPassword,
  };

  factory ProfileModel.fromJson(Map<String, dynamic> json) {
    return ProfileModel(
      currentPassword: json['currentPassword'],
      name: json['name'],
      email: json['email'],
      newPassword: json['newPassword'],
    );
  }
}
