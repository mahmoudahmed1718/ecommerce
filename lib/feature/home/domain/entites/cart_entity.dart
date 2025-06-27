import 'package:ecommerce/core/entites/product_entity.dart';
import 'package:ecommerce/feature/home/domain/entites/cart_item_entity.dart';

class CartEntity {
  final List<CartItemEntity> carts;

  CartEntity({required this.carts});

  addCartItem(CartItemEntity cartItem) {
    carts.add(cartItem);
  }

  bool isCartItemExist(ProductEntity product) {
    for (var cartItem in carts) {
      if (cartItem.product == product) {
        return true;
      }
    }
    return false;
  }

  CartItemEntity getCartItem(ProductEntity product) {
    for (var cartItem in carts) {
      if (cartItem.product == product) {
        return cartItem;
      }
    }
    return CartItemEntity(product: product, countItem: 1);
  }

  removeCartItem(CartItemEntity cartItem) {
    carts.remove(cartItem);
  }
}
