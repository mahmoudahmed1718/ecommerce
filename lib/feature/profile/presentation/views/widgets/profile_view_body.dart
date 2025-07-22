import 'package:easy_localization/easy_localization.dart';
import 'package:ecommerce/feature/profile/presentation/views/edit_data_profile_view.dart';
import 'package:ecommerce/feature/profile/presentation/views/widgets/data_profile.dart';
import 'package:ecommerce/feature/profile/presentation/views/widgets/general_word_widget.dart';
import 'package:ecommerce/feature/profile/presentation/views/widgets/profile_item.dart';
import 'package:flutter/material.dart';

class ProfileViewBody extends StatefulWidget {
  const ProfileViewBody({super.key});

  @override
  State<ProfileViewBody> createState() => _ProfileViewBodyState();
}

class _ProfileViewBodyState extends State<ProfileViewBody> {
  bool isSwitchedNotification = false;
  bool isSwitchedTheme = false;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 16.0),
      child: Column(
        children: [
          const SizedBox(height: 16),
          DataProfile(),
          const SizedBox(height: 24),
          GeneralWordWidget(text: 'General'),
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
          const SizedBox(height: 16),
          ProfileItem(
            onTap: () {},
            icon: Icons.favorite_outline,
            text: 'My Favorite Products',
            childIcon: Icon(
              Icons.arrow_forward_ios_outlined,
              size: 16,
              color: Colors.grey,
            ),
          ),
          const SizedBox(height: 16),

          ProfileItem(
            onTap: () {},
            icon: Icons.notifications_none_outlined,
            text: 'Notifications',
            childIcon: Switch(
              value: isSwitchedNotification,
              onChanged: (value) {
                setState(() {
                  isSwitchedNotification = value;
                });
              },
            ),
          ),
          const SizedBox(height: 16),
          ProfileItem(
            onTap: () {},
            icon: Icons.notifications_none_outlined,
            text: 'Dark Mode',
            childIcon: Switch(
              value: isSwitchedTheme,
              onChanged: (value) {
                setState(() {
                  isSwitchedTheme = value;
                });
              },
            ),
          ),
          const SizedBox(height: 16),
        ],
      ),
    );
  }
}
