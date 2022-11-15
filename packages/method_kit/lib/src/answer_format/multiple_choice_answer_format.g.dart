// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'multiple_choice_answer_format.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_MultipleChoiceAnswerFormat _$$_MultipleChoiceAnswerFormatFromJson(
        Map<String, dynamic> json) =>
    _$_MultipleChoiceAnswerFormat(
      textChoices: (json['textChoices'] as List<dynamic>)
          .map((e) => TextChoice.fromJson(e as Map<String, dynamic>))
          .toList(),
      defaultSelection: (json['defaultSelection'] as List<dynamic>?)
              ?.map((e) => TextChoice.fromJson(e as Map<String, dynamic>))
              .toList() ??
          [],
    );

Map<String, dynamic> _$$_MultipleChoiceAnswerFormatToJson(
        _$_MultipleChoiceAnswerFormat instance) =>
    <String, dynamic>{
      'textChoices': instance.textChoices.map((e) => e.toJson()).toList(),
      'defaultSelection':
          instance.defaultSelection.map((e) => e.toJson()).toList(),
    };
