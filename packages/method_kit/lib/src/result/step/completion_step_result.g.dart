// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'completion_step_result.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_CompletionStepResult _$$_CompletionStepResultFromJson(
        Map<String, dynamic> json) =>
    _$_CompletionStepResult(
      Identifier.fromJson(json['id'] as Map<String, dynamic>),
      DateTime.parse(json['startDate'] as String),
      DateTime.parse(json['endDate'] as String),
    );

Map<String, dynamic> _$$_CompletionStepResultToJson(
        _$_CompletionStepResult instance) =>
    <String, dynamic>{
      'id': instance.id.toJson(),
      'startDate': instance.startDate.toIso8601String(),
      'endDate': instance.endDate.toIso8601String(),
    };
