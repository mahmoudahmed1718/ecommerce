import 'package:ecommerce/core/utils/app_images.dart';
import 'package:ecommerce/core/utils/app_text_styels.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

class CustomHomeAppBar extends StatelessWidget {
  const CustomHomeAppBar({super.key});
  @override
  Widget build(BuildContext context) {
    return ListTile(
      trailing: Container(
        padding: const EdgeInsets.all(12),
        decoration: ShapeDecoration(
          color: Color(0XFFEEF8ED),
          shape: OvalBorder(),
        ),
        child: SvgPicture.asset(Assets.imagesNotification),
      ),

      leading: Image.asset(Assets.imagesProfileImage, scale: 3),

      title: Text(
        'Good Morning',
        style: TextStyles.regular16.copyWith(color: Color(0XFF949D9E)),
      ),
      subtitle: Text('Mahmoud Ahmed', style: TextStyles.bold16),
    );
  }
}
