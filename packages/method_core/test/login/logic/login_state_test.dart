// ignore_for_file: prefer_const_constructors

import 'package:flutter_test/flutter_test.dart';
import 'package:method_core/login/logic/logic.dart';

void main() {
  group('LoginState', () {
    test('supports value equality', () {
      expect(
        LoginState.created(),
        equals(
          const LoginState.created(),
        ),
      );
    });

    group('constructor', () {
      test('can be instantiated', () {
        expect(
          const LoginState.created(),
          isNotNull,
        );
      });
    });
  });
}
