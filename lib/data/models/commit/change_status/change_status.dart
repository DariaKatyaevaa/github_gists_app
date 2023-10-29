import 'package:freezed_annotation/freezed_annotation.dart';

part 'change_status.freezed.dart';

part 'change_status.g.dart';


@freezed
class ChangeStatus with _$ChangeStatus {
  factory ChangeStatus({
    @JsonKey(name: 'total', defaultValue: 0) required int total,
    @JsonKey(name: 'additions', defaultValue: 0) required int additions,
    @JsonKey(name: 'deletions', defaultValue: 0) required int deletions,
  }) = _ChangeStatus;

  factory ChangeStatus.fromJson(Map<String, dynamic> json) => _$ChangeStatusFromJson(json);
}
