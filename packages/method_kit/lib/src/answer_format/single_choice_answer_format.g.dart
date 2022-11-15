// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'single_choice_answer_format.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_SingleChoiceAnswerFormat _$$_SingleChoiceAnswerFormatFromJson(
        Map<String, dynamic> json) =>
    _$_SingleChoiceAnswerFormat(
      textChoices: (json['textChoices'] as List<dynamic>)
          .map((e) => TextChoice.fromJson(e as Map<String, dynamic>))
          .toList(),
      defaultSelection: json['defaultSelection'] == null
          ? null
          : TextChoice.fromJson(
              json['defaultSelection'] as Map<String, dynamic>),
    );

Map<String, dynamic> _$$_SingleChoiceAnswerFormatToJson(
        _$_SingleChoiceAnswerFormat instance) =>
    <String, dynamic>{
      'textChoices': instance.textChoices.map((e) => e.toJson()).toList(),
      'defaultSelection': instance.defaultSelection?.toJson(),
    };
