// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'multiple_double_question_result.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_MultipleDoubleQuestionResult _$$_MultipleDoubleQuestionResultFromJson(
        Map<String, dynamic> json) =>
    _$_MultipleDoubleQuestionResult(
      id: Identifier.fromJson(json['id'] as Map<String, dynamic>),
      startDate: DateTime.parse(json['startDate'] as String),
      endDate: DateTime.parse(json['endDate'] as String),
      valueIdentifier: json['valueIdentifier'] as String,
      result: (json['result'] as List<dynamic>?)
          ?.map((e) => MultiDouble.fromJson(e as Map<String, dynamic>))
          .toList(),
    );

Map<String, dynamic> _$$_MultipleDoubleQuestionResultToJson(
        _$_MultipleDoubleQuestionResult instance) =>
    <String, dynamic>{
      'id': instance.id.toJson(),
      'startDate': instance.startDate.toIso8601String(),
      'endDate': instance.endDate.toIso8601String(),
      'valueIdentifier': instance.valueIdentifier,
      'result': instance.result?.map((e) => e.toJson()).toList(),
    };
