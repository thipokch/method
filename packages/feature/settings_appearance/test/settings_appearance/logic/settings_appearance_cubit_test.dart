// ignore_for_file: prefer_const_constructors

import 'package:bloc_test/bloc_test.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:method_settings_appearance/settings_appearance.dart';

void main() {
  group('SettingsAppearanceCubit', () {
    group('constructor', () {
      test('can be instantiated', () {
        expect(
          SettingsAppearanceBloc(),
          isNotNull,
        );
      });
    });

    test('initial state has default value for customProperty', () {
      final settingsAppearanceCubit = SettingsAppearanceBloc();
      expect(settingsAppearanceCubit.state.customProperty, equals('Default Value'));
    });

    blocTest<SettingsAppearanceBloc, SettingsAppearanceState>(
      'yourCustomFunction emits nothing',
      build: SettingsAppearanceBloc.new,
      act: (cubit) => cubit.yourCustomFunction(),
      expect: () => <SettingsAppearanceState>[],
    );
  });
}
