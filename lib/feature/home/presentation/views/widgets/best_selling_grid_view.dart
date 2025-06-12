import 'package:ecommerce/core/widgets/fruit_item.dart';
import 'package:flutter/material.dart';

class BestSellingGridView extends StatelessWidget {
  const BestSellingGridView({super.key});
  @override
  Widget build(BuildContext context) {
    return SliverGrid.builder(
      gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
        crossAxisCount: 2,
        childAspectRatio: 163 / 214,
        mainAxisSpacing: 16,
        crossAxisSpacing: 8,
      ),
      itemBuilder: (context, index) {
        return FruitItem();
      },
    );
  }
}
