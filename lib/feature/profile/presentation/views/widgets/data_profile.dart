import 'package:ecommerce/core/utils/app_images.dart';
import 'package:ecommerce/core/utils/app_text_styels.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';

class DataProfile extends StatelessWidget {
  const DataProfile({super.key});

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Image.asset(Assets.imagesProfileImage, scale: 2.5),

        SizedBox(width: 24),
        Column(
          crossAxisAlignment: CrossAxisAlignment.end,
          children: [
            Text(
              "${FirebaseAuth.instance.currentUser?.displayName}",
              style: TextStyles.bold16,
            ),
            Text(
              "${FirebaseAuth.instance.currentUser?.email}",

              style: TextStyles.regular13,
            ),
          ],
        ),
      ],
    );
  }
}
