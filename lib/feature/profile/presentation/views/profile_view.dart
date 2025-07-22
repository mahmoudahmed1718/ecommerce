import 'package:ecommerce/core/widgets/build_app_bar.dart';
import 'package:ecommerce/feature/profile/presentation/views/widgets/profile_view_body.dart';
import 'package:flutter/material.dart';

class ProfileView extends StatelessWidget {
  const ProfileView({super.key});
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: buildAppBar(
        context,
        title: 'Profile',
        isNotification: false,
        isbackButton: false,
      ),
      body: ProfileViewBody(),
    );
  }
}
