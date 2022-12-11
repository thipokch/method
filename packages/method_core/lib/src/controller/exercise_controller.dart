import 'package:flutter/widgets.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:method_core/method_core.dart';

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
    Result Function() resultFunction,
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
    Result Function()? resultFunction,
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
    TaskResultDetail Function()? resultFunction,
  )? onCloseExercise;

  ExerciseController({
    this.onNextTask,
    this.onTaskBack,
    this.onCloseExercise,
  });

  void nextTask(
    BuildContext context,
    TaskResultDetail Function() resultFunction,
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
    TaskResultDetail Function()? resultFunction,
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
    TaskResultDetail Function()? resultFunction,
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
