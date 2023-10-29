import 'package:github_gists_app/data/data_sources/remote_data_source.dart';
import 'package:github_gists_app/data/mappers/commit_mapper.dart';
import 'package:github_gists_app/domain/entities/commit.dart';
import 'package:github_gists_app/domain/entities/gist.dart';
import 'package:github_gists_app/domain/repositories/gist_repository.dart';
import 'package:github_gists_app/domain/entities/api_response.dart';
import 'package:github_gists_app/data/mappers/gist_mapper.dart';

class GistRepositoryImpl implements GistRepository {
  final RemoteDataSource _gistDataSource;

  GistRepositoryImpl(this._gistDataSource);

  @override
  Future<ApiResponse<Gist>> getGistById(String id) async {
    final response = await _gistDataSource.getGistById(id);
    return ApiResponse(
      isSuccess: response.isSuccess,
      data: response.data?.toEntity(),
      errorMessage: response.errorMessage,
    );
  }

  @override
  Future<ApiResponse<List<Commit>>> getGistCommits(String id) async {
    final response = await _gistDataSource.getGistCommits(id);
    return ApiResponse(
      isSuccess: response.isSuccess,
      data: response.data?.map((commit) => commit.toEntity()).toList(),
      errorMessage: response.errorMessage,
    );
  }

  @override
  Future<ApiResponse<String>> getGistFile(String url) async => await _gistDataSource.getGistFile(url);

  @override
  Future<ApiResponse<List<Gist>>> getGists({
    required int page,
    required int pageCount,
  }) async {
    final response = await _gistDataSource.getGists(page: page, pageCount: pageCount);
    return ApiResponse(
      isSuccess: response.isSuccess,
      data: response.data?.map((gist) => gist.toEntity()).toList(),
      errorMessage: response.errorMessage,
    );
  }
}
