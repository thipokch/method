import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:method_kit/src/result/result.dart';
import 'package:method_kit/src/result/step_result.dart';
import 'package:method_kit/src/steps/identifier/identifier.dart';

part 'survey_result.freezed.dart';
part 'survey_result.g.dart';

@freezed
class SurveyResult with _$SurveyResult implements Result {
  const SurveyResult._();

  // ignore: invalid_annotation_target
  @JsonSerializable(explicitToJson: true)
  const factory SurveyResult({
    required Identifier? id,
    required DateTime startDate,
    required DateTime endDate,
    required FinishReason finishReason,
    required List<StepResult> results,
  }) = _SurveyResult;

  factory SurveyResult.fromJson(Map<String, dynamic> json) =>
      _$SurveyResultFromJson(json);

  List<Object?> get props => [id, startDate, endDate, finishReason];
}

// ignore: constant_identifier_names
enum FinishReason { SAVED, DISCARDED, COMPLETED, FAILED }
