import 'package:ecommerce/core/utils/app_text_styels.dart';
import 'package:flutter/material.dart';

class BestSellingHeader extends StatelessWidget {
  const BestSellingHeader({super.key});
  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Text(
          textAlign: TextAlign.center,
          'Best Selling',
          style: TextStyles.bold16,
        ),
        const Spacer(),
        TextButton(
          onPressed: () {},
          child: Text(
            textAlign: TextAlign.center,
            'See all',
            style: TextStyles.regular13.copyWith(color: Color(0XFF949D9E)),
          ),
        ),
      ],
    );
  }
}
