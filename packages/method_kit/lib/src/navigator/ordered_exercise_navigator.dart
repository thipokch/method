import 'package:method_kit/src/navigator/exercise_navigator.dart';
import 'package:method_kit/src/result/question_result.dart';
import 'package:method_kit/src/task/task.dart';
import 'package:method_kit/src/exercise/exercise.dart';

class OrderedExerciseNavigator extends ExerciseNavigator {
  OrderedExerciseNavigator(Exercise exercise) : super(exercise);

  @override
  Task? nextTask({required Task task, QuestionResult? questionResult}) {
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
        ? exercise.initalTask ?? exercise.tasks.first
        : nextInList(previousTask);
  }
}
