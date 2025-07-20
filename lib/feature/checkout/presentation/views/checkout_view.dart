import 'package:ecommerce/core/widgets/build_app_bar.dart';
import 'package:ecommerce/feature/checkout/presentation/views/widgets/checkout_view_body.dart';
import 'package:flutter/material.dart';

class CheckoutView extends StatelessWidget {
  const CheckoutView({super.key});

  static const routeName = 'checkout';
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: buildAppBar(context, title: 'الشحن', isNotification: false),
      body: const CheckoutViewBody(),
    );
  }
}
