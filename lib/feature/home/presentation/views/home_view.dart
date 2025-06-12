import 'package:ecommerce/core/services/firebase_auth_services.dart';
import 'package:ecommerce/feature/home/presentation/views/widgets/custom_bottom_navigation_bar.dart';
import 'package:ecommerce/feature/home/presentation/views/widgets/home_view_body.dart';
import 'package:flutter/material.dart';

class HomeView extends StatelessWidget {
  const HomeView({super.key});
  static const String routeName = '/home';

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      bottomNavigationBar: CustomBottomNavigationBar(),
      appBar: AppBar(
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
      body: SafeArea(child: HomeViewBody()),
    );
  }
}
