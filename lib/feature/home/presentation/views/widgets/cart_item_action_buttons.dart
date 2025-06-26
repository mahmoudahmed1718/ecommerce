import 'package:ecommerce/core/utils/app_colors.dart';
import 'package:ecommerce/core/utils/app_text_styels.dart';
import 'package:ecommerce/feature/home/presentation/views/widgets/cart_item_action_button.dart';
import 'package:flutter/material.dart';

class CartItemActionButtons extends StatelessWidget {
  const CartItemActionButtons({super.key});
  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        CartItemActionButton(
          backgroundColor: AppColors.primaryColor,
          iconColor: Colors.white,
          icon: Icons.add,
          onTap: () {
            // Add your onTap functionality here
          },
        ),
        const SizedBox(width: 16),

        Text('3', style: TextStyles.bold16),
        const SizedBox(width: 16),
        CartItemActionButton(
          backgroundColor: Color(0XFFF3F5F7),
          iconColor: Color(0XFF979899),
          icon: Icons.remove,
          onTap: () {
            // Add your onTap functionality here
          },
        ),
      ],
    );
  }
}
