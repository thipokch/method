import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:method_kit/src/answer_format/answer_format.dart';

part 'image_answer_format.freezed.dart';
part 'image_answer_format.g.dart';

@freezed
class ImageAnswerFormat with _$ImageAnswerFormat implements AnswerFormat {
  const factory ImageAnswerFormat({
    final String? defaultValue,
    @Default('Image: ') final String buttonText,
  }) = _ImageAnswerFormat;

  factory ImageAnswerFormat.fromJson(Map<String, dynamic> json) =>
      _$ImageAnswerFormatFromJson(json);
}
