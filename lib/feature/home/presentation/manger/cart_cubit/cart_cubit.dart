import 'package:bloc/bloc.dart';
import 'package:ecommerce/core/entites/product_entity.dart';
import 'package:ecommerce/feature/home/domain/entites/cart_entity.dart';
import 'package:ecommerce/feature/home/domain/entites/cart_item_entity.dart';
import 'package:meta/meta.dart';

part 'cart_state.dart';

class CartCubit extends Cubit<CartState> {
  CartEntity cartEntity = CartEntity(carts: []);
  CartCubit() : super(CartInitial());
  void addProduct(ProductEntity product) {
    bool isExist = cartEntity.isCartItemExist(product);
    var cartItem = cartEntity.getCartItem(product);
    if (isExist) {
      cartItem.increaseCount();
    } else {
      cartEntity.addCartItem(cartItem);
    }
    emit(CartProductAdd());
  }

  void removeCartItem(CartItemEntity cartItem) {
    cartEntity.removeCartItem(cartItem);
    emit(CartProductRemove());
  }
}
