import 'package:ecommerce/constants.dart';
import 'package:ecommerce/core/widgets/build_app_bar.dart';
import 'package:ecommerce/core/widgets/custom_button.dart';
import 'package:ecommerce/feature/home/presentation/views/widgets/cart_header.dart';
import 'package:ecommerce/feature/home/presentation/views/widgets/cart_item_list.dart';
import 'package:flutter/material.dart';

class CartViewBody extends StatelessWidget {
  const CartViewBody({super.key});
  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        CustomScrollView(
          slivers: [
            SliverToBoxAdapter(
              child: Column(
                children: [
                  SizedBox(height: kVerticalPadding),
                  buildAppBar(
                    context,
                    title: 'Products',
                    isNotification: false,
                  ),
                  const SizedBox(height: kVerticalPadding),
                  CartHeader(),

                  const SizedBox(height: 12),
                ],
              ),
            ),
            CartItemList(cartItmes: []),
          ],
        ),
        Positioned(
          bottom: MediaQuery.of(context).size.height * 0.05,
          left: 16,
          right: 16,
          child: CustomButton(onpressed: () {}, text: 'pay 120'),
        ),
      ],
    );
  }
}
