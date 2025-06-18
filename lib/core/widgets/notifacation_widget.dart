import 'package:ecommerce/core/utils/app_images.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

class Notficationwidget extends StatelessWidget {
  const Notficationwidget({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.all(12),
      decoration: ShapeDecoration(
        color: Color(0XFFEEF8ED),
        shape: OvalBorder(),
      ),
      child: SvgPicture.asset(Assets.imagesNotification),
    );
  }
}
