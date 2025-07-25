import 'package:ecommerce/core/repo/orders_repo/order_repo.dart';
import 'package:ecommerce/core/repo/orders_repo/order_repo_impl.dart';
import 'package:ecommerce/core/repo/product_repo/product_repo.dart';
import 'package:ecommerce/core/repo/product_repo/product_repo_impl.dart';
import 'package:ecommerce/core/services/database_service.dart';
import 'package:ecommerce/core/services/firebase_auth_services.dart';
import 'package:ecommerce/core/services/firestore_service.dart';
import 'package:ecommerce/feature/auth/data/repo/auth_repo_impl.dart';
import 'package:ecommerce/feature/auth/domain/repo/auth_repo.dart';
import 'package:ecommerce/feature/profile/data/repo/change_user_data_repo_impl.dart';
import 'package:ecommerce/feature/profile/domain/repo/change_user_data_repo.dart';
import 'package:get_it/get_it.dart';

final getIt = GetIt.instance;

void setupGetIt() {
  getIt.registerSingleton<FirebaseAuthServices>(FirebaseAuthServices());
  getIt.registerSingleton<DatabaseService>(FirestoreService());
  getIt.registerSingleton<AuthRepo>(
    AuthRepoImpl(
      firebaseAuthServices: getIt<FirebaseAuthServices>(),
      databaseService: getIt<DatabaseService>(),
    ),
  );
  getIt.registerSingleton<ProductRepo>(
    ProductRepoImpl(databaseService: getIt<DatabaseService>()),
  );

  getIt.registerSingleton<OrderRepo>(
    OrderRepoImpl(databaseService: getIt<DatabaseService>()),
  );
  getIt.registerSingleton<ChangeUserDataRepo>(
    ChangeUserDataRepoImpl(firebaseAuthServices: getIt<FirebaseAuthServices>()),
  );
}
