import 'package:github_gists_app/data/data_sources/local_data_source.dart';
import 'package:github_gists_app/data/data_sources/remote_data_source.dart';
import 'package:mockito/annotations.dart';

@GenerateMocks([
  RemoteDataSource,
  LocalDataSource,
])
class SharedMocks {}
