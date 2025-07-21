import 'package:ecommerce/feature/checkout/domain/entites/order_entity.dart';

import 'amount.dart';
import 'item_list.dart';

class PaypalPaymentEntity {
  Amount? amount;
  String? description;
  ItemList? itemList;

  PaypalPaymentEntity({this.amount, this.description, this.itemList});

  factory PaypalPaymentEntity.fromEntities({required OrderEntity entity}) {
    return PaypalPaymentEntity(
      amount: Amount.fromEntity(orderEntity: entity),
      description: 'payment for order',
      itemList: ItemList.fromEntities(entity.cartItems.carts),
    );
  }
  toJson() {
    return {
      'amount': amount?.toJson(),
      'description': description,
      'item_list': itemList?.toJson(),
    };
  }
}
