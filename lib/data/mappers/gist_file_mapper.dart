import 'package:github_gists_app/data/models/file/file_response.dart';
import 'package:github_gists_app/domain/entities/gist_file.dart';

extension FileResponseToEntity on FileResponse {
  GistFile toEntity() => GistFile(
        filename: filename,
        rawUrl: rawUrl,
      );
}
