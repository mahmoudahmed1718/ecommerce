import 'package:ecommerce/core/utils/app_text_styels.dart';
import 'package:flutter/material.dart';

AppBar buildAppbar({required BuildContext context, required String titel}) =>
    AppBar(
      leading: GestureDetector(
        onTap: () {
          Navigator.pop(context);
        },
        child: Icon(Icons.arrow_back_ios_new_outlined),
      ),

      title: Text(titel, style: TextStyles.bold23),
    );
