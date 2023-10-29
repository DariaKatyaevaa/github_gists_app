// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'change_status.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$ChangeStatusImpl _$$ChangeStatusImplFromJson(Map<String, dynamic> json) =>
    _$ChangeStatusImpl(
      total: json['total'] as int? ?? 0,
      additions: json['additions'] as int? ?? 0,
      deletions: json['deletions'] as int? ?? 0,
    );

Map<String, dynamic> _$$ChangeStatusImplToJson(_$ChangeStatusImpl instance) =>
    <String, dynamic>{
      'total': instance.total,
      'additions': instance.additions,
      'deletions': instance.deletions,
    };
