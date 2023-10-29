import 'package:flutter/material.dart';

class ThemeState {
  final ThemeMode themeMode;

  const ThemeState({
    this.themeMode = ThemeMode.light,
  });

  ThemeState copyWith({
    ThemeMode? themeMode,
  }) =>
      ThemeState(themeMode: themeMode ?? this.themeMode);
}
