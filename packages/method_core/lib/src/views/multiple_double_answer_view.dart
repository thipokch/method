import 'package:flutter/material.dart';
import 'package:method_core/method_core.dart';
import 'package:method_core/src/views/widget/task_view.dart';

class MultiDoubleAnswerView extends StatefulWidget {
  final QuestionTask questionTask;
  final MultiDoubleQuestionResult? result;

  const MultiDoubleAnswerView({
    Key? key,
    required this.questionTask,
    required this.result,
  }) : super(key: key);

  @override
  State<MultiDoubleAnswerView> createState() => _MultiDoubleAnswerViewState();
}

class _MultiDoubleAnswerViewState extends State<MultiDoubleAnswerView> {
  late final MultiDoubleAnswerFormat _multipleDoubleAnswer;
  late final List<TextEditingController> _controller;
  late final DateTime _startDate;

  bool _isValid = false;
  List<MultiDouble> _insertedValues = [];

  @override
  void initState() {
    super.initState();
    _multipleDoubleAnswer =
        widget.questionTask.answerFormat as MultiDoubleAnswerFormat;
    _controller = _multipleDoubleAnswer.hints.map((e) {
      return TextEditingController();
    }).toList();

    for (var element in _controller) {
      element = TextEditingController();
      element.text = widget.result?.result?.toString() ?? '';
      _checkValidation(element.text);
    }

    _insertedValues = List.generate(
      _multipleDoubleAnswer.hints.length,
      (index) => const MultiDouble(
        text: '',
        value: 0.0,
      ),
    );

    _startDate = DateTime.now();
  }

  @override
  void dispose() {
    for (var element in _controller) {
      element.dispose();
    }
    super.dispose();
  }

  void _checkValidation(String text) {
    setState(() {
      _isValid = text.isNotEmpty && double.tryParse(text) != null;
    });
  }

  @override
  Widget build(BuildContext context) {
    return TaskView(
      task: widget.questionTask,
      resultFunction: () => MultiDoubleQuestionResult(
        id: widget.questionTask.taskIdentifier,
        startDate: _startDate,
        endDate: DateTime.now(),
        valueIdentifier: _controller.map((e) => e.text).join(', '),
        result: _insertedValues,
      ),
      isValid: _isValid || widget.questionTask.isOptional,
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
                ..._multipleDoubleAnswer.hints
                    .asMap()
                    .entries
                    .map((MapEntry<int, String> md) {
                  return TextField(
                    decoration: InputDecoration(
                      labelText: md.value,
                    ),
                    controller: _controller[md.key],
                    onChanged: (String value) {
                      value = value.replaceAll(',', '.');

                      _checkValidation(value);

                      _insertedValues[md.key] = MultiDouble(
                        text: md.value,
                        value: double.parse(value),
                      );
                    },
                    keyboardType: TextInputType.number,
                    textAlign: TextAlign.center,
                  );
                }).toList(),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
