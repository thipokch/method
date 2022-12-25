// ignore_for_file: prefer_const_constructors

import 'package:bloc_test/bloc_test.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:method_license_list/license_list.dart';

void main() {
  group('LicenseListBloc', () {
    group('constructor', () {
      test('can be instantiated', () {
        expect(
          LicenseListBloc(),
          isNotNull,
        );
      });
    });

    blocTest<LicenseListBloc, LicenseListState>(
      'LicenseListEvent.create() emits nothing',
      build: LicenseListBloc.new,
      act: (bloc) => bloc.add(const LicenseListEvent.create()),
      expect: () => <LicenseListState>[],
    );
  });
}
