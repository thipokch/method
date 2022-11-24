import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:method_kit/src/identifier/identifier.dart';
import 'package:method_kit/src/result/question_result.dart';

part 'completion_task_result.freezed.dart';
part 'completion_task_result.g.dart';

@freezed
class CompletionTaskResult
    with _$CompletionTaskResult
    implements QuestionResult {
  const CompletionTaskResult._();

  // ignore: invalid_annotation_target
  @JsonSerializable(explicitToJson: true)
  const factory CompletionTaskResult(
    final Identifier id,
    final DateTime startDate,
    final DateTime endDate,
  ) = _CompletionTaskResult;

  factory CompletionTaskResult.fromJson(Map<String, dynamic> json) =>
      _$CompletionTaskResultFromJson(json);

  List<Object?> get props => [id, startDate, endDate, valueIdentifier];

  @override
  final result = null;

  @override
  final String valueIdentifier = 'completion';
}
