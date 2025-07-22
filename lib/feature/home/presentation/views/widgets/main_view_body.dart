import 'package:ecommerce/feature/home/presentation/views/cart_view.dart';
import 'package:ecommerce/feature/home/presentation/views/home_view.dart';
import 'package:ecommerce/feature/home/presentation/views/product_view.dart';
import 'package:ecommerce/feature/profile/presentation/views/profile_view.dart';
import 'package:flutter/material.dart';

class MainViewBody extends StatelessWidget {
  const MainViewBody({super.key, required this.currentViewIndex});

  final int currentViewIndex;

  @override
  Widget build(BuildContext context) {
    return IndexedStack(
      index: currentViewIndex,
      children: const [HomeView(), ProductView(), CartView(), ProfileView()],
    );
  }
}
