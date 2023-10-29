import 'package:equatable/equatable.dart';
import 'package:github_gists_app/domain/entities/gist.dart';
import 'package:github_gists_app/domain/entities/commit.dart';

abstract class GistInfoState extends Equatable {}

class GistInfoInitialState extends GistInfoState {
  @override
  List<Object?> get props => [];
}

class GistInfoLoadingState extends GistInfoState {
  @override
  List<Object?> get props => [];
}

class GistInfoErrorState extends GistInfoState {
  final Gist gist;
  final String errorMessage;

  GistInfoErrorState({
    required this.gist,
    required this.errorMessage,
  });

  @override
  List<Object?> get props => [
        gist,
        errorMessage,
      ];
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

  @override
  List<Object?> get props => [
        gist,
        commits,
        fileContents,
      ];
}
