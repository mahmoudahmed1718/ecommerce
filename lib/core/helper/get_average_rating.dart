import 'package:ecommerce/core/entites/review_entity.dart';

num getAverageRating(List<ReviewEntity> reviews) {
  if (reviews.isEmpty) return 0.0;
  var sum = 0.0;
  for (var review in reviews) {
    sum += review.rating;
  }
  return sum / reviews.length;
}
