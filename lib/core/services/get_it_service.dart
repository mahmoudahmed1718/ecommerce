import 'package:ecommerce/core/services/firebase_auth_services.dart';
import 'package:ecommerce/feature/auth/data/repo/auth_repo_impl.dart';
import 'package:ecommerce/feature/auth/domain/repo/auth_repo.dart';
import 'package:get_it/get_it.dart';

final getIt = GetIt.instance;

void setup() {
  getIt.registerSingleton<FirebaseAuthServices>(FirebaseAuthServices());
  getIt.registerSingleton<AuthRepo>(
    AuthRepoImpl(firebaseAuthServices: getIt<FirebaseAuthServices>()),
  );
}
