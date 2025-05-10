import 'package:ecommerce/core/utils/app_text_styels.dart';
import 'package:flutter/material.dart';

class CustomTextFormField extends StatelessWidget {
  const CustomTextFormField({
    super.key,
    required this.hintText,
    required this.textInputType,
    this.icon,
  });
  final String hintText;
  final TextInputType textInputType;
  final Widget? icon;
  @override
  Widget build(BuildContext context) {
    return TextFormField(
      keyboardType: textInputType,
      decoration: InputDecoration(
        suffixIcon: icon,

        hintText: hintText,
        hintStyle: TextStyles.bold13.copyWith(color: Color(0XFF949D9E)),
        filled: true,
        fillColor: Color(0XFFF9FAFA),
        border: buildBorder(),
        enabledBorder: buildBorder(),
        focusedBorder: buildBorder(),
      ),
    );
  }

  OutlineInputBorder buildBorder() {
    return OutlineInputBorder(
      borderRadius: BorderRadius.circular(4),
      borderSide: BorderSide(width: 1, color: Color(0XFFE6E9E9)),
    );
  }
}
