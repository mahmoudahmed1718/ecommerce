import 'package:ecommerce/constants.dart';
import 'package:ecommerce/core/widgets/custom_button.dart';
import 'package:ecommerce/core/widgets/custom_text_form_field.dart';
import 'package:ecommerce/feature/auth/presentation/view/widgets/have_an_account_widgets.dart';
import 'package:ecommerce/feature/auth/presentation/view/widgets/terms_and_condation_widget.dart';
import 'package:flutter/material.dart';

class SignupViewBody extends StatefulWidget {
  const SignupViewBody({super.key});

  @override
  State<SignupViewBody> createState() => _SignupViewBodyState();
}

class _SignupViewBodyState extends State<SignupViewBody> {
  final GlobalKey<FormState> formKey = GlobalKey();
  AutovalidateMode autovalidateMode = AutovalidateMode.disabled;
  String? email, password, name;
  bool isObscure = true;
  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Padding(
        padding: const EdgeInsets.symmetric(horizontal: khorzintalPadding),
        child: Form(
          key: formKey,
          autovalidateMode: autovalidateMode,
          child: Column(
            children: [
              SizedBox(height: 24),
              CustomTextFormField(
                onSaved: (value) {
                  name = value;
                },
                hintText: 'Full Name',
                textInputType: TextInputType.name,
              ),
              const SizedBox(height: 16),
              CustomTextFormField(
                onSaved: (value) {
                  email = value;
                },
                hintText: 'email',
                textInputType: TextInputType.emailAddress,
              ),
              const SizedBox(height: 16),
              CustomTextFormField(
                onSaved: (value) {
                  password = value;
                },
                hintText: 'password',
                textInputType: TextInputType.visiblePassword,
                icon: IconButton(
                  onPressed: () {
                    setState(() {
                      isObscure = !isObscure;
                    });
                  },
                  icon: Icon(
                    isObscure ? Icons.visibility : Icons.visibility_off,
                    color: Color(0XFFC9CFCF),
                  ),
                ),
              ),
              const SizedBox(height: 16),
              TermsAndCondationWidget(),
              const SizedBox(height: 16),
              CustomButton(
                onpressed: () {
                  if (formKey.currentState!.validate()) {
                    formKey.currentState!.save();
                    // Call the sign-up function here
                  } else {
                    setState(() {
                      autovalidateMode = AutovalidateMode.always;
                    });
                  }
                },
                text: 'Sign Up',
              ),
              const SizedBox(height: 26),
              HaveAnAccountWidget(),
            ],
          ),
        ),
      ),
    );
  }
}
