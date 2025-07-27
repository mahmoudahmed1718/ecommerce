import 'package:ecommerce/core/utils/app_images.dart';
import 'package:ecommerce/core/utils/app_text_styels.dart';
import 'package:ecommerce/core/widgets/notifacation_widget.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';

class CustomHomeAppBar extends StatefulWidget {
  const CustomHomeAppBar({super.key});

  @override
  State<CustomHomeAppBar> createState() => _CustomHomeAppBarState();
}

class _CustomHomeAppBarState extends State<CustomHomeAppBar> {
  @override
  Widget build(BuildContext context) {
    return ListTile(
      trailing: Notficationwidget(),

      leading: Image.asset(Assets.imagesProfileImage, scale: 3),

      title: Text(
        'Good Morning',
        style: TextStyles.regular16.copyWith(color: Color(0XFF949D9E)),
      ),
      subtitle: Text(
        FirebaseAuth.instance.currentUser!.displayName ?? "User",

        style: TextStyles.bold16,
      ),
    );
  }
}
