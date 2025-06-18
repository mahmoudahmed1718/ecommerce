import 'package:ecommerce/core/utils/app_text_styels.dart';
import 'package:ecommerce/core/widgets/notifacation_widget.dart';
import 'package:flutter/material.dart';

AppBar buildAppBar(BuildContext context, {required String title}) {
  return AppBar(
    leading: IconButton(
      icon: const Icon(Icons.arrow_back_ios_new_outlined),
      onPressed: () {
        // Navigate back to the previous screen
        Navigator.of(Navigator.of(context).context).pop();
      },
    ),
    actions: [
      Padding(
        padding: const EdgeInsets.symmetric(horizontal: 16.0),
        child: Notficationwidget(),
      ),
    ],
    backgroundColor: Colors.transparent,
    elevation: 0,
    centerTitle: true,
    title: Text(title, style: TextStyles.bold19),
  );
}
