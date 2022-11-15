// ignore_for_file: invalid_annotation_target

import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:method_kit/src/answer_format/answer_format.dart';

part 'text_answer_format.freezed.dart';
part 'text_answer_format.g.dart';

@freezed
class TextAnswerFormat with _$TextAnswerFormat implements AnswerFormat {
  const factory TextAnswerFormat({
    final int? maxLines,
    @JsonKey(defaultValue: '') @Default('') final String hint,

    /// Regular expression by which the text gets validated
    /// default: '^(?!\s*$).+' that checks if the entered text is empty
    /// to allow any type of an answer including an empty one;
    /// set it explicitly to null.
    // @JsonKey(defaultValue: '^(?!\s*\$).+')
    // @Default('^(?!\s*\$).+')
    @JsonKey(defaultValue: '') @Default('') final String validationRegEx,
  }) = _TextAnswerFormat;

  factory TextAnswerFormat.fromJson(Map<String, dynamic> json) =>
      _$TextAnswerFormatFromJson(json);
}
