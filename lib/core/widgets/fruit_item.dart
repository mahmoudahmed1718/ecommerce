import 'package:ecommerce/core/entites/product_entity.dart';
import 'package:ecommerce/core/widgets/custom_network_image.dart';
import 'package:flutter/material.dart';
import 'package:ecommerce/core/utils/app_colors.dart';
import 'package:ecommerce/core/utils/app_text_styels.dart';

class FruitItem extends StatelessWidget {
  const FruitItem({super.key, required this.product});
  final ProductEntity product;
  @override
  Widget build(BuildContext context) {
    return Container(
      width: 120,
      height: 180,
      padding: const EdgeInsets.all(8),
      decoration: BoxDecoration(
        color: Colors.grey[200],
        borderRadius: BorderRadius.circular(12),
      ),
      child: Stack(
        children: [
          /// Heart Icon (top-right)
          Positioned(top: 0, right: 0, child: Icon(Icons.favorite_border)),

          /// Main Column Layout
          Column(
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              const SizedBox(height: 12),

              /// Fruit Image
              Flexible(
                child:
                    product.imageUrl != null
                        ? CustomNetworkImage(imageUrl: product.imageUrl!)
                        : Container(
                          height: 100,
                          width: 100,
                          color: Colors.grey,
                        ),
              ),

              const Spacer(),

              /// Bottom Row with Button and Text
              Row(
                crossAxisAlignment: CrossAxisAlignment.end,
                children: [
                  /// + Button

                  /// Text Column (Right-Aligned)
                  Directionality(
                    textDirection: TextDirection.rtl,
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.end,
                      children: [
                        Text(product.name, style: TextStyles.semiBold16),
                        Text(
                          product.price.toString(),
                          style: TextStyles.bold16.copyWith(
                            color: AppColors.lightSecondaryColor,
                          ),
                        ),
                        Text(
                          '${product.unitAmount.toString()}/g',
                          style: TextStyles.regular13.copyWith(
                            color: AppColors.lightSecondaryColor,
                          ),
                        ),
                      ],
                    ),
                  ),
                  const Spacer(),
                  CircleAvatar(
                    radius: 24,
                    backgroundColor: Colors.green,
                    child: Icon(Icons.add, color: Colors.white, size: 20),
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
