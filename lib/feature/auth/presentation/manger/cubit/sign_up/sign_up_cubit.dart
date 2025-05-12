import 'package:ecommerce/feature/auth/domain/repo/auth_repo.dart';
import 'package:ecommerce/feature/auth/presentation/manger/cubit/sign_up/sign_up_state.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class SignUpCubit extends Cubit<SignupState> {
  final AuthRepo authRepo;
  SignUpCubit(this.authRepo) : super(SignupInitialState());
  Future<void> signUp({
    required String email,
    required String password,
    required String name,
  }) async {
    emit(SignupLoadingState());
    final user = await authRepo.createUserWithEmailAndPassword(
      email: email,
      password: password,
    );
    user.fold(
      (error) {
        emit(SignupFailState(error: error.message));
      },
      (user) {
        emit(SignupSuccessState(user: user));
      },
    );
  }
}
