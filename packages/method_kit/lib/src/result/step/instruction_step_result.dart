import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:method_kit/src/result/question_result.dart';
import 'package:method_kit/src/steps/identifier/identifier.dart';

part 'instruction_step_result.freezed.dart';
part 'instruction_step_result.g.dart';

@freezed
class InstructionStepResult
    with _$InstructionStepResult
    implements QuestionResult {
  const InstructionStepResult._();

  // ignore: invalid_annotation_target
  @JsonSerializable(explicitToJson: true)
  const factory InstructionStepResult(
    Identifier id,
    DateTime startDate,
    DateTime endDate,
  ) = _InstructionStepResult;

  factory InstructionStepResult.fromJson(Map<String, dynamic> json) =>
      _$InstructionStepResultFromJson(json);

  List<Object?> get props => [id, startDate, endDate, valueIdentifier];

  @override
  final result = null;

  @override
  final String valueIdentifier = 'instruction';
}
