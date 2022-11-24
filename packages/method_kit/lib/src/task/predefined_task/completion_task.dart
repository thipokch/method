import 'package:flutter/widgets.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:method_kit/src/result/question_result.dart';
import 'package:method_kit/src/task/task.dart';
import 'package:method_kit/src/task/identifier/task_identifier.dart';
import 'package:method_kit/src/views/completion_view.dart';

part 'completion_task.freezed.dart';
part 'completion_task.g.dart';

@freezed
class CompletionTask with _$CompletionTask implements Task {
  const CompletionTask._();

  // ignore: invalid_annotation_target
  @JsonSerializable(explicitToJson: true)
  const factory CompletionTask({
    @Default(false) bool isOptional,
    required TaskIdentifier taskIdentifier,
    @Default('End Exercise') String buttonText,
    @Default(true) bool showAppBar,
    required String title,
    required String text,
    @Default('') String assetPath,
  }) = _CompletionTask;

  @override
  Widget createView({required QuestionResult? questionResult}) {
    return CompletionView(completionTask: this, assetPath: assetPath);
  }

  factory CompletionTask.fromJson(Map<String, dynamic> json) =>
      _$CompletionTaskFromJson(json);

  @override
  final bool canGoBack = true;

  @override
  final bool showProgress = true;
  // Map<String, dynamic> toJson() => _$CompletionTaskToJson(this);

  // bool operator ==(o) =>
  //     super == (o) && o is CompletionTask && o.title == title && o.text == text;
  // int get hashCode => super.hashCode ^ title.hashCode ^ text.hashCode;
}
