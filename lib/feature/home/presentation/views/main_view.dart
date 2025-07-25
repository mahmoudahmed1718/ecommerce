import 'package:ecommerce/feature/home/presentation/manger/cart_cubit/cart_cubit.dart';
import 'package:ecommerce/feature/home/presentation/views/cart_view.dart';
import 'package:ecommerce/feature/home/presentation/views/product_view.dart';
import 'package:ecommerce/feature/home/presentation/views/widgets/custom_bottom_navigation_bar.dart';
import 'package:ecommerce/feature/home/presentation/views/home_view.dart';
import 'package:ecommerce/feature/home/presentation/views/widgets/main_view_body_bloc_listener.dart';
import 'package:ecommerce/feature/profile/presentation/views/profile_view.dart';
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

        body: SafeArea(
          child: MainViewBodyBlocListener(currentViewIndex: currentViewIndex),
        ),
      ),
    );
  }

  Widget currentview() {
    return [
      const HomeView(),
      const ProductView(),
      CartView(),
      ProfileView(),
    ][currentViewIndex];
  }
}
