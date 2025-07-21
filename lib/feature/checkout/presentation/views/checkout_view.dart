import 'package:ecommerce/core/helper/get_user_data.dart';
import 'package:ecommerce/core/widgets/build_app_bar.dart';
import 'package:ecommerce/feature/checkout/domain/entites/order_entity.dart';
import 'package:ecommerce/feature/checkout/presentation/views/widgets/checkout_view_body.dart';
import 'package:ecommerce/feature/home/domain/entites/cart_entity.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

class CheckoutView extends StatelessWidget {
  const CheckoutView({super.key, required this.cartitems});

  static const routeName = 'checkout';
  final CartEntity cartitems;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: buildAppBar(context, title: 'الشحن', isNotification: false),
      body: Provider.value(
        value: OrderEntity(userId: getUserData().id, cartItems: cartitems),

        child: const CheckoutViewBody(),
      ),
    );
  }
}
