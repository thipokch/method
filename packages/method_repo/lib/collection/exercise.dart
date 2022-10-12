import 'package:method_core/model/exercise.dart';
import 'package:method_realm/collection/collection.dart';
import 'package:method_realm/driver.dart';

class ExerciseRepository with RealmRepository<Exercise, ExerciseCollection> {
  @override
  final ExerciseCollection realmCollection;

  const ExerciseRepository._(this.realmCollection);

  factory ExerciseRepository.from({
    required RealmDriver realm,
  }) =>
      ExerciseRepository._(ExerciseCollection(realm));
}
