import 'package:easy_localization/easy_localization.dart';
import 'package:ecommerce/core/helper/on_generate_routes.dart';
import 'package:ecommerce/core/services/custom_bloc_observer.dart';
import 'package:ecommerce/core/services/get_it_service.dart';
import 'package:ecommerce/core/services/shared_prefernce_singlton.dart';
import 'package:ecommerce/core/utils/app_colors.dart';
import 'package:ecommerce/feature/profile/presentation/views/manger/theme_cubit/theme_cubit_cubit.dart';
import 'package:ecommerce/feature/splash/presentation/views/splash_view.dart';
import 'package:ecommerce/firebase_options.dart';
import 'package:ecommerce/generated/codegen_loader.g.dart';
import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

void main() async {
  Bloc.observer = CustomBlocObserver();
  WidgetsFlutterBinding.ensureInitialized();
  await Firebase.initializeApp();
  await Firebase.initializeApp(options: DefaultFirebaseOptions.currentPlatform);
  await EasyLocalization.ensureInitialized();
  await SharedPreferenceSingleton.init();
  setupGetIt();
  runApp(
    EasyLocalization(
      supportedLocales: [Locale('en'), Locale('ar')],
      path: 'assets/translation',
      fallbackLocale: Locale('ar'),
      assetLoader: CodegenLoader(),
      child: BlocProvider(create: (context) => ThemeCubit(), child: MyApp()),
    ),
  );
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});
  @override
  Widget build(BuildContext context) {
    return BlocBuilder<ThemeCubit, ThemeMode>(
      builder: (context, state) {
        return MaterialApp(
          themeMode: state,
          theme: ThemeData(
            fontFamily: 'Cairo',
            scaffoldBackgroundColor: Colors.white,
            colorScheme: ColorScheme.fromSeed(
              seedColor: AppColors.primaryColor,
            ),
          ),
          darkTheme: ThemeData.dark(),
          localizationsDelegates: context.localizationDelegates,
          supportedLocales: context.supportedLocales,
          locale: context.locale,
          onGenerateRoute: onGenerateRoutes,
          initialRoute: SplashView.routeName,
        );
      },
    );
  }
}
