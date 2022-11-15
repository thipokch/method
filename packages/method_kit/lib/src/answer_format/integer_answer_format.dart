import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:method_kit/src/answer_format/answer_format.dart';

part 'integer_answer_format.freezed.dart';
part 'integer_answer_format.g.dart';

@freezed
class IntegerAnswerFormat with _$IntegerAnswerFormat implements AnswerFormat {
  const factory IntegerAnswerFormat({
    final int? defaultValue,
    @Default('') final String hint,
  }) = _IntegerAnswerFormat;

  factory IntegerAnswerFormat.fromJson(Map<String, dynamic> json) =>
      _$IntegerAnswerFormatFromJson(json);
}
