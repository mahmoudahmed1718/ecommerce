import 'package:dartz/dartz.dart';
import 'package:ecommerce/core/entites/product_entity.dart';
import 'package:ecommerce/core/error/faileur.dart';

abstract class ProductRepo {
  Future<Either<Faileur, List<ProductEntity>>> getProducts();
  Future<Either<Faileur, List<ProductEntity>>> getBestSellingProducts();
}
