import 'dart:convert';

import 'package:flutter_test/flutter_test.dart';
import 'package:method_core/method_core.dart';

void main() {
  test('identifier created by json is the same as created by code', () {
    const jsonStr = ''' 
      {
        "id":"123"
      }
    ''';
    final jsonIdentifier = TaskIdentifier.fromJson(json.decode(jsonStr));
    const identifier = TaskIdentifier(id: '123');

    expect(identifier, jsonIdentifier);
  });
}
