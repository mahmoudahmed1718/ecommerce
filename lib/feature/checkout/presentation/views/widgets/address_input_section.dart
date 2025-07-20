import 'package:ecommerce/feature/home/presentation/views/widgets/custom_text_form_field.dart';
import 'package:flutter/material.dart';

class AddressInputSection extends StatelessWidget {
  const AddressInputSection({super.key});
  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Column(
        children: [
          const SizedBox(height: 24),
          CustomTextFormField(
            hintText: 'Name',
            textInputType: TextInputType.name,
          ),
          SizedBox(height: 16),
          CustomTextFormField(
            hintText: 'Email',
            textInputType: TextInputType.emailAddress,
          ),
          SizedBox(height: 16),
          CustomTextFormField(
            hintText: 'Address',
            textInputType: TextInputType.streetAddress,
          ),
          SizedBox(height: 16),
          CustomTextFormField(
            hintText: 'city',
            textInputType: TextInputType.text,
          ),
          SizedBox(height: 16),
          CustomTextFormField(
            hintText: 'Your ID',
            textInputType: TextInputType.text,
          ),
          SizedBox(height: 16),
          CustomTextFormField(
            hintText: 'Phone Number',
            textInputType: TextInputType.number,
          ),
          SizedBox(height: 16),
        ],
      ),
    );
  }
}
