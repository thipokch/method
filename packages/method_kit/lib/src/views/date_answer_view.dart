import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_platform_widgets/flutter_platform_widgets.dart';
import 'package:intl/intl.dart';
import 'package:method_core/method_core.dart';
import 'package:method_kit/src/views/widget/task_view.dart';

class DateAnswerView extends StatefulWidget {
  /// [QuestionTask] which includes the [DateAnswerFormat]
  final QuestionTask questionTask;

  /// [DateQuestionResult] which boxes the result
  final DateQuestionResult? result;

  const DateAnswerView({
    Key? key,
    required this.questionTask,
    required this.result,
  }) : super(key: key);

  @override
  // ignore: library_private_types_in_public_api
  _DateAnswerViewState createState() => _DateAnswerViewState();
}

class _DateAnswerViewState extends State<DateAnswerView> {
  final DateFormat _dateFormat = DateFormat('E, MMM d');
  final DateTime _startDate = DateTime.now();
  late DateAnswerFormat _dateAnswerFormat;
  DateTime? _result;

  @override
  void initState() {
    super.initState();
    _dateAnswerFormat = widget.questionTask.answerFormat as DateAnswerFormat;
    _result = widget.result?.result ??
        _dateAnswerFormat.defaultDate ??
        DateTime.now();
  }

  void _handleDateChanged(DateTime date) {
    setState(() => _result = date);
  }

  @override
  Widget build(BuildContext context) {
    return TaskView(
      task: widget.questionTask,
      resultFunction: () => DateQuestionResult(
        id: widget.questionTask.taskIdentifier,
        startDate: _startDate,
        endDate: DateTime.now(),
        valueIdentifier: _result?.toIso8601String() ?? 'none',
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
            padding: const EdgeInsets.only(bottom: 32.0),
            child: Text(
              widget.questionTask.text,
              style: Theme.of(context).textTheme.bodyText2,
              textAlign: TextAlign.center,
            ),
          ),
          PlatformWidget(
            material: (_, __) => _androidDatePicker(),
            cupertino: (context, platform) => _iosDatePicker(),
          ),
        ],
      ),
    );
  }

  Widget _androidDatePicker() {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Padding(
          padding: const EdgeInsets.symmetric(horizontal: 14.0),
          child: Stack(
            children: [
              Container(
                color: Theme.of(context).primaryColor,
                width: double.infinity,
                height: 80.0,
              ),
              Positioned(
                left: 8.0,
                bottom: 8.0,
                child: Text(
                  _dateFormat.format(_result!),
                  style: const TextStyle(
                    fontSize: 28.0,
                    color: Colors.white,
                  ),
                ),
              ),
            ],
          ),
        ),
        SizedBox(
          width: double.infinity,
          height: 300.0,
          child: CalendarDatePicker(
            firstDate: _dateAnswerFormat.minDate ?? DateTime.utc(1900),
            lastDate: _dateAnswerFormat.maxDate?.add(
                  const Duration(hours: 1),
                ) ??
                DateTime.now().add(
                  const Duration(hours: 1),
                ),
            initialDate: _result ?? DateTime.now(),
            currentDate: _result,
            onDateChanged: (DateTime value) => _handleDateChanged(value),
          ),
        ),
      ],
    );
  }

  Widget _iosDatePicker() {
    return SizedBox(
      width: double.infinity,
      height: 400.0,
      child: CupertinoDatePicker(
        mode: CupertinoDatePickerMode.date,
        minimumDate: _dateAnswerFormat.minDate,
        //We have to add an hour to to met the assert maxDate > initDate
        maximumDate: _dateAnswerFormat.maxDate?.add(
              const Duration(hours: 1),
            ) ??
            DateTime.now().add(
              const Duration(hours: 1),
            ),
        initialDateTime: _dateAnswerFormat.defaultDate,
        onDateTimeChanged: (DateTime value) {
          setState(() {
            _result = value;
          });
        },
      ),
    );
  }
}
