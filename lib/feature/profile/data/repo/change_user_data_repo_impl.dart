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
      var user = await firebaseAuthServices.getCurrentUser();
      await user!.updateDisplayName(profileEntity.name);
      await user.verifyBeforeUpdateEmail(profileEntity.email);
      await user.updatePassword(profileEntity.password);
      return Right(null);
    } on ServerFaileur catch (e) {
      return Left(ServerFaileur(message: e.message));
    }
  }
}
