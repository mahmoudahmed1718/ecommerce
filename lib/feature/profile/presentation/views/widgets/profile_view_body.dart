import 'package:ecommerce/core/utils/app_text_styels.dart';
import 'package:ecommerce/feature/profile/presentation/views/edit_data_profile_view.dart';
import 'package:ecommerce/feature/profile/presentation/views/widgets/data_profile.dart';
import 'package:ecommerce/feature/profile/presentation/views/widgets/profile_item.dart';
import 'package:flutter/material.dart';

class ProfileViewBody extends StatelessWidget {
  const ProfileViewBody({super.key});
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 16.0),
      child: Column(
        children: [
          const SizedBox(height: 16),
          DataProfile(),
          const SizedBox(height: 24),
          Row(
            mainAxisAlignment: MainAxisAlignment.start,
            children: [Text('general ', style: TextStyles.semiBold16)],
          ),
          const SizedBox(height: 16),
          ProfileItem(
            onTap: () {
              Navigator.pushNamed(context, EditDataProfileView.routeName);
            },
            icon: Icons.person_outline,
            text: 'My Personal Profile',
            childIcon: Icon(
              Icons.arrow_forward_ios_outlined,
              size: 16,
              color: Colors.grey,
            ),
          ),
        ],
      ),
    );
  }
}
