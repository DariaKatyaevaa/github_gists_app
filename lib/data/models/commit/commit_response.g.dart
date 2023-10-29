// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'commit_response.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$CommitResponseImpl _$$CommitResponseImplFromJson(Map<String, dynamic> json) =>
    _$CommitResponseImpl(
      user: UserResponse.fromJson(json['user'] as Map<String, dynamic>),
      committedAt: json['committed_at'] as String,
      changeStatus:
          ChangeStatus.fromJson(json['change_status'] as Map<String, dynamic>),
    );

Map<String, dynamic> _$$CommitResponseImplToJson(
        _$CommitResponseImpl instance) =>
    <String, dynamic>{
      'user': instance.user,
      'committed_at': instance.committedAt,
      'change_status': instance.changeStatus,
    };
