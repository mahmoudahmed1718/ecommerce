import 'package:ecommerce/core/entites/review_entity.dart';

class ReviewModel extends ReviewEntity {
  ReviewModel({
    required super.name,
    required super.description,
    required super.rating,
    required super.image,
    required super.data,
  });
  factory ReviewModel.fromEntity(ReviewEntity entity) {
    return ReviewModel(
      name: entity.name,
      description: entity.description,
      rating: entity.rating,
      image: entity.image,
      data: entity.data,
    );
  }
  factory ReviewModel.fromJson(Map<String, dynamic> json) {
    return ReviewModel(
      name: json['name'],
      description: json['description'],
      rating: json['rating'],
      image: json['image'],
      data: json['data'],
    );
  }
  toJson() {
    return {
      'name': name,
      'description': description,
      'rating': rating,
      'image': image,
      'data': data,
    };
  }
}
