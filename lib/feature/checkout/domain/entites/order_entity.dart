import 'package:ecommerce/feature/checkout/domain/entites/shpping_address_entity.dart';
import 'package:ecommerce/feature/home/domain/entites/cart_entity.dart';

class OrderEntity {
  final CartEntity cartItems;
  bool? payWithCash;
  final ShppingAddressEntity? shppingAddress;
  OrderEntity({this.payWithCash, required this.cartItems, this.shppingAddress});
}
