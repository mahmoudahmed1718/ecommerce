import 'package:dartz/dartz.dart';
import 'package:ecommerce/core/entites/product_entity.dart';
import 'package:ecommerce/core/error/faileur.dart';
import 'package:ecommerce/core/models/product_model.dart';
import 'package:ecommerce/core/repo/favourit_product_repo/favourit_product_repo.dart';
import 'package:ecommerce/core/services/database_service.dart';
import 'package:ecommerce/core/utils/backend_points.dart';

class FavouritProductRepoImpl implements FavouriteProductRepo {
  final DatabaseService databaseService;

  FavouritProductRepoImpl({required this.databaseService});
  @override
  Future<Either<Faileur, void>> addFavouriteProduct({
    required ProductEntity product,
  }) async {
    try {
      await databaseService.addDataInsideCollection(
        collectionName: BackendPoints.addFavouriteProduct,
        path: BackendPoints.addUserData,
        data: ProductModel.fromEntity(product).toJson(),
      );
      return Right(null);
    } catch (e) {
      return Left(ServerFaileur(message: e.toString()));
    }
  }

  @override
  Future<Either<Faileur, void>> getDataInsideCollection({
    required ProductEntity product,
  }) async {
    try {
      await databaseService.getDataInsideCollection(
        collectionName: BackendPoints.addFavouriteProduct,
        path: BackendPoints.addUserData,
        documentId: product.code,
      );
      return Right(null);
    } catch (e) {
      return Left(ServerFaileur(message: e.toString()));
    }
  }
}
