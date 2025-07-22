import 'package:ecommerce/core/services/get_it_service.dart';
import 'package:ecommerce/core/widgets/custom_appbar.dart';
import 'package:ecommerce/feature/auth/domain/repo/auth_repo.dart';
import 'package:ecommerce/feature/auth/presentation/manger/cubit/cubit/sign_in_cubit.dart';
import 'package:ecommerce/feature/auth/presentation/view/widgets/sign_in_view_body_bloc_consumer.dart';
import 'package:ecommerce/generated/locale_keys.g.dart';
import 'package:flutter/material.dart';
import 'package:easy_localization/easy_localization.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class SignInView extends StatelessWidget {
  const SignInView({super.key});
  static const String routeName = '/login';
  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (context) => SignInCubit(getIt.get<AuthRepo>()),
      child: Scaffold(
        appBar: buildAppbar(
          isbackbutton: false,
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

        body: SignInViewBodyBlocConsumer(),
      ),
    );
  }
}
