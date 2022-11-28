import 'dart:convert';

import 'package:flutter_test/flutter_test.dart';
import 'package:method_core/method_core.dart';

void main() {
  test('instruction task is the same created by json and code', () {
    const jsonStr = '''
    {
      "taskIdentifier": {
        "id": "1"
      },
      "type": "instruction",
      "title": "Welcome to the\\nQuickBird Studios\\nHealth Exercise",
      "text": "Get ready for a bunch of super random questions!",
      "buttonText": "Let's go!"
    }
    ''';
    final jsonTask = Task.fromJson(json.decode(jsonStr));
    const task = InstructionTask(
      taskIdentifier: TaskIdentifier(id: "1"),
      title: 'Welcome to the\nQuickBird Studios\nHealth Exercise',
      text: 'Get ready for a bunch of super random questions!',
      buttonText: 'Let\'s go!',
    );

    expect(task, jsonTask);
  });

  test('throw task not defined exception of type is unvalid', () {
    const jsonStr = '''
    {
      "taskIdentifier": {
        "id": "1"
      },
      "type": "undefined",
      "title": "Welcome to the\\nQuickBird Studios\\nHealth Exercise",
      "text": "Get ready for a bunch of super random questions!",
      "buttonText": "Let's go!"
    }
    ''';
    expect(() => Task.fromJson(json.decode(jsonStr)), throwsException);
  });
}
