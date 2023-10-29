import 'package:github_gists_app/domain/entities/api_response.dart';
import 'package:github_gists_app/domain/entities/commit.dart';
import 'package:github_gists_app/domain/entities/gist.dart';

abstract class GistRepository {
  Future<ApiResponse<List<Gist>>> getGists({
    required int page,
    required int pageCount,
  });

  Future<ApiResponse<List<Commit>>> getGistCommits(String id);

  Future<ApiResponse<Gist>> getGistById(String id);

  Future<ApiResponse<String>> getGistFile(String url);
}
