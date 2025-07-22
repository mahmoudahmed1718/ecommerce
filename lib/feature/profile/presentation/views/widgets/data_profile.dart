import 'package:ecommerce/core/utils/app_images.dart';
import 'package:ecommerce/core/utils/app_text_styels.dart';
import 'package:flutter/material.dart';

class DataProfile extends StatelessWidget {
  const DataProfile({super.key});

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Image.asset(Assets.imagesProfileImage, scale: 2),

        const SizedBox(width: 24),
        Column(
          children: [
            Text('John Doe', style: TextStyles.bold16),
            Text('@johndoe', style: TextStyles.regular13),
          ],
        ),
      ],
    );
  }
}
