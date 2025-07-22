import 'package:ecommerce/core/utils/app_text_styels.dart';
import 'package:flutter/material.dart';

class GeneralWordWidget extends StatelessWidget {
  const GeneralWordWidget({super.key, required this.text});
  final String text;
  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.start,
      children: [Text(text, style: TextStyles.semiBold16)],
    );
  }
}
