import 'package:ecommerce/core/utils/app_colors.dart';
import 'package:ecommerce/core/utils/app_text_styels.dart';
import 'package:ecommerce/feature/home/domain/entites/cart_item_entity.dart';
import 'package:ecommerce/feature/home/presentation/manger/cart_item_cubit/cart_item_cubit.dart';
import 'package:ecommerce/feature/home/presentation/views/widgets/cart_item_action_button.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class CartItemActionButtons extends StatelessWidget {
  const CartItemActionButtons({super.key, required this.cartItemEntity});
  final CartItemEntity cartItemEntity;

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        CartItemActionButton(
          backgroundColor: AppColors.primaryColor,
          iconColor: Colors.white,
          icon: Icons.add,
          onTap: () {
            cartItemEntity.increaseCount();
            context.read<CartItemCubit>().updateCartItem(cartItemEntity);
          },
        ),
        const SizedBox(width: 16),

        Text(cartItemEntity.countItem.toString(), style: TextStyles.bold16),
        const SizedBox(width: 16),
        CartItemActionButton(
          backgroundColor: Color(0XFFF3F5F7),
          iconColor: Color(0XFF979899),
          icon: Icons.remove,
          onTap: () {
            cartItemEntity.decreaseCount();
            context.read<CartItemCubit>().updateCartItem(cartItemEntity);
          },
        ),
      ],
    );
  }
}
