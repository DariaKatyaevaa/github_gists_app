// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'gist_response.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

GistResponse _$GistResponseFromJson(Map<String, dynamic> json) {
  return _GistResponse.fromJson(json);
}

/// @nodoc
mixin _$GistResponse {
  @JsonKey(name: 'id')
  String get id => throw _privateConstructorUsedError;
  @JsonKey(name: 'owner')
  UserResponse get user => throw _privateConstructorUsedError;
  @JsonKey(name: 'files')
  Map<String, FileResponse> get files => throw _privateConstructorUsedError;
  @JsonKey(name: 'description')
  String? get description => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $GistResponseCopyWith<GistResponse> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $GistResponseCopyWith<$Res> {
  factory $GistResponseCopyWith(
          GistResponse value, $Res Function(GistResponse) then) =
      _$GistResponseCopyWithImpl<$Res, GistResponse>;
  @useResult
  $Res call(
      {@JsonKey(name: 'id') String id,
      @JsonKey(name: 'owner') UserResponse user,
      @JsonKey(name: 'files') Map<String, FileResponse> files,
      @JsonKey(name: 'description') String? description});

  $UserResponseCopyWith<$Res> get user;
}

/// @nodoc
class _$GistResponseCopyWithImpl<$Res, $Val extends GistResponse>
    implements $GistResponseCopyWith<$Res> {
  _$GistResponseCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? user = null,
    Object? files = null,
    Object? description = freezed,
  }) {
    return _then(_value.copyWith(
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as String,
      user: null == user
          ? _value.user
          : user // ignore: cast_nullable_to_non_nullable
              as UserResponse,
      files: null == files
          ? _value.files
          : files // ignore: cast_nullable_to_non_nullable
              as Map<String, FileResponse>,
      description: freezed == description
          ? _value.description
          : description // ignore: cast_nullable_to_non_nullable
              as String?,
    ) as $Val);
  }

  @override
  @pragma('vm:prefer-inline')
  $UserResponseCopyWith<$Res> get user {
    return $UserResponseCopyWith<$Res>(_value.user, (value) {
      return _then(_value.copyWith(user: value) as $Val);
    });
  }
}

/// @nodoc
abstract class _$$GistResponseImplCopyWith<$Res>
    implements $GistResponseCopyWith<$Res> {
  factory _$$GistResponseImplCopyWith(
          _$GistResponseImpl value, $Res Function(_$GistResponseImpl) then) =
      __$$GistResponseImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {@JsonKey(name: 'id') String id,
      @JsonKey(name: 'owner') UserResponse user,
      @JsonKey(name: 'files') Map<String, FileResponse> files,
      @JsonKey(name: 'description') String? description});

  @override
  $UserResponseCopyWith<$Res> get user;
}

/// @nodoc
class __$$GistResponseImplCopyWithImpl<$Res>
    extends _$GistResponseCopyWithImpl<$Res, _$GistResponseImpl>
    implements _$$GistResponseImplCopyWith<$Res> {
  __$$GistResponseImplCopyWithImpl(
      _$GistResponseImpl _value, $Res Function(_$GistResponseImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? user = null,
    Object? files = null,
    Object? description = freezed,
  }) {
    return _then(_$GistResponseImpl(
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as String,
      user: null == user
          ? _value.user
          : user // ignore: cast_nullable_to_non_nullable
              as UserResponse,
      files: null == files
          ? _value._files
          : files // ignore: cast_nullable_to_non_nullable
              as Map<String, FileResponse>,
      description: freezed == description
          ? _value.description
          : description // ignore: cast_nullable_to_non_nullable
              as String?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$GistResponseImpl implements _GistResponse {
  _$GistResponseImpl(
      {@JsonKey(name: 'id') required this.id,
      @JsonKey(name: 'owner') required this.user,
      @JsonKey(name: 'files') required final Map<String, FileResponse> files,
      @JsonKey(name: 'description') required this.description})
      : _files = files;

  factory _$GistResponseImpl.fromJson(Map<String, dynamic> json) =>
      _$$GistResponseImplFromJson(json);

  @override
  @JsonKey(name: 'id')
  final String id;
  @override
  @JsonKey(name: 'owner')
  final UserResponse user;
  final Map<String, FileResponse> _files;
  @override
  @JsonKey(name: 'files')
  Map<String, FileResponse> get files {
    if (_files is EqualUnmodifiableMapView) return _files;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableMapView(_files);
  }

  @override
  @JsonKey(name: 'description')
  final String? description;

  @override
  String toString() {
    return 'GistResponse(id: $id, user: $user, files: $files, description: $description)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$GistResponseImpl &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.user, user) || other.user == user) &&
            const DeepCollectionEquality().equals(other._files, _files) &&
            (identical(other.description, description) ||
                other.description == description));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(runtimeType, id, user,
      const DeepCollectionEquality().hash(_files), description);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$GistResponseImplCopyWith<_$GistResponseImpl> get copyWith =>
      __$$GistResponseImplCopyWithImpl<_$GistResponseImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$GistResponseImplToJson(
      this,
    );
  }
}

abstract class _GistResponse implements GistResponse {
  factory _GistResponse(
      {@JsonKey(name: 'id') required final String id,
      @JsonKey(name: 'owner') required final UserResponse user,
      @JsonKey(name: 'files') required final Map<String, FileResponse> files,
      @JsonKey(name: 'description')
      required final String? description}) = _$GistResponseImpl;

  factory _GistResponse.fromJson(Map<String, dynamic> json) =
      _$GistResponseImpl.fromJson;

  @override
  @JsonKey(name: 'id')
  String get id;
  @override
  @JsonKey(name: 'owner')
  UserResponse get user;
  @override
  @JsonKey(name: 'files')
  Map<String, FileResponse> get files;
  @override
  @JsonKey(name: 'description')
  String? get description;
  @override
  @JsonKey(ignore: true)
  _$$GistResponseImplCopyWith<_$GistResponseImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
