// ignore_for_file: unused_local_variable

import 'package:flutter_test/flutter_test.dart';
import 'package:method_app/exercise_list/exercise_list.dart';

void main() {
  group('ExerciseListState', () {
    test('Constructing ExerciseListState', () {
      const initial = ExerciseListState.initial();
      const destroyed = ExerciseListState.destroyed();
    });
  });
}
