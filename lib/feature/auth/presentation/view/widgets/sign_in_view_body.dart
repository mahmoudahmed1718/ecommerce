import 'package:ecommerce/constants.dart';
import 'package:ecommerce/core/utils/app_colors.dart';
import 'package:ecommerce/core/utils/app_images.dart';
import 'package:ecommerce/core/utils/app_text_styels.dart';
import 'package:ecommerce/core/widgets/custom_button.dart';
import 'package:ecommerce/core/widgets/custom_text_form_field.dart';
import 'package:ecommerce/feature/auth/presentation/view/widgets/dont_have_an_account_widget.dart';
import 'package:ecommerce/feature/auth/presentation/view/widgets/or_divder.dart';
import 'package:ecommerce/feature/auth/presentation/view/widgets/social_login_button.dart';
import 'package:flutter/material.dart';

class SignInViewBody extends StatelessWidget {
  const SignInViewBody({super.key});
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: khorzintalPadding),
      child: SingleChildScrollView(
        child: Column(
          children: [
            SizedBox(height: 24),
            CustomTextFormField(
              hintText: 'email',
              textInputType: TextInputType.emailAddress,
            ),
            const SizedBox(height: 16),
            CustomTextFormField(
              hintText: 'password',
              textInputType: TextInputType.visiblePassword,
              icon: IconButton(
                onPressed: () {},
                icon: Icon(
                  Icons.visibility_off_outlined,
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

            CustomButton(onpressed: () {}, text: 'login'),
            const SizedBox(height: 32),
            DontHaveAnAccountWidget(),
            const SizedBox(height: 16),
            const OrDivider(),
            const SizedBox(height: 16),
            SocialLoginButton(
              title: 'login with facebook',
              image: Assets.imagesFacebookIcon,
              onPressed: () {},
            ),
            const SizedBox(height: 16),
            SocialLoginButton(
              title: 'login with google',
              image: Assets.imagesGoogleIcon,
              onPressed: () {},
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
    );
  }
}
