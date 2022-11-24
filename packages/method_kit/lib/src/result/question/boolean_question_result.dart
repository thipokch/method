import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:method_kit/src/answer_format/boolean_answer_format.dart';
import 'package:method_kit/src/identifier/identifier.dart';
import 'package:method_kit/src/result/question_result.dart';

part 'boolean_question_result.freezed.dart';
part 'boolean_question_result.g.dart';

@freezed
class BooleanQuestionResult
    with _$BooleanQuestionResult
    implements QuestionResult<BooleanResult?> {
  const BooleanQuestionResult._();

  // ignore: invalid_annotation_target
  @JsonSerializable(explicitToJson: true)
  const factory BooleanQuestionResult({
    required Identifier id,
    required DateTime startDate,
    required DateTime endDate,
    required String valueIdentifier,
    required BooleanResult? result,
  }) = _BooleanQuestionResult;

  factory BooleanQuestionResult.fromJson(Map<String, dynamic> json) =>
      _$BooleanQuestionResultFromJson(json);

  List<Object?> get props => [id, startDate, endDate, valueIdentifier, result];
}
