import 'package:method_kit/method_kit.dart';

class OrderedExerciseNavigator extends ExerciseNavigator {
  OrderedExerciseNavigator(Exercise exercise) : super(exercise);

  @override
  Task? nextTask({required Task task, Result? questionResult}) {
    record(task);

    return nextInList(task);
  }

  @override
  Task? previousInList(Task task) {
    final currentIndex = exercise.tasks
        .indexWhere((element) => element.taskIdentifier == task.taskIdentifier);

    return (currentIndex - 1 < 0) ? null : exercise.tasks[currentIndex - 1];
  }

  @override
  Task? firstTask() {
    final previousTask = peekHistory();

    return previousTask == null
        ? exercise.initialTask ?? exercise.tasks.first
        : nextInList(previousTask);
  }
}
