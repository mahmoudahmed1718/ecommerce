import 'package:ecommerce/core/widgets/custom_button.dart';
import 'package:ecommerce/feature/checkout/presentation/view/widgets/checkout_steps.dart';
import 'package:ecommerce/feature/checkout/presentation/view/widgets/checkout_steps_page_view.dart';
import 'package:flutter/material.dart';

class CheckoutViewBody extends StatefulWidget {
  const CheckoutViewBody({super.key});

  @override
  State<CheckoutViewBody> createState() => _CheckoutViewBodyState();
}

class _CheckoutViewBodyState extends State<CheckoutViewBody> {
  late PageController pageController;
  @override
  void initState() {
    pageController = PageController();
    super.initState();
  }

  @override
  void dispose() {
    pageController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 16),
      child: Column(
        children: [
          SizedBox(height: 20),
          CheckoutSteps(),
          Expanded(
            child: CheckoutStepsPageView(pageController: pageController),
          ),

          CustomButton(onpressed: () {}, text: 'next'),
          SizedBox(height: 32),
        ],
      ),
    );
  }
}
