import 'package:flutter/material.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:method_kit/src/answer_format/answer_format.dart';

part 'time_answer_format.freezed.dart';
part 'time_answer_format.g.dart';

@freezed
class TimeAnswerFormat with _$TimeAnswerFormat implements AnswerFormat {
  const factory TimeAnswerFormat({
    @_TimeOfDayJsonConverter() final TimeOfDay? defaultValue,
  }) = _TimeAnswerFormat;

  factory TimeAnswerFormat.fromJson(Map<String, dynamic> json) =>
      _$TimeAnswerFormatFromJson(json);
}

class _TimeOfDayJsonConverter
    implements JsonConverter<TimeOfDay?, Map<String, dynamic>> {
  const _TimeOfDayJsonConverter();

  @override
  TimeOfDay? fromJson(Map<String, dynamic> json) {
    if (json['hour'] == null || json['minute'] == null) {
      return null;
    }

    return TimeOfDay(
      hour: json['hour'] as int,
      minute: json['minute'] as int,
    );
  }

  @override
  Map<String, dynamic> toJson(TimeOfDay? timeOfDay) => <String, dynamic>{
        'hour': timeOfDay?.hour,
        'minute': timeOfDay?.minute,
      };
}
