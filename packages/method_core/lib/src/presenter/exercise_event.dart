import 'package:method_core/method_core.dart';

abstract class ExerciseEvent {
  const ExerciseEvent();
}

class StartExercise extends ExerciseEvent {}

class NextTask extends ExerciseEvent {
  final TaskResultDetail questionResult;

  NextTask(this.questionResult);
}

class TaskBack extends ExerciseEvent {
  final TaskResultDetail? questionResult;

  TaskBack(this.questionResult);
}

class CloseExercise extends ExerciseEvent {
  final TaskResultDetail? questionResult;

  CloseExercise(this.questionResult);
}