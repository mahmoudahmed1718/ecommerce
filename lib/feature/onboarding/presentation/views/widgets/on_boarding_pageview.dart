import 'package:ecommerce/core/utils/app_images.dart';
import 'package:ecommerce/feature/onboarding/presentation/views/widgets/page_view_item.dart';
import 'package:flutter/material.dart';

class OnBoardingPageView extends StatelessWidget {
  final PageController pageController;
  const OnBoardingPageView({super.key, required this.pageController});
  @override
  Widget build(BuildContext context) {
    return PageView(
      controller: pageController,
      children: [
        PageViewItem(
          isVisible:
              (pageController.hasClients ? pageController.page!.round() : 0) ==
              0,
          image: Assets.imagesPageviewImage1,
          backgroundImage: Assets.imagesPageviewBackgroundimage2,
          subtitle:
              'اكتشف تجربة تسوق فريدة مع FruitHUB. استكشف مجموعتنا الواسعة من الفواكه الطازجة الممتازة واحصل على أفضل العروض والجودة العالية',
          title: Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [Text('مرحبًا بك في'), Text('Fruit'), Text('HUB')],
          ),
        ),
        PageViewItem(
          isVisible:
              (pageController.hasClients ? pageController.page!.round() : 0) !=
              0,
          image: Assets.imagesPageviewImage2,
          backgroundImage: Assets.imagesPageviewBackgroundimage2,
          subtitle:
              'اكتشف تجربة تسوق فريدة مع FruitHUB. استكشف مجموعتنا الواسعة من الفواكه الطازجة الممتازة واحصل على أفضل العروض والجودة العالية',
          title: Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [Text('ابحث وتسوق')],
          ),
        ),
      ],
    );
  }
}
