import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:method_kit/src/identifier/identifier.dart';
import 'package:method_kit/src/result/question_result.dart';

part 'scale_question_result.freezed.dart';
part 'scale_question_result.g.dart';

@freezed
class ScaleQuestionResult
    with _$ScaleQuestionResult
    implements QuestionResult<double?> {
  const ScaleQuestionResult._();

  // ignore: invalid_annotation_target
  @JsonSerializable(explicitToJson: true)
  const factory ScaleQuestionResult({
    required Identifier id,
    required DateTime startDate,
    required DateTime endDate,
    required String valueIdentifier,
    required double? result,
  }) = _ScaleQuestionResult;

  factory ScaleQuestionResult.fromJson(Map<String, dynamic> json) =>
      _$ScaleQuestionResultFromJson(json);

  List<Object?> get props => [id, startDate, endDate, valueIdentifier, result];
}
