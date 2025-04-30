import 'package:ecommerce/core/utils/app_images.dart';
import 'package:ecommerce/feature/onboarding/presentation/views/widgets/page_view_item.dart';
import 'package:flutter/material.dart';

class OnBoardingPageView extends StatelessWidget {
  const OnBoardingPageView({super.key});
  @override
  Widget build(BuildContext context) {
    return PageView(
      children: [
        PageViewItem(
          image: Assets.imagesPageviewImage1,
          backgroundImage: Assets.imagesPageviewBackgroundimage2,
          subtitle:
              'اكتشف تجربة تسوق فريدة مع FruitHUB. استكشف مجموعتنا الواسعة من الفواكه الطازجة الممتازة واحصل على أفضل العروض والجودة العالية',
          title: Row(
            children: [Text('مرحبًا بك في'), Text('Fruit'), Text('HUB')],
          ),
        ),
      ],
    );
  }
}
