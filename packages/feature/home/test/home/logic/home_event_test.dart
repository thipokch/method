// ignore_for_file: prefer_const_constructors

import 'package:flutter_test/flutter_test.dart';
import 'package:method_home/home.dart';

void main() {
  group('constructor', () {
    test('can be instantiated', () {
      expect(
        HomeEvent.create(),
        equals(const HomeEvent.create()),
      );
    });
  });
}