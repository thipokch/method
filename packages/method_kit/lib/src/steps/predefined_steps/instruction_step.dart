import 'package:flutter/widgets.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:method_kit/src/result/question_result.dart';
import 'package:method_kit/src/steps/step.dart';
import 'package:method_kit/src/steps/identifier/step_identifier.dart';
import 'package:method_kit/src/views/instruction_view.dart';

part 'instruction_step.freezed.dart';
part 'instruction_step.g.dart';

@freezed
class InstructionStep with _$InstructionStep implements Step {
  const InstructionStep._();

  // ignore: invalid_annotation_target
  @JsonSerializable(explicitToJson: true)
  const factory InstructionStep({
    required String title,
    required String text,
    @Default(false) bool isOptional,
    @Default('Next') String buttonText,
    required StepIdentifier stepIdentifier,
    @Default(false) bool canGoBack,
    @Default(false) bool showProgress,
    @Default(true) bool showAppBar,
  }) = _InstructionStep;

  @override
  Widget createView({required QuestionResult? questionResult}) =>
      InstructionView(
        instructionStep: this,
      );

  factory InstructionStep.fromJson(Map<String, dynamic> json) =>
      _$InstructionStepFromJson(json);
}
