import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:method_kit/src/answer_format/answer_format.dart';
import 'package:method_kit/src/answer_format/multi_double.dart';

part 'multiple_double_answer_format.freezed.dart';
part 'multiple_double_answer_format.g.dart';

@freezed
class MultipleDoubleAnswerFormat
    with _$MultipleDoubleAnswerFormat
    implements AnswerFormat {
  const factory MultipleDoubleAnswerFormat({
    final List<MultiDouble>? defaultValues,
    // ignore: invalid_annotation_target
    @JsonKey(defaultValue: []) @Default([]) final List<String> hints,
  }) = _MultipleDoubleAnswerFormat;

  factory MultipleDoubleAnswerFormat.fromJson(Map<String, dynamic> json) =>
      _$MultipleDoubleAnswerFormatFromJson(json);
}
