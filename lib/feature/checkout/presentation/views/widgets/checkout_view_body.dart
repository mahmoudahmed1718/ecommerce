import 'package:ecommerce/core/widgets/custom_button.dart';
import 'package:ecommerce/core/widgets/error_snack_bar.dart';
import 'package:ecommerce/feature/checkout/domain/entites/order_entity.dart';
import 'package:ecommerce/feature/checkout/presentation/views/manger/add_order_cubit/add_order_cubit.dart';
import 'package:ecommerce/feature/checkout/presentation/views/widgets/checkout_steps.dart';
import 'package:flutter/material.dart';
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
                var order = context.read<OrderEntity>();
                context.read<AddOrderCubit>().addOrder(order: order);
              }
            },

            text: 'التالي',
          ),
          const SizedBox(height: 32),
        ],
      ),
    );
  }
}
