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
import 'package:method_kit/src/task/identifier/task_identifier.dart';
import 'package:method_kit/src/task/predefined_task/answer_format_not_defined_exception.dart';
import 'package:method_kit/src/task/task.dart';
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

part 'question_task.freezed.dart';
part 'question_task.g.dart';

@freezed
class QuestionTask with _$QuestionTask implements Task {
  const QuestionTask._();

  // ignore: invalid_annotation_target
  @JsonSerializable(explicitToJson: true)
  const factory QuestionTask({
    @Default(false) bool isOptional,
    @Default('Next') String buttonText,
    required TaskIdentifier taskIdentifier,
    @Default(true) bool showAppBar,
    @Default('') final String title,
    @Default('') final String text,
    // ignore: invalid_annotation_target
    @JsonKey(ignore: true) @Default(SizedBox.shrink()) final Widget content,
    required final AnswerFormat answerFormat,
  }) = _QuestionTask;

  @override
  // ignore: long-method
  Widget createView({required QuestionResult? questionResult}) {
    final key = ObjectKey(taskIdentifier.id);

    if (answerFormat is IntegerAnswerFormat) {
      return IntegerAnswerView(
        key: key,
        questionTask: this,
        result: questionResult as IntegerQuestionResult?,
      );
    } else if (answerFormat is DoubleAnswerFormat) {
      return DoubleAnswerView(
        key: key,
        questionTask: this,
        result: questionResult as DoubleQuestionResult?,
      );
    } else if (answerFormat is TextAnswerFormat) {
      return TextAnswerView(
        key: key,
        questionTask: this,
        result: questionResult as TextQuestionResult?,
      );
    } else if (answerFormat is SingleChoiceAnswerFormat) {
      return SingleChoiceAnswerView(
        key: key,
        questionTask: this,
        result: questionResult as SingleChoiceQuestionResult?,
      );
    } else if (answerFormat is MultipleChoiceAnswerFormat) {
      return MultipleChoiceAnswerView(
        key: key,
        questionTask: this,
        result: questionResult as MultipleChoiceQuestionResult?,
      );
    } else if (answerFormat is ScaleAnswerFormat) {
      return ScaleAnswerView(
        key: key,
        questionTask: this,
        result: questionResult as ScaleQuestionResult?,
      );
    } else if (answerFormat is BooleanAnswerFormat) {
      return BooleanAnswerView(
        key: key,
        questionTask: this,
        result: questionResult as BooleanQuestionResult?,
      );
    } else if (answerFormat is DateAnswerFormat) {
      return DateAnswerView(
        key: key,
        questionTask: this,
        result: questionResult as DateQuestionResult?,
      );
    } else if (answerFormat is TimeAnswerFormat) {
      return TimeAnswerView(
        key: key,
        questionTask: this,
        result: questionResult as TimeQuestionResult?,
      );
    } else if (answerFormat is MultipleDoubleAnswerFormat) {
      return MultipleDoubleAnswerView(
        key: key,
        questionTask: this,
        result: questionResult as MultipleDoubleQuestionResult?,
      );
    } else if (answerFormat is ImageAnswerFormat) {
      return ImageAnswerView(
        key: key,
        questionTask: this,
        result: questionResult as ImageQuestionResult?,
      );
    }

    throw const AnswerFormatNotDefinedException();
  }

  factory QuestionTask.fromJson(Map<String, dynamic> json) =>
      _$QuestionTaskFromJson(json);

  @override
  final bool canGoBack = true;

  @override
  final bool showProgress = true;
}
