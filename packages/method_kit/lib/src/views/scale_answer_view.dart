import 'package:flutter/material.dart';
import 'package:method_core/method_core.dart';
import 'package:method_kit/src/views/widget/task_view.dart';

class ScaleAnswerView extends StatefulWidget {
  final QuestionTask questionTask;
  final ScaleQuestionResult? result;

  const ScaleAnswerView({
    Key? key,
    required this.questionTask,
    required this.result,
  }) : super(key: key);

  @override
  // ignore: library_private_types_in_public_api
  _ScaleAnswerViewState createState() => _ScaleAnswerViewState();
}

class _ScaleAnswerViewState extends State<ScaleAnswerView> {
  late final DateTime _startDate;
  late final ScaleAnswerFormat _scaleAnswerFormat;
  late double _sliderValue;

  @override
  void initState() {
    super.initState();
    _scaleAnswerFormat = widget.questionTask.answerFormat as ScaleAnswerFormat;
    _sliderValue = widget.result?.result ?? _scaleAnswerFormat.defaultValue;
    _startDate = DateTime.now();
  }

  @override
  Widget build(BuildContext context) {
    return TaskView(
      task: widget.questionTask,
      resultFunction: () => ScaleQuestionResult(
        id: widget.questionTask.taskIdentifier,
        startDate: _startDate,
        endDate: DateTime.now(),
        valueIdentifier: _sliderValue.toString(),
        result: _sliderValue,
      ),
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
            padding:
                const EdgeInsets.only(bottom: 32.0, left: 14.0, right: 14.0),
            child: Text(
              widget.questionTask.text,
              style: Theme.of(context).textTheme.bodyText2,
              textAlign: TextAlign.center,
            ),
          ),
          Padding(
            padding: const EdgeInsets.all(14.0),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                Padding(
                  padding: const EdgeInsets.all(14.0),
                  child: Text(
                    _sliderValue.toInt().toString(),
                    style: Theme.of(context).textTheme.headline5,
                  ),
                ),
                Column(
                  children: [
                    Padding(
                      padding: const EdgeInsets.symmetric(horizontal: 32.0),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Text(
                            _scaleAnswerFormat.minimumValueDescription,
                            style: const TextStyle(
                              fontSize: 16.0,
                            ),
                          ),
                          Text(
                            _scaleAnswerFormat.maximumValueDescription,
                            style: const TextStyle(
                              fontSize: 16.0,
                            ),
                          ),
                        ],
                      ),
                    ),
                    Slider.adaptive(
                      value: _sliderValue,
                      onChanged: (double value) {
                        setState(() {
                          _sliderValue = value;
                        });
                      },
                      min: _scaleAnswerFormat.minimumValue,
                      max: _scaleAnswerFormat.maximumValue,
                      activeColor: Theme.of(context).primaryColor,
                      divisions: (_scaleAnswerFormat.maximumValue -
                              _scaleAnswerFormat.minimumValue) ~/
                          _scaleAnswerFormat.step,
                      label: _sliderValue.toString(),
                    ),
                  ],
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
