// ignore_for_file: prefer_const_constructors

import 'package:bloc_test/bloc_test.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:method_app_info/app_info.dart';

void main() {
  group('AppInfoCubit', () {
    group('constructor', () {
      test('can be instantiated', () {
        expect(
          AppInfoCubit(),
          isNotNull,
        );
      });
    });

    test('initial state has default value for customProperty', () {
      final appInfoCubit = AppInfoCubit();
      expect(appInfoCubit.state.customProperty, equals('Default Value'));
    });

    blocTest<AppInfoCubit, AppInfoState>(
      'yourCustomFunction emits nothing',
      build: AppInfoCubit.new,
      act: (cubit) => cubit.yourCustomFunction(),
      expect: () => <AppInfoState>[],
    );
  });
}
