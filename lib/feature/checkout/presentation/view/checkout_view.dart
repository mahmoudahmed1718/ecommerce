import 'package:ecommerce/core/widgets/build_app_bar.dart';
import 'package:ecommerce/feature/checkout/presentation/view/widgets/checkout_view_body.dart';
import 'package:flutter/material.dart';

class CheckoutView extends StatelessWidget {
  static const String routeName = 'checkout';
  const CheckoutView({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: buildAppBar(context, title: 'Checkout', isNotification: false),
      body: CheckoutViewBody(),
    );
  }
}
