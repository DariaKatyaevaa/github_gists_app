import 'dart:async';
import 'package:shared_preferences/shared_preferences.dart';
import 'package:github_gists_app/domain/entities/custom_theme.dart';

class LocalDataSource {
  static const _themeKey = 'theme';
  late final SharedPreferences _sharedPreferences;
  final _controller = StreamController<CustomTheme>();

  LocalDataSource({
    required SharedPreferences sharedPreferences,
  }) : _sharedPreferences = sharedPreferences {
    _init();
  }

  String? _getValue(String key) {
    try {
      return _sharedPreferences.getString(key);
    } catch (_) {
      return null;
    }
  }

  Future<void> _setValue(String key, String value) => _sharedPreferences.setString(key, value);

  void _init() {
    final themeString = _getValue(_themeKey);
    if (themeString != null) {
      if (themeString == CustomTheme.light.name) {
        _controller.add(CustomTheme.light);
      } else {
        _controller.add(CustomTheme.dark);
      }
    } else {
      _controller.add(CustomTheme.light);
    }
  }

  Stream<CustomTheme> getTheme() async* {
    yield* _controller.stream;
  }

  Future<void> saveTheme(CustomTheme theme) {
    _controller.add(theme);
    return _setValue(_themeKey, theme.name);
  }

  void dispose() => _controller.close();
}
