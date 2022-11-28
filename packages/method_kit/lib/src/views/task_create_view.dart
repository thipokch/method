import 'package:flutter/material.dart';
import 'package:method_kit/method_kit.dart';
import 'package:method_kit/src/views/multiple_double_answer_view.dart';

extension CreateView on Task {
  // ignore: long-method
  Widget createView({required TaskResultDetail? questionResult}) => map(
        completion: (_) => CompletionView(
          completionTask: _,
          assetPath: _.assetPath,
        ),
        instruction: (_) => InstructionView(instructionTask: _),
        question: (__) {
          final key = ObjectKey(__.taskIdentifier.id);

          return __.answerFormat.map(
            boolean: (_) => BooleanAnswerView(
              key: key,
              questionTask: __,
              result: questionResult as BooleanQuestionResult?,
            ),
            date: (_) => DateAnswerView(
              key: key,
              questionTask: __,
              result: questionResult as DateQuestionResult?,
            ),
            double: (_) => DoubleAnswerView(
              key: key,
              questionTask: __,
              result: questionResult as DoubleQuestionResult?,
            ),
            image: (_) => ImageAnswerView(
              key: key,
              questionTask: __,
              result: questionResult as ImageQuestionResult?,
            ),
            integer: (_) => IntegerAnswerView(
              key: key,
              questionTask: __,
              result: questionResult as IntegerQuestionResult?,
            ),
            multiChoice: (_) => MultipleChoiceAnswerView(
              key: key,
              questionTask: __,
              result: questionResult as MultiChoiceQuestionResult?,
            ),
            multiDouble: (_) => MultiDoubleAnswerView(
              key: key,
              questionTask: __,
              result: questionResult as MultiDoubleQuestionResult?,
            ),
            scale: (_) => ScaleAnswerView(
              key: key,
              questionTask: __,
              result: questionResult as ScaleQuestionResult?,
            ),
            singleChoice: (_) => SingleChoiceAnswerView(
              key: key,
              questionTask: __,
              result: questionResult as SingleChoiceQuestionResult?,
            ),
            text: (_) => TextAnswerView(
              key: key,
              questionTask: __,
              result: questionResult as TextQuestionResult?,
            ),
            time: (_) => TimeAnswerView(
              key: key,
              questionTask: __,
              result: questionResult as TimeQuestionResult?,
            ),
          );
        },
      );
}
