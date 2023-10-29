import 'package:freezed_annotation/freezed_annotation.dart';

part 'file_response.freezed.dart';

part 'file_response.g.dart';

@freezed
class FileResponse with _$FileResponse {
  factory FileResponse({
    @JsonKey(name: 'filename') required String filename,
    @JsonKey(name: 'raw_url') required String rawUrl,
  }) = _FileResponse;

  factory FileResponse.fromJson(Map<String, dynamic> json) => _$FileResponseFromJson(json);
}
