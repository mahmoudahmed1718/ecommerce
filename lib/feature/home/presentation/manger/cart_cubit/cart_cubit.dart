import 'package:bloc/bloc.dart';
import 'package:ecommerce/feature/home/domain/entites/cart_entity.dart';
import 'package:ecommerce/feature/home/domain/entites/cart_item_entity.dart';
import 'package:meta/meta.dart';

part 'cart_state.dart';

class CartCubit extends Cubit<CartState> {
  CartEntity cartEntity = CartEntity(carts: []);
  CartCubit() : super(CartInitial());
  void addCartItem(CartItemEntity cartItem) {
    cartEntity.addCartItem(cartItem);
    emit(CartItemAdd());
  }
}
