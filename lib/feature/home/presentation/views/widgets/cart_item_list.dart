import 'package:ecommerce/feature/home/domain/entites/cart_item_entity.dart';
import 'package:ecommerce/feature/home/presentation/views/widgets/cart_item.dart';
import 'package:flutter/material.dart';

class CartItemList extends StatelessWidget {
  const CartItemList({super.key, required this.cartItmes});
  final List<CartItemEntity> cartItmes;
  @override
  Widget build(BuildContext context) {
    return SliverList.separated(
      itemCount: cartItmes.length,
      separatorBuilder:
          (context, index) => Divider(height: 22, color: Color(0XFFF1F1F5)),
      itemBuilder: (context, index) {
        return CartItem(cartItemEntity: cartItmes[index]);
      },
    );
  }
}
