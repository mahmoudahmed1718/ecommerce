import 'package:ecommerce/core/helper/get_user_data.dart';
import 'package:ecommerce/feature/home/presentation/views/widgets/custom_text_form_field.dart';
import 'package:flutter/material.dart';

class EditDataProfileViewBody extends StatelessWidget {
  const EditDataProfileViewBody({super.key});
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 16.0),
      child: ListView(
        children: [
          const SizedBox(height: 60),
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
          const SizedBox(height: 16),
        ],
      ),
    );
  }
}
