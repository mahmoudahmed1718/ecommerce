import 'package:dartz/dartz.dart';
import 'package:ecommerce/core/entites/product_entity.dart';
import 'package:ecommerce/core/error/faileur.dart';

abstract class FavouriteProductRepo {
  Future<Either<Faileur, void>> addFavouriteProduct({
    required ProductEntity product,
  });
}
