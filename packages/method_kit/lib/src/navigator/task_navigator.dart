import 'dart:collection';

import 'package:method_kit/src/result/question_result.dart';
import 'package:method_kit/src/steps/step.dart';
import 'package:method_kit/src/task/task.dart';

abstract class TaskNavigator {
  final Task task;
  final ListQueue<Step> history = ListQueue();

  TaskNavigator(this.task);

  Step? firstStep();
  Step? nextStep({required Step step, QuestionResult? questionResult});
  Step? previousInList(Step step);

  Step? nextInList(Step? step) {
    final currentIndex = task.steps.indexWhere(
      (element) => element.stepIdentifier == step?.stepIdentifier,
    );

    return (currentIndex + 1 > task.steps.length - 1)
        ? null
        : task.steps[currentIndex + 1];
  }

  Step? peekHistory() {
    if (history.isEmpty) {
      return null;
    }

    return history.last;
  }

  bool hasPreviousStep() {
    final step = peekHistory();

    return step != null;
  }

  void record(Step step) {
    history.add(step);
  }

  int get countSteps => task.steps.length;
  int currentStepIndex(Step step) {
    return task.steps.indexOf(step);
  }
}
