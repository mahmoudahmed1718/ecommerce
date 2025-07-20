import 'package:ecommerce/feature/checkout/presentation/views/widgets/address_input_section.dart';
import 'package:ecommerce/feature/checkout/presentation/views/widgets/shipping_section.dart';
import 'package:flutter/material.dart';

class CheckoutStepsPageView extends StatelessWidget {
  const CheckoutStepsPageView({super.key, required this.pageController});

  final PageController pageController;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 16),
      child: PageView.builder(
        controller: pageController,
        physics: const NeverScrollableScrollPhysics(),
        itemCount: getPages().length,
        itemBuilder: (context, index) {
          return getPages()[index];
        },
      ),
    );
  }

  List<Widget> getPages() {
    return [
      const ShippingSection(),
      const AddressInputSection(),
      const SizedBox(),
      const SizedBox(),
    ];
  }
}
