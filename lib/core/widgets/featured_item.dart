import 'package:ecommerce/core/utils/app_images.dart';
import 'package:ecommerce/core/utils/app_text_styels.dart';
import 'package:ecommerce/core/widgets/featured_item_button.dart';
import 'package:flutter/material.dart';

class FeaturedItem extends StatelessWidget {
  const FeaturedItem({super.key});
  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        Image.asset(Assets.imagesWatermelonTest),

        Column(
          children: [
            Text(
              'Eid Offer',
              style: TextStyles.regular13.copyWith(color: Colors.white),
            ),
            Text(
              '25% discount',
              style: TextStyles.regular13.copyWith(color: Colors.white),
            ),
            FeaturedItemButton(onpressed: () {}),
          ],
        ),
      ],
    );
  }
}
