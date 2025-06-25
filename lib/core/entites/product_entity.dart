import 'dart:io';

import 'package:ecommerce/core/entites/review_entity.dart';

class AddProductInputEntity {
  final String name;
  final String description;
  final double price;
  final String code;
  final File imageFile;
  String? imageUrl;
  final String isFeatured;
  final int monthExpires;
  final bool isOrgainic;
  final int numberOfCalories;
  final int unitAmount;
  final num avergeRating = 0;
  final num rangeCount = 0;
  final List<ReviewEntity> reviews;
  AddProductInputEntity({
    required this.reviews,
    required this.name,
    required this.description,
    required this.price,
    required this.code,
    required this.imageFile,
    this.isOrgainic = false,
    this.imageUrl,
    required this.isFeatured,
    required this.monthExpires,
    required this.numberOfCalories,
    required this.unitAmount,
  });
}
