import 'package:flutter/widgets.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:method_kit/src/presenter/exercise_event.dart';
import 'package:method_kit/src/presenter/exercise_presenter.dart';
import 'package:method_kit/src/result/question_result.dart';

class ExerciseController {
  /// Defines what should happen if the next task is called
  /// Default behavior is:
  /// ```dart
  /// BlocProvider.of<ExercisePresenter>(context).add(
  ///    NextTask(
  ///      resultFunction.call(),
  ///    ),
  /// );
  /// ```
  final Function(
    BuildContext context,
    QuestionResult Function() resultFunction,
  )? onNextTask;

  /// Defines what should happen if the previous task is called
  /// Default behavior is:
  /// ```dart
  /// BlocProvider.of<ExercisePresenter>(context).add(
  ///    TaskBack(
  ///      resultFunction.call(),
  ///    ),
  /// );
  /// ```
  final Function(
    BuildContext context,
    QuestionResult Function()? resultFunction,
  )? onTaskBack;

  /// Defines what should happen if the exercise should be closed
  /// Default behavior is:
  /// ```dart
  /// BlocProvider.of<ExercisePresenter>(context).add(
  ///    CloseExercise(
  ///      resultFunction.call(),
  ///    ),
  /// );
  /// ```
  final Function(
    BuildContext context,
    QuestionResult Function()? resultFunction,
  )? onCloseExercise;

  ExerciseController({
    this.onNextTask,
    this.onTaskBack,
    this.onCloseExercise,
  });

  void nextTask(
    BuildContext context,
    QuestionResult Function() resultFunction,
  ) {
    if (onNextTask != null) {
      onNextTask!(context, resultFunction);

      return;
    }
    BlocProvider.of<ExercisePresenter>(context).add(
      NextTask(
        resultFunction.call(),
      ),
    );
  }

  void taskBack({
    required BuildContext context,
    QuestionResult Function()? resultFunction,
  }) {
    if (onTaskBack != null) {
      onTaskBack!(context, resultFunction);

      return;
    }
    BlocProvider.of<ExercisePresenter>(context).add(
      TaskBack(
        resultFunction?.call(),
      ),
    );
  }

  void closeExercise({
    required BuildContext context,
    QuestionResult Function()? resultFunction,
  }) {
    if (onCloseExercise != null) {
      onCloseExercise!(context, resultFunction);

      return;
    }
    BlocProvider.of<ExercisePresenter>(context).add(
      CloseExercise(
        resultFunction?.call(),
      ),
    );
  }
}
