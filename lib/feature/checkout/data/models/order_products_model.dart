import 'package:ecommerce/feature/home/domain/entites/cart_item_entity.dart';

class OrderProductsModel {
  final String name;
  final String imageUrl;
  final String code;
  final double price;
  final int quantity;

  OrderProductsModel({
    required this.name,
    required this.imageUrl,
    required this.code,
    required this.price,
    required this.quantity,
  });
  factory OrderProductsModel.fromEntity(CartItemEntity entity) {
    return OrderProductsModel(
      name: entity.product.name,
      imageUrl: entity.product.imageUrl ?? '',
      code: entity.product.code,
      price: entity.product.price,
      quantity: entity.countItem,
    );
  }
}
