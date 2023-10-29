import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:github_gists_app/domain/repositories/gist_repository.dart';
import 'package:github_gists_app/presentation/pages/home/cubit/gist_list_state.dart';
import 'package:github_gists_app/domain/entities/gist.dart';

class GistListCubit extends Cubit<GistListState> {
  final GistRepository _gistRepository;
  static const _perPageItemCount = 40;
  int _page = 1;

  GistListCubit(this._gistRepository) : super(GistListInitialState());

  Future<void> loadGists() async {
    if (state is GistListLoadingState) return;

    final currentState = state;
    var oldGist = <Gist>[];
    if (currentState is GistListLoadedState) {
      oldGist = currentState.gists;
    }

    emit(GistListLoadingState(oldGists: oldGist, isFirstFetch: _page == 1));

    final response = await _gistRepository.getGists(page: _page, pageCount: _perPageItemCount);
    if (response.isSuccess) {
      _page++;
      final gists = (state as GistListLoadingState).oldGists;
      gists.addAll(response.data!);
      emit(GistListLoadedState(gists: gists));
    } else {
      emit(GistListErrorState(errorMessage: response.errorMessage!));
    }
  }

  Future<void> refresh() async {
    _page = 1;
    emit(GistListInitialState());
    await loadGists();
  }
}
