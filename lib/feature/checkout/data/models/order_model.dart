import 'package:ecommerce/feature/checkout/data/models/order_products_model.dart';
import 'package:ecommerce/feature/checkout/data/models/shipping_address_model.dart';
import 'package:ecommerce/feature/checkout/domain/entites/order_entity.dart';

class OrderModel {
  final String userId;
  final double totalPrice;
  final ShippingAddressModel shippingAddress;
  final List<OrderProductsModel> orderProducts;
  final String paymentMethod;

  OrderModel({
    required this.userId,
    required this.totalPrice,
    required this.shippingAddress,
    required this.orderProducts,
    required this.paymentMethod,
  });

  factory OrderModel.fromEntity(OrderEntity entity) {
    return OrderModel(
      userId: entity.userId,
      totalPrice: entity.cartItems.totalPrice(),
      shippingAddress: ShippingAddressModel.fromEnity(entity.shppingAddress!),
      orderProducts:
          entity.cartItems.carts
              .map((item) => OrderProductsModel.fromEntity(item))
              .toList(),
      paymentMethod:
          entity.payWithCash == true ? 'Cash on Delivery' : 'Online Payment',
    );
  }

  toJson() {
    return {
      'userId': userId,
      'totalPrice': totalPrice,
      'shippingAddress': shippingAddress.toJson(),
      'orderProducts': orderProducts.map((e) => e.tojson()).toList(),
      'paymentMethod': paymentMethod,
    };
  }
}
