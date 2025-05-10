// ignore_for_file: use_build_context_synchronously

import 'package:ecommerce/constants.dart';
import 'package:ecommerce/core/services/shared_prefernce_singlton.dart';
import 'package:ecommerce/core/utils/app_images.dart';
import 'package:ecommerce/feature/auth/presentation/view/login_view.dart';
import 'package:ecommerce/feature/onboarding/presentation/views/on_boarding_view.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

class SplashViewBody extends StatefulWidget {
  const SplashViewBody({super.key});

  @override
  State<SplashViewBody> createState() => _SplashViewBodyState();
}

class _SplashViewBodyState extends State<SplashViewBody> {
  @override
  void initState() {
    excuteNaviation();
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      crossAxisAlignment: CrossAxisAlignment.stretch,
      children: [
        Row(
          mainAxisAlignment: MainAxisAlignment.start,
          children: [SvgPicture.asset(Assets.imagesPlant)],
        ),
        SvgPicture.asset(Assets.imagesLogo),
        SvgPicture.asset(Assets.imagesCircles, fit: BoxFit.fill),
      ],
    );
  }

  void excuteNaviation() {
    bool isonboardingViewSeen =
        SharedPreferenceSingleton.getBool(kIsOnboardingViewSeen) ?? false;
    // Provide a default value of false if null
    Future.delayed(const Duration(seconds: 2), () {
      if (isonboardingViewSeen) {
        Navigator.pushReplacementNamed(context, LoginView.routeName);
      } else {
        Navigator.pushReplacementNamed(context, OnBoardingView.routeName);
      }
    });
  }
}
