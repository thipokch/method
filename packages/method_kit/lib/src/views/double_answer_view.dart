import 'package:flutter/material.dart';
import 'package:method_kit/src/answer_format/double_answer_format.dart';
import 'package:method_kit/src/views/decoration/input_decoration.dart';
import 'package:method_kit/src/result/question/double_question_result.dart';
import 'package:method_kit/src/task/predefined_task/question_task.dart';
import 'package:method_kit/src/views/widget/task_view.dart';

class DoubleAnswerView extends StatefulWidget {
  final QuestionTask questionTask;
  final DoubleQuestionResult? result;

  const DoubleAnswerView({
    Key? key,
    required this.questionTask,
    required this.result,
  }) : super(key: key);

  @override
  // ignore: library_private_types_in_public_api
  _DoubleAnswerViewState createState() => _DoubleAnswerViewState();
}

class _DoubleAnswerViewState extends State<DoubleAnswerView> {
  late final DoubleAnswerFormat _doubleAnswerFormat;
  late final TextEditingController _controller;
  late final DateTime _startDate;

  bool _isValid = false;

  @override
  void initState() {
    super.initState();
    _doubleAnswerFormat =
        widget.questionTask.answerFormat as DoubleAnswerFormat;
    _controller = TextEditingController();
    _controller.text = widget.result?.result?.toString() ?? '';
    _checkValidation(_controller.text);
    _startDate = DateTime.now();
  }

  @override
  void dispose() {
    _controller.dispose();
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
      resultFunction: () => DoubleQuestionResult(
        id: widget.questionTask.taskIdentifier,
        startDate: _startDate,
        endDate: DateTime.now(),
        valueIdentifier: _controller.text,
        result: double.tryParse(_controller.text) ??
            _doubleAnswerFormat.defaultValue,
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
        padding: const EdgeInsets.symmetric(vertical: 32.0),
        child: SizedBox(
          width: MediaQuery.of(context).size.width,
          child: TextField(
            decoration: textFieldInputDecoration(
              hint: _doubleAnswerFormat.hint,
            ),
            controller: _controller,
            onChanged: (String value) {
              _checkValidation(value);
            },
            keyboardType: TextInputType.number,
            textAlign: TextAlign.center,
          ),
        ),
      ),
    );
  }
}
