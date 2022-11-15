// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'instruction_step.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_InstructionStep _$$_InstructionStepFromJson(Map<String, dynamic> json) =>
    _$_InstructionStep(
      title: json['title'] as String,
      text: json['text'] as String,
      isOptional: json['isOptional'] as bool? ?? false,
      buttonText: json['buttonText'] as String? ?? 'Next',
      stepIdentifier: StepIdentifier.fromJson(
          json['stepIdentifier'] as Map<String, dynamic>),
      canGoBack: json['canGoBack'] as bool? ?? false,
      showProgress: json['showProgress'] as bool? ?? false,
      showAppBar: json['showAppBar'] as bool? ?? true,
    );

Map<String, dynamic> _$$_InstructionStepToJson(_$_InstructionStep instance) =>
    <String, dynamic>{
      'title': instance.title,
      'text': instance.text,
      'isOptional': instance.isOptional,
      'buttonText': instance.buttonText,
      'stepIdentifier': instance.stepIdentifier.toJson(),
      'canGoBack': instance.canGoBack,
      'showProgress': instance.showProgress,
      'showAppBar': instance.showAppBar,
    };
