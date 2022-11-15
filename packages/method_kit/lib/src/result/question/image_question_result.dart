import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:method_kit/src/result/question_result.dart';
import 'package:method_kit/src/steps/identifier/identifier.dart';

part 'image_question_result.freezed.dart';
part 'image_question_result.g.dart';

@freezed
class ImageQuestionResult
    with _$ImageQuestionResult
    implements QuestionResult<String?> {
  const ImageQuestionResult._();

  const factory ImageQuestionResult({
    required Identifier id,
    required DateTime startDate,
    required DateTime endDate,
    required String valueIdentifier,
    required String? result,
  }) = _ImageQuestionResult;

  factory ImageQuestionResult.fromJson(Map<String, dynamic> json) =>
      _$ImageQuestionResultFromJson(json);

  List<Object?> get props => [id, startDate, endDate, valueIdentifier, result];
}
