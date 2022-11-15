import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:method_kit/src/answer_format/answer_format.dart';
import 'package:method_kit/src/answer_format/text_choice.dart';

part 'single_choice_answer_format.freezed.dart';
part 'single_choice_answer_format.g.dart';

@freezed
class SingleChoiceAnswerFormat
    with _$SingleChoiceAnswerFormat
    implements AnswerFormat {
  // ignore: invalid_annotation_target
  @JsonSerializable(explicitToJson: true)
  const factory SingleChoiceAnswerFormat({
    required final List<TextChoice> textChoices,
    final TextChoice? defaultSelection,
  }) = _SingleChoiceAnswerFormat;

  factory SingleChoiceAnswerFormat.fromJson(Map<String, dynamic> json) =>
      _$SingleChoiceAnswerFormatFromJson(json);
}
