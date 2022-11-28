import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:method_core/method_core.dart';

part 'task_result.freezed.dart';

part 'task_result.g.dart';

@freezed
class TaskResult with _$TaskResult implements Result {
  const TaskResult._();

  const factory TaskResult({
    required Identifier? id,
    required DateTime startDate,
    required DateTime endDate,
    required final List<TaskResultDetail> results,
  }) = _TaskResult;

  factory TaskResult.fromQuestion({required TaskResultDetail questionResult}) =>
      TaskResult(
        id: questionResult.id,
        startDate: questionResult.startDate,
        endDate: questionResult.endDate,
        results: [questionResult],
      );

  factory TaskResult.fromJson(Map<String, dynamic> json) =>
      _$TaskResultFromJson(json);
}
