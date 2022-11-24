import 'package:flutter/widgets.dart';
import 'package:json_annotation/json_annotation.dart';
import 'package:method_kit/src/result/question_result.dart';
import 'package:method_kit/src/task/identifier/task_identifier.dart';
import 'package:method_kit/src/task/predefined_task/completion_task.dart';
import 'package:method_kit/src/task/predefined_task/instruction_task.dart';
import 'package:method_kit/src/task/predefined_task/question_task.dart';
import 'package:method_kit/src/task/task_not_defined_exception.dart';

abstract class Task {
  final TaskIdentifier taskIdentifier;
  @JsonKey(defaultValue: false)
  final bool isOptional;
  @JsonKey(defaultValue: 'Next')
  final String? buttonText;
  final bool canGoBack;
  final bool showProgress;
  final bool showAppBar;

  const Task({
    required this.taskIdentifier,
    this.isOptional = false,
    this.buttonText = 'Next',
    this.canGoBack = true,
    this.showProgress = true,
    this.showAppBar = true,
  });

  Widget createView({required QuestionResult? questionResult});

  factory Task.fromJson(Map<String, dynamic> json) {
    final type = json['type'];
    if (type == 'intro') {
      return InstructionTask.fromJson(json);
    } else if (type == 'question') {
      return QuestionTask.fromJson(json);
    } else if (type == 'completion') {
      return CompletionTask.fromJson(json);
    }
    throw const TaskNotDefinedException();
  }

  Map<String, dynamic> toJson();
}
