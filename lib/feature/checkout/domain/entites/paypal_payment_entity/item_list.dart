import 'package:ecommerce/feature/home/domain/entites/cart_item_entity.dart';

import 'item.dart';

class ItemList {
  List<Item>? items;

  ItemList({this.items});
  factory ItemList.fromEntities(List<CartItemEntity> itemEntities) {
    return ItemList(
      items: itemEntities.map((item) => Item.fromEntity(item: item)).toList(),
    );
  }

  Map<String, dynamic> toJson() => {
    'items': items?.map((e) => e.toJson()).toList(),
  };
}
