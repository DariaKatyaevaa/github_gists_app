// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'gist_response.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$GistResponseImpl _$$GistResponseImplFromJson(Map<String, dynamic> json) =>
    _$GistResponseImpl(
      id: json['id'] as String,
      user: UserResponse.fromJson(json['owner'] as Map<String, dynamic>),
      files: (json['files'] as Map<String, dynamic>).map(
        (k, e) => MapEntry(k, FileResponse.fromJson(e as Map<String, dynamic>)),
      ),
      description: json['description'] as String?,
    );

Map<String, dynamic> _$$GistResponseImplToJson(_$GistResponseImpl instance) =>
    <String, dynamic>{
      'id': instance.id,
      'owner': instance.user,
      'files': instance.files,
      'description': instance.description,
    };
