import 'package:bloc/bloc.dart';
import 'package:ecommerce/feature/auth/domain/entities/user_entity.dart';
import 'package:meta/meta.dart';

part 'sign_in_state.dart';

class SignInCubit extends Cubit<SignInState> {
  SignInCubit() : super(SignInInitial());
}
