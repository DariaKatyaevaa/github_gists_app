// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'commit_response.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

CommitResponse _$CommitResponseFromJson(Map<String, dynamic> json) {
  return _CommitResponse.fromJson(json);
}

/// @nodoc
mixin _$CommitResponse {
  @JsonKey(name: 'user')
  UserResponse get user => throw _privateConstructorUsedError;
  @JsonKey(name: 'committed_at')
  String get committedAt => throw _privateConstructorUsedError;
  @JsonKey(name: 'change_status')
  ChangeStatus get changeStatus => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $CommitResponseCopyWith<CommitResponse> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $CommitResponseCopyWith<$Res> {
  factory $CommitResponseCopyWith(
          CommitResponse value, $Res Function(CommitResponse) then) =
      _$CommitResponseCopyWithImpl<$Res, CommitResponse>;
  @useResult
  $Res call(
      {@JsonKey(name: 'user') UserResponse user,
      @JsonKey(name: 'committed_at') String committedAt,
      @JsonKey(name: 'change_status') ChangeStatus changeStatus});

  $UserResponseCopyWith<$Res> get user;
  $ChangeStatusCopyWith<$Res> get changeStatus;
}

/// @nodoc
class _$CommitResponseCopyWithImpl<$Res, $Val extends CommitResponse>
    implements $CommitResponseCopyWith<$Res> {
  _$CommitResponseCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? user = null,
    Object? committedAt = null,
    Object? changeStatus = null,
  }) {
    return _then(_value.copyWith(
      user: null == user
          ? _value.user
          : user // ignore: cast_nullable_to_non_nullable
              as UserResponse,
      committedAt: null == committedAt
          ? _value.committedAt
          : committedAt // ignore: cast_nullable_to_non_nullable
              as String,
      changeStatus: null == changeStatus
          ? _value.changeStatus
          : changeStatus // ignore: cast_nullable_to_non_nullable
              as ChangeStatus,
    ) as $Val);
  }

  @override
  @pragma('vm:prefer-inline')
  $UserResponseCopyWith<$Res> get user {
    return $UserResponseCopyWith<$Res>(_value.user, (value) {
      return _then(_value.copyWith(user: value) as $Val);
    });
  }

  @override
  @pragma('vm:prefer-inline')
  $ChangeStatusCopyWith<$Res> get changeStatus {
    return $ChangeStatusCopyWith<$Res>(_value.changeStatus, (value) {
      return _then(_value.copyWith(changeStatus: value) as $Val);
    });
  }
}

/// @nodoc
abstract class _$$CommitResponseImplCopyWith<$Res>
    implements $CommitResponseCopyWith<$Res> {
  factory _$$CommitResponseImplCopyWith(_$CommitResponseImpl value,
          $Res Function(_$CommitResponseImpl) then) =
      __$$CommitResponseImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {@JsonKey(name: 'user') UserResponse user,
      @JsonKey(name: 'committed_at') String committedAt,
      @JsonKey(name: 'change_status') ChangeStatus changeStatus});

  @override
  $UserResponseCopyWith<$Res> get user;
  @override
  $ChangeStatusCopyWith<$Res> get changeStatus;
}

/// @nodoc
class __$$CommitResponseImplCopyWithImpl<$Res>
    extends _$CommitResponseCopyWithImpl<$Res, _$CommitResponseImpl>
    implements _$$CommitResponseImplCopyWith<$Res> {
  __$$CommitResponseImplCopyWithImpl(
      _$CommitResponseImpl _value, $Res Function(_$CommitResponseImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? user = null,
    Object? committedAt = null,
    Object? changeStatus = null,
  }) {
    return _then(_$CommitResponseImpl(
      user: null == user
          ? _value.user
          : user // ignore: cast_nullable_to_non_nullable
              as UserResponse,
      committedAt: null == committedAt
          ? _value.committedAt
          : committedAt // ignore: cast_nullable_to_non_nullable
              as String,
      changeStatus: null == changeStatus
          ? _value.changeStatus
          : changeStatus // ignore: cast_nullable_to_non_nullable
              as ChangeStatus,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$CommitResponseImpl implements _CommitResponse {
  _$CommitResponseImpl(
      {@JsonKey(name: 'user') required this.user,
      @JsonKey(name: 'committed_at') required this.committedAt,
      @JsonKey(name: 'change_status') required this.changeStatus});

  factory _$CommitResponseImpl.fromJson(Map<String, dynamic> json) =>
      _$$CommitResponseImplFromJson(json);

  @override
  @JsonKey(name: 'user')
  final UserResponse user;
  @override
  @JsonKey(name: 'committed_at')
  final String committedAt;
  @override
  @JsonKey(name: 'change_status')
  final ChangeStatus changeStatus;

  @override
  String toString() {
    return 'CommitResponse(user: $user, committedAt: $committedAt, changeStatus: $changeStatus)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$CommitResponseImpl &&
            (identical(other.user, user) || other.user == user) &&
            (identical(other.committedAt, committedAt) ||
                other.committedAt == committedAt) &&
            (identical(other.changeStatus, changeStatus) ||
                other.changeStatus == changeStatus));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(runtimeType, user, committedAt, changeStatus);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$CommitResponseImplCopyWith<_$CommitResponseImpl> get copyWith =>
      __$$CommitResponseImplCopyWithImpl<_$CommitResponseImpl>(
          this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$CommitResponseImplToJson(
      this,
    );
  }
}

abstract class _CommitResponse implements CommitResponse {
  factory _CommitResponse(
      {@JsonKey(name: 'user') required final UserResponse user,
      @JsonKey(name: 'committed_at') required final String committedAt,
      @JsonKey(name: 'change_status')
      required final ChangeStatus changeStatus}) = _$CommitResponseImpl;

  factory _CommitResponse.fromJson(Map<String, dynamic> json) =
      _$CommitResponseImpl.fromJson;

  @override
  @JsonKey(name: 'user')
  UserResponse get user;
  @override
  @JsonKey(name: 'committed_at')
  String get committedAt;
  @override
  @JsonKey(name: 'change_status')
  ChangeStatus get changeStatus;
  @override
  @JsonKey(ignore: true)
  _$$CommitResponseImplCopyWith<_$CommitResponseImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
