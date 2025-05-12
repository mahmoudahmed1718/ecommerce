import 'package:ecommerce/feature/auth/presentation/manger/cubit/sign_up/sign_up_cubit.dart';
import 'package:ecommerce/feature/auth/presentation/manger/cubit/sign_up/sign_up_state.dart';
import 'package:ecommerce/feature/auth/presentation/view/widgets/custom_modal_progress_hud.dart';
import 'package:ecommerce/feature/auth/presentation/view/widgets/signup_view_body.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class SignUpViewBodyBlocConsumer extends StatelessWidget {
  const SignUpViewBodyBlocConsumer({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocConsumer<SignUpCubit, SignupState>(
      listener: (context, state) {
        if (state is SignupFailState) {
          _showErrorSnackBar(context, state.error);
        } else if (state is SignupSuccessState) {
          _showErrorSnackBar(context, 'Signup successful');
        }
      },
      builder: (context, state) {
        return CustomModalProgressHud(
          isLoading: state is SignupLoadingState,
          child: SignupViewBody(),
        );
      },
    );
  }

  void _showErrorSnackBar(BuildContext context, String message) {
    ScaffoldMessenger.of(context).showSnackBar(
      SnackBar(
        content: Row(
          children: [
            Icon(Icons.error_outline, color: Colors.white),
            SizedBox(width: 8),
            Expanded(child: Text(message)),
          ],
        ),
        backgroundColor: Colors.redAccent,
        behavior: SnackBarBehavior.floating,
        shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(16)),
        margin: EdgeInsets.symmetric(horizontal: 20, vertical: 10),
        duration: Duration(seconds: 3),
        elevation: 8,
      ),
    );
  }
}
