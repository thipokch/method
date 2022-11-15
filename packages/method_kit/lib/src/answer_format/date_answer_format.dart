import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:method_kit/src/answer_format/answer_format.dart';

part 'date_answer_format.freezed.dart';
part 'date_answer_format.g.dart';

@freezed
class DateAnswerFormat with _$DateAnswerFormat implements AnswerFormat {
  @Assert('minDate == null || maxDate == null || minDate.isBefore(maxDate)')
  @Assert('''defaultDate == null || 
    minDate == null || 
    defaultDate.isAtSameMomentAs(minDate) ||
    defaultDate.isAfter(minDate)''')
  @Assert('''defaultDate == null ||
    maxDate == null || 
    defaultDate.isAtSameMomentAs(maxDate) || 
    defaultDate.isBefore(maxDate)''')
  factory DateAnswerFormat({
    /// Default date which will be preselected on datepicker opening
    final DateTime? defaultDate,

    /// Lowest date which can be selected via the datepicker
    final DateTime? minDate,

    /// Highest date which can be selected via the datepicker
    final DateTime? maxDate,
  }) = _DateAnswerFormat;

  factory DateAnswerFormat.fromJson(Map<String, dynamic> json) =>
      _$DateAnswerFormatFromJson(json);
  // Map<String, dynamic> toJson() => _$DateAnswerFormatToJson(this);
}
