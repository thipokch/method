import 'package:flutter/widgets.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:method_kit/src/answer_format/answer_format.dart';
import 'package:method_kit/src/answer_format/boolean_answer_format.dart';
import 'package:method_kit/src/answer_format/date_answer_format.dart';
import 'package:method_kit/src/answer_format/double_answer_format.dart';
import 'package:method_kit/src/answer_format/image_answer_format.dart';
import 'package:method_kit/src/answer_format/integer_answer_format.dart';
import 'package:method_kit/src/answer_format/multiple_choice_answer_format.dart';
import 'package:method_kit/src/answer_format/multiple_double_answer_format.dart';
import 'package:method_kit/src/answer_format/scale_answer_format.dart';
import 'package:method_kit/src/answer_format/single_choice_answer_format.dart';
import 'package:method_kit/src/answer_format/text_answer_format.dart';
import 'package:method_kit/src/answer_format/time_answer_format.dart';
import 'package:method_kit/src/result/question/boolean_question_result.dart';
import 'package:method_kit/src/result/question/date_question_result.dart';
import 'package:method_kit/src/result/question/double_question_result.dart';
import 'package:method_kit/src/result/question/image_question_result.dart';
import 'package:method_kit/src/result/question/integer_question_result.dart';
import 'package:method_kit/src/result/question/multiple_choice_question_result.dart';
import 'package:method_kit/src/result/question/multiple_double_question_result.dart';
import 'package:method_kit/src/result/question/scale_question_result.dart';
import 'package:method_kit/src/result/question/single_choice_question_result.dart';
import 'package:method_kit/src/result/question/text_question_result.dart';
import 'package:method_kit/src/result/question/time_question_result.dart';
import 'package:method_kit/src/result/question_result.dart';
import 'package:method_kit/src/steps/identifier/step_identifier.dart';
import 'package:method_kit/src/steps/predefined_steps/answer_format_not_defined_exception.dart';
import 'package:method_kit/src/steps/step.dart';
import 'package:method_kit/src/views/boolean_answer_view.dart';
import 'package:method_kit/src/views/date_answer_view.dart';
import 'package:method_kit/src/views/double_answer_view.dart';
import 'package:method_kit/src/views/image_answer_view.dart';
import 'package:method_kit/src/views/integer_answer_view.dart';
import 'package:method_kit/src/views/multiple_choice_answer_view.dart';
import 'package:method_kit/src/views/multiple_double_answer_view.dart';
import 'package:method_kit/src/views/scale_answer_view.dart';
import 'package:method_kit/src/views/single_choice_answer_view.dart';
import 'package:method_kit/src/views/text_answer_view.dart';
import 'package:method_kit/src/views/time_answer_view.dart';

part 'question_step.freezed.dart';
part 'question_step.g.dart';

@freezed
class QuestionStep with _$QuestionStep implements Step {
  const QuestionStep._();

  // ignore: invalid_annotation_target
  @JsonSerializable(explicitToJson: true)
  const factory QuestionStep({
    @Default(false) bool isOptional,
    @Default('Next') String buttonText,
    required StepIdentifier stepIdentifier,
    @Default(true) bool showAppBar,
    @Default('') final String title,
    @Default('') final String text,
    // ignore: invalid_annotation_target
    @JsonKey(ignore: true) @Default(SizedBox.shrink()) final Widget content,
    required final AnswerFormat answerFormat,
  }) = _QuestionStep;

  @override
  // ignore: long-method
  Widget createView({required QuestionResult? questionResult}) {
    final key = ObjectKey(stepIdentifier.id);

    if (answerFormat is IntegerAnswerFormat) {
      return IntegerAnswerView(
        key: key,
        questionStep: this,
        result: questionResult as IntegerQuestionResult?,
      );
    } else if (answerFormat is DoubleAnswerFormat) {
      return DoubleAnswerView(
        key: key,
        questionStep: this,
        result: questionResult as DoubleQuestionResult?,
      );
    } else if (answerFormat is TextAnswerFormat) {
      return TextAnswerView(
        key: key,
        questionStep: this,
        result: questionResult as TextQuestionResult?,
      );
    } else if (answerFormat is SingleChoiceAnswerFormat) {
      return SingleChoiceAnswerView(
        key: key,
        questionStep: this,
        result: questionResult as SingleChoiceQuestionResult?,
      );
    } else if (answerFormat is MultipleChoiceAnswerFormat) {
      return MultipleChoiceAnswerView(
        key: key,
        questionStep: this,
        result: questionResult as MultipleChoiceQuestionResult?,
      );
    } else if (answerFormat is ScaleAnswerFormat) {
      return ScaleAnswerView(
        key: key,
        questionStep: this,
        result: questionResult as ScaleQuestionResult?,
      );
    } else if (answerFormat is BooleanAnswerFormat) {
      return BooleanAnswerView(
        key: key,
        questionStep: this,
        result: questionResult as BooleanQuestionResult?,
      );
    } else if (answerFormat is DateAnswerFormat) {
      return DateAnswerView(
        key: key,
        questionStep: this,
        result: questionResult as DateQuestionResult?,
      );
    } else if (answerFormat is TimeAnswerFormat) {
      return TimeAnswerView(
        key: key,
        questionStep: this,
        result: questionResult as TimeQuestionResult?,
      );
    } else if (answerFormat is MultipleDoubleAnswerFormat) {
      return MultipleDoubleAnswerView(
        key: key,
        questionStep: this,
        result: questionResult as MultipleDoubleQuestionResult?,
      );
    } else if (answerFormat is ImageAnswerFormat) {
      return ImageAnswerView(
        key: key,
        questionStep: this,
        result: questionResult as ImageQuestionResult?,
      );
    }

    throw const AnswerFormatNotDefinedException();
  }

  factory QuestionStep.fromJson(Map<String, dynamic> json) =>
      _$QuestionStepFromJson(json);

  @override
  final bool canGoBack = true;

  @override
  final bool showProgress = true;
}
