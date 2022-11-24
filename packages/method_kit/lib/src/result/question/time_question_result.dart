import 'package:flutter/material.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:method_kit/src/identifier/identifier.dart';
import 'package:method_kit/src/result/question_result.dart';

part 'time_question_result.freezed.dart';
part 'time_question_result.g.dart';

@freezed
class TimeQuestionResult
    with _$TimeQuestionResult
    implements QuestionResult<TimeOfDay?> {
  const TimeQuestionResult._();

  // ignore: invalid_annotation_target
  @JsonSerializable(explicitToJson: true)
  @TimeOfDayConverter()
  const factory TimeQuestionResult({
    required Identifier id,
    required DateTime startDate,
    required DateTime endDate,
    required String valueIdentifier,
    required TimeOfDay? result,
  }) = _TimeQuestionResult;

  factory TimeQuestionResult.fromJson(Map<String, dynamic> json) =>
      _$TimeQuestionResultFromJson(json);

  List<Object?> get props => [id, startDate, endDate, valueIdentifier, result];
}

class TimeOfDayConverter extends JsonConverter<TimeOfDay?, String?> {
  const TimeOfDayConverter();

  @override
  TimeOfDay? fromJson(String? json) {
    if (json == null) {
      return null;
    }

    // ignore: no_leading_underscores_for_local_identifiers
    String _removeLeadingZeroIfNeeded(String value) {
      if (value.startsWith('0')) {
        const indexOfSecondCharacter = 1;

        return value.substring(indexOfSecondCharacter);
      } else {
        return value;
      }
    }

    final elements = json.split(':');
    final hourString = _removeLeadingZeroIfNeeded(elements.first);
    final minuteString = _removeLeadingZeroIfNeeded(elements.last);

    final hour = int.tryParse(hourString);
    final minute = int.tryParse(minuteString);

    return hour != null && minute != null
        ? TimeOfDay(hour: hour, minute: minute)
        : null;
  }

  @override
  String? toJson(TimeOfDay? object) {
    if (object == null) {
      return null;
    }

    // ignore: no_leading_underscores_for_local_identifiers
    String _addLeadingZeroIfNeeded(int value) {
      if (value < 10) return '0$value';

      return value.toString();
    }

    final String hourLabel = _addLeadingZeroIfNeeded(object.hour);
    final String minuteLabel = _addLeadingZeroIfNeeded(object.minute);

    return '$hourLabel:$minuteLabel';
  }
}
