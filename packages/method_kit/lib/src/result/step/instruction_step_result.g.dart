// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'instruction_step_result.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_InstructionStepResult _$$_InstructionStepResultFromJson(
        Map<String, dynamic> json) =>
    _$_InstructionStepResult(
      Identifier.fromJson(json['id'] as Map<String, dynamic>),
      DateTime.parse(json['startDate'] as String),
      DateTime.parse(json['endDate'] as String),
    );

Map<String, dynamic> _$$_InstructionStepResultToJson(
        _$_InstructionStepResult instance) =>
    <String, dynamic>{
      'id': instance.id.toJson(),
      'startDate': instance.startDate.toIso8601String(),
      'endDate': instance.endDate.toIso8601String(),
    };
