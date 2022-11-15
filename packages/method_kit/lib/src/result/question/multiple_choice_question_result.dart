import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:method_kit/src/answer_format/text_choice.dart';
import 'package:method_kit/src/steps/identifier/identifier.dart';
import 'package:method_kit/src/result/question_result.dart';


part 'multiple_choice_question_result.freezed.dart';
part 'multiple_choice_question_result.g.dart';

@freezed
class MultipleChoiceQuestionResult
    with _$MultipleChoiceQuestionResult
    implements QuestionResult<List<TextChoice>?> {
  const MultipleChoiceQuestionResult._();

  // ignore: invalid_annotation_target
  @JsonSerializable(explicitToJson: true)
  const factory MultipleChoiceQuestionResult({
    required Identifier id,
    required DateTime startDate,
    required DateTime endDate,
    required String valueIdentifier,
    required List<TextChoice>? result,
  }) = _MultipleChoiceQuestionResult;

  factory MultipleChoiceQuestionResult.fromJson(Map<String, dynamic> json) =>
      _$MultipleChoiceQuestionResultFromJson(json);

  List<Object?> get props => [id, startDate, endDate, valueIdentifier, result];
}
