// ignore_for_file: prefer_const_constructors

import 'package:flutter_test/flutter_test.dart';
import 'package:method_license_detail/license_detail.dart';

void main() {
  group('constructor', () {
    test('can be instantiated', () {
      expect(
        LicenseDetailEvent.create(),
        equals(const LicenseDetailEvent.create()),
      );
    });
  });
}