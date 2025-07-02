import 'package:ecommerce/core/utils/app_text_styels.dart';
import 'package:flutter/material.dart';

class InActiveStepItem extends StatelessWidget {
  const InActiveStepItem({super.key});
  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        CircleAvatar(
          radius: 10,
          backgroundColor: Color(0XFFF2F3F3),
          child: Text('2', style: TextStyles.semiBold13),
        ),
        SizedBox(width: 4),
        Text(
          'payment',
          style: TextStyles.semiBold13.copyWith(color: Color(0XFFAAAAAA)),
        ),
      ],
    );
  }
}
