import 'package:github_gists_app/domain/entities/gist.dart';

abstract class GistListState {}

class GistListInitialState extends GistListState {}

class GistListLoadingState extends GistListState {
  final List<Gist> oldGists;
  final bool isFirstFetch;

  GistListLoadingState({
    required this.oldGists,
    this.isFirstFetch = false,
  });
}

class GistListErrorState extends GistListState {
  final String errorMessage;

  GistListErrorState({required this.errorMessage});
}

class GistListLoadedState extends GistListState {
  final List<Gist> gists;

  GistListLoadedState({required this.gists});
}
