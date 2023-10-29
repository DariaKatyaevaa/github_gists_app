import 'package:github_gists_app/domain/entities/custom_theme.dart';

abstract class ThemeRepository {
  Stream<CustomTheme> getTheme();
  Future<void> saveTheme(CustomTheme theme);
  void dispose();
}