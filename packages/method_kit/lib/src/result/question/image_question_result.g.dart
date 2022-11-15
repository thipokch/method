// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'image_question_result.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_ImageQuestionResult _$$_ImageQuestionResultFromJson(
        Map<String, dynamic> json) =>
    _$_ImageQuestionResult(
      id: Identifier.fromJson(json['id'] as Map<String, dynamic>),
      startDate: DateTime.parse(json['startDate'] as String),
      endDate: DateTime.parse(json['endDate'] as String),
      valueIdentifier: json['valueIdentifier'] as String,
      result: json['result'] as String?,
    );

Map<String, dynamic> _$$_ImageQuestionResultToJson(
        _$_ImageQuestionResult instance) =>
    <String, dynamic>{
      'id': instance.id,
      'startDate': instance.startDate.toIso8601String(),
      'endDate': instance.endDate.toIso8601String(),
      'valueIdentifier': instance.valueIdentifier,
      'result': instance.result,
    };
