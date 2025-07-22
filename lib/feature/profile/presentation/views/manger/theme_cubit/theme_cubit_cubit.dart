import 'package:ecommerce/constants.dart';
import 'package:ecommerce/core/services/shared_prefernce_singlton.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class ThemeCubit extends Cubit<ThemeMode> {
  ThemeCubit() : super(_getSavedTheme());
  static ThemeMode _getSavedTheme() {
    final isDark = SharedPreferenceSingleton.getBool(kIsDark);
    return isDark == true ? ThemeMode.dark : ThemeMode.light;
  }

  void toggleTheme(bool isDark) {
    SharedPreferenceSingleton.setBool(kIsDark, isDark);
    emit(isDark ? ThemeMode.dark : ThemeMode.light);
  }
}
