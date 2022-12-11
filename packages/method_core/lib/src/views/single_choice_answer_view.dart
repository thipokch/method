import 'package:flutter/material.dart';
import 'package:method_core/method_core.dart';
import 'package:method_core/src/views/widget/selection_list_tile.dart';
import 'package:method_core/src/views/widget/task_view.dart';

class SingleChoiceAnswerView extends StatefulWidget {
  final QuestionTask questionTask;
  final SingleChoiceQuestionResult? result;

  const SingleChoiceAnswerView({
    Key? key,
    required this.questionTask,
    required this.result,
  }) : super(key: key);

  @override
  // ignore: library_private_types_in_public_api
  _SingleChoiceAnswerViewState createState() => _SingleChoiceAnswerViewState();
}

class _SingleChoiceAnswerViewState extends State<SingleChoiceAnswerView> {
  late final DateTime _startDate;
  late final SingleChoiceAnswerFormat _singleChoiceAnswerFormat;
  TextChoice? _selectedChoice;

  @override
  void initState() {
    super.initState();
    _singleChoiceAnswerFormat =
        widget.questionTask.answerFormat as SingleChoiceAnswerFormat;
    _selectedChoice =
        widget.result?.result ?? _singleChoiceAnswerFormat.defaultSelection;
    _startDate = DateTime.now();
  }

  @override
  Widget build(BuildContext context) {
    return TaskView(
      task: widget.questionTask,
      resultFunction: () => SingleChoiceQuestionResult(
        id: widget.questionTask.taskIdentifier,
        startDate: _startDate,
        endDate: DateTime.now(),
        valueIdentifier: _selectedChoice?.value ?? '',
        result: _selectedChoice,
      ),
      isValid: widget.questionTask.isOptional || _selectedChoice != null,
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
                ..._singleChoiceAnswerFormat.textChoices.map(
                  (TextChoice tc) {
                    return SelectionListTile(
                      text: tc.text,
                      onTap: () {
                        _selectedChoice = _selectedChoice == tc ? null : tc;
                        // ignore: no-empty-block
                        setState(() {});
                      },
                      isSelected: _selectedChoice == tc,
                    );
                  },
                ).toList(),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
