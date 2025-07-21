import 'package:ecommerce/feature/auth/presentation/view/sign_in_view.dart';
import 'package:ecommerce/feature/auth/presentation/view/sign_up_view.dart';
import 'package:ecommerce/feature/best_selling_fruits/presentation/views/best_selling_fruits_view.dart';

import 'package:ecommerce/feature/checkout/presentation/views/checkout_view.dart';
import 'package:ecommerce/feature/home/domain/entites/cart_entity.dart';
import 'package:ecommerce/feature/home/presentation/views/main_view.dart';
import 'package:ecommerce/feature/onboarding/presentation/views/on_boarding_view.dart';
import 'package:ecommerce/feature/splash/presentation/views/splash_view.dart';
import 'package:flutter/material.dart';

Route<dynamic> onGenerateRoutes(RouteSettings settings) {
  switch (settings.name) {
    case SplashView.routeName:
      return MaterialPageRoute(builder: (context) => const SplashView());
    case OnBoardingView.routeName:
      return MaterialPageRoute(builder: (context) => const OnBoardingView());
    case SignInView.routeName:
      return MaterialPageRoute(builder: (context) => const SignInView());
    case SignUpView.routeName:
      return MaterialPageRoute(builder: (context) => const SignUpView());
    case MainView.routeName:
      return MaterialPageRoute(builder: (context) => const MainView());

    case CheckoutView.routeName:
      return MaterialPageRoute(
        builder:
            (context) =>
                CheckoutView(cartitems: settings.arguments as CartEntity),
      );
    case BestSellingFruitsView.routeName:
      return MaterialPageRoute(
        builder: (context) => const BestSellingFruitsView(),
      );
    default:
      return MaterialPageRoute(builder: (context) => const Scaffold());
  }
}
