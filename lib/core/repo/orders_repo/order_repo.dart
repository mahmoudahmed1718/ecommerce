import 'package:dartz/dartz.dart';
import 'package:ecommerce/core/error/faileur.dart';
import 'package:ecommerce/feature/checkout/domain/entites/order_entity.dart';

abstract class OrderRepo {
  Future<Either<Faileur, void>> addOrder({required OrderEntity order});
}
