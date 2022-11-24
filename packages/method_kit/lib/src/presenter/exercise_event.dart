import 'package:method_kit/src/result/question_result.dart';

abstract class ExerciseEvent {
  const ExerciseEvent();
}

class StartExercise extends ExerciseEvent {}

class NextTask extends ExerciseEvent {
  final QuestionResult questionResult;

  NextTask(this.questionResult);
}

class TaskBack extends ExerciseEvent {
  final QuestionResult? questionResult;

  TaskBack(this.questionResult);
}

class CloseExercise extends ExerciseEvent {
  final QuestionResult? questionResult;

  CloseExercise(this.questionResult);
}
