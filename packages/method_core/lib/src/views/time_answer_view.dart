import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_platform_widgets/flutter_platform_widgets.dart';
import 'package:method_core/method_core.dart';
import 'package:method_core/src/views/widget/task_view.dart';
import 'package:method_core/src/views/widget/time_picker_widget.dart'
    as exercisewidget;

class TimeAnswerView extends StatefulWidget {
  final QuestionTask questionTask;
  final TimeQuestionResult? result;

  const TimeAnswerView({
    Key? key,
    required this.questionTask,
    required this.result,
  }) : super(key: key);

  @override
  // ignore: library_private_types_in_public_api
  _TimeAnswerViewState createState() => _TimeAnswerViewState();
}

class _TimeAnswerViewState extends State<TimeAnswerView> {
  final DateTime _startDate = DateTime.now();
  late TimeAnswerFormat _timeAnswerFormat;
  late TimeOfDay? _result;

  @override
  void initState() {
    super.initState();
    _timeAnswerFormat = widget.questionTask.answerFormat as TimeAnswerFormat;
    _result = widget.result?.result ??
        _timeAnswerFormat.defaultValue ??
        TimeOfDay.fromDateTime(
          DateTime.now(),
        );
  }

  @override
  Widget build(BuildContext context) {
    return TaskView(
      task: widget.questionTask,
      resultFunction: () => TimeQuestionResult(
        id: widget.questionTask.taskIdentifier,
        startDate: _startDate,
        endDate: DateTime.now(),
        valueIdentifier: _result.toString(),
        result: _result,
      ),
      isValid: widget.questionTask.isOptional || _result != null,
      title: widget.questionTask.title.isNotEmpty
          ? Text(
              widget.questionTask.title,
              style: Theme.of(context).textTheme.headline2,
              textAlign: TextAlign.center,
            )
          : widget.questionTask.content,
      child: Column(
        children: [
          Padding(
            padding: const EdgeInsets.only(bottom: 14.0),
            child: Text(
              widget.questionTask.text,
              style: Theme.of(context).textTheme.bodyText2,
              textAlign: TextAlign.center,
            ),
          ),
          PlatformWidget(
            material: (_, __) => _androidTimePicker(),
            cupertino: (context, platform) => _iosTimePicker(),
          ),
        ],
      ),
    );
  }

  Widget _androidTimePicker() {
    return SizedBox(
      width: double.infinity,
      height: 450.0,
      child: exercisewidget.TimePickerWidget(
        initialTime: _result ??
            TimeOfDay.fromDateTime(
              DateTime.now(),
            ),
        timeChanged: (TimeOfDay time) {
          setState(() {
            _result = time;
          });
        },
      ),
    );
  }

  Widget _iosTimePicker() {
    return SizedBox(
      width: double.infinity,
      height: 450.0,
      child: CupertinoDatePicker(
        mode: CupertinoDatePickerMode.time,
        onDateTimeChanged: (DateTime newTime) {
          setState(() {
            _result = TimeOfDay.fromDateTime(newTime);
          });
        },
      ),
    );
  }
}
