import 'package:dartz/dartz.dart';
import 'package:ecommerce/core/error/faileur.dart';
import 'package:ecommerce/feature/auth/domain/entities/user_entity.dart';
import 'package:ecommerce/feature/auth/domain/repo/auth_repo.dart';

class AuthRepoImpl implements AuthRepo {
  @override
  Future<Either<Faileur, UserEntity>> createUserWithEmailAndPassword({
    required String email,
    required String password,
  }) {
    throw UnimplementedError();
  }
}
