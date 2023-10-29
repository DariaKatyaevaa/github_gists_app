import 'package:github_gists_app/domain/entities/gist.dart';
import 'package:github_gists_app/domain/entities/commit.dart';

abstract class GistInfoState {}

class GistInfoInitialState extends GistInfoState {}

class GistInfoLoadingState extends GistInfoState {}

class GistInfoErrorState extends GistInfoState {
  final Gist gist;
  final String errorMessage;

  GistInfoErrorState({
    required this.gist,
    required this.errorMessage,
  });
}

class GistInfoLoadedState extends GistInfoState {
  final Gist gist;
  final List<Commit> commits;
  final List<String> fileContents;

  GistInfoLoadedState({
    required this.gist,
    required this.commits,
    required this.fileContents,
  });
}
