// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'completion_task_result.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_CompletionTaskResult _$$_CompletionTaskResultFromJson(
        Map<String, dynamic> json) =>
    _$_CompletionTaskResult(
      Identifier.fromJson(json['id'] as Map<String, dynamic>),
      DateTime.parse(json['startDate'] as String),
      DateTime.parse(json['endDate'] as String),
    );

Map<String, dynamic> _$$_CompletionTaskResultToJson(
        _$_CompletionTaskResult instance) =>
    <String, dynamic>{
      'id': instance.id.toJson(),
      'startDate': instance.startDate.toIso8601String(),
      'endDate': instance.endDate.toIso8601String(),
    };
