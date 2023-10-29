import 'package:get_it/get_it.dart';
import 'package:github_gists_app/presentation/di/cubit_module.dart';
import 'package:github_gists_app/presentation/di/repository_module.dart';
import 'package:github_gists_app/presentation/di/data_source_module.dart';

GetIt get i => GetIt.instance;

Future<void> initInjector() async {
  await initDataSourceModule();
  initRepositoryModule();
  initCubitModule();
}
