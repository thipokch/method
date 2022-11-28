import 'package:method_core/method_core.dart';
import 'package:method_kit/src/configuration/app_bar_configuration.dart';

abstract class ExerciseState {
  const ExerciseState();
}

class LoadingExerciseState extends ExerciseState {}

class PresentingExerciseState extends ExerciseState {
  final AppBarConfiguration appBarConfiguration;
  final List<Task> tasks;
  final Set<TaskResultDetail> questionResults;
  final Task currentTask;
  final TaskResultDetail? result;
  final int currentTaskIndex;
  final int taskCount;
  final bool isPreviousTask;

  PresentingExerciseState({
    required this.taskCount,
    required this.appBarConfiguration,
    required this.currentTask,
    required this.tasks,
    required this.questionResults,
    this.result,
    this.currentTaskIndex = 0,
    this.isPreviousTask = false,
  });
}

class ExerciseResultState extends ExerciseState {
  final ExerciseResult result;
  final Task? currentTask;
  final TaskResultDetail? taskResult;

  ExerciseResultState({
    required this.result,
    this.taskResult,
    required this.currentTask,
  });
}
