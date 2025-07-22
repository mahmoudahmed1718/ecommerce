import 'package:ecommerce/core/widgets/build_app_bar.dart';
import 'package:ecommerce/feature/profile/presentation/views/widgets/edit_data_profile_view_body.dart';
import 'package:flutter/material.dart';

class EditDataProfileView extends StatelessWidget {
  const EditDataProfileView({super.key});
  static const String routeName = 'editDataProfile';
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: buildAppBar(
        context,
        title: 'Edit Profile',
        isNotification: false,
        isbackButton: true,
      ),
      body: EditDataProfileViewBody(),
    );
  }
}
