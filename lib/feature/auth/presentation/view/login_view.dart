import 'package:ecommerce/core/widgets/custom_appbar.dart';
import 'package:ecommerce/feature/auth/presentation/view/widgets/login_view_body.dart';
import 'package:ecommerce/generated/locale_keys.g.dart';
import 'package:flutter/material.dart';
import 'package:easy_localization/easy_localization.dart';

class LoginView extends StatelessWidget {
  const LoginView({super.key});
  static const String routeName = '/login';
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: buildAppbar(
        context: context,
        titel: LocaleKeys.Login.tr(),

        actions: [
          IconButton(
            onPressed: () {
              final currentLocale = context.locale;

              if (currentLocale.languageCode == 'ar') {
                context.setLocale(const Locale('en'));
              } else {
                context.setLocale(const Locale('ar'));
              }
            },
            icon: const Icon(Icons.language),
          ),
        ],
      ),
      body: LoginViewBody(),
    );
  }
}
