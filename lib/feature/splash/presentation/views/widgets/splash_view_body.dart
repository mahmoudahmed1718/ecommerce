import 'package:ecommerce/core/util/app_images.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

class SplashViewBody extends StatelessWidget {
  const SplashViewBody({super.key});
  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.stretch,
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        Row(
          mainAxisAlignment: MainAxisAlignment.start,
          children: [
            SvgPicture.asset(Assets.imagesPlant),
          ],
        ),
        SvgPicture.asset(Assets.imagesLogo),
        SvgPicture.asset(
          Assets.imagesSplashButton,
          fit: BoxFit.fill,
        ),
      ],
    );
  }
}
