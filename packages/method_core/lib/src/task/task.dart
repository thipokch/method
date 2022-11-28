import 'package:flutter/widgets.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:method_core/method_core.dart';
import 'package:method_core/src/converter/identifier.dart';

part 'task.freezed.dart';

part 'task.g.dart';

abstract class _Task {
  TaskIdentifier get taskIdentifier;
  @Default(false)
  final bool isOptional = false;
  @Default('Next')
  final String? buttonText = 'Next';
  final bool canGoBack = true;
  final bool showProgress = true;
  final bool showAppBar = true;

  const _Task();
}

@freezed
class Task extends _Task with _$Task {
  const Task._();

  const factory Task.completion({
    @Default(false) bool isOptional,
    @TaskIdentifierConverter() required TaskIdentifier taskIdentifier,
    @Default('End Exercise') String buttonText,
    @Default(true) bool showAppBar,
    required String title,
    required String text,
    @Default('') String assetPath,
  }) = CompletionTask;

  const factory Task.instruction({
    required String title,
    required String text,
    @Default(false) bool isOptional,
    @Default('Next') String buttonText,
    @TaskIdentifierConverter() required TaskIdentifier taskIdentifier,
    @Default(false) bool canGoBack,
    @Default(false) bool showProgress,
    @Default(true) bool showAppBar,
  }) = InstructionTask;

  const factory Task.question({
    @Default(false) bool isOptional,
    @Default('Next') String buttonText,
    @TaskIdentifierConverter() required TaskIdentifier taskIdentifier,
    @Default(true) bool showAppBar,
    @Default('') final String title,
    @Default('') final String text,
    // ignore: invalid_annotation_target
    @JsonKey(ignore: true) @Default(SizedBox.shrink()) final Widget content,
    required final AnswerFormat answerFormat,
  }) = QuestionTask;

  factory Task.fromJson(Map<String, dynamic> json) => _$TaskFromJson(json);
}
