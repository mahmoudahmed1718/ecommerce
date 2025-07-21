import 'package:ecommerce/core/widgets/custom_button.dart';

import 'package:ecommerce/feature/checkout/presentation/views/checkout_view.dart';
import 'package:ecommerce/feature/home/presentation/manger/cart_cubit/cart_cubit.dart';
import 'package:ecommerce/feature/home/presentation/manger/cart_item_cubit/cart_item_cubit.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class CustomCartButton extends StatelessWidget {
  const CustomCartButton({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<CartItemCubit, CartItemState>(
      builder: (context, state) {
        return CustomButton(
          onpressed: () {
            Navigator.pushNamed(
              context,
              CheckoutView.routeName,
              arguments: context.read<CartCubit>().cartEntity,
            );
          },
          text: 'pay ${context.watch<CartCubit>().cartEntity.totalPrice()}',
        );
      },
    );
  }
}
