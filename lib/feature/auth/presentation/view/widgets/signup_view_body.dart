import 'package:ecommerce/constants.dart';
import 'package:ecommerce/core/widgets/custom_text_form_field.dart';
import 'package:ecommerce/feature/auth/presentation/view/widgets/terms_and_condation_widget.dart';
import 'package:flutter/material.dart';

class SignupViewBody extends StatelessWidget {
  const SignupViewBody({super.key});
  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Padding(
        padding: const EdgeInsets.symmetric(horizontal: khorzintalPadding),
        child: Column(
          children: [
            SizedBox(height: 24),
            CustomTextFormField(
              hintText: 'Full Name',
              textInputType: TextInputType.name,
            ),
            const SizedBox(height: 16),
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
            const SizedBox(height: 16),
            TermsAndCondationWidget(),
          ],
        ),
      ),
    );
  }
}
