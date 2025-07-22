import 'package:ecommerce/core/entites/product_entity.dart';
import 'package:ecommerce/core/helper/get_average_rating.dart';
import 'package:ecommerce/core/models/review_model.dart';

// ignore: must_be_immutable
class ProductModel extends ProductEntity {
  final int sellingcount;
  ProductModel({
    required super.name,
    required super.description,
    required super.price,
    required super.code,
    required super.avergeRating,
    // required super.imageFile,
    required super.isFeatured,
    required super.isOrgainic,
    super.imageUrl,
    required super.monthExpires,
    required super.numberOfCalories,
    required super.unitAmount,
    required super.reviews,
    required this.sellingcount,
  });

  factory ProductModel.formJson(Map<String, dynamic> json) {
    // First, parse the reviews
    final parsedReviews =
        (json['reviews'] as List)
            .map((review) => ReviewModel.fromJson(review))
            .toList();

    // Then pass to getAverageRating
    final averageRating = getAverageRating(parsedReviews);

    return ProductModel(
      avergeRating: averageRating,
      name: json['name'],
      description: json['description'],
      price: json['price'],
      code: json['code'],
      isFeatured: json['isFeatured'].toString(),
      isOrgainic: json['isOrgainic'] ?? false,
      imageUrl: json['imageUrl'],
      monthExpires: json['monthExpires'],
      numberOfCalories: json['numberOfCalories'],
      unitAmount: json['unitAmount'],
      reviews: parsedReviews,
      sellingcount: int.tryParse(json['sellingCount'].toString()) ?? 0,
    );
  }

  toJson() {
    return {
      'name': name,
      'description': description,
      'price': price,
      'code': code,
      'imageUrl': imageUrl,
      'isFeatured': isFeatured,
      'monthExpires': monthExpires,
      'numberOfCalories': numberOfCalories,
      'unitAmount': unitAmount,
      'sellingcount': sellingcount,
      'isOrganic': isOrgainic,
      'avergeRating': avergeRating,
      'rangeCount': rangeCount,
      'reviews':
          (reviews as List<ReviewModel>)
              .map((review) => review.toJson())
              .toList(),
    };
  }

  factory ProductModel.fromEntity(ProductEntity entity) {
    return ProductModel(
      name: entity.name,
      description: entity.description,
      price: entity.price,
      code: entity.code,
      isFeatured: entity.isFeatured,
      isOrgainic: entity.isOrgainic,
      imageUrl: entity.imageUrl,
      monthExpires: entity.monthExpires,
      numberOfCalories: entity.numberOfCalories,
      unitAmount: entity.unitAmount,
      reviews: entity.reviews,
      avergeRating: entity.avergeRating,
      sellingcount: 0, // Default value, can be updated later
    );
  }
}
