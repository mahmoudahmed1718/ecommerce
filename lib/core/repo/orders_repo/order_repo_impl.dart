import 'package:dartz/dartz.dart';
import 'package:ecommerce/core/error/faileur.dart';
import 'package:ecommerce/core/repo/orders_repo/order_repo.dart';
import 'package:ecommerce/core/services/database_service.dart';
import 'package:ecommerce/core/utils/backend_points.dart';
import 'package:ecommerce/feature/checkout/data/models/order_model.dart';
import 'package:ecommerce/feature/checkout/domain/entites/order_entity.dart';

class OrderRepoImpl implements OrderRepo {
  final DatabaseService databaseService;

  OrderRepoImpl({required this.databaseService});
  @override
  Future<Either<Faileur, void>> addOrder({required OrderEntity order}) async {
    try {
      var orderId = await databaseService.addData(
        path: BackendPoints.addOrder,
        data: OrderModel.fromEntity(order).toJson(),
      );
      return Right(orderId);
    } catch (e) {
      return Left(ServerFaileur(message: 'Failed to add order: $e'));
    }
  }
}
