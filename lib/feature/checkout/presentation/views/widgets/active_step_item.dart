import 'package:ecommerce/core/utils/app_colors.dart';
import 'package:ecommerce/core/utils/app_text_styels.dart';
import 'package:flutter/material.dart';

class ActiveStepItem extends StatelessWidget {
  const ActiveStepItem({super.key, required this.text});
  final String text;
  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        const CircleAvatar(
          radius: 11.5,
          backgroundColor: AppColors.primaryColor,
          child: Icon(Icons.check, size: 18, color: Colors.white),
        ),
        const SizedBox(width: 4),
        Text(
          text,
          style: TextStyles.bold13.copyWith(color: AppColors.primaryColor),
        ),
      ],
    );
  }
}
