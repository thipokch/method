import 'package:flutter/material.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:method_core/method_core.dart';
import 'package:method_core/src/converter/time_of_day.dart';

part 'task_result_detail.freezed.dart';

part 'task_result_detail.g.dart';

@freezed
class TaskResultDetail with _$TaskResultDetail implements Result {
  String get valueIdentifier => map(
        completion: (_) => 'completion',
        instruction: (_) => 'instruction',
        video: (_) => id.id,
        boolean: (_) => _.valueIdentifier,
        date: (_) => _.valueIdentifier,
        double: (_) => _.valueIdentifier,
        image: (_) => _.valueIdentifier,
        integer: (_) => _.valueIdentifier,
        scale: (_) => _.valueIdentifier,
        text: (_) => _.valueIdentifier,
        time: (_) => _.valueIdentifier,
        multiDouble: (_) => _.valueIdentifier,
        multiChoice: (_) => _.valueIdentifier,
        singleChoice: (_) => _.valueIdentifier,
      );

  final Object? result = null;

  const TaskResultDetail._();

  const factory TaskResultDetail.completion(
    final Identifier id,
    final DateTime startDate,
    final DateTime endDate,
  ) = CompletionTaskResult;

  const factory TaskResultDetail.instruction(
    Identifier id,
    DateTime startDate,
    DateTime endDate,
  ) = InstructionTaskResult;

  const factory TaskResultDetail.video({
    required Identifier id,
    required DateTime startDate,
    required DateTime endDate,
    required VideoResult? result,
  }) = VideoTaskResult;

  const factory TaskResultDetail.boolean({
    required Identifier id,
    required DateTime startDate,
    required DateTime endDate,
    required String valueIdentifier,
    required BooleanResult? result,
  }) = BooleanQuestionResult;

  const factory TaskResultDetail.date({
    required Identifier id,
    required DateTime startDate,
    required DateTime endDate,
    required String valueIdentifier,
    required DateTime? result,
  }) = DateQuestionResult;

  const factory TaskResultDetail.double({
    required Identifier id,
    required DateTime startDate,
    required DateTime endDate,
    required String valueIdentifier,
    required double? result,
  }) = DoubleQuestionResult;

  const factory TaskResultDetail.image({
    required Identifier id,
    required DateTime startDate,
    required DateTime endDate,
    required String valueIdentifier,
    required String? result,
  }) = ImageQuestionResult;

  const factory TaskResultDetail.integer({
    required Identifier id,
    required DateTime startDate,
    required DateTime endDate,
    required String valueIdentifier,
    required int? result,
  }) = IntegerQuestionResult;

  const factory TaskResultDetail.multiChoice({
    required Identifier id,
    required DateTime startDate,
    required DateTime endDate,
    required String valueIdentifier,
    required List<TextChoice>? result,
  }) = MultiChoiceQuestionResult;

  const factory TaskResultDetail.multiDouble({
    required Identifier id,
    required DateTime startDate,
    required DateTime endDate,
    required String valueIdentifier,
    required List<MultiDouble>? result,
  }) = MultiDoubleQuestionResult;

  const factory TaskResultDetail.scale({
    required Identifier id,
    required DateTime startDate,
    required DateTime endDate,
    required String valueIdentifier,
    required double? result,
  }) = ScaleQuestionResult;

  const factory TaskResultDetail.singleChoice({
    required Identifier id,
    required DateTime startDate,
    required DateTime endDate,
    required String valueIdentifier,
    required TextChoice? result,
  }) = SingleChoiceQuestionResult;

  const factory TaskResultDetail.text({
    required Identifier id,
    required DateTime startDate,
    required DateTime endDate,
    required String valueIdentifier,
    required String? result,
  }) = TextQuestionResult;

  @TimeOfDayConverter()
  const factory TaskResultDetail.time({
    required Identifier id,
    required DateTime startDate,
    required DateTime endDate,
    required String valueIdentifier,
    required TimeOfDay? result,
  }) = TimeQuestionResult;

  factory TaskResultDetail.fromJson(Map<String, dynamic> json) =>
      _$TaskResultDetailFromJson(json);
}
