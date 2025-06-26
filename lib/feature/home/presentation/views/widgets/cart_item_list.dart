import 'package:ecommerce/feature/home/presentation/views/widgets/cart_item.dart';
import 'package:flutter/material.dart';

class CartItemList extends StatelessWidget {
  const CartItemList({super.key});
  @override
  Widget build(BuildContext context) {
    return SliverList.separated(
      itemCount: 3,
      separatorBuilder:
          (context, index) => Divider(height: 22, color: Color(0XFFF1F1F5)),
      itemBuilder: (context, index) {
        return CartItem();
      },
    );
  }
}
