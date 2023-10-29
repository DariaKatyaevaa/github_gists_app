import 'package:github_gists_app/data/models/commit/commit_response.dart';
import 'package:github_gists_app/domain/entities/commit.dart';

extension CommitResponseToEntity on CommitResponse {
  Commit toEntity() => Commit(
        committedAt: DateTime.parse(committedAt),
        additions: changeStatus.additions,
        deletions: changeStatus.deletions,
      );
}
