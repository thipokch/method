// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'question_task.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_QuestionTask _$$_QuestionTaskFromJson(Map<String, dynamic> json) =>
    _$_QuestionTask(
      isOptional: json['isOptional'] as bool? ?? false,
      buttonText: json['buttonText'] as String? ?? 'Next',
      taskIdentifier: TaskIdentifier.fromJson(
          json['taskIdentifier'] as Map<String, dynamic>),
      showAppBar: json['showAppBar'] as bool? ?? true,
      title: json['title'] as String? ?? '',
      text: json['text'] as String? ?? '',
      answerFormat:
          AnswerFormat.fromJson(json['answerFormat'] as Map<String, dynamic>),
    );

Map<String, dynamic> _$$_QuestionTaskToJson(_$_QuestionTask instance) =>
    <String, dynamic>{
      'isOptional': instance.isOptional,
      'buttonText': instance.buttonText,
      'taskIdentifier': instance.taskIdentifier.toJson(),
      'showAppBar': instance.showAppBar,
      'title': instance.title,
      'text': instance.text,
      'answerFormat': instance.answerFormat.toJson(),
    };
