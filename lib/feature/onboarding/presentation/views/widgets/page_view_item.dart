import 'package:ecommerce/core/utils/app_images.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

class PageViewItem extends StatelessWidget {
  const PageViewItem({
    super.key,
    required this.image,
    required this.backgroundImage,
    required this.subtitle,
    required this.title,
  });
  final String image, backgroundImage, subtitle;
  final Widget title;
  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        Positioned.fill(
          child: SvgPicture.asset(backgroundImage, fit: BoxFit.fill),
        ),
        Positioned(
          bottom: 0,
          left: 0,
          right: 0,

          child: SvgPicture.asset(image),
        ),
      ],
    );
  }
}
