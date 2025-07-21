import 'package:ecommerce/feature/checkout/domain/entites/order_entity.dart';

import 'details.dart';

class Amount {
  String? total;
  String? currency;
  Details? details;

  Amount({this.total, this.currency, this.details});

  Map<String, dynamic> toJson() => {
    'total': total,
    'currency': currency,
    'details': details?.toJson(),
  };
  factory Amount.fromEntity({required OrderEntity orderEntity}) {
    return Amount(
      total:
          orderEntity.calcuateTotalPriceAfterDiscountandShipping().toString(),
      currency: orderEntity.getCurrency(),
      details: Details.fromEntity(orderEntity: orderEntity),
    );
  }
}
