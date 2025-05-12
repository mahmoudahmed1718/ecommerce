import 'package:ecommerce/feature/auth/presentation/manger/cubit/cubit/sign_in_cubit.dart';
import 'package:ecommerce/feature/auth/presentation/view/widgets/custom_modal_progress_hud.dart';
import 'package:ecommerce/feature/auth/presentation/view/widgets/sign_in_view_body.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class SignInViewBodyBlocConsumer extends StatelessWidget {
  const SignInViewBodyBlocConsumer({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocConsumer<SignInCubit, SignInState>(
      listener: (context, state) {
        if (state is SignInFailState) {
          ScaffoldMessenger.of(context).showSnackBar(
            SnackBar(content: Text(state.error), backgroundColor: Colors.red),
          );
        } else if (state is SignInSuccessState) {
          // Navigator.pushReplacementNamed(context, '/home');
        }
      },
      builder: (context, state) {
        return CustomModalProgressHud(
          isLoading: state is SignInLoadingState ? true : false,
          child: SignInViewBody(),
        );
      },
    );
  }
}
