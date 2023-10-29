import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:github_gists_app/presentation/pages/gist_info/cubit/gist_info_state.dart';
import 'package:github_gists_app/domain/repositories/gist_repository.dart';
import 'package:github_gists_app/domain/entities/gist.dart';

class GistInfoCubit extends Cubit<GistInfoState> {
  final GistRepository _gistRepository;

  GistInfoCubit(this._gistRepository) : super(GistInfoInitialState());

  Future<void> loadInfo(Gist gist) async {
    if (state is! GistInfoInitialState) {
      emit(GistInfoLoadingState());
    }
    final response = await _gistRepository.getGistCommits(gist.id);
    if (response.isSuccess) {
      final fileContents = List<String>.empty(growable: true);
      for (var i = 0; i < gist.files.length; i++) {
        final fileContentResponse = await _gistRepository.getGistFile(gist.files[i].rawUrl);
        if (fileContentResponse.isSuccess && fileContentResponse.data != null) {
          fileContents.add(fileContentResponse.data!);
        }
      }
      emit(GistInfoLoadedState(
        gist: gist,
        commits: response.data!,
        fileContents: fileContents,
      ));
    } else {
      emit(GistInfoErrorState(errorMessage: response.errorMessage!, gist: gist));
    }
  }

  Future<void> refresh() async {
    if (state is GistInfoLoadedState) {
      await loadInfo((state as GistInfoLoadedState).gist);
    } else if (state is GistInfoErrorState) {
      await loadInfo((state as GistInfoErrorState).gist);
    }
  }
}
