import 'package:ecommerce/core/helper/get_user_data.dart';
import 'package:ecommerce/core/widgets/custom_button.dart';
import 'package:ecommerce/feature/home/presentation/views/widgets/custom_text_form_field.dart';
import 'package:ecommerce/feature/profile/presentation/views/widgets/general_word_widget.dart';
import 'package:flutter/material.dart';

class EditDataProfileViewBody extends StatefulWidget {
  const EditDataProfileViewBody({super.key});

  @override
  State<EditDataProfileViewBody> createState() =>
      _EditDataProfileViewBodyState();
}

class _EditDataProfileViewBodyState extends State<EditDataProfileViewBody> {
  bool isObscure = true;
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 16.0),
      child: ListView(
        children: [
          const SizedBox(height: 24),
          GeneralWordWidget(text: 'Personal Information'),
          const SizedBox(height: 16),
          CustomTextFormField(
            controller: TextEditingController(text: getUserData().name),
            hintText: 'Name',
            textInputType: TextInputType.name,
            icon: Icon(Icons.edit_outlined),
          ),
          const SizedBox(height: 16),
          CustomTextFormField(
            controller: TextEditingController(text: getUserData().email),
            hintText: 'email',
            textInputType: TextInputType.name,
            icon: Icon(Icons.edit_outlined),
          ),
          const SizedBox(height: 24),
          GeneralWordWidget(text: 'Change Password'),
          const SizedBox(height: 16),
          CustomTextFormField(
            isObscure: isObscure,

            hintText: 'Current Password',
            textInputType: TextInputType.visiblePassword,
            icon: IconButton(
              onPressed: () {
                setState(() {
                  isObscure = !isObscure;
                });
              },
              icon: Icon(isObscure ? Icons.visibility_off : Icons.visibility),
            ),
          ),
          const SizedBox(height: 16),
          CustomTextFormField(
            isObscure: isObscure,
            hintText: 'New Password',
            textInputType: TextInputType.visiblePassword,
            icon: IconButton(
              onPressed: () {
                setState(() {
                  isObscure = !isObscure;
                });
              },
              icon: Icon(isObscure ? Icons.visibility_off : Icons.visibility),
            ),
          ),
          const SizedBox(height: 16),
          CustomTextFormField(
            isObscure: isObscure,
            hintText: 'Confirm Password',
            textInputType: TextInputType.visiblePassword,
            icon: IconButton(
              onPressed: () {
                setState(() {
                  isObscure = !isObscure;
                });
              },
              icon: Icon(isObscure ? Icons.visibility_off : Icons.visibility),
            ),
          ),
          const SizedBox(height: 64),
          CustomButton(onpressed: () {}, text: 'Save Changes'),
        ],
      ),
    );
  }
}
