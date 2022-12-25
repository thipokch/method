// ignore_for_file: prefer_const_constructors

import 'package:flutter_test/flutter_test.dart';
import 'package:method_license_list/license_list.dart';

void main() {
  group('LicenseListState', () {
    test('supports value equality', () {
      expect(
        LicenseListState.created(),
        equals(
          const LicenseListState.created(),
        ),
      );
    });

    group('constructor', () {
      test('can be instantiated', () {
        expect(
          const LicenseListState.created(),
          isNotNull,
        );
      });
    });
  });
}
