// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'file_response.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

FileResponse _$FileResponseFromJson(Map<String, dynamic> json) {
  return _FileResponse.fromJson(json);
}

/// @nodoc
mixin _$FileResponse {
  @JsonKey(name: 'filename')
  String get filename => throw _privateConstructorUsedError;
  @JsonKey(name: 'raw_url')
  String get rawUrl => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $FileResponseCopyWith<FileResponse> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $FileResponseCopyWith<$Res> {
  factory $FileResponseCopyWith(
          FileResponse value, $Res Function(FileResponse) then) =
      _$FileResponseCopyWithImpl<$Res, FileResponse>;
  @useResult
  $Res call(
      {@JsonKey(name: 'filename') String filename,
      @JsonKey(name: 'raw_url') String rawUrl});
}

/// @nodoc
class _$FileResponseCopyWithImpl<$Res, $Val extends FileResponse>
    implements $FileResponseCopyWith<$Res> {
  _$FileResponseCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? filename = null,
    Object? rawUrl = null,
  }) {
    return _then(_value.copyWith(
      filename: null == filename
          ? _value.filename
          : filename // ignore: cast_nullable_to_non_nullable
              as String,
      rawUrl: null == rawUrl
          ? _value.rawUrl
          : rawUrl // ignore: cast_nullable_to_non_nullable
              as String,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$FileResponseImplCopyWith<$Res>
    implements $FileResponseCopyWith<$Res> {
  factory _$$FileResponseImplCopyWith(
          _$FileResponseImpl value, $Res Function(_$FileResponseImpl) then) =
      __$$FileResponseImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {@JsonKey(name: 'filename') String filename,
      @JsonKey(name: 'raw_url') String rawUrl});
}

/// @nodoc
class __$$FileResponseImplCopyWithImpl<$Res>
    extends _$FileResponseCopyWithImpl<$Res, _$FileResponseImpl>
    implements _$$FileResponseImplCopyWith<$Res> {
  __$$FileResponseImplCopyWithImpl(
      _$FileResponseImpl _value, $Res Function(_$FileResponseImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? filename = null,
    Object? rawUrl = null,
  }) {
    return _then(_$FileResponseImpl(
      filename: null == filename
          ? _value.filename
          : filename // ignore: cast_nullable_to_non_nullable
              as String,
      rawUrl: null == rawUrl
          ? _value.rawUrl
          : rawUrl // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$FileResponseImpl implements _FileResponse {
  _$FileResponseImpl(
      {@JsonKey(name: 'filename') required this.filename,
      @JsonKey(name: 'raw_url') required this.rawUrl});

  factory _$FileResponseImpl.fromJson(Map<String, dynamic> json) =>
      _$$FileResponseImplFromJson(json);

  @override
  @JsonKey(name: 'filename')
  final String filename;
  @override
  @JsonKey(name: 'raw_url')
  final String rawUrl;

  @override
  String toString() {
    return 'FileResponse(filename: $filename, rawUrl: $rawUrl)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$FileResponseImpl &&
            (identical(other.filename, filename) ||
                other.filename == filename) &&
            (identical(other.rawUrl, rawUrl) || other.rawUrl == rawUrl));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(runtimeType, filename, rawUrl);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$FileResponseImplCopyWith<_$FileResponseImpl> get copyWith =>
      __$$FileResponseImplCopyWithImpl<_$FileResponseImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$FileResponseImplToJson(
      this,
    );
  }
}

abstract class _FileResponse implements FileResponse {
  factory _FileResponse(
          {@JsonKey(name: 'filename') required final String filename,
          @JsonKey(name: 'raw_url') required final String rawUrl}) =
      _$FileResponseImpl;

  factory _FileResponse.fromJson(Map<String, dynamic> json) =
      _$FileResponseImpl.fromJson;

  @override
  @JsonKey(name: 'filename')
  String get filename;
  @override
  @JsonKey(name: 'raw_url')
  String get rawUrl;
  @override
  @JsonKey(ignore: true)
  _$$FileResponseImplCopyWith<_$FileResponseImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
