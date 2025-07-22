import 'package:easy_localization/easy_localization.dart';
import 'package:ecommerce/core/services/firebase_auth_services.dart';
import 'package:ecommerce/core/widgets/custom_button.dart';
import 'package:ecommerce/feature/auth/presentation/view/sign_in_view.dart';
import 'package:ecommerce/feature/profile/presentation/views/edit_data_profile_view.dart';
import 'package:ecommerce/feature/profile/presentation/views/manger/theme_cubit/theme_cubit_cubit.dart';
import 'package:ecommerce/feature/profile/presentation/views/widgets/data_profile.dart';
import 'package:ecommerce/feature/profile/presentation/views/widgets/general_word_widget.dart';
import 'package:ecommerce/feature/profile/presentation/views/widgets/profile_item.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

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
          swichButtonLanguage(),
          const SizedBox(height: 16),
          ProfileItem(
            onTap: () {},
            icon: Icons.language_outlined,
            text: 'Language',
            childIcon: DropdownButton<String>(
              value: context.locale.languageCode,
              underline: const SizedBox(),
              items: const [
                DropdownMenuItem(value: 'en', child: Text('English')),
                DropdownMenuItem(value: 'ar', child: Text('العربية')),
              ],
              onChanged: (value) {
                if (value != null) {
                  context.setLocale(Locale(value));
                }
              },
            ),
          ),

          const SizedBox(height: 64),
          CustomButton(
            onpressed: () {
              logoutAlertDiolaoge(context);
            },
            text: 'Logout',
          ),
        ],
      ),
    );
  }

  Future<dynamic> logoutAlertDiolaoge(BuildContext context) {
    return showDialog(
      context: context,
      builder: (context) {
        return AlertDialog(
          title: Text('Logout'),
          content: Text('Are you sure you want to logout?'),
          actions: [
            TextButton(
              onPressed: () {
                Navigator.pop(context);
              },
              child: Text('Cancel'.tr()),
            ),
            TextButton(
              onPressed: () {
                FirebaseAuthServices().signOut();
                Navigator.pushNamedAndRemoveUntil(
                  context,
                  SignInView.routeName,
                  (route) => false,
                );
              },
              child: Text('Confirm'.tr()),
            ),
          ],
        );
      },
    );
  }

  BlocBuilder<ThemeCubit, ThemeMode> swichButtonLanguage() {
    return BlocBuilder<ThemeCubit, ThemeMode>(
      builder: (context, state) {
        return ProfileItem(
          onTap: () {},
          icon:
              state == ThemeMode.dark
                  ? Icons.dark_mode_outlined
                  : Icons.light_mode_outlined,
          text: 'Theme',
          childIcon: Switch(
            value: state == ThemeMode.dark,
            onChanged: (value) {
              context.read<ThemeCubit>().toggleTheme(value);
              setState(() {
                isSwitchedTheme = value;
              });
            },
          ),
        );
      },
    );
  }
}
