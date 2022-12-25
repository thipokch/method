import 'package:method_exercise_repository/exercise_repository.dart';
import 'package:test/test.dart';

void main() {
  group('ExerciseRepository', () {
    late ExerciseRepository exerciseRepository;

    setUp(() {
      exerciseRepository = const ExerciseRepository();
    });

    test('can be instantiated', () {
      expect(const ExerciseRepository(), isNotNull);
    });
    
  });
}
