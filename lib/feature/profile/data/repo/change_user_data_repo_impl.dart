import 'package:dartz/dartz.dart';
import 'package:ecommerce/core/error/faileur.dart';
import 'package:ecommerce/core/services/firebase_auth_services.dart';
import 'package:ecommerce/feature/profile/domain/entities/profile_entity.dart';
import 'package:ecommerce/feature/profile/domain/repo/change_user_data_repo.dart';

class ChangeUserDataRepoImpl implements ChangeUserDataRepo {
  final FirebaseAuthServices firebaseAuthServices;

  ChangeUserDataRepoImpl({required this.firebaseAuthServices});

  @override
  Future<Either<Faileur, void>> changeUserData({
    required ProfileEntity profileEntity,
  }) async {
    try {
      final user = await firebaseAuthServices.getCurrentUser();

      if (user == null) {
        return Left(ServerFaileur(message: 'No user found'));
      }

      await firebaseAuthServices.reauthenticate(
        email: user.email!,
        password: profileEntity.currentPassword,
      );

      await firebaseAuthServices.updateUserProfile(
        uid: user.uid,
        name: profileEntity.name,
        email: profileEntity.email,
        newPassword: profileEntity.newPassword,
      );

      return Right(null);
    } catch (e) {
      return Left(ServerFaileur(message: e.toString()));
    }
  }
}
