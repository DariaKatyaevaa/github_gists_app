import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:github_gists_app/data/models/file/file_response.dart';
import 'package:github_gists_app/data/models/user/user_response.dart';
part 'gist_response.freezed.dart';

part 'gist_response.g.dart';

@freezed
class GistResponse with _$GistResponse {
  factory GistResponse({
    @JsonKey(name: 'id') required String id,
    @JsonKey(name: 'owner') required UserResponse user,
    @JsonKey(name: 'files') required Map<String, FileResponse> files,
    @JsonKey(name: 'description') required String? description,
  }) = _GistResponse;

  factory GistResponse.fromJson(Map<String, dynamic> json) => _$GistResponseFromJson(json);
}
