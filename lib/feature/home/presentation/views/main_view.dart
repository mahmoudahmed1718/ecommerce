import 'package:easy_localization/easy_localization.dart';
import 'package:ecommerce/core/services/firebase_auth_services.dart';
import 'package:ecommerce/feature/home/presentation/views/widgets/custom_bottom_navigation_bar.dart';
import 'package:ecommerce/feature/home/presentation/views/home_view.dart';
import 'package:flutter/material.dart';

class MainView extends StatelessWidget {
  const MainView({super.key});
  static const String routeName = '/home';

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      bottomNavigationBar: CustomBottomNavigationBar(),
      appBar: AppBar(
        actions: [
          IconButton(
            onPressed: () {
              context.setLocale(
                context.locale.languageCode == 'en'
                    ? const Locale('ar')
                    : const Locale('en'),
              );
            },
            icon: Icon(Icons.language),
          ),
        ],
        title: TextButton(
          onPressed: () {
            FirebaseAuthServices().signOut();
            Navigator.pushNamedAndRemoveUntil(
              context,
              '/login', // Replace with your login route name
              (route) => false,
            );
          },
          child: Text('Logout', style: TextStyle(color: Colors.red)),
        ),
      ),
      body: SafeArea(child: HomeView()),
    );
  }
}
