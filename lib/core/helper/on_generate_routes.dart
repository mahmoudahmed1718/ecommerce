import 'package:ecommerce/feature/auth/presentation/view/login_view.dart';
import 'package:ecommerce/feature/auth/presentation/view/sign_up_view.dart';
import 'package:ecommerce/feature/onboarding/presentation/views/on_boarding_view.dart';
import 'package:ecommerce/feature/splash/presentation/views/splash_view.dart';
import 'package:flutter/material.dart';

Route<dynamic> onGenerateRoutes(RouteSettings settings) {
  switch (settings.name) {
    case SplashView.routeName:
      return MaterialPageRoute(builder: (context) => const SplashView());
    case OnBoardingView.routeName:
      return MaterialPageRoute(builder: (context) => const OnBoardingView());
    case LoginView.routeName:
      return MaterialPageRoute(builder: (context) => const LoginView());
    case SignUpView.routeName:
      return MaterialPageRoute(builder: (context) => const SignUpView());
    default:
      return MaterialPageRoute(builder: (context) => const Scaffold());
  }
}
