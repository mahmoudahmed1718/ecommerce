import 'package:ecommerce/core/entites/product_entity.dart';
import 'package:ecommerce/core/models/review_model.dart';

class AddProductInputModel extends AddProductInputEntity {
  AddProductInputModel({
    required super.name,
    required super.description,
    required super.price,
    required super.code,
    required super.imageFile,
    required super.isFeatured,
    required super.isOrgainic,
    super.imageUrl,
    required super.monthExpires,
    required super.numberOfCalories,
    required super.unitAmount,
    required super.reviews,
  });

  factory AddProductInputModel.fromEntity(AddProductInputEntity entity) {
    return AddProductInputModel(
      name: entity.name,
      description: entity.description,
      price: entity.price,
      code: entity.code,
      imageFile: entity.imageFile,
      isFeatured: entity.isFeatured,
      imageUrl: entity.imageUrl,
      monthExpires: entity.monthExpires,
      numberOfCalories: entity.numberOfCalories,
      unitAmount: entity.unitAmount,
      isOrgainic: entity.isOrgainic,
      reviews:
          entity.reviews
              .map((review) => ReviewModel.fromEntity(review))
              .toList(),
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
      'isOrganic': isOrgainic,
      'avergeRating': avergeRating,
      'rangeCount': rangeCount,
      'reviews':
          (reviews as List<ReviewModel>)
              .map((review) => review.toJson())
              .toList(),
    };
  }
}
