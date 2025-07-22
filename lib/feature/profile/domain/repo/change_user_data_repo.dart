import 'package:dartz/dartz.dart';
import 'package:ecommerce/core/error/faileur.dart';

import 'package:ecommerce/feature/profile/domain/entities/profile_entity.dart';

abstract class ChangeUserDataRepo {
  Future<Either<Faileur, void>> changeUserData({
    required ProfileEntity profileEntity,
  });
}
