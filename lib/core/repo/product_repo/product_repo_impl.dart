import 'package:dartz/dartz.dart';
import 'package:ecommerce/constants.dart';
import 'package:ecommerce/core/entites/product_entity.dart';
import 'package:ecommerce/core/error/faileur.dart';
import 'package:ecommerce/core/models/product_model.dart';
import 'package:ecommerce/core/repo/product_repo/product_repo.dart';
import 'package:ecommerce/core/services/database_service.dart';
import 'package:ecommerce/core/utils/backend_points.dart';

class ProductRepoImpl implements ProductRepo {
  final DatabaseService databaseService;

  ProductRepoImpl({required this.databaseService});
  @override
  Future<Either<Faileur, List<ProductEntity>>> getBestSellingProducts() {
    throw UnimplementedError();
  }

  @override
  Future<Either<Faileur, List<ProductEntity>>> getProducts() async {
    try {
      var data =
          await databaseService.getDataList(path: BackendPoints.getPorducts)
              as Map<String, dynamic>;
      List<ProductModel> products =
          data.values.map((e) => ProductModel.formJson(e)).toList();
      return right(products);
    } on Exception catch (e) {
      return left(
        ServerFaileur(message: 'Failed to fetch products: ${e.toString()}'),
      );
    }
  }
}
