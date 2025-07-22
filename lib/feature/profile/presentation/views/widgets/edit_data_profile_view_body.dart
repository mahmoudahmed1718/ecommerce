import 'package:ecommerce/core/helper/get_user_data.dart';

import 'package:ecommerce/core/widgets/custom_button.dart';
import 'package:ecommerce/feature/home/presentation/views/widgets/custom_text_form_field.dart';
import 'package:ecommerce/feature/profile/domain/entities/profile_entity.dart';
import 'package:ecommerce/feature/profile/presentation/views/manger/change_profile_data_cubit/change_profile_data_cubit.dart';
import 'package:ecommerce/feature/profile/presentation/views/widgets/general_word_widget.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class EditDataProfileViewBody extends StatefulWidget {
  const EditDataProfileViewBody({super.key});

  @override
  State<EditDataProfileViewBody> createState() =>
      _EditDataProfileViewBodyState();
}

class _EditDataProfileViewBodyState extends State<EditDataProfileViewBody> {
  final _formKey = GlobalKey<FormState>();
  bool isObscure = true;
  String? name;
  String? email;
  String? currentPassword;
  String? newPassword;
  String? confirmPassword;
  final TextEditingController _nameController = TextEditingController();
  final TextEditingController _emailController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 16.0),
      child: Form(
        key: _formKey,
        child: ListView(
          children: [
            const SizedBox(height: 24),
            GeneralWordWidget(text: 'Personal Information'),
            const SizedBox(height: 16),
            CustomTextFormField(
              onSaved: (value) => name = value,
              controller: _nameController,
              hintText:
                  FirebaseAuth.instance.currentUser?.displayName ?? 'Name',
              textInputType: TextInputType.name,
              icon: Icon(Icons.edit_outlined),
            ),
            const SizedBox(height: 16),
            CustomTextFormField(
              onSaved: (value) => email = value,
              controller: _emailController,
              hintText: FirebaseAuth.instance.currentUser?.email ?? 'Email',
              textInputType: TextInputType.emailAddress,
              icon: Icon(Icons.edit_outlined),
            ),
            const SizedBox(height: 24),
            GeneralWordWidget(text: 'Change Password'),
            const SizedBox(height: 16),
            CustomTextFormField(
              onSaved: (value) => currentPassword = value,
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
              onSaved: (value) => newPassword = value,
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
              onSaved: (value) => confirmPassword = value,
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
            CustomButton(
              onpressed: () async {
                _formKey.currentState!.save();

                if (newPassword != confirmPassword) {
                  ScaffoldMessenger.of(context).showSnackBar(
                    SnackBar(
                      content: Text("Passwords do not match"),
                      backgroundColor: Colors.orange,
                    ),
                  );
                  return;
                }

                try {
                  context.read<ChangeProfileDataCubit>().changeUserData(
                    profileEntity: ProfileEntity(
                      currentPassword: currentPassword ?? '',
                      name: name ?? getUserData().name,
                      email: email ?? getUserData().email,
                      newPassword: newPassword ?? '',
                    ),
                  );

                  ScaffoldMessenger.of(context).showSnackBar(
                    const SnackBar(
                      content: Text("Profile updated successfully"),
                      backgroundColor: Colors.green,
                    ),
                  );
                } catch (e) {
                  ScaffoldMessenger.of(context).showSnackBar(
                    SnackBar(
                      content: Text("Error: ${e.toString()}"),
                      backgroundColor: Colors.red,
                    ),
                  );
                }
              },
              text: 'Save Changes',
            ),
          ],
        ),
      ),
    );
  }
}
