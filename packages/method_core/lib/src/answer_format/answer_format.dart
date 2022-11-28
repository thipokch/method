import 'package:flutter/material.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:method_core/src/answer_format/boolean_result.dart';
import 'package:method_core/src/converter/time_of_day.dart';

part 'answer_format.freezed.dart';
part 'answer_format.g.dart';
part 'multi_double.dart';
part 'text_choice.dart';
part 'video_result.dart';

@freezed
class AnswerFormat with _$AnswerFormat {
  const AnswerFormat._();

  const factory AnswerFormat.boolean({
    required final String positiveAnswer,
    required final String negativeAnswer,
    @Default(BooleanResult.NONE) final BooleanResult result,
  }) = BooleanAnswerFormat;

  @Assert('minDate == null || maxDate == null || minDate.isBefore(maxDate)')
  @Assert('''defaultDate == null || 
    minDate == null || 
    defaultDate.isAtSameMomentAs(minDate) ||
    defaultDate.isAfter(minDate)''')
  @Assert('''defaultDate == null ||
    maxDate == null || 
    defaultDate.isAtSameMomentAs(maxDate) || 
    defaultDate.isBefore(maxDate)''')
  factory AnswerFormat.date({
    /// Default date which will be preselected on datepicker opening
    final DateTime? defaultDate,

    /// Lowest date which can be selected via the datepicker
    final DateTime? minDate,

    /// Highest date which can be selected via the datepicker
    final DateTime? maxDate,
  }) = DateAnswerFormat;

  const factory AnswerFormat.double({
    final double? defaultValue,
    @Default('') final String hint,
  }) = DoubleAnswerFormat;

  const factory AnswerFormat.image({
    final String? defaultValue,
    @Default('Image: ') final String buttonText,
  }) = ImageAnswerFormat;

  const factory AnswerFormat.integer({
    final int? defaultValue,
    @Default('') final String hint,
  }) = IntegerAnswerFormat;

  const factory AnswerFormat.multiChoice({
    required final List<TextChoice> textChoices,
    @Default([]) final List<TextChoice> defaultSelection,
  }) = MultiChoiceAnswerFormat;

  const factory AnswerFormat.multiDouble({
    final List<MultiDouble>? defaultValues,
    @Default([]) final List<String> hints,
  }) = MultiDoubleAnswerFormat;

  const factory AnswerFormat.scale({
    required final double maximumValue,
    required final double minimumValue,
    required final double defaultValue,
    required final double step,
    @Default('') final String maximumValueDescription,
    @Default('') final String minimumValueDescription,
  }) = ScaleAnswerFormat;

  const factory AnswerFormat.singleChoice({
    required final List<TextChoice> textChoices,
    final TextChoice? defaultSelection,
  }) = SingleChoiceAnswerFormat;

  const factory AnswerFormat.text({
    final int? maxLines,
    @Default('') final String hint,

    /// Regular expression by which the text gets validated
    /// default: '^(?!\s*$).+' that checks if the entered text is empty
    /// to allow any type of an answer including an empty one;
    /// set it explicitly to null.
    // @JsonKey(defaultValue: '^(?!\s*\$).+')
    // @Default('^(?!\s*\$).+')
    @Default('') final String validationRegEx,
  }) = TextAnswerFormat;

  const factory AnswerFormat.time({
    @TimeOfDayConverter() final TimeOfDay? defaultValue,
  }) = TimeAnswerFormat;

  factory AnswerFormat.fromJson(Map<String, dynamic> json) =>
      _$AnswerFormatFromJson(json);
}
