import 'package:easy_localization/easy_localization.dart';
import 'package:ecommerce/core/services/firebase_auth_services.dart';
import 'package:ecommerce/feature/home/presentation/manger/cart_cubit/cart_cubit.dart';
import 'package:ecommerce/feature/home/presentation/views/cart_view.dart';
import 'package:ecommerce/feature/home/presentation/views/product_view.dart';
import 'package:ecommerce/feature/home/presentation/views/widgets/custom_bottom_navigation_bar.dart';
import 'package:ecommerce/feature/home/presentation/views/home_view.dart';
import 'package:ecommerce/feature/home/presentation/views/widgets/main_view_body.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class MainView extends StatefulWidget {
  const MainView({super.key});
  static const String routeName = '/home';

  @override
  State<MainView> createState() => _MainViewState();
}

class _MainViewState extends State<MainView> {
  int currentViewIndex = 0;
  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (context) => CartCubit(),
      child: Scaffold(
        bottomNavigationBar: CustomBottomNavigationBar(
          onItemTapped: (index) {
            currentViewIndex = index;

            setState(() {});
          },
        ),
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
        body: SafeArea(child: MainViewBody(currentViewIndex: currentViewIndex)),
      ),
    );
  }

  Widget currentview() {
    return [
      const HomeView(),
      const ProductView(),
      CartView(),
    ][currentViewIndex];
  }
}
