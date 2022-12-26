// ignore_for_file: prefer_const_constructors

import 'package:flutter_test/flutter_test.dart';
import 'package:method_home/home.dart';

void main() {
  group('HomeState', () {
    test('supports value equality', () {
      expect(
        HomeState.created(),
        equals(
          const HomeState.created(),
        ),
      );
    });

    group('constructor', () {
      test('can be instantiated', () {
        expect(
          const HomeState.created(),
          isNotNull,
        );
      });
    });
  });
}
