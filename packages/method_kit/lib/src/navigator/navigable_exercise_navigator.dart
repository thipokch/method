import 'package:method_kit/src/navigator/rules/conditional_navigation_rule.dart';
import 'package:method_kit/src/navigator/rules/direct_navigation_rule.dart';
import 'package:method_kit/src/navigator/rules/navigation_rule.dart';
import 'package:method_kit/src/navigator/exercise_navigator.dart';
import 'package:method_kit/src/result/question_result.dart';
import 'package:method_kit/src/task/task.dart';
import 'package:method_kit/src/exercise/navigable_exercise.dart';
import 'package:method_kit/src/exercise/exercise.dart';

class NavigableExerciseNavigator extends ExerciseNavigator {
  NavigableExerciseNavigator(Exercise exercise) : super(exercise);

  @override
  Task? nextTask({required Task task, QuestionResult? questionResult}) {
    record(task);
    final navigableExercise = exercise as NavigableExercise;
    NavigationRule? rule =
        navigableExercise.getRuleByTaskIdentifier(task.taskIdentifier);
    if (rule == null) {
      return nextInList(task);
    }
    switch (rule.runtimeType) {
      case DirectNavigationRule:
        return exercise.tasks.firstWhere((element) =>
            element.taskIdentifier ==
            (rule as DirectNavigationRule).destinationTaskIdentifier);
      case ConditionalNavigationRule:
        return evaluateNextTask(
          task,
          rule as ConditionalNavigationRule,
          questionResult,
        );
    }

    return nextInList(task);
  }

  @override
  Task? previousInList(Task? task) {
    if (history.isEmpty) {
      return null;
    }

    return history.removeLast();
  }

  Task? evaluateNextTask(
    Task? task,
    ConditionalNavigationRule rule,
    QuestionResult? questionResult,
  ) {
    if (questionResult == null) {
      return nextInList(task);
    }
    final result = questionResult.result;
    if (result == null) {
      return nextInList(task);
    }
    final nextTaskIdentifier =
        rule.resultToTaskIdentifierMapper(questionResult.valueIdentifier);
    if (nextTaskIdentifier == null) {
      return nextInList(task);
    }

    return exercise.tasks
        .firstWhere((element) => element.taskIdentifier == nextTaskIdentifier);
  }

  @override
  Task? firstTask() {
    final previousTask = peekHistory();

    return previousTask == null
        ? exercise.initalTask ?? exercise.tasks.first
        : nextTask(task: previousTask, questionResult: null);
  }
}
