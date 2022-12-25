// ignore_for_file: prefer_const_constructors

import 'package:flutter_test/flutter_test.dart';
import 'package:method_license_detail/license_detail.dart';

void main() {
  group('LicenseDetailState', () {
    test('supports value equality', () {
      expect(
        LicenseDetailState.created(),
        equals(
          const LicenseDetailState.created(),
        ),
      );
    });

    group('constructor', () {
      test('can be instantiated', () {
        expect(
          const LicenseDetailState.created(),
          isNotNull,
        );
      });
    });
  });
}
