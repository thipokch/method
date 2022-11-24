// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'instruction_task_result.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_InstructionTaskResult _$$_InstructionTaskResultFromJson(
        Map<String, dynamic> json) =>
    _$_InstructionTaskResult(
      Identifier.fromJson(json['id'] as Map<String, dynamic>),
      DateTime.parse(json['startDate'] as String),
      DateTime.parse(json['endDate'] as String),
    );

Map<String, dynamic> _$$_InstructionTaskResultToJson(
        _$_InstructionTaskResult instance) =>
    <String, dynamic>{
      'id': instance.id.toJson(),
      'startDate': instance.startDate.toIso8601String(),
      'endDate': instance.endDate.toIso8601String(),
    };
