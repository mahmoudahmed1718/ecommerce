import 'package:ecommerce/core/utils/app_images.dart';
import 'package:ecommerce/core/utils/app_text_styels.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

class CustomSearchTextField extends StatelessWidget {
  const CustomSearchTextField({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        boxShadow: [
          BoxShadow(
            color: const Color(0X0A000000).withValues(alpha: 0.1),
            blurRadius: 9,
            offset: const Offset(0, 2),
            spreadRadius: 0,
          ),
        ],
      ),
      child: TextField(
        keyboardType: TextInputType.text,
        decoration: InputDecoration(
          suffixIcon: SizedBox(
            width: 20,
            child: Center(child: SvgPicture.asset(Assets.imagesFilter)),
          ),
          prefixIcon: SizedBox(
            width: 20,
            child: Center(child: SvgPicture.asset(Assets.imagesSearchIcon)),
          ),
          hintText: 'Search for products',
          hintStyle: TextStyles.regular13.copyWith(color: Color(0XFF949D9E)),
          filled: true,
          fillColor: Colors.white,
          border: buildBorder(),
          enabledBorder: buildBorder(),
          focusedBorder: buildBorder(),
        ),
      ),
    );
  }

  OutlineInputBorder buildBorder() {
    return OutlineInputBorder(
      borderRadius: BorderRadius.circular(4),
      borderSide: BorderSide(width: 1, color: Colors.white),
    );
  }
}
