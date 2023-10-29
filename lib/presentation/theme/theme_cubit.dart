import 'dart:async';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:github_gists_app/domain/repositories/theme_repository.dart';
import 'package:github_gists_app/presentation/theme/theme_state.dart';
import 'package:github_gists_app/domain/entities/custom_theme.dart';

class ThemeCubit extends Cubit<ThemeState> {
  final ThemeRepository _themeRepository;
  late StreamSubscription<CustomTheme> _themeSubscription;
  late bool _isDarkTheme;

  ThemeCubit(this._themeRepository) : super(const ThemeState());

  void getCurrentTheme() {
    _themeSubscription = _themeRepository.getTheme().listen(
      (customTheme) {
        if (customTheme.name == CustomTheme.light.name) {
          _isDarkTheme = false;
          emit(state.copyWith(themeMode: ThemeMode.light));
        } else {
          _isDarkTheme = true;
          emit(state.copyWith(themeMode: ThemeMode.dark));
        }
      },
    );
  }

  void switchTheme() {
    if (_isDarkTheme) {
      _themeRepository.saveTheme(CustomTheme.light);
    } else {
      _themeRepository.saveTheme(CustomTheme.dark);
    }
  }

  @override
  Future<void> close() async {
    _themeSubscription.cancel();
    _themeRepository.dispose();
    super.close();
  }
}
