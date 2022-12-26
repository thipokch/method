// ignore_for_file: prefer_const_constructors

import 'package:flutter_test/flutter_test.dart';
import 'package:method_app_info/app_info.dart';

void main() {
  group('AppInfoState', () {
    test('supports value equality', () {
      expect(
        AppInfoState(),
        equals(
          const AppInfoState(),
        ),
      );
    });

    group('constructor', () {
      test('can be instantiated', () {
        expect(
          const AppInfoState(),
          isNotNull,
        );
      });
    });

    group('copyWith', () {
      test(
        'copies correctly '
        'when no argument specified',
        () {
          const appInfoState = AppInfoState(
            customProperty: 'My property',
          );
          expect(
            appInfoState.copyWith(),
            equals(appInfoState),
          );
        },
      );

      test(
        'copies correctly '
        'when all arguments specified',
        () {
          const appInfoState = AppInfoState(
            customProperty: 'My property',
          );
          final otherAppInfoState = AppInfoState(
            customProperty: 'My property 2',
          );
          expect(appInfoState, isNot(equals(otherAppInfoState)));

          expect(
            appInfoState.copyWith(
              customProperty: otherAppInfoState.customProperty,
            ),
            equals(otherAppInfoState),
          );
        },
      );
    });
  });
}
