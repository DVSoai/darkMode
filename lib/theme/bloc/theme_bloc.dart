import 'package:darkmode_bloc/theme/bloc/theme_event.dart';
import 'package:darkmode_bloc/theme/bloc/theme_state.dart';
import 'package:darkmode_bloc/theme/local_storage.dart';
import 'package:flutter/services.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter/material.dart';


import '../app_theme.dart';

class ThemeBloc extends Bloc<ThemeEvent, ThemeState> {
  final LocalStorage store;
  ThemeBloc(this.store)
      : super(store.darkMode
      ? DarkThemeState(AppTheme().darkTheme)
      : LightThemeState(AppTheme().lightTheme)) {
    on<ToggleThemeEvent>((event, emit) async {
      final isDarkMode = state is DarkThemeState;
      if (isDarkMode) {
        emit(LightThemeState(AppTheme().lightTheme));
      } else {
        emit(DarkThemeState(AppTheme().darkTheme));
      }
      store.darkMode = !isDarkMode;
      SystemChrome.setSystemUIOverlayStyle(SystemUiOverlayStyle(
        systemNavigationBarDividerColor: Colors.black,
        systemNavigationBarColor: !isDarkMode ? Colors.black : Colors.white,
        systemNavigationBarIconBrightness:
        !isDarkMode ? Brightness.dark : Brightness.light,
      ));
    });
  }
}
