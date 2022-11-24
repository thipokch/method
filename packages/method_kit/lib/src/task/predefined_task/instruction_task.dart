import 'package:flutter/widgets.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:method_kit/src/result/question_result.dart';
import 'package:method_kit/src/task/task.dart';
import 'package:method_kit/src/task/identifier/task_identifier.dart';
import 'package:method_kit/src/views/instruction_view.dart';

part 'instruction_task.freezed.dart';
part 'instruction_task.g.dart';

@freezed
class InstructionTask with _$InstructionTask implements Task {
  const InstructionTask._();

  // ignore: invalid_annotation_target
  @JsonSerializable(explicitToJson: true)
  const factory InstructionTask({
    required String title,
    required String text,
    @Default(false) bool isOptional,
    @Default('Next') String buttonText,
    required TaskIdentifier taskIdentifier,
    @Default(false) bool canGoBack,
    @Default(false) bool showProgress,
    @Default(true) bool showAppBar,
  }) = _InstructionTask;

  @override
  Widget createView({required QuestionResult? questionResult}) =>
      InstructionView(
        instructionTask: this,
      );

  factory InstructionTask.fromJson(Map<String, dynamic> json) =>
      _$InstructionTaskFromJson(json);
}
