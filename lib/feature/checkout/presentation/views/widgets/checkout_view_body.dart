import 'package:ecommerce/core/widgets/custom_button.dart';
import 'package:ecommerce/core/widgets/error_snack_bar.dart';
import 'package:ecommerce/feature/checkout/domain/entites/order_entity.dart';
import 'package:ecommerce/feature/checkout/domain/entites/paypal_payment_entity/paypal_payment_entity.dart';
import 'package:ecommerce/feature/checkout/presentation/views/widgets/checkout_steps.dart';
import 'package:flutter/material.dart';
import 'package:flutter_paypal_payment/flutter_paypal_payment.dart';
import 'package:provider/provider.dart';

import 'checkout_steps_page_view.dart';

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
    pageController.addListener(() {
      setState(() {
        currentPageIndex = pageController.page!.toInt();
      });
    });
    super.initState();
  }

  @override
  void dispose() {
    pageController.dispose();
    super.dispose();
  }

  int currentPageIndex = 0;
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 16),
      child: Column(
        children: [
          const SizedBox(height: 20),
          CheckoutSteps(currentPage: currentPageIndex),
          Expanded(
            child: CheckoutStepsPageView(pageController: pageController),
          ),
          CustomButton(
            onpressed: () {
              if (context.read<OrderEntity>().payWithCash != null) {
                pageController.nextPage(
                  duration: const Duration(milliseconds: 300),
                  curve: Curves.fastLinearToSlowEaseIn,
                );
              } else if (currentPageIndex == 1) {
                buildErrorSnackBar(
                  context,
                  errorMessage: 'يرجي تحديد طريقه الدفع',
                );
              } else {
                _processPayment(context);
              }
            },

            text: 'التالي',
          ),
          const SizedBox(height: 32),
        ],
      ),
    );
  }

  void _processPayment(BuildContext context) {
    var order = context.read<OrderEntity>();
    PaypalPaymentEntity paypalPaymentEntity = PaypalPaymentEntity.fromEntities(
      entity: order,
    );
    Navigator.of(context).push(
      MaterialPageRoute(
        builder:
            (BuildContext context) => PaypalCheckoutView(
              sandboxMode: true,
              clientId: "",
              secretKey: "",
              transactions: [paypalPaymentEntity.toJson()],
              note: "Contact us for any questions on your order.",
              onSuccess: (Map params) async {},
              onError: (error) {
                Navigator.pop(context);
              },
              onCancel: () {},
            ),
      ),
    );
  }
}
