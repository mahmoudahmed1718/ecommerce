import 'package:ecommerce/core/entites/product_entity.dart';

class CartItemEntity {
  final ProductEntity product;
  int countItem;

  CartItemEntity({required this.product, this.countItem = 0});
  num calculateTotalPrice() {
    return product.price * countItem;
  }

  num calculateTotalWeight() {
    return product.unitAmount * countItem;
  }

  increaseCount() {
    countItem++;
  }

  decreaseCount() {
    countItem--;
  }
}
