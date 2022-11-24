import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:method_kit/src/identifier/identifier.dart';
import 'package:method_kit/src/result/question_result.dart';

part 'double_question_result.freezed.dart';
part 'double_question_result.g.dart';

@freezed
class DoubleQuestionResult
    with _$DoubleQuestionResult
    implements QuestionResult<double?> {
  const DoubleQuestionResult._();

  // ignore: invalid_annotation_target
  @JsonSerializable(explicitToJson: true)
  const factory DoubleQuestionResult({
    required Identifier id,
    required DateTime startDate,
    required DateTime endDate,
    required String valueIdentifier,
    required double? result,
  }) = _DoubleQuestionResult;

  factory DoubleQuestionResult.fromJson(Map<String, dynamic> json) =>
      _$DoubleQuestionResultFromJson(json);

  List<Object?> get props => [id, startDate, endDate, valueIdentifier, result];
}
