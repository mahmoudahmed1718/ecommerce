import 'package:ecommerce/core/widgets/build_app_bar.dart';
import 'package:ecommerce/feature/checkout/presentation/views/widgets/checkout_view_body.dart';
import 'package:ecommerce/feature/home/domain/entites/cart_item_entity.dart';
import 'package:flutter/material.dart';

class CheckoutView extends StatelessWidget {
  const CheckoutView({super.key, required this.cartitem});

  static const routeName = 'checkout';
  final List<CartItemEntity> cartitem;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: buildAppBar(context, title: 'الشحن', isNotification: false),
      body: const CheckoutViewBody(),
    );
  }
}
