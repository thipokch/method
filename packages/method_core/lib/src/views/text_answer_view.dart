import 'package:flutter/material.dart';
import 'package:method_core/method_core.dart';
import 'package:method_core/src/views/decoration/input_decoration.dart';
import 'package:method_core/src/views/widget/task_view.dart';

class TextAnswerView extends StatefulWidget {
  final QuestionTask questionTask;
  final TextQuestionResult? result;

  const TextAnswerView({
    Key? key,
    required this.questionTask,
    required this.result,
  }) : super(key: key);

  @override
  // ignore: library_private_types_in_public_api
  _TextAnswerViewState createState() => _TextAnswerViewState();
}

class _TextAnswerViewState extends State<TextAnswerView> {
  late final TextAnswerFormat _textAnswerFormat;
  late final DateTime _startDate;

  late final TextEditingController _controller;
  bool _isValid = false;

  @override
  void initState() {
    super.initState();
    _controller = TextEditingController();
    _controller.text = widget.result?.result ?? '';
    _textAnswerFormat = widget.questionTask.answerFormat as TextAnswerFormat;
    _checkValidation(_controller.text);
    _startDate = DateTime.now();
  }

  void _checkValidation(String text) {
    setState(() {
      RegExp regExp = RegExp(_textAnswerFormat.validationRegEx);
      _isValid = regExp.hasMatch(text);
    });
  }

  @override
  void dispose() {
    _controller.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return TaskView(
      task: widget.questionTask,
      resultFunction: () => TextQuestionResult(
        id: widget.questionTask.taskIdentifier,
        startDate: _startDate,
        endDate: DateTime.now(),
        valueIdentifier: _controller.text,
        result: _controller.text,
      ),
      title: widget.questionTask.title.isNotEmpty
          ? Text(
              widget.questionTask.title,
              style: Theme.of(context).textTheme.headline2,
              textAlign: TextAlign.center,
            )
          : widget.questionTask.content,
      isValid: _isValid || widget.questionTask.isOptional,
      child: Column(
        children: [
          Padding(
            padding:
                const EdgeInsets.only(bottom: 32.0, left: 14.0, right: 14.0),
            child: Text(
              widget.questionTask.text,
              style: Theme.of(context).textTheme.bodyText2,
              textAlign: TextAlign.center,
            ),
          ),
          SizedBox(
            width: MediaQuery.of(context).size.width,
            height: 50.0,
            child: TextField(
              decoration: textFieldInputDecoration(
                hint: _textAnswerFormat.hint,
              ),
              controller: _controller,
              textAlign: TextAlign.center,
              onChanged: (String text) {
                _checkValidation(text);
              },
            ),
          ),
        ],
      ),
    );
  }
}
