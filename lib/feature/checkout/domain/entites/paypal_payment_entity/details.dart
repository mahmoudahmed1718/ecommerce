import 'package:ecommerce/feature/checkout/domain/entites/order_entity.dart';

class Details {
  String? subtotal;
  String? shipping;
  int? shippingDiscount;

  Details({this.subtotal, this.shipping, this.shippingDiscount});

  Map<String, dynamic> toJson() => {
    'subtotal': subtotal,
    'shipping': shipping,
    'shipping_discount': shippingDiscount,
  };
  factory Details.fromEntity({required OrderEntity orderEntity}) {
    return Details(
      subtotal: orderEntity.cartItems.totalPrice.toString(),
      shipping: orderEntity.calcuteShippingCost().toString(),
      shippingDiscount: orderEntity.calculateShippingDiscount(),
    );
  }
}
