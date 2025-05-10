import 'package:ecommerce/constants.dart';
import 'package:ecommerce/core/widgets/custom_text_form_field.dart';
import 'package:flutter/material.dart';

class LoginViewBody extends StatelessWidget {
  const LoginViewBody({super.key});
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: khorzintalPadding),
      child: SingleChildScrollView(
        child: Column(
          children: [
            CustomTextFormField(
              hintText: 'email',
              textInputType: TextInputType.emailAddress,
            ),
          ],
        ),
      ),
    );
  }
}
