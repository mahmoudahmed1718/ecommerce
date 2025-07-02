import 'package:ecommerce/feature/checkout/presentation/view/widgets/active_step_item.dart';
import 'package:flutter/material.dart';

class CheckoutSteps extends StatelessWidget {
  const CheckoutSteps({super.key});
  @override
  Widget build(BuildContext context) {
    return Row(
      children: List.generate(
        4,
        (index) => Expanded(child: const ActiveStepItem()),
      ),
    );
  }
}
