import 'package:ecommerce/feature/checkout/presentation/view/widgets/active_step_item.dart';
import 'package:flutter/material.dart';

class CheckoutViewBody extends StatelessWidget {
  const CheckoutViewBody({super.key});
  @override
  Widget build(BuildContext context) {
    return Column(children: [ActiveStepItem()]);
  }
}
