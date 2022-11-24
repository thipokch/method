import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:method_kit/src/result/question_result.dart';
import 'package:method_kit/src/identifier/identifier.dart';

part 'date_question_result.freezed.dart';
part 'date_question_result.g.dart';

@freezed
class DateQuestionResult
    with _$DateQuestionResult
    implements QuestionResult<DateTime?> {
  const DateQuestionResult._();

  // ignore: invalid_annotation_target
  @JsonSerializable(explicitToJson: true)
  const factory DateQuestionResult({
    required Identifier id,
    required DateTime startDate,
    required DateTime endDate,
    required String valueIdentifier,
    required DateTime? result,
  }) = _DateQuestionResult;

  factory DateQuestionResult.fromJson(Map<String, dynamic> json) =>
      _$DateQuestionResultFromJson(json);

  List<Object?> get props => [id, startDate, endDate, valueIdentifier, result];
}
