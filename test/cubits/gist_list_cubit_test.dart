import 'package:bloc_test/bloc_test.dart';
import 'package:github_gists_app/data/models/file/file_response.dart';
import 'package:github_gists_app/data/models/gist/gist_response.dart';
import 'package:github_gists_app/data/models/user/user_response.dart';
import 'package:github_gists_app/data/repositories/gist_repository_impl.dart';
import 'package:github_gists_app/domain/entities/api_response.dart';
import 'package:github_gists_app/domain/entities/gist.dart';
import 'package:github_gists_app/domain/entities/gist_file.dart';
import 'package:github_gists_app/domain/entities/user.dart';
import 'package:github_gists_app/presentation/pages/home/cubit/gist_list_cubit.dart';
import 'package:github_gists_app/presentation/pages/home/cubit/gist_list_state.dart';
import 'package:mockito/mockito.dart';
import '../utils/shared_mocks.mocks.dart';

void main() {
  final mockRemoteDataSource = MockRemoteDataSource();
  final gistRepository = GistRepositoryImpl(mockRemoteDataSource);
  const gist = Gist(
    user: User(id: 0, userName: 'userName', avatarUrl: 'avatarUrl'),
    id: 'id',
    title: 'filename',
    description: 'description',
    files: [GistFile(filename: 'filename', rawUrl: 'rawUrl')],
  );

  final gistResponse = GistResponse(
    id: gist.id,
    user: UserResponse(
      id: gist.user.id,
      userName: gist.user.userName,
      avatarUrl: gist.user.avatarUrl,
    ),
    files: {
      gist.files.first.filename: FileResponse(
        filename: gist.files.first.filename,
        rawUrl: gist.files.first.rawUrl,
      )
    },
    description: gist.description,
  );

  blocTest<GistListCubit, GistListState>(
    'load gists with success',
    build: () {
      final gistListCubit = GistListCubit(gistRepository);
      when(mockRemoteDataSource.getGists(page: 1, pageCount: 40)).thenAnswer(
        (_) async => Future.value(ApiResponse.success([gistResponse])),
      );
      return gistListCubit;
    },
    act: (cubit) async => cubit.loadGists(),
    expect: () => [
      GistListLoadingState(oldGists: const [gist], isFirstFetch: true),
      GistListLoadedState(gists: const [gist]),
    ],
  );

  blocTest<GistListCubit, GistListState>(
    'load gist with error',
    build: () {
      final gistListCubit = GistListCubit(gistRepository);
      when(mockRemoteDataSource.getGists(page: 1, pageCount: 40)).thenAnswer(
        (_) async => Future.value(ApiResponse.error('errorMessage')),
      );
      return gistListCubit;
    },
    act: (cubit) async => await cubit.loadGists(),
    expect: () => [
      GistListLoadingState(oldGists: const [], isFirstFetch: true),
      GistListErrorState(errorMessage: 'errorMessage'),
    ],
  );

  blocTest<GistListCubit, GistListState>(
    'refresh with error',
    build: () {
      final gistListCubit = GistListCubit(gistRepository);
      when(mockRemoteDataSource.getGists(page: 1, pageCount: 40)).thenAnswer(
            (_) async => Future.value(ApiResponse.success([gistResponse])),
      );
      return gistListCubit;
    },
    act: (cubit) async {
      await cubit.loadGists();
      await cubit.refresh();
    },
    expect: () => [
      GistListLoadingState(oldGists: const [gist], isFirstFetch: true),
      GistListLoadedState(gists: const [gist]),
      GistListInitialState(),
      GistListLoadingState(oldGists: const [gist], isFirstFetch: true),
      GistListLoadedState(gists: const [gist]),
    ],
  );

  blocTest<GistListCubit, GistListState>(
    'refresh with success',
    build: () {
      final gistListCubit = GistListCubit(gistRepository);
      when(mockRemoteDataSource.getGists(page: 1, pageCount: 40)).thenAnswer(
            (_) async => Future.value(ApiResponse.error('errorMessage')),
      );
      return gistListCubit;
    },
    act: (cubit) async {
      await cubit.loadGists();
      await cubit.refresh();
    },
    expect: () => [
      GistListLoadingState(oldGists: const [], isFirstFetch: true),
      GistListErrorState(errorMessage: 'errorMessage'),
      GistListInitialState(),
      GistListLoadingState(oldGists: const [], isFirstFetch: true),
      GistListErrorState(errorMessage: 'errorMessage'),
    ],
  );
}
