import 'package:flutter/material.dart';
import 'package:method_kit/src/answer_format/boolean_answer_format.dart';
import 'package:method_kit/src/views/widget/selection_list_tile.dart';
import 'package:method_kit/src/result/question/boolean_question_result.dart';
import 'package:method_kit/src/task/predefined_task/question_task.dart';
import 'package:method_kit/src/views/widget/task_view.dart';

class BooleanAnswerView extends StatefulWidget {
  final QuestionTask questionTask;
  final BooleanQuestionResult? result;

  const BooleanAnswerView({
    Key? key,
    required this.questionTask,
    required this.result,
  }) : super(key: key);

  @override
  // ignore: library_private_types_in_public_api
  _BooleanAnswerViewState createState() => _BooleanAnswerViewState();
}

class _BooleanAnswerViewState extends State<BooleanAnswerView> {
  late final BooleanAnswerFormat _answerFormat;
  late final DateTime _startDate;
  BooleanResult? _result;

  @override
  void initState() {
    super.initState();
    _answerFormat = widget.questionTask.answerFormat as BooleanAnswerFormat;
    _result = widget.result?.result ?? _answerFormat.result;
    _startDate = DateTime.now();
  }

  @override
  // ignore: long-method
  Widget build(BuildContext context) {
    return TaskView(
      task: widget.questionTask,
      resultFunction: () => BooleanQuestionResult(
        id: widget.questionTask.taskIdentifier,
        startDate: _startDate,
        endDate: DateTime.now(),
        valueIdentifier: _result == BooleanResult.POSITIVE
            ? _answerFormat.positiveAnswer
            : _result == BooleanResult.NEGATIVE
                ? _answerFormat.negativeAnswer
                : '',
        result: _result,
      ),
      title: widget.questionTask.title.isNotEmpty
          ? Text(
              widget.questionTask.title,
              style: Theme.of(context).textTheme.headline2,
              textAlign: TextAlign.center,
            )
          : widget.questionTask.content,
      isValid: widget.questionTask.isOptional || _result != null,
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
              SelectionListTile(
                text: _answerFormat.positiveAnswer,
                onTap: () {
                  _result = _result == BooleanResult.POSITIVE
                      ? null
                      : BooleanResult.POSITIVE;
                  // ignore: no-empty-block
                  setState(() {});
                },
                isSelected: _result == BooleanResult.POSITIVE,
              ),
              SelectionListTile(
                text: _answerFormat.negativeAnswer,
                onTap: () {
                  _result = _result == BooleanResult.NEGATIVE
                      ? null
                      : BooleanResult.NEGATIVE;
                  // ignore: no-empty-block
                  setState(() {});
                },
                isSelected: _result == BooleanResult.NEGATIVE,
              ),
            ],
          ),
        ],
      ),
    );
  }
}
