import 'package:collection/collection.dart' show IterableExtension;
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:method_kit/src/configuration/app_bar_configuration.dart';
import 'package:method_kit/src/navigator/exercise_navigator.dart';
import 'package:method_kit/src/presenter/exercise_event.dart';
import 'package:method_kit/src/presenter/exercise_state.dart';
import 'package:method_kit/src/result/question_result.dart';
import 'package:method_kit/src/result/task_result.dart';
import 'package:method_kit/src/result/exercise/exercise_result.dart';
import 'package:method_kit/src/task/task.dart';
import 'package:method_kit/src/task/identifier/task_identifier.dart';

//TO DO: Extract gathering of the results into another class
class ExercisePresenter extends Bloc<ExerciseEvent, ExerciseState> {
  final ExerciseNavigator exerciseNavigator;
  final Function(ExerciseResult) onResult;

  Set<QuestionResult> results = {};
  late final DateTime startDate;

  ExercisePresenter({
    required this.exerciseNavigator,
    required this.onResult,
  }) : super(LoadingExerciseState()) {
    on<StartExercise>((event, emit) {
      emit(_handleInitialTask());
    });

    on<NextTask>((event, emit) {
      if (state is PresentingExerciseState) {
        emit(_handleNextTask(event, state as PresentingExerciseState));
      }
    });

    on<TaskBack>((event, emit) {
      if (state is PresentingExerciseState) {
        emit(_handleTaskBack(event, state as PresentingExerciseState));
      }
    });

    on<CloseExercise>((event, emit) {
      if (state is PresentingExerciseState) {
        emit(_handleClose(event, state as PresentingExerciseState));
      }
    });

    startDate = DateTime.now();
    add(StartExercise());
  }

  ExerciseState _handleInitialTask() {
    Task? task = exerciseNavigator.firstTask();
    if (task != null) {
      return PresentingExerciseState(
        currentTask: task,
        questionResults: results,
        tasks: exerciseNavigator.exercise.tasks,
        result: null,
        currentTaskIndex: currentTaskIndex(task),
        taskCount: countTasks,
        appBarConfiguration: AppBarConfiguration(
          showProgress: task.showProgress,
          canBack: task.canGoBack,
        ),
      );
    }

    //If no tasks are provided we finish the exercise
    final exerciseResult = ExerciseResult(
      id: exerciseNavigator.exercise.id,
      startDate: startDate,
      endDate: DateTime.now(),
      finishReason: FinishReason.COMPLETED,
      results: [],
    );

    return ExerciseResultState(
      result: exerciseResult,
      currentTask: null,
    );
  }

  ExerciseState _handleNextTask(
    NextTask event,
    PresentingExerciseState currentState,
  ) {
    _addResult(event.questionResult);
    final Task? nextTask = exerciseNavigator.nextTask(
      task: currentState.currentTask,
      questionResult: event.questionResult,
    );

    if (nextTask == null) {
      return _handleExerciseFinished(currentState);
    }

    QuestionResult? questionResult =
        _getResultByTaskIdentifier(nextTask.taskIdentifier);

    return PresentingExerciseState(
      currentTask: nextTask,
      result: questionResult,
      tasks: exerciseNavigator.exercise.tasks,
      questionResults: results,
      currentTaskIndex: currentTaskIndex(nextTask),
      taskCount: countTasks,
      appBarConfiguration: AppBarConfiguration(
        showProgress: nextTask.showProgress,
        canBack: nextTask.canGoBack,
      ),
    );
  }

  ExerciseState _handleTaskBack(
    TaskBack event,
    PresentingExerciseState currentState,
  ) {
    _addResult(event.questionResult);
    final Task? previousTask =
        exerciseNavigator.previousInList(currentState.currentTask);

    if (previousTask != null) {
      QuestionResult? questionResult =
          _getResultByTaskIdentifier(previousTask.taskIdentifier);

      return PresentingExerciseState(
        currentTask: previousTask,
        result: questionResult,
        tasks: exerciseNavigator.exercise.tasks,
        questionResults: results,
        currentTaskIndex: currentTaskIndex(previousTask),
        appBarConfiguration: AppBarConfiguration(
          showProgress: previousTask.showProgress,
          canBack: previousTask.canGoBack,
        ),
        isPreviousTask: true,
        taskCount: countTasks,
      );
    }

    //If theres no previous task we can't go back further

    return state;
  }

  QuestionResult? _getResultByTaskIdentifier(TaskIdentifier? identifier) {
    return results.firstWhereOrNull(
      (element) => element.id == identifier,
    );
  }

  ExerciseState _handleClose(
    CloseExercise event,
    PresentingExerciseState currentState,
  ) {
    _addResult(event.questionResult);

    List<TaskResult> taskResults =
        results.map((e) => TaskResult.fromQuestion(questionResult: e)).toList();

    final exerciseResult = ExerciseResult(
      id: exerciseNavigator.exercise.id,
      startDate: startDate,
      endDate: DateTime.now(),
      finishReason: FinishReason.DISCARDED,
      results: taskResults,
    );

    return ExerciseResultState(
      result: exerciseResult,
      taskResult: currentState.result,
      currentTask: currentState.currentTask,
    );
  }

  //Currently we are only handling one question per task
  ExerciseState _handleExerciseFinished(PresentingExerciseState currentState) {
    List<TaskResult> taskResults =
        results.map((e) => TaskResult.fromQuestion(questionResult: e)).toList();
    final exerciseResult = ExerciseResult(
      id: exerciseNavigator.exercise.id,
      startDate: startDate,
      endDate: DateTime.now(),
      finishReason: FinishReason.COMPLETED,
      results: taskResults,
    );

    return ExerciseResultState(
      result: exerciseResult,
      currentTask: currentState.currentTask,
      taskResult: currentState.result,
    );
  }

  void _addResult(QuestionResult? questionResult) {
    if (questionResult == null) {
      return;
    }
    results
        .removeWhere((QuestionResult result) => result.id == questionResult.id);
    results.add(
      questionResult,
    );
  }

  int get countTasks => exerciseNavigator.countTasks;
  int currentTaskIndex(Task task) {
    return exerciseNavigator.currentTaskIndex(task);
  }
}
