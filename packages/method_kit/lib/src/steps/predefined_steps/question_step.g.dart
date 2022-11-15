// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'question_step.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_QuestionStep _$$_QuestionStepFromJson(Map<String, dynamic> json) =>
    _$_QuestionStep(
      isOptional: json['isOptional'] as bool? ?? false,
      buttonText: json['buttonText'] as String? ?? 'Next',
      stepIdentifier: StepIdentifier.fromJson(
          json['stepIdentifier'] as Map<String, dynamic>),
      showAppBar: json['showAppBar'] as bool? ?? true,
      title: json['title'] as String? ?? '',
      text: json['text'] as String? ?? '',
      answerFormat:
          AnswerFormat.fromJson(json['answerFormat'] as Map<String, dynamic>),
    );

Map<String, dynamic> _$$_QuestionStepToJson(_$_QuestionStep instance) =>
    <String, dynamic>{
      'isOptional': instance.isOptional,
      'buttonText': instance.buttonText,
      'stepIdentifier': instance.stepIdentifier.toJson(),
      'showAppBar': instance.showAppBar,
      'title': instance.title,
      'text': instance.text,
      'answerFormat': instance.answerFormat.toJson(),
    };
