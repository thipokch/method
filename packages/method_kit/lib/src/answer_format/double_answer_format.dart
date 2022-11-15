// by Antonio Bruno, Giacomo Ignesti and Massimo Martinelli

import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:method_kit/src/answer_format/answer_format.dart';

part 'double_answer_format.freezed.dart';
part 'double_answer_format.g.dart';

@freezed
class DoubleAnswerFormat with _$DoubleAnswerFormat implements AnswerFormat {
  const factory DoubleAnswerFormat({
    final double? defaultValue,
    @Default('') final String hint,
  }) = _DoubleAnswerFormat;

  factory DoubleAnswerFormat.fromJson(Map<String, dynamic> json) =>
      _$DoubleAnswerFormatFromJson(json);
}
