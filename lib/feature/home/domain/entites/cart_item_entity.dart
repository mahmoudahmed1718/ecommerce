import 'package:ecommerce/core/repo/product_repo/product_repo.dart';

class CartItemEntity {
  final ProductRepo product;
  int countItem = 0;

  CartItemEntity({required this.product, this.countItem = 0});
}
