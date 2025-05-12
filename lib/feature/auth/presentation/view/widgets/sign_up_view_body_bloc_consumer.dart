import 'package:ecommerce/feature/auth/presentation/manger/cubit/sign_up/sign_up_cubit.dart';
import 'package:ecommerce/feature/auth/presentation/manger/cubit/sign_up/sign_up_state.dart';
import 'package:ecommerce/feature/auth/presentation/view/widgets/signup_view_body.dart';
import 'package:flutter/widgets.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:modal_progress_hud_nsn/modal_progress_hud_nsn.dart';

class SignUpViewBodyBlocConsumer extends StatelessWidget {
  const SignUpViewBodyBlocConsumer({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocConsumer<SignUpCubit, SignupState>(
      listener: (context, state) {},
      builder: (context, state) {
        return ModalProgressHUD(
          inAsyncCall: state is SignupLoadingState ? true : false,
          child: SignupViewBody(),
        );
      },
    );
  }
}
