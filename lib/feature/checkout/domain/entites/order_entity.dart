import 'package:ecommerce/feature/checkout/domain/entites/shpping_address_entity.dart';
import 'package:ecommerce/feature/home/domain/entites/cart_item_entity.dart';

class OrderEntity {
  final List<CartItemEntity> cartItems;
  final bool payWithCash;
  final ShppingAddressEntity shppingAddress;
  OrderEntity({
    required this.shppingAddress,
    required this.cartItems,
    required this.payWithCash,
  });
}
