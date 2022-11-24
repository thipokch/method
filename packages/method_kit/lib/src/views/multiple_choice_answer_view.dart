import 'package:flutter/material.dart';
import 'package:method_kit/src/answer_format/multiple_choice_answer_format.dart';
import 'package:method_kit/src/answer_format/text_choice.dart';
import 'package:method_kit/src/views/widget/selection_list_tile.dart';
import 'package:method_kit/src/result/question/multiple_choice_question_result.dart';
import 'package:method_kit/src/task/predefined_task/question_task.dart';
import 'package:method_kit/src/views/widget/task_view.dart';

class MultipleChoiceAnswerView extends StatefulWidget {
  final QuestionTask questionTask;
  final MultipleChoiceQuestionResult? result;

  const MultipleChoiceAnswerView({
    Key? key,
    required this.questionTask,
    required this.result,
  }) : super(key: key);

  @override
  // ignore: library_private_types_in_public_api
  _MultipleChoiceAnswerView createState() => _MultipleChoiceAnswerView();
}

class _MultipleChoiceAnswerView extends State<MultipleChoiceAnswerView> {
  late final DateTime _startDateTime;
  late final MultipleChoiceAnswerFormat _multipleChoiceAnswer;

  List<TextChoice> _selectedChoices = [];

  @override
  void initState() {
    super.initState();
    _multipleChoiceAnswer =
        widget.questionTask.answerFormat as MultipleChoiceAnswerFormat;
    _selectedChoices =
        widget.result?.result ?? _multipleChoiceAnswer.defaultSelection;
    _startDateTime = DateTime.now();
  }

  @override
  // ignore: long-method
  Widget build(BuildContext context) {
    return TaskView(
      task: widget.questionTask,
      resultFunction: () => MultipleChoiceQuestionResult(
        id: widget.questionTask.taskIdentifier,
        startDate: _startDateTime,
        endDate: DateTime.now(),
        valueIdentifier:
            _selectedChoices.map((choices) => choices.value).join(','),
        result: _selectedChoices,
      ),
      isValid: widget.questionTask.isOptional || _selectedChoices.isNotEmpty,
      title: widget.questionTask.title.isNotEmpty
          ? Text(
              widget.questionTask.title,
              style: Theme.of(context).textTheme.headline2,
              textAlign: TextAlign.center,
            )
          : widget.questionTask.content,
      child: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 14.0),
        child: Column(
          children: [
            Padding(
              padding: const EdgeInsets.only(bottom: 32.0),
              child: Text(
                widget.questionTask.text,
                style: Theme.of(context).textTheme.bodyText2,
                textAlign: TextAlign.center,
              ),
            ),
            Column(
              children: [
                const Divider(
                  color: Colors.grey,
                ),
                ..._multipleChoiceAnswer.textChoices
                    .map(
                      (TextChoice tc) => SelectionListTile(
                        text: tc.text,
                        onTap: () {
                          setState(
                            () {
                              if (_selectedChoices.contains(tc)) {
                                _selectedChoices.remove(tc);
                              } else {
                                _selectedChoices = [..._selectedChoices, tc];
                              }
                            },
                          );
                        },
                        isSelected: _selectedChoices.contains(tc),
                      ),
                    )
                    .toList(),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
