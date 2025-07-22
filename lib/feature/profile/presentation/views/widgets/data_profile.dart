import 'package:ecommerce/core/helper/get_user_data.dart';
import 'package:ecommerce/core/utils/app_images.dart';
import 'package:ecommerce/core/utils/app_text_styels.dart';
import 'package:flutter/material.dart';

class DataProfile extends StatelessWidget {
  const DataProfile({super.key});

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Image.asset(Assets.imagesProfileImage, scale: 2.5),

        const SizedBox(width: 24),
        Column(
          crossAxisAlignment: CrossAxisAlignment.end,
          children: [
            Text(getUserData().name, style: TextStyles.bold16),
            Text(getUserData().email, style: TextStyles.regular13),
          ],
        ),
      ],
    );
  }
}
