import 'dart:collection';

import 'package:method_kit/src/result/question_result.dart';
import 'package:method_kit/src/task/task.dart';
import 'package:method_kit/src/exercise/exercise.dart';

abstract class ExerciseNavigator {
  final Exercise exercise;
  final ListQueue<Task> history = ListQueue();

  ExerciseNavigator(this.exercise);

  Task? firstTask();
  Task? nextTask({required Task task, QuestionResult? questionResult});
  Task? previousInList(Task task);

  Task? nextInList(Task? task) {
    final currentIndex = exercise.tasks.indexWhere(
      (element) => element.taskIdentifier == task?.taskIdentifier,
    );

    return (currentIndex + 1 > exercise.tasks.length - 1)
        ? null
        : exercise.tasks[currentIndex + 1];
  }

  Task? peekHistory() {
    if (history.isEmpty) {
      return null;
    }

    return history.last;
  }

  bool hasPreviousTask() {
    final task = peekHistory();

    return task != null;
  }

  void record(Task task) {
    history.add(task);
  }

  int get countTasks => exercise.tasks.length;
  int currentTaskIndex(Task task) {
    return exercise.tasks.indexOf(task);
  }
}
