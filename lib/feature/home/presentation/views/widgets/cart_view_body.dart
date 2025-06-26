import 'package:ecommerce/constants.dart';
import 'package:ecommerce/core/widgets/build_app_bar.dart';
import 'package:ecommerce/feature/home/presentation/views/widgets/cart_header.dart';
import 'package:ecommerce/feature/home/presentation/views/widgets/cart_item.dart';
import 'package:flutter/material.dart';

class CartViewBody extends StatelessWidget {
  const CartViewBody({super.key});
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 16.0),
      child: CustomScrollView(
        slivers: [
          SliverToBoxAdapter(
            child: Column(
              children: [
                SizedBox(height: kVerticalPadding),
                buildAppBar(context, title: 'Products', isNotification: false),
                const SizedBox(height: kVerticalPadding),
                CartHeader(),

                const SizedBox(height: 12),
                CartItem(),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
