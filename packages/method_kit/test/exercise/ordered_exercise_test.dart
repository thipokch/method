import 'dart:convert';

import 'package:flutter_test/flutter_test.dart';
import 'package:method_kit/method_kit.dart';

void main() {
  test('ordered exercise created by json is the same as created via code', () {
    const jsonStr = '''
    {
      "id": "123",
      "type": "ordered"
    }
    ''';
    final Exercise orderedExercise =
        OrderedExercise(id: const ExerciseIdentifier(id: '123'), tasks: []);

    final orderedJsonExercise = OrderedExercise.fromJson(json.decode(jsonStr));

    expect(orderedExercise, orderedJsonExercise);
  });
}
