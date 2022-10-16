import 'package:method_core/model/exercise.dart';
import 'package:method_isar/driver.dart';
import 'package:method_isar/exercise/collection.dart';

class ExerciseRepository with IsarRepository<Exercise, DbExerciseCollection> {
  @override
  final DbExerciseCollection isarCollection;

  const ExerciseRepository._(this.isarCollection);

  factory ExerciseRepository.from({
    required IsarDriver isar,
  }) =>
      ExerciseRepository._(DbExerciseCollection(isar));
}
