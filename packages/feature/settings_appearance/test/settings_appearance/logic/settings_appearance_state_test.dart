// ignore_for_file: prefer_const_constructors

import 'package:flutter_test/flutter_test.dart';
import 'package:method_settings_appearance/settings_appearance.dart';

void main() {
  group('SettingsAppearanceState', () {
    test('supports value equality', () {
      expect(
        SettingsAppearanceState(),
        equals(
          const SettingsAppearanceState(),
        ),
      );
    });

    group('constructor', () {
      test('can be instantiated', () {
        expect(
          const SettingsAppearanceState(),
          isNotNull,
        );
      });
    });

    group('copyWith', () {
      test(
        'copies correctly '
        'when no argument specified',
        () {
          const settingsAppearanceState = SettingsAppearanceState(
            customProperty: 'My property',
          );
          expect(
            settingsAppearanceState.copyWith(),
            equals(settingsAppearanceState),
          );
        },
      );

      test(
        'copies correctly '
        'when all arguments specified',
        () {
          const settingsAppearanceState = SettingsAppearanceState(
            customProperty: 'My property',
          );
          final otherSettingsAppearanceState = SettingsAppearanceState(
            customProperty: 'My property 2',
          );
          expect(settingsAppearanceState, isNot(equals(otherSettingsAppearanceState)));

          expect(
            settingsAppearanceState.copyWith(
              customProperty: otherSettingsAppearanceState.customProperty,
            ),
            equals(otherSettingsAppearanceState),
          );
        },
      );
    });
  });
}
