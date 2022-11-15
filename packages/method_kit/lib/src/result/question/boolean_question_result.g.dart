// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'boolean_question_result.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_BooleanQuestionResult _$$_BooleanQuestionResultFromJson(
        Map<String, dynamic> json) =>
    _$_BooleanQuestionResult(
      id: Identifier.fromJson(json['id'] as Map<String, dynamic>),
      startDate: DateTime.parse(json['startDate'] as String),
      endDate: DateTime.parse(json['endDate'] as String),
      valueIdentifier: json['valueIdentifier'] as String,
      result: $enumDecodeNullable(_$BooleanResultEnumMap, json['result']),
    );

Map<String, dynamic> _$$_BooleanQuestionResultToJson(
        _$_BooleanQuestionResult instance) =>
    <String, dynamic>{
      'id': instance.id.toJson(),
      'startDate': instance.startDate.toIso8601String(),
      'endDate': instance.endDate.toIso8601String(),
      'valueIdentifier': instance.valueIdentifier,
      'result': _$BooleanResultEnumMap[instance.result],
    };

const _$BooleanResultEnumMap = {
  BooleanResult.NONE: 'NONE',
  BooleanResult.POSITIVE: 'POSITIVE',
  BooleanResult.NEGATIVE: 'NEGATIVE',
};
