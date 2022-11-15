import 'dart:convert';

import 'package:flutter_test/flutter_test.dart';
import 'package:method_kit/method_kit.dart';

void main() {
  test('ordered task created by json is the same as created via code', () {
    const jsonStr = '''
    {
      "id": "123",
      "type": "ordered"
    }
    ''';
    final Task orderedTask =
        OrderedTask(id: const TaskIdentifier(id: '123'), steps: []);

    final orderedJsonTask = OrderedTask.fromJson(json.decode(jsonStr));

    expect(orderedTask, orderedJsonTask);
  });
}
