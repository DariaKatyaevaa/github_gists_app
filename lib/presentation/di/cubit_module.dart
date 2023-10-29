import 'package:github_gists_app/presentation/pages/home/cubit/gist_list_cubit.dart';
import 'package:github_gists_app/presentation/di/injector.dart';
import 'package:github_gists_app/presentation/theme/theme_cubit.dart';
import 'package:github_gists_app/presentation/pages/gist_info/cubit/gist_info_cubit.dart';

void initCubitModule() {
  i.registerSingleton(ThemeCubit(i.get()));
  i.registerSingleton(GistListCubit(i.get()));
  i.registerFactory(() => GistInfoCubit(i.get()));
}
