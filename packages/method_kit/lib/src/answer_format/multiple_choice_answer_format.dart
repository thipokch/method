import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:method_kit/src/answer_format/answer_format.dart';
import 'package:method_kit/src/answer_format/text_choice.dart';

part 'multiple_choice_answer_format.freezed.dart';
part 'multiple_choice_answer_format.g.dart';

@freezed
class MultipleChoiceAnswerFormat
    with _$MultipleChoiceAnswerFormat
    implements AnswerFormat {
  // ignore: invalid_annotation_target
  @JsonSerializable(explicitToJson: true)
  const factory MultipleChoiceAnswerFormat({
    required final List<TextChoice> textChoices,
    // ignore: invalid_annotation_target
    @JsonKey(defaultValue: [])
    @Default([])
        final List<TextChoice> defaultSelection,
  }) = _MultipleChoiceAnswerFormat;

  factory MultipleChoiceAnswerFormat.fromJson(Map<String, dynamic> json) =>
      _$MultipleChoiceAnswerFormatFromJson(json);
}
