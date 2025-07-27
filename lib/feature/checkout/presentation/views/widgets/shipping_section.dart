import 'package:ecommerce/feature/checkout/domain/entites/order_entity.dart';
import 'package:ecommerce/feature/checkout/presentation/views/widgets/shipping_item.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

class ShippingSection extends StatefulWidget {
  const ShippingSection({super.key});

  @override
  State<ShippingSection> createState() => _ShippingSectionState();
}

class _ShippingSectionState extends State<ShippingSection> {
  int selectedIndex = -1;
  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        const SizedBox(height: 33),
        ShippingItem(
          onTap: () {
            selectedIndex = 0;
            setState(() {});
            context.read<OrderEntity>().payWithCash = true;
          },
          isSelected: selectedIndex == 0,
          title: 'Pay when delivered',
          subTitle: 'Pay with cash on delivery',
          price:
              (context.read<OrderEntity>().cartItems.totalPrice() + 40)
                  .toString(),
        ),
        const SizedBox(height: 16),
        ShippingItem(
          onTap: () {
            selectedIndex = 1;
            setState(() {});
            context.read<OrderEntity>().payWithCash = false;
          },
          isSelected: selectedIndex == 1,
          title: 'Pay online',
          subTitle: 'Pay with PayPal',
          price: context.read<OrderEntity>().cartItems.totalPrice().toString(),
        ),
      ],
    );
  }
}
