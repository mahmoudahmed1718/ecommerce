import 'package:dots_indicator/dots_indicator.dart';
import 'package:ecommerce/core/utils/app_colors.dart';
import 'package:ecommerce/feature/onboarding/presentation/views/widgets/on_boarding_pageview.dart';
import 'package:flutter/material.dart';

class OnBoardingView extends StatelessWidget {
  const OnBoardingView({super.key});
  static const String routeName = '/onboarding';
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: [
          Expanded(child: OnBoardingPageView()),
          DotsIndicator(
            dotsCount: 2,
            decorator: DotsDecorator(
              activeColor: AppColors.primaryColor.withValues(alpha: 0.7),
            ),
          ),
        ],
      ),
    );
  }
}
