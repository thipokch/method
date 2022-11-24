import 'package:flutter/material.dart';
import 'package:method_kit/src/result/task/instruction_task_result.dart';
import 'package:method_kit/src/task/predefined_task/instruction_task.dart';
import 'package:method_kit/src/views/widget/task_view.dart';

class InstructionView extends StatelessWidget {
  final InstructionTask instructionTask;
  final DateTime _startDate = DateTime.now();

  InstructionView({super.key, required this.instructionTask});

  @override
  Widget build(BuildContext context) {
    return TaskView(
      task: instructionTask,
      title: Text(
        instructionTask.title,
        style: Theme.of(context).textTheme.headline2,
        textAlign: TextAlign.center,
      ),
      resultFunction: () => InstructionTaskResult(
        instructionTask.taskIdentifier,
        _startDate,
        DateTime.now(),
      ),
      child: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 14.0),
        child: Text(
          instructionTask.text,
          style: Theme.of(context).textTheme.bodyText2,
          textAlign: TextAlign.center,
        ),
      ),
    );
  }
}
