// ignore_for_file: prefer_const_constructors

import 'package:flutter_test/flutter_test.dart';
import 'package:method_license_list/license_list.dart';

void main() {
  group('constructor', () {
    test('can be instantiated', () {
      expect(
        LicenseListEvent.create(),
        equals(const LicenseListEvent.create()),
      );
    });
  });
}