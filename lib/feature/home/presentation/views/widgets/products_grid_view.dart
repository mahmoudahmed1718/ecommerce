import 'package:ecommerce/core/entites/product_entity.dart';
import 'package:ecommerce/core/widgets/fruit_item.dart';
import 'package:flutter/material.dart';

class PrductsGridView extends StatelessWidget {
  const PrductsGridView({super.key, required this.products});
  final List<ProductEntity> products;
  @override
  Widget build(BuildContext context) {
    return SliverGrid.builder(
      itemCount: products.length,
      gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
        crossAxisCount: 2,
        childAspectRatio: 163 / 214,
        mainAxisSpacing: 16,
        crossAxisSpacing: 8,
      ),
      itemBuilder: (context, index) {
        return FruitItem(product: products[index]);
      },
    );
  }
}
