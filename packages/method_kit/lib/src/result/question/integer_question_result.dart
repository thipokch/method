import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:method_kit/src/steps/identifier/identifier.dart';
import 'package:method_kit/src/result/question_result.dart';


part 'integer_question_result.freezed.dart';
part 'integer_question_result.g.dart';

@freezed
class IntegerQuestionResult
    with _$IntegerQuestionResult
    implements QuestionResult<int?> {
  const IntegerQuestionResult._();

  // ignore: invalid_annotation_target
  @JsonSerializable(explicitToJson: true)
  const factory IntegerQuestionResult({
    required Identifier id,
    required DateTime startDate,
    required DateTime endDate,
    required String valueIdentifier,
    required int? result,
  }) = _IntegerQuestionResult;

  factory IntegerQuestionResult.fromJson(Map<String, dynamic> json) =>
      _$IntegerQuestionResultFromJson(json);

  List<Object?> get props => [id, startDate, endDate, valueIdentifier, result];
}
