import 'package:ecommerce/core/entites/product_entity.dart';
import 'package:ecommerce/feature/home/domain/entites/cart_item_entity.dart';
import 'package:equatable/equatable.dart';

class CartEntity extends Equatable {
  final List<CartItemEntity> carts;

  const CartEntity({required this.carts});

  totalPrice() {
    double totalPrice = 0;

    for (var cartItem in carts) {
      totalPrice += cartItem.calculateTotalPrice();
    }
    return totalPrice;
  }

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

  @override
  List<Object?> get props => [ProductEntity];
}
