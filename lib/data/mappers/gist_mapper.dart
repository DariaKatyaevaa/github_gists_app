import 'package:github_gists_app/data/mappers/gist_file_mapper.dart';
import 'package:github_gists_app/data/mappers/user_mapper.dart';
import 'package:github_gists_app/data/models/gist/gist_response.dart';
import 'package:github_gists_app/domain/entities/gist.dart';

extension GistResponseToEntity on GistResponse {
  Gist toEntity() => Gist(
        user: user.toEntity(),
        id: id,
        title: files.values.first.filename,
        description: description,
        files: files.values.map((file) => file.toEntity()).toList(),
      );
}
