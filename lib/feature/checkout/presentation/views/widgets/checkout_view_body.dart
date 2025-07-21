import 'package:ecommerce/core/widgets/custom_button.dart';
import 'package:ecommerce/core/widgets/error_snack_bar.dart';
import 'package:ecommerce/feature/checkout/domain/entites/order_entity.dart';
import 'package:ecommerce/feature/checkout/presentation/views/manger/add_order_cubit/add_order_cubit.dart';
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
    Navigator.of(context).push(
      MaterialPageRoute(
        builder:
            (BuildContext context) => PaypalCheckoutView(
              sandboxMode: true,
              clientId: "",
              secretKey: "",
              transactions: const [
                {
                  "amount": {
                    "total": '70',
                    "currency": "USD",
                    "details": {
                      "subtotal": '70',
                      "shipping": '0',
                      "shipping_discount": 0,
                    },
                  },
                  "description": "The payment transaction description.",
                  // "payment_options": {
                  //   "allowed_payment_method":
                  //       "INSTANT_FUNDING_SOURCE"
                  // },
                  "item_list": {
                    "items": [
                      {
                        "name": "Apple",
                        "quantity": 4,
                        "price": '5',
                        "currency": "USD",
                      },
                      {
                        "name": "Pineapple",
                        "quantity": 5,
                        "price": '10',
                        "currency": "USD",
                      },
                    ],

                    // shipping address is not required though
                    //   "shipping_address": {
                    //     "recipient_name": "tharwat",
                    //     "line1": "Alexandria",
                    //     "line2": "",
                    //     "city": "Alexandria",
                    //     "country_code": "EG",
                    //     "postal_code": "21505",
                    //     "phone": "+00000000",
                    //     "state": "Alexandria"
                    //  },
                  },
                },
              ],
              note: "Contact us for any questions on your order.",
              onSuccess: (Map params) async {
                print("onSuccess: $params");
              },
              onError: (error) {
                print("onError: $error");
                Navigator.pop(context);
              },
              onCancel: () {
                print('cancelled:');
              },
            ),
      ),
    );
  }
}
