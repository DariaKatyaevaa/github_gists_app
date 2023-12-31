// Mocks generated by Mockito 5.4.2 from annotations
// in github_gists_app/test/utils/shared_mocks.dart.
// Do not manually edit this file.

// ignore_for_file: no_leading_underscores_for_library_prefixes
import 'dart:async' as _i4;

import 'package:github_gists_app/data/data_sources/local_data_source.dart'
    as _i7;
import 'package:github_gists_app/data/data_sources/remote_data_source.dart'
    as _i3;
import 'package:github_gists_app/data/models/commit/commit_response.dart'
    as _i6;
import 'package:github_gists_app/data/models/gist/gist_response.dart' as _i5;
import 'package:github_gists_app/domain/entities/api_response.dart' as _i2;
import 'package:github_gists_app/domain/entities/custom_theme.dart' as _i8;
import 'package:mockito/mockito.dart' as _i1;

// ignore_for_file: type=lint
// ignore_for_file: avoid_redundant_argument_values
// ignore_for_file: avoid_setters_without_getters
// ignore_for_file: comment_references
// ignore_for_file: implementation_imports
// ignore_for_file: invalid_use_of_visible_for_testing_member
// ignore_for_file: prefer_const_constructors
// ignore_for_file: unnecessary_parenthesis
// ignore_for_file: camel_case_types
// ignore_for_file: subtype_of_sealed_class

class _FakeApiResponse_0<T> extends _i1.SmartFake
    implements _i2.ApiResponse<T> {
  _FakeApiResponse_0(
    Object parent,
    Invocation parentInvocation,
  ) : super(
          parent,
          parentInvocation,
        );
}

/// A class which mocks [RemoteDataSource].
///
/// See the documentation for Mockito's code generation for more information.
class MockRemoteDataSource extends _i1.Mock implements _i3.RemoteDataSource {
  MockRemoteDataSource() {
    _i1.throwOnMissingStub(this);
  }

  @override
  _i4.Future<_i2.ApiResponse<List<_i5.GistResponse>>> getGists({
    required int? page,
    required int? pageCount,
  }) =>
      (super.noSuchMethod(
        Invocation.method(
          #getGists,
          [],
          {
            #page: page,
            #pageCount: pageCount,
          },
        ),
        returnValue: _i4.Future<_i2.ApiResponse<List<_i5.GistResponse>>>.value(
            _FakeApiResponse_0<List<_i5.GistResponse>>(
          this,
          Invocation.method(
            #getGists,
            [],
            {
              #page: page,
              #pageCount: pageCount,
            },
          ),
        )),
      ) as _i4.Future<_i2.ApiResponse<List<_i5.GistResponse>>>);

  @override
  _i4.Future<_i2.ApiResponse<_i5.GistResponse>> getGistById(String? id) =>
      (super.noSuchMethod(
        Invocation.method(
          #getGistById,
          [id],
        ),
        returnValue: _i4.Future<_i2.ApiResponse<_i5.GistResponse>>.value(
            _FakeApiResponse_0<_i5.GistResponse>(
          this,
          Invocation.method(
            #getGistById,
            [id],
          ),
        )),
      ) as _i4.Future<_i2.ApiResponse<_i5.GistResponse>>);

  @override
  _i4.Future<_i2.ApiResponse<List<_i6.CommitResponse>>> getGistCommits(
          String? id) =>
      (super.noSuchMethod(
        Invocation.method(
          #getGistCommits,
          [id],
        ),
        returnValue:
            _i4.Future<_i2.ApiResponse<List<_i6.CommitResponse>>>.value(
                _FakeApiResponse_0<List<_i6.CommitResponse>>(
          this,
          Invocation.method(
            #getGistCommits,
            [id],
          ),
        )),
      ) as _i4.Future<_i2.ApiResponse<List<_i6.CommitResponse>>>);

  @override
  _i4.Future<_i2.ApiResponse<String>> getGistFile(String? url) =>
      (super.noSuchMethod(
        Invocation.method(
          #getGistFile,
          [url],
        ),
        returnValue: _i4.Future<_i2.ApiResponse<String>>.value(
            _FakeApiResponse_0<String>(
          this,
          Invocation.method(
            #getGistFile,
            [url],
          ),
        )),
      ) as _i4.Future<_i2.ApiResponse<String>>);
}

/// A class which mocks [LocalDataSource].
///
/// See the documentation for Mockito's code generation for more information.
class MockLocalDataSource extends _i1.Mock implements _i7.LocalDataSource {
  MockLocalDataSource() {
    _i1.throwOnMissingStub(this);
  }

  @override
  _i4.Stream<_i8.CustomTheme> getTheme() => (super.noSuchMethod(
        Invocation.method(
          #getTheme,
          [],
        ),
        returnValue: _i4.Stream<_i8.CustomTheme>.empty(),
      ) as _i4.Stream<_i8.CustomTheme>);

  @override
  _i4.Future<void> saveTheme(_i8.CustomTheme? theme) => (super.noSuchMethod(
        Invocation.method(
          #saveTheme,
          [theme],
        ),
        returnValue: _i4.Future<void>.value(),
        returnValueForMissingStub: _i4.Future<void>.value(),
      ) as _i4.Future<void>);

  @override
  void dispose() => super.noSuchMethod(
        Invocation.method(
          #dispose,
          [],
        ),
        returnValueForMissingStub: null,
      );
}
