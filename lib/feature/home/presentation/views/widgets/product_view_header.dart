import 'package:ecommerce/core/utils/app_text_styels.dart';
import 'package:flutter/material.dart';

class ProductViewHeader extends StatelessWidget {
  const ProductViewHeader({super.key, required this.productsLength});
  final int productsLength;
  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Text(
          textAlign: TextAlign.center,
          '$productsLength results',
          style: TextStyles.bold16,
        ),
        const Spacer(),
      ],
    );
  }
}
