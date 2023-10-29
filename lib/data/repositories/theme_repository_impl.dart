import 'package:github_gists_app/data/data_sources/local_data_source.dart';
import 'package:github_gists_app/domain/entities/custom_theme.dart';
import 'package:github_gists_app/domain/repositories/theme_repository.dart';

class ThemeRepositoryImpl implements ThemeRepository {
  final LocalDataSource _localDataSource;

  ThemeRepositoryImpl(this._localDataSource);

  @override
  Stream<CustomTheme> getTheme() => _localDataSource.getTheme();

  @override
  Future<void> saveTheme(CustomTheme theme) => _localDataSource.saveTheme(theme);

  @override
  void dispose() => _localDataSource.dispose();
}
