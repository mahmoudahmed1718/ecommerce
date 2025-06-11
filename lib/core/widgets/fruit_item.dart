import 'package:ecommerce/core/utils/app_colors.dart';
import 'package:ecommerce/core/utils/app_images.dart';
import 'package:ecommerce/core/utils/app_text_styels.dart';
import 'package:flutter/material.dart';

class FruitItem extends StatelessWidget {
  const FruitItem({super.key});
  @override
  Widget build(BuildContext context) {
    return Container(
      height: 200,
      width: 100,
      decoration: ShapeDecoration(
        shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(8)),
      ),
      child: Stack(
        children: [
          Positioned(
            top: 0,
            right: 0,
            child: IconButton(
              onPressed: () {},
              icon: Icon(Icons.favorite_border),
            ),
          ),
          Positioned.fill(
            child: Column(
              children: [
                SizedBox(height: 20),
                Image.asset(Assets.imagesWatermelonTest),
                const SizedBox(height: 24),
                ListTile(
                  title: Text('بطيخ', style: TextStyles.semiBold16),

                  subtitle: Text.rich(
                    textAlign: TextAlign.right,
                    TextSpan(
                      children: [
                        TextSpan(
                          text: '2.5',
                          style: TextStyles.bold16.copyWith(
                            color: AppColors.lightSecondaryColor,
                          ),
                        ),
                        TextSpan(
                          text: ' / كيلو',
                          style: TextStyles.regular13.copyWith(
                            color: AppColors.lightSecondaryColor,
                          ),
                        ),
                      ],
                    ),
                  ),

                  trailing: CircleAvatar(
                    radius: 20,
                    backgroundColor: Colors.green,
                    child: IconButton(
                      onPressed: () {},
                      icon: Icon(Icons.add, color: Colors.white),
                    ),
                  ),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
