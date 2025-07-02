import 'package:ecommerce/feature/checkout/presentation/view/widgets/shipping_item.dart';
import 'package:flutter/material.dart';

class ShippingSection extends StatelessWidget {
  const ShippingSection({super.key});
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 16),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          const SizedBox(height: 33),
          ShippingItem(
            title: 'pay with cash on delivery',
            subtitl: 'pay on delivery',
            price: '40',
          ),
          const SizedBox(height: 10),
          ShippingItem(
            title: 'pay online',
            subtitl: 'select the payment method',
            price: '0.0',
          ),
        ],
      ),
    );
  }
}
