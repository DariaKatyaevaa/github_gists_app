class ApiResponse<T> {
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
}
