import 'package:ecommerce/core/repo/product_repo/product_repo.dart';

class CartItemEntity {
  final ProductRepo product;
  int countItem;

  CartItemEntity({required this.product, this.countItem = 0});
}
