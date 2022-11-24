import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:method_kit/src/result/question/boolean_question_result.dart';
import 'package:method_kit/src/result/question/date_question_result.dart';
import 'package:method_kit/src/result/question/double_question_result.dart';
import 'package:method_kit/src/result/question/integer_question_result.dart';
import 'package:method_kit/src/result/question/multiple_choice_question_result.dart';
import 'package:method_kit/src/result/question/multiple_double_question_result.dart';
import 'package:method_kit/src/result/question/scale_question_result.dart';
import 'package:method_kit/src/result/question/single_choice_question_result.dart';
import 'package:method_kit/src/result/question/text_question_result.dart';
import 'package:method_kit/src/result/question/time_question_result.dart';
import 'package:method_kit/src/result/result.dart';
import 'package:method_kit/src/result/task/completion_task_result.dart';
import 'package:method_kit/src/result/task/instruction_task_result.dart';
import 'package:method_kit/src/result/task/video_task_result.dart';
import 'package:method_kit/src/identifier/identifier.dart';
import 'package:method_kit/src/result/question_result.dart';

part 'task_result.freezed.dart';
part 'task_result.g.dart';

@freezed
class TaskResult with _$TaskResult implements Result {
  const TaskResult._();

  // ignore: invalid_annotation_target
  @JsonSerializable(explicitToJson: true)
  const factory TaskResult({
    required Identifier? id,
    required DateTime startDate,
    required DateTime endDate,
    @_Converter() required final List<QuestionResult> results,
  }) = _TaskResult;

  factory TaskResult.fromQuestion({required QuestionResult questionResult}) =>
      TaskResult(
        id: questionResult.id,
        startDate: questionResult.startDate,
        endDate: questionResult.endDate,
        results: [questionResult],
      );

  factory TaskResult.fromJson(Map<String, dynamic> json) =>
      _$TaskResultFromJson(json);

  // Map<String, dynamic> toJson() => _$TaskResultToJson(this);

  List<Object?> get props => [id, startDate, endDate];
}

class _Converter implements JsonConverter<List<QuestionResult>, Object> {
  const _Converter();

  @override
  // ignore: long-method
  Object toJson(List<QuestionResult> questionResults) {
    List<Map<String, dynamic>> allQuestionResultsEncoded = [];

    for (QuestionResult qr in questionResults) {
      if (qr is BooleanQuestionResult) {
        final qrJson = qr.toJson();
        qrJson['type'] = (BooleanQuestionResult).toString();
        allQuestionResultsEncoded.add(qrJson);
      } else if (qr is DateQuestionResult) {
        final qrJson = qr.toJson();
        qrJson['type'] = (DateQuestionResult).toString();
        allQuestionResultsEncoded.add(qrJson);
      } else if (qr is DoubleQuestionResult) {
        final qrJson = qr.toJson();
        qrJson['type'] = (DoubleQuestionResult).toString();
        allQuestionResultsEncoded.add(qrJson);
      } else if (qr is IntegerQuestionResult) {
        final qrJson = qr.toJson();
        qrJson['type'] = (IntegerQuestionResult).toString();
        allQuestionResultsEncoded.add(qrJson);
      } else if (qr is MultipleDoubleQuestionResult) {
        final qrJson = qr.toJson();
        qrJson['type'] = (MultipleDoubleQuestionResult).toString();
        allQuestionResultsEncoded.add(qrJson);
      } else if (qr is MultipleDoubleQuestionResult) {
        final qrJson = qr.toJson();
        qrJson['type'] = (MultipleDoubleQuestionResult).toString();
        allQuestionResultsEncoded.add(qrJson);
      } else if (qr is MultipleChoiceQuestionResult) {
        final qrJson = qr.toJson();
        qrJson['type'] = (MultipleChoiceQuestionResult).toString();
        allQuestionResultsEncoded.add(qrJson);
      } else if (qr is ScaleQuestionResult) {
        final qrJson = qr.toJson();
        qrJson['type'] = (ScaleQuestionResult).toString();
        allQuestionResultsEncoded.add(qrJson);
      } else if (qr is SingleChoiceQuestionResult) {
        final qrJson = qr.toJson();
        qrJson['type'] = (SingleChoiceQuestionResult).toString();
        allQuestionResultsEncoded.add(qrJson);
      } else if (qr is TextQuestionResult) {
        final qrJson = qr.toJson();
        qrJson['type'] = (TextQuestionResult).toString();
        allQuestionResultsEncoded.add(qrJson);
      } else if (qr is TimeQuestionResult) {
        final qrJson = qr.toJson();
        qrJson['type'] = (TimeQuestionResult).toString();
        allQuestionResultsEncoded.add(qrJson);
      } else if (qr is InstructionTaskResult) {
        final qrJson = qr.toJson();
        qrJson['type'] = (InstructionTaskResult).toString();
        allQuestionResultsEncoded.add(qrJson);
      } else if (qr is CompletionTaskResult) {
        final qrJson = qr.toJson();
        qrJson['type'] = (CompletionTaskResult).toString();
        allQuestionResultsEncoded.add(qrJson);
      } else if (qr is VideoTaskResult) {
        final qrJson = qr.toJson();
        qrJson['type'] = (VideoTaskResult).toString();
        allQuestionResultsEncoded.add(qrJson);
      } else {
        throw ('Unhandled Question Result Type');
      }
    }

    return allQuestionResultsEncoded;
  }

  @override
  List<QuestionResult> fromJson(Object json) {
    final List<QuestionResult> results = [];
    for (var element in json as List<dynamic>) {
      final qData = element as Map<String, dynamic>;
      final qType = qData['type'] as String;

      if (qType == (BooleanQuestionResult).toString()) {
        results.add(BooleanQuestionResult.fromJson(qData));
      } else if (qType == (DateQuestionResult).toString()) {
        results.add(DateQuestionResult.fromJson(qData));
      } else if (qType == (DoubleQuestionResult).toString()) {
        results.add(DoubleQuestionResult.fromJson(qData));
      } else if (qType == (IntegerQuestionResult).toString()) {
        results.add(IntegerQuestionResult.fromJson(qData));
      } else if (qType == (MultipleChoiceQuestionResult).toString()) {
        results.add(MultipleChoiceQuestionResult.fromJson(qData));
      } else if (qType == (MultipleDoubleQuestionResult).toString()) {
        results.add(MultipleDoubleQuestionResult.fromJson(qData));
      } else if (qType == (ScaleQuestionResult).toString()) {
        results.add(ScaleQuestionResult.fromJson(qData));
      } else if (qType == (SingleChoiceQuestionResult).toString()) {
        results.add(SingleChoiceQuestionResult.fromJson(qData));
      } else if (qType == (TextQuestionResult).toString()) {
        results.add(TextQuestionResult.fromJson(qData));
      } else if (qType == (TimeQuestionResult).toString()) {
        results.add(TimeQuestionResult.fromJson(qData));
      } else if (qType == (InstructionTaskResult).toString()) {
        results.add(InstructionTaskResult.fromJson(qData));
      } else if (qType == (CompletionTaskResult).toString()) {
        results.add(CompletionTaskResult.fromJson(qData));
      } else if (qType == (VideoTaskResult).toString()) {
        results.add(VideoTaskResult.fromJson(qData));
      } else {
        throw ('Unhandled Question Result Type');
      }
    }

    return results;
  }
}
