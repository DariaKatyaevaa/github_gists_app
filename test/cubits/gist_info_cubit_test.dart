import 'package:bloc_test/bloc_test.dart';
import 'package:github_gists_app/data/mappers/commit_mapper.dart';
import 'package:github_gists_app/data/models/commit/change_status/change_status.dart';
import 'package:github_gists_app/data/models/commit/commit_response.dart';
import 'package:github_gists_app/data/models/user/user_response.dart';
import 'package:github_gists_app/data/repositories/gist_repository_impl.dart';
import 'package:github_gists_app/domain/entities/api_response.dart';
import 'package:github_gists_app/domain/entities/gist.dart';
import 'package:github_gists_app/domain/entities/gist_file.dart';
import 'package:github_gists_app/domain/entities/user.dart';
import 'package:github_gists_app/presentation/pages/gist_info/cubit/gist_info_cubit.dart';
import 'package:github_gists_app/presentation/pages/gist_info/cubit/gist_info_state.dart';
import 'package:mockito/mockito.dart';
import '../utils/shared_mocks.mocks.dart';

void main() {
  final mockRemoteDataSource = MockRemoteDataSource();
  final gistRepository = GistRepositoryImpl(mockRemoteDataSource);
  const gist = Gist(
    user: User(id: 0, userName: 'userName', avatarUrl: 'avatarUrl'),
    id: 'id',
    title: 'title',
    description: 'description',
    files: [GistFile(filename: 'filename', rawUrl: 'rawUrl')],
  );
  final commitsResponse = ApiResponse.success(
    [
      CommitResponse(
        user: UserResponse(
          id: gist.user.id,
          userName: gist.user.userName,
          avatarUrl: gist.user.avatarUrl,
        ),
        committedAt: DateTime.now().toString(),
        changeStatus: ChangeStatus(
          total: 2,
          additions: 2,
          deletions: 0,
        ),
      ),
    ],
  );

  blocTest<GistInfoCubit, GistInfoState>(
    'load gist info with success',
    build: () {
      final gistInfoCubit = GistInfoCubit(gistRepository);
      when(mockRemoteDataSource.getGistCommits(gist.id)).thenAnswer(
        (_) async => Future.value(commitsResponse),
      );
      when(mockRemoteDataSource.getGistFile(gist.files.first.rawUrl)).thenAnswer(
        (_) async => Future.value(ApiResponse.success('file')),
      );
      return gistInfoCubit;
    },
    act: (cubit) async => await cubit.loadInfo(gist),
    expect: () => [
      GistInfoLoadedState(
        gist: gist,
        commits: [commitsResponse.data!.first.toEntity()],
        fileContents: ['file'],
      ),
    ],
  );

  blocTest<GistInfoCubit, GistInfoState>(
    'load gist info with error',
    build: () {
      final gistInfoCubit = GistInfoCubit(gistRepository);
      when(mockRemoteDataSource.getGistCommits(gist.id)).thenAnswer((_) async => ApiResponse.error('errorMessage'));
      return gistInfoCubit;
    },
    act: (cubit) async => cubit.loadInfo(gist),
    expect: () => [
      GistInfoErrorState(gist: gist, errorMessage: 'errorMessage'),
    ],
  );

  blocTest<GistInfoCubit, GistInfoState>(
    'success refresh',
    build: () {
      final gistInfoCubit = GistInfoCubit(gistRepository);
      when(mockRemoteDataSource.getGistCommits(gist.id)).thenAnswer(
        (_) async => Future.value(commitsResponse),
      );
      when(mockRemoteDataSource.getGistFile(gist.files.first.rawUrl)).thenAnswer(
        (_) async => Future.value(ApiResponse.success('file')),
      );
      return gistInfoCubit;
    },
    act: (cubit) async {
      await cubit.loadInfo(gist);
      await cubit.refresh();
    },
    expect: () => [
      GistInfoLoadedState(
        gist: gist,
        commits: [commitsResponse.data!.first.toEntity()],
        fileContents: ['file'],
      ),
      GistInfoLoadingState(),
      GistInfoLoadedState(
        gist: gist,
        commits: [commitsResponse.data!.first.toEntity()],
        fileContents: ['file'],
      ),
    ],
  );

  blocTest<GistInfoCubit, GistInfoState>(
    'error refresh',
    build: () {
      final gistInfoCubit = GistInfoCubit(gistRepository);
      when(mockRemoteDataSource.getGistCommits(gist.id)).thenAnswer(
            (_) async => Future.value(ApiResponse.error('errorMessage')),
      );
      when(mockRemoteDataSource.getGistFile(gist.files.first.rawUrl)).thenAnswer(
            (_) async => Future.value(ApiResponse.success('file')),
      );
      return gistInfoCubit;
    },
    act: (cubit) async {
      await cubit.loadInfo(gist);
      await cubit.refresh();
    },
    expect: () => [
      GistInfoErrorState(gist: gist, errorMessage: 'errorMessage'),
      GistInfoLoadingState(),
      GistInfoErrorState(gist: gist, errorMessage: 'errorMessage'),
    ],
  );
}
