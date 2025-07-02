import 'package:ecommerce/feature/checkout/presentation/view/widgets/checkout_steps.dart';
import 'package:flutter/material.dart';

class CheckoutViewBody extends StatelessWidget {
  const CheckoutViewBody({super.key});
  @override
  Widget build(BuildContext context) {
    return Column(children: [SizedBox(height: 20), CheckoutSteps()]);
  }
}
