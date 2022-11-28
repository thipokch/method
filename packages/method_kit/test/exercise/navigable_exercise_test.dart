import 'dart:convert';

import 'package:flutter_test/flutter_test.dart';
import 'package:method_kit/method_kit.dart';

void main() {
  test(
    'navigable exercise created by json is the same as created via code',
    () {
      const jsonStr = '''
    {
      "id": "123",
      "type": "navigable",
      "rules": [
          {
            "type": "conditional",
            "triggerTaskIdentifier": {
                "id": "123"
            },
            "values": {
                "Yes": "321",
                "No": "456"
            }
          }
        ]
    }
    ''';
      final NavigableExercise navigableExercise = NavigableExercise(
        id: const ExerciseIdentifier(id: '123'),
        tasks: [],
        navigationRules: {
          const TaskIdentifier(id: '123'): ConditionalNavigationRule(
            resultToTaskIdentifierMapper: (input) {
              switch (input) {
                case "Yes":
                  return const TaskIdentifier(id: '321');
                case "No":
                  return const TaskIdentifier(id: '456');
                default:
                  return null;
              }
            },
          ),
        },
      );

      final navigableJsonExercise =
          NavigableExercise.fromJson(json.decode(jsonStr));

      expect(navigableJsonExercise, navigableExercise);
    },
    skip: true,
  );
}
