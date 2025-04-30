import 'package:dots_indicator/dots_indicator.dart';
import 'package:ecommerce/constants.dart';
import 'package:ecommerce/core/utils/app_colors.dart';
import 'package:ecommerce/core/widgets/custom_button.dart';
import 'package:ecommerce/feature/onboarding/presentation/views/widgets/on_boarding_pageview.dart';
import 'package:flutter/material.dart';

class OnBoardingViewBody extends StatefulWidget {
  const OnBoardingViewBody({super.key});

  @override
  State<OnBoardingViewBody> createState() => _OnBoardingViewBodyState();
}

class _OnBoardingViewBodyState extends State<OnBoardingViewBody> {
  late PageController pageController;
  var currentPage = 0;
  @override
  void initState() {
    pageController = PageController();
    pageController.addListener(() {
      currentPage = pageController.page!.round();
      setState(() {});
    });
    super.initState();
  }

  @override
  void dispose() {
    pageController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Expanded(child: OnBoardingPageView(pageController: pageController)),
        DotsIndicator(
          dotsCount: 2,
          decorator: DotsDecorator(
            activeColor: AppColors.primaryColor.withValues(alpha: 0.7),
            color:
                currentPage == 1
                    ? AppColors.primaryColor
                    : AppColors.primaryColor.withValues(alpha: 0.7),
          ),
        ),
        const SizedBox(height: 29),
        Visibility(
          visible: currentPage == 1 ? true : false,
          maintainAnimation: true,
          maintainSize: true,
          maintainState: true,
          child: Padding(
            padding: EdgeInsets.symmetric(horizontal: khorzintalPadding),
            child: CustomButton(onpressed: () {}, text: 'next'),
          ),
        ),
        const SizedBox(height: 42),
      ],
    );
  }
}
