// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'completion_task.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_CompletionTask _$$_CompletionTaskFromJson(Map<String, dynamic> json) =>
    _$_CompletionTask(
      isOptional: json['isOptional'] as bool? ?? false,
      taskIdentifier: TaskIdentifier.fromJson(
          json['taskIdentifier'] as Map<String, dynamic>),
      buttonText: json['buttonText'] as String? ?? 'End Exercise',
      showAppBar: json['showAppBar'] as bool? ?? true,
      title: json['title'] as String,
      text: json['text'] as String,
      assetPath: json['assetPath'] as String? ?? '',
    );

Map<String, dynamic> _$$_CompletionTaskToJson(_$_CompletionTask instance) =>
    <String, dynamic>{
      'isOptional': instance.isOptional,
      'taskIdentifier': instance.taskIdentifier.toJson(),
      'buttonText': instance.buttonText,
      'showAppBar': instance.showAppBar,
      'title': instance.title,
      'text': instance.text,
      'assetPath': instance.assetPath,
    };
