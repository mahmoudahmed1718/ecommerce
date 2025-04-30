import 'package:ecommerce/feature/onboarding/presentation/views/widgets/on_boarding_pageview.dart';
import 'package:flutter/material.dart';

class OnBoardingView extends StatelessWidget {
  const OnBoardingView({super.key});
  static const String routeName = '/onboarding';
  @override
  Widget build(BuildContext context) {
    return Scaffold(body: OnBoardingPageView());
  }
}
