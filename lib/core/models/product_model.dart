import 'package:ecommerce/core/entites/product_entity.dart';
import 'package:ecommerce/core/models/review_model.dart';

class ProductModel extends ProductEntity {
  final int sellingcount;
  ProductModel({
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
    required this.sellingcount,
  });

  factory ProductModel.formJson(Map<String, dynamic> json) {
    return ProductModel(
      name: json['name'],
      description: json['description'],
      price: json['price'],
      code: json['code'],
      imageFile: json['imageFile'],
      isFeatured: json['isFeatured'],
      isOrgainic: json['isOrgainic'],
      imageUrl: json['imageUrl'],
      monthExpires: json['monthExpires'],
      numberOfCalories: json['numberOfCalories'],
      unitAmount: json['unitAmount'],
      reviews: json['reviews'].map((review) => ReviewModel.fromJson(review)),
      sellingcount: json['sellingcount'],
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
}
