// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'instruction_task.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_InstructionTask _$$_InstructionTaskFromJson(Map<String, dynamic> json) =>
    _$_InstructionTask(
      title: json['title'] as String,
      text: json['text'] as String,
      isOptional: json['isOptional'] as bool? ?? false,
      buttonText: json['buttonText'] as String? ?? 'Next',
      taskIdentifier: TaskIdentifier.fromJson(
          json['taskIdentifier'] as Map<String, dynamic>),
      canGoBack: json['canGoBack'] as bool? ?? false,
      showProgress: json['showProgress'] as bool? ?? false,
      showAppBar: json['showAppBar'] as bool? ?? true,
    );

Map<String, dynamic> _$$_InstructionTaskToJson(_$_InstructionTask instance) =>
    <String, dynamic>{
      'title': instance.title,
      'text': instance.text,
      'isOptional': instance.isOptional,
      'buttonText': instance.buttonText,
      'taskIdentifier': instance.taskIdentifier.toJson(),
      'canGoBack': instance.canGoBack,
      'showProgress': instance.showProgress,
      'showAppBar': instance.showAppBar,
    };
