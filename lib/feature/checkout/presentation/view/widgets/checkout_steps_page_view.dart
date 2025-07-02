import 'package:ecommerce/feature/checkout/presentation/view/widgets/checkout_steps.dart';
import 'package:flutter/material.dart';

class CheckoutStepsPageView extends StatelessWidget {
  const CheckoutStepsPageView({super.key, required this.pageController});

  final PageController pageController;

  @override
  Widget build(BuildContext context) {
    return PageView.builder(
      physics: NeverScrollableScrollPhysics(),
      controller: pageController,
      itemBuilder: (context, index) {
        return SizedBox();
      },
      itemCount: getPages().length,
    );
  }

  List<Widget> getPages() {
    return [SizedBox(), SizedBox(), SizedBox(), SizedBox()];
  }
}
