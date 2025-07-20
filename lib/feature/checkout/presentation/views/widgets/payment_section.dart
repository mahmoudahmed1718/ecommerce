import 'package:ecommerce/feature/checkout/presentation/views/widgets/order_summry_widget.dart';
import 'package:flutter/material.dart';

class PaymentSection extends StatelessWidget {
  const PaymentSection({super.key});
  @override
  Widget build(BuildContext context) {
    return Column(children: [SizedBox(height: 20), OrderSummryWidget()]);
  }
}
