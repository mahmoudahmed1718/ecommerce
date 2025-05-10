import 'package:ecommerce/core/widgets/custom_appbar.dart';
import 'package:ecommerce/feature/auth/presentation/view/widgets/signup_view_body.dart';
import 'package:flutter/material.dart';

class SignUpView extends StatelessWidget {
  const SignUpView({super.key});
  static const String routeName = '/signUp';
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: buildAppbar(context: context, titel: 'Sign Up'),
      body: SignupViewBody(),
    );
  }
}
