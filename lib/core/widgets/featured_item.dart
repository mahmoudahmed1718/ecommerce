import 'package:easy_localization/easy_localization.dart';
import 'package:ecommerce/core/utils/app_images.dart';
import 'package:ecommerce/core/utils/app_text_styels.dart';
import 'package:ecommerce/feature/home/presentation/views/widgets/featured_item_button.dart';
import 'package:flutter/material.dart';

class FeaturedItem extends StatelessWidget {
  const FeaturedItem({super.key});
  @override
  Widget build(BuildContext context) {
    var itemWidth = MediaQuery.of(context).size.width - 32;
    return ClipRRect(
      borderRadius: BorderRadius.circular(4),
      child: SizedBox(
        height: itemWidth * 0.4,
        width: itemWidth,
        child: AspectRatio(
          aspectRatio: 342 / 128,
          child: Stack(
            children: [
              context.locale.languageCode == 'en'
                  ? Positioned(
                    left: itemWidth * 0.4,
                    top: 0,
                    bottom: 0,
                    right: 0,

                    child: Image.asset(
                      Assets.imagesWatermelonTest,
                      fit: BoxFit.fill,
                    ),
                  )
                  : Positioned(
                    right: itemWidth * 0.4,
                    top: 0,
                    bottom: 0,
                    left: 0,

                    child: Image.asset(
                      Assets.imagesWatermelonTest,
                      fit: BoxFit.fill,
                    ),
                  ),
              Container(
                height: itemWidth * 0.4,
                width: itemWidth * 0.5,
                decoration: BoxDecoration(
                  image: DecorationImage(
                    fit: BoxFit.fill,

                    image:
                        context.locale.languageCode == 'ar'
                            ? const AssetImage(Assets.imagesImageFeatureArabic)
                            : const AssetImage(
                              Assets.imagesImageFeatureEnglish,
                            ),
                    scale: 0.1,
                  ),
                ),
              ),
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 33),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    const SizedBox(height: 25),
                    Text(
                      'Eid Offer',
                      style: TextStyles.regular13.copyWith(color: Colors.white),
                    ),
                    Spacer(),
                    Text(
                      '25% discount',
                      style: TextStyles.bold16.copyWith(color: Colors.white),
                    ),
                    const SizedBox(height: 4),
                    FeaturedItemButton(onpressed: () {}),
                    const SizedBox(height: 29),
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
