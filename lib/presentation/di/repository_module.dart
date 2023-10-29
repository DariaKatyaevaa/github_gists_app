import 'package:github_gists_app/data/repositories/gist_repository_impl.dart';
import 'package:github_gists_app/data/repositories/theme_repository_impl.dart';
import 'package:github_gists_app/domain/repositories/gist_repository.dart';
import 'package:github_gists_app/domain/repositories/theme_repository.dart';
import 'package:github_gists_app/presentation/di/injector.dart';

void initRepositoryModule() {
  i.registerSingleton<GistRepository>(GistRepositoryImpl(i.get()));
  i.registerSingleton<ThemeRepository>(ThemeRepositoryImpl(i.get()));
}
