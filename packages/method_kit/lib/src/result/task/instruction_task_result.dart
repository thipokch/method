import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:method_kit/src/result/question_result.dart';
import 'package:method_kit/src/identifier/identifier.dart';

part 'instruction_task_result.freezed.dart';
part 'instruction_task_result.g.dart';

@freezed
class InstructionTaskResult
    with _$InstructionTaskResult
    implements QuestionResult {
  const InstructionTaskResult._();

  // ignore: invalid_annotation_target
  @JsonSerializable(explicitToJson: true)
  const factory InstructionTaskResult(
    Identifier id,
    DateTime startDate,
    DateTime endDate,
  ) = _InstructionTaskResult;

  factory InstructionTaskResult.fromJson(Map<String, dynamic> json) =>
      _$InstructionTaskResultFromJson(json);

  List<Object?> get props => [id, startDate, endDate, valueIdentifier];

  @override
  final result = null;

  @override
  final String valueIdentifier = 'instruction';
}
