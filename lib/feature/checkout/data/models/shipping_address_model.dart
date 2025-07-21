import 'package:ecommerce/feature/checkout/domain/entites/shpping_address_entity.dart';

class ShippingAddressModel extends ShppingAddressEntity {
  ShippingAddressModel({
    required super.name,
    required super.address,
    required super.city,
    required super.email,
    required super.country,
    required super.addressDetails,
    required super.phoneNumber,
  });
  factory ShippingAddressModel.fromEnity(ShppingAddressEntity entity) {
    return ShippingAddressModel(
      name: entity.name,
      address: entity.address,
      city: entity.city,
      email: entity.email,
      country: entity.country,
      addressDetails: entity.addressDetails,
      phoneNumber: entity.phoneNumber,
    );
  }
  toJson() {
    return {
      'name': name,
      'address': address,
      'city': city,
      'email': email,
      'country': country,
      'addressDetails': addressDetails,
      'phoneNumber': phoneNumber,
    };
  }
}
