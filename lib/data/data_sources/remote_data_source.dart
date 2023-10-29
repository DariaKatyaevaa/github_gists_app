import 'dart:core';
import 'dart:developer';

import 'package:dio/dio.dart';
import 'package:github_gists_app/data/models/commit/commit_response.dart';
import 'package:github_gists_app/data/models/gist/gist_response.dart';
import 'package:github_gists_app/domain/entities/api_response.dart';

class RemoteDataSource {
  static const _baseUrl = 'https://api.github.com/';
  late final Dio _dio;

  RemoteDataSource() {
    _dio = Dio();
    final options = BaseOptions(
      baseUrl: _baseUrl,
      receiveTimeout: const Duration(milliseconds: 3000),
      connectTimeout: const Duration(milliseconds: 3000),
    );
    _dio.options = options;
  }

  Future<ApiResponse<List<GistResponse>>> getGists({
    required int page,
    required int pageCount,
  }) async {
    try {
      final response = await _dio.get(
        'gists',
        queryParameters: {
          'page': page,
          'per_page': pageCount,
        },
      );
      return ApiResponse.success(
        (response.data as List).map((data) => GistResponse.fromJson(data)).toList(),
      );
    } catch (error, stacktrace) {
      log('Exception ocurred: $error', stackTrace: stacktrace);
      return ApiResponse.error(_handleError(error));
    }
  }

  Future<ApiResponse<GistResponse>> getGistById(String id) async {
    try {
      final response = await _dio.get('gists/$id');
      return ApiResponse.success(GistResponse.fromJson(response.data));
    } catch (error, stacktrace) {
      log('Exception ocurred: $error', stackTrace: stacktrace);
      return ApiResponse.error(_handleError(error));
    }
  }

  Future<ApiResponse<List<CommitResponse>>> getGistCommits(String id) async {
    try {
      final response = await _dio.get('gists/$id/commits');
      return ApiResponse.success((response.data as List).map((data) => CommitResponse.fromJson(data)).toList());
    } catch (error, stacktrace) {
      log('Exception ocurred: $error', stackTrace: stacktrace);
      return ApiResponse.error(_handleError(error));
    }
  }

  Future<ApiResponse<String>> getGistFile(String url) async {
    final dio = Dio();
    try {
      final response = await dio.get(url);
      return ApiResponse.success(response.data.toString());
    } catch (error, stacktrace) {
      log('Exception ocurred: $error', stackTrace: stacktrace);
      return ApiResponse.error(_handleError(error));
    }
  }

  String _handleError(Object error) {
    var errorDescription = '';
    if (error is DioException) {
      final dioException = error;
      errorDescription = switch (dioException.type) {
        DioExceptionType.connectionTimeout => 'Connection timeout with API server',
        DioExceptionType.sendTimeout => 'Send timeout in connection with API server',
        DioExceptionType.receiveTimeout => 'Receive timeout in connection with API server',
        DioExceptionType.badCertificate => 'Bad certificate error',
        DioExceptionType.badResponse => 'Received invalid status code: ${dioException.response!.statusCode}',
        DioExceptionType.cancel => 'Request to API server was cancelled',
        DioExceptionType.connectionError => 'Connection error',
        DioExceptionType.unknown => 'Something went wrong',
      };
    } else {
      errorDescription = 'Unexpected error occurred';
    }
    return errorDescription;
  }
}
