import 'dart:developer';

import 'package:dartz/dartz.dart';
import 'package:ecommerce/core/error/exception.dart';
import 'package:ecommerce/core/error/faileur.dart';
import 'package:ecommerce/core/services/database_service.dart';
import 'package:ecommerce/core/services/firebase_auth_services.dart';
import 'package:ecommerce/core/services/firestore_service.dart';
import 'package:ecommerce/core/utils/backend_points.dart';
import 'package:ecommerce/feature/auth/data/models/user_model.dart';
import 'package:ecommerce/feature/auth/domain/entities/user_entity.dart';
import 'package:ecommerce/feature/auth/domain/repo/auth_repo.dart';

class AuthRepoImpl implements AuthRepo {
  final FirebaseAuthServices firebaseAuthServices;
  final DatabaseService databaseService;
  AuthRepoImpl({
    required this.databaseService,
    required this.firebaseAuthServices,
  });
  @override
  Future<Either<Faileur, UserEntity>> createUserWithEmailAndPassword({
    required String email,
    required String password,
    // required String name,
  }) async {
    try {
      var user = await firebaseAuthServices.createUserWithEmailAndPassword(
        email: email,
        password: password,
      );
      return right(UserModel.formFireBaseUser(user!));
    } on CustomException catch (e) {
      return left(ServerFaileur(message: e.message));
    } catch (e) {
      return left(ServerFaileur(message: 'An unknown error occurred.'));
    }
  }

  @override
  Future<Either<Faileur, UserEntity>> signInWithEmailAndPassword({
    required String email,
    required String password,
  }) async {
    try {
      var user = await firebaseAuthServices.signInWithEmailAndPassword(
        email: email,
        password: password,
      );
      return right(UserModel.formFireBaseUser(user!));
    } on CustomException catch (e) {
      return left(ServerFaileur(message: e.message));
    } catch (e) {
      log(
        'execption on authRepoImpl.signInWithEmailAndPassword. ${e.toString()}',
      );
      return left(ServerFaileur(message: 'An unknown error occurred.'));
    }
  }

  Future<Either<Faileur, UserEntity>> signInWithGoogle() async {
    try {
      var user = await firebaseAuthServices.signInWithGoogle();
      return right(UserModel.formFireBaseUser(user));
    } catch (e) {
      log('execption on authRepoImpl.signInWithGoogle. ${e.toString()}');
      return left(ServerFaileur(message: 'An unknown error occurred.'));
    }
  }

  @override
  Future<Either<Faileur, UserEntity>> signInWithFacebook() async {
    try {
      var user = await firebaseAuthServices.signInWithFacebook();
      return right(UserModel.formFireBaseUser(user));
    } catch (e) {
      log('execption on authRepoImpl.signInWithFacebook. ${e.toString()}');
      return left(ServerFaileur(message: 'An unknown error occurred.'));
    }
  }

  @override
  Future addUserDataToFirestore({required UserEntity user}) async {
    await databaseService.addData(
      path: BackendPoints.addUserData,
      data: user.toMap(),
    );
  }
}
