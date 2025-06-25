import 'package:ecommerce/core/entites/review_entity.dart';

class ProductEntity {
  final String name;
  final String description;
  final double price;
  final String code;
  // final File imageFile;
  String? imageUrl;
  final String isFeatured;
  final int monthExpires;
  final bool isOrgainic;
  final int numberOfCalories;
  final int unitAmount;
  final num avergeRating;
  final num rangeCount = 0;
  final List<ReviewEntity> reviews;
  ProductEntity({
    required this.reviews,
    required this.name,
    required this.description,
    required this.price,
    required this.code,
    required this.avergeRating,
    // required this.imageFile,
    this.isOrgainic = false,
    this.imageUrl,
    required this.isFeatured,
    required this.monthExpires,
    required this.numberOfCalories,
    required this.unitAmount,
  });
}
