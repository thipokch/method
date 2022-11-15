import 'package:flutter/widgets.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:method_kit/src/result/question_result.dart';
import 'package:method_kit/src/steps/step.dart';
import 'package:method_kit/src/steps/identifier/step_identifier.dart';
import 'package:method_kit/src/views/completion_view.dart';

part 'completion_step.freezed.dart';
part 'completion_step.g.dart';

@freezed
class CompletionStep with _$CompletionStep implements Step {
  const CompletionStep._();

  // ignore: invalid_annotation_target
  @JsonSerializable(explicitToJson: true)
  const factory CompletionStep({
    @Default(false) bool isOptional,
    required StepIdentifier stepIdentifier,
    @Default('End Survey') String buttonText,
    @Default(true) bool showAppBar,
    required String title,
    required String text,
    @Default('') String assetPath,
  }) = _CompletionStep;

  @override
  Widget createView({required QuestionResult? questionResult}) {
    return CompletionView(completionStep: this, assetPath: assetPath);
  }

  factory CompletionStep.fromJson(Map<String, dynamic> json) =>
      _$CompletionStepFromJson(json);

  @override
  final bool canGoBack = true;

  @override
  final bool showProgress = true;
  // Map<String, dynamic> toJson() => _$CompletionStepToJson(this);

  // bool operator ==(o) =>
  //     super == (o) && o is CompletionStep && o.title == title && o.text == text;
  // int get hashCode => super.hashCode ^ title.hashCode ^ text.hashCode;
}
