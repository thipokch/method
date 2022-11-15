// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'multiple_choice_question_result.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_MultipleChoiceQuestionResult _$$_MultipleChoiceQuestionResultFromJson(
        Map<String, dynamic> json) =>
    _$_MultipleChoiceQuestionResult(
      id: Identifier.fromJson(json['id'] as Map<String, dynamic>),
      startDate: DateTime.parse(json['startDate'] as String),
      endDate: DateTime.parse(json['endDate'] as String),
      valueIdentifier: json['valueIdentifier'] as String,
      result: (json['result'] as List<dynamic>?)
          ?.map((e) => TextChoice.fromJson(e as Map<String, dynamic>))
          .toList(),
    );

Map<String, dynamic> _$$_MultipleChoiceQuestionResultToJson(
        _$_MultipleChoiceQuestionResult instance) =>
    <String, dynamic>{
      'id': instance.id.toJson(),
      'startDate': instance.startDate.toIso8601String(),
      'endDate': instance.endDate.toIso8601String(),
      'valueIdentifier': instance.valueIdentifier,
      'result': instance.result?.map((e) => e.toJson()).toList(),
    };
