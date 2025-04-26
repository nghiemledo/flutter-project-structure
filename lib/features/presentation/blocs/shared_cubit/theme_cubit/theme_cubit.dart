import 'package:bloc/bloc.dart';
import 'package:flutter/material.dart';
import 'package:flutter_clean_architecture/core/themes/app_theme.dart';
import 'package:flutter_clean_architecture/features/presentation/blocs/shared_cubit/theme_cubit/theme_state.dart';

class ThemeCubit extends Cubit<ThemeState> {
  ThemeCubit() : super(ThemeState(AppTheme.darkTheme(), true));

  void setThemeData(ThemeData themeData, bool isDark) async {
    emit(ThemeState(themeData, isDark));
  }

  void switchTheme() {
    ThemeData themeData =
        state.isDark ? AppTheme.lightTheme() : AppTheme.darkTheme();
    emit(ThemeState(themeData, !state.isDark));
  }
}
