import 'package:ecommerce/core/helper/get_user_data.dart';
import 'package:ecommerce/core/utils/app_images.dart';
import 'package:ecommerce/core/utils/app_text_styels.dart';
import 'package:ecommerce/core/widgets/notifacation_widget.dart';
import 'package:flutter/material.dart';

class CustomHomeAppBar extends StatelessWidget {
  const CustomHomeAppBar({super.key});
  @override
  Widget build(BuildContext context) {
    return ListTile(
      trailing: Notficationwidget(),

      leading: Image.asset(Assets.imagesProfileImage, scale: 3),

      title: Text(
        'Good Morning',
        style: TextStyles.regular16.copyWith(color: Color(0XFF949D9E)),
      ),
      subtitle: Text(getUserData().name, style: TextStyles.bold16),
    );
  }
}
