import 'package:ecommerce/core/helper/get_currency.dart';
import 'package:ecommerce/feature/home/domain/entites/cart_item_entity.dart';

class Item {
  String? name;
  int? quantity;
  String? price;
  String? currency;

  Item({this.name, this.quantity, this.price, this.currency});

  factory Item.fromEntity({required CartItemEntity item}) {
    return Item(
      name: item.product.name,
      quantity: item.countItem,
      price: item.product.price.toString(),
      currency: getCurrency(),
    );
  }

  Map<String, dynamic> toJson() => {
    'name': name,
    'quantity': quantity,
    'price': price,
    'currency': currency,
  };
}
