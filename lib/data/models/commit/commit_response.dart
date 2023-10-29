import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:github_gists_app/data/models/commit/change_status/change_status.dart';
import 'package:github_gists_app/data/models/user/user_response.dart';

part 'commit_response.freezed.dart';

part 'commit_response.g.dart';

@freezed
class CommitResponse with _$CommitResponse{
  factory CommitResponse({
    @JsonKey(name: 'user') required UserResponse user,
    @JsonKey(name: 'committed_at') required String committedAt,
    @JsonKey(name: 'change_status') required ChangeStatus changeStatus,

  }) = _CommitResponse;

  factory CommitResponse.fromJson(Map<String, dynamic> json) => _$CommitResponseFromJson(json);
}
