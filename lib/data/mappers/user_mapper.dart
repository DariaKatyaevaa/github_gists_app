import 'package:github_gists_app/data/models/user/user_response.dart';
import 'package:github_gists_app/domain/entities/user.dart';

extension UserResponseToEntity on UserResponse {
  User toEntity() => User(
        id: id,
        userName: userName,
        avatarUrl: avatarUrl,
      );
}
