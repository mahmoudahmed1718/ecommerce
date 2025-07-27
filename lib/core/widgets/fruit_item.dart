import 'package:ecommerce/core/entites/product_entity.dart';
import 'package:ecommerce/core/widgets/custom_network_image.dart';
import 'package:ecommerce/feature/home/presentation/manger/cart_cubit/cart_cubit.dart';
import 'package:ecommerce/feature/home/presentation/manger/favourit_product_cubit/favourit_product_cubit.dart';
import 'package:ecommerce/feature/home/presentation/manger/favourit_product_cubit/favourit_product_state.dart';
import 'package:flutter/material.dart';
import 'package:ecommerce/core/utils/app_colors.dart';
import 'package:ecommerce/core/utils/app_text_styels.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class FruitItem extends StatelessWidget {
  const FruitItem({super.key, required this.product});
  final ProductEntity product;
  @override
  @override
  Widget build(BuildContext context) {
    final screenWidth = MediaQuery.of(context).size.width;
    final itemWidth = screenWidth / 2.4; // Responsive width
    final imageSize = itemWidth * 0.8;

    return Container(
      width: itemWidth,
      padding: const EdgeInsets.all(8),
      decoration: BoxDecoration(
        color: Colors.grey[200],
        borderRadius: BorderRadius.circular(12),
      ),
      child: Stack(
        children: [
          // Heart Icon
          Positioned(
            top: -10,
            right: -10,
            child: FavoutitButton(product: product),
          ),

          Column(
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              const SizedBox(height: 8),

              // Responsive Image
              Flexible(
                flex: 8,
                child:
                    product.imageUrl != null
                        ? CustomNetworkImage(
                          imageUrl: product.imageUrl!,
                          size: imageSize,
                        )
                        : Container(
                          height: imageSize,
                          width: imageSize,
                          color: Colors.grey,
                        ),
              ),

              const Spacer(),

              // Price and Add Button
              Row(
                crossAxisAlignment: CrossAxisAlignment.end,
                children: [
                  Directionality(
                    textDirection: TextDirection.rtl,
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.end,
                      children: [
                        Text(product.name, style: TextStyles.semiBold16),
                        Text(
                          '${product.price}',
                          style: TextStyles.bold16.copyWith(
                            color: AppColors.lightSecondaryColor,
                          ),
                        ),
                        // Text(
                        //   '${product.unitAmount}/g',
                        //   style: TextStyles.regular13.copyWith(
                        //     color: AppColors.lightSecondaryColor,
                        //   ),
                        // ),
                      ],
                    ),
                  ),
                  const Spacer(),
                  GestureDetector(
                    onTap: () {
                      context.read<CartCubit>().addProduct(product);
                    },
                    child: const CircleAvatar(
                      radius: 24,
                      backgroundColor: Colors.green,
                      child: Icon(Icons.add, color: Colors.white, size: 20),
                    ),
                  ),
                ],
              ),
            ],
          ),
        ],
      ),
    );
  }
}

class FavoutitButton extends StatelessWidget {
  const FavoutitButton({super.key, required this.product});
  final ProductEntity product;
  @override
  Widget build(BuildContext context) {
    return BlocListener<FavouritProductCubit, FavouritProductState>(
      listener: (context, state) {
        if (state is FavouritProductSuccess) {
          ScaffoldMessenger.of(
            context,
          ).showSnackBar(SnackBar(content: Text('Added to favourites')));
        } else if (state is FavouritProductFailure) {
          ScaffoldMessenger.of(
            context,
          ).showSnackBar(SnackBar(content: Text(state.message)));
        }
      },
      child: IconButton(
        onPressed: () {
          context.read<FavouritProductCubit>().addFavouriteProduct(
            product: product,
          );
        },
        icon: const Icon(Icons.favorite_border, color: Colors.grey),
      ),
    );
  }
}
