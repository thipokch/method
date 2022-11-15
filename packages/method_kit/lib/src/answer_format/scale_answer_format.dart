import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:method_kit/src/answer_format/answer_format.dart';

part 'scale_answer_format.freezed.dart';
part 'scale_answer_format.g.dart';

@freezed
class ScaleAnswerFormat with _$ScaleAnswerFormat implements AnswerFormat {
  const factory ScaleAnswerFormat({
    required final double maximumValue,
    required final double minimumValue,
    required final double defaultValue,
    required final double step,
    @Default('') final String maximumValueDescription,
    @Default('') final String minimumValueDescription,
  }) = _ScaleAnswerFormat;

  factory ScaleAnswerFormat.fromJson(Map<String, dynamic> json) =>
      _$ScaleAnswerFormatFromJson(json);
}
