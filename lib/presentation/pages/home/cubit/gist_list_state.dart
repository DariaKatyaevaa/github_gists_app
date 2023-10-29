import 'package:equatable/equatable.dart';
import 'package:github_gists_app/domain/entities/gist.dart';

abstract class GistListState extends Equatable {}

class GistListInitialState extends GistListState {
  @override
  List<Object?> get props => [];
}

class GistListLoadingState extends GistListState {
  final List<Gist> oldGists;
  final bool isFirstFetch;

  GistListLoadingState({
    required this.oldGists,
    this.isFirstFetch = false,
  });

  @override
  List<Object?> get props => [
        oldGists,
        isFirstFetch,
      ];
}

class GistListErrorState extends GistListState {
  final String errorMessage;

  GistListErrorState({required this.errorMessage});

  @override
  List<Object?> get props => [errorMessage];
}

class GistListLoadedState extends GistListState {
  final List<Gist> gists;

  GistListLoadedState({required this.gists});

  @override
  List<Object?> get props => [gists];
}
