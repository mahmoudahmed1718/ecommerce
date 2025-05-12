import 'package:ecommerce/core/services/get_it_service.dart';
import 'package:ecommerce/core/widgets/custom_appbar.dart';
import 'package:ecommerce/feature/auth/domain/repo/auth_repo.dart';
import 'package:ecommerce/feature/auth/presentation/manger/cubit/sign_up/sign_up_cubit.dart';
import 'package:ecommerce/feature/auth/presentation/view/widgets/sign_up_view_body_bloc_consumer.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class SignUpView extends StatelessWidget {
  const SignUpView({super.key});
  static const String routeName = '/signUp';
  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (context) => SignUpCubit(getIt<AuthRepo>()),
      child: Scaffold(
        appBar: buildAppbar(context: context, titel: 'Sign Up'),
        body: SignUpViewBodyBlocConsumer(),
      ),
    );
  }
}
