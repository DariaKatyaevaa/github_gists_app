import 'package:equatable/equatable.dart';

class ApiResponse<T> extends Equatable {
  final bool isSuccess;
  final String? errorMessage;
  final T? data;

  const ApiResponse({
    required this.isSuccess,
    this.data,
    this.errorMessage,
  });

  factory ApiResponse.success(T data) => ApiResponse(
        isSuccess: true,
        data: data,
      );

  factory ApiResponse.error(String errorMessage) => ApiResponse(
        isSuccess: false,
        errorMessage: errorMessage,
      );

  @override
  List<Object?> get props => [
        isSuccess,
        errorMessage,
        data,
      ];
}
