import 'package:flutter/widgets.dart';
import 'package:json_annotation/json_annotation.dart';
import 'package:method_kit/src/result/question_result.dart';
import 'package:method_kit/src/steps/identifier/step_identifier.dart';
import 'package:method_kit/src/steps/predefined_steps/completion_step.dart';
import 'package:method_kit/src/steps/predefined_steps/instruction_step.dart';
import 'package:method_kit/src/steps/predefined_steps/question_step.dart';
import 'package:method_kit/src/steps/step_not_defined_exception.dart';

abstract class Step {
  final StepIdentifier stepIdentifier;
  @JsonKey(defaultValue: false)
  final bool isOptional;
  @JsonKey(defaultValue: 'Next')
  final String? buttonText;
  final bool canGoBack;
  final bool showProgress;
  final bool showAppBar;

  const Step({
    required this.stepIdentifier,
    this.isOptional = false,
    this.buttonText = 'Next',
    this.canGoBack = true,
    this.showProgress = true,
    this.showAppBar = true,
  });

  Widget createView({required QuestionResult? questionResult});

  factory Step.fromJson(Map<String, dynamic> json) {
    final type = json['type'];
    if (type == 'intro') {
      return InstructionStep.fromJson(json);
    } else if (type == 'question') {
      return QuestionStep.fromJson(json);
    } else if (type == 'completion') {
      return CompletionStep.fromJson(json);
    }
    throw const StepNotDefinedException();
  }

  Map<String, dynamic> toJson();
}
