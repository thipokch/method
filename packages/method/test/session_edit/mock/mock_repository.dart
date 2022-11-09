import 'package:method_repo/collection/exercise.dart';
import 'package:method_repo/collection/session.dart';
import 'package:method_repo/repository.dart';
import 'package:mocktail/mocktail.dart';

class MockRepository extends Mock implements Repository {}

class MockSessionRepository extends Mock implements SessionRepository {}

class MockExerciseRepository extends Mock implements ExerciseRepository {}
