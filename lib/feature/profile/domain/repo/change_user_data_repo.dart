import 'package:dartz/dartz.dart';
import 'package:ecommerce/core/error/faileur.dart';
import 'package:ecommerce/feature/auth/domain/entities/user_entity.dart';

abstract class ChangeUserDataRepo {
  Future<Either<Faileur, void>> changeUserData({
    required UserEntity userEntity,
  });
}
