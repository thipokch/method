import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:method_kit/src/steps/identifier/identifier.dart';
import 'package:method_kit/src/result/question_result.dart';

part 'completion_step_result.freezed.dart';
part 'completion_step_result.g.dart';

@freezed
class CompletionStepResult
    with _$CompletionStepResult
    implements QuestionResult {
  const CompletionStepResult._();

  // ignore: invalid_annotation_target
  @JsonSerializable(explicitToJson: true)
  const factory CompletionStepResult(
    final Identifier id,
    final DateTime startDate,
    final DateTime endDate,
  ) = _CompletionStepResult;

  factory CompletionStepResult.fromJson(Map<String, dynamic> json) =>
      _$CompletionStepResultFromJson(json);

  List<Object?> get props => [id, startDate, endDate, valueIdentifier];

  @override
  final result = null;

  @override
  final String valueIdentifier = 'completion';
}
