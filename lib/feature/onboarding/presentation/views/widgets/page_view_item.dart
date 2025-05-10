import 'package:easy_localization/easy_localization.dart';
import 'package:ecommerce/core/utils/app_text_styels.dart';
import 'package:ecommerce/generated/locale_keys.g.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

class PageViewItem extends StatelessWidget {
  const PageViewItem({
    super.key,
    required this.image,
    required this.backgroundImage,
    required this.subtitle,
    required this.title,
    required this.isVisible,
  });
  final String image, backgroundImage, subtitle;
  final Widget title;
  final bool isVisible;
  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        SizedBox(
          width: double.infinity,
          height: MediaQuery.of(context).size.height * 0.5,
          child: Stack(
            children: [
              Positioned.fill(
                child: SvgPicture.asset(backgroundImage, fit: BoxFit.fill),
              ),
              Positioned(
                bottom: 0,
                left: 0,
                right: 0,

                child: SvgPicture.asset(image),
              ),
              Padding(
                padding: EdgeInsets.all(16),
                child: Visibility(
                  visible: isVisible,
                  child: Text(LocaleKeys.skip.tr()),
                ),
              ),
            ],
          ),
        ),
        const SizedBox(height: 34),
        title,
        const SizedBox(height: 24),
        Text(
          subtitle,
          textAlign: TextAlign.center,
          style: TextStyles.semiBold13.copyWith(color: Color(0XFF4E5456)),
        ),
        const SizedBox(height: 80),
      ],
    );
  }
}
