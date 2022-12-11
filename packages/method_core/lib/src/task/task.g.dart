// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'task.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$CompletionTask _$$CompletionTaskFromJson(Map<String, dynamic> json) =>
    _$CompletionTask(
      isOptional: json['isOptional'] as bool? ?? false,
      taskIdentifier: TaskIdentifier.fromJson(
          json['taskIdentifier'] as Map<String, dynamic>),
      buttonText: json['buttonText'] as String? ?? 'End Exercise',
      showAppBar: json['showAppBar'] as bool? ?? true,
      title: json['title'] as String,
      text: json['text'] as String,
      assetPath: json['assetPath'] as String? ?? '',
      $type: json['runtimeType'] as String?,
    );

Map<String, dynamic> _$$CompletionTaskToJson(_$CompletionTask instance) =>
    <String, dynamic>{
      'isOptional': instance.isOptional,
      'taskIdentifier': instance.taskIdentifier,
      'buttonText': instance.buttonText,
      'showAppBar': instance.showAppBar,
      'title': instance.title,
      'text': instance.text,
      'assetPath': instance.assetPath,
      'runtimeType': instance.$type,
    };

_$InstructionTask _$$InstructionTaskFromJson(Map<String, dynamic> json) =>
    _$InstructionTask(
      title: json['title'] as String,
      text: json['text'] as String,
      isOptional: json['isOptional'] as bool? ?? false,
      buttonText: json['buttonText'] as String? ?? 'Next',
      taskIdentifier: TaskIdentifier.fromJson(
          json['taskIdentifier'] as Map<String, dynamic>),
      canGoBack: json['canGoBack'] as bool? ?? false,
      showProgress: json['showProgress'] as bool? ?? false,
      showAppBar: json['showAppBar'] as bool? ?? true,
      $type: json['runtimeType'] as String?,
    );

Map<String, dynamic> _$$InstructionTaskToJson(_$InstructionTask instance) =>
    <String, dynamic>{
      'title': instance.title,
      'text': instance.text,
      'isOptional': instance.isOptional,
      'buttonText': instance.buttonText,
      'taskIdentifier': instance.taskIdentifier,
      'canGoBack': instance.canGoBack,
      'showProgress': instance.showProgress,
      'showAppBar': instance.showAppBar,
      'runtimeType': instance.$type,
    };

_$QuestionTask _$$QuestionTaskFromJson(Map<String, dynamic> json) =>
    _$QuestionTask(
      isOptional: json['isOptional'] as bool? ?? false,
      buttonText: json['buttonText'] as String? ?? 'Next',
      taskIdentifier: TaskIdentifier.fromJson(
          json['taskIdentifier'] as Map<String, dynamic>),
      showAppBar: json['showAppBar'] as bool? ?? true,
      title: json['title'] as String? ?? '',
      text: json['text'] as String? ?? '',
      answerFormat:
          AnswerFormat.fromJson(json['answerFormat'] as Map<String, dynamic>),
      $type: json['runtimeType'] as String?,
    );

Map<String, dynamic> _$$QuestionTaskToJson(_$QuestionTask instance) =>
    <String, dynamic>{
      'isOptional': instance.isOptional,
      'buttonText': instance.buttonText,
      'taskIdentifier': instance.taskIdentifier,
      'showAppBar': instance.showAppBar,
      'title': instance.title,
      'text': instance.text,
      'answerFormat': instance.answerFormat,
      'runtimeType': instance.$type,
    };
