import 'package:ecommerce/core/utils/app_colors.dart';
import 'package:ecommerce/core/utils/app_text_styels.dart';
import 'package:ecommerce/core/widgets/custom_network_image.dart';
import 'package:ecommerce/feature/home/domain/entites/cart_item_entity.dart';
import 'package:ecommerce/feature/home/presentation/manger/cart_cubit/cart_cubit.dart';
import 'package:ecommerce/feature/home/presentation/manger/cart_item_cubit/cart_item_cubit.dart';
import 'package:ecommerce/feature/home/presentation/views/widgets/cart_item_action_buttons.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class CartItem extends StatelessWidget {
  const CartItem({super.key, required this.cartItemEntity});
  final CartItemEntity cartItemEntity;
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 16.0),
      child: BlocBuilder<CartItemCubit, CartItemState>(
        buildWhen: (previous, current) {
          if (current is CartItemUpdated) {
            if (current.cartItemEntity == cartItemEntity) {
              return true;
            }
          }
          return false;
        },
        builder: (context, state) {
          return IntrinsicHeight(
            child: Row(
              children: [
                Container(
                  width: 73,
                  height: 92,
                  color: Color(0XFFF3F5F7),
                  child: CustomNetworkImage(
                    imageUrl: cartItemEntity.product.imageUrl!,
                    size: 16,
                  ),
                ),
                const SizedBox(width: 16),
                Expanded(
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                        children: [
                          Text(cartItemEntity.product.name),
                          Spacer(),
                          GestureDetector(
                            onTap: () {
                              context.read<CartCubit>().removeCartItem(
                                cartItemEntity,
                              );
                            },
                            child: Icon(Icons.delete, color: Colors.red),
                          ),
                        ],
                      ),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.start,
                        children: [
                          Text(
                            '${cartItemEntity.calculateTotalWeight()} kg',
                            style: TextStyles.bold13.copyWith(
                              color: AppColors.secondaryColor,
                            ),
                          ),
                        ],
                      ),

                      Row(
                        children: [
                          CartItemActionButtons(cartItemEntity: cartItemEntity),
                          Spacer(),
                          Text(
                            '${cartItemEntity.calculateTotalPrice()} EGP',
                            style: TextStyles.bold13.copyWith(
                              color: AppColors.secondaryColor,
                            ),
                          ),
                        ],
                      ),
                    ],
                  ),
                ),
              ],
            ),
          );
        },
      ),
    );
  }
}
