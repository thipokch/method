import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:method_kit/src/answer_format/multi_double.dart';
import 'package:method_kit/src/steps/identifier/identifier.dart';
import 'package:method_kit/src/result/question_result.dart';


part 'multiple_double_question_result.freezed.dart';
part 'multiple_double_question_result.g.dart';

@freezed
class MultipleDoubleQuestionResult
    with _$MultipleDoubleQuestionResult
    implements QuestionResult<List<MultiDouble>?> {
  const MultipleDoubleQuestionResult._();

  // ignore: invalid_annotation_target
  @JsonSerializable(explicitToJson: true)
  const factory MultipleDoubleQuestionResult({
    required Identifier id,
    required DateTime startDate,
    required DateTime endDate,
    required String valueIdentifier,
    required List<MultiDouble>? result,
  }) = _MultipleDoubleQuestionResult;

  factory MultipleDoubleQuestionResult.fromJson(Map<String, dynamic> json) =>
      _$MultipleDoubleQuestionResultFromJson(json);

  List<Object?> get props => [id, startDate, endDate, valueIdentifier, result];
}
