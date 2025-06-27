import 'package:ecommerce/feature/home/domain/entites/cart_item_entity.dart';

class CartEntity {
  final List<CartItemEntity> carts;

  CartEntity({required this.carts});

  addCartItem(CartItemEntity cartItem) {
    carts.add(cartItem);
  }
}
