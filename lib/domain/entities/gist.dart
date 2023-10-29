import 'package:equatable/equatable.dart';
import 'package:github_gists_app/domain/entities/user.dart';
import 'package:github_gists_app/domain/entities/gist_file.dart';

class Gist extends Equatable {
  final User user;
  final String id;
  final String title;
  final String? description;
  final List<GistFile> files;

  const Gist({
    required this.user,
    required this.id,
    required this.title,
    required this.description,
    required this.files,
  });

  @override
  List<Object?> get props => [
        user,
        id,
        title,
        description,
        files,
      ];
}
