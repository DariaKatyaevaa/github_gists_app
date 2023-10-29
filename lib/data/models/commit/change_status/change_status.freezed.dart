// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'change_status.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

ChangeStatus _$ChangeStatusFromJson(Map<String, dynamic> json) {
  return _ChangeStatus.fromJson(json);
}

/// @nodoc
mixin _$ChangeStatus {
  @JsonKey(name: 'total', defaultValue: 0)
  int get total => throw _privateConstructorUsedError;
  @JsonKey(name: 'additions', defaultValue: 0)
  int get additions => throw _privateConstructorUsedError;
  @JsonKey(name: 'deletions', defaultValue: 0)
  int get deletions => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $ChangeStatusCopyWith<ChangeStatus> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ChangeStatusCopyWith<$Res> {
  factory $ChangeStatusCopyWith(
          ChangeStatus value, $Res Function(ChangeStatus) then) =
      _$ChangeStatusCopyWithImpl<$Res, ChangeStatus>;
  @useResult
  $Res call(
      {@JsonKey(name: 'total', defaultValue: 0) int total,
      @JsonKey(name: 'additions', defaultValue: 0) int additions,
      @JsonKey(name: 'deletions', defaultValue: 0) int deletions});
}

/// @nodoc
class _$ChangeStatusCopyWithImpl<$Res, $Val extends ChangeStatus>
    implements $ChangeStatusCopyWith<$Res> {
  _$ChangeStatusCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? total = null,
    Object? additions = null,
    Object? deletions = null,
  }) {
    return _then(_value.copyWith(
      total: null == total
          ? _value.total
          : total // ignore: cast_nullable_to_non_nullable
              as int,
      additions: null == additions
          ? _value.additions
          : additions // ignore: cast_nullable_to_non_nullable
              as int,
      deletions: null == deletions
          ? _value.deletions
          : deletions // ignore: cast_nullable_to_non_nullable
              as int,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$ChangeStatusImplCopyWith<$Res>
    implements $ChangeStatusCopyWith<$Res> {
  factory _$$ChangeStatusImplCopyWith(
          _$ChangeStatusImpl value, $Res Function(_$ChangeStatusImpl) then) =
      __$$ChangeStatusImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {@JsonKey(name: 'total', defaultValue: 0) int total,
      @JsonKey(name: 'additions', defaultValue: 0) int additions,
      @JsonKey(name: 'deletions', defaultValue: 0) int deletions});
}

/// @nodoc
class __$$ChangeStatusImplCopyWithImpl<$Res>
    extends _$ChangeStatusCopyWithImpl<$Res, _$ChangeStatusImpl>
    implements _$$ChangeStatusImplCopyWith<$Res> {
  __$$ChangeStatusImplCopyWithImpl(
      _$ChangeStatusImpl _value, $Res Function(_$ChangeStatusImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? total = null,
    Object? additions = null,
    Object? deletions = null,
  }) {
    return _then(_$ChangeStatusImpl(
      total: null == total
          ? _value.total
          : total // ignore: cast_nullable_to_non_nullable
              as int,
      additions: null == additions
          ? _value.additions
          : additions // ignore: cast_nullable_to_non_nullable
              as int,
      deletions: null == deletions
          ? _value.deletions
          : deletions // ignore: cast_nullable_to_non_nullable
              as int,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$ChangeStatusImpl implements _ChangeStatus {
  _$ChangeStatusImpl(
      {@JsonKey(name: 'total', defaultValue: 0) required this.total,
      @JsonKey(name: 'additions', defaultValue: 0) required this.additions,
      @JsonKey(name: 'deletions', defaultValue: 0) required this.deletions});

  factory _$ChangeStatusImpl.fromJson(Map<String, dynamic> json) =>
      _$$ChangeStatusImplFromJson(json);

  @override
  @JsonKey(name: 'total', defaultValue: 0)
  final int total;
  @override
  @JsonKey(name: 'additions', defaultValue: 0)
  final int additions;
  @override
  @JsonKey(name: 'deletions', defaultValue: 0)
  final int deletions;

  @override
  String toString() {
    return 'ChangeStatus(total: $total, additions: $additions, deletions: $deletions)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$ChangeStatusImpl &&
            (identical(other.total, total) || other.total == total) &&
            (identical(other.additions, additions) ||
                other.additions == additions) &&
            (identical(other.deletions, deletions) ||
                other.deletions == deletions));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(runtimeType, total, additions, deletions);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$ChangeStatusImplCopyWith<_$ChangeStatusImpl> get copyWith =>
      __$$ChangeStatusImplCopyWithImpl<_$ChangeStatusImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$ChangeStatusImplToJson(
      this,
    );
  }
}

abstract class _ChangeStatus implements ChangeStatus {
  factory _ChangeStatus(
      {@JsonKey(name: 'total', defaultValue: 0) required final int total,
      @JsonKey(name: 'additions', defaultValue: 0) required final int additions,
      @JsonKey(name: 'deletions', defaultValue: 0)
      required final int deletions}) = _$ChangeStatusImpl;

  factory _ChangeStatus.fromJson(Map<String, dynamic> json) =
      _$ChangeStatusImpl.fromJson;

  @override
  @JsonKey(name: 'total', defaultValue: 0)
  int get total;
  @override
  @JsonKey(name: 'additions', defaultValue: 0)
  int get additions;
  @override
  @JsonKey(name: 'deletions', defaultValue: 0)
  int get deletions;
  @override
  @JsonKey(ignore: true)
  _$$ChangeStatusImplCopyWith<_$ChangeStatusImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
