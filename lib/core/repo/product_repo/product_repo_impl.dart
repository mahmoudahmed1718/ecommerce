import 'package:dartz/dartz.dart';
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
  Future<Either<Faileur, List<ProductEntity>>> getBestSellingProducts() async {
    try {
      final List<Map<String, dynamic>> data = await databaseService.getDataList(
        path: BackendPoints.getPorducts,
        query: {'limit': 10, 'orderBy': 'sellingcount', 'descending': true},
      );

      List<ProductModel> products =
          data.map((e) => ProductModel.formJson(e)).toList();

      return right(products);
    } on Exception catch (e) {
      return left(
        ServerFaileur(
          message: 'Failed to fetch best selling products: ${e.toString()}',
        ),
      );
    }
  }

  @override
  Future<Either<Faileur, List<ProductEntity>>> getProducts() async {
    try {
      final List<Map<String, dynamic>> data = await databaseService.getDataList(
        path: BackendPoints.getPorducts,
      );

      List<ProductModel> products =
          data.map((e) => ProductModel.formJson(e)).toList();

      return right(products);
    } on Exception catch (e) {
      return left(
        ServerFaileur(message: 'Failed to fetch products: ${e.toString()}'),
      );
    }
  }
}
