import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:method_kit/src/identifier/identifier.dart';
import 'package:method_kit/src/result/question_result.dart';

part 'text_question_result.freezed.dart';
part 'text_question_result.g.dart';

@freezed
class TextQuestionResult
    with _$TextQuestionResult
    implements QuestionResult<String?> {
  const TextQuestionResult._();

  // ignore: invalid_annotation_target
  @JsonSerializable(explicitToJson: true)
  const factory TextQuestionResult({
    required Identifier id,
    required DateTime startDate,
    required DateTime endDate,
    required String valueIdentifier,
    required String? result,
  }) = _TextQuestionResult;

  factory TextQuestionResult.fromJson(Map<String, dynamic> json) =>
      _$TextQuestionResultFromJson(json);

  List<Object?> get props => [id, startDate, endDate, valueIdentifier, result];
}
