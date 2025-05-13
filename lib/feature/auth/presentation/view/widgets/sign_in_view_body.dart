import 'package:ecommerce/constants.dart';
import 'package:ecommerce/core/utils/app_colors.dart';
import 'package:ecommerce/core/utils/app_images.dart';
import 'package:ecommerce/core/utils/app_text_styels.dart';
import 'package:ecommerce/core/widgets/custom_button.dart';
import 'package:ecommerce/core/widgets/custom_text_form_field.dart';
import 'package:ecommerce/feature/auth/presentation/manger/cubit/cubit/sign_in_cubit.dart';
import 'package:ecommerce/feature/auth/presentation/view/widgets/dont_have_an_account_widget.dart';
import 'package:ecommerce/feature/auth/presentation/view/widgets/or_divder.dart';
import 'package:ecommerce/feature/auth/presentation/view/widgets/social_login_button.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class SignInViewBody extends StatefulWidget {
  const SignInViewBody({super.key});

  @override
  State<SignInViewBody> createState() => _SignInViewBodyState();
}

class _SignInViewBodyState extends State<SignInViewBody> {
  bool isPasswordVisible = false;
  late String email, password;
  final GlobalKey<FormState> _formKey = GlobalKey();
  AutovalidateMode _autovalidateMode = AutovalidateMode.disabled;
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: khorzintalPadding),
      child: SingleChildScrollView(
        child: Form(
          key: _formKey,
          autovalidateMode: _autovalidateMode,
          child: Column(
            children: [
              SizedBox(height: 24),
              CustomTextFormField(
                onSaved: (value) => email = value!,
                hintText: 'email',
                textInputType: TextInputType.emailAddress,
              ),
              const SizedBox(height: 16),
              CustomTextFormField(
                isObscure: !isPasswordVisible,
                onSaved: (value) => password = value!,
                hintText: 'password',
                textInputType: TextInputType.visiblePassword,
                icon: IconButton(
                  onPressed: () {
                    setState(() {
                      isPasswordVisible = !isPasswordVisible;
                    });
                  },
                  icon: Icon(
                    isPasswordVisible ? Icons.visibility : Icons.visibility_off,
                    color: Color(0XFFC9CFCF),
                  ),
                ),
              ),

              TextButton(
                onPressed: () {},
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.end,
                  children: [
                    Text(
                      'forget password?',
                      style: TextStyles.semiBold13.copyWith(
                        color: AppColors.lightPrimaryColor,
                      ),
                    ),
                  ],
                ),
              ),

              CustomButton(
                onpressed: () {
                  if (_formKey.currentState!.validate()) {
                    _formKey.currentState!.save();
                    context.read<SignInCubit>().signIn(
                      email: email,
                      password: password,
                    );
                  } else {
                    _autovalidateMode = AutovalidateMode.always;
                  }
                },
                text: 'login',
              ),
              const SizedBox(height: 32),
              DontHaveAnAccountWidget(),
              const SizedBox(height: 16),
              const OrDivider(),
              const SizedBox(height: 16),
              SocialLoginButton(
                title: 'login with facebook',
                image: Assets.imagesFacebookIcon,
                onPressed: () {
                  context.read<SignInCubit>().signInWithFacebook();
                },
              ),
              const SizedBox(height: 16),
              SocialLoginButton(
                title: 'login with google',
                image: Assets.imagesGoogleIcon,
                onPressed: () {
                  context.read<SignInCubit>().signInWithGoogle();
                },
              ),
              const SizedBox(height: 16),
              SocialLoginButton(
                title: 'login with apple',
                image: Assets.imagesApplIcon,
                onPressed: () {},
              ),
            ],
          ),
        ),
      ),
    );
  }
}
