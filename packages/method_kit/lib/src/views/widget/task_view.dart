import 'package:flutter/material.dart';
import 'package:method_kit/method_kit.dart';
// import 'package:method_kit/src/controller/exercise_controller.dart';
// import 'package:method_kit/src/result/question_result.dart';
// import 'package:method_kit/src/task/task.dart' as exercisetask;
import 'package:provider/provider.dart';

class TaskView extends StatelessWidget {
  final Task task;
  final Widget title;
  final Widget child;
  final TaskResultDetail Function() resultFunction;
  final bool isValid;
  final ExerciseController? controller;

  const TaskView({
    super.key,
    required this.task,
    required this.child,
    required this.title,
    required this.resultFunction,
    this.controller,
    this.isValid = true,
  });

  @override
  Widget build(BuildContext context) {
    final exerciseController = controller ?? context.read<ExerciseController>();

    return _content(exerciseController, context);
  }

  Widget _content(ExerciseController exerciseController, BuildContext context) {
    return SizedBox.expand(
      child: Container(
        color: Theme.of(context).backgroundColor,
        child: Center(
          child: SingleChildScrollView(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                Padding(
                  padding: const EdgeInsets.symmetric(vertical: 32.0),
                  child: title,
                ),
                child,
                Padding(
                  padding: const EdgeInsets.symmetric(vertical: 32.0),
                  child: OutlinedButton(
                    onPressed: isValid || task.isOptional
                        ? () =>
                            exerciseController.nextTask(context, resultFunction)
                        : null,
                    child: Text(
                      task.buttonText.toUpperCase(),
                      style: TextStyle(
                        color: isValid
                            ? Theme.of(context).primaryColor
                            : Colors.grey,
                      ),
                    ),
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
