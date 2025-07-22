import 'package:ecommerce/feature/profile/presentation/views/widgets/data_profile.dart';
import 'package:flutter/material.dart';

class ProfileViewBody extends StatelessWidget {
  const ProfileViewBody({super.key});
  @override
  Widget build(BuildContext context) {
    return Column(children: [const SizedBox(height: 16), DataProfile()]);
  }
}
