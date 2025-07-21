import 'package:ecommerce/feature/checkout/domain/entites/shpping_address_entity.dart';
import 'package:ecommerce/feature/home/domain/entites/cart_entity.dart';

class OrderEntity {
  final String userId;
  final CartEntity cartItems;
  bool? payWithCash;
  final ShppingAddressEntity? shppingAddress;
  OrderEntity({
    this.payWithCash,
    required this.cartItems,
    this.shppingAddress,
    required this.userId,
  });

  calcuteShippingCost() {
    if (payWithCash!) {
      return 30;
    } else {
      return 0;
    }
  }

  calculateShippingDiscount() {
    return 0;
  }

  calcuateTotalPriceAfterDiscountandShipping() {}
  String getCurrency() {
    return 'EGP';
  }
}
