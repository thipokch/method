import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:method_kit/src/answer_format/text_choice.dart';
import 'package:method_kit/src/identifier/identifier.dart';
import 'package:method_kit/src/result/question_result.dart';

part 'single_choice_question_result.freezed.dart';
part 'single_choice_question_result.g.dart';

@freezed
class SingleChoiceQuestionResult
    with _$SingleChoiceQuestionResult
    implements QuestionResult<TextChoice?> {
  const SingleChoiceQuestionResult._();

  // ignore: invalid_annotation_target
  @JsonSerializable(explicitToJson: true)
  const factory SingleChoiceQuestionResult({
    required Identifier id,
    required DateTime startDate,
    required DateTime endDate,
    required String valueIdentifier,
    required TextChoice? result,
  }) = _SingleChoiceQuestionResult;

  factory SingleChoiceQuestionResult.fromJson(Map<String, dynamic> json) =>
      _$SingleChoiceQuestionResultFromJson(json);

  List<Object?> get props => [id, startDate, endDate, valueIdentifier, result];
}
