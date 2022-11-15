import 'dart:convert';

import 'package:flutter_test/flutter_test.dart';
import 'package:method_kit/method_kit.dart';

void main() {
  test('navigable task created by json is the same as created via code', () {
    const jsonStr = '''
    {
      "id": "123",
      "type": "navigable",
      "rules": [
          {
            "type": "conditional",
            "triggerStepIdentifier": {
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
    final NavigableTask navigableTask = NavigableTask(
      id: const TaskIdentifier(id: '123'),
      steps: [],
    );
    navigableTask.addNavigationRule(
      forTriggerStepIdentifier: const StepIdentifier(id: '123'),
      navigationRule: ConditionalNavigationRule(
        resultToStepIdentifierMapper: (input) {
          switch (input) {
            case "Yes":
              return const StepIdentifier(id: '321');
            case "No":
              return const StepIdentifier(id: '456');
            default:
              return null;
          }
        },
      ),
    );

    final navigableJsonTask = NavigableTask.fromJson(json.decode(jsonStr));

    expect(navigableJsonTask, navigableTask);
  });
}
