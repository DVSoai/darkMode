import 'package:flutter/material.dart';

abstract class ThemeState {}

class LightThemeState extends ThemeState {
  final ThemeData themeData;
  LightThemeState(this.themeData);
}

class DarkThemeState extends ThemeState {
  final ThemeData themeData;
  DarkThemeState(this.themeData);
}
