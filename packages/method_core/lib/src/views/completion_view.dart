import 'package:flutter/material.dart';
import 'package:lottie/lottie.dart';
import 'package:method_core/method_core.dart';
import 'package:method_core/src/views/widget/task_view.dart';

class CompletionView extends StatelessWidget {
  final CompletionTask completionTask;
  final DateTime _startDate = DateTime.now();
  final String assetPath;

  CompletionView({
    super.key,
    required this.completionTask,
    this.assetPath = "",
  });

  @override
  Widget build(BuildContext context) {
    return TaskView(
      task: completionTask,
      resultFunction: () => CompletionTaskResult(
        completionTask.taskIdentifier,
        _startDate,
        DateTime.now(),
      ),
      title: Text(
        completionTask.title,
        style: Theme.of(context).textTheme.headline2,
      ),
      child: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 64.0),
        child: Column(
          children: [
            Text(
              completionTask.text,
              style: Theme.of(context).textTheme.bodyText2,
              textAlign: TextAlign.center,
            ),
            Padding(
              padding: const EdgeInsets.symmetric(vertical: 32.0),
              child: SizedBox(
                width: 150.0,
                height: 150.0,
                child: assetPath.isNotEmpty
                    ? Lottie.asset(
                        assetPath,
                        repeat: false,
                      )
                    : Lottie.asset(
                        'assets/fancy_checkmark.json',
                        package: 'method_core',
                        repeat: false,
                      ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
