import 'dart:io';

import 'package:ecommerce/core/entites/product_entity.dart';

ProductEntity getDummyProduct() {
  return ProductEntity(
    name: 'mahmoud ahmed',
    description: 'this is a dummy product',
    price: 100.0,
    code: '12345',
    imageUrl: 'https://example.com/image.jpg',
    isFeatured: 'yes',
    monthExpires: 12,
    isOrgainic: true,
    numberOfCalories: 200,
    unitAmount: 1,
    reviews: [],
  );
}

List<ProductEntity> getDummyProductsList() {
  return List.generate(10, (index) => getDummyProduct());
}
