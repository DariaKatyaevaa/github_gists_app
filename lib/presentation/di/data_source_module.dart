import 'package:github_gists_app/data/data_sources/local_data_source.dart';
import 'package:github_gists_app/data/data_sources/remote_data_source.dart';
import 'package:github_gists_app/presentation/di/injector.dart';
import 'package:shared_preferences/shared_preferences.dart';

Future<void> initDataSourceModule() async {
  i.registerSingleton(RemoteDataSource());
  i.registerSingleton(LocalDataSource(sharedPreferences: await SharedPreferences.getInstance()));
}
