import 'package:dots_indicator/dots_indicator.dart';
import 'package:ecommerce/constants.dart';
import 'package:ecommerce/core/utils/app_colors.dart';
import 'package:ecommerce/core/widgets/custom_button.dart';
import 'package:ecommerce/feature/onboarding/presentation/views/widgets/on_boarding_pageview.dart';
import 'package:flutter/material.dart';

class OnBoardingViewBody extends StatelessWidget {
  const OnBoardingViewBody({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Expanded(child: OnBoardingPageView()),
        DotsIndicator(
          dotsCount: 2,
          decorator: DotsDecorator(
            activeColor: AppColors.primaryColor.withValues(alpha: 0.7),
          ),
        ),
        const SizedBox(height: 29),
        Padding(
          padding: EdgeInsets.symmetric(horizontal: khorzintalPadding),
          child: CustomButton(onpressed: () {}, text: 'next'),
        ),
        const SizedBox(height: 42),
      ],
    );
  }
}
