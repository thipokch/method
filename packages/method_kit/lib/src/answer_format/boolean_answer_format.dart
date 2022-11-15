import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:method_kit/src/answer_format/answer_format.dart';

part 'boolean_answer_format.freezed.dart';
part 'boolean_answer_format.g.dart';

@freezed
class BooleanAnswerFormat with _$BooleanAnswerFormat implements AnswerFormat {
  const factory BooleanAnswerFormat({
    required final String positiveAnswer,
    required final String negativeAnswer,
    @Default(BooleanResult.NONE) final BooleanResult result,
  }) = _BooleanAnswerFormat;

  factory BooleanAnswerFormat.fromJson(Map<String, dynamic> json) =>
      _$BooleanAnswerFormatFromJson(json);
}

// ignore: constant_identifier_names
enum BooleanResult { NONE, POSITIVE, NEGATIVE }
