/// {@template exercise_repository}
/// [ExerciseRepository] description
/// {@endtemplate}
class ExerciseRepository {
  const ExerciseRepository._();
  static ExerciseRepository? _instance;

  /// {@macro exercise_repository}
  static ExerciseRepository get instance =>
      _instance ??= const ExerciseRepository._();
}
