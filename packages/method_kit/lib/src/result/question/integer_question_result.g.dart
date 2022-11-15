// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'integer_question_result.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_IntegerQuestionResult _$$_IntegerQuestionResultFromJson(
        Map<String, dynamic> json) =>
    _$_IntegerQuestionResult(
      id: Identifier.fromJson(json['id'] as Map<String, dynamic>),
      startDate: DateTime.parse(json['startDate'] as String),
      endDate: DateTime.parse(json['endDate'] as String),
      valueIdentifier: json['valueIdentifier'] as String,
      result: json['result'] as int?,
    );

Map<String, dynamic> _$$_IntegerQuestionResultToJson(
        _$_IntegerQuestionResult instance) =>
    <String, dynamic>{
      'id': instance.id.toJson(),
      'startDate': instance.startDate.toIso8601String(),
      'endDate': instance.endDate.toIso8601String(),
      'valueIdentifier': instance.valueIdentifier,
      'result': instance.result,
    };
