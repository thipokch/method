// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'completion_step.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_CompletionStep _$$_CompletionStepFromJson(Map<String, dynamic> json) =>
    _$_CompletionStep(
      isOptional: json['isOptional'] as bool? ?? false,
      stepIdentifier: StepIdentifier.fromJson(
          json['stepIdentifier'] as Map<String, dynamic>),
      buttonText: json['buttonText'] as String? ?? 'End Survey',
      showAppBar: json['showAppBar'] as bool? ?? true,
      title: json['title'] as String,
      text: json['text'] as String,
      assetPath: json['assetPath'] as String? ?? '',
    );

Map<String, dynamic> _$$_CompletionStepToJson(_$_CompletionStep instance) =>
    <String, dynamic>{
      'isOptional': instance.isOptional,
      'stepIdentifier': instance.stepIdentifier.toJson(),
      'buttonText': instance.buttonText,
      'showAppBar': instance.showAppBar,
      'title': instance.title,
      'text': instance.text,
      'assetPath': instance.assetPath,
    };
