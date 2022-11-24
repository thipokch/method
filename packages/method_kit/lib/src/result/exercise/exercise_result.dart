import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:method_kit/src/result/result.dart';
import 'package:method_kit/src/result/task_result.dart';
import 'package:method_kit/src/identifier/identifier.dart';

part 'exercise_result.freezed.dart';
part 'exercise_result.g.dart';

@freezed
class ExerciseResult with _$ExerciseResult implements Result {
  const ExerciseResult._();

  // ignore: invalid_annotation_target
  @JsonSerializable(explicitToJson: true)
  const factory ExerciseResult({
    required Identifier? id,
    required DateTime startDate,
    required DateTime endDate,
    required FinishReason finishReason,
    required List<TaskResult> results,
  }) = _ExerciseResult;

  factory ExerciseResult.fromJson(Map<String, dynamic> json) =>
      _$ExerciseResultFromJson(json);

  List<Object?> get props => [id, startDate, endDate, finishReason];
}

// ignore: constant_identifier_names
enum FinishReason { SAVED, DISCARDED, COMPLETED, FAILED }
